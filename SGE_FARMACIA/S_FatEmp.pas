unit S_FatEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,S_DM1,db,dbtables,func,lerarq,
  Grids,S_Ped,S_Ped_AutoP,S_Pv,S_PVO, DBGrids, ToolEdit, CurrEdit,
  ComCtrls, RLReport, S_Ped_02, S_SelEmp;

type
  TFrm_FatEmp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    APLICAR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel3: TPanel;
    SELECAO: TBitBtn;
    CANCELAR: TBitBtn;
    FATURAR: TBitBtn;
    Qr_Sel: TQuery;
    Qr_SelP1CHAVE: TFloatField;
    Qr_SelP1ORDEM: TFloatField;
    Qr_SelP1DATAP: TDateTimeField;
    Qr_SelP1CODCLI: TFloatField;
    Qr_SelP1TOTALL: TFloatField;
    Qr_SelCRAZAO: TStringField;
    Qr_SelP1TIPO: TFloatField;
    Qr_Ped: TQuery;
    Qr_PedPDNOME: TStringField;
    Qr_PedPDUND: TStringField;
    Qr_PedP2CODPRO: TFloatField;
    Qr_PedPDSIT: TStringField;
    Qr_PedPDLISTA: TFloatField;
    Qr_PedPDTABICM: TStringField;
    Qr_PedPDCODFOR: TFloatField;
    Qr_PedP2LOTE: TStringField;
    Qr_PedP2DTVCTO: TDateTimeField;
    Qr_PedP2PRECO: TFloatField;
    Qr_PedQUANT: TFloatField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label5: TLabel;
    NOMPV: TEdit;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    Qr_Ser: TQuery;
    Qr_SerPDNOME: TStringField;
    Qr_SerPDUND: TStringField;
    Qr_SerP2SCODPRO: TFloatField;
    Qr_SerP2SPRECO: TFloatField;
    Qr_SerPDSIT: TStringField;
    Qr_SerPDLISTA: TFloatField;
    Qr_SerPDTABICM: TStringField;
    Qr_SerPDCODFOR: TFloatField;
    Qr_SerQUANT: TFloatField;
    Qr_SelP1LOTSEQ: TFloatField;
    Qr_PedP2DESC1: TFloatField;
    Qr_PedP2DESC2: TFloatField;
    Qr_PedP2DESC3: TFloatField;
    Qr_PedP2VALDES: TFloatField;
    Qr_SerP2SDESC1: TFloatField;
    Qr_SerP2SDESC2: TFloatField;
    Qr_SerP2SDESC3: TFloatField;
    Qr_SerP2SVALDES: TFloatField;
    Qr_SelP1VALDES01: TFloatField;
    Qr_SelP1VALDES02: TFloatField;
    Qr_SelP1VLRDES: TFloatField;
    Qr_SelP1PDESCLIB: TFloatField;
    Qr_SelP1PDESCL_USR: TFloatField;
    Qr_SelP1OK: TStringField;
    U_Sel: TUpdateSQL;
    Src_Sel: TDataSource;
    Qr_SelP1CODEMP: TFloatField;
    Qr_PedP2PCOFPG: TFloatField;
    Qr_PedP2CODFAB: TFloatField;
    Qr_PedP2PCOTAB: TFloatField;
    Qr_PedP2UCPR: TFloatField;
    Qr_PedP2PCOCUS: TFloatField;
    Qr_PedP2PCOMAX: TFloatField;
    Qr_PedP2DESCM: TFloatField;
    Label6: TLabel;
    CODCV: TEdit;
    NOMCV: TEdit;
    Qr_SelP1TPPCO: TFloatField;
    Label10: TLabel;
    CB_ORDEM: TComboBox;
    edt_totalgeral: TCurrencyEdit;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TsResMerc: TTabSheet;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    DBG_Ped2: TDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    TOTALMERC: TCurrencyEdit;
    Qr_Seltotalp2: TFloatField;
    btnImprimir: TBitBtn;
    tbsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    lbl_unidade: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_codigo: TRLLabel;
    lbl_unitario: TRLLabel;
    lbl_qtde: TRLLabel;
    lbl_vlrdesc: TRLLabel;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rdb_unitario: TRLDBText;
    rdb_quantidade: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    lbl_convenio: TRLLabel;
    lbl_cliente: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    lbl_totalizacao: TRLLabel;
    lbl_totalgeral: TRLLabel;
    edt_totalsel: TCurrencyEdit;
    Label9: TLabel;
    edt_totalASelecionar: TCurrencyEdit;
    Label11: TLabel;
    Qr_PedP2AMBIENTE: TStringField;
    Qr_SelP1TOTDES: TFloatField;
    tsConfigMaster: TTabSheet;
    Label12: TLabel;
    CB_TIPO: TComboBox;
    bbSalvarPadrao: TBitBtn;
    Qr_PedP2COMPLEMENTO: TMemoField;
    Qr_PedP2CODVEN: TFloatField;
    Qr_SelP1DESC01: TFloatField;
    Qr_SelP1DESC02: TFloatField;
    procedure BBSAIRClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure APLICARClick(Sender: TObject);
    procedure CODCLIEnter(Sender: TObject);
    procedure SELECAOClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FATURARClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure CODPVExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CODCVExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Qr_SelCalcFields(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_SelAfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fFatEmpSeleciona(pMarca: String): Boolean;
    function FAtualiza(pTipo: Integer):Boolean;

    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;
    function fDeletaTemporaria(pNomTab: String): Boolean;

  public
    { Public declarations }
     Pedido_02_FatEmp: TFrm_Ped_02;
//     form_ped_autop_fatemp: Tfrm_Ped_Autop;
     form_pvo_fatemp: Tfrm_Pvo;
//     form_ped_fatemp: Tfrm_Ped;
     Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_FatEmp  : TFrm_FatEmp;
  AgruparItens : Boolean;



  maltdup     : Boolean=False;
  mTabTemp_emp    : String='';
  xTotal      : Real;
  xTotalGeral : Real;
  xTotalSel   : Real;
  xTotalDesc01: Real;
  xTotalDesc02: Real;
  xTotalDescvlr: Real;
//  xTotalASel_Ant  : Real;
//  xTotalSel_ant   : Real;

  mchaves1, mchaves2: String;
  mfatemp_tipop_padrao: Integer=1;

implementation

uses S_DM4, func_excecoes, StrUtils, S_Venda_Pre_Farma;

{$R *.dfm}

procedure TFrm_FatEmp.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FatEmp.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_FatEmp',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp.CODCLIExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if trim(codcli.Text)='' then
   exit;
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text  :=DM1.Tb_CliCRAZAO.Value;
   CODVEN.Text  :=DM1.Tb_CliCCODVEN.AsString;
   if flcadven(1,0,Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value
   else
      begin
      CODVEN.Text:='';
      NOMVEN.Text:='';
      end;
   CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
   CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
   if flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      end
   else
      begin
      CB_TABPV.Text:='';
      CODPV.Text   :='';
      NOMPV.Text   :='';
      end;
   end;
flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);

if (Trim(CODCLI.Text) = '') or (ValInt(CODCLI.Text) = 0) then
   NOMCLI.Text := '';
end;

procedure TFrm_FatEmp.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_FatEmp.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrTodate(MDT2.Text) then
      begin
      fmensagem('Data Final Maior que inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_FatEmp.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePageIndex:=0;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mTabTemp_emp:='';
{if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   testeform := TFrm_FatEmp(FindGlobalComponent('form_ped_autop_fatemp'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_ped_autop, form_ped_autop_fatemp);
   form_ped_autop_fatemp.mAceitaConfirmacao:=false;
   end
else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
   begin}
   testeform := TFrm_FatEmp(FindGlobalComponent('pedido_02_fatemp'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_ped_02, Pedido_02_FatEmp);
   Pedido_02_FatEmp.mAceita_pergunta:=false;
{   end
else
   begin
   testeform := TFrm_FatEmp(FindGlobalComponent('frm_ped_fatemp'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_ped, form_ped_fatemp);
   end;}


testeform := TFrm_FatEmp(FindGlobalComponent('frm_pvo_fatemp'));
if (testeform=nil) then
    Application.CreateForm(TFrm_PVO, form_pvo_fatemp);

Qr_SelP1DATAP.DisplayFormat :=fdt2;
Qr_SelP1TOTALL.DisplayFormat:=mcasas;
Qr_PedQUANT.DisplayFormat:=mcasqtd;
Qr_PedP2PRECO.DisplayFormat:=mcasaspu;


if flfilpad(0,'_FATEMP','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;
mfatemp_tipop_padrao:=1;

if flfilpad(-1,'_FATEMP','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPO',[]) then
       mfatemp_tipop_padrao:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;

{if codusr <> 1111 then
   begin
   tbsRelatorio.TabVisible  :=False;
   tsConfigMaster.TabVisible:=false;
   end
else
   begin
   tbsRelatorio.TabVisible  :=True;
   tsConfigMaster.TabVisible:=true;
   end;}


CB_TIPO.Items.Clear;
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) or (x=8) or (x=12) or (x=13) or (x=17) or (x=18)  then
      continue;
   if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0)  then
      begin
      CB_TIPO.Items.Add(tab_tped[x]);
      CB_TIPO.Text:=tab_tped[1];
      end
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0)  then
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
      CB_TIPO.Items.Add(tab_tped[x]);
   end;
CB_TIPO.Text:=tab_tped[mfatemp_tipop_padrao];
with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);

end;

procedure TFrm_FatEmp.APLICARClick(Sender: TObject);
begin
if (trim(CODCLI.Text)='') and (Trim(CODCV.Text)='') then
   begin
   fmensagem('Favor Informar o Cliente!',0,['0'],0);
   exit;
   end;
if not fFatEmpSeleciona('P') then
   begin
   fmensagem('Nada encontrado na condição Acima!',0,['0'],0);
   exit;
   end;


FATURAR.Enabled:=True;
SELECAO.Enabled:=True;
end;

procedure TFrm_FatEmp.CODCLIEnter(Sender: TObject);
begin
FATURAR.Enabled:=False;
SELECAO.Enabled:=False;

end;

procedure TFrm_FatEmp.SELECAOClick(Sender: TObject);
begin
fFatEmpSeleciona('P');

end;

procedure TFrm_FatEmp.CANCELARClick(Sender: TObject);
begin
fFatEmpSeleciona(' ');

end;

procedure TFrm_FatEmp.FATURARClick(Sender: TObject);
var
mqtd,y,x: Integer;
mtemfat: Boolean;
mvlrdes: Real;
mpDescAut: Real;
mpDescAut_codusr: Integer;
mCodCli_Emp: Real;
mChave_Fat: Real;
mLotseq_Fat: Real;

begin
if ValFloat(CODVEN.Text)<=0 then
   begin

   fmensagem('Código do Vendedor tem que ser Preenchido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if (Trim(CB_TABPV.Text)='') or (ValFloat(CODPV.Text)<=0) then
   begin
   fmensagem('Plano de Vendas tem que ser Preenchido!',0,['0'],0);
   CB_TABPV.SetFocus;
   exit;
   end;
mtemfat:=False;
mvlrdes:=0;
Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString='P' then
      begin
      mtemfat:=True;
      break;
      end;
   Qr_sel.Next;
   end;
if not mtemfat then
   begin
   fmensagem('Para faturar tem que selecionar pelo menos um pedido!',0,['0'],0);
   exit;
   end;
if fMensagem('Confirma o Faturamento!',0,['1','2'],2)<>MrYes then
   exit;


FAtualiza(0);

if (Qr_Ped.IsEmpty) and (Qr_Ser.IsEmpty) then
   begin
   fmensagem('Não Foi Encontrado nada ha ser faturado!',0,['0'],0);
   exit;
   end;

if DM1.Tb_PargerPFORPEDPAD.asinteger=3 then
   fFaturarPedido_ultimo(0)
else
   begin

//*************************************************


   mCodCli_Emp:=ValFloat(codcli.Text);
   if mcodcli_emp=0 then
      begin
      if ValFloat(CODCV.Text)>0 then
         begin
         if (DM1.Tb_CVCVCGC.AsFloat<=0) and  (DM1.Tb_CVCVCPF.AsFloat<=0) then
            begin
            fmensagem('Favor colocar o CNPJ no Cadastro de convenio',0,['0'],0);
            exit;
            end;
         if flcadcv(1,CODCV.Text) then
            begin
            DM1.Query1.close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select CCODCLI from CADCLI where ');
            if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
               DM1.Query1.SQL.add(' CCODEMP=0'+InttoStr(codemp)+' and ');
            if DM1.Tb_CVCVCGC.AsFloat>0 then
               DM1.Query1.SQL.add(' CCNPJ=0'+DM1.Tb_CVCVCGC.AsString)
            else
               DM1.Query1.SQL.add(' CCPF=0'+DM1.Tb_CVCVCPF.AsString);
            DM1.Query1.Open;
            if DM1.Query1.IsEmpty then
               begin
               DM1.Query1.close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Select CCODCLI from CADCLI where ');
               if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
                  DM1.Query1.SQL.add(' CCODEMP=0'+InttoStr(codemp)+' and ');
               DM1.Query1.SQL.add(' CCODCV=0'+fdeixanum(CODCV.Text));
               DM1.query1.Open;
               end;
            if DM1.Query1.IsEmpty then
               begin
               fmensagem('Não foi encontrado nenhum cliente com vinculo a este convenio!',0,['0'],0);
               exit;
               end;
            mCodCli_Emp:=DM1.Query1.FieldbyName('CCODCLI').AsFloat;
            end;
         end;
      end;

   //*************************************************descricoes alternadas fim
   flcadpar01(0,codemp,'1');
   {if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
      begin
      form_ped_autop_fatemp.mGravou_Fpgto:=false;
      form_ped_autop_fatemp.Show;
      form_ped_autop_fatemp.Tool_Limpar.Click;

      flcadpar01(0,codemp,'1');
      form_ped_autop_fatemp.mFatMz       :=DM4.Tb_Par01PFATMZ.AsInteger=1;
      form_ped_autop_fatemp.mFatMz_LocMov:=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
      form_ped_autop_fatemp.mAvisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;
      form_ped_autop_fatemp.moper_ped:=0;
      form_ped_autop_fatemp.mchave:=0;
      form_ped_autop_fatemp.mordem:=0;
      if Qr_SelP1CODEMP.AsFloat>0 then
         form_ped_autop_fatemp.SUBMOD.Text:='100'
      else
         form_ped_autop_fatemp.SUBMOD.Text:='000';
      mpund:=StrtoFloat('0'+Trim(form_ped_autop_fatemp.SUBMOD.Text));

      form_ped_autop_fatemp.mlib_mPDescLib    :=mpDescAut;
      form_ped_autop_fatemp.mlib_mPDescLib_Usr:=mpDescAut_codusr;
      form_ped_autop_fatemp.Tool_Incluir.Enabled   :=False;
      form_ped_autop_fatemp.tool_localizar.Enabled :=False;
      form_ped_autop_fatemp.Tool_Alterar.Enabled   :=False;
      form_ped_autop_fatemp.Tool_Excluir.Enabled   :=False;
      form_ped_autop_fatemp.Tool_Gravar.Enabled    :=True;
      form_ped_autop_fatemp.Tool_LSep.Enabled      :=False;
      form_ped_autop_fatemp.Tool_EmiteNF.Enabled   :=False;
      form_ped_autop_fatemp.Tool_Calcular.Enabled  :=True;
      form_ped_autop_fatemp.Tool_Faturar.Enabled   :=False;
      form_ped_autop_fatemp.pc_Cabecalho.ActivePage:=form_ped_autop_fatemp.ts_principais;
      form_ped_autop_fatemp.pc_Cabecalho.Enabled   :=true;
      form_ped_autop_fatemp.ts_Mercadorias.Enabled :=True;
      form_ped_autop_fatemp.ts_principais.Enabled  :=True;
      form_ped_autop_fatemp.ts_Servicos.Enabled    :=True;
      form_ped_autop_fatemp.ts_outros.Enabled      :=True;
      form_ped_autop_fatemp.ts_situacao.Enabled    :=True;
      form_ped_autop_fatemp.CB_TIPO.Enabled        :=True;
      form_ped_autop_fatemp.CODDIG.Text            :=IntToStr(codusr);
      flcadusr(1,0,form_ped_autop_fatemp.CODDIG.Text);
      form_ped_autop_fatemp.NOMDIG.Text            :=DM4.Tb_UsrNOMUSR.Value;
      form_ped_autop_fatemp.HORDIG.Text            :=FormatDatetime('hh:nn:ss',time);
      form_ped_autop_fatemp.CB_TIPO2.ItemIndex:=form_ped_autop_fatemp.mtipop;


      form_ped_autop_fatemp.ant_integer:=form_ped_autop_fatemp.mtipop;

      with form_ped_autop_fatemp.CB_TIPO do ItemIndex:=Items.IndexOf(form_ped_autop_fatemp.CB_TIPO2.Text);

      form_ped_autop_fatemp.CB_TIPO.text:=form_ped_autop_fatemp.CB_TIPO.items[form_ped_autop_fatemp.CB_TIPO.itemIndex];


      form_ped_autop_fatemp.CODDIG.Text :=Inttostr(codusr);
      form_ped_autop_fatemp.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
      form_ped_autop_fatemp.DTMOD.Text  :='';
      form_ped_autop_fatemp.CB_CONF.Checked:=False;
      form_ped_autop_fatemp.CODCON.Text    :='';
      form_ped_autop_fatemp.DATCON.Text :='/  /';
      form_ped_autop_fatemp.HORCON.Text :='';
      form_ped_autop_fatemp.CODTRA.Text:='';
      form_ped_autop_fatemp.NOMTRA.Text:='';
      form_ped_autop_fatemp.QTDVOL.Text:='0';
      form_ped_autop_fatemp.PESOL.Text :='0';
      form_ped_autop_fatemp.PESOB.Text :='0';
      form_ped_autop_fatemp.ESPECIE.Text       :='';
      form_ped_autop_fatemp.RGFRETEPC.ItemIndex:=0;
      form_ped_autop_fatemp.VALFRE.Text        :='0';
      form_ped_autop_fatemp.UFPV.Text          :='';
      form_ped_autop_fatemp.PLACAV.Text        :='';
      form_ped_autop_fatemp.RGCODSER.ItemIndex :=0;
      form_ped_autop_fatemp.DESC01.Text        :='0';
      form_ped_autop_fatemp.DESC02.Text        :='0';
      form_ped_autop_fatemp.VALDES.Text        :='0';
      mcodldr            :=0;
      mbcissqn           :=0;
      missqn             :=0;
      form_ped_autop_fatemp.CODVEN2.Text:='';
      form_ped_autop_fatemp.CODVEN3.Text:='';
      mcomis     :=0;
      form_ped_autop_fatemp.CB_ORIGEM.ItemIndex:=0;
      form_ped_autop_fatemp.CODTLV.Text:='';
      form_ped_autop_fatemp.CB_ETIVOL.Checked :=False;
      form_ped_autop_fatemp.CODSEP.Text:='';
      form_ped_autop_fatemp.DATSEP.Text:='/  /';
      form_ped_autop_fatemp.HORSEP.Text:='';
      form_ped_autop_fatemp.codemb.Text:='';
      form_ped_autop_fatemp.NUMCF.Text:='0';
      form_ped_autop_fatemp.SUBMOD.Text:='000';
      mpund:=StrtoFloat('0'+Trim(form_ped_autop_fatemp.SUBMOD.Text));
      form_ped_autop_fatemp.fPed01tarban(0);


      flcadcli(1,0,FloatTostr(mCodCli_Emp));
      flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
      form_ped_autop_fatemp.CODPV.Text   :=Trim(CODPV.Text);
      form_ped_autop_fatemp.CB_TABPV.Text:=Trim(CB_TABPV.Text);
      flcadpv(1,0,form_ped_autop_fatemp.CB_TABPV.Text,form_ped_autop_fatemp.CODPV.Text);
      form_ped_autop_fatemp.CHAVE.Text :='';
      form_ped_autop_fatemp.ORDEM.Text :='';
      form_ped_autop_fatemp.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
      form_ped_autop_fatemp.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      form_ped_autop_fatemp.DATAP.Text :=FormatDatetime(fdt2,date);
      //lindomar atualizar
      form_ped_autop_fatemp.PEDORI1.Text:=mchaves1;
      form_ped_autop_fatemp.PEDORI2.Text:=mchaves2;
      form_ped_autop_fatemp.DATANF.Text:='/  /';
      form_ped_autop_fatemp.NUMNF.Text  :='';
      form_ped_autop_fatemp.SERIENF.Text:='';
      form_ped_autop_fatemp.SUBSER.Text :='';
      form_ped_autop_fatemp.PCOMIS.Text :='';
      form_ped_autop_fatemp.MODELO.Text :='';
      form_ped_autop_fatemp.OBS1.Text   :='';
      form_ped_autop_fatemp.OBS2.Text   :='';
      form_ped_autop_fatemp.OBS3.Text   :='';
      mStatus                   :=0;
      form_ped_autop_fatemp.mtipop      :=0;
   //   form_ped_autop_fatemp.CB_TIPO.ItemIndex:=mtipop;
      form_ped_autop_fatemp.CODDIG.Text :=Inttostr(codusr);
      form_ped_autop_fatemp.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
      flcadusr(1,0,Inttostr(codusr));
      form_ped_autop_fatemp.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
      form_ped_autop_fatemp.DTMOD.Text  :='';
      form_ped_autop_fatemp.NOMUSRM.Text:='';
      form_ped_autop_fatemp.CB_CONF.Checked:=False;
      form_ped_autop_fatemp.CODCON.Text    :='';
      form_ped_autop_fatemp.DATCON.Text :='/  /';
      form_ped_autop_fatemp.HORCON.Text :='';
      form_ped_autop_fatemp.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
      form_ped_autop_fatemp.DESC01.Text   :='0';
      form_ped_autop_fatemp.DESC02.Text   :='0';
      form_ped_autop_fatemp.VALDES.Text   :=FormatFloat(mcasas, mvlrdes);
      form_ped_autop_fatemp.CODTRA.Text:='';
      form_ped_autop_fatemp.NOMTRA.Text:='';
      form_ped_autop_fatemp.QTDVOL.Text:='0';
      form_ped_autop_fatemp.PESOL.Text :='0';
      form_ped_autop_fatemp.PESOB.Text :='0';
      form_ped_autop_fatemp.ESPECIE.Text       :='';
      form_ped_autop_fatemp.RGFRETEPC.ItemIndex:=0;
      form_ped_autop_fatemp.VALFRE.Text        :='0';
      form_ped_autop_fatemp.UFPV.Text          :='';
      form_ped_autop_fatemp.PLACAV.Text        :='';
      form_ped_autop_fatemp.CODBCO.Text        :='';
      form_ped_autop_fatemp.RGCODSER.ItemIndex :=0;
      mcodldr            :=0;
      mbcissqn           :=0;
      missqn             :=0;
      form_ped_autop_fatemp.CODVEN.Text:=CODVEN.Text;
      form_ped_autop_fatemp.NOMVEN2.Text:='';
      form_ped_autop_fatemp.CODVEN3.Text:='';
      form_ped_autop_fatemp.NOMVEN3.Text:='';
      flcadven(1,0,form_ped_autop_fatemp.CODVEN.Text);
      form_ped_autop_fatemp.NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      mcomis     :=0;
      form_ped_autop_fatemp.CB_ORIGEM.ItemIndex:=0;
      form_ped_autop_fatemp.CODTLV.Text:='';
      form_ped_autop_fatemp.NOMTLV.Text:='';
      form_ped_autop_fatemp.CB_ETIVOL.Checked :=False;
      form_ped_autop_fatemp.CODSEP.Text:='';
      form_ped_autop_fatemp.NOMSEP.Text:='';
      form_ped_autop_fatemp.DATSEP.Text:='/  /';
      form_ped_autop_fatemp.HORSEP.Text:='';
      form_ped_autop_fatemp.codemb.Text:='';
      form_ped_autop_fatemp.NOMEMB.Text:='';
      form_ped_autop_fatemp.NUMCF.Text:='0';
      form_ped_autop_fatemp.Tb_Ped02.Close;
      form_ped_autop_fatemp.Tb_Ped02.SQL.Clear;
      form_ped_autop_fatemp.Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
      form_ped_autop_fatemp.Tb_Ped02.Open;
      form_ped_autop_fatemp.Tb_Ped02s.Close;
      form_ped_autop_fatemp.Tb_Ped02s.SQL.Clear;
      form_ped_autop_fatemp.Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
      form_ped_autop_fatemp.Tb_Ped02s.Open;
      form_ped_autop_fatemp.CB_TIPOExit(self);
      form_ped_autop_fatemp.CB_TPPCO.ItemIndex:=2;
      form_ped_autop_fatemp.moper_ped:=0;
      mqtd:=1;
      Qr_Ped.First;
      While not Qr_Ped.Eof do
         begin
         if Qr_PedQUANT.Value<=0 then
            begin
            Qr_Ped.Next;
            Continue;
            end;
         form_ped_autop_fatemp.Tb_Ped02.Append;
         form_ped_autop_fatemp.Tb_Ped02P2ITEM.Value     :=mqtd;
         form_ped_autop_fatemp.Tb_Ped02P2CODPRO.Value   :=Qr_PedP2CODPRO.Value;
         flcadpro(1,0,0,Qr_PedP2CODPRO.AsString);
         form_ped_autop_fatemp.Tb_Ped02P2QTD.Value      :=Qr_PedQUANT.Value;
         form_ped_autop_fatemp.Tb_Ped02UNDPRO.Value     :=DM1.Tb_ProPDUND.Value;
         form_ped_autop_fatemp.Tb_Ped02NOMEPRO.Value    :=DM1.Tb_ProPDNOME.Value;
         form_ped_autop_fatemp.Tb_Ped02P2PRECO.Value    :=Qr_PedP2PRECO.Value;
         form_ped_autop_fatemp.Tb_Ped02P2DESC1.Value    :=Qr_PedP2DESC1.Value;
         form_ped_autop_fatemp.Tb_Ped02P2DESC2.Value    :=Qr_PedP2DESC2.Value;
         form_ped_autop_fatemp.Tb_Ped02P2DESC3.Value    :=Qr_PedP2DESC3.Value;
         form_ped_autop_fatemp.Tb_Ped02P2VALDES.Value   :=Qr_PedP2VALDES.Value;
         form_ped_autop_fatemp.Tb_Ped02P2AMBIENTE.Value :=Qr_PedP2AMBIENTE.Value;

         if Qr_PedP2LOTE.IsNull then
            form_ped_autop_fatemp.Tb_Ped02P2LOTE.Value  :=''
         else
            form_ped_autop_fatemp.Tb_Ped02P2LOTE.Value  :=Qr_PedP2LOTE.Value;
         if not Qr_PedP2DTVCTO.IsNull then
            form_ped_autop_fatemp.Tb_Ped02P2DTVCTO.Value:=Qr_PedP2DTVCTO.Value;
   //      form_ped_autop_fatemp.Tb_Ped02P2SIT.Value      :=DM1.Tb_ProPDSIT.Value;
        if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
           else
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString
           end
       else
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString
           else
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString
           end;

         form_ped_autop_fatemp.Tb_Ped02P2TABELA.Value   :=DM1.Tb_ProPDTABICM.Value;
         form_ped_autop_fatemp.Tb_Ped02P2LISTA.Value    :=DM1.Tb_ProPDLISTA.Value;
         form_ped_autop_fatemp.Tb_Ped02P2PCOTAB.Value   :=Qr_PedP2PCOTAB.Value;
         form_ped_autop_fatemp.Tb_Ped02P2PCOFPG.Value   :=Qr_PedP2PCOFPG.Value;
         form_ped_autop_fatemp.Tb_Ped02P2CODFAB.Value   :=Qr_PedP2CODFAB.Value;
         form_ped_autop_fatemp.Tb_Ped02P2UCPR.Value     :=Qr_PedP2UCPR.Value;
         form_ped_autop_fatemp.Tb_Ped02P2PCOCUS.Value   :=Qr_PedP2PCOCUS.Value;
         form_ped_autop_fatemp.Tb_Ped02P2PCOMAX.Value   :=Qr_PedP2PCOMAX.Value;
         form_ped_autop_fatemp.Tb_Ped02P2DESCM.Value    :=Qr_PedP2DESCM.Value;
         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_PedP2CODPRO.Value,[]) then
            begin
            form_ped_autop_fatemp.Tb_Ped02DESCALTER.Value:='';
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_PedP2CODPRO.Value))  do
               begin
               form_ped_autop_fatemp.Tb_Ped02DESCALTER.Value:=form_ped_autop_fatemp.Tb_Ped02DESCALTER.Value+insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               DM4.Qr_Ped02d.Next;
               end;
            end;

         form_ped_autop_fatemp.Tb_Ped02P2SEMCOM.Value  :=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
         form_ped_autop_fatemp.Tb_Ped02P2UCPR.Value    :=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);

         mqtd:=mqtd+1;
         form_ped_autop_fatemp.Tb_Ped02.post;
         Qr_Ped.Next;

         end;
      //********************* servicos *******************************************

      mqtd:=1;
      Qr_Ser.First;
      While not Qr_Ser.Eof do
         begin
         if Qr_SerQUANT.Value<=0 then
            begin
            Qr_Ser.Next;
            Continue;
            end;
         form_ped_autop_fatemp.Tb_Ped02S.Append;
         form_ped_autop_fatemp.Tb_Ped02SP2SCODPRO.Value:=Qr_SerP2SCODPRO.Value;
         flcadpro(1,0,0,Qr_SerP2SCODPRO.AsString);
         form_ped_autop_fatemp.Tb_Ped02SP2SQTD.Value   :=Qr_SerQUANT.Value;
         form_ped_autop_fatemp.Tb_Ped02SUNDSER.Value   :=DM1.Tb_ProPDUND.Value;
         form_ped_autop_fatemp.Tb_Ped02SNOMESERV.Value :=DM1.Tb_ProPDNOME.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SPRECO.Value :=Qr_SerP2SPRECO.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SDESC1.Value :=Qr_SerP2SDESC1.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SDESC2.Value :=Qr_SerP2SDESC2.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SVALDES.Value:=Qr_SerP2SVALDES.Value;
         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
            begin
            form_ped_autop_fatemp.Tb_Ped02SDESCALTER.Value:='';
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
               begin
               form_ped_autop_fatemp.Tb_Ped02SDESCALTER.Value:=form_ped_autop_fatemp.Tb_Ped02SDESCALTER.Value
                                                     +insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               DM4.Qr_Ped02d.Next;
               end;
            end;
   //      form_ped_autop_fatemp.Tb_Ped02SP2SSIT.Value   :=DM1.Tb_ProPDSIT.Value;
        if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
           else
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString
           end
       else
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString
           else
              form_ped_autop_fatemp.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString
           end;
         form_ped_autop_fatemp.Tb_Ped02SP2STABELA.Value:=DM1.Tb_ProPDTABICM.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SLISTA.Value :=DM1.Tb_ProPDLISTA.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SPCOTAB.Value:=DM1.Tb_ProPDPRECO1.Value;
         form_ped_autop_fatemp.Tb_Ped02SP2SCODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
         form_ped_autop_fatemp.Tb_Ped02s.Post;
         mqtd:=mqtd+1;
         Qr_Ser.Next;
         end;

      // fim dos servicos


   //   form_ped_autop_fatemp.Tool_Calcular.Click;
      if (form_ped_autop_fatemp.Tb_ped02.RecordCount>0) or (form_ped_autop_fatemp.Tb_ped02S.RecordCount>0) then
         begin
         if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
            form_ped_autop_fatemp.fGerarFormas(iif(form_ped_autop_fatemp.CB_TABPV.Text='PP',1,0),0);
         form_ped_autop_fatemp.fgravarped_Autop(0); // mercadorias
         mChave_Fat :=form_ped_autop_fatemp.mchave;

         end;
   //   form_ped_autop_fatemp.Tool_Gravar.Click;
   //   mchave:=StrToInt('0'+Trim(form_ped_autop_fatemp.CHAVE.Text));
   //   form_ped_autop_fatemp.Tool_Sair.Click;
      end
   else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
      begin       }
      //inicio
      Pedido_02_FatEmp.mAceita_pergunta:=false;
      Pedido_02_FatEmp.mped02_ori:='frm_fatemp';
      Pedido_02_FatEmp.Show;
      Pedido_02_FatEmp.btn_incluir.Click;
      Pedido_02_FatEmp.CB_CASASD.ItemIndex:=3;
      Pedido_02_FatEmp.cb_leitor.Checked:=false;

      flcadpar01(0,codemp,'1');
      Pedido_02_FatEmp.mPed_Par_FatMz            :=DM4.Tb_Par01PFATMZ.AsInteger=1;
      Pedido_02_FatEmp.mPed_Par_FatMz_LocMov     :=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
      Pedido_02_FatEmp.mPed_Par_Avisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;

      Pedido_02_FatEmp.mPd_Oper_Ped:=0;

      Pedido_02_FatEmp.mpd_chave:=0;
      Pedido_02_FatEmp.mpd_ordem:=0;

      if Qr_SelP1CODEMP.AsFloat>0 then
         Pedido_02_FatEmp.edt_submod.Text:='100'
      else
         Pedido_02_FatEmp.edt_submod.Text:='000';
      Pedido_02_FatEmp.mPed_SubMod:=StrtoFloat('0'+Trim(Pedido_02_FatEmp.edt_submod.Text));

      Pedido_02_FatEmp.mlib_mPDescLib           :=mpDescAut;
      Pedido_02_FatEmp.mlib_mPDescLib_Usr       :=mpDescAut_codusr;
      Pedido_02_FatEmp.btn_incluir.Enabled      :=False;
      Pedido_02_FatEmp.btn_localizar.Enabled    :=False;
      Pedido_02_FatEmp.btn_alterar.Enabled      :=False;
      Pedido_02_FatEmp.btn_excluir.Enabled      :=False;
      Pedido_02_FatEmp.btn_gravar.Enabled       :=True;
      Pedido_02_FatEmp.btn_imprimir.Enabled     :=False;
      Pedido_02_FatEmp.btn_nota.Enabled         :=False;
      Pedido_02_FatEmp.btn_calcular.Enabled     :=True;
      Pedido_02_FatEmp.btn_faturar.Enabled      :=False;
      Pedido_02_FatEmp.pgc_capapedido.ActivePage:=Pedido_02_FatEmp.tbs_principal;
      Pedido_02_FatEmp.pgc_capapedido.Enabled   :=true;
      Pedido_02_FatEmp.tbs_mercadoria.Enabled   :=True;
      Pedido_02_FatEmp.tbs_principal.Enabled    :=True;

      //pareiaqui


      Pedido_02_FatEmp.Ts_Servico.Enabled    :=True;
      Pedido_02_FatEmp.tbs_outrosdados.Enabled      :=True;
      Pedido_02_FatEmp.tbs_situacao.Enabled         :=True;
      Pedido_02_FatEmp.cb_tipopedido.Enabled        :=True;
      Pedido_02_FatEmp.CODCON.Text    :='';
      Pedido_02_FatEmp.DATCON.Text :='/  /';
      Pedido_02_FatEmp.HORCON.Text :='';
      Pedido_02_FatEmp.edt_codtra.Text:='';
      Pedido_02_FatEmp.edt_nometrans.Text:='';
      Pedido_02_FatEmp.edt_qtdvol.Text:='0';
      Pedido_02_FatEmp.edt_pesol.Text :='0';
      Pedido_02_FatEmp.edt_pesob.Text :='0';
      Pedido_02_FatEmp.edt_especie.Text       :='';
      Pedido_02_FatEmp.RGFRETEPC.ItemIndex:=0;
      Pedido_02_FatEmp.edt_valorfrete.Text        :='0';
      Pedido_02_FatEmp.edt_ufpv.Text          :='';
      Pedido_02_FatEmp.edt_placav.Text        :='';
      Pedido_02_FatEmp.edt_desconto01.Text        :='0';
      Pedido_02_FatEmp.edt_desconto02.Text        :='0';
      Pedido_02_FatEmp.edt_valordesconto.Text     :='0';
      Pedido_02_FatEmp.edt_codvendedor02.Text:='';
      Pedido_02_FatEmp.edt_codvendedor03.Text:='';
      Pedido_02_FatEmp.CB_ORIGEM.ItemIndex:=0;
      Pedido_02_FatEmp.CODTLV.Text:='';
      Pedido_02_FatEmp.cb_etivol.Checked :=False;
      Pedido_02_FatEmp.edt_codsep.Text:='';
      Pedido_02_FatEmp.edt_datasep.Text:='/  /';
      Pedido_02_FatEmp.edt_horasep.Text:='';
      Pedido_02_FatEmp.CODEMB.Text:='';
      Pedido_02_FatEmp.edt_numcf.Text:='0';
      Pedido_02_FatEmp.edt_submod.Text:='000';
      Pedido_02_FatEmp.mPed_SubMod:=StrtoFloat('0'+Trim(Pedido_02_FatEmp.edt_submod.Text));


      flcadcli(1,0,FloatTostr(mCodCli_Emp));
      flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
      Pedido_02_FatEmp.edt_codvenda.Text   :=Trim(CODPV.Text);
      Pedido_02_FatEmp.cb_tabelavenda.Text :=Trim(CB_TABPV.Text);
      flcadpv(1,0,Pedido_02_FatEmp.cb_tabelavenda.Text,Pedido_02_FatEmp.edt_codvenda.Text);
      Pedido_02_FatEmp.edt_chave.Text :='';
      Pedido_02_FatEmp.edt_codcliente.Text:=DM1.Tb_CliCCODCLI.AsString;
      Pedido_02_FatEmp.edt_nomecliente.Text:=DM1.Tb_CliCRAZAO.Value;
      Pedido_02_FatEmp.edt_datapedido.Text :=FormatDatetime(fdt2,date);
   {   Pedido_02_FatEmp.edt_desconto01.Text :=FloatToStr(xTotalDesc01);
      Pedido_02_FatEmp.edt_desconto02.Text :=FloatToStr(xTotalDesc02);
      Pedido_02_FatEmp.edt_valordesconto.Text :=FloatToStr(xTotalDescvlr);}
   //   lindomar atualizar
      Pedido_02_FatEmp.edt_pedori1.Text    :=mchaves1;
      Pedido_02_FatEmp.edt_pedori2.Text    :=mchaves2;
      Pedido_02_FatEmp.edt_datanf.Text:='/  /';
      Pedido_02_FatEmp.edt_numnf.Text  :='';
      Pedido_02_FatEmp.edt_serienf.Text:='';
      Pedido_02_FatEmp.edt_subser.Text :='';
      Pedido_02_FatEmp.edt_pcomis.Text :='';
      Pedido_02_FatEmp.edt_modelo.Text :='';
      Pedido_02_FatEmp.edt_obs1.Text   :='';
      Pedido_02_FatEmp.edt_obs2.Text   :='';
      Pedido_02_FatEmp.edt_obs3.Text   :='';
      Pedido_02_FatEmp.mpd_status                 :=0;
      Pedido_02_FatEmp.mpd_ptipop                 :=0;

      Pedido_02_FatEmp.cb_tipo2.text  := Pedido_02_FatEmp.cb_tipo2.items[Pedido_02_FatEmp.cb_tipo2.itemIndex];
      with Pedido_02_FatEmp.cb_tipopedido do
         ItemIndex := Items.IndexOf(Pedido_02_FatEmp.cb_tipo2.Text);

      Pedido_02_FatEmp.cb_tipopedido.text := Pedido_02_FatEmp.cb_tipopedido.items[Pedido_02_FatEmp.cb_tipopedido.itemIndex];

      Pedido_02_FatEmp.edt_codigodigitador.Text     :=IntToStr(codusr);
      flcadusr(1,0,Pedido_02_FatEmp.edt_codigodigitador.Text);
      Pedido_02_FatEmp.edt_nomedigitador.Text       :=DM4.Tb_UsrNOMUSR.Value;
      Pedido_02_FatEmp.edt_horadigitacao.Text       :=FormatDatetime('hh:nn:ss',time);
      Pedido_02_FatEmp.DTMOD.Text  :='';


      Pedido_02_FatEmp.NOMUSRM.Text:='';
      Pedido_02_FatEmp.CB_CONF.Checked:=False;
      Pedido_02_FatEmp.edt_nomevenda.Text    :=DM1.Tb_PVPVNOME.Value;



      Pedido_02_FatEmp.edt_codbanco.Text        :='';
      Pedido_02_FatEmp.edt_codbanco2.Text        :='';


      //flcadven(1,0,Pedido_02_FatEmp.edt_codvendedor.Text);
      //Pedido_02_FatEmp.edt_nomevendedor.Text:=DM1.Tb_VenVNOME.Value;

      Pedido_02_FatEmp.edt_codvendedor.Text:=CODVEN.Text;
      Pedido_02_FatEmp.edt_codvendedorExit(self);

      Pedido_02_FatEmp.edt_codvendedor.Text:=CODVEN.Text;
      Pedido_02_FatEmp.edt_codvendedorExit(self);

      Pedido_02_FatEmp.edt_nomevendedor2.Text:='';
      Pedido_02_FatEmp.edt_nomevendedor3.Text:='';

      Pedido_02_FatEmp.NOMTLV.Text:='';


      Pedido_02_FatEmp.edt_nomesep.Text:='';

      Pedido_02_FatEmp.edt_datasep.Text:='/  /';
      Pedido_02_FatEmp.edt_horasep.Text:='';
      Pedido_02_FatEmp.CODEMB.Text:='';
      Pedido_02_FatEmp.NOMEMB.Text:='';
      Pedido_02_FatEmp.edt_numcf.Text:='0';
      Pedido_02_FatEmp.QryItem_Nota.Close;
      Pedido_02_FatEmp.QryItem_Nota.Open;
      Pedido_02_FatEmp.QryServico_Nota.Close;
      Pedido_02_FatEmp.QryServico_Nota.Open;


      IF Qr_SelP1TPPCO.AsInteger=3 then
         Pedido_02_FatEmp.cb_tipopreco.ItemIndex:=3
      else
         Pedido_02_FatEmp.cb_tipopreco.ItemIndex:=2;
      Pedido_02_FatEmp.cb_tipopedidoExit(self);
      Pedido_02_FatEmp.mPd_Oper_Ped:=0;
      mqtd:=1;
      Qr_Ped.First;
      Pedido_02_FatEmp.mPd_MovEstoque     :=2;
      Pedido_02_FatEmp.mPd_SaiNor         :=false;
      Pedido_02_FatEmp.mPd_SaiCons        :=false;
      Pedido_02_FatEmp.mPd_SaiTerc        :=false;
      Pedido_02_FatEmp.mPd_SaiRVenda      :=false;

      Pedido_02_FatEmp.mPd_EntraNor       :=false;
      Pedido_02_FatEmp.mPd_EntraCons      :=false;
      Pedido_02_FatEmp.mPd_EntraTerc      :=false;
      Pedido_02_FatEmp.mPd_EntraRVenda    :=false;

      While not Qr_Ped.Eof do
         begin
         if Qr_PedQUANT.Value<=0 then
            begin
            Qr_Ped.Next;
            Continue;
            end;
         Pedido_02_FatEmp.cb_leitor.Checked:=False;
         Pedido_02_FatEmp.edt_codproduto.Text    := Qr_PedP2CODPRO.AsString;
         Pedido_02_FatEmp.edt_codprodutoExit(Self);
         Pedido_02_FatEmp.edt_lote.Text          := Qr_PedP2LOTE.AsString;
         Pedido_02_FatEmp.edt_precounitario.Value:= Arredonda( Qr_PedP2PRECO.AsFloat,4);
         Pedido_02_FatEmp.edt_quantidade.Value   := Qr_PedQUANT.AsFloat;
         Pedido_02_FatEmp.edt_quantidadeExit(self);
         Pedido_02_FatEmp.edt_desc1.Value        := Qr_PedP2DESC1.AsFloat;
         Pedido_02_FatEmp.edt_desc2.Value        := Qr_PedP2DESC2.AsFloat;
         Pedido_02_FatEmp.edt_desc3.Value        := Qr_PedP2DESC3.AsFloat;
         Pedido_02_FatEmp.edt_codven.Caption     := Qr_PedP2CODVEN.AsString;
         Pedido_02_FatEmp.edt_ambiente.Text      :=Qr_PedP2AMBIENTE.Value;
         Pedido_02_FatEmp.edt_complemento.Text   :=Qr_PedP2COMPLEMENTO.Value;
         Pedido_02_FatEmp.edt_descfin.Value      := 0;
         Pedido_02_FatEmp.edt_comissao.value     := 0;


         if Pedido_02_FatEmp.edt_quantidade.Value<=0 then
            begin
            Pedido_02_FatEmp.edt_codproduto.Text    := '';
            Pedido_02_FatEmp.edt_lote.Text          := '';
            Pedido_02_FatEmp.edt_dtvcto.Text        :='/  /';
            Pedido_02_FatEmp.edt_precounitario.Text := '';
            Pedido_02_FatEmp.edt_quantidade.Text    := '';
            Pedido_02_FatEmp.edt_desc1.Text         := '';
            Pedido_02_FatEmp.edt_desc2.Text         := '';
            Pedido_02_FatEmp.edt_desc3.Text         := '';
            Pedido_02_FatEmp.edt_descfin.Text       := '';
            Pedido_02_FatEmp.edt_comissao.Text      := '';
            Pedido_02_FatEmp.edt_descricao.Text     := '';
            Pedido_02_FatEmp.edt_marca.Text         := '';
            Pedido_02_FatEmp.edt_und.Text           := '';
            Qr_Ped.Next;
            Continue;
            end;

         Pedido_02_FatEmp.edt_precounitarioExit(self);


         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_PedP2CODPRO.Value,[]) then
            begin
            Pedido_02_FatEmp.DESCALTER.Lines.Clear;
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_PedP2CODPRO.Value))  do
               begin
               Pedido_02_FatEmp.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
               DM4.Qr_Ped02d.Next;
               end;
            end;

         Pedido_02_FatEmp.bbGravarItemClick(Self);


         mqtd:=mqtd+1;
         Qr_Ped.Next;
         end;
      //********************* servicos *******************************************

      mqtd:=1;
      Qr_Ser.First;
      While not Qr_Ser.Eof do
         begin
         if Qr_SerQUANT.Value<=0 then
            begin
            Qr_Ser.Next;
            Continue;
            end;

         Pedido_02_FatEmp.txts_codpro.Text       := Qr_SerP2SCODPRO.AsString;
         Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
         Pedido_02_FatEmp.txts_quant.Value       := DM1.Query5.FieldbyName('P2SQTD').AsFloat;
         Pedido_02_FatEmp.txts_desci01.Value     := DM1.Query5.FieldbyName('P2SDESC01').AsFloat;
         Pedido_02_FatEmp.txts_desci02.Value     := DM1.Query5.FieldbyName('P2SDESC02').AsFloat;
         Pedido_02_FatEmp.txts_desci03.Value     := DM1.Query5.FieldbyName('P2SDESC03').AsFloat;
         Pedido_02_FatEmp.txts_descfin.Value     := DM1.Query5.FieldbyName('P2SDESCFIN').AsFloat;
         Pedido_02_FatEmp.txts_comis.value       := DM1.Query5.FieldbyName('P2SPCOMIS').AsFloat;
         Pedido_02_FatEmp.txts_codproExit(Self);
         Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
         Pedido_02_FatEmp.txts_pcouniExit(self);
         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
            begin
            Pedido_02_FatEmp.DESCALTER.Lines.Clear;
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
               begin
               Pedido_02_FatEmp.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
               DM4.Qr_Ped02d.Next;
               end;
            end;
         Pedido_02_FatEmp.bbGravarServClick(Self);
         mqtd:=mqtd+1;
         Qr_Ser.Next;
         end;

      // fim dos servicos


   //   form_ped_autop_fatemp.Tool_Calcular.Click;
      if (Pedido_02_FatEmp.QryItem_Nota.RecordCount>0) or (Pedido_02_FatEmp.QryServico_Nota.RecordCount>0) then
         begin
         if (mvlrdes<>0) or (xTotalDesc01<>0) or (xTotalDesc02<>0) or (xTotalDescvlr<>0) then
            begin
            Pedido_02_FatEmp.edt_desconto01.Text :=FloatToStr(xTotalDesc01);
            Pedido_02_FatEmp.edt_desconto02.Text :=FloatToStr(xTotalDesc02);
            Pedido_02_FatEmp.edt_valordesconto.Text :=FloatToStr(xTotalDescvlr);
            Pedido_02_FatEmp.edt_valordescontoExit(self);
            end;
         Pedido_02_FatEmp.cb_tabelavendaExit(self);
         if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
            Pedido_02_FatEmp.fGerarFormas_ped02(iif(Pedido_02_FatEmp.cb_tabelavenda.Text='PP',1,0),0);

         Pedido_02_FatEmp.fPd_GravarItens(1);

         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.Add('DELETE FROM CADP02_TEMP WHERE ');
         DM1.query1.SQL.add('  P2TERM=:P2TERM');
         DM1.query1.SQL.add(' and P2DATHOR=:P2DATHOR');
         DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
         try
            DM1.Query1.ExecSQL;
            fDM1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_FatEmp','CADP01');
            end;
         Pedido_02_FatEmp.QryItem_Nota.Close;
         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.Add('DELETE FROM CADP01_TEMP WHERE ');
         DM1.query1.SQL.add('  P1TERM=:P1TERM');
         DM1.query1.SQL.add(' and P1DATHOR=:P1DATHOR');
         DM1.Query1.ParamByName('P1TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P1DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
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
         DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
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
         DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
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
         DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
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
         DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
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
         DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_FatEmp.mPd_NomeComputador;
         DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_FatEmp.mPd_DatHor_Eve;
         try
            DM1.Query1.ExecSQL;
            fDM1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,19474,'Pedido_02_FatEmp','CADP01');
            end;

         end;
         Pedido_02_FatEmp.mped02_ori:='';
         mChave_Fat :=Pedido_02_FatEmp.mpd_chave;
         mLotseq_Fat:=0;

   {   end
   else
      begin
      form_ped_fatemp.BBLIMPAR.Click;
      form_ped_fatemp.mlib_mPDescLib    :=mpDescAut;
      form_ped_fatemp.mlib_mPDescLib_Usr:=mpDescAut_codusr;
      form_ped_fatemp.BBINCLUIR.Enabled  :=False;
      form_ped_fatemp.BBLOCALIZAR.Enabled:=False;
      form_ped_fatemp.BBALTERAR.Enabled  :=False;
      form_ped_fatemp.BBEXCLUIR.Enabled  :=False;
      form_ped_fatemp.BBGRAVAR.Enabled   :=True;
      form_ped_fatemp.BBIMPRIMIR.Enabled :=False;
      form_ped_fatemp.BBEMITENF.Enabled  :=False;
      form_ped_fatemp.BBCUPOM.Enabled    :=False;
      form_ped_fatemp.BBCALCULAR.Enabled :=True;
      form_ped_fatemp.BBFATURAR.Enabled  :=False;
      form_ped_fatemp.PC_CAB.ActivePageIndex:=0;
      form_ped_fatemp.PC_CAB.Enabled     :=true;
      form_ped_fatemp.Pn_DigPro.Enabled     :=True;
      form_ped_fatemp.Pn_Servicos.Enabled     :=True;
      form_ped_fatemp.Pn_Complementares.Enabled     :=True;
      form_ped_fatemp.Pn_Situacao.Enabled     :=True;
      form_ped_fatemp.CB_TIPO.Enabled    :=True;
      form_ped_fatemp.CODDIG.Text        :=IntToStr(codusr);
      flcadusr(1,0,form_ped_fatemp.CODDIG.Text);
      form_ped_fatemp.NOMDIG.Text        :=DM4.Tb_UsrNOMUSR.Value;
      form_ped_fatemp.HORDIG.Text        :=FormatDatetime('hh:nn:ss',time);
      form_ped_fatemp.DATAP.Text:=FormatDatetime('dd/mm/yyyy',date);
      moper:=0;
      form_ped_fatemp.STG1.RowCount:=2;
      form_ped_fatemp.STG1.Rows[1].Clear;
      mqtd:=1;
      form_ped_fatemp.RG_TPPCO.ItemIndex:=2;
      Qr_Ped.First;
      While not Qr_Ped.Eof do
         begin
         if Qr_PedQUANT.Value<=0 then
            begin
            Qr_Ped.Next;
            Continue;
            end;
         form_ped_fatemp.STG1.RowCount:=mqtd+1;
         flcadpro(1,0,0,Qr_PedP2CODPRO.AsString);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[00],mqtd]:=Qr_PedP2CODPRO.AsString;
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[01],mqtd]:=FormatFloat(mcasqtd,Qr_PedQUANT.Value);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[02],mqtd]:=DM1.Tb_ProPDUND.Value;
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[03],mqtd]:=DM1.Tb_ProPDNOME.Value;
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[04],mqtd]:=Formatfloat(mcasas,Qr_PedP2PRECO.Value);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[06],mqtd]:=Formatfloat(mcasas,Qr_PedP2DESC1.Value);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[07],mqtd]:=Formatfloat(mcasas,Qr_PedP2DESC2.Value);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[08],mqtd]:=Formatfloat(mcasas,Qr_PedP2VALDES.Value);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[05],mqtd]:=Formatfloat(mcasas,(Qr_PedP2PRECO.Value*Qr_PedQUANT.Value));
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[43],mqtd]:=Formatfloat(mcasas,Qr_PedP2DESC3.Value);

         if Qr_PedP2LOTE.IsNull then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[09],mqtd]:=''
         else
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[09],mqtd]:=Qr_PedP2LOTE.Value;
         if Qr_PedP2DTVCTO.IsNull then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[10],mqtd]:=''
         else
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[10],mqtd]:=FormatDateTime(fdt2, Qr_PedP2DTVCTO.Value);

          if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
             form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString))
           else
             form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString));
           end
         else
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
             form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString))
           else
             form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString));
           end;
   //      form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[17],mqtd]:=FormatFloat('000',DM1.Tb_ProPDSIT.AsFloat);
         form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[18],mqtd]:=DM1.Tb_ProPDTABICM.Value;
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[19],mqtd]:=Formatfloat('0',DM1.Tb_ProPDLISTA.Value);
         form_ped_fatemp.STG1.cells[form_ped_fatemp.stg1_col[25],mqtd]:=DM1.Tb_ProPDPRECO1.AsString;
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[29],mqtd]:='';
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[11],mqtd]:='';

         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_PedP2CODPRO.Value,[]) then
            begin
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[03],mqtd]:='';
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_PedP2CODPRO.Value))  do
               begin
               form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[11],mqtd] :=form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[11],mqtd]+insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[03],mqtd] :=form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[03],mqtd]+insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               DM4.Qr_Ped02d.Next;
               end;
            end;

         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[30],mqtd]:='0';   // Media de descontos
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[31],mqtd]:='0';   // percentual de comissao
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[32],mqtd]:=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[33],mqtd]:='0';   // Isentas
         form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[34],mqtd]:=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);


         if DM4.Tb_Par01PORDGPED.Value=1 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME.Value
         else if DM4.Tb_Par01PORDGPED.Value=2 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME2.Value
         else if DM4.Tb_Par01PORDGPED.Value=3 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=insere(DM1.Tb_ProPDCODPRO.AsString,'0',15)
         else if DM4.Tb_Par01PORDGPED.Value=4 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=DM1.Tb_ProPDMARCA.Value+DM1.Tb_ProPDNOME.Value
         else if DM4.Tb_Par01PORDGPED.Value=5 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=FormatFloat('00',DM1.Tb_ProPDLISTA.Value)+DM1.Tb_ProPDNOME.Value
         else if DM4.Tb_Par01PORDGPED.Value=6 then
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=DM1.Tb_ProPDSECAO.Value+DM1.Tb_ProPDNOME.Value
         else
            form_ped_fatemp.STG1.Cells[form_ped_fatemp.stg1_col[35],mqtd]:=Formatfloat('000000000',mqtd);



         mqtd:=mqtd+1;
         Qr_Ped.Next;
         end;
      form_ped_fatemp.STG1.RowCount:=mqtd+1;
      //********************* servicos *******************************************

      form_ped_fatemp.STG_SERV.RowCount:=2;
      form_ped_fatemp.STG_SERV.Rows[1].Clear;
      mqtd:=1;
      Qr_Ser.First;
      While not Qr_Ser.Eof do
         begin
         if Qr_SerQUANT.Value<=0 then
            begin
            Qr_Ser.Next;
            Continue;
            end;
         form_ped_fatemp.STG_SERV.RowCount:=mqtd+1;
         flcadpro(1,0,0,Qr_SerP2SCODPRO.AsString);
         form_ped_fatemp.STG_SERV.Cells[00,mqtd]:=Qr_SerP2SCODPRO.AsString;
         form_ped_fatemp.STG_SERV.Cells[01,mqtd]:=FormatFloat(mcasqtd,Qr_SerQUANT.Value);
         form_ped_fatemp.STG_SERV.Cells[02,mqtd]:=DM1.Tb_ProPDUND.Value;
         form_ped_fatemp.STG_SERV.Cells[03,mqtd]:=DM1.Tb_ProPDNOME.Value;
         form_ped_fatemp.STG_SERV.Cells[04,mqtd]:=Formatfloat(mcasas,Qr_SerP2SPRECO.Value);
         form_ped_fatemp.STG_SERV.Cells[05,mqtd]:=Formatfloat(mcasas,Qr_SerP2SDESC1.Value);
         form_ped_fatemp.STG_SERV.Cells[06,mqtd]:=Formatfloat(mcasas,Qr_SerP2SDESC2.Value);
         form_ped_fatemp.STG_SERV.Cells[07,mqtd]:=Formatfloat(mcasas,Qr_SerP2SVALDES.Value);
         form_ped_fatemp.STG_SERV.Cells[08,mqtd]:=Formatfloat(mcasas,(Qr_SerP2SPRECO.Value*Qr_SerQUANT.Value));
         form_ped_fatemp.STG_SERV.Cells[09,mqtd]:='';
         if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
            begin
            form_ped_fatemp.STG_SERV.Cells[03,mqtd]:='';
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
               begin
               form_ped_fatemp.STG_SERV.Cells[09,mqtd] :=form_ped_fatemp.STG_SERV.Cells[09,mqtd]+insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               form_ped_fatemp.STG_SERV.Cells[03,mqtd] :=form_ped_fatemp.STG_SERV.Cells[03,mqtd]+insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60);
               DM4.Qr_Ped02d.Next;
               end;
            end;
          if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
             form_ped_fatemp.STG_SERV.cells[12,mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString))
           else
             form_ped_fatemp.STG_SERV.cells[12,mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString));
           end
         else
           begin
           if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
             form_ped_fatemp.STG_SERV.cells[12,mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString))
           else
             form_ped_fatemp.STG_SERV.cells[12,mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString));
           end;
   //      form_ped_fatemp.STG_SERV.cells[12,mqtd]:=FormatFloat('000',DM1.Tb_ProPDSIT.AsFloat);
         form_ped_fatemp.STG_SERV.cells[13,mqtd]:=DM1.Tb_ProPDTABICM.Value;
         form_ped_fatemp.STG_SERV.Cells[15,mqtd]:=Formatfloat('0',DM1.Tb_ProPDLISTA.Value);
         form_ped_fatemp.STG_SERV.cells[18,mqtd]:=DM1.Tb_ProPDPRECO1.AsString;
         form_ped_fatemp.STG_SERV.cells[19,mqtd]:=DM1.Tb_ProPDCODFOR.AsString;
         mqtd:=mqtd+1;
         Qr_Ser.Next;
         end;
      form_ped_fatemp.STG_SERV.RowCount:=mqtd+1;
      // fim dos servicos


      flcadcli(1,0,FloatTostr(mCodCli_Emp));
      flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
      form_ped_fatemp.CODPV.Text   :=Trim(CODPV.Text);
      form_ped_fatemp.CB_TABPV.Text:=Trim(CB_TABPV.Text);
      flcadpv(1,0,form_ped_fatemp.CB_TABPV.Text,form_ped_fatemp.CODPV.Text);
      form_ped_fatemp.CHAVE.Text :='';
      form_ped_fatemp.ORDEM.Text :='';
      form_ped_fatemp.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
      form_ped_fatemp.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      form_ped_fatemp.DATAP.Text :=FormatDatetime(fdt2,date);
   //   lindomar atualizar
      form_ped_fatemp.PEDORI1.Text:=mchaves1;
      form_ped_fatemp.PEDORI2.Text:=mchaves2;
      form_ped_fatemp.DATANF.Text:='/  /';
      form_ped_fatemp.NUMNF.Text  :='';
      form_ped_fatemp.SERIENF.Text:='';
      form_ped_fatemp.SUBSER.Text :='';
      form_ped_fatemp.PCOMIS.Text :='';
      form_ped_fatemp.MODELO.Text :='';
      form_ped_fatemp.OBS1.Text   :='';
      form_ped_fatemp.OBS2.Text   :='';
      form_ped_fatemp.OBS3.Text   :='';
      form_ped_fatemp.STATUS.Text :='0';
      form_ped_autop_fatemp.mtipop      :=0;
      form_ped_fatemp.CB_TIPO.ItemIndex:=form_ped_autop_fatemp.mtipop;
      form_ped_fatemp.CODDIG.Text :=Inttostr(codusr);
      form_ped_fatemp.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
      flcadusr(1,0,Inttostr(codusr));
      form_ped_fatemp.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
      form_ped_fatemp.DTMOD.Text  :='';
      form_ped_fatemp.NOMUSRM.Text:='';
      form_ped_fatemp.CB_CONF.Checked:=False;
      form_ped_fatemp.CODCON.Text    :='';
      form_ped_fatemp.DATCON.Text :='/  /';
      form_ped_fatemp.HORCON.Text :='';
      form_ped_fatemp.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
      form_ped_fatemp.CB_ECF.Checked:=False;
      form_ped_fatemp.DESC01.Text   :='0';
      form_ped_fatemp.DESC02.Text   :='0';
      form_ped_fatemp.VALDES.Text   :=FormatFloat(mcasas, mvlrdes);
      form_ped_fatemp.CODTRA.Text:='';
      form_ped_fatemp.NOMTRA.Text:='';
      form_ped_fatemp.QTDVOL.Text:='0';
      form_ped_fatemp.PESOL.Text :='0';
      form_ped_fatemp.PESOB.Text :='0';
      form_ped_fatemp.ESPECIE.Text       :='';
      form_ped_fatemp.RGFRETEPC.ItemIndex:=0;
      form_ped_fatemp.VALFRE.Text        :='0';
      form_ped_fatemp.UFPV.Text          :='';
      form_ped_fatemp.PLACAV.Text        :='';
      form_ped_fatemp.CODBCO.Text        :='';
      form_ped_fatemp.RGCODSER.ItemIndex :=0;
      mcodldr            :=0;
      mbcissqn           :=0;
      missqn             :=0;
      form_ped_fatemp.CODVEN.Text:=CODVEN.Text;
      form_ped_fatemp.NOMVEN2.Text:='';
      form_ped_fatemp.CODVEN3.Text:='';
      form_ped_fatemp.NOMVEN3.Text:='';
      flcadven(1,0,form_ped_fatemp.CODVEN.Text);
      form_ped_fatemp.NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      mcomis     :=0;
      form_ped_fatemp.RG_ORIGEM.ItemIndex:=0;
      form_ped_fatemp.CODTLV.Text:='';
      form_ped_fatemp.NOMTLV.Text:='';
      form_ped_fatemp.CB_ETIVOL.Checked :=False;
      form_ped_fatemp.CODSEP.Text:='';
      form_ped_fatemp.NOMSEP.Text:='';
      form_ped_fatemp.DATSEP.Text:='/  /';
      form_ped_fatemp.HORSEP.Text:='';
      form_ped_fatemp.codemb.Text:='';
      form_ped_fatemp.NOMEMB.Text:='';
      form_ped_fatemp.NUMCF.Text:='0';
      form_ped_fatemp.BBCALCULAR.Click;
      form_ped_fatemp.BBGRAVAR.Click;
      form_ped_fatemp.BBSAIR.Click;
      mChave_Fat :=form_ped_fatemp.mchave;
      end;
                   }

   if mChave_Fat<>0 then
      begin
      la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Update CADP01 set P1TIPO=0'+IntToStr(mfatemp_tipop_padrao)
                        +' where '+iif(la_Empresas='','',la_empresas+' and ')
                        +' P1LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P1CHAVE=0'+FloatToStr(mChave_Fat));
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,711,'Frm_FatEmp','CADP01');
         end;
      Qr_Sel.First;
      While not Qr_Sel.Eof do
         begin
         if Qr_SelP1OK.AsString<>'P' then
            begin
            Qr_Sel.Next;
            Continue;
            end;
         la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Update CADP01 set P1STATUS=9, P1SEMCOM=8, '
                           +' P1USRMOD=0'+IntTostr(codusr)+','
                           +' P1DTMOD='+chr(39)+FormatDatetime(fdt,pdatasis)+chr(39)+','
                           +' P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)+','
                           +' P1MOTIVO='+chr(39)+'Resumido/Faturado no Pedido: '+FloattoStr(mchave_fat)+'. '+chr(39)
                           +'  where '+iif(la_empresas='','',la_empresas+' and ')
                           +' P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                           +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString);
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,733,'Frm_FatEmp','CADP01');
            end;
         la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Update CADP02 set P2STATUS=9 '
                           +'  where '+iif(la_empresas='','',la_empresas+' and ')
                           +' P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                           +' and P2CHAVE=0'+Qr_SelP1CHAVE.AsString);
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,11391,'form_ped_fatemp','CADP01');
            end;

         Qr_Sel.Next;
         end;
      fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);
      CODCLI.Text:='';
      SELECAO.Enabled:=False;
      FATURAR.Enabled:=False;
      end
   else
      fmensagem('Empréstimo não Faturado!',0,['0'],0);
   {if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
      begin
      form_ped_autop_fatemp.Tool_Gravar.Enabled:=false;
      form_ped_autop_fatemp.Close;
      form_ped_autop_fatemp.Free;
      form_ped_autop_fatemp:=nil;
      Application.CreateForm(Tfrm_ped_autop, form_ped_autop_fatemp);
      end
   else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
      begin}
      Pedido_02_FatEmp.btn_gravar.Enabled:=false;
      Pedido_02_FatEmp.Close;
      Pedido_02_FatEmp.Free;
      Pedido_02_FatEmp:=nil;
      Application.CreateForm(Tfrm_ped_02, Pedido_02_FatEmp);
   {   end
   else
      begin
      form_ped_fatemp.BBGRAVAR.Enabled:=false;
      form_ped_fatemp.Close;
      form_ped_fatemp.Free;
      form_ped_fatemp:=nil;
      Application.CreateForm(Tfrm_ped, form_ped_fatemp);
      end;      }
   Qr_Sel.Close;
   //mprog_ori:='frm_fatemp';
   end;

