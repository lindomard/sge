unit S_ManBal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, ComCtrls, db, dbtables, S_DM1, func,
  Grids, Buttons, S_ManBal_Loc, S_Impres,lerarq,S_Agde,S_ConsLot,S_AgruBal,
  ToolEdit, s_lerarq_geral;

type
  TFrm_ManBal = class(TForm)
    Panel_botoes: TPanel;
    panel_fundo: TPanel;
    Panel_rodape: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBCALCULAR: TBitBtn;
    Qr_Bal01: TQuery;
    Qr_BAL02: TQuery;
    STG1: TStringGrid;
    BBIMPRIMIR: TBitBtn;
    Panel_dig: TPanel;
    Label4: TLabel;
    lbl_lote: TLabel;
    lbl_dtvcto: TLabel;
    Label11: TLabel;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    BitBtn6: TBitBtn;
    CODPRO: TEdit;
    LOTE: TEdit;
    DTVCTO: TMaskEdit;
    NOMPRO: TEdit;
    Label5: TLabel;
    QTD: TEdit;
    UND: TEdit;
    Label6: TLabel;
    Qr_Bal01B1CODEMP: TFloatField;
    Qr_Bal01B1CHAVE: TFloatField;
    Qr_Bal01B1DATA: TDateTimeField;
    Qr_Bal01B1MOT01: TStringField;
    Qr_Bal01B1MOT02: TStringField;
    Qr_Bal01B1MOT03: TStringField;
    Qr_Bal01B1STATUS: TFloatField;
    Qr_Bal01B1DATAAJU: TDateTimeField;
    Qr_BAL02B2CODEMP: TFloatField;
    Qr_BAL02B2CHAVE: TFloatField;
    Qr_BAL02B2CODPRO: TFloatField;
    Qr_BAL02B2NUMERO: TStringField;
    Qr_BAL02B2DTVCTO: TDateTimeField;
    Qr_BAL02B2QTD: TFloatField;
    Qr_BAL02B2QTDEST: TFloatField;
    Qr_BAL02B2DIFER: TFloatField;
    Qr_BAL02PDNOME: TStringField;
    Qr_BAL02PDUND: TStringField;
    Qr_BAL02B2SEQ: TFloatField;
    CB_LEITOR: TCheckBox;
    bbAgrupar: TBitBtn;
    Qr_Bal01B1LEMAT: TFloatField;
    bbAjustar: TBitBtn;
    bbAgruBal: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_Bal01B1SITUACAO: TFloatField;
    Qr_Bal01B1TIPOPRO: TFloatField;
    Qr_BAL02B2STATUS: TFloatField;
    Qr_BAL02B2TIPOPRO: TFloatField;
    Qr_Bal01B1LOCAL: TFloatField;
    QTDITEM: TLabel;
    TOTQTD: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label81: TLabel;
    lbl_filtro_teste: TLabel;
    CHAVE: TEdit;
    DATA: TMaskEdit;
    MOT01: TEdit;
    MOT02: TEdit;
    MOT03: TEdit;
    DATAAJU: TMaskEdit;
    RGTPRO: TRadioGroup;
    CODPRO_TESTE: TEdit;
    Label8: TLabel;
    CB_ORDEM: TComboBox;
    Label9: TLabel;
    CB_QUEBRA: TComboBox;
    CB_SEPPAG: TCheckBox;
    Qr_BAL02NOMGRU: TStringField;
    Qr_BAL02SUBGRU: TStringField;
    CB_AGRUPARCODIGO: TCheckBox;
    Qr_BAL02PDNOMFOR: TStringField;
    Qr_BAL02PDCODFOR: TFloatField;
    Qr_BAL02PDSECAO: TStringField;
    Qr_BAL02PDNOMRAM: TStringField;
    Qr_BAL02PDCODRAM: TFloatField;
    Qr_BAL02PDNOMCON: TStringField;
    Qr_BAL02PDCODCON: TFloatField;
    Qr_BAL02PDNOMGRU: TStringField;
    Qr_BAL02PDCODGRU: TFloatField;
    Qr_BAL02PDNOMTIP: TStringField;
    Qr_BAL02PDCODTIP: TFloatField;
    CB_SOERRADO: TCheckBox;
    btn_coletor: TBitBtn;
    pnl_Coletor: TPanel;
    arquivo: TFilenameEdit;
    Label7: TLabel;
    btn_processar: TButton;
    btn_cancelar: TButton;
    pnl_Divergencias: TPanel;
    m_divergencias: TMemo;
    pnl_qtddiver: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    bbGerarInv_normal: TBitBtn;
    tsFiltros: TTabSheet;
    Qr_Bal03: TQuery;
    Qr_Bal03B3CODEMP: TFloatField;
    Qr_Bal03B3CHAVE: TFloatField;
    Qr_Bal03B3SEQ: TFloatField;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    CODGRU: TEdit;
    Label12: TLabel;
    lbx_codram: TListBox;
    CODRAM: TEdit;
    Label13: TLabel;
    OMITIR_RAM: TCheckBox;
    lbx_codtip: TListBox;
    CODTIP: TEdit;
    Label14: TLabel;
    OMITIR_TIP: TCheckBox;
    TsFiltros2: TTabSheet;
    lbx_codcon: TListBox;
    CODCON: TEdit;
    Label15: TLabel;
    OMITIR_CON: TCheckBox;
    edt_Marca: TEdit;
    Label16: TLabel;
    Qr_Bal03B3TIPO: TStringField;
    Qr_Bal03B3OMITIR: TFloatField;
    Qr_Bal03B3CODIGO: TStringField;
    CB_FILIAL: TComboBox;
    bbGerarInvLote: TBitBtn;
    ggGerarNovoAgrupado: TBitBtn;
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure DTVCTOExit(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure MOT01Exit(Sender: TObject);
    procedure MFATORExit(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBCALCULARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure DATAAJUExit(Sender: TObject);
    procedure MOT02Exit(Sender: TObject);
    procedure MOT03Exit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure LOTEExit(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbAgruparClick(Sender: TObject);
    procedure bbAjustarClick(Sender: TObject);
    procedure CB_LEITORClick(Sender: TObject);
    procedure LOTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbAgruBalClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_LEITOREnter(Sender: TObject);
    procedure CB_LEITORExit(Sender: TObject);
    procedure btn_coletorClick(Sender: TObject);
    procedure btn_processarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbGerarInv_normalClick(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
    procedure bbGerarInvLoteClick(Sender: TObject);
    procedure ggGerarNovoAgrupadoClick(Sender: TObject);
  private
     mfilial: Integer;
     function fcalcular(ptipo:Integer):Boolean;
     function fexcluir(ptipo: Integer):Boolean;
     function fBuscarEstoque(ptipo: Integer):Boolean;

     function fverProduto:String;

    { Private declarations }
  public
    { Public declarations }
    form_impres_manbal: TFrm_Impres;

    procedure fIncluirzerados;

  end;
//function fTestarLotexEstoque(ptipo: Integer): Boolean;

var
  Frm_ManBal: TFrm_ManBal;
  mop,mqtd,mchave,moper: Integer;
  mordemp: String;
  mqtdd,mjuros: Real;

  mQtdDiver: Real;

  mDtVcto   :TDateTime;
  mQtdCaixa :Real;
  mLoteProd :String;


  mColCod   : Integer=0;
  mColLote  : Integer=1;
  mColDtVcto: Integer=2;
  mColNome  : Integer=3;
  mColUnd   : Integer=4;
  mColQtd   : Integer=5;

  mTamColcod   : Integer=80;
  mTamColLote : Integer=60;
  mTamColDtVcto: Integer=80;
  mTamColNome  : Integer=300;
  mTamColUnd   : Integer=30;
  mTamColQtd   : Integer=60;
  mCampoQtd_Cadpro, mCampoQtd_CadEst,mCampoQtd_CadLgc: String;
  mCampoEmp: String;


implementation

uses func_excecoes, S_DM4, S_ManBal_GerInv, s_invgra_novoagru;

{$R *.dfm}


procedure TFrm_ManBal.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
bbAgruBal.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
bbGerarInv_normal.Enabled :=False;
bbAgrupar.Enabled  :=False;
bbAjustar.Enabled  :=False;
btn_coletor.Enabled:=True;
BBGRAVAR.Enabled   :=True;
BBCALCULAR.Enabled :=True;
panel3.Enabled     :=True;
Panel_dig.Enabled     :=True;
Panel_rodape.Enabled     :=True;
DATA.Text:=FormatDatetime(fdt2,pdatasis);

if log_filial_padrao=0 then
   CB_FILIAL.itemindex:=0
else
   begin
   CB_FILIAL.Text:=fRetonaNomeFilial(log_filial_padrao);
    with CB_FILIAL do
         ItemIndex := items.IndexOf(CB_FILIAL.Text);
    end;

DATA.SetFocus;
moper:=0;

Qr_Bal01.Close;
Qr_Bal01.Sql.Clear;
Qr_Bal01.sQl.add('Select * from CADBAL01 where B1CODEMP is null');
Qr_Bal01.Open;
mchave:=0;

end;

procedure TFrm_ManBal.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   Application.CreateForm(TFrm_ManBal_Loc, Frm_ManBal_Loc);
   Frm_ManBal_Loc.ShowModal;
   mchave:=mlote;
   freeandnil(Frm_ManBal_Loc);
   end;
if mchave>0 then
   begin
   mordemp:='';
   Qr_Bal01.Close;
   Qr_Bal01.SQL.Clear;
   Qr_Bal01.SQL.Add('Select * from CADBAL01 where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
      begin
      Qr_Bal01.SQL.Add(' B1CODEMP=0'+IntTostr(codemp)+' and ');
      mordemp:=' B1CODEMP,';
      end;
   Qr_Bal01.SQL.add(' B1CHAVE=0'+Inttostr(mchave));
   Qr_Bal01.Open;
   if Qr_Bal01.Eof then
      begin
      fMensagem('Chave não Encontrada!',0,['0'],0);
      exit;
      end;
   if Qr_Bal01B1TIPOPRO.IsNull then
      RGTPRO.ItemIndex:=12
   else
      RGTPRO.ItemIndex:=Qr_Bal01B1TIPOPRO.AsInteger;
   CHAVE.Text:=Qr_Bal01B1CHAVE.AsString;
   MOT01.Text:=Qr_Bal01B1MOT01.Value;
   MOT02.Text:=Qr_Bal01B1MOT02.Value;
   MOT03.Text:=Qr_Bal01B1MOT03.Value;
   DATA.Text:=FormatDateTime(fdt2,Qr_Bal01B1DATA.Value);

   mfilial:=Qr_Bal01B1LOCAL.AsInteger;
   if mFilial=0 then
      mFilial:=log_filial_padrao;


   CB_FILIAL.Text:=fRetonaNomeFilial(mfilial);
   with CB_FILIAL do ItemIndex :=Items.IndexOf(CB_FILIAL.Text);

   if (Qr_Bal01B1DATAAJU.Value<=pdatanula) then
      DATAAJU.Text:='/  /'
   else
      DATAAJU.Text:=FormatDateTime(fdt2,Qr_Bal01B1DATAAJU.Value);

   Qr_BAL02.Close;
   Qr_BAL02.SQL.Clear;
   Qr_BAL02.SQL.Add('Select  B2CODEMP, '
                   +'        B2CHAVE, '
                   +'        B2SEQ, '
                   +'        B2CODPRO, '
                   +'        B2NUMERO, '
                   +'        B2DTVCTO, '
                   +'        B2QTD, '
                   +'        B2QTDEST, '
                   +'        B2DIFER, '
                   +'        B2STATUS, '
                   +'        B2TIPOPRO, '
                   +'        PDNOME, '
                   +'        PDUND '
                   +'        ,PDNOME AS NOMGRU '
                   +'        ,PDNOME AS SUBGRU '
                   +'        ,PDNOMFOR'
                   +'        ,PDCODFOR '
                   +'        ,PDSECAO '
                   +'        ,PDNOMRAM '
                   +'        ,PDCODRAM '
                   +'        ,PDNOMCON '
                   +'        ,PDCODCON '
                   +'        ,PDNOMGRU '
                   +'        ,PDCODGRU '
                   +'        ,PDNOMTIP '
                   +'        ,PDCODTIP '
                   +' from CADBAL02,CADPRO where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'', ' B2CODEMP=0'+IntTostr(codemp)+' and ')
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'', ' PDCODEMP=B2CODEMP and ')
                   +' PDCODPRO=B2CODPRO '
                   +' and B2CHAVE=0'+InttoStr(mchave)
                   +' order by PDNOME ');
   Qr_BAL02.Open;
   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   mqtd:=1;
   While not Qr_BAL02.Eof do
      begin
      STG1.RowCount:=mqtd+1;
      STG1.Cells[mColCod,mqtd]:=Qr_BAL02B2CODPRO.AsString;
      STG1.Cells[mColLote,mqtd]:=Qr_BAL02B2NUMERO.Value;
      if Qr_BAL02B2DTVCTO.Value<=pdatanula then
         STG1.Cells[mColDtVcto,mqtd]:='/  /'
      else
         STG1.Cells[mColDtVcto,mqtd]:=FormatDatetime(fdt2,Qr_BAL02B2DTVCTO.Value);
      STG1.Cells[mColNome,mqtd]:=Qr_BAL02PDNOME.Value;
      STG1.Cells[mColUnd,mqtd]:=Qr_BAL02PDUND.Value;
      STG1.Cells[mColQtd,mqtd]:=FormatFloat(mcasqtd, Qr_BAL02B2QTD.Value);
      mqtd:=mqtd+1;
      STG1.Rows[mqtd].Clear;
      Qr_BAL02.Next;
      end;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.Rows[mqtd+1].Clear;

   Qr_BAL03.Close;
   Qr_BAL03.SQL.Clear;
   Qr_BAL03.SQL.Add('Select  * from CADBAL03 '
                   +' where B3CHAVE=0'+InttoStr(mchave)
                   +' and B3TIPO='+QuotedStr('GRU')
                   +' order by B3SEQ ');
   Qr_BAL03.Open;
   lbx_codgru.Items.Clear;
   PageControl1.ActivePageIndex:=1;
   while not Qr_Bal03.Eof do
     begin
     CODGRU.Text:=Qr_Bal03B3CODIGO.AsString;
     OMITIR_GRU.Checked:=IIF(Qr_Bal03B3OMITIR.AsString='0',false,true);
     CODGRUExit(self);
     Qr_Bal03.Next;
     end;

   Qr_BAL03.Close;
   Qr_BAL03.SQL.Clear;
   Qr_BAL03.SQL.Add('Select  * from CADBAL03 '
                   +' where B3CHAVE=0'+InttoStr(mchave)
                   +' and B3TIPO='+QuotedStr('RAM')
                   +' order by B3SEQ ');
   Qr_BAL03.Open;
   lbx_codram.Items.Clear;
   PageControl1.ActivePageIndex:=1;
   while not Qr_Bal03.Eof do
     begin
     CODRAM.Text:=Qr_Bal03B3CODIGO.AsString;
     OMITIR_RAM.Checked:=IIF(Qr_Bal03B3OMITIR.AsString='0',false,true);
     CODRAMExit(self);
     Qr_Bal03.Next;
     end;

   Qr_BAL03.Close;
   Qr_BAL03.SQL.Clear;
   Qr_BAL03.SQL.Add('Select  * from CADBAL03 '
                   +' where B3CHAVE=0'+InttoStr(mchave)
                   +' and B3TIPO='+QuotedStr('TIP')
                   +' order by B3SEQ ');
   Qr_BAL03.Open;
   lbx_codtip.Items.Clear;
   PageControl1.ActivePageIndex:=1;
   while not Qr_Bal03.Eof do
     begin
     CODTIP.Text:=Qr_Bal03B3CODIGO.AsString;
     OMITIR_TIP.Checked:=IIF(Qr_Bal03B3OMITIR.AsString='0',false,true);
     CODTIPExit(self);
     Qr_Bal03.Next;
     end;

   Qr_BAL03.Close;
   Qr_BAL03.SQL.Clear;
   Qr_BAL03.SQL.Add('Select  * from CADBAL03 '
                   +' where B3CHAVE=0'+InttoStr(mchave)
                   +' and B3TIPO='+QuotedStr('CON')
                   +' order by B3SEQ ');
   Qr_BAL03.Open;
   lbx_codcon.Items.Clear;
   PageControl1.ActivePageIndex:=2;
   while not Qr_Bal03.Eof do
     begin
     CODCON.Text:=Qr_Bal03B3CODIGO.AsString;
     OMITIR_CON.Checked:=IIF(Qr_Bal03B3OMITIR.AsString='0',false,true);
     CODCONExit(self);
     Qr_Bal03.Next;
     end;


   Qr_BAL03.Close;
   Qr_BAL03.SQL.Clear;
   Qr_BAL03.SQL.Add('Select  * from CADBAL03 '
                   +' where B3CHAVE=0'+InttoStr(mchave)
                   +' and B3TIPO='+QuotedStr('MARC')
                   +' order by B3SEQ ');
   Qr_BAL03.Open;
   if not Qr_BAL03.IsEmpty then
     edt_Marca.Text:=Qr_Bal03B3CODIGO.AsString;

   PageControl1.ActivePageIndex:=0;
   fcalcular(0);
   BBINCLUIR.Enabled  :=True;
   BBLOCALIZAR.Enabled:=True;
   BBALTERAR.Enabled  :=True;
   bbAgruBal.Enabled  :=true;
   BBEXCLUIR.Enabled  :=True;
   BBIMPRIMIR.Enabled :=True;
   bbGerarInv_normal.Enabled :=true;
   bbGerarInvLote.Enabled    :=true;
   bbAgrupar.Enabled  :=true;
   bbAjustar.Enabled  :=true;
   BBGRAVAR.Enabled   :=False;
   BBCALCULAR.Enabled :=true;
   end;
end;
function TFrm_ManBal.Fcalcular(ptipo:Integer):Boolean;
var
x: Integer;
mqtdreg,mtotund: Real;
begin
mtotund:=0;
mqtdreg:=0;

for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcolCod,x])='' then
      continue;
   mqtdreg:=mqtdreg+1;
   mtotund:=mtotund+ValFloat(STG1.Cells[mColQtd,x]);
   end;
QTDITEM.Caption:=FloatToStr(mqtdreg);
TOTQTD.Caption:=FormatFloat(mcasqtd,mtotund);
result:=True;
end;


procedure TFrm_ManBal.ITEM_GRAVARClick(Sender: TObject);
var
  mCodProAnt: String;
begin
mCodProAnt:=CODPRO.Text;
if (Trim(MOT01.Text)='') then
  begin
  if not pnl_Coletor.Visible then
    begin
    fMensagem('Observação Linha 01 campo obrigatório!',0,['0'],0);
    MOT01.SetFocus;
    end;
  exit;
  end;
if (Trim(CODPRO.Text)='') then
  begin
  if (not pnl_Coletor.Visible) then
    begin
    fMensagem('Código do Produto Campo Obrigatório!',0,['0'],0);
    CODPRO.SetFocus;
    end;
  exit;
  end;

if (not flcadpro(1,0,0,Trim(CODPRO.Text))) then
  begin
  CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
  if (trim(CODPRO.Text)='0') then
    begin
    if (not pnl_Coletor.Visible) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end
    else
      begin
      mQtdDiver:=mQtdDiver+1;
      pnl_qtddiver.Caption:='Quantidade de divergencias = '+FormatFloat('#####',mQtdDiver);
      m_divergencias.Lines.Add('Produto..: '+mCodProAnt+' Quantidade..:'+QTD.Text);
      CODPRO.Text:='';
      qtd.Text:='';
      end;
    exit;
    end;
  flcadpro(1,0,0,fdeixanum(CODPRO.Text));
  NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
  UND.Text   :=DM1.Tb_ProPDUND.Value;
  end;

if (CB_LEITOR.Checked) and (Log_TipoLote=2) then
   begin
   if not flcadlgc(mfilial,1,0,Trim(CODPRO.Text),lote.Text,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;

if ValFloat(QTD.Text)=0 then
   begin
   fMensagem('Quantidade Campo Obrigatório!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;

if mop=1 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd+1].Clear;
   STG1.Rows[mqtd].Clear;
   end;
STG1.Cells[mColCod,mqtd-1]:=CODPRO.Text;
STG1.Cells[mColLote,mqtd-1]:=LOTE.Text;
STG1.Cells[mColDtVcto,mqtd-1]:=DTVCTO.Text;
STG1.Cells[mColNome,mqtd-1]:=NOMPRO.Text;
STG1.Cells[mColUnd,mqtd-1]:=UND.Text;
STG1.Cells[mColQtd,mqtd-1]:=QTD.Text;
fcalcular(0);
CODPRO.Text :='';
LOTE.Text   :='';
DTVCTO.Text :='/  /';;
NOMPRO.Text :='';
UND.Text    :='';
if CB_LEITOR.Checked then
   QTD.Text:=FormatFloat(mcasqtd, 1)
else
   QTD.Text:='';
if mqtd>15 then
   STG1.TopRow:=mqtd-11;

mop:=0;
CODPRO.SetFocus;

end;

procedure TFrm_ManBal.DTVCTOExit(Sender: TObject);
begin
if Trim(DTVCTO.Text)<>'/  /' then
   begin
   Try
      DTVCTO.Text:=FormatDateTime(fdt2,StrtoDate(DTVCTO.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      DTVCTO.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ManBal.DATAExit(Sender: TObject);
begin
if Trim(DATA.Text)<>'/  /' then
   begin
   Try
      DATA.Text:=FormatDateTime(fdt2,StrtoDate(DATA.Text));
   except
      fMensagem('Data Inválida!',0,['0'],0);
      DATA.SetFocus;
      end;
   end;

end;

procedure TFrm_ManBal.MOT01Exit(Sender: TObject);
begin
if Trim(MOT01.Text)='' then
   Begin
   fMensagem('Preenchimento obrigatório!',0,['0'],0);
   MOT01.SetFocus;
   end;
if fTestaTam(0,60,MOT01.Text,'') then
   MOT01.Text:=copy(mot01.Text,1,60);


end;

procedure TFrm_ManBal.MFATORExit(Sender: TObject);
begin

if (STG1.RowCount>2) or (Trim(STG1.Cells[mcolcod,01])<>'') then
   fcalcular(0);
end;

procedure TFrm_ManBal.BBGRAVARClick(Sender: TObject);
var
x,mqtdi: Integer;
begin
if Trim(STG1.Cells[mColCod,01])='' then
   begin
   fMensagem('Nada a ser gravado!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption   :='Efetuando Gravação, aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
if mchave=0 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Select max(B1CHAVE) from CADBAL01 '
                     +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'','  where B1CODEMP=0'+InttoStr(codemp)));
   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADBAL01 where B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,431,'Frm_ManBal','CADBAL01');
      end;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADBAL02 where B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,441,'Frm_ManBal','CADBAL02');
      end;

   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DATA',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'MOT01',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'MOT02',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'MOT03',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DATAAJU',ptinput);

DM1.Query1.SQL.Add('Insert into CADBAL01 ('
                  +' B1CODEMP, '
                  +' B1CHAVE, '
                  +' B1LOCAL, '
                  +' B1DATA, '
                  +' B1MOT01, '
                  +' B1MOT02, '
                  +' B1MOT03, '
                  +' B1STATUS, '
                  +' B1TIPOPRO, '
                  +' B1LEMAT, '
                  +' B1SITUACAO, '
                  +' B1DATAAJU) values ('
                  +IntTostr(codemp)+','
                  +IntToStr(mchave)+','
                  +IntToStr(mFilial)+','
                  +':DATA, '
                  +':MOT01, '
                  +':MOT02, '
                  +':MOT03, '
                  +iif(moper=0,'0',Qr_Bal01B1STATUS.AsString)+','
                  +IntToStr(RGTPRO.ItemIndex)+','
                  +'0, '
                  +'0,'
                  +':DATAAJU)');
if Trim(DATA.Text)='/  /' then
   DM1.Query1.ParamByName('DATA').AsDateTime:=pdatanula
else
   DM1.Query1.ParamByName('DATA').AsDateTime:=StrToDate(DATA.Text);
DM1.Query1.ParamByName('MOT01').AsString    :=MOT01.Text;
DM1.Query1.ParamByName('MOT02').AsString    :=MOT02.Text;
DM1.Query1.ParamByName('MOT03').AsString    :=MOT03.Text;
if Trim(DATAAJU.Text)='/  /' then
   DM1.Query1.ParamByName('DATAAJU').AsDateTime:=pdatanula
else
   DM1.Query1.ParamByName('DATAAJU').AsDateTime:=StrToDate(DATAAJU.Text);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,486,'Frm_ManBal','CADBAL01');
   end;
