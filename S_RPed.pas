unit S_RPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, db, dbtables, func,
  S_Con, S_Cli, S_Impres,lerarq, ComCtrls, CheckLst, S_SelEmp, RLReport,
  RLFilters, RLXLSFilter;

type
  TFrm_RPed = class(TForm)
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped: TQuery;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1ORDEM: TFloatField;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedP1TOTALB: TFloatField;
    Qr_PedP1TOTALL: TFloatField;
    Qr_PedP1VALFRE: TFloatField;
    Qr_PedP1ACRECONV: TFloatField;
    Qr_PedP1ACREGER: TFloatField;
    Qr_PedP1DATAP: TDateTimeField;
    Qr_PedP1DATDOC: TDateTimeField;
    Qr_PedP1NAUT: TStringField;
    Qr_PedCRAZAO: TStringField;
    Qr_PedCCIDADE: TStringField;
    Qr_PedCUF: TStringField;
    Qr_PedCVRAZAO: TStringField;
    Label6: TLabel;
    OBS: TEdit;
    Qr_PedTOTAPAG: TFloatField;
    Qr_PedP1CODCV: TFloatField;
    Qr_PedP1LOTSEQ: TFloatField;
    Qr_PedP1CODEMP: TFloatField;
    Qr_PedTOTPCOTAB: TFloatField;
    Label5: TLabel;
    Qr_PedNOMGRU: TStringField;
    RG_FILTRO: TRadioGroup;
    sbSalvarPadrao: TSpeedButton;
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsPedidos: TTabSheet;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    Label7: TLabel;
    MPEDI: TEdit;
    Label8: TLabel;
    MPEDF: TEdit;
    Label4: TLabel;
    CB_TIPOPESQ: TComboBox;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    cb_canhoto: TCheckBox;
    Label9: TLabel;
    CB_TIPOREL: TComboBox;
    CB_PAGOS: TCheckBox;
    CB_CONSIG: TCheckBox;
    CB_CONSUMIDOR: TCheckBox;
    RG_TIPOPED: TCheckListBox;
    CB_ORC: TCheckBox;
    cb_obsped: TCheckBox;
    Qr_PedP1ICMSR: TFloatField;
    Qr_PedP1IPIINA: TFloatField;
    Qr_PedP1IPIPOS: TFloatField;
    Qr_PedP1IPINEG: TFloatField;
    Qr_PedP1TIPO_ENTSAI: TFloatField;
    CB_INIBIR_DEVOL: TCheckBox;
    Qr_Inibir_Devol: TQuery;
    Label10: TLabel;
    tsOutrosFiltros: TTabSheet;
    StaticText1: TStaticText;
    CODASSE: TEdit;
    lbx_codass: TListBox;
    OMITIR_ASS: TCheckBox;
    StaticText2: TStaticText;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    CODBCO: TEdit;
    Label12: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label11: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcv: TListBox;
    OMITIR_CON: TCheckBox;
    StaticText3: TStaticText;
    edt_codreg: TEdit;
    lbx_codreg: TListBox;
    OMITIR_REG: TCheckBox;
    StaticText6: TStaticText;
    CODTLV: TEdit;
    lbx_codtlv: TListBox;
    OMITIR_TLV: TCheckBox;
    Label39: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    bb_exportar: TBitBtn;
    Src_Ped: TDataSource;
    RG_ANALISE: TRadioGroup;
    rg_modelo: TRadioGroup;
    Ts_Rel_Layser: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    rlb_chave: TRLLabel;
    rlb_cliente: TRLLabel;
    rlb_vliquido: TRLLabel;
    rlb_data: TRLLabel;
    RLD_VLIQUIDO: TRLDBText;
    RLD_CHAVE: TRLDBText;
    RLD_CLIENTE: TRLDBText;
    RLD_DATA: TRLDBText;
    Qr_PedCODNOMCLI: TStringField;
    RLLabel1: TRLLabel;
    RLB_vbruto: TRLLabel;
    RLD_VBRUTO: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    rl_periodo: TRLLabel;
    RLTOTALB: TRLLabel;
    RLTOTALL: TRLLabel;
    StaticText7: TStaticText;
    edt_codtra: TEdit;
    lbx_codtra: TListBox;
    OMITIR_TRA: TCheckBox;
    cb_com_tra: TCheckBox;
    RLXLSFilter1: TRLXLSFilter;
    CB_SOMERC: TCheckBox;
    Qr_PedOBS01: TMemoField;
    cb_separado: TComboBox;
    CB_ORDEM: TComboBox;
    CB_EMPFAT: TCheckBox;
    Qr_PedP1VDESPACESRAT: TFloatField;
    CB_LISTARPEDORIEMP: TCheckBox;
    tsMaisFiltros: TTabSheet;
    StaticText8: TStaticText;
    edt_CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    lbl_codred: TStaticText;
    edt_CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Qr_PedCEMAIL: TStringField;
    cb_vped_v_adic: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MPEDFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_PAGOSClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure MPEDIExit(Sender: TObject);
    procedure CB_TIPOPESQExit(Sender: TObject);
    procedure CODASSEKeyPress(Sender: TObject; var Key: Char);
    procedure CODASSEExit(Sender: TObject);
    procedure lbx_codassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codregKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codregExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVExit(Sender: TObject);
    procedure lbx_codtlvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bb_exportarClick(Sender: TObject);
    procedure Qr_PedCalcFields(DataSet: TDataSet);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_TIPORELChange(Sender: TObject);
    procedure CB_TIPORELDropDown(Sender: TObject);
    procedure CB_TIPORELSelect(Sender: TObject);
    procedure edt_codtraExit(Sender: TObject);
    procedure edt_codtraKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codregKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_CODRAMExit(Sender: TObject);
    procedure edt_CODREDExit(Sender: TObject);
    procedure edt_CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fRPedCab(ptipo: Integer): Boolean;
    function fRPedCabGru(ptipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fAbrirBanco: Boolean;

    function fImprimirPedidosDeOrigem(pCodEmp, pChave, pChaveAno: Integer): boolean;

  public
    { Public declarations }
    form_impres_rped: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    xTotalB, xTotalL: Real;
    end;

function fCalcularPerc(pValor1, pValor2: Real): Real;
var
  Frm_RPed: TFrm_RPed;
//  mlin, mpag: Integer;
  mcodgru_ant: String;
  mtitulo_Preco: String;

implementation

uses S_Ven, S_DM4, S_DM2, Func2, func_excecoes;

{$R *.DFM}

procedure TFrm_RPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RPed.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.bbImprimirClick(Sender: TObject);
var
mtotgru, mtotger,mtotipi,mtotoutdesp,mtotfre,mtotst: Real;
mtotgru_pcotab, mtotger_pcotab: Real;
mqtdItemGru: Integer;
mqtdItemGer: Integer;

begin

xTotalB:=0;
xTotalL:=0;

fAbrirBanco;
if Qr_Ped.Eof then
   begin
   fmensagem('Não ha nada a ser Impresso!',0,['0'],0);
   exit;
   end;
if rg_modelo.ItemIndex=0 then
  begin
  if (trim(MDT1.Text)<>'/  /')  and (trim(MDT2.Text)<>'/  /') then
    begin
    rl_periodo.Caption:='De '+MDT1.Text+' à '+MDT2.Text;
    end
  else if (trim(MDT1.Text)<>'/  /') then
    begin
    rl_periodo.Caption:='Apartir do dia '+MDT2.Text;
    end
  else if (trim(MDT2.Text)<>'/  /') then
    begin
    rl_periodo.Caption:='Somente até o dia '+MDT2.Text;
    end
  else
    begin
    rl_periodo.Caption:='Sem data predefinida!!!';
    end;
  RLReport1.PreviewModal;
  end
else if rg_modelo.ItemIndex=1 then
  begin
  Qr_Ped.First;
  testeform := TFrm_RPed(FindGlobalComponent('form_impres_rped'));
  if (testeform=nil)  then
     Application.CreateForm(Tfrm_Impres, form_impres_rped);

  form_impres_rped.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  form_impres_rped.mlin :=0; form_impres_rped.mpag :=0;
  mqtdItemGru    :=0;
  mqtdItemGer    :=0;

  mcodgru_ant:=Qr_PedNOMGRU.AsString;
  mtotgru       :=0;
  mtotger       :=0;
  mtotgru_pcotab:=0;
  mtotger_pcotab:=0;
  mtotipi       :=0;
  mtotoutdesp   :=0;
  mtotfre       :=0;
  mtotst        :=0;
  While not Qr_Ped.Eof do
     begin
     if form_impres_rped.mlin=0 then
        begin
        fRPedCab(0);
          if cb_separado.ItemIndex<>5 then
           fRPedCabGru(0);
        end;
     form_impres_rped.mlin:=form_impres_rped.mlin+1;
       if cb_separado.ItemIndex<>5 then
        begin
        if Qr_PedNOMGRU.AsString<>mcodgru_ant then
           begin
           if CB_TIPOREL.ItemIndex>0 then
              begin
                fCalcularPerc(mtotgru_pcotab,mtotgru);
              form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total do Grupo. Itens: '+IntToStr(mqtdItemGru),'.',86)
                                +insere(FormatFloat(mcasas, mtotgru),' ',15)
                                +insere(FormatFloat(mcasas, mtotgru_pcotab),' ',15)
                                +insere(FormatFloat(mcasas, mtotgru-mtotgru_pcotab),' ',15)
                                +insere(FormatFloat('##0',fCalcularPerc(mtotgru_pcotab,mtotgru)),' ',4)+'%',mreduz);
                end
           else
              begin
              form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total do Grupo. Itens: '+InttoStr(mqtdItemGru) ,'.',91)
                                +insere(FormatFloat(mcasas, mtotgru),' ',15)
                                  ,mreduz);
              end;
           mqtdItemGru:=0;
           mtotgru       :=0;
           mtotgru_pcotab:=0;
           form_impres_rped.mlin:=form_impres_rped.mlin+1;
           form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);
           mcodgru_ant:=Qr_PedNOMGRU.AsString;
  //         form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);
           fRPedCabGru(0);
           form_impres_rped.mlin:=form_impres_rped.mlin+1;
           end;
        end;
     mqtdItemGru:=mqtdItemGru+1;
     mqtdItemGer:=mqtdItemGer+1;
     if Qr_PedP1TIPO_ENTSAI.AsInteger = 1 then begin
         mtotgru :=mtotgru -Qr_PedP1TOTALL.Value;
         mtotger :=mtotger -Qr_PedP1TOTALL.Value;
         mtotgru_pcotab:=mtotgru_pcotab-Qr_PedTOTPCOTAB.Value;
         mtotger_pcotab:=mtotger_pcotab-Qr_PedTOTPCOTAB.Value;
         mtotipi:=mtotipi-(Qr_PedP1IPIINA.AsFloat+Qr_PedP1IPIPOS.AsFloat+Qr_PedP1IPINEG.AsFloat);
         mtotoutdesp:=mtotoutdesp+Qr_PedP1VDESPACESRAT.AsFloat;
         mtotfre:=mtotfre-Qr_PedP1VALFRE.AsFloat;
         mtotst :=mtotst-Qr_PedP1ICMSR.AsFloat;
     end else begin
         mtotgru :=mtotgru +Qr_PedP1TOTALL.Value;
         mtotger :=mtotger +Qr_PedP1TOTALL.Value;
         mtotgru_pcotab:=mtotgru_pcotab+Qr_PedTOTPCOTAB.Value;
         mtotger_pcotab:=mtotger_pcotab+Qr_PedTOTPCOTAB.Value;
         mtotipi:=mtotipi+Qr_PedP1IPIINA.AsFloat+Qr_PedP1IPIPOS.AsFloat+Qr_PedP1IPINEG.AsFloat;
         mtotoutdesp:=mtotoutdesp+Qr_PedP1VDESPACESRAT.AsFloat;
         
         mtotfre:=mtotfre+Qr_PedP1VALFRE.AsFloat;
         mtotst :=mtotst+Qr_PedP1ICMSR.AsFloat;
     end;

     if CB_TIPOREL.ItemIndex>0 then
        begin
        mcinst4:=insere(Qr_PedP1CHAVE.AsString,'0',10)
             +'/'+insere(Qr_PedP1ORDEM.AsString,'0',02)
             +' '+insere2(Qr_PedP1CODCLI.AsString+'-'+Qr_PedCRAZAO.Value,' ',36)
             +' '+insere2(Trim(Qr_PedCCIDADE.Value)+'-'+Trim(Qr_PedCUF.Value),' ',24)
             +' '+FormatDateTime(fdt2,Iif(Qr_PedP1DATDOC.AsDateTime<=pdatanula,Qr_PedP1DATAP.Value,Qr_PedP1DATDOC.Value))
             +insere(FormatFloat(mcasas,Qr_PedP1TOTALL.Value),' ',15);
        mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_PedTOTPCOTAB.Value),' ',15);
        mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_PedP1TOTALL.Value-Qr_PedTOTPCOTAB.Value),' ',15);
        mcinst4:=mcinst4+insere(FormatFloat('###',fCalcularPerc(Qr_PedTOTPCOTAB.AsFloat,Qr_PedP1TOTALL.AsFloat)),' ',4)+'%';
        end
     else
        begin
{
        if CB_ORDEM.ItemIndex=1 then
           mcinst3:=FormatDateTime(fdt2,Qr_PedP1DATAP.Value)
        else
           mcinst3:=FormatDateTime(fdt2,Iif(Qr_PedP1DATDOC.AsDateTime<=pdatanula,Qr_PedP1DATAP.Value,Qr_PedP1DATDOC.Value));
           }

      mcinst3:=FormatDateTime(fdt3,Qr_PedP1DATAP.Value);

      if (Qr_PedP1DATDOC.AsDateTime>pdatanula) then
         mcinst3:=mcinst3+' '+FormatDateTime(fdt3,Qr_PedP1DATDOC.Value)
      else
         mcinst3:=mcinst3+insere(' ',' ',9);