end;

function tFrm_fatEmp.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mForm_Ped: TFrm_Venda_Pre_Farma;
  mChave_Fat: Real;
  mDesconto: Real;
  query_exe: TQuery;
  Query_Cons:TQuery;

begin

Application.CreateForm(TFrm_Venda_Pre_Farma,mForm_Ped);
mForm_Ped.mProcessamento_Externo:=true;
mForm_Ped.Show;

mForm_Ped.sbnIncluirClick(self);
mForm_Ped.edt_codcli.Text:=codcli.Text;
mForm_Ped.edt_codven.Text:=CODVEN.Text;

mForm_Ped.edt_codcliExit(self);
mForm_Ped.edt_codvenExit(self);

mForm_Ped.cb_tipoped.Text:=tab_tped_mov[0,00];
mForm_Ped.cb_tipopedExit(self);



if flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   mForm_Ped.edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.AsString+DM1.Tb_PVPVCODPV.AsString;
mForm_Ped.edt_codCondPagExit(self);

Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


if Qr_SelP1CODEMP.AsFloat>0 then
   mform_ped.edt_submod.Text:='100'
else
   mform_ped.edt_submod.Text:='000';

mForm_Ped.pcCabecalho.ActivePage:=mForm_Ped.tsCabecalho;
mForm_Ped.cb_tppco.ItemIndex:=2;


