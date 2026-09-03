unit s_DM_Importar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, FileCtrl, S_DM_Exportar,
  Gauges, DB, RxMemDS, xmldom, XMLIntf, msxmldom, XMLDoc, ComCtrls,S_Ped_02;

type
  TFrm_DM_Importar = class(TForm)
    GroupBox2: TGroupBox;
    lbl_codven: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sb_SalvarPadrao: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    NUMLOT: TEdit;
    CB_BUSCA: TCheckBox;
    bbIniciar: TBitBtn;
    TIPO: TEdit;
    CB_TIPO: TComboBox;
    ORIGEM_INFO: TEdit;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    NOMPV: TEdit;
    NOME_ORIGEM: TEdit;
    GroupBox1: TGroupBox;
    sb_Pasta: TSpeedButton;
    NOMARQ: TEdit;
    sbnProcurar: TSpeedButton;
    Panel1: TPanel;
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    bbLimpar: TBitBtn;
    Timer_importar: TTimer;
    FileListBox1: TFileListBox;
    gb_grafico: TGroupBox;
    Gauge1: TGauge;
    mem_eventos: TRxMemoryData;
    Src_Evento: TDataSource;
    mem_eventosTIPO_EVENTO: TStringField;
    mem_eventosCHAVE_FAT: TFloatField;
    mem_eventosCHAVE_ORI: TFloatField;
    mem_eventosDESC_EVENTO: TStringField;
    XMLDocument1: TXMLDocument;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    tsEventos: TTabSheet;
    tsTextoXML: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid_eventos: TDBGrid;
    RichTextXML: TRichEdit;
    mem_erros: TRxMemoryData;
    mem_errosDESC_EVENTO: TStringField;
    mem_errosCHAVE_FAT: TFloatField;
    mem_errosCHAVE_ORI: TFloatField;
    mem_errosCODEVE: TFloatField;
    mem_eventos_lote: TRxMemoryData;
    mem_eventos_loteTIPO_EVENTO: TStringField;
    mem_eventos_loteDESC_EVENTO: TStringField;
    mem_eventos_loteCHAVE_FAT: TFloatField;
    mem_eventos_loteCHAVE_ORI: TFloatField;
    mem_eventosCODEVE: TFloatField;
    mem_eventos_loteCODEVE: TFloatField;
    TsConfiguracao: TTabSheet;
    GB_DM: TGroupBox;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    G_DM: TSpeedButton;
    MENDIP: TEdit;
    PORTA: TEdit;
    MENDIP_INTERNO: TEdit;
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer_importarTimer(Sender: TObject);
    procedure bbIniciarClick(Sender: TObject);
    procedure CB_BUSCAClick(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure sbnProcurarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure G_DMClick(Sender: TObject);
    procedure MENDIPChange(Sender: TObject);
    procedure PORTAChange(Sender: TObject);
    procedure MENDIP_INTERNOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNomeRetorno: String;

   	xmlDoc: TXMLDocument;
   	NodeNivelA, NodeNivelB, NodeNivelC, NodeNivelD: IXMLNode;

    form_dm_exportar: TFrm_DM_Exportar;
    function fLerArquivoRecebido(pNomeArq: String): Boolean;
    function fRetornoErros(pLocal: Integer;pCodigo: Integer; pNomEve: String;pChaveDM,pChaveFat: Real): Boolean;
    function fCriarEventoXML(pTipo: Integer): boolean;



  end;

var
  Frm_DM_Importar: TFrm_DM_Importar;
  mBuscando: Boolean=False;
  mPastaRecebe: String='C:\DM\RECEBE';
  f: TextFile;
  mgtot: Integer=0;
  mglid: Integer=0;
  Form_Ped_02: TFrm_Ped_02;

implementation

uses lerarq, S_DM1, Func, S_DM4, DBTables, func_excecoes;

{$R *.dfm}

procedure TFrm_DM_Importar.CB_TABPVExit(Sender: TObject);
begin
if CB_TABPV.ItemIndex<0 then
   with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.Items.Strings[CB_TABPV.ItemIndex];
if trim(CB_TABPV.Text)='' then
   exit;

if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'CV') and
   (CB_TABPV.Text<>'PO') then
   begin
   verteclado(0);
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;
if not CODPV.Focused then
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      verteclado(0);
      fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
      CODPV.SetFocus;
      CB_TABPV.SetFocus;
      end
   else
      NOMPV.Text:=DM1.Tb_PVPVNOME.AsString;   
  end;


end;

procedure TFrm_DM_Importar.CODPVExit(Sender: TObject);
begin
CODPV.Text:=fdeixanum2(CODPV.Text);

if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP')  then
   begin
   verteclado(0);
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;
if trim(codpv.Text)='' then
   begin
   CB_TABPV.Text:='';
   NOMPV.Text   :='Padrao(o que vier)';
   exit;
   end;

if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
   CODPV.SetFocus;
   CB_TABPV.SetFocus;
   end
else
   NOMPV.Text:=DM1.Tb_PVPVNOME.AsString;

end;

procedure TFrm_DM_Importar.FormCreate(Sender: TObject);
var
x: Integer;
begin
if not DirectoryExists('C:\SGE\BKPTXT') then
   CreateDir('C:\SGE\BKPTXT');

if not DirectoryExists('C:\DM\BKPREC') then
   CreateDir('C:\DM\BKPREC');
if form_dm_exportar=nil then
   Application.CreateForm(TFrm_DM_Exportar, form_dm_Exportar);
CB_TIPO.Items.Clear;
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=26) and (DM1.Tb_PargerPDESTTIP26.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=27) and (DM1.Tb_PargerPDESTTIP27.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x]);

   end;

testeform := TFrm_DM_Importar(FindGlobalComponent('form_ped_02'));
if (testeform=nil)  then
    Application.CreateForm(Tfrm_ped_02, Form_Ped_02);
Form_Ped_02.mAceita_pergunta:=false;
flparger(0,0,'1');
MENDIP.Text         :=DM1.Tb_PargerPDM_ENDIP.AsString;
MENDIP_INTERNO.Text :=DM1.Tb_PargerPDM_ENDIP_INTERNO.AsString;
PORTA.Text          :=DM1.Tb_PargerPDM_PORTA.AsString;


end;

procedure TFrm_DM_Importar.Timer_importarTimer(Sender: TObject);
var
mArqProc,mNomeArq: String;
x: Integer;
begin
if not FileExists('C:\DM\RECEBE\SDMATIVO.TXT') then
   begin
   assignfile(f,'C:\DM\RECEBE\SDMATIVO.TXT');
   rewrite(f);
   writeln(f,'ATIVADO EM '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time));
   closefile(f);
   end;