{
10/09/1969
10/09/69 10/09/69
12345678901234567
}

        mcinst4:=insere(Qr_PedP1CHAVE.AsString,'0',10)
             +'/'+insere(Qr_PedP1ORDEM.AsString,'0',02)
             +' '+insere2(Qr_PedP1CODCLI.AsString+'-'+Qr_PedCRAZAO.Value,' ',36)
             +' '+insere2(Trim(Qr_PedCCIDADE.Value)+'-'+Trim(Qr_PedCUF.Value),' ',22)
             +' '+mcinst3
             +insere(FormatFloat(mcasas, Qr_PedP1TOTALL.Value),' ',15);

        if cb_obsped.Checked then
           mcinst4:=mcinst4+' '+Qr_PedOBS01.Value
        else
           mcinst4:=mcinst4+' '+iif(Trim(Qr_PedP1NAUT.Text)='','Pedido de Mercadorias','Aut.: '+Qr_PedP1NAUT.Value);
        end;

     form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,mcinst4,mreduz);
     if CB_LISTARPEDORIEMP.Checked then
        begin
        fImprimirPedidosDeOrigem( Qr_PedP1CODEMP.AsInteger, Qr_PedP1CHAVE.AsInteger, Qr_PedP1LOTSEQ.AsInteger);
        end;


  {

  Pedido    Cliente                                  Cidade/UF                     Dt.Emissao   Total Pedido Observacoes ',mreduz);
  Pedido    Cliente                                  Cidade/UF                 Dt.Emissao   Total Pedido     Pco.Tabela     Diferenca 100%'
  123456/01 1234567890123456789012345679801234567890 123456798012346578901-GO 10/09/1969 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 100%
                                                                                             123456789012345
  }
     Qr_Ped.Next;
     if Qr_Ped.Eof then
        begin
        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        if cb_separado.ItemIndex<>5 then
           begin
           if mtotgru<>0 then
              begin
              if CB_TIPOREL.ItemIndex>0 then
                 begin
                 form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total do Grupo. Itens: '+IntToStr(mqtdItemGru),'.',86)
                                   +insere(FormatFloat(mcasas, mtotgru),' ',15)
                                   +insere(FormatFloat(mcasas, mtotgru_pcotab),' ',15)
                                   +insere(FormatFloat(mcasas, mtotgru-mtotgru_pcotab),' ',15)
                                   +insere(FormatFloat('##0',fCalcularPerc(mtotgru_pcotab,mtotgru)),' ',4)+'%',mreduz);
                 end
              else
                 begin
                 form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total do Grupo. Itens: '+IntToStr(mqtdItemGru),'.',91)
                                +insere(FormatFloat(mcasas, mtotgru),' ',15)
                                ,mreduz);
                 end;
              mqtdItemGru:=0;
              mtotgru:=0;
              mtotgru_pcotab:=0;
              form_impres_rped.mlin:=form_impres_rped.mlin+1;
              form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);
              end;
           end;
        mtotgru:=0;
        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);
        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        if CB_TIPOREL.ItemIndex>0 then
           begin
           form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total Geral. Itens: '+IntToStr(mqtdItemGer),'.',86)
                           +insere(FormatFloat(mcasas, mtotger),' ',15)
                           +insere(FormatFloat(mcasas, mtotger_pcotab),' ',15)
                           +insere(FormatFloat(mcasas, mtotger-mtotger_pcotab),' ',15)
                           +insere(FormatFloat('##0',fCalcularPerc(mtotger_pcotab,mtotger)),' ',4)+'%',mreduz);
           end
        else
           begin
           form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere2('- Total do Geral. Itens: '+IntToStr(mqtdItemGer),'.',91)
                                +insere(FormatFloat(mcasas, mtotger),' ',15)
                                ,mreduz);
           end;
       if (mtotipi+mtotfre+mtotst+mtotoutdesp)>0 then
           begin
           form_impres_rped.mlin:=form_impres_rped.mlin+1;
           mcinst4:='Outros Valores: ';
           mcinst2:='';
           if mtotoutdesp>0 then
              mcinst2:=mcinst2+'Outras Despesas: '+FormatFloat(mcasas, mtotoutdesp);

           if mtotipi>0 then
              mcinst2:=mcinst2+'IPI: '+FormatFloat(mcasas, mtotipi);
           if mcinst2<>'' then
              mcinst4:=mcinst4+mcinst2+' ';
           mcinst2:='';
           if mtotfre>0 then
              mcinst2:=mcinst2+'Frete: '+FormatFloat(mcasas, mtotfre);
           if mcinst2<>'' then
              mcinst4:=mcinst4+mcinst2+' ';
           mcinst2:='';
           if mtotst>0 then
              mcinst2:=mcinst2+'Icms ST: '+FormatFloat(mcasas, mtotst);
           if mcinst2<>'' then
              mcinst4:=mcinst4+mcinst2+' ';

           if cb_somerc.checked=true then
              begin
              mcinst4:=mcinst4+' Total do Pedido: '+FormatFloat(mcasas, mtotger+(mtotipi+mtotfre+mtotst+mtotoutdesp));
              end;
           form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,Centra(mcinst4,' ',136)
                                ,mreduz);

           mtotfre:=0;
           mtotst :=0;
           mtotipi:=0;
           mtotoutdesp:=0;
           end;

        mqtdItemGer:=0;
        mtotger       :=0;
        mtotger_pcotab:=0;
        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);

        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('Fim.','-',80),mnormal);
        if form_impres_rped.RDprint1.Setup then form_impres_rped.RDprint1.Fechar;
        form_impres_rped.free;
        form_impres_rped:=nil;
        end
     else if form_impres_rped.mlin>60 then
        begin
        form_impres_rped.mlin:=form_impres_rped.mlin+1;
        form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('Continua...','-',80),mnormal);
        form_impres_rped.RDprint1.Novapagina;
        form_impres_rped.mlin:=0;
        end;
     end;
  end;
{
Pedido   Cliente                                       Cidade                    Total Pedido Dt.Emissao Observacoes
12345678 12345 123456789012346789012345678901234567890 12345678901234567890-go zzz.zzz.zz9,99 10/09/2000 1234567890123456789012345678
}
// 123456789012345678901234567890123456789012345678901234567890123456789012345
//
end;