mForm_Ped.edt_pedori1.Text    :=mchaves1;
mForm_Ped.edt_pedori1Exit(Self);
mForm_Ped.edt_pedori2.Text    :=mchaves2;
mForm_Ped.edt_pedori2Exit(Self);
mForm_Ped.cb_leitor.Checked:=False;



// termino



Qr_Ped.First;

While not Qr_Ped.Eof do
  begin
  if Qr_PedQUANT.Value<=0 then
     begin
     Qr_Ped.Next;
     Continue;
     end;
  mForm_Ped.Tb_Ped02_pre.Append;
  mForm_Ped.Tb_Ped02_preP2CODPRO.AsString :=Qr_PedP2CODPRO.AsString;
  mForm_Ped.fValidarDigitacaoItem;
  mForm_Ped.Tb_Ped02_preP2PRECO.Value  :=Arredonda( Qr_PedP2PRECO.AsFloat,DM1.Tb_PargerPCASASPU.AsInteger+1);
  mForm_Ped.Tb_Ped02_preP2QTD.Value    :=Arredonda( Qr_PedQUANT.Value,DM1.Tb_PargerPCASAS.AsInteger+1);
  mForm_Ped.Tb_Ped02_preP2DESC_PERC01.Value    :=Qr_PedP2DESC1.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_PERC02.Value    :=Qr_PedP2DESC2.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_PERC03.Value    :=Qr_PedP2DESC3.Value;
  mForm_Ped.Tb_Ped02_preP2CODVEN.Value         :=Qr_PedP2CODVEN.Value;
  mForm_Ped.Tb_Ped02_preP2AMBIENTE.Value       :=Qr_PedP2AMBIENTE.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_COMP.Value      :=Qr_PedP2COMPLEMENTO.Value;
  mForm_Ped.Tb_Ped02_pre.Post;
  Qr_Ped.Next;
  end;
