unit S_Farma_SNGPC;
// http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?wsdl homologacao
// http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx

{

farmacia popular

Segue os sites de Homologação e Produção da Farmácia Popular
 
HOMOLOGAÇÃO: http://189.28.128.37/portalfarmacia/
 PRODUÇÃO: https://aplicacao.saude.gov.br/portalfarmacia/
 

}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Mask, ToolEdit, Buttons,db,dbtables,
  RLReport, s_sngpc, IdHashMessageDigest, idHash, InvokeRegistry, Rio,
  SOAPHTTPClient, XMLDoc,  Types,  Math,Adodb, Grids, DBGrids;
   type TMD5Digest = array[0..32] of Byte;//

type
  TFrm_Farma_SNGPC = class(TForm)

    PageControl1: TPageControl;
    tsPrincipal: TTabSheet;
    Panel1: TPanel;
    tsOutros: TTabSheet;
    Label47: TLabel;
    CB_INVENTARIO: TComboBox;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label5: TLabel;
    edt_caminho: TEdit;
    sbnConsultar: TSpeedButton;
    sbnCriarPasta: TSpeedButton;
    tsInventario: TTabSheet;
    tsEntradas: TTabSheet;
    tsSaidas: TTabSheet;
    Qr_Inv: TQuery;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    CB_EsteInventario: TCheckBox;
    Qr_Perdas: TQuery;
    bbImprimir: TBitBtn;
    Qr_Inv_Impres: TQuery;
    tsRelInv: TTabSheet;
    RLReport_inventario: TRLReport;
    Src_Inv_Impres: TDataSource;
    RLBand_cabger: TRLBand;
    RLCab_RazEmp: TRLLabel;
    RLCab_DathorEmi: TRLLabel;
    rlcab_titulo: TRLLabel;
    rlcab_pag: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand_cabdet: TRLBand;
    rlcabdet_codpro: TRLLabel;
    rlcabdet_nompro: TRLLabel;
    rlcabdet_qtd: TRLLabel;
    rlcabdet_und: TRLLabel;
    rlcabdet_lote: TRLLabel;
    rlcabdet_regms: TRLLabel;
    RLBand_det: TRLBand;
    rldet_codpro: TRLDBText;
    Qr_Inv_ImpresCODPRO: TFloatField;
    Qr_Inv_ImpresLOTE: TStringField;
    Qr_Inv_ImpresPDNOME: TStringField;
    Qr_Inv_ImpresPDUND: TStringField;
    Qr_Inv_ImpresPDREGMS: TStringField;
    Qr_Inv_ImpresQTDINV: TFloatField;
    rldet_nompro: TRLDBText;
    rldet_qtd: TRLDBText;
    rldet_und: TRLDBText;
    rldet_lote: TRLDBText;
    rldet_regms: TRLDBText;
    RLBand_rodape: TRLBand;
    bbImpBal_Analitico: TBitBtn;
    RLBand1: TRLBand;
    rlrod_qtdreg: TRLLabel;
    Label4: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Qr_Bal_Analitico: TQuery;
    Src_Bal_Analitico: TDataSource;
    tsBal_Analitico: TTabSheet;
    RLReport_bal_anal: TRLReport;
    rlba_cabger: TRLBand;
    rlbacab_razemp: TRLLabel;
    rlbacab_dathoremi: TRLLabel;
    rlbacab_titulo: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    rlba_rodape: TRLBand;
    RLBand6: TRLBand;
    rlba_qtdreg: TRLLabel;
    rlba_group: TRLGroup;
    RLBa_cabgru: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText9: TRLDBText;
    rlba_cabdet: TRLBand;
    rlbacabdet_doc: TRLLabel;
    rlbacabdet_razsoc: TRLLabel;
    rlbacabdet_entrada: TRLLabel;
    rlbacabdet_saida: TRLLabel;
    rlbacabdet_saldo: TRLLabel;
    rlbacabdet_data: TRLLabel;
    rlba_det: TRLBand;
    rlbadet_doc: TRLDBText;
    rlbadet_razsoc: TRLDBText;
    rlbadet_data: TRLDBText;
    rlbadet_entrada: TRLDBText;
    rlbadet_saida: TRLDBText;
    Qr_Bal_AnaliticoTIPOMOV: TStringField;
    Qr_Bal_AnaliticoRAZSOC: TStringField;
    Qr_Bal_AnaliticoDATDOC: TDateTimeField;
    Qr_Bal_AnaliticoNUMDOC: TStringField;
    Qr_Bal_AnaliticoCODPRO: TFloatField;
    Qr_Bal_AnaliticoLOTE: TStringField;
    Qr_Bal_AnaliticoGRUPO: TStringField;
    Qr_Bal_AnaliticoPDNOME: TStringField;
    Qr_Bal_AnaliticoTOTENT: TFloatField;
    Qr_Bal_AnaliticoTOTSAI: TFloatField;
    rlbadet_saldo: TRLLabel;
    lbl_datainventario: TLabel;
    Qr_Inv_ImpresTIPO_MED_INS: TFloatField;
    Qr_Inv_ImpresPDCLASSE_TERAPEUTICA: TFloatField;
    Qr_Inv_ImpresPDUND_INSUMO: TFloatField;
    Qr_Inv_ImpresPDUND_FARMACOTECNICA: TFloatField;
    Qr_Inv_ImpresCNPJ: TStringField;
    rg_tipoXML: TRadioGroup;
    edt_datinv: TDateEdit;
    Label3: TLabel;
    rl_erros: TRichEdit;
    bbEnviarDireto: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edt_usuario_email: TEdit;
    Label7: TLabel;
    edt_senha: TEdit;
    sbnMostrarSenha: TSpeedButton;
    HTTPRIO1: THTTPRIO;
    OpenDialog1: TOpenDialog;
    cb_ambiente: TCheckBox;
    edt_nomearq: TEdit;
    Label8: TLabel;
    bbConsultaEnviados: TBitBtn;
    Label9: TLabel;
    edt_chavemd5: TEdit;
    lbl_qtdcar: TLabel;
    sbnAdicionar: TSpeedButton;
    tsEnviados: TTabSheet;
    GroupBox2: TGroupBox;
    AdoSNGPCEnviados: TADOQuery;
    DBGrid1: TDBGrid;
    SrcNGPCEnviados: TDataSource;
    AdoSNGPCEnviadosSE_DATA: TDateTimeField;
    AdoSNGPCEnviadosSE_HASH_IDENTIFICACAO: TStringField;
    AdoSNGPCEnviadosSE_TIPOARQ: TStringField;
    AdoSNGPCEnviadosSE_DATAINI: TDateTimeField;
    AdoSNGPCEnviadosSE_DATAFIN: TDateTimeField;
    GroupBox3: TGroupBox;
    RichEdit_texto: TRichEdit;
    AdoSNGPCEnviadosSE_NOMEORIGINAL: TStringField;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    sbnHomogacao: TSpeedButton;
    procedure sbnConsultarClick(Sender: TObject);
    procedure sbnCriarPastaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLReport_inventarioBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_detBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbImpBal_AnaliticoClick(Sender: TObject);
    procedure RLReport_bal_analBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlba_detBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbGerarClick(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure CB_INVENTARIOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbEnviarDiretoClick(Sender: TObject);
    procedure sbnMostrarSenhaClick(Sender: TObject);
    procedure bbConsultaEnviadosClick(Sender: TObject);
    procedure edt_chavemd5Change(Sender: TObject);
    procedure sbnAdicionarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SrcNGPCEnviadosDataChange(Sender: TObject; Field: TField);
    procedure sbnHomogacaoClick(Sender: TObject);

  private
    { Private declarations }
    mQtdReg: Integer;
    mSaldo_Ant: Real;
    mGrupo_Ant: String;

    function fAbrirInventario: Boolean;

    function EnviarDireto(pTipoArq,pNomeArq: string): Boolean;

    function fGravarnoBanco(pDataIni,pDatafin: TDateTime;pHash_identificacao, pTipoMov,pNomeArq: String):Boolean;

    function fGerarArquivo(pTipo: Integer): Boolean;


  public
    { Public declarations }
    testeform: TForm;


  end;

var
  Frm_Farma_SNGPC: TFrm_Farma_SNGPC;
  ws: sngpcSoap;


implementation

uses S_DefBac, S_DM1, Func, func_excecoes, lerarq, Func2, S_MD5, ByteArray,
  S_DM1_ADO;

{$R *.dfm}

procedure TFrm_Farma_SNGPC.sbnConsultarClick(Sender: TObject);
begin
testeform := TFrm_Farma_SNGPC(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   edt_caminho.Text:=Frm_DefBac.mcam;
freeandnil(Frm_DefBac);

end;

procedure TFrm_Farma_SNGPC.sbnCriarPastaClick(Sender: TObject);
begin
if trim(edt_caminho.Text)<>'' then
   fcriarPastas(edt_caminho.Text);

end;

procedure TFrm_Farma_SNGPC.FormShow(Sender: TObject);
var
query_inv: tQuery;
begin
//sbnHomogacaoClick(self);
RLBand_cabger.Borders.DrawLeft:=true;
RLBand_cabger.Borders.DrawRight:=true;
RLBand_cabger.Borders.DrawTop:=true;

RLBand_cabdet.Borders.DrawLeft:=true;
RLBand_cabdet.Borders.DrawRight:=true;
RLBand_cabdet.Borders.DrawTop:=true;
RLBand_cabdet.Borders.DrawBottom:=true;

RLBand_det.Borders.DrawLeft:=true;
RLBand_det.Borders.DrawRight:=true;

rlcabdet_codpro.Borders.DrawRight:=true;
rlcabdet_nompro.Borders.DrawRight:=true;
rlcabdet_qtd.Borders.DrawRight:=true;
rlcabdet_und.Borders.DrawRight:=true;
rlcabdet_lote.Borders.DrawRight:=true;

rldet_codpro.Borders.DrawRight:=true;
rldet_nompro.Borders.DrawRight:=true;
rldet_qtd.Borders.DrawRight:=true;
rldet_und.Borders.DrawRight:=true;
rldet_lote.Borders.DrawRight:=true;


rlba_cabger.Borders.DrawRight:=true;
rlba_cabger.Borders.DrawLeft:=true;
rlba_cabger.Borders.DrawTop:=true;

RLBa_cabgru.Borders.DrawTop:=true;

rlba_cabdet.Borders.DrawTop:=true;



rlba_group.Borders.DrawLeft:=true;
rlba_group.Borders.DrawRight:=true;

rlbacabdet_doc.Borders.DrawRight:=true;
rlbacabdet_razsoc.Borders.DrawRight:=true;
rlbacabdet_data.Borders.DrawRight:=true;
rlbacabdet_entrada.Borders.DrawRight:=true;
rlbacabdet_saida.Borders.DrawRight:=true;

rlbadet_doc.Borders.DrawRight:=true;
rlbadet_razsoc.Borders.DrawRight:=true;
rlbadet_data.Borders.DrawRight:=true;
rlbadet_entrada.Borders.DrawRight:=true;
rlbadet_saida.Borders.DrawRight:=true;



RLba_rodape.Borders.DrawTop:=true;






tsRelInv.Visible:=false;
tsBal_Analitico.Visible:=false;
PageControl1.ActivePage:=tsPrincipal;

query_inv:=tQuery.create(nil);
query_inv.DatabaseName:='SG_ASSOC';

query_inv.close;
query_inv.SQL.Clear;
query_inv.SQL.Add('Select  EI_DATA '
                  +'         from CADSNGPC_ESTINI where EI_CODEMP=0'+InttoStr(codemp)
                  +'group by EI_DATA ');
query_inv.Open;
CB_INVENTARIO.Items.Clear;
CB_INVENTARIO.Items.Add('Sem Inventario');
While not query_inv.Eof do
   begin
   CB_INVENTARIO.Items.Add(FormatDateTime(fdt2,  Query_Inv.fieldbyName('EI_DATA').AsDateTime));
   Query_Inv.Next;
   end;
CB_INVENTARIO.ItemIndex:=0;
FreeandNil(Query_inv);
end;

procedure TFrm_Farma_SNGPC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Farma_SNGPC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;

end;


procedure TFrm_Farma_SNGPC.bbImprimirClick(Sender: TObject);
begin
fAbrirInventario;

RLCab_RazEmp.Caption   :=DM1.Tb_EmpRAZAO_CAB.AsString;
RLCab_DathorEmi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
if edt_datini.Date<=pdatanula then
   rlcab_titulo.Caption  :='Inventario de Estoque.'
else
   rlcab_titulo.Caption  :='Inventario de Estoque em '+FormatDateTime(fdt2, edt_datini.Date)+'.';


RLReport_inventario.PreviewModal;
//Qr_Inv_Impres.SQL.SaveToFile('c:\sqlinv.sql');

end;

function TFrm_Farma_SNGPC.fAbrirInventario: Boolean;

var
mDataIni_Inv: Tdatetime;
mDataFin_Inv: Tdatetime;
mFiltro: String;
Query_Temp: tQuery;
begin
if fsonumero(edt_datini.Text)<>0 then
   mDataFin_Inv:=edt_datini.Date;

if CB_EsteInventario.Checked then
   begin
   Query_Temp:=tQuery.Create(nil);
   Query_Temp.DatabaseName:='SG_ASSOC';

   Query_Temp.close;
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.Add('Select  EI_DATA '
                     +'         from CADSNGPC_ESTINI where EI_CODEMP=0'+InttoStr(codemp)
                     +' and EI_DATA=:DATA '
                     +'group by EI_DATA ');
   Query_Temp.ParamByName('DATA').Value :=StrtoDate(CB_INVENTARIO.Text);
   Query_Temp.Open;
   if query_temp.IsEmpty then
      CB_EsteInventario.Checked:=false;
   Freeandnil(Query_temp);
   end;
if CB_EsteInventario.Checked then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADFOR','FCODEMP(+)','PDCODEMP','FCODFOR','PDCODFOR');
   la_instrucao:=la_instrucao+' and ';
   finnerjoin(1,'CADPRO','EI_CODEMP','PDCODEMP','EI_CODPRO','PDCODPRO');

   Qr_Inv_Impres.Close;
   Qr_Inv_Impres.sql.clear;
   Qr_Inv_Impres.SQL.Add(' select PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,FCGC AS CNPJ,  '
                        +' case when PDNIVEL=8 then 2 else 1 end AS TIPO_MED_INS, '
                        +' PDCODPRO AS CODPRO,EI_LOTE as LOTE,PDNOME,PDUND,PDREGMS,nvl( EI_QTD,0) AS QTDINV FROM '
                        +' CADSNGPC_ESTINI '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' EI_CODEMP=0'+IntToStr(codemp));
   Qr_Inv_Impres.SQL.Add(' and EI_DATA=:DATA');
   Qr_Inv_Impres.ParamByName('DATA').Value:=StrToDate(CB_INVENTARIO.Text);
   Qr_Inv_Impres.SQL.Add(' order by PDNOME,PDCODPRO ');

   try
      Qr_Inv_Impres.Open;
   except
      Qr_Inv_Impres.SQL.SaveToFile('c:\sqlINV.txt');
      end;
   end
else
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADFOR','FCODEMP(+)','PF1CODEMP','FCODFOR','PF1CODFOR');

   la_instrucao:=la_instrucao+' and ';
   finnerjoin(1,'CADPRO','PF2CODEMP','PDCODEMP','PF2CODPRO','PDCODPRO');

   la_instrucao:=la_instrucao+' and ';
   finnerjoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

   la_instrucao:=la_instrucao+' and ';
   finnerjoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO');



   Qr_Inv_Impres.Close;
   Qr_Inv_Impres.SQL.Clear;

   Qr_Inv_Impres.SQL.Add(' select PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,max(CNPJ) AS CNPJ,  case when PDNIVEL=8 then 2 else 1 end AS TIPO_MED_INS, PDCODPRO AS CODPRO,LOTE,PDNOME,PDUND,PDREGMS,nvl( SUM(COMPRAS+DEVCLI-(PERDAS+SAIDAS) ),0) AS QTDINV FROM (( ');


   Qr_Inv_Impres.SQL.Add('Select '+QuotedStr('PF1')+' AS ORIGEM, PF2CODPRO AS CODPRO,sum(NVL(PF2L_QTD,PF2QTDP)) AS COMPRAS,0 AS DEVCLI, '
                        +'  0 AS PERDAS, 0 AS SAIDAS, NVL(PF2L_LOTE,'+QuotedStr('X')+') AS LOTE,FCGC AS CNPJ '
                        +' FROM CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                                       +'       '+la_Join
                                       +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' PF1CODEMP=0'+IntToStr(codemp)
                        +' and PF1STATUS<>9  and PF1STATUS=1  and PDSGNPC=1 '
                        +' and PF2L_SNGPC_ENVIAR='+QuotedStr('S')
                        );
   Qr_Inv_Impres.SQL.Add(' and PF1DATAENT<:DATAINI');

   mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mFiltro)<>'' then
      Qr_Inv_Impres.SQL.Add(' and PDCODGRU '+mFiltro);


   Qr_Inv_Impres.SQL.Add(' GROUP BY PF2CODPRO,PF2L_LOTE,FCGC ');

   Qr_Inv_Impres.SQL.Add(' UNION ');


   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   finnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

   la_instrucao:=la_instrucao+' and ';
   finnerjoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');

   la_instrucao:=la_instrucao+' and ';
   finnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


   la_instrucao:=la_instrucao+' and ';
   finnerjoin4(1,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');

   Qr_Inv_Impres.SQL.Add(' Select '+QuotedStr('PED')+' AS ORIGEM,P2CODPRO AS CODPRO, '
                        +' 0 AS ENTRADA, sum(DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DEVCLI, 0 AS PERDAS '
                        +', sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD))) AS SAIDAS, NVL(P2SNGPC_LOTE,'+QuotedStr('X')+')  AS LOTE,'
                        +' CASE WHEN CCNPJ<>0 THEN LPAD(CCNPJ,'+QuotedStr('0')+',14) ELSE LPAD(CCPF,'+QuotedStr('0')+',14) END AS CNPJ  '
                        +'  FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                       +'       '+la_Join
                                       +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' P1STATUS<>9 '
                        +' and P1EMIDOC=1  and PDSGNPC=1    '
                        +' and  P1CODEMP='+IntTostr(codemp)
                        +' and  P2SNGPC_ENVIAR='+QuotedStr('S'));
   Qr_Inv_Impres.SQL.Add(' and P1DATDOC<:DATAINI');

   mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mFiltro)<>'' then
      Qr_Inv_Impres.SQL.Add(' and PDCODGRU '+mFiltro);


   Qr_Inv_Impres.SQL.Add(' GROUP BY P2CODPRO,P2SNGPC_LOTE,CASE WHEN CCNPJ<>0 THEN LPAD(CCNPJ,'+QuotedStr('0')+',14) ELSE LPAD(CCPF,'+QuotedStr('0')+',14) END ');
   Qr_Inv_Impres.SQL.Add(' UNION ');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   finnerjoin(1,'CADPRO','AJCODEMP','PDCODEMP','AJCODPRO','PDCODPRO');


   Qr_Inv_Impres.SQL.Add(' Select '+QuotedStr('AJUS')+' AS ORIGEM,AJCODPRO AS CODPRO, '
                        +'0 AS ENTRADA, 0 AS DEVCLI, SUM(AJQTD) AS PERDAS, 0 AS SAIDAS, '
                        +' NVL(AJLOTE,'+QuotedStr('X')+') AS LOTE '
                        +', LPAD('+QuotedStr('0')+',14) as CNPJ '
                        +'  FROM CADAJU '
                        +iif(la_tabelas='','',',')+la_tabelas
                                       +'       '+la_Join
                                       +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                       +' AJMOTIVO='+QuotedStr('PERDAS')
                       +' and AJTIPOM=1 and PDSGNPC=1 ');
   Qr_Inv_Impres.SQL.Add(' and AJDATA<:DATAINI');
   mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mFiltro)<>'' then
      Qr_Inv_Impres.SQL.Add(' and PDCODGRU '+mFiltro);

   Qr_Inv_Impres.SQL.Add(' GROUP BY AJCODPRO,AJLOTE ');
   Qr_Inv_Impres.SQL.Add(' )) PEDIDOS,CADPRO WHERE PEDIDOS.CODPRO(+)=PDCODPRO and PDCODEMP='+IntToStr(codemp)
                        +'  and PDSGNPC=1 ');
   mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mFiltro)<>'' then
      Qr_Inv_Impres.SQL.Add(' and PDCODGRU '+mFiltro);


   Qr_Inv_Impres.SQL.Add(' group by PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA, case when PDNIVEL=8 then 2 else 1 end,PDNOME,PDUND,PDCODPRO,PDREGMS,LOTE '
                        +' order by TIPO_MED_INS,PDNOME,PDUND,CODPRO');
   Qr_Inv_Impres.ParambyName('DATAINI').Value:=edt_datini.Date;

   try
      Qr_Inv_Impres.Open;
   except
      Qr_Inv_Impres.SQL.SaveToFile('c:\sqlinv.sql');
      end;
   end;