procedure TFrm_RPed.MPEDFExit(Sender: TObject);
begin
MPEDF.Text:=fdeixanum2(MPEDF.Text);
if StrToInt('0'+MPEDI.Text)>StrToInt('0'+MPEDF.Text) then
   begin
   fmensagem('Invalido. Pedido Inicial nao Pode ser Maior que Final',0,['0'],0);
   MPEDI.SetFocus;
   end;
end;

procedure TFrm_RPed.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.activepageindex:=0;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
MDT2.Text   :=FormatDatetime(fdt2, date);
if flfilpad(0,'_RPED','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CANHOTO',[]) then
      cb_canhoto.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SOMERC',[]) then
      CB_SOMERC.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PAGOS',[]) then
      CB_PAGOS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CONSIG',[]) then
      CB_CONSIG.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CONSUMIDOR',[]) then
      CB_CONSUMIDOR.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OBSPED',[]) then
      cb_obsped.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEPARADO',[]) then
      CB_SEPARADO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FILTRO',[]) then
      RG_FILTRO.ItemIndex  :=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','OBS',[]) then
      OBS.Text   :=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOREL',[]) then
      CB_TIPOREL.ItemIndex  :=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INIBIR_DEVOL',[]) then
      CB_INIBIR_DEVOL.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ANALISE',[]) then
      RG_ANALISE.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_MODELO',[]) then
      rg_modelo.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   end;


RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1]      := TRUE;

Qr_PedP1TOTALB.DisplayFormat:=mcasas;
Qr_PedP1TOTALL.DisplayFormat:=mcasas;

end;

function TFrm_RPed.fRPedCab(ptipo: Integer): Boolean;
var
mMensTotPed: string;
begin
if ptipo=0 then
   begin
   form_impres_rped.mpag:=form_impres_rped.mpag+1;
   form_impres_rped.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
   form_impres_rped.Rdprint1.Impf(01,110,'Pagina:     '+FormatFloat('0000',form_impres_rped.mpag),mnormal);
   form_impres_rped.Rdprint1.Impf(02,01,'Relatorio de Pedido.',mnormal);
   form_impres_rped.Rdprint1.Impf(02,110,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
   if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
      form_impres_rped.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',60),mneg)
   else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
      form_impres_rped.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
   else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
      form_impres_rped.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
   else
      form_impres_rped.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
   form_impres_rped.mlin:=3;
   if trim(OBS.Text)<>'' then
      begin
      form_impres_rped.mlin:=form_impres_rped.mlin+1;
      form_impres_rped.Rdprint1.Impf(form_impres_rped.mlin,01,Centra(Trim(OBS.Text),' ',80),mneg);
      end;
   if (ptipo=0) or (ptipo=2) then
      begin
      if lbx_codven.Items.Count>0 then
         FImprimeTitulo('Vendedor: ',lbx_codven,OMITIR_VEN);

      end;
   form_impres_rped.mlin:=form_impres_rped.mlin+1;
   form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('-','-',80),mnormal);
   end;
if (ptipo=0) or (ptipo=1) then
   begin
   if lbx_codcv.Items.Count>0 then
      FImprimeTitulo('Convenio: ',lbx_codcv,OMITIR_CON);
   if lbx_codass.Items.Count>0 then
      FImprimeTitulo('Assessor: ',lbx_codass,OMITIR_ASS);
   end;
if (ptipo=0) or (ptipo=2) then
   begin
   if lbx_codcli.Items.Count>0 then
      FImprimeTitulo('Cliente: ',lbx_codcli,OMITIR_CLI);
   if lbx_codreg.Items.Count>0 then
      FImprimeTitulo('Região de Clientes: ',lbx_codreg,OMITIR_REG);

   end;
if ptipo=0 then
   begin
   form_impres_rped.mlin:=form_impres_rped.mlin+1;

   if cb_vped_v_adic.Checked=true then
      mMensTotPed:='Vl Adicional'
   else
      mMensTotPed:='Total Pedido';
   if CB_TIPOREL.ItemIndex>0 then
      form_impres_rped.Rdprint1.Impf(form_impres_rped.mlin,01,'Pedido    Cliente                                  Cidade/UF          Dt.Emissao Dt.Doc  '+mMensTotPed+'     '+insere2(mtitulo_Preco,' ',10)+'     Diferenca   %',mreduz)
//      form_impres_rped.Rdprint1.Impf(form_impres_rped.mlin,01,'Pedido    Cliente                                  Cidade/UF                 Dt.Emissao  Total Pedido     '+insere2(mtitulo_Preco,' ',10)+'     Diferenca   %',mreduz)
    else
         form_impres_rped.Rdprint1.Impf(form_impres_rped.mlin,01,'Pedido    Cliente                                  Cidade/UF              Dt.Emissao  Dt Doc  '+mMensTotPed+' Observaçoes',mreduz);