mplid:=0;
mpqtd:=STG1.RowCount;
mqtdi:=0;
for x:=1 to STG1.RowCount do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   if (STG1.Cells[mColCod,x])='' then
      Continue;
   mqtdi:=mqtdi+1;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'NUMERO',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTVCTO',ptinput);
   DM1.Query1.SQL.Add('Insert into CADBAL02 ('
                     +' B2CODEMP, '
                     +' B2CHAVE, '
                     +' B2SEQ, '
                     +' B2CODPRO, '
                     +' B2NUMERO, '
                     +' B2DTVCTO, '
                     +' B2QTD, '
                     +' B2QTDEST, '
                     +' B2DIFER, '
                     +' B2STATUS, '
                     +' B2TIPOPRO '
                     +' ) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +Trim(STG1.Cells[mColCod,x])+','
                     +':NUMERO, '
                     +':DTVCTO, '
                     +mudavp(floattostr(valfloat(STG1.Cells[mColQtd,x])))+','
                     +'0,0,'
                     +iif(moper=0,'0',Qr_Bal01B1STATUS.AsString)+','
                     +IntToStr(RGTPRO.ItemIndex)
                     +' )');
   if trim(STG1.Cells[mcolLote,x])='' then
      DM1.Query1.ParamByName('NUMERO').AsString    :=' '
   else
      DM1.Query1.ParamByName('NUMERO').AsString    :=STG1.cells[mColLote,x];
   if (Trim(STG1.cells[mcolDtVcto,x])='/  /') or (Trim(STG1.cells[mcolDtVcto,x])='') then
      DM1.Query1.ParamByName('DTVCTO').AsDateTime:=pdatanula
   else
      DM1.Query1.ParamByName('DTVCTO').AsDateTime:=StrToDate(STG1.cells[mcolDtVcto,x]);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,531,'Frm_ManBal','CADBAL02');
      end;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' delete from CADBAL03 where B3CODEMP='+IntTostr(codemp)
                  +' and B3CHAVE='+IntToStr(mchave));