result:=true;
end;

procedure TFrm_Farma_SNGPC.RLReport_inventarioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mQtdReg:=0;

end;

procedure TFrm_Farma_SNGPC.RLBand_detBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mQtdReg:=mQtdReg+1;

end;

procedure TFrm_Farma_SNGPC.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrod_qtdreg.Caption:='Foram Impressos '+IntToStr(mQtdReg)+' produtos.';
end;

procedure TFrm_Farma_SNGPC.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_Farma_SNGPC.CODGRUExit(Sender: TObject);
begin
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      codgru.setfocus;
      end;
   end;

end;

procedure TFrm_Farma_SNGPC.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_Farma_SNGPC.bbImpBal_AnaliticoClick(Sender: TObject);
var
mDataIni_Inv: Tdatetime;
mDataFin_Inv: Tdatetime;
mFiltro: String;
begin
if fsonumero(edt_datini.Text)<>0 then
   mDataFin_Inv:=edt_datini.Date;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP(+)','PF1CODEMP','FCODFOR','PF1CODFOR');

la_instrucao:=la_instrucao+' and ';
finnerjoin(1,'CADPRO','PF2CODEMP','PDCODEMP','PF2CODPRO','PDCODPRO');

la_instrucao:=la_instrucao+' and ';
finnerjoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

la_instrucao:=la_instrucao+' and ';
finnerjoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO');



Qr_Bal_Analitico.Close;
Qr_Bal_Analitico.SQL.Clear;

Qr_Bal_Analitico.SQL.Add(' select TIPOMOV,RAZSOC,TO_DATE(DATDOC) AS  DATDOC,NUMDOC,CODPRO,LOTE '
                        +',CODPRO || LOTE AS GRUPO,PDNOME,SUM( '
                        +'DECODE(TIPOMOV,'+QuotedStr('00-ESTINI')+',(NVL(COMPRAS,0)+NVL(DEVCLI,0)) '
                        +'- (NVL(PERDAS,0)+NVL(SAIDAS,0)), NVL(COMPRAS,0)+NVL(DEVCLI,0))) AS TOTENT '
                        +', SUM(DECODE(TIPOMOV,'+QuotedStr('00-ESTINI')+',0, NVL(PERDAS,0)+NVL(SAIDAS,0)))  AS TOTSAI '
                        +'  from ( ');



//Qr_Bal_Analitico.SQL.Add(' select PDCODPRO AS CODPRO,LOTE,PDNOME,PDUND,PDREGMS,nvl( SUM(COMPRAS+DEVCLI-(PERDAS+SAIDAS) ),0) AS QTDINV FROM (( ');


Qr_Bal_Analitico.SQL.Add('Select '+QuotedStr('PF1')+' AS ORIGEM, '
                        +QuotedStr('00-ESTINI')+' AS TIPOMOV, '
                        +QuotedStr('ESTOQUE INICIAL')+' as RAZSOC, '
                        +':DATDOC AS DATDOC, '
                        +QuotedStr(' ')+' as NUMDOC, '
                        +'PF2CODPRO AS CODPRO,sum(NVL(PF2L_QTD,PF2QTDP)) AS COMPRAS,0 AS DEVCLI, '
                     +'  0 AS PERDAS, 0 AS SAIDAS, NVL(PF2L_LOTE,'+QuotedStr('X')+') AS LOTE '
                     +' FROM CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' PF1CODEMP=0'+IntToStr(codemp)
                     +' and PF1STATUS<>9  and PF1STATUS=1  and PDSGNPC=1 '
                        +' and PF2L_SNGPC_ENVIAR='+QuotedStr('S')
                        );
Qr_Bal_Analitico.SQL.Add(' and PF1DATAENT<:DATAINI');

mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);


Qr_Bal_Analitico.SQL.Add(' GROUP BY PF2CODPRO,PF2L_LOTE ');

Qr_Bal_Analitico.SQL.Add(' UNION ');


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
finnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

la_instrucao:=la_instrucao+' and ';
finnerjoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');

la_instrucao:=la_instrucao+' and ';
finnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


la_instrucao:=la_instrucao+' and ';
finnerjoin4(1,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');

Qr_Bal_Analitico.SQL.Add(' Select '+QuotedStr('PED')+' AS ORIGEM, '
                        +QuotedStr('00-ESTINI')+' AS TIPOMOV, '
                        +QuotedStr('ESTOQUE INICIAL')+' as RAZSOC, '
                        +':DATDOC AS DATDOC, '
                        +QuotedStr(' ')+' as NUMDOC, '
                        +' P2CODPRO AS CODPRO, '
                     +' 0 AS ENTRADA, sum(DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DEVCLI, 0 AS PERDAS '
                     +', sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD))) AS SAIDAS, NVL(P2SNGPC_LOTE,'+QuotedStr('X')+')  AS LOTE '
                     +'  FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' P1STATUS<>9 '
                     +' and P1EMIDOC=1  and PDSGNPC=1    '
                     +' and  P1CODEMP='+IntTostr(codemp)
                     +' and  P2SNGPC_ENVIAR='+QuotedStr('S'));

Qr_Bal_Analitico.SQL.Add(' and P1DATDOC<:DATAINI');

mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);