///      form_impres_rped.Rdprint1.Impf(form_impres_rped.mlin,01,'Pedido    Cliente                                  Cidade/UF                     Dt.Emissao   Total Pedido Observaçoes',mreduz);
   end;
result:=True;

end;

procedure TFrm_RPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RPed.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if Trim(CODCON.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCON.Text) then
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcv.ItemIndex:=lbx_codcv.Items.Count-1;
      CODCON.text := '';
      CODCON.SetFocus;
      end
   else
      begin
      fmensagem('Convenio não Cadastrado!',0,['0'],0);
      CODCON.text := '';
      CODCON.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.CODCONKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   con_ori:='Frm_RPed';
   Frm_Con.ShowModal;
   CODCON.Text:=DM1.Tb_CVCVCODCV.AsString;
   CODCONExit(self);
   Frm_Con.Free;
   Frm_Con:=nil;
   key:=#0;
   end;


end;

procedure TFrm_RPed.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcli.ItemIndex:=lbx_codcli.Items.Count-1;
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codven.ItemIndex:=lbx_codven.Items.Count-1;
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RPed',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_RPed.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_RPed.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RPed.CB_PAGOSClick(Sender: TObject);
begin
if CB_PAGOS.Checked then
   begin
   CB_TIPOREL.ItemIndex:=0;
   CB_TIPOREL.Visible  :=false;
   end
else
   begin
   CB_TIPOREL.Visible  :=true;
   end;
end;
function tFrm_RPed.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_rped.mlin:=form_impres_rped.mlin+1;
      form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

function TFrm_RPed.fRPedCabGru(ptipo: Integer): Boolean;
begin
form_impres_rped.mlin:=form_impres_rped.mlin+1;
form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01, mcodgru_ant ,mneg);

result:=true;
end;

procedure TFrm_RPed.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_RPED','');
fGravaPadroes(0,'CB_CANHOTO'     ,'checked'   ,'_RPED',iif(cb_canhoto.Checked,'true','false'));
fGravaPadroes(0,'CB_PAGOS'       ,'checked'   ,'_RPED',iif(CB_PAGOS.Checked,'true','false'));
fGravaPadroes(0,'CB_CONSIG'      ,'checked'   ,'_RPED',iif(CB_CONSIG.Checked,'true','false'));
fGravaPadroes(0,'CB_CONSUMIDOR'  ,'checked'   ,'_RPED',iif(CB_CONSUMIDOR.Checked,'true','false'));
fGravaPadroes(0,'CB_SEPARADO'    ,'itemindex' ,'_RPED',IntToStr(cb_separado.ItemIndex));
fGravaPadroes(0,'RG_FILTRO'      ,'itemindex' ,'_RPED',IntToStr(RG_FILTRO.ItemIndex));
fGravaPadroes(0,'CB_TIPOREL'     ,'itemindex' ,'_RPED',IntToStr(CB_TIPOREL.ItemIndex));
fGravaPadroes(0,'CB_OBSPED'      ,'itemindex' ,'_RPED',iif(cb_obsped.Checked,'true','false'));
fGravaPadroes(0,'CB_ORDEM'       ,'itemindex' ,'_RPED',IntTostr(CB_ORDEM.ItemIndex));
fGravaPadroes(0,'CB_SOMERC'      ,'checked'   ,'_RPED',iif(CB_SOMERC.Checked,'true','false'));
fGravaPadroes(0,'CB_INIBIR_DEVOL','itemindex' ,'_RPED',iif(CB_INIBIR_DEVOL.Checked,'true','false'));
fGravaPadroes(0,'RG_MODELO'      ,'itemindex' ,'_RPED',IntToStr(rg_modelo.ItemIndex));
fGravaPadroes(0,'RG_ANALISE'     ,'itemindex' ,'_RPED',IntToStr(RG_ANALISE.ItemIndex));
fGravaPadroes(0,'OBS'            ,'text'      ,'_RPED',OBS.Text);
fmensagem('Gravado!',0,['0'],0);


end;

procedure TFrm_RPed.MPEDIExit(Sender: TObject);
begin
MPEDI.Text:=fdeixanum2(MPEDI.Text);
end;

function fCalcularPerc(pValor1, pValor2: Real): Real;
var
mPerc: Real;
begin
if (pValor1=0) and (pvalor2=0) then
   mPerc:=0
else
   begin
   try
      mperc:=(pvalor2-pvalor1)*100/pValor2;
   except
      mperc:=0;
      end;
   end;
result:=mPerc;
end;
procedure TFrm_RPed.CB_TIPOPESQExit(Sender: TObject);
begin
with CB_TIPOPESQ do ItemIndex:=Items.IndexOf(CB_TIPOPESQ.Text);

end;

procedure TFrm_RPed.CODASSEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODASSE.Text:=fChamaAssessor(0,'frm_proabc',Key);
   if trim(CODASSE.Text)<>'' then
      CODASSEExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RPed.CODASSEExit(Sender: TObject);
begin
CODASSE.Text:=fdeixanum2(CODASSE.Text);
if Trim(CODASSE.Text)<>'' then
   begin
   if not flcadassessor(1,0,CODASSE.Text) then
      begin
      fmensagem('Assessor não Cadastrado!',0,['0'],0);
      CODASSE.SetFocus;
      end
   else
      begin
      lbx_codass.Items.Add(FormatFloat('0000000',StrToFloat(DM2.Tb_AssessorCACODASS.ASSTRING))
                                    +' - '+DM2.Tb_AssessorCARAZAO.Value);

      CODASSE.text := '';
      if CODASSE.Enabled then
         CODASSE.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.lbx_codassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codass.ItemIndex>=0 then
      lbx_codass.Items.Delete(lbx_codass.ItemIndex);

end;

procedure TFrm_RPed.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RPed.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed.lbx_codbcoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);
end;

procedure TFrm_RPed.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RPed.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
      begin
      fmensagem('Estado não cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   mcinst2:=fChamaUF(0,'frm_cabc','');
   if trim(mcinst2)<>'' then
      begin
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      CODUFExit(self);
      coduf.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_RPed.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
      begin
      fmensagem('Cidade não cadastrado!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RPed.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RPed.edt_codregKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_rped',key));
   edt_codregExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RPed.edt_codregExit(Sender: TObject);
begin

edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codreg.ItemIndex:=lbx_codreg.Items.Count-1;
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end
   else
      begin
      fmensagem('Região Não Cadastrado!',0,['0'],0);
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.FormShow(Sender: TObject);
begin
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=True;
   OMITIR_VEN.Enabled:=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;
fAjustarFormaPgto;
if DM1.Tb_EmpCGC.asfloat=11131694000112 then
   fAjustarCabecalhodoPedidoDiferentedosItens(now-30,pdatanula,true);
 
end;

procedure TFrm_RPed.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_CX_RCC',Key);
   if trim(CODTLV.Text)<>'' then
      CODTLVExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed.CODTLVExit(Sender: TObject);