DM1.Query1.ExecSQL;

mqtdi:=0;
for x:=0 to lbx_codgru.Items.Count - 1 do
  begin
  mqtdi:=mqtdi+1;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Insert into CADBAL03 ('
                     +' B3CODEMP, '
                     +' B3CHAVE, '
                     +' B3SEQ, '
                     +' B3TIPO, '
                     +' B3CODIGO, '
                     +' B3OMITIR '
                     +' ) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +QuotedStr('GRU')+','
                     +QuotedStr(Copy(lbx_codgru.Items[X],1,7))+','
                     +IIF(OMITIR_GRU.Checked,QuotedStr('1'),QuotedStr('0'))
                     +' )');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,531,'Frm_ManBal','CADBAL03');
    end;
  end;

for x:=0 to lbx_codram.Items.Count - 1 do
  begin
  mqtdi:=mqtdi+1;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Insert into CADBAL03 ('
                     +' B3CODEMP, '
                     +' B3CHAVE, '
                     +' B3SEQ, '
                     +' B3TIPO, '
                     +' B3CODIGO, '
                     +' B3OMITIR '
                     +' ) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +QuotedStr('RAM')+','
                     +QuotedStr(Copy(lbx_codram.Items[X],1,7))+','
                     +IIF(OMITIR_RAM.Checked,QuotedStr('1'),QuotedStr('0'))
                     +' )');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,531,'Frm_ManBal','CADBAL03');
    end;
  end;

for x:=0 to lbx_codtip.Items.Count - 1 do
  begin
  mqtdi:=mqtdi+1;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Insert into CADBAL03 ('
                     +' B3CODEMP, '
                     +' B3CHAVE, '
                     +' B3SEQ, '
                     +' B3TIPO, '
                     +' B3CODIGO, '
                     +' B3OMITIR '
                     +' ) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +QuotedStr('TIP')+','
                     +QuotedStr(Copy(lbx_codtip.Items[X],1,7))+','
                     +IIF(OMITIR_TIP.Checked,QuotedStr('1'),QuotedStr('0'))
                     +' )');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,531,'Frm_ManBal','CADBAL03');
    end;
  end;

for x:=0 to lbx_codcon.Items.Count - 1 do
  begin
  mqtdi:=mqtdi+1;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Insert into CADBAL03 ('
                     +' B3CODEMP, '
                     +' B3CHAVE, '
                     +' B3SEQ, '
                     +' B3TIPO, '
                     +' B3CODIGO, '
                     +' B3OMITIR '
                     +' ) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +QuotedStr('CON')+','
                     +QuotedStr(Copy(lbx_codcon.Items[X],1,7))+','
                     +IIF(OMITIR_CON.Checked,QuotedStr('1'),QuotedStr('0'))
                     +' )');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,531,'Frm_ManBal','CADBAL03');
    end;
  end;
mqtdi:=mqtdi+1;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADBAL03 ('
                   +' B3CODEMP, '
                   +' B3CHAVE, '
                   +' B3SEQ, '
                   +' B3TIPO, '
                   +' B3CODIGO, '
                   +' B3OMITIR '
                   +' ) values ('
                   +IntTostr(codemp)+','
                   +IntToStr(mchave)+','
                   +IntTostr(mqtdi)+','
                   +QuotedStr('MARC')+','
                   +QuotedStr(edt_Marca.Text)+','
                   +QuotedStr('0')
                   +' )');
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,531,'Frm_ManBal','CADBAL03');
  end;

CHAVE.Text:=Inttostr(mchave);
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
bbAgruBal.Enabled  :=true;
BBEXCLUIR.Enabled  :=False;
btn_coletor.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
bbAgrupar.Enabled  :=False;
bbAjustar.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBCALCULAR.Enabled :=False;
panel3.Enabled     :=False;
Panel_dig.Enabled    :=False;
Panel_rodape.Enabled :=False;
Frm_Agde.Free;
moper:=3;
BBLOCALIZAR.Click;
moper:=0;
end;

procedure TFrm_ManBal.ITEM_EDITARClick(Sender: TObject);
begin
mop:=1;
CODPRO.Text  :=STG1.Cells[mColCod,STG1.Row];
LOTE.Text    :=STG1.Cells[mcolLote,STG1.Row];
DTVCTO.Text  :=STG1.Cells[mColDtVcto,STG1.Row];
NOMPRO.Text  :=STG1.Cells[mColNome,STG1.Row];
UND.Text     :=STG1.Cells[mColUnd,STG1.Row];
QTD.Text     :=STG1.Cells[mColQtd,STG1.Row];

CODPRO.SetFocus;

end;

procedure TFrm_ManBal.ITEM_CANCELARClick(Sender: TObject);
begin
CODPRO.Text  :='';
LOTE.Text    :='';
DTVCTO.Text  :='/  /';
NOMPRO.Text  :='';
UND.Text     :='';
QTD.Text     :='';
mop:=0;
end;

procedure TFrm_ManBal.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;
if (STG1.Cells[mColCod,1]='') or (STG1.Cells[mColCod,mqtd]='') then
   exit;
if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-1 do
      begin
      STG1.Cells[mcolCod,x]   :=STG1.Cells[mColCod,x+1];
      STG1.Cells[mColLote,x]  :=STG1.Cells[mColLote,x+1];
      STG1.Cells[mColDtVcto,x]:=STG1.Cells[mColDtVcto,x+1];
      STG1.Cells[mColNome,x]  :=STG1.Cells[mColNome,x+1];
      STG1.Cells[mColUnd,x]   :=STG1.Cells[mColUnd,x+1];
      STG1.Cells[mColQtd,x]   :=STG1.Cells[mColQtd,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   STG1.Rows[x].Clear;
   end;
end;

procedure TFrm_ManBal.BBALTERARClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
Qr_Bal01.Close;
Qr_Bal01.Open;
if Qr_Bal01.Eof then
   begin
   fMensagem('Este registro foi excluido ou agrupado em outra chave!',0,['0'],0);
   exit;
   end;

if Qr_Bal01B1STATUS.Value=2 then
   begin
   fMensagem('Balanço ja Ajustado, inválido!',0,['0'],0);
   exit;
   end;
if Qr_Bal01B1SITUACAO.Value=1 then
  begin
  if fMensagem('Registro em manutenção. Deseja Prosseguir Mesmo Assim?',0,['1','2'],2)<>mrYes then
  exit;
  end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADBAL01 set B1SITUACAO=1 '
                  +' where B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                  +' and B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,654,'Frm_Manbal','CADBAL01');
end;


moper:=1;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
bbAgruBal.Enabled  :=False;
BBALTERAR.Enabled  :=False;
bbAgrupar.Enabled  :=False;
bbAjustar.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBEXCLUIR.Enabled  :=False;
btn_coletor.Enabled:=True;
BBGRAVAR.Enabled   :=True;
BBCALCULAR.Enabled :=True;
panel3.Enabled     :=True;
Panel_dig.Enabled     :=True;
Panel_rodape.Enabled     :=True;
//DATA.Text:=FormatDatetime(fdt2,pdatasis);
DATA.SetFocus;
end;

procedure TFrm_ManBal.BBEXCLUIRClick(Sender: TObject);
begin
if Qr_Bal01B1STATUS.Value=2 then
   begin
   fMensagem('Balanço ja Ajustado, inválido!',0,['0'],0);
   exit;
   end;
if fMensagem('Quer realmente excluir este lote?',0,['1','2'],2)<>mrYes then
   exit;
if not Qr_Bal01.Eof then
   fexcluir(1);
BBLIMPAR.Click;
fMensagem('Chave Excluida!',0,['0'],0);

end;

function TFrm_ManBal.fexcluir(ptipo: Integer):Boolean;
begin
Qr_Bal01.First;
While not Qr_Bal01.Eof do
   begin

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADBAL02 where B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B2CHAVE=0'+Qr_BAL02B2CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,660,'Frm_ManBal','CADBAL02');
      end;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADBAL01 where B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,670,'Frm_ManBal','CADBAL02');
      end;
   Qr_Bal01.Next;
   end;
end;


procedure TFrm_ManBal.BBLIMPARClick(Sender: TObject);
begin

if moper=1 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADBAL01 set B1SITUACAO=0 '
                     +' where B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,5844,'Frm_Ped','CADP01');
      end;
   DM1.Query1.Close;
   end;
lbx_codgru.Items.Clear;
lbx_codram.Items.Clear;
lbx_codtip.Items.Clear;
lbx_codcon.Items.Clear;
CODGRU.Clear;
CODTIP.Clear;
CODCON.Clear;
CODRAM.Clear;
OMITIR_GRU.Checked:=False;
OMITIR_RAM.Checked:=False;
OMITIR_TIP.Checked:=False;
OMITIR_CON.Checked:=False;
edt_Marca.Clear;


RGTPRO.ItemIndex:=12;
CHAVE.Text    :='';
DATA.Text     :=FormatDateTime(fdt2, pdatasis);
DATAAJU.Text  :='/  /';
DATA.Text     :='/  /';
MOT01.Text    :='';
MOT02.Text    :='';
MOT03.Text    :='';
stg1.RowCount:=2;
STG1.Rows[1].Clear;
CODPRO.Text  :='';
LOTE.Text    :='';
DTVCTO.Text  :='/  /';
NOMPRO.Text  :='';
UND.Text     :='';
QTDITEM.Caption :='';
TOTQTD.Caption  :='';

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
bbAgruBal.Enabled  :=true;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
bbAgrupar.Enabled  :=False;
bbAjustar.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBCALCULAR.Enabled :=False;
btn_coletor.Enabled:=False;
panel3.Enabled     :=False;
Panel_dig.Enabled     :=False;
Panel_rodape.Enabled     :=False;


end;

procedure TFrm_ManBal.BBCALCULARClick(Sender: TObject);
begin
fcalcular(0);
end;

procedure TFrm_ManBal.FormCreate(Sender: TObject);
begin
mtipo:=0;
STG1.RowCount:=2;

if codusr=1111 then
   begin
   lbl_filtro_teste.Visible:=false;
   CODPRO_TESTE.Visible    :=false;
   end
else
   begin
   lbl_filtro_teste.Visible:=true;
   CODPRO_TESTE.Visible    :=true;
   end;


if (valint(copy(mpseg,4,2))=2) then
   begin
   lbl_lote.Visible  :=true;
   LOTE.Visible      :=true;
   lbl_lote.Caption  :='Grade';
   lbl_dtvcto.Visible:=false;
   DTVCTO.Visible    :=false;
   mColCod   :=0;
   mColLote  :=1;
   mColNome  :=2;
   mColUnd   :=3;
   mColQtd   :=4;
   mColDtVcto:=5;
   end
else if (valint(copy(mpseg,4,2))=1) then
   begin
   lbl_lote.Visible  :=true;
   LOTE.Visible      :=true;
   lbl_lote.Caption  :='Lote';
   lbl_dtvcto.Visible:=true;
   DTVCTO.Visible    :=true;
   mColCod   :=0;
   mColLote  :=1;
   mColDtVcto:=2;
   mColNome  :=3;
   mColUnd   :=4;
   mColQtd   :=5;
   end
else
   begin
   lbl_lote.Visible  :=false;
   LOTE.Visible      :=false;
   lbl_dtvcto.Visible:=false;
   DTVCTO.Visible    :=false;
   mColCod   :=0;
   mColNome  :=1;
   mColUnd   :=2;
   mColQtd   :=3;
   mColLote  :=4;
   mColDtVcto:=5;
   end;