mDesconto:=valfloat(mForm_Ped.edt_totliq.Text)-edt_totalsel.Value;
if mDesconto>0 then
   begin
   mForm_Ped.edt_desc_valor.Text:=formatfloat(mcasas, mDesconto);
   mForm_Ped.edt_desc_valorExit(Self);
   end;
//********************* servicos *******************************************
{
mqtd:=1;
Qr_Ser.First;
While not Qr_Ser.Eof do
   begin
   if Qr_SerQUANT.Value<=0 then
      begin
      Qr_Ser.Next;
      Continue;
      end;

   mForm_Ped.Tb_ped02S_pre.Append;
   mForm_Ped.Tb_ped02S_preP2SCODSER.Value :=Qr_PedP2CODPRO.Value;
   mForm_Ped.fValidarDigitacaoItem;

   Pedido_02_FatEmp.txts_codpro.Text       := Qr_SerP2SCODPRO.AsString;
   Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
   Pedido_02_FatEmp.txts_quant.Value       := DM1.Query5.FieldbyName('P2SQTD').AsFloat;
   Pedido_02_FatEmp.txts_desci01.Value     := DM1.Query5.FieldbyName('P2SDESC01').AsFloat;
   Pedido_02_FatEmp.txts_desci02.Value     := DM1.Query5.FieldbyName('P2SDESC02').AsFloat;
   Pedido_02_FatEmp.txts_desci03.Value     := DM1.Query5.FieldbyName('P2SDESC03').AsFloat;
   Pedido_02_FatEmp.txts_descfin.Value     := DM1.Query5.FieldbyName('P2SDESCFIN').AsFloat;
   Pedido_02_FatEmp.txts_comis.value       := DM1.Query5.FieldbyName('P2SPCOMIS').AsFloat;
   Pedido_02_FatEmp.txts_codproExit(Self);
   Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
   Pedido_02_FatEmp.txts_pcouniExit(self);
   if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
      begin
      Pedido_02_FatEmp.DESCALTER.Lines.Clear;
      While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
         begin
         Pedido_02_FatEmp.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
         DM4.Qr_Ped02d.Next;
         end;
      end;
   Pedido_02_FatEmp.bbGravarServClick(Self);
   mqtd:=mqtd+1;
   Qr_Ser.Next;
   end;
 }