begin
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if Trim(CODTLV.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTLV.Text) then
      begin
      lbx_codtlv.Items.Add(FormatFloat('0000000',StrToFloat(CODTLV.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTLV.text := '';
      CODTLV.SetFocus;
      end
   else
      begin
      fmensagem('Televendas/Usuário não Cadastrado!',0,['0'],0);
      CODTLV.text := '';
      CODTLV.SetFocus;
      end;
   end;



end;

procedure TFrm_RPed.lbx_codtlvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtlv.ItemIndex>=0 then
      lbx_codtlv.Items.Delete(lbx_codtlv.ItemIndex);

end;

procedure TFrm_RPed.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
  begin
  if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
    begin
    fmensagem('Usuario não cadastrado!',0,['0'],0);
    edt_codusr_cx.SetFocus;
    end
  else
    begin
    lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    edt_codusr_cx.text := '';
    edt_codusr_cx.SetFocus;
    end;
  end;
end;

procedure TFrm_RPed.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
  edt_codusr_cxExit(Self);
  key:=#0;
  end;
end;

procedure TFrm_RPed.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RPed.bb_exportarClick(Sender: TObject);
begin
bb_exportar.Enabled:=false;
fAbrirBanco;
fGerarPlanilhaExcel([],Src_Ped);
bb_exportar.Enabled:=true;

end;

function tFrm_RPed.fAbrirBanco: Boolean;

var
mTotall: String;

mCampoTotalL: String;
mCampo_Separ: String;
mcampo_pcotab: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mcampo_pcotab:='';
if CB_TIPOREL.ItemIndex<2 then
   begin
   mcampo_pcotab:='P2PCOFPG';
   mtitulo_Preco:='Pco.Tabela';
   end
else if CB_TIPOREL.ItemIndex=2 then
   begin
   mcampo_pcotab:='P2PCOCUS';
   mtitulo_Preco:='Pco. de Custo';
   end
else if CB_TIPOREL.ItemIndex=3 then
   begin
   mcampo_pcotab:='P2UCPR';
   mtitulo_Preco:='Pco.de Compra';
   end
else if CB_TIPOREL.ItemIndex=4 then
   begin
   mcampo_pcotab:='PDPRECOC';
   mtitulo_Preco:='Pco. de Custo';
   end
else if CB_TIPOREL.ItemIndex=5 then
   begin
   mcampo_pcotab:='PDUCPR';
   mtitulo_Preco:='Pco.de Compra';
   end
else if CB_TIPOREL.ItemIndex=6 then
   begin
   mcampo_pcotab:='PDPCOMC';
   mtitulo_Preco:='Pco.de Medio de Compra';
   end;

{if (CB_TIPOREL.ItemIndex>3) and (trim(mcampo_pcotab)<>'') then
   begin
   mcampo_pcotab:='('+mcampo_pcotab+'*(100-TO_NUMBER('
                 +'DECODE(SUBSTR(P1SUBMOD,1,1),'+chr(39)+'S'+chr(39)+','+chr(39)+'0'+chr(39)
                 +'  ,'+chr(39)+'O'+chr(39)+','+chr(39)+'1'+chr(39)
                 +'  ,'+chr(39)+'G'+chr(39)+','+chr(39)+'2'+chr(39)
                 +'  ,'+chr(39)+'A'+chr(39)+','+chr(39)+'3'+chr(39)
                 +'  ,'+chr(39)+'V'+chr(39)+','+chr(39)+'4'+chr(39)
                 +'  ,'+chr(39)+'R'+chr(39)+','+chr(39)+'5'+chr(39)
                 +'  ,'+chr(39)+'E'+chr(39)+','+chr(39)+'6'+chr(39)
                 +'  ,'+chr(39)+'T'+chr(39)+','+chr(39)+'7'+chr(39)
                 +'  ,'+chr(39)+'N'+chr(39)+','+chr(39)+'8'+chr(39)
                 +'  ,'+chr(39)+'9'+chr(39)+') '
                 +'  || '
                 +'DECODE(SUBSTR(P1SUBMOD,2,1),'+chr(39)+'S'+chr(39)+','+chr(39)+'0'+chr(39)
                 +','+chr(39)+'O'+chr(39)+','+chr(39)+'1'+chr(39)
                 +'  ,'+chr(39)+'G'+chr(39)+','+chr(39)+'2'+chr(39)
                 +'  ,'+chr(39)+'A'+chr(39)+','+chr(39)+'3'+chr(39)
                 +'  ,'+chr(39)+'V'+chr(39)+','+chr(39)+'4'+chr(39)
                 +'  ,'+chr(39)+'R'+chr(39)+','+chr(39)+'5'+chr(39)
                 +'  ,'+chr(39)+'E'+chr(39)+','+chr(39)+'6'+chr(39)
                 +'  ,'+chr(39)+'T'+chr(39)+','+chr(39)+'7'+chr(39)
                 +'  ,'+chr(39)+'N'+chr(39)+','+chr(39)+'8'+chr(39)
                 +'  ,'+chr(39)+'9'+chr(39)+') '
                 +'  || '
                 +'DECODE(SUBSTR(P1SUBMOD,3,1),'+chr(39)+'S'+chr(39)+','+chr(39)+'0'+chr(39)
                 +','+chr(39)+'O'+chr(39)+','+chr(39)+'1'+chr(39)
                 +'  ,'+chr(39)+'G'+chr(39)+','+chr(39)+'2'+chr(39)
                 +'  ,'+chr(39)+'A'+chr(39)+','+chr(39)+'3'+chr(39)
                 +'  ,'+chr(39)+'V'+chr(39)+','+chr(39)+'4'+chr(39)
                 +'  ,'+chr(39)+'R'+chr(39)+','+chr(39)+'5'+chr(39)
                 +'  ,'+chr(39)+'E'+chr(39)+','+chr(39)+'6'+chr(39)
                 +'  ,'+chr(39)+'T'+chr(39)+','+chr(39)+'7'+chr(39)
                 +'  ,'+chr(39)+'N'+chr(39)+','+chr(39)+'8'+chr(39)
                 +'  ,'+chr(39)+'9'+chr(39)+') '
                 +'  )   )  / 100) ';
   end;              }

if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADCV','CVCODEMP','P1CODEMP','CVCODCV','P1CODCV');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI(+)','P1CODCLI');
if cb_separado.ItemIndex=6 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end
else if cb_separado.ItemIndex=8 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADTRA','TRCODEMP','TRCODTRA','TRCODTRA','P1CODTRA');
   end
else if cb_separado.ItemIndex=0 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADASSE','CACODEMP','P1CODEMP','CACODASS','P1CODASSE');
   end;

if CB_CONSUMIDOR.Checked then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADCSF' ,'CFCODEMP','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
   end;



if (CB_TIPOREL.ItemIndex=4) or
   (CB_TIPOREL.ItemIndex=5) or
   (CB_TIPOREL.ItemIndex=6) then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   end;
{IF CB_INIBIR_DEVOL.Checked then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(0,'CADP01D','P1DCODEMP_OR','P1CODEMP','P1DLS_OR','P1LOTSEQ','P1DCH_OR','P1CHAVE'
                   ,'P1DOR_OR','P1ORDEM');
   la_instrucao:=la_instrucao+' and (P1DCH_OR is null)';
   end;}


if cb_vped_v_adic.Checked=true then
   mTotall := ' (Select NVL(MAX(P1AE_VALOR),0) AS TOTAL from CADP01_ADDEXT WHERE P1AE_CHAVE=P1CHAVE AND P1AE_CODEMP=P1CODEMP AND P1AE_LOTSEQ=P1LOTSEQ) '
else
   mTotall := ' P1TOTALL  ';

mCampoTotalL:= mTotall;
//mCampoTotalL:='P1TOTALL+P1ICMSR';
mCampoTotalL:= mTotall + '-P1ICMSR';

if CB_SOMERC.Checked=true then
   mCampoTotalL:=  mTotall + '-(P1VALFRE+P1IPIINA+P1VALSEG+P1TARBAN+P1ICMSR )';



if CB_PAGOS.Checked then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'CADDAR','CRCODEMP','P1CODEMP','CRLOTSEQ_CP','P1LOTSEQ','CRNPED','P1CHAVE'
                   ,'CRORDEM','P1ORDEM');

   mCampo_Separ:=chr(39)+insere(' ',' ',50)+chr(39);
   if cb_separado.ItemIndex=0 then
      mCampo_Separ:=chr(39)+'Assessor: '+chr(39)+'|| max(P1CODASSE) || '+chr(39)+' '+chr(39)+' || max(CARAZAO)  '
   else if cb_separado.ItemIndex=8 then
      mCampo_Separ:=chr(39)+'Transportadora: '+chr(39)+'|| max(P1CODTRA) || '+chr(39)+' '+chr(39)+' || max(TRRAZTRA)  '
   else if cb_separado.ItemIndex=1 then
      mCampo_Separ:=chr(39)+'Estado/Cidade: '+chr(39)+'|| max(CUF) || '+chr(39)+' '+chr(39)+' || max(CCIDADE)  '
   else if cb_separado.ItemIndex=2 then
      begin
      if CB_CONSUMIDOR.Checked then
         mCampo_Separ:=chr(39)+'Razao Social: '+chr(39)+'|| max(decode(CFRAZAO,null,CRAZAO,CFRAZAO)) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(CCODCLI)) '
      else
         mCampo_Separ:=chr(39)+'Razao Social: '+chr(39)+'|| max(CRAZAO) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(CCODCLI)) ';

      end
   else if cb_separado.ItemIndex=3 then
      mCampo_Separ:=chr(39)+'Convenio: '+chr(39)+'|| max(CVRAZAO) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(P1CODCV)) '
   else if cb_separado.ItemIndex=8 then
      mCampo_Separ:=chr(39)+'Transportadora: '+chr(39)+'|| max(P1CODTRA) || '+chr(39)+' '+chr(39)+' || max(TRRAZTRA)  '
   else if cb_separado.ItemIndex=4 then
      mCampo_Separ:=chr(39)+'Sigla do Estado: '+chr(39)+' || '+chr(39)+' '+chr(39)+' ||  max(CUF) '
   else if cb_separado.ItemIndex=6 then
      mCampo_Separ:=chr(39)+'Vendedor: '+chr(39)+' || '+chr(39)+'max(VNOME) '+chr(39)+' ||  max(P1CODVEN) '
   else if cb_separado.ItemIndex=7 then
      mCampo_Separ:=chr(39)+'Origem..: '+chr(39)+' || '+chr(39)+'max(P1ORIGEM) '+chr(39);

   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select sum(CRVALOR-(CRVALPAG+CRDESC-CRJUROS)) AS TOTAPAG, '
                 +mCampoTotalL+' as  TOTPCOTAB, '
                 +'  P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP, '
                 +'       P1CODCLI,P1TOTALB,'+mCampoTotalL+' as  P1TOTALL,P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +'       P1NAUT,P1ICMSR,P1DESPACES+P1TARBAN AS P1VDESPACESRAT,P1IPIINA,P1IPIPOS,P1IPINEG,'
                 +'       P1TIPO_ENTSAI,                            '
                 +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) as ','')
                 +' CRAZAO,CEMAIL, '
                 +' CCIDADE,CUF,CVRAZAO, '
                 +mCampo_Separ+' as NOMGRU '
                 +' ,P1OBS1 AS OBS01 '
                 +'  from CADP01 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where ');
   if CB_EMPFAT.Checked then
      Qr_Ped.SQL.add(' P1STATUS>='+mstatus_excluido+' and SUBSTR(P1MOTIVO,1,8)='+chr(39)+'Resumido'+chr(39))
   else
      Qr_Ped.SQL.add(' P1STATUS<'+mstatus_excluido+' ');

   if cb_com_tra.Checked then
      Qr_Ped.SQL.add(' and P1CODTRA>0 AND P1CODTRA IN (SELECT TRCODTRA FROM CADTRA) ');

   if RG_ANALISE.ItemIndex=0 then
      Qr_Ped.SQL.add(' and P1ANALISE=1 ')
   else if RG_ANALISE.ItemIndex=1 then
      Qr_Ped.SQL.add(' and P1ANALISE<>1 ');


   Qr_Ped.SQL.add(' and (CRVALOR-(CRVALPAG+CRDESC-CRJUROS))>0 '
                 +iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 );


   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1TIPO '+mcinst2);

   if ValInt(MPEDI.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(MPEDI.Text));
   if ValInt(MPEDF.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(MPEDF.Text));
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));

      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2.Text)));

      end;
      
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtlv,OMITIR_TLV);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODTLV '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODCV '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CCODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODUSR '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and CUF '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CCODLOC '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODTRA '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CROTA '+mcinst2);


    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
    if trim(mcinst2)<>'' then
      begin
      Qr_ped.sql.Add(' and CCODRAM '+mcinst2);
      end;

    mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
    if trim(mcinst2)<>'' then
      begin
      Qr_ped.sql.Add('  and CCODRED '+mcinst2);
      end;


   if cb_canhoto.Checked then
      Qr_Ped.sql.add(' and P1CANHOTO=1');
   mcinst2:=fItensListBox(0,lbx_codass,OMITIR_ASS);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and P1CODASSE '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and P1CX_CODCAI '+mcinst2);


    Qr_Ped.SQL.Add(fTipoNotas(RG_FILTRO.itemindex));


   Qr_Ped.SQL.Add(' Group by '
                 +'  P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM, '
                 +'       P1CODCLI,P1TOTALB,'+mCampoTotalL+',P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +'       P1NAUT,P1ICMSR,P1DESPACES+P1TARBAN, P1IPIINA,P1IPIPOS,P1IPINEG,'
                 +'       P1TIPO_ENTSAI,                            '

                 +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) ',' CRAZAO ')
                 +',CCIDADE,CEMAIL,CUF,CVRAZAO'
                 +' ,P1OBS1');

   Qr_Ped.SQL.Add(' order by NOMGRU,P1DATAP,P1CHAVE,P1ORDEM,P1CODEMP ');
   end