Qr_Bal_Analitico.SQL.Add(' GROUP BY P2CODPRO,P2SNGPC_LOTE ');
Qr_Bal_Analitico.SQL.Add(' UNION ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
finnerjoin(1,'CADPRO','AJCODEMP','PDCODEMP','AJCODPRO','PDCODPRO');


Qr_Bal_Analitico.SQL.Add(' Select '+QuotedStr('AJUS')+' AS ORIGEM, '
                        +QuotedStr('00-ESTINI')+' AS TIPOMOV, '
                        +QuotedStr('ESTOQUE INICIAL')+' as RAZSOC, '
                        +':DATDOC AS DATDOC, '
                        +QuotedStr(' ')+' as NUMDOC, '
                        +' AJCODPRO AS CODPRO, '
                     +'0 AS ENTRADA, 0 AS DEVCLI, SUM(AJQTD) AS PERDAS, 0 AS SAIDAS, '
                     +' NVL(AJLOTE,'+QuotedStr('X')+') AS LOTE FROM CADAJU '
                     +iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' AJMOTIVO='+QuotedStr('PERDAS')
                    +' and AJTIPOM=1 and PDSGNPC=1 ');
Qr_Bal_Analitico.SQL.Add(' and AJDATA<:DATAINI');
mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);

Qr_Bal_Analitico.SQL.Add(' GROUP BY AJCODPRO,AJLOTE ');

// termino do inventario

// inicio dos dados


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
finnerjoin(0,'CADFOR','FCODEMP(+)','PF1CODEMP','FCODFOR','PF1CODFOR');

la_instrucao:=la_instrucao+' and ';
finnerjoin(1,'CADPRO','PF2CODEMP','PDCODEMP','PF2CODPRO','PDCODPRO');

la_instrucao:=la_instrucao+' and ';
finnerjoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

la_instrucao:=la_instrucao+' and ';
finnerjoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO');


Qr_Bal_Analitico.SQL.Add(' UNION ');



Qr_Bal_Analitico.SQL.Add('Select '+QuotedStr('PF1')+' AS ORIGEM, '
                        +QuotedStr('01-COMPRAS')+' AS TIPOMOV, '
                        +' FRAZAO as RAZSOC, '
                        +' PF1DATAENT AS DATDOC, '
                        +QuotedStr('NF-')+' || PF1NUMNF as NUMDOC, '
                        +'PF2CODPRO AS CODPRO,sum(NVL(PF2L_QTD,PF2QTDP)) AS COMPRAS,0 AS DEVCLI, '
                     +'  0 AS PERDAS, 0 AS SAIDAS, NVL(PF2L_LOTE,'+QuotedStr('X')+') AS LOTE '
                     +' FROM CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' PF1CODEMP=0'+IntToStr(codemp)
                     +' and PF1STATUS<>9  and PF1STATUS=1  and PDSGNPC=1 '
                        +' and PF2L_SNGPC_ENVIAR='+QuotedStr('S')
                        );