if  (xTotalDesc01<>0) or (xTotalDesc02<>0) or (xTotalDescvlr<>0) then
   mForm_Ped.edt_desc_valor.Text :=FloatToStr(xTotalDescvlr+xTotalDesc02 );

mChave_Fat := fSonumero(mForm_Ped.edt_chave.Text);

//Qr_Sel.Close;
mForm_Ped.mped_Alterou_Cab:=false;

mForm_Ped.sbnGravarClick(self);
//fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);

// inicio

if mChave_Fat<>0 then
   begin
   query_exe:=TQuery.Create(self);
   query_exe.DatabaseName:='SG_ASSOC';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.add('Update CADP01 set P1TIPO=0'+IntToStr(mfatemp_tipop_padrao)
                     +' where '+iif(la_Empresas='','',la_empresas+' and ')
                     +' P1LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P1CHAVE=0'+FloatToStr(mChave_Fat));
   Try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,711,'Frm_FatEmp','CADP01');
      end;
   Qr_Sel.First;
   While not Qr_Sel.Eof do
      begin
      if Qr_SelP1OK.AsString<>'P' then
         begin
         Qr_Sel.Next;
         Continue;
         end;
      la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Update CADP01 set P1STATUS=9, P1SEMCOM=8, '
                        +' P1USRMOD=0'+IntTostr(codusr)+','
                        +' P1DTMOD='+chr(39)+FormatDatetime(fdt,pdatasis)+chr(39)+','
                        +' P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)+','
                        +' P1MOTIVO='+chr(39)+'Resumido/Faturado no Pedido: '+FloattoStr(mchave_fat)+'. '+chr(39)
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                        +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString);
      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,733,'Frm_FatEmp','CADP01');
         end;
      la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Update CADP02 set P2STATUS=9 '
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                        +' and P2CHAVE=0'+Qr_SelP1CHAVE.AsString);
      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,11391,'form_ped_fatemp','CADP01');
         end;
      Qr_Sel.Next;
      end;
   if Log_TipoLote=1 then
      begin
      la_Empresas:=fEmpresas_Selecionadas('CADP02_LOTES','P2LM_CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Delete from CADP02_LOTES  '
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P2LM_LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2LM_CHAVE=0'+FloatToStr(mChave_Fat));

      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,1869,'form_ped_fatemp','CADP02');
         end;



      la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      Query_Cons.Close;
      Query_Cons.SQL.Clear;
      Query_Cons.SQL.Add('Select P2CODEMP,P2ITEM,P2CODPRO,P2LOTSEQ,P2CHAVE from CADP02 WHERE '
                        +iif(la_empresas='','',la_empresas+' and ')
                        +' P2LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2CHAVE=0'+FloatToStr(mChave_Fat)
                        +' order by P2ITEM ');
      try
         Query_Cons.Open;
      except
         ex_erroSql_novo(query_cons,1869,'form_ped_fatemp','CADP02');
         end;


      While not Query_Cons.Eof do
         begin
         la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';

         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='P2LM_CODEMP=CODEMP AND P2LM_LOTSEQ=LOTSEQ AND P2LM_CHAVE=CHAVE ';

         query_exe.Close;
         query_exe.Sql.Clear;
         query_exe.SQL.Add('Insert into CADP02_LOTES ('
                            +'P2LM_CODEMP '
                            +',P2LM_CODPRO '
                            +',P2LM_LOTSEQ '
                            +',P2LM_CHAVE '
                            +',P2LM_ITEM '
                            +',P2LM_LOTE '
                            +',P2LM_DTVCTO '
                            +',P2LM_QTD '
                            +',P2LM_QTDDEV ) '
                            +' Select '+ Query_Cons.FieldbyName('P2CODEMP').AsString
                            +',max(P2LM_CODPRO) '
                            +','+ Query_Cons.FieldbyName('P2LOTSEQ').AsString
                            +','+ Query_Cons.FieldbyName('P2CHAVE').AsString
                            +','+ Query_Cons.FieldbyName('P2ITEM').AsString


                            +',P2LM_LOTE '
                            +',P2LM_DTVCTO '
                            +',sum(P2LM_QTD) '
                            +',0 AS P2LM_QTDDEV '
                            +' from '+mTabTemp_emp+',CADP02_LOTES'+iif(la_tabelas='','',',')+la_tabelas
                            +'       '+la_Join
                            +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                            +' P2LM_CODPRO=:CODPRO '
                            +' group by P2LM_LOTE,P2LM_DTVCTO '
                            );

         query_exe.ParamByName('CODPRO').AsFloat:=Query_Cons.FieldbyName('P2CODPRO').AsFloat;


         try
            Query_EXE.ExecSQL;
            fdm1StartCommit;
         except
            end;
         Query_Cons.Next;
         end;
      end;
   fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);
   end;