if mBuscando then
   begin
   FileListBox1.Update;
   if FileListBox1.Items.Count>0 then
      begin
      mBuscando:=false;
      for x:=0 to FileListBox1.Items.Count-1 do
         begin
         mNomeArq:=FileListBox1.Items[0];

         if not FileExists(mPastaRecebe+mNomeArq) then
            begin
            Continue;
            end;
         mArqProc:=fRetiraExtensao(mNomeArq)+'.xml';
         if not FileExists(mPastaRecebe+mArqProc) then
            begin
            Continue;
            end;
         mglid:=0;
         if not fLerArquivoRecebido(mPastaRecebe+mNomeArq) then
            Continue;
         if not gb_grafico.Visible then
            begin
            gb_grafico.Visible:=true;
            end;
         gb_grafico.Caption:='Processando o arquivo: '+mArqProc;
         gb_grafico.Update;
         AvisoSonoro(14);
{
         fimpdmProcessa(0);
         if mCriouEvento then
            begin
            CloseFile(F_Evento);
            RenameFile(mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.$$$',
            mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.RET');
            end;


         mArqProc:=form_expdm.fimpdmtestanome(mNomeArq)+'.ID';
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),false);
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\SGE\BKPTXT\'+marqproc),false);
         DeleteFile(mpastarec+mArqProc);
         mArqProc:=form_expdm.fimpdmtestanome(mNomeArq)+'.TXT';
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),false);
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\SGE\BKPTXT\'+marqproc),false);
         DeleteFile(mpastarec+mArqProc);
}
         end;
      mBuscando:=true;
      DeleteFile(mPastaRecebe+mNomeArq);
      gb_grafico.Visible:=false;
      end;
   end;

end;

procedure TFrm_DM_Importar.bbIniciarClick(Sender: TObject);
begin
CODPV.Text:=fdeixanum2(CODPV.Text);
if (trim(codpv.Text)='') or (Trim(CB_TABPV.Text)='') then
   begin
   CODPV.Text:='';
   CB_TABPV.Text:='';
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      exit;
      end;
   end;
if codusr<>1111 then
   begin
   if CB_TIPO.Text<>tab_tped[0] then
      begin
      fMensagem('Tipo de Pedido Bloqueado temporariamente!',0,['0'],0);
      exit;
      end;
   end;

if mBuscando then
   begin
   mBuscando:=False;
   bbIniciar.Caption:='Iniciar as Buscas';
   sb_Pasta.Visible :=true;
   Timer_importar.Enabled   :=false;
   if FileExists('C:\DM\RECEBE\SDMATIVO.TXT') then
      deletefile('C:\DM\RECEBE\SDMATIVO.TXT');
   end
else
   begin
   if FileExists('C:\DM\RECEBE\SDMATIVO.TXT') then
      deletefile('C:\DM\RECEBE\SDMATIVO.TXT');
   assignfile(f,'C:\DM\RECEBE\SDMATIVO.TXT');
   rewrite(f);
   writeln(f,'ATIVADO EM '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time));
   closefile(f);
   mem_eventos.Close;
   mem_eventos.Open;

   sb_Pasta.Visible:=false;
   mBuscando:=true;
   bbIniciar.Caption:='Finalizar as Buscas';
   FileListBox1.Directory:=NOMARQ.Text;
   FileListBox1.Refresh;
   Timer_importar.Enabled:=true;
   mPastaRecebe  :='C:\DM\RECEBE\';

   end;

end;

function tFrm_DM_Importar.fLerArquivoRecebido(pNomeArq: String): Boolean;
var vXMLDoc: TXMLDocument;
    NodePai,NodeItem,NodeSec,NodeTmp: IXMLNode;
mCadastros: Boolean;
mPedidos: Boolean;
mConsulta_Retorno: boolean;
pCodigo: String;
pSigla: String;
mPasta: String;
mNomeArq: String;
mLinha: String;
mNumItem: Integer;
mLote_DM: String;
mChave_DM: Real;
mCodCli_DM: Real;
mDatPed_DM: TDateTime;
begin
mBuscando:=FALSE;
pNomeArq:=uppercase(pnomearq);
mNomeArq:=Fnomearq_Pasta(0,pNomeArq);

mPasta:=Fnomearq_Pasta(1,pNomeArq);


pSigla:=copy(mNomeArq,1,2);
if fPosCaractere('_',mNomeArq)>0 then
   pCodigo:=fDeixanum(copy(mNomeArq,3,fPosCaractere('_',mNomeArq)-3))
else
   pCodigo:=fDeixanum(copy(mNomeArq,3,fPosCaractere('.',mNomeArq)-3));


mNomeRetorno:=form_dm_exportar.mpasta_envio_padrao+'\'+pSigla+pcodigo;
if not DirExists(mNomeRetorno) then
   CreateDir(mNomeRetorno);

mNomeRetorno:=mNomeRetorno+'\'+fRetiraExtensao(mNomeArq);

if pSigla='SP' then
   begin
   lbl_codven.Caption:='Supervisor';
   CODVEN.Text       :=pCodigo;
   if flqr1('SNOME','S','CADSUP','N','SCODSUP',pCodigo) then
      NOMVEN.Text:=DM1.Query1.fieldbyName('SNOME').AsString
   else
      NOMVEN.Text:='Supervisor Não Encontrado!';
   end
else if pSigla='GG' then
   begin
   lbl_codven.Caption:='Gerencia Geral';
   CODVEN.Text       :=pCodigo;
   NOMVEN.Text:='Gerencia Geral';
   end
else if pSigla='CL' then
   begin
   lbl_codven.Caption:='Cliente:';
   CODVEN.Text       :=pCodigo;
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',pCodigo) then
      NOMVEN.Text:=DM1.Query1.fieldbyName('CRAZAO').AsString
   else
      NOMVEN.Text:='Vendedor Não Encontrado!';
   end
else
   begin
   lbl_codven.Caption:='Vendedor:';
   CODVEN.Text       :=pCodigo;
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',pCodigo) then
      NOMVEN.Text:=DM1.Query1.fieldbyName('VNOME').AsString
   else
      NOMVEN.Text:='Vendedor Não Encontrado!';
   end;


mCadastros:=false;
mPedidos:=false;
mConsulta_Retorno:=false;

vXMLDoc := TXMLDocument.Create(self);

// Le conteúdo do arquivo XML informado
vXMLDoc.LoadFromFile(pNomeArq);
//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('Tabelas');

NodePai  := vXMLDoc.DocumentElement.ChildNodes.FindNode('Cadastro');

//if vXMLDoc.DocumentElement.ChildNodes.FIND
//NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('Cadastro');

if NodePai<>nil then
   mCadastros:=true
else
   begin
   NodePai  := vXMLDoc.DocumentElement.ChildNodes.FindNode('PEDIDO');
   if NodePai<>nil then
      begin
      NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('CABECALHO');
      mPedidos:=true
      end
   else
      begin
      NodePai  := vXMLDoc.DocumentElement.ChildNodes.FindNode('Consulta');
      if NodePai<>nil then
         mConsulta_Retorno:=true
      end;
   end;
// Esse nó vai ser usado no LOOP

if mCadastros then
   begin
   vXMLDoc.Free;
   form_dm_exportar.mConAutomatica:=true;
   form_dm_exportar.lbx_codsup.Clear;
   form_dm_exportar.lbx_codven.Clear;
   form_dm_exportar.lbx_codcli.Clear;
   if pSigla='SP' then
      begin
      form_dm_exportar.CODSUP.Text:=pCodigo;
      form_dm_exportar.CODSUPExit(self);
      end
   else if pSigla='CL' then
      begin
      form_dm_exportar.CODCLI.Text:=pCodigo;
      form_dm_exportar.CODCLIExit(self);
      end
   else if pSigla<>'GG' then
      begin
      form_dm_exportar.CODVEN.Text:=pCodigo;
      form_dm_exportar.CODVENExit(self);
      end;

   form_dm_exportar.FGerarExportacao(0);
   mBuscando:=true;
   end