if CB_LEITOR.Checked then
   QTD.Text:=FormatFloat(mcasqtd, 1)
else
   QTD.Text:='';

STG1.ColWidths[mColCod]   :=mTamColcod;
STG1.ColWidths[mColLote]  :=mTamColLote;
STG1.ColWidths[mColDtVcto]:=mTamColDtVcto;
STG1.ColWidths[mColNome]  :=mTamColNome;
STG1.ColWidths[mColUnd]   :=mTamColUnd;
STG1.ColWidths[mColQtd]   :=mTamColQtd;



STG1.Cells[mColCod,00]   :='Codigo';
STG1.Cells[mColLote,00]  :=Log_TitLote;
if Log_UsaDtVcto then
   STG1.Cells[mColDtVcto,00]:='Dt.Vcto';
STG1.Cells[mColNome,00]  :='Descricao do Produto';
STG1.Cells[mColUnd,00]   :='Und';
STG1.Cells[mColQtd,00]   :='Quantidade';
if flfilpad(0,'_MANBAL','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LEITOR',[]) then
      CB_LEITOR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_LEITOR.Checked:=false;
   CB_LEITORClick(self);   
   end;

end;

procedure TFrm_ManBal.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManBal.BBIMPRIMIRClick(Sender: TObject);
var
mlin, mpag: Integer;
mperfdif: Real;
mtotqtd, mtotest: Real;
mCampoGrupo: String;
mCampoSubGru: String;
mOrdemGrupo: String;
mGrupo_ant: String;
mSubGru_ant: String;

begin
   mCampoQtd_Cadpro:='PDSALDO';
   mCampoQtd_CadEst:='CESALDO';
   mCampoQtd_CadLgc:='CLQTD';;


mCampoGrupo :='';
mCampoGrupo :=chr(39)+insere(' ',' ',40)+chr(39);
mCampoSubGru:=chr(39)+insere(' ',' ',40)+chr(39);

if CB_QUEBRA.ItemIndex=1 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMFOR) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODFOR)) '
   else
      mCampoGrupo:='PDNOMFOR ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODFOR) ';
   mOrdemGrupo:='PDNOMFOR,PDCODFOR';
   end
else if CB_QUEBRA.ItemIndex=2 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMGRU) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODGRU)) '
   else
      mCampoGrupo:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';
   mOrdemGrupo:='PDNOMGRU,PDCODGRU';
   end
else if CB_QUEBRA.ItemIndex=3 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMRAM) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODRAM)) '
   else
      mCampoGrupo:='PDNOMRAM ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODRAM) ';
   mOrdemGrupo:='PDNOMRAM,PDCODRAM';
   end
else if CB_QUEBRA.ItemIndex=4 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMCON) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODCON)) '
   else
      mCampoGrupo:='PDNOMCON||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODCN) ';

   mOrdemGrupo:='PDNOMCON,PDCODCON';
   end
else if CB_QUEBRA.ItemIndex=5 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMTIP) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODTIP)) '
   else
      mCampoGrupo:='PDNOMTIP ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODTIP) ';
   mOrdemGrupo:='PDNOMTIP,PDCODTIP';
   end
else if CB_QUEBRA.ItemIndex=6 then
   begin
   if CB_AGRUPARCODIGO.Checked then
      mCampoGrupo:='max(PDNOMGRU) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODGRU)) '
   else
      mCampoGrupo:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';
   mOrdemGrupo:='PDNOMGRU,PDCODGRU';
   if CB_AGRUPARCODIGO.Checked then
      mCampoSubGru:='max(PDNOMGRU) ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(max(PDCODGRU)) '
   else
      mCampoSubGru:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';

   mOrdemGrupo:='PDNOMGRU,PDCODGRU,PDNOMRAM,PDCODRAM';
   end;


if not CB_AGRUPARCODIGO.Checked then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADPRO','PDCODEMP','B2CODEMP','PDCODPRO','B2CODPRO');

   if Qr_Bal01B1STATUS.AsInteger<2 then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(0,'CADLGC','CLCODEMP','B2CODEMP','CLCODPRO','B2CODPRO','CLNUMERO','B2NUMERO','CLDTVCTO','B2DTVCTO');
      Qr_BAL02.Close;
      Qr_BAL02.SQL.Clear;
      Qr_BAL02.SQL.Add('Select  B2CODEMP, '
                   +'        B2CHAVE, '
                   +'        B2SEQ, '
                   +'        B2CODPRO, '
                   +'        B2NUMERO, '
                   +'        B2DTVCTO, '
                   +'        B2QTD, '
                   +'        decode('+mCampoQtd_CadLgc+',null,0,'+mCampoQtd_CadLgc+') as B2QTDEST, '
                   +'        B2QTD-decode('+mCampoQtd_CadLgc+',null,0,'+mCampoQtd_CadLgc+') as B2DIFER, '
                   +'        B2STATUS, '
                   +'        B2TIPOPRO, '
                   +'        PDNOME, '
                   +'        PDUND '
                   +','+mCampoGrupo+' AS NOMGRU '
                   +','+mCampoSubGru+' AS SUBGRU '
                   +' from CADBAL02'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '
                     +iif(la_instrucao='','',la_instrucao+' and ')
                    +' B2CHAVE=0'+InttoStr(mchave)
                    +IIF(CB_SOERRADO.Checked,
                    ' and (B2QTD-decode('+mCampoQtd_CadLgc+',null,0,'+mCampoQtd_CadLgc+'))<>0 ','')
                    );
      end
   else
      begin
      Qr_BAL02.Close;
      Qr_BAL02.SQL.Clear;
      Qr_BAL02.SQL.Add('Select  B2CODEMP, '
                   +'        B2CHAVE, '
                   +'        B2SEQ, '
                   +'        B2CODPRO, '
                   +'        B2NUMERO, '
                   +'        B2DTVCTO, '
                   +'        B2QTD, '
                   +'        B2QTDEST, '
                   +'        B2DIFER, '
                   +'        B2STATUS, '
                   +'        B2TIPOPRO, '
                   +'        PDNOME, '
                   +'        PDUND '
                   +','+mCampoGrupo+' AS NOMGRU '
                   +','+mCampoSubGru+' AS SUBGRU '
                   +' from CADBAL02'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '
                     +iif(la_instrucao='','',la_instrucao+' and ')
                    +' B2CHAVE=0'+InttoStr(mchave)
                    +IIF(CB_SOERRADO.Checked,' and B2DIFER<>0',''));
      end;


   if trim(mOrdemGrupo)<>'' then
      mOrdemGrupo:=mOrdemGrupo+',';
   if (ValInt(copy(mpseg,4,2))=02)  then  // grades de cores tamanhos
      begin
      if cb_ordem.ItemIndex=0 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME,B2DTVCTO,B2NUMERO')
      else if cb_ordem.ItemIndex=1 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOME,B2CODPRO,B2DTVCTO,B2NUMERO')
      else if cb_ordem.ItemIndex=2 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2CODPRO,B2DTVCTO,B2NUMERO')
      else if cb_ordem.ItemIndex=3 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME,B2DTVCTO,B2NUMERO')
      else if cb_ordem.ItemIndex=4 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2SEQ');

      end
   else
      begin
         if cb_ordem.ItemIndex=0 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME')
      else if cb_ordem.ItemIndex=1 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOME,B2CODPRO')
      else if cb_ordem.ItemIndex=2 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2CODPRO')
      else if cb_ordem.ItemIndex=3 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME')
      else if cb_ordem.ItemIndex=4 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2SEQ');
      end;
   end
else
   begin
   Qr_BAL02.Close;
   Qr_BAL02.SQL.Clear;
   Qr_BAL02.SQL.Add('Select  max(B2CODEMP) as B2CODEMP, '
                   +'        max(B2CHAVE) as B2CHAVE, '
                   +'        max(B2SEQ) as  B2SEQ, '
                   +'        B2CODPRO, '
                   +'        max(B2NUMERO) as B2NUMERO, '
                   +'        max(B2DTVCTO) as B2DTVCTO, '
                   +'        sum(B2QTD) as B2QTD, ');
   if Qr_Bal01B1STATUS.AsInteger<2 then
      begin
      Qr_BAL02.SQL.Add(' max('+mCampoQtd_Cadpro+') AS B2QTDEST, '
                      +' sum(B2QTD-decode(rownum,1,'+mCampoQtd_Cadpro+',0)) as B2DIFER, ')
//                      +' 0sum(B2QTD-'+mCampoQtd_Cadpro+') as B2DIFER, ')
      end
   else
      begin
      Qr_BAL02.SQL.Add(' sum(B2QTDEST) AS B2QTDEST, '
                      +' sum(B2DIFER) as B2DIFER, ');
      end;
   Qr_BAL02.SQL.Add('        max(B2STATUS) as B2STATUS, '
                   +'        max(B2STATUS) as B2TIPOPRO, '
                   +'        max(PDNOME) as PDNOME, '
                   +'        max(PDUND) as  PDUND '
                   +'        ,max(PDNOMFOR) as PDNOMFOR  '
                   +'        ,max(PDCODFOR) as PDCODFOR '
                   +'        ,max(PDSECAO) as PDSECAO '
                   +'        ,max(PDNOMRAM) as PDNOMRAM '
                   +'        ,max(PDCODRAM) as PDCODRAM '
                   +'        ,max(PDNOMCON) as  PDNOMCON '
                   +'        ,max(PDCODCON) as PDCODCON '
                   +'        ,max(PDNOMGRU) AS PDNOMGRU '
                   +'        ,max(PDCODGRU) as PDCODGRU '
                   +'        ,max(PDNOMTIP) as PDNOMTIP '
                   +'        ,max(PDCODTIP) as  PDCODTIP '
                   +','+mCampoGrupo+' AS NOMGRU '
                   +','+mCampoSubGru+' AS SUBGRU '
                   +' from CADBAL02,CADPRO where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'', ' B2CODEMP=0'+IntTostr(codemp)+' and ')
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'', ' PDCODEMP=B2CODEMP and ')
                   +' PDCODPRO=B2CODPRO '
                   +' and B2CHAVE=0'+InttoStr(mchave)
                    +IIF(CB_SOERRADO.Checked,
                    ' and (B2QTD-decode('+mCampoQtd_CadPro+',null,0,'+mCampoQtd_CadPro+'))<>0 ','')

//                  +' and (B2QTD-decode('+mCampoQtd_CadPro+',null,0,'+mCampoQtd_CadPro+'))<>0 '
                   );

   Qr_BAL02.SQL.Add(' Group by B2CODPRO ');
   if trim(mOrdemGrupo)<>'' then
      mOrdemGrupo:=mOrdemGrupo+',';
   if (ValInt(copy(mpseg,4,2))=02)  then  // grades de cores tamanhos
      begin
      if cb_ordem.ItemIndex=0 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME')
      else if cb_ordem.ItemIndex=1 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOME,B2CODPRO')
      else if cb_ordem.ItemIndex=2 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2CODPRO')
      else if cb_ordem.ItemIndex=3 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME')
      else if cb_ordem.ItemIndex=4 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2SEQ');

      end
   else
      begin
         if cb_ordem.ItemIndex=0 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME')
      else if cb_ordem.ItemIndex=1 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDNOME,B2CODPRO')
      else if cb_ordem.ItemIndex=2 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2CODPRO')
      else if cb_ordem.ItemIndex=3 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME')
      else if cb_ordem.ItemIndex=4 then
         Qr_BAL02.SQL.Add('order by '+mOrdemGrupo+'B2SEQ');
      end;
   end;

//Qr_BAL02.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

try
   Qr_BAL02.Open;
except on e : exception do
    ex_erroSql_Novo(Qr_Bal02,1590,'func Erro:'+e.Message ,'CADEST');
    end;

//ex_erroSql_Novo(Qr_Bal02,1590,'func Erro:' ,'CADEST');