if fsonumero(edt_datini.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and PF1DATAENT>=:DATAINI_MOV');
if fsonumero(edt_datfin.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and PF1DATAENT<=:DATAFIN_MOV');

mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);


Qr_Bal_Analitico.SQL.Add(' GROUP BY PF2CODPRO,PF2L_LOTE,FRAZAO,PF1DATAENT,'+QuotedStr('NF-')+' || PF1NUMNF ');

Qr_Bal_Analitico.SQL.Add(' UNION ');


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
finnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

la_instrucao:=la_instrucao+' and ';
finnerjoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');

la_instrucao:=la_instrucao+' and ';
finnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


la_instrucao:=la_instrucao+' and ';
finnerjoin4(1,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');

Qr_Bal_Analitico.SQL.Add(' Select '+QuotedStr('PED')+' AS ORIGEM, '
                        +QuotedStr('02-PEDVEN')+' AS TIPOMOV, '
                        +'CRAZAO as RAZSOC, '
                        +'P1DATDOC AS DATDOC, '
                        +' CASE WHEN P1NUMCF>0 THEN '+QuotedStr('CF-')+' || P1NUMCF '
                        +' ELSE '+QuotedStr('NF-')+' || P1NUMNF END as NUMDOC, '
                        +' P2CODPRO AS CODPRO, '
                     +' 0 AS ENTRADA, sum(DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DEVCLI, 0 AS PERDAS '
                     +', sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD))) AS SAIDAS, NVL(P2SNGPC_LOTE,'+QuotedStr('X')+')  AS LOTE '
                     +'  FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' P1STATUS<>9 '
                     +' and P1EMIDOC=1  and PDSGNPC=1    '
                     +' and  P1CODEMP='+IntToStr(codemp)
                     +' and  P2SNGPC_ENVIAR='+QuotedStr('S'));

if fsonumero(edt_datini.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and P1DATDOC>=:DATAINI_MOV');
if fsonumero(edt_datfin.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and P1DATDOC<=:DATAFIN_MOV');


mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);


Qr_Bal_Analitico.SQL.Add(' GROUP BY P2CODPRO,P2SNGPC_LOTE,CRAZAO,P1DATDOC, '
                        +' CASE WHEN P1NUMCF>0 THEN '+QuotedStr('CF-')+' || P1NUMCF '
                        +' ELSE '+QuotedStr('NF-')+' || P1NUMNF END ');

Qr_Bal_Analitico.SQL.Add(' UNION ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
finnerjoin(1,'CADPRO','AJCODEMP','PDCODEMP','AJCODPRO','PDCODPRO');


Qr_Bal_Analitico.SQL.Add(' Select '+QuotedStr('AJUS')+' AS ORIGEM, '
                        +QuotedStr('03-AJUSTE')+' AS TIPOMOV, '
                        +QuotedStr('AJUSTES POR PERDAS')+' as RAZSOC, '
                        +'AJDATA AS DATDOC, '
                        +QuotedStr('CHAVE')+' || AJSEQ as NUMDOC, '
                        +' AJCODPRO AS CODPRO, '
                     +'0 AS ENTRADA, 0 AS DEVCLI, SUM(AJQTD) AS PERDAS, 0 AS SAIDAS, '
                     +' NVL(AJLOTE,'+QuotedStr('X')+') AS LOTE FROM CADAJU '
                     +iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' AJMOTIVO='+QuotedStr('PERDAS')
                    +' and AJTIPOM=1 and PDSGNPC=1 ');
if fsonumero(edt_datini.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and AJDATA>=:DATAINI_MOV');
if fsonumero(edt_datfin.Text)>0 then
   Qr_Bal_Analitico.SQL.Add(' and AJDATA<=:DATAFIN_MOV');

mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mFiltro)<>'' then
   Qr_Bal_Analitico.SQL.Add(' and PDCODGRU '+mFiltro);

Qr_Bal_Analitico.SQL.Add(' GROUP BY AJCODPRO,AJLOTE,AJDATA, '
                        +QuotedStr('CHAVE')+' || AJSEQ ');


// termino dos dados

Qr_Bal_Analitico.SQL.Add(' ) vendas,CADPRO WHERE PDCODPRO=CODPRO '
                        +' GROUP BY TIPOMOV,RAZSOC,TO_DATE(DATDOC),NUMDOC,CODPRO,LOTE,PDNOME '
                        +' ORDER BY PDNOME,CODPRO,LOTE,TIPOMOV,DATDOC ');

{
}
Qr_Bal_Analitico.ParambyName('DATAINI').Value:=edt_datini.Date;
Qr_Bal_Analitico.ParambyName('DATDOC').Value:=edt_datini.Date;

if fsonumero(edt_datini.Text)>0 then
   Qr_Bal_Analitico.ParamByName('DATAINI_MOV').Value:=edt_datini.Date;
if fsonumero(edt_datfin.Text)>0 then
   Qr_Bal_Analitico.ParamByName('DATAFIN_MOV').Value:=edt_datfin.Date;

try
   Qr_Bal_Analitico.Open;
except
   Qr_Bal_Analitico.SQL.SaveToFile('c:\sqlinv.sql');
   end;
Qr_Bal_Analitico.SQL.SaveToFile('c:\sqlbal_anal.sql');

//ex_erroSql_Novo(Qr_Bal_Analitico,810,'farma_sgnpc','CADP01');


rlbacab_razemp.Caption   :=DM1.Tb_EmpRAZAO_CAB.AsString;
rlbacab_dathoremi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
if edt_datini.Date<=pdatanula then
   rlbacab_titulo.Caption  :='Inventario de Estoque.'
else
   rlbacab_titulo.Caption  :='Inventario de Estoque em '+FormatDateTime(fdt2, edt_datini.Date)+'.';


RLReport_bal_anal.PreviewModal;
//Qr_Inv_Impres.SQL.SaveToFile('c:\sqlinv.sql');


end;

procedure TFrm_Farma_SNGPC.RLReport_bal_analBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mQtdReg:=0;
    mGrupo_Ant:='-1';
end;

procedure TFrm_Farma_SNGPC.rlba_detBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if mGrupo_Ant<>Qr_Bal_AnaliticoGRUPO.AsString then
      begin
      mSaldo_Ant:=0;
      mGrupo_Ant:=Qr_Bal_AnaliticoGRUPO.AsString;
      end;


    mQtdReg:=mQtdReg+1;
    mSaldo_Ant:=mSaldo_Ant+(Qr_Bal_AnaliticoTOTENT.AsFloat-Qr_Bal_AnaliticoTOTSAI.AsFloat);
    rlbadet_saldo.Caption:=Formatfloat(mcasas, mSaldo_Ant);

end;

procedure TFrm_Farma_SNGPC.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlba_qtdreg.Caption:='Foram Impressos '+IntToStr(mQtdReg)+' Itens.';

end;

procedure TFrm_Farma_SNGPC.bbGerarClick(Sender: TObject);
begin
fGerarArquivo(0);
end;

function TFrm_Farma_SNGPC.fGerarArquivo(pTipo: Integer): Boolean;
var
mXml_SNGPC: TStrings;
mFiltro: String;
Qr_Compras: tQuery;
Qr_Saidas: tQuery;

mCabMed: Boolean;
mQtdMed: Integer;
mCabInsumos: Boolean;
mQtdInsumos: Integer;

mNumNF_Ant: Real;
mDataDoc_Ant: TDateTime;
mCNPJ_Ant: String;
mNumDoc_ant: String;
mNumNotif_ant: String;
mPaciente_ant: String;
mChave_ant: String;
pArquivosCompactar: TStrings;

mSeq: String;
mArqSai: String;
begin
rl_erros.Lines.clear;
if fsoNumero(edt_datini.text)=0 then
   begin
   if ptipo<>1 then
      begin
      MessageDlg('Data Inicial Deve Ser Colocado!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   result:=false;
   exit;
   end;
if edt_datfin.Date<edt_datini.Date then
   begin
   if ptipo<>1 then
      begin
      MessageDlg('Data Inicial Não Pode ser Maior que a data final!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   result:=false;
   exit;
   end;
if edt_caminho.Text[length(edt_caminho.text)]<>'\' then
   edt_caminho.Text:=edt_caminho.Text+'\';
if not DirExists(edt_caminho.Text) then
   fcriarPastas(edt_caminho.Text);
if not DirExists(edt_caminho.Text) then
   begin
   if ptipo<>1 then
      MessageDlg('Pasta '+edt_caminho.Text+' não encontrada!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;




mXml_SNGPC:=TStringList.Create;
mXml_SNGPC.Clear;
{
sngpcService.sngpcSoapClient wssngpc = new sngpcService.sngpcSoapClient();
                 string comp;
                 comp = wssngpc.EnviaArquivoSNGPC("teste@hotmail.com", "12345678", "C:\\sngpc.xml", geraHash("C:\\sngpc.xml"));
                 MessageBox.Show(comp);
}
if rg_tipoXML.ItemIndex=0 then
   begin
   fAbrirInventario;
   mXml_SNGPC:=TStringList.Create;
   mXml_SNGPC.Clear;
   mXml_SNGPC.Add('<?xml version="1.0" encoding="iso-8859-1" ?>');
   mXml_SNGPC.Add('<mensagemSNGPCInventario xmlns="urn:sngpc-schema">');
   mXml_SNGPC.Add('<cabecalho>');
   mXml_SNGPC.Add(fGeraXMLString(0,'cnpjEmissor',insere(DM1.Tb_EmpCGC.AsString,'0',14)));
   mXml_SNGPC.Add(fGeraXMLString(0,'cpfTransmissor',insere(DM1.Tb_EmpEMP_CPF_RESPONS.AsString,'0',11)));
   mXml_SNGPC.Add(fGeraXMLString(0,'data',Formatdatetime('yyyy-mm-dd', edt_datinv.date)));
   mXml_SNGPC.Add('</cabecalho>');

   mXml_SNGPC.Add('<corpo>');
   mCabMed:=false;
   mQtdMed:=0;
   mCabInsumos:=false;
   mQtdInsumos:=0;


   Qr_Inv_Impres.First;
   While not Qr_Inv_Impres.Eof do
      begin
      if Qr_Inv_ImpresTIPO_MED_INS.AsInteger<>1 then
         begin
         Qr_Inv_Impres.Next;
         Continue;
         end;
      if not mCabMed then
         begin
         mXml_SNGPC.Add('<medicamentos>');
         mCabMed:=true;
         end;
      mXml_SNGPC.Add('<entradaMedicamentos>');
      mQtdMed:=mQtdMed+1;
      mXml_SNGPC.Add('<medicamentoEntrada>');
      if (valint(Qr_Inv_ImpresPDCLASSE_TERAPEUTICA.AsString)<1) or
         (valint(Qr_Inv_ImpresPDCLASSE_TERAPEUTICA.AsString)>2) then
         rl_erros.Lines.Add('Produto: '+Qr_Inv_ImpresCODPRO.AsString+' - '+Qr_Inv_ImpresPDNOME.AsString+' Classe terapeutica é invalida!');

      mXml_SNGPC.Add(fGeraXMLString(0,'classeTerapeutica',Qr_Inv_ImpresPDCLASSE_TERAPEUTICA.AsString));

      if (length(trim(Qr_Inv_ImpresPDREGMS.AsString))<>13) and  (length(trim(Qr_Inv_ImpresPDREGMS.AsString))<>9) then
         rl_erros.Lines.Add('Produto: '+Qr_Inv_ImpresCODPRO.AsString+' - '+Qr_Inv_ImpresPDNOME.AsString+' Registro no Ministério da Saude é invalida!');
      mXml_SNGPC.Add(fGeraXMLString(0,'registroMSMedicamento',trim(Qr_Inv_ImpresPDREGMS.AsString)));

{      if (length(trim(Qr_Inv_ImpresLOTE.AsString))<1) then
         rl_erros.Lines.Add('Produto: '+Qr_Inv_ImpresCODPRO.AsString+' - '+Qr_Inv_ImpresPDNOME.AsString+' Número do Lote  é invalido!');
}
      mXml_SNGPC.Add(fGeraXMLString(0,'numeroLoteMedicamento',Qr_Inv_ImpresLOTE.AsString));

      if (Qr_Inv_ImpresQTDINV.asfloat<0) then
         rl_erros.Lines.Add('Produto: '+Qr_Inv_ImpresCODPRO.AsString+' - '+Qr_Inv_ImpresPDNOME.AsString+' a Quantidade é menor que zero  é invalido!');
      mXml_SNGPC.Add(fGeraXMLString(0,'quantidadeMedicamento',Qr_Inv_ImpresQTDINV.AsString));
      if Uppercase( copy(Qr_Inv_ImpresPDUND.AsString,1, 2) )='CX' then
         mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '1')) // caixas
      else
          mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '2')); // fracos
      mXml_SNGPC.Add('</medicamentoEntrada>');
      mXml_SNGPC.Add('</entradaMedicamentos>');
      Qr_Inv_Impres.Next;
      end;
   if mQtdMed>0 then
      begin
      mXml_SNGPC.Add('</medicamentos>');
      end;


   Qr_Inv_Impres.First;
   While not Qr_Inv_Impres.Eof do
      begin
      if Qr_Inv_ImpresTIPO_MED_INS.AsInteger<>2 then
         begin
         Qr_Inv_Impres.Next;
         Continue;
         end;
      if not mCabInsumos then
         begin
         mXml_SNGPC.Add('<insumos>');
         mCabInsumos:=true;
         end;



      mQtdInsumos:=mQtdInsumos+1;
      mXml_SNGPC.Add('<entradaInsumos>');
      mXml_SNGPC.Add('<insumoEntrada>');
      mXml_SNGPC.Add(fGeraXMLString(0,'classeTerapeutica',Qr_Inv_ImpresPDCLASSE_TERAPEUTICA.AsString));
      mXml_SNGPC.Add(fGeraXMLString(0,'codigoInsumo',trim(Qr_Inv_ImpresPDREGMS.AsString)));
      mXml_SNGPC.Add(fGeraXMLString(0,'numeroLoteInsumo',Qr_Inv_ImpresLOTE.AsString));
      mXml_SNGPC.Add(fGeraXMLString(0,'insumoCNPJFornecedor',Qr_Inv_ImpresCNPJ.AsString));
      mXml_SNGPC.Add(fGeraXMLString(0,'<quantidadeInsumo',Qr_Inv_ImpresQTDINV.AsString));
      if Uppercase( copy(Qr_Inv_ImpresPDUND_INSUMO.AsString,1, 2) )='CX' then
         mXml_SNGPC.Add(fGeraXMLString(0,'tipoUnidade', '1')) // caixas
      else
         mXml_SNGPC.Add(fGeraXMLString(0,'tipoUnidade', '2')); // fracos
      mXml_SNGPC.Add('</insumoEntrada>');
      mXml_SNGPC.Add('</entradaInsumos>');
      Qr_Inv_Impres.Next;
      end;
      if not mCabInsumos then
         begin
         mXml_SNGPC.Add('<insumos>');
         mCabInsumos:=true;
         mQtdinsumos:=1;
         end;

   if mQtdInsumos>0 then
      begin
      mXml_SNGPC.Add('</insumos>');
      end;

   mXml_SNGPC.Add('</corpo>');
   mXml_SNGPC.Add('</mensagemSNGPCInventario>');

   end
else
   begin
   mXml_SNGPC:=TStringList.Create;
   mXml_SNGPC.Clear;
   mXml_SNGPC.Add('<?xml version="1.0" encoding="iso-8859-1" ?>');
   mXml_SNGPC.Add('<mensagemSNGPC xmlns="urn:sngpc-schema">');
   mXml_SNGPC.Add('<cabecalho>');
   mXml_SNGPC.Add(fGeraXMLString(0,'cnpjEmissor',insere(DM1.Tb_EmpCGC.AsString,'0',14)));
   mXml_SNGPC.Add(fGeraXMLString(0,'cpfTransmissor',insere(DM1.Tb_EmpEMP_CPF_RESPONS.AsString,'0',11)));
   mXml_SNGPC.Add(fGeraXMLString(0,'dataInicio',Formatdatetime('yyyy-mm-dd', edt_datini.date)));
   mXml_SNGPC.Add(fGeraXMLString(0,'dataFim',Formatdatetime('yyyy-mm-dd', edt_datfin.date)));
   mXml_SNGPC.Add('</cabecalho>');
   mXml_SNGPC.Add('<corpo>');


   if (rg_tipoXML.ItemIndex=1) or (rg_tipoXML.ItemIndex=2) then
      begin
      Qr_Compras:=tQuery.Create(nil);
      Qr_Compras.DatabaseName:='SG_ASSOC';



      Qr_Compras.Close;
      Qr_Compras.sql.Clear;

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin(1,'CADPRO','PF2CODEMP','PDCODEMP','PF2CODPRO','PDCODPRO');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO');


      Qr_Compras.SQL.Add('Select case when PDNIVEL=5 then 2 else 1 end AS TIPO_MED_INS,'+QuotedStr('PF1')+' AS ORIGEM, '
                              +QuotedStr('01-COMPRAS')+' AS TIPOMOV, '
                              +' FRAZAO as RAZSOC, '
                              +' PF1DATAENT AS DATDOC, '
                              +' PF1DATANF AS DATENT, '

                              +' PF1NUMNF as NUMDOC, '
                              +' FCGC as CNPJ_ORIGEM, '
                              +' :CGC_EMP as CNPJ_DESTINO, '
                              +' PDREGMS AS REGMS, '
                              +'PF2CODPRO AS CODPRO,'
                              +' NVL(PF2L_QTD,PF2QTDP) AS COMPRAS '
                              +' , NVL(PF2L_LOTE,'+QuotedStr('X')+') AS LOTE '
                              +',  PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,PDNOME,PDUND '
                              +' FROM CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                                          +'       '+la_Join
                                          +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' PF1CODEMP=0'+IntToStr(codemp)

                           +' and PF1STATUS<>9  and PF1STATUS=1  and PDSGNPC=1 '
                        +' and PF2L_SNGPC_ENVIAR='+QuotedStr('S')
                        );
      if fsonumero(edt_datini.Text)>0 then
         Qr_Compras.SQL.Add(' and PF1DATAENT>=:DATAINI_MOV');
      if fsonumero(edt_datfin.Text)>0 then
         Qr_Compras.SQL.Add(' and PF1DATAENT<=:DATAFIN_MOV');

      mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
      if trim(mFiltro)<>'' then
         Qr_Compras.SQL.Add(' and PDCODGRU '+mFiltro);



      Qr_Compras.SQL.Add(' UNION ');


      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      finnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

      la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


      la_instrucao:=la_instrucao+' and ';
      finnerjoin4(1,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');

      Qr_Compras.SQL.Add(' Select case when PDNIVEL=5 then 2 else 1 end AS TIPO_MED_INS, '
                              +QuotedStr('PED')+' AS ORIGEM, '
                              +QuotedStr('02-DEVCLI')+' AS TIPOMOV, '
                              +'CRAZAO as RAZSOC, '
                              +'P1DATDOC AS DATDOC, '
                              +'P1DATDOC AS DATENT, '
                              +' CASE WHEN P1NUMCF>0 THEN  P1NUMCF '
                              +' ELSE  P1NUMNF END as NUMDOC, '
                              +' CASE WHEN CCNPJ=0 THEN TO_CHAR(CCPF) ELSE TO_CHAR(CCNPJ) END as CNPJ_ORIGEM, '
                              +' :CGC_EMP as CNPJ_DESTINO, '
                              +' PDREGMS AS REGMS, '
                              +' P2CODPRO AS CODPRO,'
                              +' NVL(P2SNGPC_QTDPED,P2QTD) AS COMPRAS '
                              +' , NVL(P2SNGPC_LOTE,'+QuotedStr('X')+')  AS LOTE '
                              +',  PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,PDNOME,PDUND '

                           +'  FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                          +'       '+la_Join
                                          +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' P1STATUS<>9 '
                           +' and P1EMIDOC=1  and PDSGNPC=1    '
                           +' and  P1CODEMP='+IntTostr(codemp)
                           +' and  P2SNGPC_ENVIAR='+QuotedStr('S'));

      if fsonumero(edt_datini.Text)>0 then
         Qr_Compras.SQL.Add(' and P1DATDOC>=:DATAINI_MOV');
      if fsonumero(edt_datfin.Text)>0 then
         Qr_Compras.SQL.Add(' and P1DATDOC<=:DATAFIN_MOV');


      mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
      if trim(mFiltro)<>'' then
         Qr_Compras.SQL.Add(' and PDCODGRU '+mFiltro);


      Qr_Compras.ParamByName('CGC_EMP').Value:=insere(DM1.Tb_EmpCGC.AsString,'0',14);

      if fsonumero(edt_datini.Text)>0 then
         Qr_Compras.ParamByName('DATAINI_MOV').Value:=edt_datini.Date;
      if fsonumero(edt_datfin.Text)>0 then
         Qr_Compras.ParamByName('DATAFIN_MOV').Value:=edt_datfin.Date;
      try
         Qr_Compras.Open;
      except
         Qr_Compras.SQL.SaveToFile('c:\sql.txt');
         end;



      mCabMed:=false;
      mQtdMed:=0;
      mCabInsumos:=false;
      mQtdInsumos:=0;


      While not Qr_Compras.Eof do
         begin
         if Qr_Compras.FieldByName('TIPO_MED_INS').AsInteger<>1 then
            begin
            Qr_Compras.Next;
            Continue;
            end;
          if not mCabMed then
             begin
             mXml_SNGPC.Add('<medicamentos>');
             mCabMed:=true;
             end;
         mXml_SNGPC.Add('<entradaMedicamentos>');

         mXml_SNGPC.Add('<notaFiscalEntradaMedicamento>');
         mXml_SNGPC.Add(fGeraXMLString(0,'numeroNotaFiscal',Qr_Compras.fieldbyName('NUMDOC').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'tipoOperacaoNotaFiscal','1'));
         mXml_SNGPC.Add(fGeraXMLString(0,'dataNotaFiscal',Formatdatetime('yyyy-mm-dd', Qr_Compras.fieldbyName('DATDOC').AsDateTime)));
         mXml_SNGPC.Add(fGeraXMLString(0,'cnpjOrigem',insere(Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString,'0',14)));
         mXml_SNGPC.Add(fGeraXMLString(0,'cnpjDestino',insere(Qr_Compras.fieldbyName('CNPJ_DESTINO').AsString,'0',14)));
         mXml_SNGPC.Add('</notaFiscalEntradaMedicamento>');

         mNumNF_Ant  := Qr_Compras.fieldbyName('NUMDOC').AsFloat;
         mDataDoc_Ant:= Qr_Compras.fieldbyName('DATDOC').AsDateTime;
         mCNPJ_Ant   := Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString;

         While (not Qr_Compras.eof)  and (mNumNF_Ant=Qr_Compras.fieldbyName('NUMDOC').AsFloat) and
               (mDataDoc_Ant=Qr_Compras.fieldbyName('DATDOC').AsDateTime) and
               (mCNPJ_Ant=Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString) do
            begin
            mXml_SNGPC.Add('<medicamentoEntrada>');
            mXml_SNGPC.Add(fGeraXMLString(0,'classeTerapeutica',Qr_Compras.fieldbyName('PDCLASSE_TERAPEUTICA').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'registroMSMedicamento',trim(Qr_Compras.fieldbyName('REGMS').AsString)));
            mXml_SNGPC.Add(fGeraXMLString(0,'numeroLoteMedicamento',Qr_Compras.fieldbyName('LOTE').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'quantidadeMedicamento',Qr_Compras.fieldbyName('COMPRAS').AsString));

            if Uppercase( copy(Qr_Compras.fieldbyName('PDUND_FARMACOTECNICA').AsString,1, 2) )='CX' then
               mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '1')) // caixas
            else
                mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '2')); // fracos

            mXml_SNGPC.Add('</medicamentoEntrada>');
            mQtdMed:=mQtdMed+1;
            Qr_Compras.Next;
            end;
         mXml_SNGPC.Add(fGeraXMLString(0,'dataRecebimentoMedicamento',Formatdatetime('yyyy-mm-dd', Qr_Compras.fieldbyName('DATENT').AsDateTime)));
         mXml_SNGPC.Add('</entradaMedicamentos>');
         end;

    {
      Qr_Compras.First;
      While not Qr_Compras.Eof do
         begin
         if Qr_Compras.FieldByName('TIPO_MED_INS').AsInteger<>2 then
            begin
            Qr_Compras.Next;
            Continue;
            end;
          if not mCabInsumos then
             begin
             mXml_SNGPC.Add('<insumos>');
             mCabMed:=true;
             end;
         mQtdMed:=mQtdMed+1;
         mXml_SNGPC.Add('<entradaInsumos>');

         mXml_SNGPC.Add('<notaFiscalEntradaInsumo>');
         mXml_SNGPC.Add(fGeraXMLString(0,'numeroNotaFiscal',Qr_Compras.fieldbyName('NUMDOC').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'tipoOperacaoNotaFiscal','1'));
         mXml_SNGPC.Add(fGeraXMLString(0,'dataNotaFiscal',Formatdatetime('yyyy-mm-dd', Qr_Compras.fieldbyName('DATDOC').AsDateTime)));
         mXml_SNGPC.Add(fGeraXMLString(0,'cnpjOrigem',insere(Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString,'0',14)));
         mXml_SNGPC.Add(fGeraXMLString(0,'cnpjDestino',insere(Qr_Compras.fieldbyName('CNPJ_DESTINO').AsString,'0',14)));
         mXml_SNGPC.Add('</notaFiscalEntradaInsumo>');

         mNumNF_Ant  := Qr_Compras.fieldbyName('NUMDOC').AsFloat;
         mDataDoc_Ant:= Qr_Compras.fieldbyName('DATDOC').AsDateTime;
         mCNPJ_Ant   := Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString;

         While (mNumNF_Ant=Qr_Compras.fieldbyName('NUMDOC').AsFloat) and
               (mDataDoc_Ant=Qr_Compras.fieldbyName('DATDOC').AsDateTime) and
               (mCNPJ_Ant=Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString) do
            begin
            mXml_SNGPC.Add('<insumoEntrada>');
            mXml_SNGPC.Add(fGeraXMLString(0,'classeTerapeutica',Qr_Compras.fieldbyName('PDCLASSE_TERAPEUTICA').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'codigoInsumo',Qr_Compras.fieldbyName('REGMS').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'numeroLoteInsumo',Qr_Compras.fieldbyName('LOTE').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'insumoCNPJFornecedor',insere(Qr_Compras.fieldbyName('CNPJ_ORIGEM').AsString,'0',14)));
            mXml_SNGPC.Add(fGeraXMLString(0,'quantidadeInsumo',Qr_Compras.fieldbyName('COMPRAS').AsString));

            mXml_SNGPC.Add(fGeraXMLString(0,'tipoUnidade',Qr_Compras.fieldbyName('PDUND_INSUMO').AsString));
            mXml_SNGPC.Add('</insumoEntrada>');
            Qr_Compras.Next;
            end;
        mXml_SNGPC.Add(fGeraXMLString(0,'dataRecebimentoInsumo',Formatdatetime('yyyy-mm-dd', Qr_Compras.fieldbyName('DATENT').AsDateTime)));
        end;
      if mQtdInsumos>0 then
         mXml_SNGPC.Add('</entradaInsumos>');
     }
     FreeandNil(Qr_Compras);
     end;