// termino

Qr_Sel.Close;

CODCLI.Text:='';
NOMCLI.Text:='';
SELECAO.Enabled:=False;
FATURAR.Enabled:=False;
FreeAndNil(mForm_Ped);
if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);

// termino
end;
procedure TFrm_FatEmp.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_FatEmp',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp.CODVENExit(Sender: TObject);
begin
if flcadven(1,0,Trim(CODVEN.Text)) then
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;
end;

procedure TFrm_FatEmp.CB_TABPVExit(Sender: TObject);
begin
if (BBSAIR.Focused) then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') then
   begin
   fmensagem('Tabelas Válidas "AV","AP","PP","PO"',0,['0'],0);
   exit;
   end;
if CB_TABPV.Text='PO' then
   CODPV.Text:='99';

end;

procedure TFrm_FatEmp.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPV.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(codpv.Text)<>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
      CODPVExit(self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_FatEmp.CODPVExit(Sender: TObject);
begin
if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
   begin
   NOMPV.Text:='Plano Opcional(Digitado)';
   form_pvo_fatemp.ShowModal;
   mpvtdc       := form_pvo_fatemp.CB_PVTPDC.ItemIndex;
   mpvtc        := form_pvo_fatemp.CB_PVTPC.ItemIndex;
   mpvtpd1      := form_pvo_fatemp.CB_PVTPD1.ItemIndex;
   mpvtpd2      := form_pvo_fatemp.CB_PVTPD2.ItemIndex;
   mpvtpdesf    := form_pvo_fatemp.CB_PVTPDESF.ItemIndex;
   mtpp         := form_pvo_fatemp.CB_TPP.ItemIndex;
   mpvcom       := valfloat(form_pvo_fatemp.COM.Text);
   mpvactd      := valfloat(form_pvo_fatemp.ACTD.Text);
   mpvact00     := valfloat(form_pvo_fatemp.ACT00.Text);
   mpvact01     := ValFloat(form_pvo_fatemp.ACT01.Text);
   mpvact99     := ValFloat(form_pvo_fatemp.ACT99.Text);
   mpvdes       := ValFloat(form_pvo_fatemp.DES.Text);
   mpvdes1      := ValFloat(form_pvo_fatemp.DES1.Text);
   mpvdes2      := ValFloat(form_pvo_fatemp.DES2.Text);
   mpvdescf     := ValFloat(form_pvo_fatemp.DESCF.Text);
   mpvddescf    := form_pvo_fatemp.CB_PVDDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(form_pvo_fatemp.DIASDESCF.Text));
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      end
   else
      begin
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
      mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
      mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
      mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
      mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
      mtpp         := DM1.Tb_PVPVTPP.AsInteger;
      mpvcom       := DM1.Tb_PVPVCOM.Value;
      mpvactd      := DM1.Tb_PVPVACTD.Value;
      mpvact00     := DM1.Tb_PVPVACT00.Value;
      mpvact01     := DM1.Tb_PVPVACT01.Value;
      mpvact99     := DM1.Tb_PVPVACT99.Value;
      mpvdes       := DM1.Tb_PVPVDES.Value;
      mpvdes1      := DM1.Tb_PVPVDES1.Value;
      mpvdes2      := DM1.Tb_PVPVDES2.Value;
      mpvdescf     := DM1.Tb_PVPVDESCF.Value;
      mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
      mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
      form_pvo_fatemp.Tb_Po99_nov.Close;
      form_pvo_fatemp.Tb_Po99_nov.SQL.Clear;
      form_pvo_fatemp.Tb_Po99_nov.SQL.add('Select PV2CODEMP as POCODEMP, '
                             +' PV2PRAZO as POPRAZO from CADPV2 '
                             +' where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                             +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                             +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                             +' order by PV2PRAZO');
      form_pvo_fatemp.Tb_Po99_nov.Open;
      end;
   end;
{if DM1.Tb_PargerPFORPEDPAD.asinteger=0 then
   begin
   if mpvtdc=0 then
      form_ped_fatemp.DESC01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      form_ped_fatemp.DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);
   end;}