mlin:=0;
mpag:=0;
mtotqtd:=0;
mtotest:=0;
Qr_BAL02.First;
testeform := TFrm_ManBal(FindGlobalComponent('form_impres_manbal'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_manbal);

form_impres_manbal.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_BAL02.Eof  do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_manbal.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_manbal.Rdprint1.Impf(01,65,'Pagina.:    '+FormatFloat('0000',mpag),mnormal);


      form_impres_manbal.Rdprint1.ImpF(02,01,'Balanco de Mercadorias..',mnormal);
      form_impres_manbal.Rdprint1.ImpF(02,65,'Data: '+FormatDateTime(fdt2, pdatasis),mnormal);

      form_impres_manbal.RDprint1.ImpF(03,01,Centra('Número do Balanco: '+Qr_Bal01B1CHAVE.AsString+' Data: '+FormatDateTime(fdt2,Qr_Bal01B1DATA.Value)+' '+Trim(Qr_Bal01B1MOT01.Value),' ',80),mneg);
      mlin:=4;


      if CB_QUEBRA.ItemIndex<>0 then
         begin
         form_impres_manbal.RDprint1.impf(mlin,01,'Grupo: '+Qr_bal02NOMGRU.AsString,mneg);
         mlin:=mlin+1;
         if CB_QUEBRA.ItemIndex=6 then
            begin
            form_impres_manbal.RDprint1.impf(mlin,01,'Sub-Grupo: '+Qr_bal02NOMGRU.AsString,mneg);
            mlin:=mlin+1;
            end;
         end;
      mGrupo_ant :=Qr_bal02NOMGRU.AsString;
      mSubGru_ant:=Qr_bal02SUBGRU.AsString;

      mlin:=mlin+1;
      if Log_TipoLote=1 then
         begin
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+--------|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp);
         mlin:=mlin+1;
         form_impres_manbal.Rdprint1.Impf(mlin,01,'| Codigo | Descricao                      '+iif(CB_AGRUPARCODIGO.Checked,'             |','| lOTE |Vcto.|')+'Quantidade| Estoque  |Diferenca |   %  |',m12ccp);
         mlin:=mlin+1;
         end
      else
         begin
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+----------|-------------------------------------------+----------+----------+----------+------+',m12ccp);
         mlin:=mlin+1;
         form_impres_manbal.Rdprint1.Impf(mlin,01,'|  Codigo  | Descricao                                 |Quantidade| Estoque  |Diferenca |   %  |',m12ccp);
         mlin:=mlin+1;
         end;

      end;
//   if Qr_Bal01B1STATUS.Value=2 then
//      begin
      mperfdif:=Qr_BAL02B2QTD.Value-Qr_BAL02B2QTDEST.Value;
      if (mperfdif<>0) and (Qr_BAL02B2QTD.AsFloat<>0) then
         begin
         try
            mperfdif:=(mperfdif*100)/Qr_BAL02B2QTD.Value;
         except
            mperfdif:=0;
            end;
         end;
//      end
//   else
//      mperfdif:=0;
   mtotqtd:=mtotqtd+Qr_BAL02B2QTD.Value;
   mtotest:=mtotest+Qr_BAL02B2QTDEST.Value;

   mlin:=mlin+1;
   if Log_TipoLote=1 then
      begin
      form_impres_manbal.Rdprint1.ImpF(mlin,01,'|'
                           +insere2(Qr_BAL02B2CODPRO.AsString,' ',08)+'|'
                           +iif(CB_AGRUPARCODIGO.Checked,
                              insere2(Qr_BAL02PDNOME.Value,' ',45)
                              ,insere2(Qr_BAL02PDNOME.Value,' ',32)
                              +'|'+insere2(Qr_BAL02B2NUMERO.AsString,' ',06)
                              +'|'+insere2(FormatDatetime('mm/yy', Qr_BAL02B2DTVCTO.Value),' ',05))
                           +'|'
                           +insere(FormatFloat(mcasqtd, Qr_BAL02B2QTD.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, Qr_BAL02B2QTDEST.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, (Qr_BAL02B2QTD.Value-Qr_BAL02B2QTDEST.Value)),' ',10)+'|'
                           +insere(FormatFloat(mcasas,  mperfdif),' ',06)+'|',m12ccp);

      end
   else
      begin
      form_impres_manbal.Rdprint1.ImpF(mlin,01,'|'
                           +iif(CB_AGRUPARCODIGO.Checked,
                           insere2(Qr_BAL02B2CODPRO.AsString,' ',10)
                           ,insere2(Formatfloat('000000',Qr_BAL02B2CODPRO.AsFloat)
                                   +'/'+Qr_BAL02B2NUMERO.AsString,' ',10))
                           +'|'
                           +insere2(Qr_BAL02PDNOME.Value,' ',45)
                           +'|'
                           +insere(FormatFloat(mcasqtd, Qr_BAL02B2QTD.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, Qr_BAL02B2QTDEST.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, (Qr_BAL02B2QTD.Value-Qr_BAL02B2QTDEST.Value)),' ',10)+'|'
                           +insere(FormatFloat(mcasas,  mperfdif),' ',06)+'|',m12ccp);

      end;


{     end


para lote

| Codigo | Descricao                      | lOTE |Vcto.|Quantidade| Estoque  |Diferenca |   %  |
+--------|--------------------------------+------+-----+----------+----------+----------+------+
|12345678|12345678901234567890123456798012|789056|01/07|123123,123|123123,123|123123,123|123,12|


para normal ou gradee
|  Codigo  | Descricao                                 |Quantidade| Estoque  |Diferenca |   %  |
+----------|-------------------------------------------+----------+----------+----------+------+
|1234567890|1234567890123456789012345679801234567890123|123123,123|123123,123|123123,123|123,12|

| Codigo   |Descricao                             |Quantidade| Estoque  |%Difer|
+----------+--------------------------------------+----------+----------+------+
|1234567890|12345678901234567890123456798012345678|123123,123|123123,123|123,12|

| Codigo   |Descricao                             |Quantidade| Estoque  |%Difer|
+----------+--------------------------------------+----------+----------+------+
|1234567890|12345678901234567890123456798012345678|123123,123|123123,123|123,12|
}

   Qr_BAL02.Next;
   if Qr_BAL02.Eof then
      begin
      mlin:=mlin+1;
      mperfdif:=0;
      if Qr_Bal01B1STATUS.Value=2 then
         begin
         mperfdif:=mtotqtd-mtotest;
         try
            mperfdif:=(mperfdif*100)/mtotqtd;
         except
            mperfdif:=0;
            end;
         end;

      form_impres_manbal.Rdprint1.ImpF(mlin,01,'|'+insere2(' ',' ',10)+'|'
                           +insere2('Totais','.',38)+'|'
                           +insere(FormatFloat(mcasqtd, mtotqtd),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, mtotest),' ',10)+'|'
                           +insere(FormatFloat(mcasqtd, mtotqtd-mtotest),' ',10)+'|'
                           +insere(FormatFloat(mcasas,  mperfdif),' ',06)+'|',m12ccp);


      if Log_TipoLote=1 then
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+--------|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp)
      else
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+----------|-------------------------------------------+----------+----------+----------+------+',m12ccp);
      mlin:=mlin+1;
      if form_impres_manbal.RDprint1.Setup then form_impres_manbal.RDprint1.Fechar;
      form_impres_manbal.free;
      form_impres_manbal:=nil;
      end
   else if mlin>60 then
      begin
      mlin:=mlin+1;
      if Log_TipoLote=1 then
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+Continua|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp)
      else
         form_impres_manbal.Rdprint1.Impf(mlin,01,'+Continua..|-------------------------------------------+----------+----------+----------+------+',m12ccp);
      form_impres_manbal.RDprint1.Novapagina;
      mlin:=0;
      end
   else
      begin
      if CB_QUEBRA.ItemIndex<>0 then
         begin
         if CB_QUEBRA.ItemIndex=6 then
            begin
            if mSubGru_ant<>Qr_bal02SUBGRU.AsString then
               begin
               if CB_SEPPAG.Checked then
                  begin
                  mlin:=mlin+1;
                  if Log_TipoLote=1 then
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+Continua|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp)
                  else
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+Continua..|-------------------------------------------+----------+----------+----------+------+',m12ccp);
                  form_impres_manbal.RDprint1.Novapagina;
                  mlin:=0;
                  end
               else
                  begin
                  mlin:=mlin+1;
                  if Log_TipoLote=1 then
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+--------|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp)
                  else
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+----------|-------------------------------------------+----------+----------+----------+------+',m12ccp);
                  mlin:=mlin+1;
                  form_impres_manbal.RDprint1.impf(mlin,01,'Grupo: '+Qr_bal02NOMGRU.AsString,mneg);
                  mlin:=mlin+1;
                  form_impres_manbal.RDprint1.impf(mlin,01,'Sub-Grupo: '+Qr_bal02NOMGRU.AsString,mneg);
                  mlin:=mlin+1;
                  if Log_TipoLote=1 then
                     begin
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+--------|--------------------------------'+iif(CB_AGRUPARCODIGO.Checked,'--------------','+------+-----+')+'----------+----------+----------+------+',m12ccp);
                     mlin:=mlin+1;
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'| Codigo | Descricao                      '+iif(CB_AGRUPARCODIGO.Checked,'             |','| lOTE |Vcto.|')+'Quantidade| Estoque  |Diferenca |   %  |',m12ccp);
                     mlin:=mlin+1;
                     end
                  else
                     begin
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'+----------|-------------------------------------------+----------+----------+----------+------+',m12ccp);
                     mlin:=mlin+1;
                     form_impres_manbal.Rdprint1.Impf(mlin,01,'|  Codigo  | Descricao                                 |Quantidade| Estoque  |Diferenca |   %  |',m12ccp);
                     mlin:=mlin+1;
                     end;
                  end;
               mGrupo_ant :=Qr_bal02NOMGRU.AsString;
               mSubGru_ant:=Qr_bal02SUBGRU.AsString;
               end;
            end
         else
            begin
            if mGrupo_ant<>Qr_bal02NOMGRU.AsString then
               begin
               if CB_SEPPAG.Checked then
                  begin
                  mlin:=mlin+1;
                  form_impres_manbal.RDprint1.ImpF(mlin,01,insere2('Continua','-',80),mnormal);
                  form_impres_manbal.RDprint1.Novapagina;
                  mlin:=0;
                  end
               else
                  begin
                  mlin:=mlin+1;
                  form_impres_manbal.RDprint1.impf(mlin,01,'Grupo: '+Qr_bal02NOMGRU.AsString,mneg);
                  end;
               mGrupo_ant :=Qr_bal02NOMGRU.AsString;
               mSubGru_ant:=Qr_bal02SUBGRU.AsString;
               end;
            end;
         end;
      end;
   end;
moper:=3;
BBLOCALIZAR.Click;
moper:=0;

end;

procedure TFrm_ManBal.DATAAJUExit(Sender: TObject);
begin
if Trim(DATAAJU.Text)<>'/  /' then
   begin
   Try
      DATAAJU.Text:=FormatDateTime(fdt2,StrtoDate(DATAAJU.Text));
   except
      fMensagem('Data Inválida!',0,['0'],0);
      DATAAJU.SetFocus;
      end;
   end;

end;

procedure TFrm_ManBal.MOT02Exit(Sender: TObject);
begin
if fTestaTam(0,60,MOT02.Text,'') then
   MOT02.Text:=copy(mot02.Text,1,60);

end;

procedure TFrm_ManBal.MOT03Exit(Sender: TObject);
begin
if fTestaTam(0,60,MOT03.Text,'') then
   MOT03.Text:=copy(mot03.Text,1,60);

end;

procedure TFrm_ManBal.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if not CB_LEITOR.Checked then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODPRO.Text:=fChamaPro(2,'Frm_ManBal',key);
      key:=#0;
      end;
   end;

end;

procedure TFrm_ManBal.CODPROExit(Sender: TObject);
var
mCodPro_Ori: Real;
begin
if not (LOTE.Focused) and not (QTD.Focused) then
   exit;
if Trim(CODPRO.Text)='' then
   exit;
if (CB_LEITOR.Checked) then
   begin
   CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
   if ValFloat(QTD.Text)<=1 then
      Qtd.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(QTD.Text)=0 then
      Qtd.Text:=FormatFloat(mcasqtd, 1);
   LOTE.Text:=pRet_Lote;
   if pRet_DtVcto<=pdatanula then
      DTVCTO.Text:='/  /'
   else
      DTVCTO.Text:=FormatDatetime(fdt2, pRet_DtVcto);
   end;

CODPRO.Text:=fdeixanum(CODPRO.Text);
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
   if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
      begin
      fMensagem('Produto não cadastrado!',0,['0'],0);
      CODPRO.setfocus;
      exit;
      end;
   end;
NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
UND.Text   :=DM1.Tb_ProPDUND.Value;
if (CB_LEITOR.Checked) then
   begin
   if (Log_TipoLote=2) then
      begin
      if not flcadlgc(mfilial,1,0,Trim(CODPRO.Text),lote.Text,'') then
         begin
         fMensagem('Grade Nao cadastrada!',0,['0'],0);
         CODPRO.SetFocus;
         exit;
         end;
      end;
   ITEM_GRAVAR.Click;
   end;
end;

procedure TFrm_ManBal.LOTEExit(Sender: TObject);
begin
if fTestaTam(0,20,LOTE.Text,'') then
   LOTE.Text:=copy(LOTE.Text,1,20);
if Log_TipoLote=2 then
   begin
   if Trim(LOTE.Text)<>'' then
      begin
      if not flcadlgc(mfilial,1,0,Trim(CODPRO.Text),lote.Text,'') then
         begin
         fMensagem('Grade Nao cadastrada!',0,['0'],0);
         CODPRO.SetFocus;
         exit;
         end;
      end;
   end;