else
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   if CB_TIPOREL.ItemIndex>0 then
      begin
      mCampo_Separ:=chr(39)+insere(' ',' ',50)+chr(39);
      if cb_separado.ItemIndex=0 then
         mCampo_Separ:=chr(39)+'Assessor: '+chr(39)+'|| max(P1CODASSE) || '+chr(39)+' '+chr(39)+' || max(CARAZAO)  '
      else if cb_separado.ItemIndex=8 then
         mCampo_Separ:=chr(39)+'Transportadora: '+chr(39)+'|| max(P1CODTRA) || '+chr(39)+' '+chr(39)+' || max(TRRAZTRA)  '
      else if cb_separado.ItemIndex=1 then
         mCampo_Separ:=chr(39)+'Estado: '+chr(39)+'|| max(CUF) || '+chr(39)+' '+chr(39)+' || max(CCIDADE)  '
      else if cb_separado.ItemIndex=2 then
         begin
         if CB_CONSUMIDOR.Checked then
            mCampo_Separ:=chr(39)+'Razao Social: '+chr(39)+'|| max(decode(CFRAZAO,null,CRAZAO,CFRAZAO)) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(CCODCLI)) '
         else
            mCampo_Separ:=chr(39)+'Razao Social: '+chr(39)+'|| max(CRAZAO) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(CCODCLI)) ';
         end
      else if cb_separado.ItemIndex=3 then
         mCampo_Separ:=chr(39)+'Convenio: '+chr(39)+'|| max(CVRAZAO) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(P1CODCV)) '
      else if cb_separado.ItemIndex=8 then
         mCampo_Separ:=chr(39)+'Transportadora: '+chr(39)+'|| max(P1CODTRA) || '+chr(39)+' '+chr(39)+' || max(TRRAZTRA)  '
      else if cb_separado.ItemIndex=4 then
         mCampo_Separ:=chr(39)+'Sigla do Estado: '+chr(39)+' || '+chr(39)+' '+chr(39)+' ||  max(CUF) '
      else if cb_separado.ItemIndex=6 then
         mCampo_Separ:=chr(39)+'Vendedor: '+chr(39)+'|| max(VNOME) || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(max(VCODVEN)) '
      else if cb_separado.ItemIndex=7 then
         mCampo_Separ:=chr(39)+'Origem..: '+chr(39)+' || '+chr(39)+'max(P1ORIGEM) '+chr(39);

      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
      Qr_Ped.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,max(P1CODEMP) AS P1CODEMP, '
                 +'       max(P1CODCLI) as P1CODCLI'
                 +'       ,sum(P2QTD*P2PRECO) AS P1TOTALB '
                 +'       ,sum(P2QTD*P2PRECO-P2TOTDES) AS P1TOTALL '