end;

procedure TFrm_FatEmp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   form_ped_autop_fatemp.Tool_Gravar.Enabled:=false;
   form_ped_autop_fatemp.close;
   form_ped_autop_fatemp.mAceitaConfirmacao:=true;
   form_ped_autop_fatemp.Free;
   form_ped_autop_fatemp:=nil;
   end
else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
   begin}
   Pedido_02_FatEmp.btn_gravar.Enabled:=False;
   pedido_02_fatemp.close;
   Pedido_02_FatEmp.mAceita_pergunta:=true;
   Pedido_02_FatEmp.Free;
   Pedido_02_FatEmp:=nil;
{   end
else
   begin
   form_ped_fatemp.BBGRAVAR.Enabled:=false;
   form_ped_fatemp.close;
   form_ped_fatemp.Free;
   form_ped_fatemp:=nil;
   end;}

if mTabTemp_emp<>'' then
   begin
   fDeletaTemporaria(mTabTemp_emp);
   end;

end;
function tFrm_FatEmp.fDeletaTemporaria(pNomTab: String): Boolean;
var
Query_temp: TQuery;
begin
result:=true;
Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('Select count(*) from USER_OBJECTS where '
                  +' OBJECT_TYPE=:TIPOOBJ and OBJECT_NAME=:NOMETAB ' );
Query_temp.ParamByName('TIPOOBJ').AsString:='TABLE';
Query_temp.ParamByName('NOMETAB').AsString:=pNomTab;
Query_temp.open;
if query_temp.fields[0].AsInteger>0 then
   begin
   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('Drop table '+pNomTab);
   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      result:=false;
      end;
   end;
FreeAndNil(Query_temp);

end;
function TFrm_FatEmp.fFatEmpSeleciona(pMarca: String): Boolean;
begin

xTotalSel   :=0;
xTotalGeral :=0;
xTotalDesc01:=0;
xTotalDesc02:=0;
xTotalDescvlr:=0;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Sel.Close;
Qr_Sel.SQL.Clear;
Qr_Sel.SQL.Add('Select '+chr(39)+pMarca+chr(39)+' as P1OK,');
Qr_Sel.SQL.Add('      sum(P1TOTALL) as P1TOTALL,');
Qr_Sel.SQL.Add('      sum(p1valdes01) as P1VALDES01,');
Qr_Sel.SQL.Add('      sum(p1DESC01) as P1DESC01, ');
Qr_Sel.SQL.Add('      sum(P1VALDES02) as p1valdes02,');
Qr_Sel.SQL.Add('      sum(p1DESC02) as P1DESC02, ');
Qr_Sel.SQL.Add('      sum(P1TOTDES) as p1TOTDES,');
Qr_Sel.SQL.Add('      SUM(p1vlrdes)   as p1vLRDES,');
Qr_Sel.SQL.Add('      max(P1PDESCLIB) as P1PDESCLIB,');
Qr_Sel.SQL.Add('      max(P1PDESCL_USR) as P1PDESCL_USR,');
Qr_Sel.SQL.Add('      min(P1ORDEM) as P1ORDEM,');
Qr_Sel.SQL.Add('      max(P1CODEMP) as P1CODEMP,');
Qr_Sel.SQL.Add('      max(P1TPPCO) as P1TPPCO, ');
Qr_Sel.SQL.Add('      max(P1TIPO) as P1TIPO,');
Qr_Sel.SQL.Add('      P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,');
Qr_Sel.SQL.Add('      CRAZAO ');
Qr_Sel.SQL.Add('       from CADP01,CADCLI where '+iif(la_empresas='','',la_Empresas+' and ')
              +' P1STATUS<8'
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntTostr(codemp)+' ')
              +' and CCODCLI=P1CODCLI '
              +' and P1TIPO=9');
if Trim(CODCV.Text) <> '' then
   Qr_Sel.SQL.Add(' and P1CODCV=0'+Trim(CODCV.Text));
if Trim(CODCLI.Text)<>'' then
   Qr_Sel.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Sel.SQL.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Sel.SQL.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
Qr_Sel.SQL.Add('group by P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,CRAZAO');

if CB_ORDEM.ItemIndex=0 then
   Qr_Sel.SQL.Add(' Order by P1CHAVE,P1ORDEM')
else if CB_ORDEM.ItemIndex=1 then
   Qr_Sel.SQL.Add(' Order by P1DATAP,CRAZAO')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Sel.SQL.Add(' Order by CRAZAO,P1CODCLI');

Qr_Sel.Open;
if Qr_sel.eof then
   Result:=False
else
   begin
   while not Qr_Sel.Eof do
      begin
      xTotalGeral := xTotalGeral+Qr_SelP1TOTALL.Value;
      if Qr_SelP1OK.asstring='P' then
         begin
         xTotalSel:=xTotalSel+Qr_SelP1TOTALL.Value;
         xTotalDesc01:=xTotalDesc01+Qr_SelP1DESC01.Value;
         xTotalDesc02:=xTotalDesc02+Qr_SelP1DESC02.Value;
         xTotalDescvlr:=xTotalDescvlr+Qr_SelP1VLRDES.Value;
         end;
      Qr_Sel.Next;
      end;
   Result:=True;
   end;
edt_totalgeral.Value         := xTotalGeral;
edt_totalsel.Value           := xTotalSel;
edt_totalASelecionar.Value   := xtotalGeral-xTotalSel;

end;

procedure TFrm_FatEmp.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_SelP1OK.AsString = 'P' then
   begin
   DBGrid1.Canvas.Brush.Color := clRed;
   DBGrid1.Canvas.Font.Color  := clInfoBk;
   end;
if Qr_SelP1TOTALL.AsFloat<>Qr_Seltotalp2.AsFloat then
   DBGrid1.Canvas.Font.Color  := clLime;
DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_FatEmp.CODCVExit(Sender: TObject);
begin
if ValFloat(CODCV.Text)>0 then
   begin
   if not flcadcv(1,CODCV.Text) then
      begin
      fmensagem('Convênio não Cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      NOMCV.Text:=DM1.Tb_CVCVRAZAO.Value;
   end;

if Trim(CODCV.Text) = '' then
   NOMCV.Text := '';
end;

procedure TFrm_FatEmp.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamacv(0,'frm_Cli',Key);
   maltdup:=true;
   if fsonumero(CODCV.Text)<>0 then
      begin
      CODCVExit(self);
      maltdup:=true;
      end;
   key:=#0;
   end;
end;

procedure TFrm_FatEmp.CB_ORDEMExit(Sender: TObject);
begin
fDeletaPadroes(0,'_FATEMP','CB_ORDEM');
fGravaPadroes(0,'CB_ORDEM'     ,'checked'   ,'_FATEMP',IntTostr(CB_ORDEM.ItemIndex));

end;
function TFrm_FatEmp.FAtualiza(pTipo: Integer):Boolean;
var
  mtemfat: Boolean;
  minc1,minc2: String;
  mchave: String;
  Query_Cons:TQuery;
begin
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


if trim(mTabTemp_emp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('truncate table '+mTabTemp_emp);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


TOTALMERC.Value:=0;
mtemfat:=False;
if (not Qr_Sel.Active) or (Qr_Sel.Isempty) then
   begin
   result:=false;
   exit;
   end;
Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString='P' then
      begin
      mtemfat:=True;
      break;
      end;
   Qr_sel.Next;
   end;
if not mtemfat then
   begin
   exit;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');

//************************* SERVICOS ***************************************

Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString<>'P' then
      begin
      Qr_Sel.Next;
      Continue;
      end;
   if mTabTemp_emp='' then
      begin
      mtabtemp_emp:=fProcTemp(1);

      fDeletaTemporaria(mTabTemp_emp);


      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Create Table '+mtabtemp_emp+' as '
                      +' Select P1CODEMP AS CODEMP '
                      +' ,P1LOTSEQ AS LOTSEQ '
                      +' ,P1CHAVE AS CHAVE '
                      +' ,P1ORDEM AS ORDEM '
                      +' from CADP01 '
                      +' where P1CODEMP=0'+Qr_SelP1CODEMP.AsString
                      +' and P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                      +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString
                      +' and P1ORDEM=0'+Qr_SelP1ORDEM.AsString );

      //DM1.Query2.SQL.SaveToFile('C:\ErroEmprestimo.txt');
      try
         DM1.Query2.execsql;
         fdm1startcommit;
      except
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp_emp+' ( '
                      +'  CODEMP '
                      +' ,LOTSEQ '
                      +' ,CHAVE '
                      +' ,ORDEM '
                      +' ) values ('
                      +'  :CODEMP '
                      +' ,:LOTSEQ '
                      +' ,:CHAVE '
                      +' ,:ORDEM '
                      +')');
      DM1.Query1.ParamByName('CODEMP').asfloat:=Qr_SelP1CODEMP.AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').asfloat:=Qr_SelP1LOTSEQ.AsFloat;
      DM1.Query1.ParamByName('CHAVE').asfloat:=Qr_SelP1CHAVE.AsFloat;
      DM1.Query1.ParamByName('ORDEM').asfloat:=Qr_SelP1ORDEM.AsFloat;
      try
         DM1.Query1.execsql;
         fdm1startcommit;
      except
         end;



      end;
   Qr_sel.Next;
   end;
// INICIO
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from '+mtabtemp_emp+' order by CHAVE  ');
DM1.Query2.Open;
mchaves1:='';
mchaves2:='';
minc1:='';
While not DM1.Query2.Eof do
   begin
   if length(trim(mchaves1))<51 then
      begin
      mchaves1:=mchaves1+minc1+FormatFloat('000000',DM1.query2.fieldbyName('CHAVE').AsFloat)
                              +'/'+FormatFloat('00',DM1.query2.fieldbyName('ORDEM').AsFloat);
      minc1:=',';
      end
   else if length(trim(mchaves2))<51 then
      begin
      mchaves2:=mchaves2+minc2+FormatFloat('000000',DM1.query2.fieldbyName('CHAVE').AsFloat)
                              +'/'+FormatFloat('00',DM1.query2.fieldbyName('ORDEM').AsFloat);
      minc2:=',';
      end;
   DM1.Query2.Next;
   end;
// TERMINO

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
if not AgruparItens then
  begin
  Qr_Ped.SQL.Add(' Select PDNOME,PDUND,P2CODPRO,P2LOTE, P2DTVCTO,P2PRECO,P2DESC1,');
  Qr_Ped.SQL.Add(' P2DESC2,P2DESC3,P2VALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN,    ');
  Qr_Ped.SQL.Add(' P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, ');
  Qr_Ped.SQL.Add(' P2AMBIENTE,P2COMPLEMENTO,sum(P2QTD) as QUANT ');
  end
else
  begin
  Qr_Ped.SQL.Add(' Select PDNOME,PDUND,P2CODPRO,max(P2LOTE) AS P2LOTE,max(P2DTVCTO) as P2DTVCTO, '
                +'  SUM(P2QTD*P2PRECO)/SUM(P2QTD) AS P2PRECO,               ');
  Qr_Ped.SQL.Add(' MAX(P2DESC1) AS P2DESC1,MAX(P2DESC2) AS P2DESC2,MAX(P2DESC3) AS P2DESC3,            ');
  Qr_Ped.SQL.Add(' MAX(P2VALDES) AS P2VALDES,MAX(PDSIT) AS PDSIT,MAX(PDLISTA) AS PDLISTA,             ');
  Qr_Ped.SQL.Add(' MAX(PDTABICM) AS PDTABICM,MAX(PDCODFOR) AS PDCODFOR,max(P2CODVEN) as P2CODVEN,MAX(P2PCOFPG) AS P2PCOFPG,     ');
  Qr_Ped.SQL.Add(' MAX(P2CODFAB) AS P2CODFAB,MAX(P2PCOTAB) AS P2PCOTAB, MAX(P2UCPR) AS P2UCPR, MAX(P2PCOCUS) AS P2PCOCUS,       ');
  Qr_Ped.SQL.Add(' max(P2PCOMAX) as p2pcomax, max(P2DESCM) as p2descm, max(P2AMBIENTE) as p2ambiente, ');
  Qr_Ped.SQL.Add(' MAX(P2COMPLEMENTO) AS P2COMPLEMENTO,sum(P2QTD) as QUANT');
  end;

  Qr_Ped.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<8 ');


//******************* FIM DOS SERVICOS *************************************


if not AgruparItens then
  begin
  Qr_Ped.SQL.Add(' GROUP BY PDNOME,PDUND,P2CODPRO,P2LOTE,P2DTVCTO,P2PRECO,P2DESC1,P2DESC2,P2DESC3,P2VALDES,     ');
  Qr_Ped.SQL.Add(' PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN,P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, ');
  Qr_Ped.SQL.Add(' P2AMBIENTE ,P2COMPLEMENTO');
  end
else
  begin
  Qr_Ped.SQL.Add('GROUP BY PDNOME,PDUND,P2CODPRO');
  end;
//Qr_Ped.SQL.SaveToFile('C:\SQL.TXT');

try
   Qr_Ped.Open;
except
   Qr_Ped.SQL.SaveToFile('C:\SQL.TXT');
   end;
While not Qr_Ped.Eof do
   begin
   TOTALMERC.Value:=TOTALMERC.Value+(Qr_PedP2PRECO.AsFloat*Qr_PedQUANT.AsFloat);
   Qr_Ped.Next;
   end;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2SCODEMP','PDCODPRO' ,'P2SCODPRO');
mchave:='';
Qr_Sel.First;
while not Qr_Sel.Eof do
  begin
  mchave:=mchave+Qr_SelP1CHAVE.AsString+',';
  Qr_Sel.Next;
  end;
mchave:=Copy(mchave,1,length(mchave)-1);
Qr_Ser.Close;
Qr_Ser.SQL.Clear;
Qr_Ser.SQL.Add('Select PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDESC3,P2SVALDES,PDSIT,PDLISTA,PDTABICM,'
              +' PDCODFOR, '+QuotedStr('S')+' as Tipo,'
              +'         sum(P2SQTD) as QUANT from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<8 ');
if trim(mchave)<>'' then
  Qr_Ser.SQL.Add(' and P1CHAVE in ('+mchave+')');
Qr_Ser.SQL.Add(' GROUP BY PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDESC3,P2SVALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR');
try
  Qr_Ser.Open;
except
  Qr_Ser.SQL.SaveToFile('c:\sql.txt');
  end;



//************************* SERVICOS ***************************************
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02D','P2DCODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_instrucao:='P2DCODEMP=CODEMP AND P2DLOTSEQ=LOTSEQ AND P2DCHAVE=CHAVE AND P2DORDEM=ORDEM ';


DM4.Qr_Ped02d.Close;
DM4.Qr_Ped02d.SQL.Clear;
DM4.Qr_Ped02d.SQL.Add('Select * from '+mTabTemp_emp+',CADP02D'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P2DCHAVE<>-99999 ');
DM4.Qr_Ped02d.SQL.Add(' order by P2DCODEMP,P2DLOTSEQ,P2DCHAVE,P2DORDEM,P2DITEM,P2DLINHA');
try
   DM4.Qr_Ped02d.Open;
except
   DM4.Qr_Ped02d.sql.savetofile('c:\sql.txt');
   end;

FreeAndNil(Query_Cons);
result:=true;


end;

procedure TFrm_FatEmp.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TsResMerc then
   begin
   FAtualiza(0);
   end;
end;

procedure TFrm_FatEmp.Qr_SelCalcFields(DataSet: TDataSet);
begin

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select sum(Round( (P2QTD*P2PRECO),'+DM1.Tb_PargerPCASAS.AsString+')) from CADP02 '
                  +' where P2CODEMP=0'+Qr_SelP1CODEMP.AsString
                  +' and   P2CHAVE=0'+Qr_SelP1CHAVE.AsString
                  +' and   P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                  +' and   P2ORDEM=0'+Qr_SelP1ORDEM.AsString);
DM1.Query1.Open;
Qr_Seltotalp2.AsFloat:=(DM1.query1.Fields[0].AsFloat-Qr_SelP1TOTDES.AsFloat);


end;

procedure TFrm_FatEmp.btnImprimirClick(Sender: TObject);
begin
   if not Qr_Ped.IsEmpty then
      RLReport1.PreviewModal
   else begin
      fmensagem('Não existe registro para Impressão!',0,['0'],0);
      Exit;
   end;
end;

procedure TFrm_FatEmp.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if Trim(CODCV.Text) <> '' then
      lbl_convenio.Caption := CODCV.Text+'-'+NOMCV.Text
   else
      lbl_convenio.Caption := '';

   if Trim(CODCLI.Text) <> '' then
      lbl_cliente.Caption  := CODCLI.Text+'-'+NOMCLI.Text
   else
      lbl_cliente.caption  := '';
end;

procedure TFrm_FatEmp.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   rdb_unitario.Text       := FormatFloat('#,##0.000',Qr_PedP2PRECO.Value);
   rdb_quantidade.Text     := FormatFloat('#,##0.000',Qr_PedQUANT.Value);
   xTotal                  := 0;
   xTotal                  := Qr_PedP2PRECO.Value * Qr_PedQUANT.Value;
   lbl_totalizacao.Caption := FormatFloat('#,##0.00',xTotal);
end;

procedure TFrm_FatEmp.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   xTotalGeral := 0;
   Qr_Ped.First;
   while not Qr_Ped.eof do begin
     xTotalGeral            := xTotalGeral + (Qr_PedP2PRECO.Value * Qr_PedQUANT.Value);
     lbl_totalgeral.Caption := FormatFloat('#,##0.00',xTotalGeral);

     Qr_Ped.Next;
   end;
end;

procedure TFrm_FatEmp.Qr_SelAfterPost(DataSet: TDataSet);
begin
if Qr_SelP1OK.AsString='P' then
   xTotalSel:=xTotalSel+Qr_SelP1TOTALL.AsFloat
else
   xTotalSel:=xTotalSel-Qr_SelP1TOTALL.AsFloat;
//xTotalSel:=xTotalSel-xTotalSel_ant-xTotalASel_Ant;
edt_totalgeral.Value         := xTotalGeral;
edt_totalsel.Value           := xTotalSel;
edt_totalASelecionar.Value   := xtotalGeral-xTotalSel;

end;

procedure TFrm_FatEmp.DBGrid1DblClick(Sender: TObject);
begin
Qr_Sel.Edit;
if Qr_SelP1OK.AsString<> 'P' then
   Qr_SelP1OK.Value:='P'
else Qr_SelP1OK.AsString := ' ';
Qr_Sel.Post;


end;

procedure TFrm_FatEmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form_pvo_fatemp.close;
form_pvo_fatemp.Free;
form_pvo_fatemp:=nil;

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_FatEmp.bbSalvarPadraoClick(Sender: TObject);
var
Indice : Integer;
begin
fDeletaPadroes(-1,'_FATEMP','CB_TIPO');

Indice:=AnsiIndexText(CB_TIPO.Text,tab_tped);

If Indice = -1 then
   begin
   fmensagem('O Tipo de Pedido não Foi Encontrado!',0,['0'],0);
   exit;
   end;
mfatemp_tipop_padrao:=Indice;
fGravaPadroes(-1,'CB_TIPO'         ,'checked' ,'_FATEMP',IntTostr(Indice));

end;

procedure TFrm_FatEmp.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_FatEmp.FormShow(Sender: TObject);
begin
flparger(0,0,'1');
AgruparItens:=iif(DM1.Tb_PargerPFATDPRO.AsInteger=0,True,False);
end;

end.