end;

procedure TFrm_ManBal.QTDExit(Sender: TObject);
begin
if ValFloat(QTD.Text)=0 then
   exit;
QTD.Text:=FormatFloat(mcasqtd, ValFloat(QTD.Text));

end;

procedure TFrm_ManBal.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   CODPRO.Text:=fChamaPro(2,'Frm_ManBal','');
   key:=0;
   end;

end;

procedure TFrm_ManBal.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
  
begin

if (arow>0) and (Acol=mColQtd) then
   begin

//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_ManBal.bbAgruparClick(Sender: TObject);
var
mtabTemp: String;
begin

if moper<>5 then
   begin
   if fMensagem('Quer realmente Agrupar os Produtos de Mesmo Código?',0,['1','2'],2)<>mrYes then
      exit;
   end;   

if Qr_Bal01B1STATUS.Value=2 then
   begin
   fMensagem('Balanço ja Ajustado, inválido!',0,['0'],0);
   exit;
   end;
if Qr_Bal01B1SITUACAO.Value=1 then
   begin
   fMensagem('Registro em manutenção!',0,['0'],0);
   exit;
   end;

mtabTemp :=fProcTemp(01);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from user_tab_columns where '
                  +' TABLE_NAME='+chr(39)+'CADBAL02'+chr(39));
DM1.Query2.Open;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.sql.Add('Create Table '+mtabTemp+' as ');
DM1.Query1.SQL.add(' Select sum(B2QTD) as B2QTD, '
                  +' sum(B2QTDEST) as B2QTDEST, '
                  +' min(B2SEQ) as B2SEQ');
DM1.Query2.First;
mcinst:=',';
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTD') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTDEST') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
DM1.Query1.SQL.add(' from CADBAL02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString
                  +' group by ');
mcinst:=' ';
DM1.Query2.First;
mcinst:=' ';
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTD') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTDEST') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1083,'Frm_ManBal','CADBAL02');
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Delete from CADBAL02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1094,'Frm_ManBal','CADBAL02');
   end;
// restaurando os dados somandos
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADBAL02 (');
DM1.Query1.SQL.Add('B2QTD,B2QTDEST,B2SEQ');
DM1.Query2.First;
mcinst:=',';
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTD') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTDEST') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
DM1.Query1.SQL.add(') Select sum(B2QTD) as qtd, '
                  +' sum(B2QTDEST) as qtdest, '
                  +' min(B2SEQ) as seq');
DM1.Query2.First;
mcinst:=',';
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTD') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTDEST') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
DM1.Query1.SQL.add(' from '+mtabtemp+' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString
                  +' group by ');
mcinst:=' ';
DM1.Query2.First;
mcinst:=' ';
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTD') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2QTDEST') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1158,'Frm_ManBal',mtabTemp);
   end;

// fim dos restauração
// Eliminando tabela temporaria
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('drop table '+mtabTemp);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1170,'Frm_ManBal',mtabTemp);
   end;
moper:=3;
BBLOCALIZAR.Click;
moper:=0;
end;

procedure TFrm_ManBal.bbAjustarClick(Sender: TObject);
var
mqtdaju: Real;
begin

Qr_Bal01.Close;
Qr_Bal01.Open;
if Qr_Bal01.Eof then
   begin
   fMensagem('Este registro foi excluido ou agrupado em outra chave!',0,['0'],0);
   exit;
   end;

if Qr_Bal01B1STATUS.Value=2 then
   begin
   fMensagem('Balanço ja Ajustado, inválido!',0,['0'],0);
   exit;
   end;
if Qr_Bal01B1SITUACAO.Value=1 then
   begin
   fMensagem('Registro em manutenção!',0,['0'],0);
   exit;
   end;
   mCampoQtd_Cadpro:='PDSALDO';
   mCampoQtd_CadEst:='CESALDO';
   mCampoQtd_CadLgc:='CLQTD';;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*),B2CODPRO,B2NUMERO,B2DTVCTO from CADBAL02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString
                  +' group by B2CODPRO,B2NUMERO,B2DTVCTO '
                  +' having count(*)>1 ');
DM1.Query1.Open;
if not DM1.Query1.Eof then
   begin
   mcinst:='Antes de Ajustar tem que agrupar os códigos'+#13
          +'quer fazer isso agora? ';
   if fMensagem(mcinst,0,['1','2'],2)=mrYes then
      begin
      moper:=5;
      bbAgrupar.Click;
      end
   else
      exit;
   end;


if fMensagem('Quer realmente Ajustar o Estoque Agora?',0,['1','2'],2)<>mrYes then
   exit;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Inserindo os Produtos nao digitados!, aguarde...';
Frm_Agde.Show;
verteclado(0);

// evento para zerar os estoques


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADBAL01 set B1STATUS=2,B1DATAAJU=SYSDATE where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
Except
  ex_erroSql(01,1309,'Frm_Manbal','CADBAL01');
  end;





// inserindo os produtos que tem estoque e nao foi lidos

if Log_TipoLote>0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(0,'CADBAL02','B2CODEMP','CLCODEMP','B2CODPRO','CLCODPRO','B2NUMERO','CLNUMERO','B2DTVCTO','CLDTVCTO');
   if la_instrucao<>'' then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADPRO','PDCODEMP','CLCODEMP','PDCODPRO','CLCODPRO');
   if pbanco<>0 then
      la_Join:=la_Join+' AND ( B2CHAVE = '+FDeixaNum(CHAVE.Text)+') '
   else
     la_instrucao:=la_instrucao+' and  B2CHAVE(+)=0'+FDeixaNum(CHAVE.Text);

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Insert into CADBAL02 ('
                     +'B2CODEMP,'
                     +'B2CHAVE,'
                     +'B2CODPRO,'
                     +'B2NUMERO,'
                     +'B2DTVCTO,'
                     +'B2QTD, '
                     +'B2QTDEST, '
                     +'B2DIFER, '
                     +'B2SEQ, '
                     +'B2STATUS, '
                     +'B2TIPOPRO '
                     +' ) Select '
                     +'CLCODEMP, '
                     +Qr_Bal01B1CHAVE.AsString+' as chave,'
                     +'CLCODPRO, '
                     +'CLNUMERO, '
                     +'CLDTVCTO, '
                     +'0 as qtd, '
                     +'DECODE('+mCampoQtd_CadLgc+',null,0,'+mCampoQtd_CadLgc+') as CLQTD, '
                     +'0 as difer, '
                     +'0 as seq, '
                     +' 2 as status,'
                     +Qr_Bal01B1TIPOPRO.AsString+' as tipopro '
                     +' from cadlgc'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADEST',[]),'',
                     ' CLCODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                     +' CLFILIAL=0'+Inttostr(mfilial)+' and '
                     +' B2CODPRO is null '
                     +' and '+mCampoQtd_CadLgc+'<>0 '
                     +iif(la_instrucao='','',' and '+la_instrucao)
                     );
  mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODGRU '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODRAM '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODTIP '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODCON '+mcinst2);

  if trim(edt_Marca.Text)<>'' then
    DM1.Query1.sql.Add(' and PDMARCA like '+QuotedStr(edt_Marca.Text+'%'));

  if trim(CODPRO_TESTE.Text)<>'' then
    DM1.Query1.SQL.Add(' and CLCODPRO=0'+Trim(CODPRO_TESTE.Text));

  if RGTPRO.ItemIndex<11 then
    begin
    dm1.Query1.SQL.Add(' and PDNIVEL='+IntToStr(RGTPRO.ItemIndex));
    end;


  DM1.Query1.SQL.Add(' and CLFILIAL ='+IntToStr(mfilial));
  try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
      end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

  // APAGANDO LOTES

   fAjustarHistoricoProduto_balanco(5,fsonumero(chave.Text));

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add(' delete from cadlgc where 1=1 and            '
                     +' CLFILIAL ='+IntToStr(mfilial)+' and clcodpro in ( '
                     +' select unique b2codpro from cadbal02   '
                     +' where 1=1 and  B2CHAVE(+)=0'+FDeixaNum(CHAVE.Text)
                     +iif(DM1.Qr_tid.Locate('TINOME','CADEST',[]),'',
                      ' and B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString)
                     +')');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
      end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');
  // INSERIR CADEST
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('insert into CADEST  (   CECODEMP   ,CEFILIAL   ,CECODPRO   ,CESALDO   ,CESALDO_RESERVADO   ) '
                    +' Select 1  ,'+IntToStr(mfilial)+' as b2filial,b2codpro,sum(b2qtd) as b2qtd,0 '
                    +'  from cadbal02 where 1=1 and  B2CHAVE=0'+FDeixaNum(CHAVE.Text)
                   +iif(DM1.Qr_tid.Locate('TINOME','CADEST',[]),'',
                      ' and B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString)
                      +' and B2QTD>0 '
                      +' and not exists (select CECODPRO from cadest where 1=1 and CECODEMP=1 and CECODPRO=B2CODPRO AND CEFILIAL='+IntToStr(mfilial)+')'
                      +' group by b2codpro '
                      );
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except on e : exception do
       ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
       end;




   // INSERINDO LOTES

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add(' insert into cadlgc(clcodemp, clcodpro, clnumero,     '
                     +' cldtvcto, clqtd, clfilial) Select b2codemp, b2codpro, b2numero,'
                     +' b2dtvcto, b2qtd, '+IntToStr(mfilial)+' as b2filial '
                     +' from cadbal02 where 1=1 and  B2CHAVE(+)=0'+FDeixaNum(CHAVE.Text)
                     +iif(DM1.Qr_tid.Locate('TINOME','CADEST',[]),'',
                      ' and B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString)
                      +' and B2QTD>0 '
                      );

  try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
      end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

   //  CORRIGINDO CADPRO

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add(' update cadpro set pdsaldo = (select '
                     +'  sum(clqtd) from cadlgc where clcodpro=pdcodpro) ');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
      end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

   // CORRIGINDO CADEST

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('update cadest set cesaldo = (select '
                     +' sum(clqtd) from cadlgc where clcodpro=cecodpro '
                     +' and CLFILIAL=CEFILIAL )  '
                     );
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,111,'func Erro:'+e.Message ,'CADNE');
      end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

  fAjustarHistoricoProduto_balanco(3,fsonumero(chave.Text));
  end
else
  begin
  fIncluirzerados;

  // zerando estoque dos produtos sem lote
  // zerando cadpro
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' update CADPRO set ');
  dm1.Query1.SQL.Add('   PDSALDO_PRAT=0, ');
  dm1.Query1.SQL.Add('   PDSALDO_DEP=0,  ');
  dm1.Query1.SQL.Add('   PDSALDO_REP=0,  ');
  dm1.Query1.SQL.Add('   PDSALDO=0   where 1=1    ');
  mcinst2:=fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP','');
  if Trim(mcinst2)<>'' then
    dm1.Query1.SQL.Add(' and '+mcinst2);

  if RGTPRO.ItemIndex<11 then
    begin
    dm1.Query1.SQL.Add(' and PDNIVEL='+IntToStr(RGTPRO.ItemIndex));
    end
  else if RGTPRO.ItemIndex=11 then
    begin
    dm1.Query1.SQL.Add(' and PDNIVEL<>4');
    end;

  mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODGRU '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODRAM '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODTIP '+mcinst2);

  mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODCON '+mcinst2);

  if trim(edt_Marca.Text)<>'' then
    DM1.Query1.sql.Add(' and PDMARCA like '+QuotedStr(edt_Marca.Text+'%'));


  try
    dm1.Query1.ExecSQL;
  except
    fmensagem('Erro ao Zerar Estoque : CADPRO ',0,['0'],0);
    dm1.Query1.SQL.SaveToFile('c:\sqlpro.txt');
    end;
  // zerando cadest
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' update CADEST set ');
  dm1.Query1.SQL.Add('   CESALDO_PRAT=0, ');
  dm1.Query1.SQL.Add('   CESALDO_DEP=0,  ');
  dm1.Query1.SQL.Add('   CESALDO_REP=0,  ');
  dm1.Query1.SQL.Add('   CESALDO=0  where 1=1     ');
  mcinst2:=fla_EmpBaixaAlta(0,'CADPRO','',codemp,'CECODEMP','');
  if Trim(mcinst2)<>'' then

    dm1.Query1.SQL.Add(' and '+mcinst2);
  dm1.Query1.SQL.Add(' and CEFILIAL=0'+Inttostr(mfilial));


  DM1.Query1.Sql.add(fVerProduto);

  try
    dm1.Query1.ExecSQL;
  except
    fmensagem('Erro ao Zerar Estoque : CADEST ',0,['0'],0);
    dm1.Query1.SQL.SaveToFile('c:\sqlest.txt');

    end;

  Frm_Agde.Label1.Caption:='Ajustando o Estoque!, aguarde...';
  Frm_Agde.Show;
  verteclado(0);

  dm1.Query4.Close;
  dm1.Query4.SQL.Clear;
  dm1.Query4.SQL.Add(' select * from CADBAL02 where  B2QTD>0 ');
  dm1.Query4.SQL.Add(' and B2CHAVE='+CHAVE.Text+' and B2CODEMP='+IntToStr(codemp));
  dm1.Query4.Open;

  dm1.Query4.First;
  while not dm1.Query4.Eof do
    begin
    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add(' update CADPRO set ');
    dm1.Query1.SQL.Add('   PDSALDO=PDSALDO+'+mudavp(DM1.Query4.FieldByName('B2QTD').AsString));
    dm1.Query1.SQL.Add(' where             ');
    dm1.Query1.SQL.Add('   PDCODPRO='+DM1.Query4.FieldByName('B2CODPRO').AsString);
    mcinst2:=fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP','');
    if Trim(mcinst2)<>'' then
      begin
      dm1.Query1.SQL.Add(' and '+mcinst2);
      end;

    mcinst:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst)<>'' then
      DM1.Query1.sql.Add(' and PDCODGRU '+mcinst);

    mcinst:=fItensListBox(0,lbx_codram,OMITIR_RAM);
    if trim(mcinst)<>'' then
      DM1.Query1.sql.Add(' and PDCODRAM '+mcinst);

    mcinst:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
    if trim(mcinst)<>'' then
      DM1.Query1.sql.Add(' and PDCODTIP '+mcinst);

    mcinst:=fItensListBox(0,lbx_codcon,OMITIR_CON);
    if trim(mcinst)<>'' then
      DM1.Query1.sql.Add(' and PDCODCON '+mcinst);

    if trim(edt_Marca.Text)<>'' then
      DM1.Query1.sql.Add(' and PDMARCA like '+QuotedStr(edt_Marca.Text+'%'));

    try
      dm1.Query1.ExecSQL;
    except
      fmensagem('Erro ao Inserir Estoque : CADPRO',0,['0'],0);
     dm1.Query1.SQL.SaveToFile('c:\sqlpro2.txt');
      end;

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add(' update CADEST set ');
    dm1.Query1.SQL.Add('   CESALDO=CESALDO+'+mudavp( DM1.Query4.FieldByName('B2QTD').AsString));
    dm1.Query1.SQL.Add(' where             ');
    dm1.Query1.SQL.Add('   CECODPRO='+DM1.Query4.FieldByName('B2CODPRO').AsString);
    dm1.Query1.SQL.Add('  and CEFILIAL='+Inttostr(mfilial));



    mcinst2:=fla_EmpBaixaAlta(0,'CADPRO','',codemp,'CECODEMP','');
    if Trim(mcinst2)<>'' then
      begin
      dm1.Query1.SQL.Add(' and '+mcinst2);
      end;

    try
      dm1.Query1.ExecSQL;
    except
      fmensagem('Erro ao Inserir Estoque : CADEST',0,['0'],0);
      dm1.Query1.SQL.SaveToFile('c:\sqlest.txt');
      end;

     dm1.Query4.Next;
     end;
  fAjustarHistoricoProduto_balanco(3,fsonumero(chave.Text));

  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADBAL02 set B2STATUS=2 where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