//                 +'       ,sum(P2QTD*P2PRECO-P2TOTDES+P2ICMSR) AS P1TOTALL '
                 +'       ,max(P1VALFRE) as P1VALFRE, '
                 +'       max(P1ACRECONV) as P1ACRECONV,'
                 +'       max(P1ACREGER) as P1ACREGER, '
                 +'       max(P1DATAP) as P1DATAP, '
                 +'       max( P1DATDOC) as  P1DATDOC,'
                 +'       max(P1CODCV) as  P1CODCV, ');
{   if CB_CONSIG.Checked then
      Qr_Ped.SQL.Add('       sum(DECODE(P2CONSIG,1,0,'
                     +'      P2QTD*'+mcampo_pcotab+')) AS TOTPCOTAB, ')
   else}
      Qr_Ped.SQL.Add('       sum(P2QTD*'+mcampo_pcotab+') AS TOTPCOTAB, ');
   Qr_Ped.SQL.Add('       sum(P1ICMSR) as P1ICMSR, sum(P1IPIINA) as P1IPIINA'
                 +',sum(P1DESPACES+P1TARBAN) AS P1VDESPACESRAT '
                 +', sum(P1IPIPOS) as P1IPIPOS,sum(P1IPINEG) as P1IPINEG,');


   Qr_Ped.SQL.Add('       max(P1NAUT) as  P1NAUT, '
                 +'max('+iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO)',' CRAZAO ')+') as CRAZAO,'
                 +'       max(CCIDADE) as  CCIDADE,'
                 +'       max(CEMAIL) as  CEMAIL,'
                 +'       max(CUF) as CUF,'
                 +'       max(CVRAZAO) as CVRAZAO,'
                 +'       max('+mCampoTotalL+') AS TOTAPAG, '
                 +mCampo_Separ+' as NOMGRU '
                 +' ,max(P1OBS1) AS OBS01 '
                 +' ,max(P1TIPO_ENTSAI) AS P1TIPO_ENTSAI  '

                 );
      end
   else
      begin
      mCampo_Separ:=chr(39)+insere(' ',' ',50)+chr(39);
      if cb_separado.ItemIndex=0 then
         mCampo_Separ:=chr(39)+'Assessor: '+chr(39)+'|| to_char(P1CODASSE) || '+chr(39)+' '+chr(39)+' || CARAZAO  '
      else if cb_separado.ItemIndex=8 then
         mCampo_Separ:=chr(39)+'Transportadora: '+chr(39)+'|| P1CODTRA || '+chr(39)+' '+chr(39)+' || TRRAZTRA  '
      else if cb_separado.ItemIndex=1 then
         mCampo_Separ:=chr(39)+'Estado/Cidade: '+chr(39)+'|| CUF || '+chr(39)+' '+chr(39)+' || CCIDADE  '
      else if cb_separado.ItemIndex=2 then
         mCampo_Separ:=chr(39)+'Razao Social: '+chr(39)+'|| CRAZAO || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(CCODCLI) '
      else if cb_separado.ItemIndex=3 then
         mCampo_Separ:=chr(39)+'Convenio: '+chr(39)+'|| CVRAZAO || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(P1CODCV) '
      else if cb_separado.ItemIndex=4 then
         mCampo_Separ:=chr(39)+'Sigla do Estado: '+chr(39)+' || '+chr(39)+' '+chr(39)+' ||  CUF '
      else if cb_separado.ItemIndex=6 then
         mCampo_Separ:=chr(39)+'Vendedor: '+chr(39)+'|| VNOME || '+chr(39)+' '+chr(39)+' ||  TO_CHAR(VCODVEN) '
      else if cb_separado.ItemIndex=7 then
         mCampo_Separ:=chr(39)+'Origem..: '+chr(39)+' || P1ORIGEM||case '
                                                        +'        when p1origem=0 '
                                                        +'             then '+chr(39)+' - VENDEDOR'+chr(39)
                                                        +'         when p1origem=1 '
                                                        +'             then '+chr(39)+' - TELEVENDAS'+chr(39)
                                                        +'         when p1origem=2 '
                                                        +'             then '+chr(39)+' - INTERNET'+chr(39)
                                                        +'         when p1origem=3 '
                                                        +'             then '+chr(39)+' - DISP. MOVEL'+chr(39)
                                                        +'         when p1origem=4 '
                                                        +'             then '+chr(39)+' - OUTROS'+chr(39)
                                                        +'         end ';


      Qr_Ped.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP, '
                 +'       P1CODCLI,P1TOTALB,'+mCampoTotalL+' as P1TOTALL,P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +mCampoTotalL+' as TOTPCOTAB, '
                 +'       P1NAUT,P1ICMSR,P1DESPACES+P1TARBAN AS P1VDESPACESRAT, P1IPIINA,P1IPIPOS,P1IPINEG,'
                 +'       P1TIPO_ENTSAI,                            '
                 +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) as ','')
                 +' CRAZAO,CEMAIL, '
                 +' CCIDADE,CUF,CVRAZAO,'+mCampoTotalL+' as  TOTAPAG, '
                 +' P1OBS1 AS OBS01, ');
      if cb_separado.ItemIndex<9 then
        Qr_Ped.SQL.Add(mCampo_Separ+' as NOMGRU ')
      else
        Qr_Ped.SQL.Add(mCampo_Separ+' NOMGRU ');
      end;

   Qr_Ped.SQL.Add(' from CADP01 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where ');
   if CB_EMPFAT.Checked then
      Qr_Ped.SQL.add(' P1STATUS>='+mstatus_excluido+' and SUBSTR(P1MOTIVO,1,8)='+chr(39)+'Resumido'+chr(39))
   else
      Qr_Ped.SQL.add(' P1STATUS<'+mstatus_excluido+' ');
   if cb_com_tra.Checked then
      Qr_Ped.SQL.add(' and P1CODTRA>0 AND P1CODTRA IN (SELECT TRCODTRA FROM CADTRA) ');
   if RG_ANALISE.ItemIndex=0 then
      Qr_Ped.SQL.add(' and P1ANALISE=1 ')
   else if RG_ANALISE.ItemIndex=1 then
      Qr_Ped.SQL.add(' and P1ANALISE<>1 ');
    Qr_Ped.SQL.add(iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 );
   if CB_INIBIR_DEVOL.Checked then
     begin
     Qr_Ped.SQL.Add(' and p1chave not in (select p1dch_or from cadp01d '
                   +' where p1dls_or(+)=p1lotseq '
                   +' and P1DOR_OR(+)=P1ORDEM '
                   +'  and P1DCODEMP_OR=P1CODEMP) ');
     end;


   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1TIPO '+mcinst2);

   if ValInt(MPEDI.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(MPEDI.Text));
   if ValInt(MPEDF.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(MPEDF.Text));
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));

      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2.Text)));
      end;
   if cb_canhoto.Checked then
      Qr_Ped.sql.add(' and P1CANHOTO=1');

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codass,OMITIR_ASS);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and P1CODASSE '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODCV '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODUSR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and P1CODTRA '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CCODCLI '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
     begin
     Qr_ped.sql.Add(mcinst+' CCODRAM '+mcinst2);
     mcinst:=' and ';
     end;

   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then
     begin
     Qr_ped.sql.Add(mcinst+' CCODRED '+mcinst2);
     mcinst:=' and ';
     end;

   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and P1CX_CODCAI '+mcinst2);

    Qr_Ped.SQL.Add(fTipoNotas(RG_FILTRO.itemindex));



   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then Qr_Ped.sql.Add(' and CUF '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CCODLOC '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and CROTA '+mcinst2);


   if CB_TIPOREL.ItemIndex>0 then
      Qr_Ped.SQL.Add('Group by P1DATAP,P1CHAVE,P1ORDEM,P1LOTSEQ ');


   if CB_ORDEM.ItemIndex=0 then
      Qr_Ped.SQL.Add(' Order by NOMGRU,P1CHAVE,P1ORDEM')
   else if CB_ORDEM.ItemIndex=1 then
      Qr_Ped.SQL.Add(' Order by NOMGRU,P1DATAP,CRAZAO,P1CODCLI')
   else if CB_ORDEM.ItemIndex=2 then
      Qr_Ped.SQL.Add(' Order by NOMGRU,CRAZAO,P1CODCLI')
   else if CB_ORDEM.ItemIndex=3 then
      Qr_Ped.SQL.Add(' Order by NOMGRU,'+mCampoTotalL+' ,CRAZAO,P1CODCLI')
   else
      Qr_Ped.SQL.Add(' Order by NOMGRU,'+mCampoTotalL+' DESC,CRAZAO,P1CODCLI');
   end;
// Qr_Ped.sql.SaveToFile(mpastatemp + 'sqltxt001.txt');

try
   Qr_Ped.Open;
//   Qr_Ped.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
except
   Qr_Ped.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
// Qr_Ped.sql.SaveToFile(mpastatemp + 'sqltxt001.txt');

end;

procedure TFrm_RPed.Qr_PedCalcFields(DataSet: TDataSet);
begin
if Qr_PedP1CODCLI.AsInteger>0 then
  Qr_PedCODNOMCLI.AsString:=Qr_PedP1CODCLI.AsString+'-'+Qr_PedCRAZAO.AsString;