// saidas




   if (rg_tipoXML.ItemIndex=1) or (rg_tipoXML.ItemIndex=3) then
      begin
      Qr_Saidas:=tQuery.Create(nil);
      Qr_Saidas.DatabaseName:='SG_ASSOC';

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      finnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');

      la_instrucao:=la_instrucao+' and ';
      finnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


      la_instrucao:=la_instrucao+' and ';
      finnerjoin4(1,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');
      Qr_Saidas.Close;
      Qr_Saidas.SQL.Clear;

      Qr_Saidas.SQL.Add(' Select '+QuotedStr('PED')+' AS ORIGEM, '
                              +QuotedStr('02-PEDVEN')+' AS TIPOMOV, '
                              +'CRAZAO as RAZSOC, '
                              +'P1DATDOC AS DATDOC, '
                              +' CASE WHEN P1NUMCF>0 THEN '+QuotedStr('CF-')+' || P1NUMCF '
                              +' ELSE '+QuotedStr('NF-')+' || P1NUMNF END as NUMDOC, '
                              +' P2CODPRO AS CODPRO, '
                           +' 0 AS ENTRADA, DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0) AS DEVCLI, 0 AS PERDAS '
                           +', DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD)) AS SAIDAS, NVL(P2SNGPC_LOTE,'+QuotedStr('X')+')  AS LOTE '
                           +' ,CASE WHEN P2SNGPC_TIPO_RECEITA is null then PDTIPO_RECEITA else P2SNGPC_TIPO_RECEITA END as P2SNGPC_TIPO_RECEITA '
                           +' ,P2SNGPC_NUM_NOTIF,P2SNGPC_DT_PRESCRICAO '
                           +',P2SNGPC_PRESC_NOME,P2SNGPC_NUM_REG_PROF,P2SNGPC_CONS_PROFIS '
                           +',P2SNGPC_UF_CONSELHO,P2SNGPC_USO_MEDIC,'
                           +'  P2SNGPC_NOME_COMPRADOR, '
                           +'  P2SNGPC_TIPO_DOC, '
                           +'  P2SNGPC_NUM_DOC, '
                           +'  P2SNGPC_UF_EMIS_DOC, '
                           +'  P2SNGPC_ORGAO_EXPED, '

{
                           +' CASE WHEN P2SNGPC_TIPO_RECEITA=5 then null else P2SNGPC_NOME_COMPRADOR end as P2SNGPC_NOME_COMPRADOR, '
                           +' CASE WHEN P2SNGPC_TIPO_RECEITA=5 then null else P2SNGPC_TIPO_DOC end as P2SNGPC_TIPO_DOC, '
                           +' CASE WHEN P2SNGPC_TIPO_RECEITA=5 then null else P2SNGPC_NUM_DOC end as P2SNGPC_NUM_DOC, '
                           +' CASE WHEN P2SNGPC_TIPO_RECEITA=5 then null else P2SNGPC_UF_EMIS_DOC end as P2SNGPC_UF_EMIS_DOC, '
                           +' CASE WHEN P2SNGPC_TIPO_RECEITA=5 then null else P2SNGPC_ORGAO_EXPED end as P2SNGPC_ORGAO_EXPED, '
}
                           +' P2SNGPC_REGMS,P2SNGPC_LOTE '
                           +',P2SNGPC_QTDPED,P2SNGPC_DATA_VENDA,PDUSO_MEDICAMENTO,PDNOME,PDUND '
                           +',P2SNGPC_PACIENTE_NOME,P2SNGPC_PACIENTE_IDADE,P2SNGPC_PACIENTE_UND_IDADE'
                           +',P2SNGPC_PACIENTE_SEXO,P2SNGPC_PACIENTE_CIDADE,P2SNGPC_USO_PROLOGANDO,P2CHAVE '
                           +'  FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                          +'       '+la_Join
                                          +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' P1STATUS<>9 '
                           +' and P1DATDOC>=:DATAINI_MOV '
                           +' and P1DATDOC<=:DATAFIN_MOV '
                           +' and P1EMIDOC=1  and PDSGNPC=1    '
                           +' and  P1CODEMP='+IntTostr(codemp)
                           +' and  P2SNGPC_ENVIAR='+QuotedStr('S'));

      if fsonumero(edt_datini.Text)>0 then
         Qr_Saidas.SQL.Add(' and P1DATDOC>=:DATAINI_MOV');
      if fsonumero(edt_datfin.Text)>0 then
         Qr_Saidas.SQL.Add(' and P1DATDOC<=:DATAFIN_MOV');

      mFiltro:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
      if trim(mFiltro)<>'' then
         Qr_Saidas.SQL.Add(' and PDCODGRU '+mFiltro);
      if fsonumero(edt_datini.Text)>0 then
         Qr_Saidas.ParamByName('DATAINI_MOV').Value:=edt_datini.Date;
      if fsonumero(edt_datfin.Text)>0 then
         Qr_Saidas.ParamByName('DATAFIN_MOV').Value:=edt_datfin.Date;


    {  Qr_Saidas.SQL.Add(' GROUP BY P2CODPRO,P2SNGPC_LOTE,CRAZAO,P1DATDOC, '
                              +' CASE WHEN P1NUMCF>0 THEN '+QuotedStr('CF-')+' || P1NUMCF '
                              +' ELSE '+QuotedStr('NF-')+' || P1NUMNF END ');
    }  try
         Qr_Saidas.Open;
      except
         Qr_Saidas.SQL.SaveToFile('c:\sqlsaidas.txt');
         end;

      While not Qr_Saidas.Eof do
         begin
          if not mCabMed then
             begin
             mXml_SNGPC.Add('<medicamentos>');
             mCabMed:=true;
             end;

         mXml_SNGPC.Add('<saidaMedicamentoVendaAoConsumidor>');
         mXml_SNGPC.Add(fGeraXMLString(0,'tipoReceituarioMedicamento',Qr_Saidas.fieldbyName('P2SNGPC_TIPO_RECEITA').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'numeroNotificacaoMedicamento',Qr_Saidas.fieldbyName('P2SNGPC_NUM_NOTIF').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'dataPrescricaoMedicamento',Formatdatetime('yyyy-mm-dd', Qr_Saidas.fieldbyName('P2SNGPC_DT_PRESCRICAO').AsDateTime)));
         mXml_SNGPC.Add('<prescritorMedicamento>');
         mXml_SNGPC.Add(fGeraXMLString(0,'nomePrescritor', Qr_Saidas.fieldbyName('P2SNGPC_PRESC_NOME').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'numeroRegistroProfissional', Qr_Saidas.fieldbyName('P2SNGPC_NUM_REG_PROF').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'conselhoProfissional', Qr_Saidas.fieldbyName('P2SNGPC_CONS_PROFIS').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'UFConselho', Qr_Saidas.fieldbyName('P2SNGPC_UF_CONSELHO').AsString));
         mXml_SNGPC.Add('</prescritorMedicamento>');
         mXml_SNGPC.Add(fGeraXMLString(0,'usoMedicamento', Qr_Saidas.fieldbyName('P2SNGPC_USO_MEDIC').AsString));

         if valint(Qr_Saidas.fieldbyName('P2SNGPC_TIPO_RECEITA').AsString)<>5 then
            begin
            mXml_SNGPC.Add('<compradorMedicamento>');
            mXml_SNGPC.Add(fGeraXMLString(0,'nomeComprador', Qr_Saidas.fieldbyName('P2SNGPC_NOME_COMPRADOR').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'tipoDocumento', Qr_Saidas.fieldbyName('P2SNGPC_TIPO_DOC').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'numeroDocumento', Qr_Saidas.fieldbyName('P2SNGPC_NUM_DOC').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'orgaoExpedidor', Qr_Saidas.fieldbyName('P2SNGPC_ORGAO_EXPED').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'UFEmissaoDocumento', Qr_Saidas.fieldbyName('P2SNGPC_UF_EMIS_DOC').AsString));
            mXml_SNGPC.Add('</compradorMedicamento>');
            end;

         mXml_SNGPC.Add('<pacienteMedicamento>');
         mXml_SNGPC.Add(fGeraXMLString(0,'nome', Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_NOME').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'idade', Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_IDADE').AsString));
         mXml_SNGPC.Add(fGeraXMLString(0,'unidadeIdade', IntToStr(Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_UND_IDADE').AsInteger+1)));
         mXml_SNGPC.Add(fGeraXMLString(0,'sexo', IntToStr(Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_SEXO').AsInteger+1)));
         mXml_SNGPC.Add(fGeraXMLString(0,'cid', ''));
//         mXml_SNGPC.Add(fGeraXMLString(0,'cid', Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_CIDADE').AsString));
         mXml_SNGPC.Add('</pacienteMedicamento>');
         mNumDoc_ant  :=Qr_Saidas.fieldbyName('P2SNGPC_NUM_DOC').AsString;
         mPaciente_ant:=Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_NOME').AsString;
         mNumNotif_ant:=Qr_Saidas.fieldbyName('P2SNGPC_NUM_NOTIF').AsString;
         mChave_ant:=Qr_Saidas.fieldbyName('P2CHAVE').AsString;
         While (not Qr_Saidas.Eof) and
               (mNumDoc_ant=Qr_Saidas.fieldbyName('P2SNGPC_NUM_DOC').AsString) and
               (mPaciente_ant=Qr_Saidas.fieldbyName('P2SNGPC_PACIENTE_NOME').AsString) and
               (mNumNotif_ant=Qr_Saidas.fieldbyName('P2SNGPC_NUM_NOTIF').AsString)  and
               (mChave_ant=Qr_Saidas.fieldbyName('P2CHAVE').AsString)  do
            begin
            mXml_SNGPC.Add('<medicamentoVenda>');
            mXml_SNGPC.Add(fGeraXMLString(0,'usoProlongado', Qr_Saidas.fieldbyName('P2SNGPC_USO_PROLOGANDO').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'registroMSMedicamento', trim(Qr_Saidas.fieldbyName('P2SNGPC_REGMS').AsString)));
            mXml_SNGPC.Add(fGeraXMLString(0,'numeroLoteMedicamento', Qr_Saidas.fieldbyName('P2SNGPC_LOTE').AsString));
            mXml_SNGPC.Add(fGeraXMLString(0,'quantidadeMedicamento', Qr_Saidas.fieldbyName('P2SNGPC_QTDPED').AsString));
            if Uppercase( copy( Qr_Saidas.fieldbyName('PDUND').AsString,1, 2) )='CX' then
               mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '1')) // caixas
            else
               mXml_SNGPC.Add(fGeraXMLString(0,'unidadeMedidaMedicamento', '2')); // fracos
            mXml_SNGPC.Add('</medicamentoVenda>');
            mQtdMed:=mQtdMed+1;
            Qr_Saidas.Next;
            end;
         mXml_SNGPC.Add(fGeraXMLString(0,'dataVendaMedicamento',Formatdatetime('yyyy-mm-dd',Qr_Saidas.FieldByName('DATDOC').AsDateTime)));
         mXml_SNGPC.Add('</saidaMedicamentoVendaAoConsumidor>');
         end;
      FreeandNil(Qr_Saidas);
      end;

   if mQtdMed>0 then
      mXml_SNGPC.Add('</medicamentos>')
   else
      begin
      mXml_SNGPC.Add('<medicamentos>');
      mXml_SNGPC.Add('</medicamentos>');
      end;

   mXml_SNGPC.Add('<insumos>');
   mXml_SNGPC.Add('</insumos>');
   mXml_SNGPC.Add('</corpo>');
   mXml_SNGPC.Add('</mensagemSNGPC>');



// termino saidas



   end;

mSeq:='';
While true do
   begin
   mArqSai:=edt_caminho.Text+'SNGPC_'+FormatDatetime('dd-mm-yyyy', edt_datini.Date)+'_'+FormatDatetime('dd-mm-yyyy', edt_datfin.Date)+mSeq;
   try
      mXml_SNGPC.SaveToFile(mArqSai+'.XML');
      break;
   except
      mseq:=inttostr(valint(mseq)+1);
      end;
   end;


FreeandNil(mXml_SNGPC);

if fileexists(mArqSai+'.zip') then
   deletefile(mArqSai+'.zip');
pArquivosCompactar:=TStringList.Create;
pArquivosCompactar.Add(mArqSai+'.xml');

fZiparArquivos(pArquivosCompactar,pchar(mArqSai+'.zip'),'');

freeandnil(pArquivosCompactar);
if trim(rl_erros.Text)<>'' then
   begin
   Messagedlg('Arquivo gerado '+mArqSai+'.XML'
             +' com erros, tecle enter para ver',mtWarning,[mbOk],0);
   edt_nomearq.text:=mArqSai+'.zip';
   PageControl1.ActivePage:=tsOutros;
   result:=false;
   end
else
   begin
   edt_nomearq.text:=mArqSai+'.zip';
   if ptipo<>1 then
      Messagedlg('Arquivo gerado '+edt_caminho.Text+'SNGPC_'+FormatDatetime('dd-mm-yyyy', edt_datini.Date)+'_'+FormatDatetime('dd-mm-yyyy', edt_datfin.Date)+mSeq+'.XML'
             +' com sucesso!',mtWarning,[mbOk],0);
   result:=true;
   end;
end;

procedure TFrm_Farma_SNGPC.edt_datiniExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)=0 then
   lbl_datainventario.Visible:=false
else
   begin
   try
      edt_datini.Text:=FormatDatetime(fdt2, StrToDateTime(edt_datini.Text));
      lbl_datainventario.Caption:='o Inventario será o Estoque Final do dia '+FormatDateTime(fdt2, edt_datini.Date-1);
      lbl_datainventario.Visible:=true;
   except
      MessageDlg(edt_datini.Text+' não é uma Data valida!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   end;
end;

procedure TFrm_Farma_SNGPC.edt_datfinExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)=0 then
   lbl_datainventario.Visible:=false
else
   begin
   try
      edt_datfin.Text:=FormatDatetime(fdt2, StrToDateTime(edt_datfin.Text));
   except
      MessageDlg(edt_datfin.Text+' não é uma Data valida!',mtWarning,[mbOk],0);
      edt_datfin.SetFocus;
      end;
   end;

end;

procedure TFrm_Farma_SNGPC.CB_INVENTARIOClick(Sender: TObject);
begin
try
   edt_datinv.Text:=FormatDatetime(fdt2, strtodate(CB_INVENTARIO.Text));
except
   end;   
end;

procedure TFrm_Farma_SNGPC.FormCreate(Sender: TObject);
begin
edt_datini.Date := Now - 8;
edt_datfin.Date := Now;
if codusr=1111 then
   begin
   edt_usuario_email.Text:='valerianoaline@hotmail.com';
   edt_senha.Text:='drogaliv';
   sbnAdicionar.Visible:=true;
   sbnHomogacao.visible:=true;
   end
else
   begin
   sbnAdicionar.Visible:=false;
   sbnHomogacao.visible:=false;
   end;

lbl_qtdcar.Caption:='';

memo1.Clear;
end;


{


Segue o incicio para criar um sistema para SNGPC, fica a aberto para quem quiser contribuir.


procedure TForm1.BitBtn1Click(Sender: TObject);
var
i,x: Word;
NCorpo,NMedicamento,NData: IXMLNode;
XMLDoc: TXMLDocument;
begin
   x:=1;
   //x:=10;
   // Cria o documento
   XMLDoc:=TXMLDocument.Create(Application);
   with XMLDoc do
   begin
      Active:=True;
      Version:='1.0';
      Encoding:='ISO-8859-1';
      AddChild('mensagemSNGPC','urn:sngpc-schema');
      with DocumentElement do
      begin
         AddChild('cabecalho');
         ChildNodes.Last.AddChild('cnpjEmissor').NodeValue:='99999999000199';
         ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue:='00000000000';
         ChildNodes.Last.AddChild('dataInicio').NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         ChildNodes.Last.AddChild('dataFim').NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
      end;
      NCorpo:=DocumentElement.AddChild('corpo');
      // *************************** MEDICAMENTO *********************************
      NMedicamento:=NCorpo.AddChild('medicamentos');
      // Loop das [Entradas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('entradaMedicamentos');
      with NData do
      begin
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
         // [tipoOperacaoNotaFiscal]
         // 1 Compra
         // 2 Transferência
         // 3 Venda
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='1';
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
         ChildNodes['medicamentoEntrada'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000750061';
         ChildNodes['medicamentoEntrada'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RV365';
         ChildNodes['medicamentoEntrada'].ChildNodes['quantidadeMedicamento'].NodeValue:='12';
         ChildNodes['dataRecebimentoMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
      end;
      end;
      // Loop das [Saidas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoVendaAoConsumidor');
         with NData do
         begin
            // [tipoReceituarioMedicamento]
            // 1 Receita de Controle Especial em 2 vias (Receita Branca)
            // 2 Notificação de Receita B (Notificação Azul)
            // 3 Notificação de Receita Especial (Notificação Branca)
            // 4 Notificação de Receita A (Notificação Amarela)
            ChildNodes['tipoReceituarioMedicamento'].NodeValue:='1';
            ChildNodes['numeroNotificacaoMedicamento'].NodeValue:='213213';
            ChildNodes['dataPrescricaoMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['prescritorMedicamento'].ChildNodes['nomePrescritor'].NodeValue:='XFULANO';
            ChildNodes['prescritorMedicamento'].ChildNodes['numeroRegistroProfissional'].NodeValue:='99999';
            // [conselhoProfissional]
            // CRM Conselho Regional de Medicina
            // CRMV Conselho Regional de Medicina Veterinária
            // CRO Conselho Regional de Odontologia
            ChildNodes['prescritorMedicamento'].ChildNodes['conselhoProfissional'].NodeValue:='CRM';
            ChildNodes['prescritorMedicamento'].ChildNodes['UFConselho'].NodeValue:='PR';
            // [usoMedicamento]
            // 1 Humano
            // 2 Veterinario
            ChildNodes['usoMedicamento'].NodeValue:='1';
            ChildNodes['compradorMedicamento'].ChildNodes['nomeComprador'].NodeValue:='XCICLANO';
            // [tipoDocumento]
            // 1 CARTEIRA DE REGISTRO PROFISSIONAL
            // 2 CARTEIRA DE IDENTIDADE . . . existem mais
            ChildNodes['compradorMedicamento'].ChildNodes['tipoDocumento'].NodeValue:='1';
            ChildNodes['compradorMedicamento'].ChildNodes['numeroDocumento'].NodeValue:='123';
            ChildNodes['compradorMedicamento'].ChildNodes['orgaoExpedidor'].NodeValue:='SSP';
            ChildNodes['compradorMedicamento'].ChildNodes['UFEmissaoDocumento'].NodeValue:='PR';
            ChildNodes['medicamentoVenda'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000430215';
            ChildNodes['medicamentoVenda'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RGJ0400';
            ChildNodes['medicamentoVenda'].ChildNodes['quantidadeMedicamento'].NodeValue:='3';
            ChildNodes['dataVendaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Transferencias] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoTransferencia');
         with NData do
         begin
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='2';
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['medicamentoTransferencia'].ChildNodes['registroMSMedicamento'].NodeValue:='1058302590029';
            ChildNodes['medicamentoTransferencia'].ChildNodes['numeroLoteMedicamento'].NodeValue:='153353';
            ChildNodes['medicamentoTransferencia'].ChildNodes['quantidadeMedicamento'].NodeValue:='2';
            ChildNodes['dataTransferenciaMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Perdas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoPerda');
         with NData do
         begin
            // [motivoPerdaMedicamento]
            // 1 Furto / Roubo
            // 2 Avaria
            // 3 Vencimento
            // 4 Apreensão / Recolhimento pela Visa
            ChildNodes['motivoPerdaMedicamento'].NodeValue:='3';
            ChildNodes['medicamentoPerda'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000750061';
            ChildNodes['medicamentoPerda'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RV365';
            ChildNodes['medicamentoPerda'].ChildNodes['quantidadeMedicamento'].NodeValue:='2';
            ChildNodes['dataPerdaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // *************************************************************************
      // ********************************* INSUMO ********************************
      NMedicamento:=NCorpo.AddChild('insumos');
      // Loop das [Entradas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('entradaInsumos');
         with NData do
         begin
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='1';
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['codigoInsumo'].NodeValue:='0075';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['numeroLoteInsumo'].NodeValue:='788cpf';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['quantidadeInsumoEntrada'].NodeValue:='40000.0';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['tipoUnidadeEntrada'].NodeValue:='1';
            ChildNodes['dataRecebimentoInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Saidas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoVendaAoConsumidor');
         with NData do
         begin
            // [tipoReceituarioInsumo]
            // 1 Receita de Controle Especial em 2 vias (Receita Branca)
            // 2 Notificação de Receita B (Notificação Azul)
            // 3 Notificação de Receita Especial (Notificação Branca)
            // 4 Notificação de Receita A (Notificação Amarela)
            ChildNodes['tipoReceituarioInsumo'].NodeValue:='2';
            ChildNodes['numeroNotificacaoInsumo'].NodeValue:='9897651';
            ChildNodes['dataPrescricaoInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['prescritorInsumo'].ChildNodes['nomePrescritor'].NodeValue:='Dr. Antenor';
            ChildNodes['prescritorInsumo'].ChildNodes['numeroRegistroProfissional'].NodeValue:='8888';
            // [conselhoProfissional]
            // CRM Conselho Regional de Medicina
            // CRMV Conselho Regional de Medicina Veterinária
            // CRO Conselho Regional de Odontologia
            ChildNodes['prescritorInsumo'].ChildNodes['conselhoProfissional'].NodeValue:='CRM';
            ChildNodes['prescritorInsumo'].ChildNodes['UFConselho'].NodeValue:='PR';
            ChildNodes['usoInsumo'].NodeValue:='1';
            ChildNodes['compradorInsumo'].ChildNodes['nomeComprador'].NodeValue:='Manuela Danta';
            // [tipoDocumento]
            // 1 CARTEIRA DE REGISTRO PROFISSIONAL
            // 2 CARTEIRA DE IDENTIDADE . . . existem mais
            ChildNodes['compradorInsumo'].ChildNodes['tipoDocumento'].NodeValue:='2';
            ChildNodes['compradorInsumo'].ChildNodes['numeroDocumento'].NodeValue:='89786453';
            ChildNodes['compradorInsumo'].ChildNodes['orgaoExpedidor'].NodeValue:='SSP';
            ChildNodes['compradorInsumo'].ChildNodes['UFEmissaoDocumento'].NodeValue:='PR';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].NodeValue:='';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['numeroLoteInsumo'].NodeValue:='123dzp';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeInsumoPorUnidadeFarmacotecnica'].NodeValue:='5.0';
            // [unidadeDeMedidaDoInsumo]
            // 1 Miligrama
            // 2 Mililitro
            // 3 Unidade (U)
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeDeMedidaDoInsumo'].NodeValue:='1';
            // [unidadeFarmacotecnica]
            // 1 Miligrama
            // 2 Cápsula
            // 3 Comprimido
            // 4 Mililitro
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeFarmacotecnica'].NodeValue:='2';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeUnidadesFarmacotecnicas'].NodeValue:='60.0';
            ChildNodes['dataVendaInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Transferencias] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoTransferencia');
         with NData do
         begin
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='2';
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['numeroLoteInsumo'].NodeValue:='15353';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['quantidadeInsumoTransferencia'].NodeValue:='20000.0';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['tipoUnidadeTransferencia'].NodeValue:='1';
            ChildNodes['dataTransferenciaInsumo'].NodeValue :=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Perdas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoPerda');
         with NData do
         begin
            // [motivoPerdaInsumo]
            // 1 Furto / Roubo
            // 2 Avaria
            // 3 Vencimento
            // 4 Apreensão / Recolhimento pela Visa
            ChildNodes['motivoPerdaInsumo'].NodeValue:='2';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['numeroLoteInsumo'].NodeValue:='786dpz';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['quantidadeInsumoPerda'].NodeValue:='12345.0';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['tipoUnidadePerda'].NodeValue:='1';
            ChildNodes['dataPerdaInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['cnpjFornecedorInsumo'].NodeValue:='99999999000199';
         end;
      end;
      // *************************************************************************
      SaveToFile(ExtractFileDir(Application.ExeName)+'\Sngpc_'+FormatDateTime('dd_mm_yyyy',Date)+'.xml');


   end;
   XMLDoc.Active:=False;
   XMLDoc.Free;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   ws_TESTE:= HTTPRIO1 AS sngpcSoap; //GetsngpcSoap();
   HashIdentificacao:= MD5DigestToStr(MD5File('D:\SNGPC\TESTE.XML'));
   Edit3.Text := HashIdentificacao;
   XMLDocument1.LoadFromFile('D:\SNGPC\TESTE.XML');
   Memo1.Lines.Add(ws_TESTE.EnviaArquivoSNGPC('seu email','sua senha', XMLDocument1.XML.Text, HashIdentificacao));
   //HashIdentificacao := Guid();
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var strcomp: string;
begin
   ws_TESTE:= GetsngpcSoap();
   Memo1.Lines.Add:= (ws_TESTE.ValidarUsuario('seu email','sua senha'));
end;


}



procedure TFrm_Farma_SNGPC.bbEnviarDiretoClick(Sender: TObject);
begin
if fGerarArquivo(1) then
   begin
   EnviarDireto('INVENTARIO',EDT_NOMEARQ.TEXT);
   if AdoSNGPCEnviados.Active then
      begin
      AdoSNGPCEnviados.Close;
      AdoSNGPCEnviados.Open;
      end;
   end;

end;



function TFrm_Farma_SNGPC.EnviarDireto(pTipoArq,pNomeArq: string): Boolean;
var
HashIdentificacao: string;
mEnder: String;
mEnviado: Boolean;
begin
Memo1.Clear;
mEnviado:=false;
//mEnder:='http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx';
if cb_ambiente.Checked=true then
   mEnder:='http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?wsdl'
else
   mEnder:='http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?wsdl';


ws := GetsngpcSoap(true,mEnder,nil);
Memo1.Lines.Clear;
Memo1.Lines.Add(ws.ValidarUsuario(UpperCase(edt_usuario_email.Text),edt_senha.Text));
if uppercase(trim(memo1.Text))<>'OK' then
   begin
   Memo1.Lines.add('Erro ao conectar na anvisa!');
   exit;
   end;


if pTipoArq='CONSULTA' then
   begin
   if trim(pNomeArq)<>'' then
      HashIdentificacao:=pNomeArq
   else
      HashIdentificacao:='';
   Memo1.Lines.Add(ws.ConsultaDadosArquivoSNGPC(LowerCase( edt_usuario_email.Text), edt_senha.Text,Formatfloat('00000000000000', DM1.Tb_EmpCGC.Value)
                                               , HashIdentificacao));

   end
else
   begin
   if not FileExists(pNomeArq) then
      begin
      Showmessage('Arquivo '+pNomeArq+' não encontrado!');
      result:=false;
      exit;
      end;
   HashIdentificacao:= MD5Print(md5File(pNomeArq));
   try
      Memo1.Lines.Add(ws.EnviaArquivoSNGPC(LowerCase( edt_usuario_email.Text), edt_senha.Text,FileToByteArray( pnomeArq), HashIdentificacao));
      mEnviado:=true;
   finally
      end;

   end;

if mEnviado then
   begin
   fGravarNoBanco(edt_datini.Date,edt_datfin.Date,HashIdentificacao, pTipoArq,pNomeArq);
   end;



result:=true;
end;

function TFrm_Farma_SNGPC.fGravarnoBanco(pDataIni,pDatafin: TDateTime; pHash_identificacao, pTipoMov,pNomeArq: String):Boolean;
var
mQtdReg: Integer;
x_reg: Integer;
Query_Exe: TADOQuery;
begin
mQtdReg:=fPartionarArquivo(pNomeArq);
if mQtdReg>0 then
   begin
   Query_Exe:=TADOQuery.Create(nil);
   Query_Exe.Connection:=DM1_ADO.ADOConnection1;

// INICIO


   Query_Exe.Close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Delete from CADSNGPC_EVENTO  where '
                    +' SE_CODEMP=:SE_CODEMP'
                    +' and SE_DATAINI=:SE_DATAINI'
                    +' and SE_DATAFIN=:SE_DATAFIN'
                    +' and SE_TIPOARQ=:SE_TIPOARQ'
                    +' and SE_HASH_IDENTIFICACAO=:SE_HASH_IDENTIFICACAO ');
   Query_Exe.Parameters.ParamByName('SE_CODEMP').Value            :=codemp;
   Query_Exe.Parameters.ParamByName('SE_DATAINI').Value           :=pDataIni;
   Query_Exe.Parameters.ParamByName('SE_DATAFIN').Value           :=pDatafin;
   Query_Exe.Parameters.ParamByName('SE_TIPOARQ').Value           :=pTipoMov;
   Query_Exe.Parameters.ParamByName('SE_HASH_IDENTIFICACAO').Value:=pHash_identificacao;
   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      end;

// TERMINO






   Query_Exe.Close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Insert into CADSNGPC_EVENTO ('
                    +'SE_CODEMP'
                    +',SE_NOMEORIGINAL '
                    +',SE_DATA'
                    +',SE_DATAINI'
                    +',SE_DATAFIN'
                    +',SE_TIPOARQ'
                    +',SE_HASH_IDENTIFICACAO'
                    +',SE_ORDEM'
                    +',SE_ARQUIVO'
                    +') values ('
                    +' :SE_CODEMP'
                    +',:SE_NOMEORIGINAL '
                    +',:SE_DATA'
                    +',:SE_DATAINI'
                    +',:SE_DATAFIN'
                    +',:SE_TIPOARQ'
                    +',:SE_HASH_IDENTIFICACAO'
                    +',:SE_ORDEM'
                    +',:SE_ARQUIVO'
                    +')');
   for x_reg:=1 to mQtdReg do
      begin
      Query_Exe.Parameters.ParamByName('SE_CODEMP').Value            :=codemp;
      Query_Exe.Parameters.ParamByName('SE_NOMEORIGINAL').Value      :=Fnomearq_Pasta(0,pNomeArq);
      Query_Exe.Parameters.ParamByName('SE_DATA').Value              :=Now;
      Query_Exe.Parameters.ParamByName('SE_DATAINI').Value           :=pDataIni;
      Query_Exe.Parameters.ParamByName('SE_DATAFIN').Value           :=pDatafin;
      Query_Exe.Parameters.ParamByName('SE_TIPOARQ').Value           :=pTipoMov;
      Query_Exe.Parameters.ParamByName('SE_HASH_IDENTIFICACAO').Value:=pHash_identificacao;
      Query_Exe.Parameters.ParamByName('SE_ORDEM').Value             :=x_reg;
      Query_Exe.Parameters.ParamByName('SE_ARQUIVO').LoadFromFile(fRetiraExtensao(pNomeArq)+'PARTE'+IntToStr(x_reg)+'.DAT',ftBlob);
      try
         Query_Exe.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   FreeAndNil(Query_Exe);
   end;
for x_reg:=1 to mQtdReg do
   begin
   DeleteFile(fRetiraExtensao(pNomeArq)+'PARTE'+IntToStr(x_reg)+'.DAT');
   end;

end;


procedure TFrm_Farma_SNGPC.sbnMostrarSenhaClick(Sender: TObject);
begin
if edt_senha.PasswordChar='*' then
   edt_senha.PasswordChar:=#0
else
   edt_senha.PasswordChar:='*';

end;





procedure TFrm_Farma_SNGPC.bbConsultaEnviadosClick(Sender: TObject);
begin
EnviarDireto('CONSULTA',edt_chavemd5.Text);

end;

procedure TFrm_Farma_SNGPC.edt_chavemd5Change(Sender: TObject);
begin
lbl_qtdcar.Caption:=InttoStr(length(edt_chavemd5.Text));

end;

procedure TFrm_Farma_SNGPC.sbnAdicionarClick(Sender: TObject);
var
mTipoArq: String;
pArquivosCompactar:TStrings;

begin
if OpenDialog1.Execute then
   edt_nomearq.Text:=OpenDialog1.FileName;
if trim(edt_chavemd5.Text)='' then
   begin
   MessageDlg('Numero da Chave MD5 tem que ser colocada!',mtWarning,[mbOk],0);
   exit;
   end;

if FileExists(edt_nomearq.text) then
   begin
   if InputQuery('Tipo do Arquivo','Entre com o Tipo do Arquivo:',mTipoArq) then
      begin
      if fileexists(edt_nomearq.text) then
         begin
         pArquivosCompactar:=TStringList.Create;
         pArquivosCompactar.Add(edt_nomearq.text);

         fZiparArquivos(pArquivosCompactar, fretiraextensao(edt_nomearq.text)+'.zip','');
         fGravarNoBanco(edt_datini.Date,edt_datfin.Date,edt_chavemd5.Text,mTipoArq, fretiraextensao(edt_nomearq.text)+'.zip');
         freeandnil(pArquivosCompactar);
         deletefile(fretiraextensao(edt_nomearq.text)+'.zip');
         MessageDlg('Arquivo '+fretiraextensao(edt_nomearq.text)+'.zip'+' Gravado no Banco de dados!',mtWarning,[mbOk],0);
         end;
      end;
   end;
end;

procedure TFrm_Farma_SNGPC.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsEnviados then
   begin
   if not AdoSNGPCEnviados.Active then
      AdoSNGPCEnviados.Open;
   end;
end;

procedure TFrm_Farma_SNGPC.SrcNGPCEnviadosDataChange(Sender: TObject;
  Field: TField);
  var
  ado_xml: TADOQuery;
  mArqSaida: String;
  mSeq: Integer;
begin
RichEdit_texto.Clear;

if not AdoSNGPCEnviadosSE_NOMEORIGINAL.IsNull then
   begin
   ado_xml:=TADOQuery.Create(nil);
   ado_xml.Connection:=DM1_ADO.ADOConnection1;
   ado_xml.SQL.Clear;
   ado_xml.SQL.Add('SELECT SE_ARQUIVO,SE_ORDEM,SE_DATA FROM CADSNGPC_EVENTO '
                  +' where SE_DATAINI=:DATAINI and SE_DATAFIN=:DATAFIN '
                  +' and SE_HASH_IDENTIFICACAO=:HASH_IDENTIFICACAO '
                  +' order by SE_ORDEM ');
   ado_xml.Parameters.ParamByName('DATAINI').Value            := AdoSNGPCEnviadosSE_DATAINI.Value;
   ado_xml.Parameters.ParamByName('DATAFIN').Value            := AdoSNGPCEnviadosSE_DATAFIN.Value;
   ado_xml.Parameters.ParamByName('HASH_IDENTIFICACAO').Value := AdoSNGPCEnviadosSE_HASH_IDENTIFICACAO.Value;
   try
      ado_xml.Open;
   except
      end;
   if not ado_xml.isempty then
      begin
      mSeq:=0;
      mArqSaida:=ExtractFilePath(Application.ExeName);
      if mArqSaida[length(marqsaida)]<>'\' then
         mArqSaida:=mArqSaida+'\';
      mArqSaida:=mArqSaida+AdoSNGPCEnviadosSE_NOMEORIGINAL.Value+'.zip';

      While not ado_xml.Eof do
         begin
         mSeq:=mSeq+1;
         (ado_xml.FieldByName('SE_ARQUIVO') as tblobfield).SaveToFile(mArqSaida+'.'+FormatFloat('000',mSeq));
         ado_xml.Next;
         end;

      CombineFiles(mArqSaida);

      fUnZiparArquivos(marqSaida,Fnomearq_Pasta(1,mArqSaida)+'\','');
      fDeletarTExistentes(mArqSaida);
      if fileexists(fretiraextensao(marqsaida)+'.XML') then
         begin
         RichEdit_texto.Clear;
         RichEdit_texto.Lines.LoadFromFile(fretiraextensao(marqsaida)+'.XML');
         deletefile(fretiraextensao(marqsaida)+'.XML');
         end;
      end;
   freeandNil(Ado_Xml);
   end;
end;

procedure TFrm_Farma_SNGPC.sbnHomogacaoClick(Sender: TObject);
begin
if edt_usuario_email.Text='lindomar_dc@hotmail.com' then
   begin
   edt_usuario_email.Text:='valerianoaline@hotmail.com';
   edt_senha.Text:='drogaliv';
   cb_ambiente.Checked:=false;
   end
else
   begin
   edt_usuario_email.Text:='lindomar_dc@hotmail.com';
   edt_senha.Text:='12345678';
   cb_ambiente.Checked:=true;
   end;


end;

end.


{




Pesquisar


Tecnologias










Revistas 










Cursos 












Pocket videos
 Fórum
 Serviços












Publicar
 Compre Créditos
 Loja Virtual
 Assine





Bem vindo a DevMedia!



 LOGIN:     SENHA: 

Esqueci minha senha      Cadastre-se



 
 
 



Novidade: DevMedia lança o DevWare - Saiba mais! 





Fórum DevMedia

 
Navegação: Fórum HOME -Sala: NFe / PAF-ECF / Automação Comercial


Tópico: SNGPC

 
 0 0




 






Publicidade





Posts


19/6/2013
Trabalhando Com Abstração Em Php  Por: Ricardo Arrigoni
 


19/6/2013
Eliminando Vazamentos De Memória Em Java  Por: Higor Medeiros
 


19/6/2013
Gerenciamento Da Integração Do Projeto  Por: Lutieri Torres Dos Santos
 


19/6/2013
Ferramentas De Software Livre Usadas Na Criação De Algoritmos  Por: Júlia Rossberg



18/6/2013
Utilizando Stored Procedures No Entity Framework  Por: Joel Rodrigues
 


18/6/2013
Porque Tomar Decisões Utilizando Business Intelligence  Por: Luizianno Santos De Moura Lima

  



Autor

Mensagem







David
 


País: Brasil
 Estado: RO
 Cidade: Porto Velho
 Mensagens: 1
 Postado em: 1/6/2011 06:20:11 PM




Segue o incicio para criar um sistema para SNGPC, fica a aberto para quem quiser contribuir.


procedure TForm1.BitBtn1Click(Sender: TObject);
var
i,x: Word;
NCorpo,NMedicamento,NData: IXMLNode;
XMLDoc: TXMLDocument;
begin
   x:=1;
   //x:=10;
   // Cria o documento
   XMLDoc:=TXMLDocument.Create(Application);
   with XMLDoc do
   begin
      Active:=True;
      Version:='1.0';
      Encoding:='ISO-8859-1';
      AddChild('mensagemSNGPC','urn:sngpc-schema');
      with DocumentElement do
      begin
         AddChild('cabecalho');
         ChildNodes.Last.AddChild('cnpjEmissor').NodeValue:='99999999000199';
         ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue:='00000000000';
         ChildNodes.Last.AddChild('dataInicio').NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         ChildNodes.Last.AddChild('dataFim').NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
      end;
      NCorpo:=DocumentElement.AddChild('corpo');
      // *************************** MEDICAMENTO *********************************
      NMedicamento:=NCorpo.AddChild('medicamentos');
      // Loop das [Entradas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('entradaMedicamentos');
      with NData do
      begin
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
         // [tipoOperacaoNotaFiscal]
         // 1 Compra
         // 2 Transferência
         // 3 Venda
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='1';
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
         ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
         ChildNodes['medicamentoEntrada'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000750061';
         ChildNodes['medicamentoEntrada'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RV365';
         ChildNodes['medicamentoEntrada'].ChildNodes['quantidadeMedicamento'].NodeValue:='12';
         ChildNodes['dataRecebimentoMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
      end;
      end;
      // Loop das [Saidas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoVendaAoConsumidor');
         with NData do
         begin
            // [tipoReceituarioMedicamento]
            // 1 Receita de Controle Especial em 2 vias (Receita Branca)
            // 2 Notificação de Receita B (Notificação Azul)
            // 3 Notificação de Receita Especial (Notificação Branca)
            // 4 Notificação de Receita A (Notificação Amarela)
            ChildNodes['tipoReceituarioMedicamento'].NodeValue:='1';
            ChildNodes['numeroNotificacaoMedicamento'].NodeValue:='213213';
            ChildNodes['dataPrescricaoMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['prescritorMedicamento'].ChildNodes['nomePrescritor'].NodeValue:='XFULANO';
            ChildNodes['prescritorMedicamento'].ChildNodes['numeroRegistroProfissional'].NodeValue:='99999';
            // [conselhoProfissional]
            // CRM Conselho Regional de Medicina
            // CRMV Conselho Regional de Medicina Veterinária
            // CRO Conselho Regional de Odontologia
            ChildNodes['prescritorMedicamento'].ChildNodes['conselhoProfissional'].NodeValue:='CRM';
            ChildNodes['prescritorMedicamento'].ChildNodes['UFConselho'].NodeValue:='PR';
            // [usoMedicamento]
            // 1 Humano
            // 2 Veterinario
            ChildNodes['usoMedicamento'].NodeValue:='1';
            ChildNodes['compradorMedicamento'].ChildNodes['nomeComprador'].NodeValue:='XCICLANO';
            // [tipoDocumento]
            // 1 CARTEIRA DE REGISTRO PROFISSIONAL
            // 2 CARTEIRA DE IDENTIDADE . . . existem mais
            ChildNodes['compradorMedicamento'].ChildNodes['tipoDocumento'].NodeValue:='1';
            ChildNodes['compradorMedicamento'].ChildNodes['numeroDocumento'].NodeValue:='123';
            ChildNodes['compradorMedicamento'].ChildNodes['orgaoExpedidor'].NodeValue:='SSP';
            ChildNodes['compradorMedicamento'].ChildNodes['UFEmissaoDocumento'].NodeValue:='PR';
            ChildNodes['medicamentoVenda'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000430215';
            ChildNodes['medicamentoVenda'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RGJ0400';
            ChildNodes['medicamentoVenda'].ChildNodes['quantidadeMedicamento'].NodeValue:='3';
            ChildNodes['dataVendaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Transferencias] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoTransferencia');
         with NData do
         begin
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='2';
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['medicamentoTransferencia'].ChildNodes['registroMSMedicamento'].NodeValue:='1058302590029';
            ChildNodes['medicamentoTransferencia'].ChildNodes['numeroLoteMedicamento'].NodeValue:='153353';
            ChildNodes['medicamentoTransferencia'].ChildNodes['quantidadeMedicamento'].NodeValue:='2';
            ChildNodes['dataTransferenciaMedicamento'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Perdas] :: MEDICAMENTO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaMedicamentoPerda');
         with NData do
         begin
            // [motivoPerdaMedicamento]
            // 1 Furto / Roubo
            // 2 Avaria
            // 3 Vencimento
            // 4 Apreensão / Recolhimento pela Visa
            ChildNodes['motivoPerdaMedicamento'].NodeValue:='3';
            ChildNodes['medicamentoPerda'].ChildNodes['registroMSMedicamento'].NodeValue:='1010000750061';
            ChildNodes['medicamentoPerda'].ChildNodes['numeroLoteMedicamento'].NodeValue:='RV365';
            ChildNodes['medicamentoPerda'].ChildNodes['quantidadeMedicamento'].NodeValue:='2';
            ChildNodes['dataPerdaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // *************************************************************************
      // ********************************* INSUMO ********************************
      NMedicamento:=NCorpo.AddChild('insumos');
      // Loop das [Entradas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('entradaInsumos');
         with NData do
         begin
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='1';
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['codigoInsumo'].NodeValue:='0075';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['numeroLoteInsumo'].NodeValue:='788cpf';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['quantidadeInsumoEntrada'].NodeValue:='40000.0';
            ChildNodes['substanciaInsumoEntrada'].ChildNodes['tipoUnidadeEntrada'].NodeValue:='1';
            ChildNodes['dataRecebimentoInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Saidas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoVendaAoConsumidor');
         with NData do
         begin
            // [tipoReceituarioInsumo]
            // 1 Receita de Controle Especial em 2 vias (Receita Branca)
            // 2 Notificação de Receita B (Notificação Azul)
            // 3 Notificação de Receita Especial (Notificação Branca)
            // 4 Notificação de Receita A (Notificação Amarela)
            ChildNodes['tipoReceituarioInsumo'].NodeValue:='2';
            ChildNodes['numeroNotificacaoInsumo'].NodeValue:='9897651';
            ChildNodes['dataPrescricaoInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['prescritorInsumo'].ChildNodes['nomePrescritor'].NodeValue:='Dr. Antenor';
            ChildNodes['prescritorInsumo'].ChildNodes['numeroRegistroProfissional'].NodeValue:='8888';
            // [conselhoProfissional]
            // CRM Conselho Regional de Medicina
            // CRMV Conselho Regional de Medicina Veterinária
            // CRO Conselho Regional de Odontologia
            ChildNodes['prescritorInsumo'].ChildNodes['conselhoProfissional'].NodeValue:='CRM';
            ChildNodes['prescritorInsumo'].ChildNodes['UFConselho'].NodeValue:='PR';
            ChildNodes['usoInsumo'].NodeValue:='1';
            ChildNodes['compradorInsumo'].ChildNodes['nomeComprador'].NodeValue:='Manuela Danta';
            // [tipoDocumento]
            // 1 CARTEIRA DE REGISTRO PROFISSIONAL
            // 2 CARTEIRA DE IDENTIDADE . . . existem mais
            ChildNodes['compradorInsumo'].ChildNodes['tipoDocumento'].NodeValue:='2';
            ChildNodes['compradorInsumo'].ChildNodes['numeroDocumento'].NodeValue:='89786453';
            ChildNodes['compradorInsumo'].ChildNodes['orgaoExpedidor'].NodeValue:='SSP';
            ChildNodes['compradorInsumo'].ChildNodes['UFEmissaoDocumento'].NodeValue:='PR';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].NodeValue:='';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['numeroLoteInsumo'].NodeValue:='123dzp';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeInsumoPorUnidadeFarmacotecnica'].NodeValue:='5.0';
            // [unidadeDeMedidaDoInsumo]
            // 1 Miligrama
            // 2 Mililitro
            // 3 Unidade (U)
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeDeMedidaDoInsumo'].NodeValue:='1';
            // [unidadeFarmacotecnica]
            // 1 Miligrama
            // 2 Cápsula
            // 3 Comprimido
            // 4 Mililitro
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeFarmacotecnica'].NodeValue:='2';
            ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeUnidadesFarmacotecnicas'].NodeValue:='60.0';
            ChildNodes['dataVendaInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Transferencias] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoTransferencia');
         with NData do
         begin
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue:=IntToStr(i);
            // [tipoOperacaoNotaFiscal]
            // 1 Compra
            // 2 Transferência
            // 3 Venda
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue:='2';
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjOrigem'].NodeValue:='99999999000199';
            ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjDestino'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['numeroLoteInsumo'].NodeValue:='15353';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['quantidadeInsumoTransferencia'].NodeValue:='20000.0';
            ChildNodes['substanciaInsumoTransferencia'].ChildNodes['tipoUnidadeTransferencia'].NodeValue:='1';
            ChildNodes['dataTransferenciaInsumo'].NodeValue :=FormatDateTime('yyyy-mm-dd',Date);
         end;
      end;
      // Loop das [Perdas] :: INSUMO
      for i:=1 to x do
      begin
         NData:=NMedicamento.AddChild('saidaInsumoPerda');
         with NData do
         begin
            // [motivoPerdaInsumo]
            // 1 Furto / Roubo
            // 2 Avaria
            // 3 Vencimento
            // 4 Apreensão / Recolhimento pela Visa
            ChildNodes['motivoPerdaInsumo'].NodeValue:='2';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['codigoInsumo'].NodeValue:='02904';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['numeroLoteInsumo'].NodeValue:='786dpz';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['insumoCNPJFornecedor'].NodeValue:='99999999000199';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['quantidadeInsumoPerda'].NodeValue:='12345.0';
            ChildNodes['substanciaInsumoPerda'].ChildNodes['tipoUnidadePerda'].NodeValue:='1';
            ChildNodes['dataPerdaInsumo'].NodeValue:=FormatDateTime('yyyy-mm-dd',Date);
            ChildNodes['cnpjFornecedorInsumo'].NodeValue:='99999999000199';
         end;
      end;
      // *************************************************************************
      SaveToFile(ExtractFileDir(Application.ExeName)+'\Sngpc_'+FormatDateTime('dd_mm_yyyy',Date)+'.xml');


   end;
   XMLDoc.Active:=False;
   XMLDoc.Free;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   ws_TESTE:= HTTPRIO1 AS sngpcSoap; //GetsngpcSoap();
   HashIdentificacao:= MD5DigestToStr(MD5File('D:\SNGPC\TESTE.XML'));
   Edit3.Text := HashIdentificacao;
   XMLDocument1.LoadFromFile('D:\SNGPC\TESTE.XML');
   Memo1.Lines.Add(ws_TESTE.EnviaArquivoSNGPC('seu email','sua senha', XMLDocument1.XML.Text, HashIdentificacao));
   //HashIdentificacao := Guid();
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var strcomp: string;
begin
   ws_TESTE:= GetsngpcSoap();
   Memo1.Lines.Add:= (ws_TESTE.ValidarUsuario('seu email','sua senha'));
end;




 

Voltar ao topo 







rairo
 


País: Brasil
 Estado: MG
 Cidade: Belo horizonte
 Mensagens: 10
 Postado em: 14/2/2012 12:05:50 PM




Nossa, é o início mas vai me ajudar muito.
 
vlw.



 
Voltar ao topo 












DevMedia  |  Anuncie  |  Fale conosco
Hospedagem web por Porta 80 Web Hosting 

2013 - Todos os Direitos Reservados a web-03



 










}