Except
  ex_erroSql(01,1490,'Frm_Manbal','CADBAL02');
  end;


fmensagem('Concluido',0,['0'],0);
BBLIMPAR.Click;
frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);

end;

function TFrm_ManBal.fverProduto:String;
var
mResult: string;
begin
mResult:='';

if (lbx_codgru.Items.Count>0) or (lbx_codram.Items.Count>0) or
   (lbx_codtip.Items.Count>0) or (lbx_codcon.Items.Count>0) or (trim(edt_Marca.Text)<>'')
   or (RGTPRO.ItemIndex<12) then
   begin
   mResult:=' and exists (select PDNIVEL from CADPRO where PDCODPRO=CECODPRO ';

   if RGTPRO.ItemIndex<11 then
      mResult:=mResult+' and PDNIVEL='+IntToStr(RGTPRO.ItemIndex)
   else if RGTPRO.ItemIndex=11 then
      mResult:=mResult+' and PDNIVEL<>4 ';
  mcinst2:=fla_EmpBaixaAlta(0,'CADPRO','',codemp,'CECODEMP','');
  if Trim(mcinst2)<>'' then
    mResult:=mResult+' and '+mcinst2;

  mcinst:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
  if trim(mcinst)<>'' then
     mResult:=mResult+' and PDCODGRU '+mcinst;

  mcinst:=fItensListBox(0,lbx_codram,OMITIR_RAM);
  if trim(mcinst)<>'' then
     mResult:=mResult+' and PDCODRAM '+mcinst;


  mcinst:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
  if trim(mcinst)<>'' then
     mResult:=mResult+' and PDCODTIP '+mcinst;

  mcinst:=fItensListBox(0,lbx_codcon,OMITIR_CON);
  if trim(mcinst)<>'' then
     mResult:=mResult+' and PDCODCON '+mcinst;

  if trim(edt_Marca.Text)<>'' then
     mResult:=mResult+' and  PDMARCA like '+QuotedStr(edt_Marca.Text+'%');
  mresult:=mresult+')';
  end;
result := mResult;
end;



function TFrm_ManBal.fBuscarEstoque(ptipo: Integer):Boolean;
var
mtabtemp: String;
begin
mtabTemp :=fProcTemp(01);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from user_tab_columns where '
                  +' TABLE_NAME='+chr(39)+'CADBAL02'+chr(39));
DM1.Query2.Open;
if Log_TipoLote>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.sql.Add('Create Table '+mtabTemp+' as ');
   DM1.Query1.sql.Add(' Select B2CODEMP ');
   DM1.Query1.sql.Add(' ,B2CHAVE '
                     +',B2SEQ   '
                     +',B2CODPRO '
                     +',decode(B2NUMERO,null,'+chr(39)+' '+chr(39)+', B2NUMERO ) as B2NUMERO '
                     +',B2DTVCTO '
                     +',B2QTD '
                     +',DECODE('+mCampoQtd_CadLgc+',null,0,'+mCampoQtd_CadLgc+') AS B2QTDEST '
                     +',B2DIFER '
                     +',B2STATUS '
                     +',B2TIPOPRO ');
   DM1.Query1.SQL.add(' from CADBAL02,CADLGC where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and CLCODEMP(+)=B2CODEMP and ')
                     +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString
                     +' and CLCODPRO(+)=B2CODPRO '
                     +' and CLNUMERO(+)=B2NUMERO '
                     +' and CLDTVCTO(+)=B2DTVCTO '
                     +' and CLFILIAL(+)='+inttostr(mfilial)
                     );
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.sql.Add('Create Table '+mtabTemp+' as ');
   DM1.Query1.sql.Add(' Select B2CODEMP ');
   DM1.Query1.sql.Add(' ,B2CHAVE '
                     +',B2SEQ   '
                     +',B2CODPRO '
                     +',decode(B2NUMERO,null,'+chr(39)+' '+chr(39)+', B2NUMERO) AS B2NUMERO'
                     +',B2DTVCTO '
                     +',B2QTD '
                     +','+mCampoQtd_CadEst+' AS B2QTDEST '
                     +',B2DIFER '
                     +',B2STATUS '
                     +',B2TIPOPRO ');
   DM1.Query1.SQL.add(' from CADBAL02,CADEST where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and CECODEMP=B2CODEMP and ')
                     +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString
                     +' and CECODPRO=B2CODPRO '
                     +' and CEFILIAL=0'+Inttostr(mfilial)

                     );
   end;

mcinst:=' ';
//dM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1400,'Frm_ManBal','CADBAL02');
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Delete from CADBAL02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1411,'Frm_ManBal','CADBAL02');
   end;
// restaurando os dados somandos
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADBAL02 (');
DM1.Query2.First;
mcinst:=' ';
While not DM1.Query2.Eof do
   begin
   DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
DM1.Query1.SQL.add(') Select ');
DM1.Query2.First;
mcinst:=' ';
While not DM1.Query2.Eof do
   begin
   if DM1.Query2.FieldByName('COLUMN_NAME').AsString='B2SEQ' then
      DM1.Query1.SQL.add(mcinst+' rownum as B2SEQ ')
   else
      DM1.Query1.SQL.Add(mcinst+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   mcinst:=',';
   DM1.Query2.Next;
   end;
DM1.Query1.SQL.add(' from '+mtabtemp+' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' B2CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
mcinst:=' ';
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1442,'Frm_ManBal',mtabTemp);
   end;

// fim dos restauração
// Eliminando tabela temporaria
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('drop table '+mtabTemp);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1454,'Frm_ManBal',mtabTemp);
   end;

result := true;
end;

procedure TFrm_ManBal.CB_LEITORClick(Sender: TObject);
begin
if CB_LEITOR.Checked then
   QTD.Text:=FormatFloat(mcasqtd, 1)
else
   QTD.Text:='';
end;

procedure TFrm_ManBal.LOTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
   Frm_Conslot.CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   Frm_ConsLot.NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
   Frm_ConsLot.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
      Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
      Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   Frm_ConsLot.mConsLotOrigem:=1;
   Frm_ConsLot.ShowModal;
   if trim(Frm_ConsLot.plote)<>'' then
      LOTE.Text:=Frm_ConsLot.plote;
   if Trim(Frm_ConsLot.pdtvcto)<>'' then
      DTVCTO.Text:=Frm_ConsLot.pdtvcto;
   FreeandNil(Frm_Conslot);

   end;

end;

procedure TFrm_ManBal.bbAgruBalClick(Sender: TObject);
begin
Application.CreateForm(TFrm_AgruBal, Frm_AgruBal);
Frm_AgruBal.ShowModal;
Frm_AgruBal.Free;
BBLIMPAR.Click;
end;

procedure TFrm_ManBal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            DATA.Text:=FormatDatetime(fdt2,date);
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;


if (moper=1) and not (Qr_Bal01B1CHAVE.IsNull) then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADBAL01 set B1SITUACAO=0 '
                     +' where B1CODEMP=0'+Qr_Bal01B1CODEMP.AsString
                     +' and B1CHAVE=0'+Qr_Bal01B1CHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,1641,'Frm_Manbal','CADBAL01');
      end;
   DM1.Query1.Close;
   end;


end;



procedure TFrm_ManBal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ManBal.CB_LEITOREnter(Sender: TObject);
begin
mboolean:=CB_LEITOR.Checked;

end;

procedure TFrm_ManBal.CB_LEITORExit(Sender: TObject);
begin
if CB_LEITOR.Checked then
   QTD.Text:=FormatFloat(mcasqtd, 1)
else
   QTD.Text:='';
if CB_LEITOR.Checked<>mboolean then
   begin
   fDeletaPadroes(0,'_MANBAL','CB_LEITOR');
   fGravaPadroes(0,'CB_LEITOR'   ,'checked'   ,'_MANBAL',iif(CB_LEITOR.Checked,'true','false'));
   end;


end;

{
function fTestarLotexEstoque(ptipo: Integer): Boolean;
var
  mNomEstLot, mNomCadest, mNomEstPro: String;


begin

DM1.Query1.close;
DM1.query1.SQL.clear;
DM1.query1.SQL.Add('Update CADLGC set CLDTVCTO='+chr(39)+FormatDatetime(fdt, pDatanula)+chr(39)
                  +' where CLDTVCTO is null or CLDTVCTO<'+chr(39)+FormatDatetime(fdt, pDatanula)+chr(39));
try
   DM1.query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
   end;

DM1.Query1.close;
DM1.query1.SQL.clear;
DM1.query1.SQL.Add('Update CADLGC set CLQTD_PRAT=0,CLQTD_REP=0,CLQTD_DEP=0 '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CLQTD=0' );
try
   DM1.query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
   end;

mNomEstLot:='CLQTD';
mNomCadest:='CESALDO';
mNomEstPro:='PDSALDO';
if not DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   mCampoEmp:='CECODEMP,'
else
   mCampoEmp:='';


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('SELECT sum('+mNomEstLot+') AS ESTLOT,'+mNomCadest+' AS ESTOQUE ');
DM1.Query1.SQL.Add(','+mNomEstPro+' AS ESTPRO, ');
DM1.Query1.SQL.Add(mcampoEmp);

DM1.Query1.SQL.Add(' PDCODPRO,PDNOME,PDMARCA,PDUND ');
DM1.Query1.SQL.Add(' FROM CADPRO,CADLGC,CADEST ');
DM1.Query1.SQL.Add(' where  '+
  iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),' CECODPRO=PDCODPRO AND CLCODPRO=PDCODPRO ',
                     ' CECODEMP=PDCODEMP AND CECODPRO=PDCODPRO '
                     +'AND CLCODEMP(+)=PDCODEMP AND CLCODPRO(+)=PDCODPRO '
                     +' and CLFILIAL(+)=CEFILIAL '));