end;

procedure TFrm_RPed.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLTOTALB.Caption:=FormatFloat(mcasaspu,xTotalB);
RLTOTALL.Caption:=FormatFloat(mcasaspu,xTotalL);
end;

procedure TFrm_RPed.RLBand2AfterPrint(Sender: TObject);
begin
xTotalB:=xTotalB+Qr_PedP1TOTALB.AsFloat;
xTotalL:=xTotalL+Qr_PedP1TOTALL.AsFloat;
end;

procedure TFrm_RPed.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:=pBanner_Intersys;
end;

procedure TFrm_RPed.CB_TIPORELChange(Sender: TObject);
begin
// if Sender is TComboBox then
//    Hint:= TComboBox(Sender).Text;
end;

procedure TFrm_RPed.CB_TIPORELDropDown(Sender: TObject);
begin
//CB_TIPOREL.Perform(CB_SETDROPPEDWIDTH, 350, 0);
end;

procedure TFrm_RPed.CB_TIPORELSelect(Sender: TObject);
begin
CB_TIPOREL.Hint := '';
CB_TIPOREL.Hint := CB_TIPOREL.Hint + CB_TIPOREL.Items[CB_TIPOREL.ItemIndex];
end;

procedure TFrm_RPed.edt_codtraExit(Sender: TObject);
begin
edt_codtra.Text:=fdeixanum2(edt_codtra.Text);
if Trim(edt_codtra.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',edt_codtra.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(edt_codtra.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codtra.text := '';
      edt_codtra.SetFocus;
      end
   else
      begin
      fmensagem('Transportadora não Cadastrado!',0,['0'],0);
      edt_codtra.text := '';
      edt_codtra.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed.edt_codtraKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codtra.Text:=fChamaTra(0,'frm_CX_RCC',Key);
   if trim(edt_codtra.Text)<>'' then
      edt_codtraExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_RPed.lbx_codregKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codreg.ItemIndex>=0 then
      lbx_codreg.Items.Delete(lbx_codreg.ItemIndex);

end;


function TFrm_RPed.fImprimirPedidosDeOrigem(pCodEmp, pChave, pChaveAno: Integer): boolean;
var
query_pedOri: tQuery;
mLinhaImp: String;
mTotItemValor: Real;
mTotItemQtd: Real;
   procedure fCabOrigem;
   begin
   form_impres_rped.mlin:=form_impres_rped.mlin+1;
   form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,'chave orig item Código do Item Descricao do Item                                                     Und   Quantidade    Valor Total',mreduz);

   end;
begin

query_PedOri:=tQuery.Create(nil);
Query_pedOri.DatabaseName := DM1.SG_ASSOC.databaseName;
Query_PedOri.close;
Query_PedOri.sql.clear;

Query_PedOri.SQL.add('SELECT POPEDORI_CHAVE,POPEDORI_CHAVE_ANO,POPEDORI_ITEM,POPEDORI_QTD,PDNOME,PDUND,POPEDORI_CODEMP '
                    +' ,P2CODPRO,P2TOTLIQ FROM CADP02_PEDORI '
                    +',CADP02 '
                    +',CADPRO '
                    +' WHERE P2CHAVE=POPEDORI_CHAVE AND P2LOTSEQ=POPEDORI_CHAVE_ANO AND P2ITEM=POPEDORI_ITEM '
                    +' AND P2CODEMP=POPEDORI_CODEMP AND PDCODPRO=P2CODPRO AND  '
                    +' POCHAVE=' + InttoStr(pChave)
                    +' and POCHAVE_ANO='+InttosTr(pchaveAno)
                    +' and POCODEMP='+Inttostr(pCodEmp)
                    +'  ORDER BY POPEDORI_CHAVE,POPEDORI_ITEM ');
try
   query_pedOri.Open;
except on e : exception do
   ex_erroSql_Novo(query_pedori,1956,'func Erro:'+e.Message ,'CADEST');
   end;
mTotItemValor:=0;
mTotItemQtd:=0;


if not query_pedOri.isEmpty then
   begin
   if form_impres_rped.mlin>55 then
      begin
      form_impres_rped.mlin:=form_impres_rped.mlin+1;
      form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('Continua...','-',80),mnormal);
      form_impres_rped.RDprint1.Novapagina;
      form_impres_rped.mlin:=0;
      end
   else
      fCabOrigem;

   While not Query_Pedori.eof do
      begin
      if form_impres_rped.mlin=0 then
         begin
         fRPedCab(0);
         if cb_separado.ItemIndex<>5 then
           fRPedCabGru(0);
         fCabOrigem;
         end;
      form_impres_rped.mlin:=form_impres_rped.mlin+1;
      mLinhaImp:=insere(Query_PedOri.fieldbyName('POPEDORI_CHAVE').AsString,' ',06);
      mLinhaImp:=mLinhaImp+'/'+insere2(Query_PedOri.fieldbyName('POPEDORI_CODEMP').AsString,' ',03);
      mLinhaImp:=mLinhaImp+' '+insere2(Query_PedOri.fieldbyName('P2CODPRO').AsString,' ',14);
      mLinhaImp:=mLinhaImp+' '+insere2(Query_PedOri.fieldbyName('PDNOME').AsString,' ',73);
      mLinhaImp:=mLinhaImp+' '+insere2(Query_PedOri.fieldbyName('PDUND').AsString,' ',3);
      mLinhaImp:=mLinhaImp+insere(Query_PedOri.fieldbyName('POPEDORI_QTD').AsString,' ',15);
      mLinhaImp:=mLinhaImp+insere(FormatFloat(mcasas, Query_PedOri.fieldbyName('P2TOTLIQ').AsFloat),' ',15);

      form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,mLinhaImp,mreduz);
      mTotItemValor:=mTotItemValor+Query_PedOri.fieldbyName('P2TOTLIQ').AsFloat;
      mTotItemQtd:=mTotItemQtd+Query_PedOri.fieldbyName('POPEDORI_QTD').AsFloat;
      Query_PedOri.Next;
      if Query_PedOri.Eof then
         begin
         form_impres_rped.mlin:=form_impres_rped.mlin+1;
         mLinhaImp:=insere2('- Total','.',103);
         mLinhaImp:=mLinhaImp+insere(FloatToStr(mTotItemQtd),' ',15);
         mLinhaImp:=mLinhaImp+insere(FormatFloat(mcasas, mTotItemValor),' ',15);
         form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,mLinhaImp,mreduz);
         end
      else if form_impres_rped.mlin>60 then
         begin
         form_impres_rped.mlin:=form_impres_rped.mlin+1;
         form_impres_rped.RDprint1.ImpF(form_impres_rped.mlin,01,insere('Continua...','-',80),mnormal);
         form_impres_rped.RDprint1.Novapagina;
         form_impres_rped.mlin:=0;
         end;
      end;
   end;
query_pedOri.close;
freeandnil(query_pedori);
end;






procedure TFrm_RPed.edt_CODRAMExit(Sender: TObject);
begin
edt_CODRAM.Text:=fdeixanum2(edt_CODRAM.Text);
if Trim(edt_CODRAM.Text)<>'' then
   begin
   if flqr1('RNOME','R','CADRCLI','N','RCODRAM',edt_CODRAM.Text) then
      begin
      lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODRAM.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codram.ItemIndex:=lbx_codram.Items.Count-1;

      edt_CODRAM.Text := '';
      edt_CODRAM.SetFocus;
      end
   else
      begin
      fmensagem('Ramo de cliente não Cadastrado!',0,['0'],0);
      edt_CODRAM.Text := '';
      edt_CODRAM.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed.edt_CODREDExit(Sender: TObject);
begin
edt_CODRED.Text:=fdeixanum2(edt_CODRED.Text);
if Trim(edt_CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',edt_CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      edt_CODRED.Text := '';
      edt_CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      edt_CODRED.Text := '';
      edt_CODRED.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed.edt_CODRAMKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODRAM.Text:=fChamaRamoCli(0,'frm_rcpag',key);
   key:=#0;
   end;

end;

procedure TFrm_RPed.edt_CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   edt_CODREDExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RPed.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_CODRAM.ItemIndex>=0 then
      lbx_CODRAM.Items.Delete(lbx_CODRAM.ItemIndex);

end;

procedure TFrm_RPed.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

end.