else if mPedidos then
   begin
   mem_erros.Close;
   form_dm_exportar.mConAutomatica:=true;
   RichTextXML.Lines.Clear;

   NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
   NodeSec.ChildNodes.First;
   repeat
      Form_Ped_02.mAceita_pergunta:=false;
      Form_Ped_02.mped02_ori:='frm_dm_importar';
//      Form_Ped_02.Show;
      Form_Ped_02.btn_incluir.Click;
      flcadpar01(0,codemp,'1');
      Form_Ped_02.mPed_Par_FatMz:=DM4.Tb_Par01PFATMZ.AsInteger=1;
      Form_Ped_02.mPed_Par_FatMz_LocMov     :=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
      Form_Ped_02.mPed_Par_Avisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;
      Form_Ped_02.mPd_Oper_Ped:=0;
      Form_Ped_02.mpd_chave:=0;
      Form_Ped_02.mpd_ordem:=0;
      Form_Ped_02.edt_submod.Text:=NodeSec.ChildNodes['Prioridade'].Text;
      Form_Ped_02.mPed_SubMod:=fSonumero(Form_Ped_02.edt_submod.Text);
      Form_Ped_02.mlib_mPDescLib    :=0;
      Form_Ped_02.mlib_mPDescLib_Usr:=0;
      Form_Ped_02.btn_incluir.Enabled      :=False;
      Form_Ped_02.btn_localizar.Enabled    :=False;
      Form_Ped_02.btn_alterar.Enabled      :=False;
      Form_Ped_02.btn_excluir.Enabled      :=False;
      Form_Ped_02.btn_gravar.Enabled       :=True;
      Form_Ped_02.btn_imprimir.Enabled     :=False;
      Form_Ped_02.btn_nota.Enabled         :=False;
      Form_Ped_02.btn_calcular.Enabled     :=True;
      Form_Ped_02.btn_faturar.Enabled      :=False;
      Form_Ped_02.pgc_capapedido.ActivePage:=Form_Ped_02.tbs_principal;
      Form_Ped_02.pgc_capapedido.Enabled   :=true;
      Form_Ped_02.tbs_mercadoria.Enabled   :=True;
      Form_Ped_02.tbs_principal.Enabled    :=True;

      //pareiaqui


      Form_Ped_02.Ts_Servico.Enabled    :=True;
      Form_Ped_02.tbs_outrosdados.Enabled      :=True;
      Form_Ped_02.tbs_situacao.Enabled         :=True;
      Form_Ped_02.cb_tipopedido.Enabled        :=True;
      Form_Ped_02.CODCON.Text    :='';
      Form_Ped_02.DATCON.Text :='/  /';
      Form_Ped_02.HORCON.Text :='';
      Form_Ped_02.edt_codtra.Text:='';
      Form_Ped_02.edt_nometrans.Text:='';
      Form_Ped_02.edt_qtdvol.Text:='0';
      Form_Ped_02.edt_pesol.Text :='0';
      Form_Ped_02.edt_pesob.Text :='0';
      Form_Ped_02.edt_especie.Text       :='';
      Form_Ped_02.RGFRETEPC.ItemIndex:=0;
      Form_Ped_02.edt_valorfrete.Text        :='0';
      Form_Ped_02.edt_ufpv.Text          :='';
      Form_Ped_02.edt_placav.Text        :='';
      Form_Ped_02.edt_desconto01.Text        :='0';
      Form_Ped_02.edt_desconto02.Text        :='0';
      Form_Ped_02.edt_codvendedor02.Text:='';
      Form_Ped_02.edt_codvendedor03.Text:='';
      Form_Ped_02.CB_ORIGEM.ItemIndex:=0;
      Form_Ped_02.CODTLV.Text:='';
      Form_Ped_02.cb_etivol.Checked :=False;
      Form_Ped_02.edt_codsep.Text:='';
      Form_Ped_02.edt_datasep.Text:='/  /';
      Form_Ped_02.edt_horasep.Text:='';
      Form_Ped_02.CODEMB.Text:='';
      Form_Ped_02.edt_numcf.Text:='';
      Form_Ped_02.LOTEDM.Text   :=NodeSec.ChildNodes['Lote_DM'].Text;
      Form_Ped_02.NPEDORI.Text  :=NodeSec.ChildNodes['Chave'].Text;
      Form_Ped_02.edt_codcliente.Text:=NodeSec.ChildNodes['CodCli'].Text;
      if fSonumero(Form_Ped_02.edt_codcliente.Text)=0 then
         begin
         if flqr1('CCODCLI','C','CADCLI','N','CCNPJ',NodeSec.ChildNodes['Cnpj_Cpf'].Text) then
            Form_Ped_02.edt_codcliente.Text:=DM1.Query1.fieldbyName('CCODCLI').AsString;
         end;
      if fSonumero(Form_Ped_02.edt_codcliente.Text)=0 then
         begin
         fRetornoErros(0,02,'Pedido: '+NodeSec.ChildNodes['Chave'].Text+' Cód. Cliente: '
         +NodeSec.ChildNodes['CodCli'].Text+' Cliente não Encontrado!'
         ,fSonumero(NodeSec.ChildNodes['Chave'].Text),0);
         NodeSec := NodeSec.NextSibling;
         Continue;
         end;

      if not flcadcli(1,0,fdeixanum(Form_Ped_02.edt_codcliente.Text)) then
         begin
         fRetornoErros(0,02,'Pedido: '+NodeSec.ChildNodes['Chave'].Text+' Cód. Cliente: '
         +NodeSec.ChildNodes['CodCli'].Text+' Cliente não Encontrado!'
         ,fSonumero(NodeSec.ChildNodes['Chave'].Text),0);
         NodeSec := NodeSec.NextSibling;
         Continue;
         end;
      flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
      Form_Ped_02.edt_codvenda.Text   :=NodeSec.ChildNodes['CodPv'].Text;
      Form_Ped_02.cb_tabelavenda.Text :=NodeSec.ChildNodes['TabPv'].Text;
      if not flcadpv(1,0,Form_Ped_02.cb_tabelavenda.Text,Form_Ped_02.edt_codvenda.Text) then
         begin
         DM1.Query1.close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.add('SELECT PVCODTIP,PVCODPV FROM CADPV '
                           +' ORDER BY PVCODTIP DESC,PVCODPV ');
         DM1.Query1.open;
         Form_Ped_02.edt_codvenda.Text   :=DM1.Query1.fieldbyName('PVCODTIP').AsString;
         Form_Ped_02.cb_tabelavenda.Text :=DM1.Query1.fieldbyName('PVCODPV').AsString;
         flcadpv(1,0,Form_Ped_02.cb_tabelavenda.Text,Form_Ped_02.edt_codvenda.Text);
         end;
      Form_Ped_02.edt_chave.Text :='';
      Form_Ped_02.edt_codcliente.Text:=DM1.Tb_CliCCODCLI.AsString;
      Form_Ped_02.edt_nomecliente.Text:=DM1.Tb_CliCRAZAO.Value;
      Form_Ped_02.edt_datapedido.Text :=FormatDatetime(fdt2,date);
   //   lindomar atualizar
      Form_Ped_02.edt_pedori1.Text    :='Chave Dispositivo Movel: '+NodeSec.ChildNodes['Chave'].Text;
      if trim(NodeSec.ChildNodes['NumPed_Ori'].Text)<>'' then
         Form_Ped_02.edt_pedori2.Text    :='Chave de Origem: '+NodeSec.ChildNodes['NumPed_Ori'].Text
      else
         Form_Ped_02.edt_pedori2.Text    :='';

      Form_Ped_02.edt_datanf.Text:='/  /';
      Form_Ped_02.edt_numnf.Text  :='';
      Form_Ped_02.edt_serienf.Text:='';
      Form_Ped_02.edt_subser.Text :='';
      Form_Ped_02.edt_pcomis.Text :='';
      Form_Ped_02.edt_modelo.Text :='';
      Form_Ped_02.edt_obs1.Text   :='';
      Form_Ped_02.edt_obs2.Text   :=copy(NodeSec.ChildNodes['Observacao'].Text,1,60);
      Form_Ped_02.edt_obs3.Text   :='';
      Form_Ped_02.mpd_status                 :=0;
      Form_Ped_02.mpd_ptipop                 :=0;
      with Form_Ped_02.cb_tipo2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
      with Form_Ped_02.cb_tipopedido do ItemIndex:=Items.IndexOf(Form_Ped_02.CB_TIPO2.text);
      Form_Ped_02.mpd_ptipop:=Form_Ped_02.CB_TIPO2.ItemIndex;

      Form_Ped_02.edt_codigodigitador.Text     :=IntToStr(codusr);
      flcadusr(1,0,Form_Ped_02.edt_codigodigitador.Text);
      Form_Ped_02.edt_nomedigitador.Text       :=DM4.Tb_UsrNOMUSR.Value;
      Form_Ped_02.edt_horadigitacao.Text       :=FormatDatetime('hh:nn:ss',time);
      Form_Ped_02.DTMOD.Text  :='';
      Form_Ped_02.NOMUSRM.Text:='';
      Form_Ped_02.CB_CONF.Checked:=False;
      Form_Ped_02.edt_nomevenda.Text    :=DM1.Tb_PVPVNOME.Value;
      Form_Ped_02.edt_codbanco.Text        :='';
      Form_Ped_02.edt_codbanco2.Text        :='';

      if valint(NodeSec.ChildNodes['CodBco'].Text)>0 then
         begin

         Form_Ped_02.edt_codbanco.Text         :=NodeSec.ChildNodes['CodBco'].Text;
         Form_Ped_02.edt_codbanco2.Text        :=NodeSec.ChildNodes['CodBco'].Text;
         if flcadbco(1,0,0,Form_Ped_02.edt_codbanco.Text) then
            begin
            Form_Ped_02.edt_nomebanco.Text     :=DM1.Tb_BcoBCBANCO.AsString;
            end;

         end;

      Form_Ped_02.edt_codvendedor.Text:=NodeSec.ChildNodes['CodVen'].Text;

      Form_Ped_02.edt_nomevendedor2.Text:='';
      Form_Ped_02.edt_nomevendedor3.Text:='';
      flcadven(1,0,Form_Ped_02.edt_codvendedor.Text);
      Form_Ped_02.edt_nomevendedor.Text:=DM1.Tb_VenVNOME.Value;

      Form_Ped_02.NOMTLV.Text:='';


      Form_Ped_02.edt_nomesep.Text:='';

      Form_Ped_02.edt_datasep.Text:='/  /';
      Form_Ped_02.edt_horasep.Text:='';
      Form_Ped_02.CODEMB.Text:='';
      Form_Ped_02.NOMEMB.Text:='';
      Form_Ped_02.edt_numcf.Text:='0';
      Form_Ped_02.QryItem_Nota.Close;
      Form_Ped_02.QryItem_Nota.Open;
      Form_Ped_02.QryServico_Nota.Close;
      Form_Ped_02.QryServico_Nota.Open;


      Form_Ped_02.cb_tipopreco.ItemIndex:=2;
      Form_Ped_02.cb_tipopedidoExit(self);
      Form_Ped_02.edt_valordesconto.Text        :=FormatFloat(mcasas, 0);

      Form_Ped_02.mPd_Oper_Ped:=0;


      NodeItem := NodeSec.ChildNodes.FindNode('ITEM');
      if NodeItem=nil then
         begin
         fRetornoErros(0,03,'Pedido: '+NodeSec.ChildNodes['Chave'].Text+' Não Foi Encontrado Nenhum Ítem'
         ,fSonumero(NodeSec.ChildNodes['Chave'].Text),0 );
         NodeSec := NodeSec.NextSibling;
         Continue;
         end;

    // Posiciona o primeiro elemento encontrado
    // referencia a tag <prod> dentro de <det>
       NodeTmp  := NodeItem;
     // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
        // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
       NodeTmp.ChildNodes.First;
       mNumItem:=0;

       repeat
          mNumItem:=mNumItem+1;;

          Form_Ped_02.edt_codproduto.Text    := NodeTmp.ChildNodes['CodPro'].text;
          Form_Ped_02.edt_lote.Text          := '';
          Form_Ped_02.edt_precounitario.Value:= valFloat(mudapv(NodeTmp.ChildNodes['PcoUni'].text));
          Form_Ped_02.edt_quantidade.Value   := valFloat(mudapv(NodeTmp.ChildNodes['Qtd'].text));
          Form_Ped_02.edt_desc1.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc01'].text));
          Form_Ped_02.edt_desc2.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc02'].text));
          Form_Ped_02.edt_desc3.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc03'].text));
          Form_Ped_02.edt_ambiente.Text      := '';
          Form_Ped_02.edt_complemento.Text   := '';
          Form_Ped_02.edt_descfin.Value      := valFloat(mudapv(NodeTmp.ChildNodes['pDescFin'].text));
          Form_Ped_02.edt_comissao.value     := 0;
          Form_Ped_02.edt_codprodutoExit(Self);
          Form_Ped_02.edt_quantidadeExit(self);
          if Form_Ped_02.edt_quantidade.Value<=0 then
             begin
             Form_Ped_02.edt_codproduto.Text    := '';
             Form_Ped_02.edt_lote.Text          := '';
             Form_Ped_02.edt_dtvcto.Text        :='/  /';
             Form_Ped_02.edt_precounitario.Text := '';
             Form_Ped_02.edt_quantidade.Text    := '';
             Form_Ped_02.edt_desc1.Text         := '';
             Form_Ped_02.edt_desc2.Text         := '';
             Form_Ped_02.edt_desc3.Text         := '';
             Form_Ped_02.edt_descfin.Text       := '';
             Form_Ped_02.edt_comissao.Text      := '';
             Form_Ped_02.edt_descricao.Text     := '';
             Form_Ped_02.edt_marca.Text         := '';
             Form_Ped_02.edt_und.Text           := '';
             NodeTmp := NodeTmp.NextSibling;
             Continue;
             end;
          Form_Ped_02.edt_precounitario.Value:= valFloat(mudapv(NodeTmp.ChildNodes['PcoUni'].text));
          Form_Ped_02.edt_quantidade.Value   := valFloat(mudapv(NodeTmp.ChildNodes['Qtd'].text));
          Form_Ped_02.edt_desc1.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc01'].text));
          Form_Ped_02.edt_desc2.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc02'].text));
          Form_Ped_02.edt_desc3.Value        := valFloat(mudapv(NodeTmp.ChildNodes['pDesc03'].text));
          Form_Ped_02.edt_precounitarioExit(self);
          Form_Ped_02.bbGravarItemClick(Self);
          NodeTmp := NodeTmp.NextSibling;
       until
          NodeTmp = nil;
           // vai para a proxima ocorrência <det>
       Form_Ped_02.edt_desconto01.Text:=mudapv(NodeSec.ChildNodes['pDesc01'].text);
       Form_Ped_02.edt_desconto02.Text:=mudapv(NodeSec.ChildNodes['pDesc02'].text);
       Form_Ped_02.btn_calcular.Click;
       if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
          Form_Ped_02.fGerarFormas_ped02(iif(Form_Ped_02.cb_tabelavenda.Text='PP',1,0),0);
      Form_Ped_02.fPd_GravarItens(1);
      Form_Ped_02.btn_gravar.Enabled:=false;
      Form_Ped_02.mPd_Incluiu_Pedido:=false;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_TEMP WHERE ');
      DM1.query1.SQL.add('  P2TERM=:P2TERM');
      DM1.query1.SQL.add(' and P2DATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
         end;
      Form_Ped_02.QryItem_Nota.Close;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP01_TEMP WHERE ');
      DM1.query1.SQL.add('  P1TERM=:P1TERM');
      DM1.query1.SQL.add(' and P1DATHOR=:P1DATHOR');
      DM1.Query1.ParamByName('P1TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P1DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02S_TEMP WHERE ');
      DM1.query1.SQL.add('  P2STERM=:P2TERM');
      DM1.query1.SQL.add(' and P2SDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
      DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
      DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
      DM1.Query1.ParamByName('P2MP_TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16340,'Pedido_02_FatEmp','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADPEN_TEMP WHERE ');
      DM1.query1.SQL.add('  PETERM=:P2TERM');
      DM1.query1.SQL.add(' and PEDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP01D_TEMP WHERE ');
      DM1.query1.SQL.add('  P1DTERM=:P2TERM');
      DM1.query1.SQL.add(' and P1DDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
      DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
      DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
      DM1.Query1.ParamByName('P2MP_TERM').AsString   := Form_Ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Form_Ped_02.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,19474,'Pedido_02_FatEmp','CADP01');
         end;
      Form_Ped_02.mped02_ori:='';

      fRetornoErros(0,01,'Pedido Recepcionado Chave DM: '+ NodeSec.ChildNodes['Chave'].Text
      +' Chave Gestao '+FloatTostr(Form_Ped_02.mpd_chave),
      fSonumero(NodeSec.ChildNodes['Chave'].Text),
      Form_Ped_02.mpd_chave);
      NodeSec  := NodeSec.NextSibling;
   until
      NodeSec = nil;
   if (mem_eventos.Active) and (not mem_eventos.IsEmpty) then
      begin
      fCriarEventoXML(0);
      end;
   end
else if mConsulta_Retorno then
   begin
   NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
   NodeSec.ChildNodes.First;
   mChave_DM :=fSonumero(NodeSec.ChildNodes['Chave_DM'].Text);
   mCodCli_DM:=fSonumero(NodeSec.ChildNodes['CodCliente'].Text);
   mLote_DM  :=fdeixanum(NodeSec.ChildNodes['Lote_DM'].Text);
   mDatPed_DM:=StrToDate(copy(NodeSec.ChildNodes['DataPed'].Text,5,2)
                        +'/'+copy(NodeSec.ChildNodes['DataPed'].Text,3,2)
                        +'/'+copy(NodeSec.ChildNodes['DataPed'].Text,5,2));
   if flqr1('CCODCLI','C','CADCLI','N','CCODCLI',FloatToStr(mCodCli_DM)) then
      mCodCli_DM:=DM1.query1.fieldbyName('CCODCLI').AsFloat
   else
      begin
      if flqr1('CCODCLI','C','CADCLI','N','CCNPJ',FloatToStr(mCodCli_DM)) then
         mCodCli_DM:=DM1.query1.fieldbyName('CCODCLI').AsFloat
      else
         begin
         if flqr1('CCODCLI','C','CADCLI','N','CPF',FloatToStr(mCodCli_DM)) then
            mCodCli_DM:=DM1.query1.fieldbyName('CCODCLI').AsFloat
         else
            mCodCli_DM:=0;
         end;
      end;
   if mCodCli_DM=0 then
      begin
      fRetornoErros(0,02,'Pedido: '+NodeSec.ChildNodes['Chave_DM'].Text+' Cód. Cliente: '
      +NodeSec.ChildNodes['CodCliente'].Text+' Cliente não Encontrado!'
      ,0,0);
      end
   else
      begin
      DM1.Query2.close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.sql.Add('Select P1CHAVE,P1ORDEM,P1DATAP,P1LOTEDM,P1NPEDORI '
                        +' from CADP01 where '
                        +'      P1NPEDORI=0'+FloatToStr(mChave_DM)
                        +' and P1CODCLI='+FloatToStr(mCodCli_DM)
                        +fla_EmpBaixaAlta(0,'CADPED',' and ',codemp,'P1CODEMP',' ')
                        +' and P1DATAP='+chr(39)+FormatDatetime(fdt2, mDatPed_DM)+chr(39));
      try
         DM1.Query2.Open;
      except
         DM1.Query2.sql.savetofile('c:\sql01.txt');
         end;
      if DM1.Query2.IsEmpty then
         begin
         DM1.Query2.close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.sql.Add('Select P1CHAVE,P1ORDEM,P1DATAP,P1LOTEDM,P1NPEDORI '
                            +' from CADP01 where '
                            +'      P1NPEDORI=0'+FloatToStr(mChave_DM)
                            +' and P1CODCLI='+FloatToStr(mCodCli_DM)
                            +fla_EmpBaixaAlta(0,'CADPED',' and ',codemp,'P1CODEMP',' ')
                            +' and P1DATAP>='+chr(39)+FormatDatetime(fdt2, mDatPed_DM-32)+chr(39));
         try
            DM1.Query2.Open;
         except
            DM1.Query2.sql.savetofile('c:\sql01.txt');
            end;
         end;
      if DM1.Query2.IsEmpty then
         begin
         fRetornoErros(0,02,'Pedido: '+NodeSec.ChildNodes['Chave_DM'].Text+' Cód. Cliente: '
         +NodeSec.ChildNodes['CodCliente'].Text+' Cliente não Encontrado!'
         ,fSonumero(NodeSec.ChildNodes['Chave'].Text),0);
         end
      else
         begin
         While not DM1.Query2.Eof do
            begin
            fRetornoErros(0,02,'Pedido: '+DM1.Query2.fieldbyName('P1NPEDORI').AsString+' Processado Chave: '+DM1.Query2.fieldbyName('P1NPEDORI').AsString
            ,DM1.Query2.fieldbyName('P1NPEDORI').AsFloat,DM1.Query2.fieldbyName('P1CHAVE').AsFloat);
            DM1.Query2.Next;
            end;
         end;
      end;
   if (mem_eventos.Active) and (not mem_eventos.IsEmpty) then
      begin
      fCriarEventoXML(0);
      end;
   end;
result:=true;
end;

function tFrm_DM_Importar.fCriarEventoXML(pTipo: Integer): boolean;
var
x: Integer;
mExisteBloq: Boolean;
mCabPed: Boolean;
begin



xmlDoc := TXMLDocument.Create(nil);
Try
With xmlDoc do
   begin
   Active := True;
   Version := '1.0';
   Encoding := 'utf-8';
   AddChild('EVENTOS');
//   DocumentElement.Attributes['xmlns:tc'] :=
//      'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd';
   NodeNivelA := DocumentElement;
   end;
except
   end;
mCabPed:=false;
if ptipo=0 then
   begin
   mem_eventos.First;
   While not mem_eventos.Eof do
      begin
      if mem_eventosCHAVE_FAT.AsFloat<=0 then
         begin
         mem_eventos.Next;
         Continue;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.sql.add('Select P1DATAP,CCODCLI,CCNPJ,CCPF,P1CODVEN, '
                        +'      P1TABPV,P1CODPV, P1BANCO,P1FRETEPC,P1DESC01 '
                        +'    ,P1DESC02,P1VLRDES '
                        +'    ,P1SUBMOD,P1OBS1,P1OBS2,P1OBS3,P1BLOQPEND '
                        +'    ,P1TOTALL,P1ORIGEM,P1LOTEDM,P1NPEDORI,P1NUMNF,P1DATANF,P1CHAVE,P1LOTSEQ,P1CODEMP '
                        +'    ,P1CODBLOQ,P1STATUS,P1TIPO'
                        +'    FROM CADP01,CADCLI '
                        +'    WHERE CCODCLI=P1CODCLI '
                        +'    AND P1CHAVE=0'+mem_eventosCHAVE_FAT.AsString
                        +fla_EmpBaixaAlta(0,'CADPED',' and ',codemp,'P1CODEMP',' ')
                        +fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',' '));
      try
         DM1.Query2.Open;
      except
         ex_erroSql_Novo(DM1.Query2,918,'S_DM_IMPORTAR','CADP01,CADCLI');
         mem_eventos.Next;
         Continue;
         end;

      DM1.Query2.sql.savetofile('c:\sql.txt');
      if DM1.Query2.IsEmpty then
         begin
         fRetornoErros(0,99999,'Pedido Não Faturado Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
         mem_eventos.Next;
         Continue;
         end;

      if DM1.Query2.FieldByName('P1STATUS').AsInteger>8 then
         begin
         fRetornoErros(1,99998,'Pedido Faturado e Excluido Posteriormente. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
         mem_eventos.Next;
         Continue;
         end;

      if DM1.Query2.FieldByName('P1TIPO').AsInteger<=0 then
         begin
         fRetornoErros(1,88888,'Aguardando Faturamento Chave do DM: '+mem_eventosCHAVE_ORI.AsString
         +' Chave do Orcamento: '+DM1.Query2.FieldbyName('P1CHAVE').AsString,
         mem_eventosCHAVE_ORI.AsFloat,DM1.Query2.FieldbyName('P1CHAVE').AsFloat);
         mem_eventos.Next;
         Continue;
         end;

      if length(DM1.Query2.FieldByName('P1CODBLOQ').AsString)>0 then
         x:=1
      else
         x:=1;
      mExisteBloq:=false;
      While x<length(DM1.Query2.FieldbyName('P1CODBLOQ').AsString) do
         begin
         mcinst2:=copy(DM1.Query2.FieldbyName('P1CODBLOQ').AsString,x,2);

         if fAdicionaRemoveTexto(2,DM1.Query2.FieldbyName('P1CODBLOQ_LIB').AsString,mcinst2)='' then
            begin
            mExisteBloq:=true;

            if ValInt(mcinst2)=1 then
               begin
               fRetornoErros(1,00001,'Limite de Credito Esgotado. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=2 then
               begin
               fRetornoErros(1,00002,'Cliente com Titulos Vencidos. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=3 then
               begin
               fRetornoErros(1,00003,'Cliente com Cheque Devolvido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=4 then
               begin
               fRetornoErros(1,00004,'Cliente com Titulos Protestados. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=5 then
               begin
               fRetornoErros(1,00005,'Cliente com Restricoes no Cadastros Status=7. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=6 then
               begin
               fRetornoErros(1,00006,'Registro Vigilancia Estadual Invalido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=7 then
               begin
               fRetornoErros(1,00007,'Registro Vigilancia Estadual Vencido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=8 then
               begin
               fRetornoErros(1,00008,'Registro da ANVISA Invalido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=9 then
               begin
               fRetornoErros(1,00009,'Registro da ANVISA Vencido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=10 then
               begin
               fRetornoErros(1,00010,'Prazo Maior que Permitido. Chave do DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=11 then
               begin
               fRetornoErros(1,00011,'Cliente Inativo Status=9. Chave DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=20 then
               begin
               fRetornoErros(1,00020,'Desconto Maior que Permitido. Chave DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else if ValInt(mcinst2)=30 then
               begin
               fRetornoErros(1,00030,'cfop com problemas. Chave DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            else
               begin
               fRetornoErros(1,00040,'Outras restriçoes. Chave DM: '+mem_eventosCHAVE_ORI.AsString,mem_eventosCHAVE_ORI.AsFloat,0);
               end
            end;
         x:=x+3;
         end;

      if mExisteBloq then
         begin
         mem_eventos.Next;
         Continue;
         end;

      if not mCabPed then
         NodeNivelb:=NodeNivela.AddChild('PEDIDOS');
      mCabPed:=true;

      While not DM1.Query2.Eof do
         begin
         NodeNivelc:=NodeNivelb.AddChild('CABECALHO');
         NodeNivelC.AddChild('Chave_DM').NodeValue  :=DM1.Query2.fieldbyName('P1NPEDORI').AsString;
         NodeNivelC.AddChild('Chave_Gestao').NodeValue :=DM1.Query2.fieldbyName('P1CHAVE').AsString;
         NodeNivelC.AddChild('DatPed').NodeValue    :=FormatDateTime('dd/mm/yyyy', DM1.Query2.fieldbyName('P1DATAP').AsDateTime);
         NodeNivelC.AddChild('CodCli').NodeValue    :=DM1.Query2.fieldbyName('CCODCLI').AsString;
         if DM1.Query2.FieldByName('CCNPJ').AsFloat>0 then
            NodeNivelC.AddChild('Cnpj_Cpf').NodeValue :=insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14)
         else
            NodeNivelC.AddChild('Cnpj_Cpf').NodeValue :=insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',11);
         NodeNivelC.AddChild('CodVen').NodeValue    :=DM1.Query2.fieldbyName('P1CODVEN').AsString;
         NodeNivelC.AddChild('TabPv').NodeValue     :=DM1.Query2.fieldbyName('P1TABPV').AsString;
         NodeNivelC.AddChild('CodPv').NodeValue     :=DM1.Query2.fieldbyName('P1CODPV').AsString;
         NodeNivelC.AddChild('CodBco').NodeValue    :=DM1.Query2.fieldbyName('P1BANCO').AsString;
         NodeNivelC.AddChild('Frete').NodeValue     :=DM1.Query2.fieldbyName('P1FRETEPC').AsString;

         NodeNivelC.AddChild('pDesc01').NodeValue   :=DM1.Query2.fieldbyName('P1DESC01').AsString;
         NodeNivelC.AddChild('pDesc02').NodeValue   :=DM1.Query2.fieldbyName('P1DESC02').AsString;
         NodeNivelC.AddChild('pDesc03').NodeValue   :='0';
         if DM1.Query2.fieldbyName('P1CODEMP').AsInteger>99 then
            NodeNivelC.AddChild('Prioridade').NodeValue :='100'
         else
            NodeNivelC.AddChild('Prioridade').NodeValue :='0';
         NodeNivelC.AddChild('Observacao').NodeValue:=DM1.Query2.fieldbyName('P1OBS1').AsString+' '
                 +DM1.Query2.fieldbyName('P1OBS2').AsString+' '
                 +DM1.Query2.fieldbyName('P1OBS3').AsString;

         NodeNivelC.AddChild('TotLiq').NodeValue     :=Mudavp(FormatFloat(mcasas, DM1.Query2.fieldbyName('P1TOTALL').AsFloat));
         NodeNivelC.AddChild('NumPed_Ori').NodeValue :=Mudavp(FormatFloat(mcasas, DM1.Query2.fieldbyName('P1NPEDORI').AsFloat));
         NodeNivelC.AddChild('NumNF').NodeValue      :=DM1.Query2.fieldbyName('P1NUMNF').AsString;
         if DM1.Query2.fieldbyName('P1DATANF').AsDateTime<=pDatanula then
            NodeNivelC.AddChild('DataNF').NodeValue     :=''
         else
            NodeNivelC.AddChild('DataNF').NodeValue     :=FormatDateTime('dd/mm/yyyy', DM1.Query2.fieldbyName('P1DATANF').AsDateTime);
// VENCIMENTOS

         if DM1.Query2.FieldByName('P1STATUS').AsInteger>1 then
            begin
            DM1.Query3.Close;
            DM1.Query3.SQL.Clear;
            DM1.Query3.sql.add('SELECT CRNPED,CRDTVCTO,CRVALOR,CRDESCF,CRDTDESCF,CRNUMERO,CRDESD '
                           +' ,CRJUROS,CRMULTA,CRDESCD '
                           +' FROM CADDAR '
                           +' CRNPED=0'+mem_eventosCHAVE_FAT.AsString
                           +' and CRLOTSEQ_CP=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                           +' and CRCODEMP=0'+DM1.Query2.fieldbyName('P1CODEMP').AsString);
            try
               DM1.Query3.Open;
            except
               ex_erroSql_Novo(DM1.Query2,973,'S_DM_IMPORTAR','CADP02');
               end;
            While not DM1.Query3.Eof do
               begin
               NodeNivelD:=NodeNivelC.AddChild('TITULOS');
               NodeNivelD.AddChild('Chave_DM').NodeValue  :=DM1.Query2.fieldbyName('P1NPEDORI').AsString;
               NodeNivelD.AddChild('Chave_Gestao').NodeValue :=DM1.Query2.fieldbyName('P1CHAVE').AsString;
               NodeNivelD.AddChild('NumDup').NodeValue    :=FormatFloat('000000', DM1.Query3.fieldbyName('CRNUMERO').AsFloat)
                                                           +'-'+DM1.Query3.fieldbyName('CRDESD').AsString;
               NodeNivelD.AddChild('DatVen').NodeValue    :=Formatdatetime(fdt2, DM1.Query2.fieldbyName('CRDTVCTO').AsDateTime);
               NodeNivelD.AddChild('Valor').NodeValue     :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('CRVALOR').AsFloat));
               NodeNivelD.AddChild('Desc_Dia').NodeValue     :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('CRDESCD').AsFloat));
               NodeNivelD.AddChild('Desc_Fin').NodeValue     :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('CRDESCF').AsFloat));
               if DM1.Query3.fieldbyName('CRDTDESCF').AsDateTime>pdatanula then
                  NodeNivelD.AddChild('Data_Lim_DesFin').NodeValue  :=Formatdatetime(fdt2, DM1.Query2.fieldbyName('CRDTDESCF').AsDateTime)
               else
                  NodeNivelD.AddChild('Data_Lim_DesFin').NodeValue  :='';
               NodeNivelD.AddChild('JurDia').NodeValue     :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('CRJUROS').AsFloat));
               NodeNivelD.AddChild('Multa').NodeValue      :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('CRMULTA').AsFloat));
               DM1.Query3.next;
               end;
            end;

// ITENS



         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.sql.add('Select P2CHAVE,P2CODPRO,P2QTD,P2PRECO,P2DESC1,P2DESC2,P2DESC3 '
                           +',P2PDESCF,P2PROMOCAO, P2DESCPR FROM CADP02 '
                           +'    WHERE  P2CHAVE=0'+mem_eventosCHAVE_FAT.AsString
                           +' and P2LOTSEQ=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                           +' and P2CODEMP=0'+DM1.Query2.fieldbyName('P1CODEMP').AsString);
         try
            DM1.Query3.Open;
         except
            ex_erroSql_Novo(DM1.Query2,973,'S_DM_IMPORTAR','CADP02');
            Continue;
            end;
         While not DM1.Query3.Eof do
            begin
            NodeNivelD:=NodeNivelC.AddChild('ITENS');
            NodeNivelD.AddChild('Chave_DM').NodeValue  :=DM1.Query2.fieldbyName('P1NPEDORI').AsString;
            NodeNivelD.AddChild('Chave_Gestao').NodeValue :=DM1.Query2.fieldbyName('P1CHAVE').AsString;
            NodeNivelD.AddChild('CodPro').NodeValue :=DM1.Query3.fieldbyName('P2CODPRO').AsString;
            NodeNivelD.AddChild('Qtd').NodeValue    :=mudaVp(FormatFloat(mcasas, DM1.Query3.fieldbyName('P2QTD').AsFloat));
            NodeNivelD.AddChild('PcoUni').NodeValue :=MudaVP(FormatFloat(mcasas, DM1.Query3.fieldbyName('P2PRECO').AsFloat));
            NodeNivelD.AddChild('pDesc01').NodeValue:=MudaVP(FormatFloat(mcasas, DM1.Query3.fieldbyName('P2DESC1').AsFloat));
            NodeNivelD.AddChild('pDesc02').NodeValue:=MudaVP(FormatFloat(mcasas, DM1.Query3.fieldbyName('P2DESC2').AsFloat));
            NodeNivelD.AddChild('pDesc03').NodeValue:=MudaVP(FormatFloat(mcasas, DM1.Query3.fieldbyName('P2DESC3').AsFloat));
            NodeNivelD.AddChild('pDescFin').NodeValue:='0';
            NodeNivelD.AddChild('Promocao').NodeValue :=DM1.Query3.fieldbyName('P2PROMOCAO').AsString;
            DM1.Query3.next;
            end;
         DM1.query2.Next;
         end;
      mem_eventos.Next;
      end;
   end;


mem_eventos_lote.First;
//NodeNivelA.AddChild('ITENS');
NodeNivelb:=NodeNivela.AddChild('RETORNO');

While not mem_eventos_lote.Eof do
   begin
   NodeNivelC:=NodeNivelB.AddChild('EVENTO');

   NodeNivelC.AddChild('Chave_DM').NodeValue  :=mem_eventos_loteCHAVE_ORI.AsString;
   NodeNivelC.AddChild('Chave_Gestao').NodeValue  :=mem_eventos_loteCHAVE_FAT.AsString;

   NodeNivelC.AddChild('CodSit').NodeValue   :=mem_eventos_loteCODEVE.AsString;
   NodeNivelC.AddChild('NomeSit').NodeValue  :=mem_eventos_loteDESC_EVENTO.AsString;
   NodeNivelC.AddChild('Observacao').NodeValue  :='';
   NodeNivelC.AddChild('DatHor').NodeValue    :=FormatDateTime('yyyymmddhhnn', now);
   mem_eventos_lote.Next;
   end;

mem_eventos_lote.Close;
xmlDoc.SaveToFile(mNomeRetorno+'.$$$');
RenameFile(mNomeRetorno+'.$$$',mNomeRetorno+'.XML');

end;

procedure TFrm_DM_Importar.CB_BUSCAClick(Sender: TObject);
begin
if CB_BUSCA.Checked then
   begin
   bbIniciar.Enabled:=true;
   GroupBox1.Caption:='Pasta para Buscar os Arquivos';
   sb_Pasta.Visible :=true;
   NOMARQ.Text :='C:\DM\recebe';

   if not DirectoryExists('C:\DM') then
      begin
      try
         CreateDir('C:\DM');
      except
         NOMARQ.Text:='C:\SGE'
         end;
      end;
   if not DirectoryExists('C:\DM\recebe') then
      begin
      try
         CreateDir('C:\DM\recebe');
      except
         NOMARQ.Text:='C:\SGE'
         end;
      end;
   verteclado(0);
   end
else
   begin
   bbIniciar.Enabled:=false;
   GroupBox1.Caption:='Nome do Arquivo a ser lido';
   sb_Pasta.Visible :=false;
   NOMARQ.Text      :='';
   mBuscando:=False;
   verteclado(0);
   end;


end;

procedure TFrm_DM_Importar.bbImportarClick(Sender: TObject);
var
mArqProc,mNomeArq: String;
begin
mNomeArq:=NOMARQ.Text;
if not FileExists(mNomeArq) then
   begin
   fMensagem('Arquivo não Encontrado!',0,['0'],0);
   exit;
   end;

mArqProc:=fRetiraExtensao(mNomeArq)+'.xml';
if not FileExists(mArqProc) then
   begin
   fMensagem('Arquivo não Encontrado!',0,['0'],0);
   exit;
   end;
if fLerArquivoRecebido(mNomeArq) then
   DeleteFile(mNomeArq);
end;

procedure TFrm_DM_Importar.sbnProcurarClick(Sender: TObject);
var
y: integer;
begin
OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];
OpenDialog1.Filter := 'All Files (*.*)|*.*';
OpenDialog1.Title := 'Arquivos do dispositivo móvel';
if OpenDialog1.execute then
   begin
   NOMARQ.Text := OpenDialog1.FileName;
   end;

end;



function TFrm_DM_Importar.fRetornoErros(pLocal: Integer;pCodigo: Integer; pNomEve: String;pChaveDM,pChaveFat: Real): Boolean;
{
pLocal=0-Normal
       1-Retorno de Consulta de Pedido
}
begin

if pLocal=0 then
   begin
   if not mem_eventos.Active then
      mem_eventos.Open;
   mem_eventos.Append;
   if plocal=0 then
      mem_eventosTIPO_EVENTO.Value:='Recepção de Pedido';
   mem_eventosCHAVE_FAT.Value:=pChaveFat;
   mem_eventosCHAVE_ORI.Value:=pChaveDM;
   mem_eventosDESC_EVENTO.Value:=pNomEve;
   mem_eventosCODEVE.Value:=pCodigo;
   mem_eventos.Post;

   if not mem_erros.Active then
      mem_erros.Open;
   mem_erros.Append;
   mem_errosCODEVE.Value:=pCodigo;
   mem_errosDESC_EVENTO.Value:=pNomEve;
   mem_errosCHAVE_FAT.Value:=pChaveFat;
   mem_errosCHAVE_ORI.Value:=pChaveDM;
   mem_erros.Post;
   end;

if not mem_eventos_lote.Active then
   mem_eventos_lote.Open;
mem_eventos_lote.Append;
if plocal=0 then
   mem_eventos_loteTIPO_EVENTO.Value:='Recepção de Pedido';
mem_eventos_loteCHAVE_FAT.Value:=pChaveFat;
mem_eventos_loteCHAVE_ORI.Value:=pChaveDM;
mem_eventos_loteDESC_EVENTO.Value:=pNomEve;
mem_eventos_LOTECODEVE.Value:=pCodigo;
mem_eventos_lote.Post;


Update;
result:=true;
end;


procedure TFrm_DM_Importar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DM_Importar.bbLimparClick(Sender: TObject);
begin
if (mem_eventos.Active) and (not mem_eventos.IsEmpty) then
   begin
   if fmensagem('Quer Realmente Apagar os Históricos?',0,['1','2'],0)=mrYes then
      mem_eventos.Close;
   end;
end;

procedure TFrm_DM_Importar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_DM_Importar.G_DMClick(Sender: TObject);
begin

flparger(0,0,'1');
G_DM.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPDM_ENDIP.AsString        :=MENDIP.Text;
DM1.Tb_PargerPDM_ENDIP_INTERNO.AsString:=MENDIP_INTERNO.Text;
DM1.Tb_PargerPDM_PORTA.AsFloat         :=ValFloat(PORTA.Text);
DM1.Tb_Parger.Post;


end;

procedure TFrm_DM_Importar.MENDIPChange(Sender: TObject);
begin
if (MENDIP.Modified)  then
   G_DM.Enabled:=true;

end;

procedure TFrm_DM_Importar.PORTAChange(Sender: TObject);
begin
if (MENDIP.Modified)  then
   G_DM.Enabled:=true;

end;

procedure TFrm_DM_Importar.MENDIP_INTERNOChange(Sender: TObject);
begin
if (MENDIP.Modified)  then
   G_DM.Enabled:=true;

end;

end.