DM1.Query1.SQL.Add(' HAVING SUM('+mNomEstLot+')<>'+mNomCadest);
DM1.Query1.SQL.Add('group by '+mcampoEmp+'PDCODPRO,PDNOME,PDMARCA,PDUND,'+mNomCadest+','+mNomEstPro);
try
   DM1.Query1.Open;
except
   DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
   end;
if not DM1.Query1.IsEmpty then
   begin
// INICIO

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   mcinst:='Update CADEST set '+mNomCadEst+'='+'( Select sum('+mNomEstLot+') from CADLGC '
          +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=CECODEMP and ')
          +' CLCODPRO=CECODPRO ) ';
   DM1.Query1.SQL.Add(mcinst);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADEST SET '+mNomCadEst+'=0 where '+mNomCadEst+' is null');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
      end;



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   mcinst:='Update CADPRO set '+mNomEstPro+'='+'( Select sum('+mNomEstLot+') from CADLGC '
          +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=PDCODEMP and ')
          +' CLCODPRO=PDCODPRO ) ';
   DM1.Query1.SQL.Add(mcinst);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADPRO SET '+mNomEstPro+'=0 where '+mNomEstPro+' is null');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
      end;
   end;

if Log_TipoLote=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADLGC ');
   DM1.Query1.SQL.Add(' WHERE '
                     +iif(DM1.Qr_TID.locate('TINOME','CADLGC',[]),'',' CLCODEMP=0'+IntTostr(codemp)+' and ')
                     +' (CLQTD=0 or CLQTD is null) '
                     +' and (CLQTDR=0 or CLQTDR is null) '
                     +' and (CLQTDT=0 or CLQTDT is null) '
                     +' and (CLQTDC=0 or CLQTDC is null) ');
   try
      DM1.Query1.execSql;
      FDM1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
      end;
   end;
result:=true;
end;
}
procedure TFrm_ManBal.btn_coletorClick(Sender: TObject);
begin
pnl_Coletor.Visible:=True;
end;

procedure TFrm_ManBal.btn_processarClick(Sender: TObject);
var
  Coletor : TextFile;
  mlinha: String;
  xCodpro: String;
  xQtd: String;
  leitor: Boolean;
begin
mQtdDiver:=0;
m_divergencias.Lines.Clear;
leitor:=CB_LEITOR.Checked;
AssignFile(Coletor,arquivo.Text);
Reset(Coletor);
CB_LEITOR.Checked:=False;
while not Eof(Coletor) do
  begin
  ReadLn(Coletor,mlinha);
  xCodpro:=copy(mlinha,1,13);
  xQtd   :=Copy(mlinha,14,6);
  CODPRO.Text:=xCodpro;
  CODPROExit(self);
  QTD.Text:=xQtd;
  ITEM_GRAVARClick(self);
  //  ShowMessage(xCodpro+'-'+xQtd);
  end;
CloseFile(Coletor);
arquivo.Clear;
pnl_Coletor.Visible:=False;
pnl_Divergencias.Visible:=True;
if length((m_divergencias.Lines[0]))=0 then
  pnl_Divergencias.Visible:=False;
end;

procedure TFrm_ManBal.btn_cancelarClick(Sender: TObject);
begin
pnl_Coletor.Visible:=False;
pnl_Coletor.Visible:=False;
end;

procedure TFrm_ManBal.Button1Click(Sender: TObject);
begin
pnl_Divergencias.Visible:=False;
end;

procedure TFrm_ManBal.bbGerarInv_normalClick(Sender: TObject);
begin
Qr_Bal01.Close;
Qr_Bal01.Open;
if Qr_Bal01.Eof then
   begin
   fMensagem('Este registro foi excluido ou agrupado em outra chave!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_ManBal_GerInv, Frm_ManBal_GerInv);
Frm_ManBal_GerInv.edt_nominv.Text:=trim(copy(Qr_Bal01B1MOT01.AsString,1,30));
Frm_ManBal_GerInv.edt_datinv.Date:=Qr_Bal01B1DATA.Value;
Frm_ManBal_GerInv.mChave_Bal:=Qr_Bal01B1CHAVE.AsInteger;
Frm_ManBal_GerInv.mInventariocomGrade:=false;

Frm_ManBal_GerInv.ShowModal;
FreeAndNil(Frm_ManBal_GerInv);

end;

procedure TFrm_ManBal.CODGRUExit(Sender: TObject);
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

procedure TFrm_ManBal.CODGRUKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_ManBal.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ManBal.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ManBal.CODRAMExit(Sender: TObject);
begin
if Trim(CODRAM.Text)<>'' then
  begin
  if not flqr1('RNOME','R','CADRAM','N','RCODRAM',CODRAM.Text) then
    begin
    fmensagem('Ramo Não Cadastrado!',0,['0'],0);
    CODRAM.SetFocus;
    exit;
    end
  else
    begin
    lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODRAM.text := '';
    CODRAM.setfocus;
    end;
  end;
end;

procedure TFrm_ManBal.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_ManBal.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_ManBal.CODTIPExit(Sender: TObject);
begin
if Trim(CODTIP.Text)<>'' then
  begin
  if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTIP.Text) then
    begin
    fmensagem('Tipo Não Cadastrado!',0,['0'],0);
    CODTIP.SetFocus;
    exit;
    end
  else
    begin
    lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODTIP.text := '';
    CODTIP.setfocus;
    end;
  end;
end;

procedure TFrm_ManBal.CODCONExit(Sender: TObject);
begin
if Trim(CODCON.Text)<>'' then
  begin
  if not flqr1('CNOME','C','CADCON','N','CCODCON',CODCON.Text) then
    begin
    fmensagem('Controle Não Cadastrado!',0,['0'],0);
    CODCON.SetFocus;
    exit;
    end
  else
    begin
    lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODCON.text := '';
    CODCON.setfocus;
    end;
  end;

end;

procedure TFrm_ManBal.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODRAM.Text:=fChamaRamPro(0,'frm_lpreco1',key);
  if valfloat(CODRAM.Text)<>0 then
    begin
    lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_RamRCODRAM.AsString))
                                 +' - '+DM1.Tb_RamRNOME.AsString);
    CODRAM.text := '';
    end;
  key:=#0;
  end;

end;

procedure TFrm_ManBal.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODTIP.Text:=fChamaTipPro(0,'frm_lpreco1',key);
  if valfloat(CODTIP.Text)<>0 then
    begin
    lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                 +' - '+DM1.Tb_TproTNOME.AsString);
    CODTIP.text := '';
    end;
  key:=#0;
  end;

end;

procedure TFrm_ManBal.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCON.Text:=fChamaTCon(0,'frm_lpreco1',key);
  if valfloat(CODGRU.Text)<>0 then
    begin
    lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TconCCODCON.AsString))
                                 +' - '+DM1.Tb_TconCNOME.AsString);
    CODCON.text := '';
    end;
  key:=#0;
  end;

end;

procedure TFrm_ManBal.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODRAM.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ManBal.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODTIP.Hint := 'Informe Codigo do Tipo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ManBal.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODCON.Hint := 'Informe Codigo do Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ManBal.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codcon.ItemIndex>=0 then
    lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_ManBal.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin

Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:=DM1.SG_ASSOC.databasename;
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
CB_FILIAL.Items.Clear;
While not Query_filial.Eof do
   begin
   CB_FILIAL.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;

if log_filial_padrao=0 then
   begin
   CB_FILIAL.ItemIndex:=0;
   end
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     CB_FILIAL.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with CB_FILIAL do
          ItemIndex := items.IndexOf(CB_FILIAL.Text);
     end;
  end;
query_filial.close;
FreeAndNil(query_filial);

mFilial:=fRetonaCodigoFilial(CB_FILIAL.Text);
if mFilial=0 then
   mFilial:=log_filial_padrao;

if log_filial_Qtd<2 then
   begin
   Label81.Visible:=false;
   CB_FILIAL.Visible:=false;
   end
else
   begin
   Label81.Visible :=true;
   CB_FILIAL.Visible:=true;
   end;



end;

procedure TFrm_ManBal.CB_FILIALExit(Sender: TObject);
begin
if CB_FILIAL.ItemIndex<0 then
   with CB_FILIAL do ItemIndex :=Items.IndexOf(CB_FILIAL.Text)
else
   CB_FILIAL.text:=CB_FILIAL.Items.Strings[CB_FILIAL.ItemIndex];
   
mFilial:=fRetonaCodigoFilial(CB_FILIAL.Text);

end;

procedure TFrm_ManBal.bbGerarInvLoteClick(Sender: TObject);
begin
Qr_Bal01.Close;
Qr_Bal01.Open;
if Qr_Bal01.Eof then
   begin
   fMensagem('Este registro foi excluido ou agrupado em outra chave!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_ManBal_GerInv, Frm_ManBal_GerInv);
Frm_ManBal_GerInv.edt_nominv.Text:=trim(copy(Qr_Bal01B1MOT01.AsString,1,30));
Frm_ManBal_GerInv.edt_datinv.Date:=Qr_Bal01B1DATA.Value;
Frm_ManBal_GerInv.mChave_Bal:=Qr_Bal01B1CHAVE.AsInteger;
Frm_ManBal_GerInv.mInventariocomGrade:=true;

Frm_ManBal_GerInv.ShowModal;
FreeAndNil(Frm_ManBal_GerInv);

end;

procedure TFrm_ManBal.ggGerarNovoAgrupadoClick(Sender: TObject);
begin
application.createform(tFrm_INvGra_novoAgru, Frm_INvGra_novoAgru);
Frm_INvGra_novoAgru.CB_FILIAL.Items:=CB_FILIAL.Items;
Frm_invgra_novoagru.Showmodal;
freeandnil(Frm_invgra_novoagru);


end;


procedure TFrm_ManBal.fIncluirzerados;
var
query_exe: TQuery;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADBAL02','B2CODEMP','CECODEMP','B2CODPRO','CECODPRO');
if la_instrucao<>'' then
    la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADPRO','PDCODEMP','CECODEMP','PDCODPRO','CECODPRO');
if pbanco<>0 then
   la_Join:=la_Join+' AND ( B2CHAVE = '+FDeixaNum(CHAVE.Text)+') '
else
  la_instrucao:=la_instrucao+' and  B2CHAVE(+)=0'+FDeixaNum(CHAVE.Text);

query_exe:=TQuery.Create(nil);
query_exe.databasename:=DM1.SG_ASSOC.DatabaseName;
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Insert into CADBAL02 ('
                  +'B2CODEMP,'
                  +'B2CHAVE,'
                  +'B2CODPRO,'
                  +'B2QTD, '
                  +'B2QTDEST, '
                  +'B2DIFER, '
                  +'B2SEQ, '
                  +'B2STATUS, '
                  +'B2TIPOPRO '
                  +' ) Select '
                  +'CECODEMP, '
                  +Qr_Bal01B1CHAVE.AsString+' as chave,'
                  +'CECODPRO, '
                  +'0 as qtd, '
                  +'nvl(CESALDO,0), '
                  +'0 as difer, '
                  +'0 as seq, '
                  +'2 as status,'
                  +Qr_Bal01B1TIPOPRO.AsString+' as tipopro '
                  +' from cadest'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADEST',[]),'',
                  ' CECODEMP=0'+Qr_Bal01B1CODEMP.AsString+' and ')
                  +' CEFILIAL=0'+Inttostr(mfilial)+' and '
                  +' B2CODPRO is null '
                  +' and  nvl(CESALDO,0)<>0 '
                  +iif(la_instrucao='','',' and '+la_instrucao)
                  );
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
  query_exe.sql.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
  query_exe.sql.Add(' and PDCODRAM '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst2)<>'' then
  query_exe.sql.Add(' and PDCODTIP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
  query_exe.sql.Add(' and PDCODCON '+mcinst2);

if trim(edt_Marca.Text)<>'' then
  query_exe.sql.Add(' and PDMARCA like '+QuotedStr(edt_Marca.Text+'%'));

if trim(CODPRO_TESTE.Text)<>'' then
  query_exe.SQL.Add(' and CECODPRO=0'+Trim(CODPRO_TESTE.Text));

if RGTPRO.ItemIndex<11 then
  begin
  query_exe.SQL.Add(' and PDNIVEL='+IntToStr(RGTPRO.ItemIndex));
  end;

query_exe.SQL.Add(' and CEFILIAL ='+IntToStr(mfilial));
try
   query_exe.ExecSQL;
   fdm1StartCommit;
 except on e : exception do
    ex_erroSql_Novo(query_exe,111,'func Erro:'+e.Message ,'CADNE');
    end;

fAjustarHistoricoProduto_balanco(5,fsonumero(chave.Text));

end;
end.
