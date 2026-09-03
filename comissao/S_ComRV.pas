unit S_ComRV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, db, dbtables, func, S_DM1,
  s_CRVC, S_PComRV, S_Ven,lerarq,S_Usr,S_Sup,S_Assessor, ComCtrls, RDprint, AlinharEdit,
  S_Impres, RLReport, S_SelEmp;

type
  TFrm_ComRV = class(TForm)
    Qr_CL01: TQuery;
    Qr_CL02: TQuery;
    Qr_CL01CL1CODEMP: TFloatField;
    Qr_CL01CL1CHAVE: TFloatField;
    Qr_CL01CL1DATA: TDateTimeField;
    Qr_CL01CL1TIPO: TFloatField;
    Qr_CL01CL1CODIGO: TFloatField;
    Qr_CL01CL1DATAI: TDateTimeField;
    Qr_CL01CL1DATAF: TDateTimeField;
    Qr_CL01CL1OBS01: TStringField;
    Qr_CL01CL1OBS02: TStringField;
    Qr_CL02CL2CODEMP: TFloatField;
    Qr_CL02CL2CHAVE: TFloatField;
    Qr_CL02CL2SEQ: TFloatField;
    Qr_CL02CL2DOC: TFloatField;
    Qr_CL02CL2NUMERO: TFloatField;
    Qr_CL02CL2DESD: TStringField;
    Qr_CL02CL2DUP: TFloatField;
    Qr_CL02CL2CHAVEP: TFloatField;
    Qr_CL02CL2ORDEMP: TFloatField;
    Qr_CL01CL1PCOMIS: TFloatField;
    Qr_CL01CL1QTDDOC: TFloatField;
    Qr_CL01CL1TOTDOC: TFloatField;
    Qr_CL01CL1TOTCOM: TFloatField;
    Qr_CL02CL2CODEMPD: TFloatField;
    Qr_CL02CL2VALCOM: TFloatField;
    Qr_CL02CL2VALDOC: TFloatField;
    Qr_CL02CL2VALFRE: TFloatField;
    Qr_CL02CL2VALICMSR: TFloatField;
    Qr_CL02CL2SEMCOM: TFloatField;
    Qr_CL02CL2VALACRE: TFloatField;
    Qr_CL02CL2VALCTL: TFloatField;
    Qr_CL02CL2LOTSEQ: TFloatField;
    Qr_CL02CL2LOTSEQ_DC: TFloatField;
    Qr_CL02CL2DTEMIS: TDateTimeField;
    Qr_CL01CL1LOTSEQ: TFloatField;
    Qr_CL02CL2CODECF: TFloatField;
    Qr_CL02CL2DTVCTO: TDateTimeField;
    Qr_CL02CL2DTBX: TDateTimeField;
    Qr_CL02CL2CODCLI: TFloatField;
    Qr_CL01CL1TARBAN: TFloatField;
    Qr_CL01CL1OUTDESP: TFloatField;
    Qr_CL01CL1TOTTARBAN: TFloatField;
    Qr_CL01CL1TOTOUTDESP: TFloatField;
    Qr_CL02CL2TARBAN: TFloatField;
    Qr_CL02CL2OUTDESP: TFloatField;
    Qr_CL02CL2CODBCO: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ts_recibo: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_nome: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    NUMLOT: TEdit;
    MDATA: TMaskEdit;
    OBS1: TEdit;
    OBS2: TEdit;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    MDATAI: TMaskEdit;
    MDATAF: TMaskEdit;
    PCOMIS: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    TARBAN: TEdit;
    OUTDESP: TEdit;
    gb_itens: TGroupBox;
    Panel_itens: TPanel;
    NUMDUP: TEdit;
    DESD: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    item_excluir: TBitBtn;
    NOMCLI: TEdit;
    VALOR: TEdit;
    DTBX: TMaskEdit;
    item_pesquisar: TBitBtn;
    MDTEMIS: TMaskEdit;
    DTVCTO: TMaskEdit;
    MCODECF: TEdit;
    MCODEMP: TEdit;
    VALCOM: TEdit;
    I_TARBAN: TEdit;
    I_OUTDESP: TEdit;
    STG1: TStringGrid;
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    RG_TIPOREL: TRadioGroup;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    QTDDOC: TStaticText;
    TOTDOC: TStaticText;
    TOTCOM: TStaticText;
    TOTTARBAN: TStaticText;
    TOTOUTDESP: TStaticText;
    TOTLIQ: TStaticText;
    DUP: TEdit;
    Qr_CL02CL2VALDESC: TFloatField;
    Qr_CL02CL2DTPAG: TDateTimeField;
    Qr_CL02CL2JUROS: TFloatField;
    Qr_CL02CL2JURD: TFloatField;
    Qr_CL02CL2MULTA: TFloatField;
    Qr_CL02CL2VALREC: TFloatField;
    Label4: TLabel;
    gb_creditos: TGroupBox;
    MTEXTOC01: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    MVALC01: TEdit;
    MTEXTOC02: TEdit;
    MTEXTOC03: TEdit;
    MTEXTOC04: TEdit;
    MTEXTOC05: TEdit;
    MTEXTOC06: TEdit;
    MTEXTOC07: TEdit;
    MTEXTOC08: TEdit;
    MTEXTOC09: TEdit;
    MTEXTOC10: TEdit;
    MVALC02: TEdit;
    MVALC03: TEdit;
    MVALC04: TEdit;
    MVALC08: TEdit;
    MVALC06: TEdit;
    MVALC05: TEdit;
    MVALC07: TEdit;
    MVALC09: TEdit;
    MVALC10: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    MTEXTOD01: TEdit;
    MVALD01: TEdit;
    MTEXTOD02: TEdit;
    MTEXTOD03: TEdit;
    MTEXTOD04: TEdit;
    MTEXTOD05: TEdit;
    MTEXTOD06: TEdit;
    MTEXTOD07: TEdit;
    MTEXTOD08: TEdit;
    MTEXTOD09: TEdit;
    MTEXTOD10: TEdit;
    MVALD02: TEdit;
    MVALD03: TEdit;
    MVALD04: TEdit;
    MVALD08: TEdit;
    MVALD06: TEdit;
    MVALD05: TEdit;
    MVALD07: TEdit;
    MVALD09: TEdit;
    MVALD10: TEdit;
    Memo_cred: TMemo;
    Memo_deb: TMemo;
    Label9: TLabel;
    TOTOUTCRED: TStaticText;
    TOTDEBITOS: TStaticText;
    Label10: TLabel;
    sb_SalvarPadrao: TSpeedButton;
    CB_EMIREC: TCheckBox;
    Qr_CL03: TQuery;
    Qr_CL03CL3CODEMP: TFloatField;
    Qr_CL03CL3LOTSEQ: TFloatField;
    Qr_CL03CL3CHAVE: TFloatField;
    Qr_CL03CL3NAT: TFloatField;
    Qr_CL03CL3ORDEM: TFloatField;
    Qr_CL03CL3TEXTO: TStringField;
    Qr_CL03CL3VALOR: TFloatField;
    Panel6: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Qr_CL02CL2LOTSEQ_BX: TFloatField;
    Qr_CL02CL2LOTE_BX: TFloatField;
    tsConfiguracao: TTabSheet;
    CB_COMISBCOAB: TCheckBox;
    bbeditar: TBitBtn;
    lbl_ordem: TLabel;
    CB_ORDEM: TComboBox;
    CB_TITABERTO: TCheckBox;
    sb_SalvarPadrao_Master: TSpeedButton;
    CB_EXTCRED_NC: TCheckBox;
    Label30: TLabel;
    cb_tipo_data: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure item_excluirClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure item_pesquisarClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure MDATAIExit(Sender: TObject);
    procedure MDATAFExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure PCOMISExit(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure CODVENEnter(Sender: TObject);
    procedure MDATAIEnter(Sender: TObject);
    procedure MDATAFEnter(Sender: TObject);
    procedure MDTEMISExit(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure NUMDUPExit(Sender: TObject);
    procedure DESDExit(Sender: TObject);
    procedure MCODECFExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TARBANExit(Sender: TObject);
    procedure OUTDESPExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS2Exit(Sender: TObject);
    procedure PCOMISKeyPress(Sender: TObject; var Key: Char);
    procedure TARBANKeyPress(Sender: TObject; var Key: Char);
    procedure OUTDESPKeyPress(Sender: TObject; var Key: Char);
    procedure OBS1KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2KeyPress(Sender: TObject; var Key: Char);
    procedure I_TARBANExit(Sender: TObject);
    procedure I_TARBANKeyPress(Sender: TObject; var Key: Char);
    procedure I_OUTDESPExit(Sender: TObject);
    procedure I_OUTDESPKeyPress(Sender: TObject; var Key: Char);
    procedure VALCOMExit(Sender: TObject);
    procedure TARBANEnter(Sender: TObject);
    procedure OUTDESPEnter(Sender: TObject);
    procedure VALCOMEnter(Sender: TObject);
    procedure I_TARBANEnter(Sender: TObject);
    procedure I_OUTDESPEnter(Sender: TObject);
    procedure MVALC01Enter(Sender: TObject);
    procedure MVALC02Enter(Sender: TObject);
    procedure MVALC03Enter(Sender: TObject);
    procedure MVALC04Enter(Sender: TObject);
    procedure MVALC05Enter(Sender: TObject);
    procedure MVALC06Enter(Sender: TObject);
    procedure MVALC07Enter(Sender: TObject);
    procedure MVALC08Enter(Sender: TObject);
    procedure MVALC09Enter(Sender: TObject);
    procedure MVALC10Enter(Sender: TObject);
    procedure MVALD01Enter(Sender: TObject);
    procedure MVALD02Enter(Sender: TObject);
    procedure MVALD03Enter(Sender: TObject);
    procedure MVALD04Enter(Sender: TObject);
    procedure MVALD05Enter(Sender: TObject);
    procedure MVALD06Enter(Sender: TObject);
    procedure MVALD07Enter(Sender: TObject);
    procedure MVALD08Enter(Sender: TObject);
    procedure MVALD09Enter(Sender: TObject);
    procedure MVALD10Enter(Sender: TObject);
    procedure MVALC01Exit(Sender: TObject);
    procedure MVALC02Exit(Sender: TObject);
    procedure MVALC03Exit(Sender: TObject);
    procedure MVALC04Exit(Sender: TObject);
    procedure MVALC05Exit(Sender: TObject);
    procedure MVALC06Exit(Sender: TObject);
    procedure MVALC07Exit(Sender: TObject);
    procedure MVALC08Exit(Sender: TObject);
    procedure MVALC09Exit(Sender: TObject);
    procedure MVALC10Exit(Sender: TObject);
    procedure MVALD01Exit(Sender: TObject);
    procedure MVALD02Exit(Sender: TObject);
    procedure MVALD03Exit(Sender: TObject);
    procedure MVALD04Exit(Sender: TObject);
    procedure MVALD05Exit(Sender: TObject);
    procedure MVALD06Exit(Sender: TObject);
    procedure MVALD07Exit(Sender: TObject);
    procedure MVALD08Exit(Sender: TObject);
    procedure MVALD09Exit(Sender: TObject);
    procedure MVALD10Exit(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure NUMDUPEnter(Sender: TObject);
    procedure DESDEnter(Sender: TObject);
    procedure DUPEnter(Sender: TObject);
    procedure MDTEMISEnter(Sender: TObject);
    procedure MCODECFEnter(Sender: TObject);
    procedure MCODEMPEnter(Sender: TObject);
    procedure bbeditarClick(Sender: TObject);
    procedure sb_SalvarPadrao_MasterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fcalcular(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer): Boolean;
    function fcalccom(ptipo: Integer): Boolean;
    function fcalctarb(ptipo: Integer): Boolean;
    function fcalcoutdesp(ptipo: Integer): Boolean;
    function fLerdup(pCodEmp,pCodEcf,pDup: Integer; pNumero: Real; pDesd:String; Pdtemis:TDateTime): Boolean;
    function fUpdate(ptipo,pNumlot,pCodEmp,pCodEcf,pDup: Integer; pNumero: Real; pDesd:String; Pdtemis:TDateTime): Boolean;

    function fTestaDup(ptipo: Integer): Boolean;
    procedure imp_resumido;
    function FReciboPadrao(pTipo: Integer): Boolean;
    function FTotalPadrao(pTipo: Integer): Boolean;
    function FEmiteRecibo(pTipo: Integer): Boolean;
    function fImpResumido_Cab(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_Impres_Comrv: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ComRV: TFrm_ComRV;
  mlin, mpag: Integer;
  mnumlot: Integer;
  moper: Integer=0;
  moper_item: Integer=0;
  mtarban,moutdesp, mpcomis, mcomis: Real;
  pComROrigem : Integer;
  mtcom: Integer; // 1-Vendedor 01, 2 -Vendedor 02 3-Vendedor 03
  mcodven_ant: Real;
  mdt1_ant: String;
  mdt2_ant: String;
  mcol_codecf,mcol_numero,mcol_desd,mcol_dup,mcol_dtemis: Integer;
  mcol_sacado,mcol_dtvcto,mcol_valor,mcol_dtbx,mcol_valcom,mcol_codemp: Integer;
  mcol_valfre,mcol_icmsr,mcol_semcom,mcol_vlracre,mcol_comtlv,mcol_codcli,mcol_codbco: Integer;
  mcol_tarban,mcol_outtar: Integer;
  mcol_valdes,mcol_dtpag,mcol_jurd,mcol_multa,mcol_juros,mcol_valrec, mcol_chavep: Integer;
  mcol_lotseq_bx,mcol_lote_bx: Integer;
  mtotcom,mtotal: Real;
  mtottarban, mtotoutdesp: Real;
  mtip_ant: Integer;
  mori_comrv : String = '';

  mtotg: Real;
mbasec    : Real;
mtd_valdoc: Real;
mtd_valrec: Real;
mtd_basec : Real;
mtd_valcom: Real;
mtd_valtlv: Real;
mvcomt    : Real;
mvcoml    : Real;
mvcomv    : Real;


mtg_valdoc: Real;
mtg_valrec: Real;
mtg_basec : Real;
mtg_valcom: Real;
mtg_valtlv: Real;

mtEx_valdoc: Real;
mtEx_valrec: Real;
mtEx_basec : Real;
mtEx_valcom: Real;
mtEx_valtlv: Real;

mTextoCred: array [0..9] of string;
mValCred:   array [0..9] of Real;

mTextoDeb: array [0..9] of string;
mValDeb:   array [0..9] of Real;

implementation

uses S_DM4, func_excecoes, S_DM2;

{$R *.dfm}

procedure TFrm_ComRV.FormCreate(Sender: TObject);
var
mqtdd: Integer;
begin

if codusr=1111 then
   begin
   tsConfiguracao.TabVisible:=true;
   lbl_ordem.Visible:=true;
   CB_ORDEM.Visible:=true;
   end
else
   begin
   tsConfiguracao.TabVisible:=false;
   lbl_ordem.Visible:=false;
   CB_ORDEM.Visible:=false;
   end;
if flfilpad(0,'_COMRV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_COMISBCOAB',[]) then
      CB_COMISBCOAB.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TITABERTO',[]) then
      CB_TITABERTO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXTCRED',[]) then
      CB_EXTCRED_NC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
if flfilpad(codusr,'_COMRV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOREL',[]) then
      RG_TIPOREL.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIREC',[]) then
      CB_EMIREC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EMIREC.Checked:=false;
   end;

flcadpar01(0,iif(codemp>100, codemp-100, 100+codemp),'1' );

if mori_comrv <> 'frm_demonstrativo' then
  begin
  Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
  end;

STG1.RowCount:=2;
STG1.Rows[1].Clear;

mcol_numero   :=00;
mcol_desd     :=01;
mcol_dup      :=02;
mcol_dtemis   :=03;
mcol_codecf   :=04;
mcol_codemp   :=05;
mcol_sacado   :=06;
mcol_dtvcto   :=07;
mcol_dtbx     :=08;
mcol_valor    :=09;
mcol_valcom   :=10;
mcol_tarban   :=11;
mcol_outtar   :=12;
mcol_valfre   :=13;
mcol_icmsr    :=14;
mcol_semcom   :=15;
mcol_vlracre  :=16;
mcol_comtlv   :=17;
mcol_codcli   :=18;
mcol_codbco   :=19;
mcol_valdes   :=20;
mcol_dtpag    :=21;
mcol_jurd     :=22;
mcol_multa    :=23;
mcol_juros    :=24;
mcol_valrec   :=25;
mcol_lotseq_bx:=26;
mcol_lote_bx  :=27;
mcol_chavep   :=28;

STG1.Cells[mcol_numero,0]   :='Número';
STG1.Cells[mcol_desd,0]     :='D';
STG1.Cells[mcol_dup,0]      :='T';
STG1.Cells[mcol_dtemis,0]   :='Dt.Emissão';
STG1.Cells[mcol_sacado,0]   :='Sacado';
STG1.Cells[mcol_dtvcto,0]   :='Dt.Vcto';
STG1.Cells[mcol_valor,0]    :='Valor';
STG1.Cells[mcol_dtbx,0]     :='Dt.Baixa';
STG1.Cells[mcol_valcom,0]   :='Vlr.Comis';
STG1.Cells[mcol_codemp,0]   :='Empresa';
STG1.Cells[mcol_valfre,0]   :='Frete';
STG1.Cells[mcol_icmsr,0]    :='Icms Ret';
STG1.Cells[mcol_semcom,0]   :='Sem Comis';
STG1.Cells[mcol_vlracre,0]  :='Vlr.Acresc.';
STG1.Cells[mcol_comtlv,0]   :='';
STG1.Cells[mcol_codecf,0]   :='ECF';
STG1.Cells[mcol_codcli,0]   :='Cod.Cli';
STG1.Cells[mcol_codbco,0]   :='Cod.Bco';
STG1.Cells[mcol_tarban,0]   :='Tar.Banc';
STG1.Cells[mcol_outtar,0]   :='Out.Tar.';

STG1.Cells[mcol_valdes,0]   :='Vlr.Desc';
STG1.Cells[mcol_dtpag,0]    :='Dt.Pgto';
STG1.Cells[mcol_jurd,0]     :='Juros/Dia';
STG1.Cells[mcol_multa,0]    :='Multa';
STG1.Cells[mcol_juros,0]    :='Juros Rec';
STG1.Cells[mcol_valrec,0]   :='Valor Rec';
STG1.Cells[mcol_lotseq_bx,0]:='Lote Seq Bx';
STG1.Cells[mcol_lote_bx,0]  :='Lote de Baixa';
STG1.Cells[mcol_chavep,0]   :='Pedido';

if pComROrigem=0 then
   begin
   if DM1.Tb_PargerPDEDVD.Value=1 then
       STG1.Cells[mcol_comtlv,0]:='Comis.Telev.';
   Frm_ComRV.Caption:='Relatórios de Comissões de Recebimento dos Vendedores';
   lbl_nome.Caption :='Código do Vendedor........: ';
   end
else if pComROrigem=1 then
   begin
   Frm_ComRV.Caption:='Relatórios de Comissões de Recebimento dos Supervisores';
   lbl_nome.Caption :='Código do Supervidor........: '
   end
else if pComROrigem=2 then
   begin
   Frm_ComRV.Caption:='Relatórios de Comissões de Recebimento dos Televendas';
   lbl_nome.Caption :='Código do Televendas........: ';
   end
else if pComROrigem=3 then
   begin
   Frm_ComRV.Caption:='Relatórios de Comissões de Recebimento dos Assessores';
   lbl_nome.Caption :='Código do Assessor..........: ';
   end;

TARBAN.Alignment      := TAlignment(1);
OUTDESP.Alignment     := TAlignment(1);
VALOR.Alignment       := TAlignment(1);
VALCOM.Alignment      := TAlignment(1);
I_TARBAN.Alignment    := TAlignment(1);
I_OUTDESP.Alignment   := TAlignment(1);

MVALC01.Alignment     := TAlignment(1);
MVALC02.Alignment     := TAlignment(1);
MVALC03.Alignment     := TAlignment(1);
MVALC04.Alignment     := TAlignment(1);
MVALC05.Alignment     := TAlignment(1);
MVALC06.Alignment     := TAlignment(1);
MVALC07.Alignment     := TAlignment(1);
MVALC08.Alignment     := TAlignment(1);
MVALC09.Alignment     := TAlignment(1);
MVALC10.Alignment     := TAlignment(1);

MVALD01.Alignment     := TAlignment(1);
MVALD02.Alignment     := TAlignment(1);
MVALD03.Alignment     := TAlignment(1);
MVALD04.Alignment     := TAlignment(1);
MVALD05.Alignment     := TAlignment(1);
MVALD06.Alignment     := TAlignment(1);
MVALD07.Alignment     := TAlignment(1);
MVALD08.Alignment     := TAlignment(1);
MVALD09.Alignment     := TAlignment(1);
MVALD10.Alignment     := TAlignment(1);


end;

procedure TFrm_ComRV.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
mvalcom: String;
begin
if valint(NUMDUP.Text)=0 then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
      fmensagem('Favor Digitar o Numero da Duplicata!',0,['0'],0);
   ITEM_CANCELARClick(Self);
   if mori_comrv <> 'frm_demonstrativo' then
      NUMDUP.SetFocus;
   exit;
   end;

if not flcaddar(8,ValInt(MCODEMP.Text),0,ValInt(MCODECF.Text),0,Trim(NUMDUP.Text),Trim(DESD.Text),copy(DUP.Text,1,1),StrToDate(MDTEMIS.Text),'') then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
      fmensagem('Duplicata não encontrado!',0,['0'],0);
   ITEM_CANCELARClick(Self);
   if mori_comrv <> 'frm_demonstrativo' then
      NUMDUP.SetFocus;
   exit;
   end;
   if CB_TITABERTO.Checked = False then
   begin
    if (DM1.Tb_DarCRSTATUS.Value<>2) and
       ( (DM1.Tb_DarCRdup.Asinteger<>1) and ( (DM1.Tb_DarCRDUP.AsInteger<>2)
                                                                         or (DM1.Tb_DarCRDUP.AsInteger=2)) ) then
       begin
       if mori_comrv <> 'frm_demonstrativo' then
          fmensagem('Esta duplicata ainda não foi paga!',0,['0'],0);
       ITEM_CANCELARClick(Self);
       if mori_comrv <> 'frm_demonstrativo' then
          NUMDUP.SetFocus;
       Exit;
       end;
   end;
if (DM1.Tb_DarCRSTATUS.Value>1) or (CB_TITABERTO.Checked) then
   begin
   if (pComROrigem=0) then
      begin
      if DM1.Tb_DarCRCODV03.Value=ValFloat(CODVEN.Text) then
         begin
         if (DM1.Tb_DarCRLOTCV03.Value>0) and not
            ((moper=1) and (DM1.Tb_DarCRLOTCV03.Value=ValFloat(NUMLOT.Text))) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then
               fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCV03.AsString+'!',0,['0'],0);
            ITEM_CANCELARClick(Self);
            if mori_comrv <> 'frm_demonstrativo' then
               NUMDUP.SetFocus;
            exit;
            end;
   //      mvalcom:=Formatfloat(mcasas, DM1.Tb_DarCRCOMV03.Value)
         end
      else if DM1.Tb_DarCRCODV02.Value=ValFloat(CODVEN.Text) then
         begin
         if (DM1.Tb_DarCRLOTCV02.Value>0) and not
            ((moper=1) and (DM1.Tb_DarCRLOTCV02.Value=ValFloat(NUMLOT.Text))) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then
               fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCV02.AsString+'!',0,['0'],0);
            ITEM_CANCELARClick(Self);
            if mori_comrv <> 'frm_demonstrativo' then
               NUMDUP.SetFocus;
            exit;
            end;
   //      mvalcom:=Formatfloat(mcasas, DM1.Tb_DarCRCOMV02.Value);
         end
      else
         begin
         if (DM1.Tb_DarCRLOTCV.Value>0) and not
            ((moper=1) and (DM1.Tb_DarCRLOTCV.Value=ValFloat(NUMLOT.Text))) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then
               fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCV.AsString+'!',0,['0'],0);
            ITEM_CANCELARClick(Self);
            if mori_comrv <> 'frm_demonstrativo' then
               NUMDUP.SetFocus;
            exit;
            end;
         if DM1.Tb_DarCRCODVEN.Value<>ValFloat(CODVEN.Text) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then begin
              if fmensagem('Esta duplicata não é do vendedor selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
                 begin
                 NUMDUP.SetFocus;
                 ITEM_CANCELARClick(Self);
                 exit;
                 end;
              end;
            end;
   //      mvalcom:=Formatfloat(mcasas, DM1.Tb_DarCRCOMVEN.Value)
         end;
      end
   else if (pComROrigem=1) then
      begin
      if (DM1.Tb_DarCRLOTCS.Value>0) and not
         ((moper=1) and (DM1.Tb_DarCRLOTCS.Value=ValFloat(NUMLOT.Text))) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then
            fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCS.AsString+'!',0,['0'],0);
         ITEM_CANCELARClick(Self);
         if mori_comrv <> 'frm_demonstrativo' then
            NUMDUP.SetFocus;
         exit;
         end;
      STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMSUP.Value)
      end
   else if (pComROrigem=2) then
      begin
      if (DM1.Tb_DarCRLOTCT.Value>0) and not
         ((moper=1) and (DM1.Tb_DarCRLOTCT.Value=ValFloat(NUMLOT.Text))) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then
            fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCT.AsString+'!',0,['0'],0);
         ITEM_CANCELARClick(Self);
         if mori_comrv <> 'frm_demonstrativo' then
            NUMDUP.SetFocus;
         exit;
         end;
      if DM1.Tb_DarCRCODTLV.Value<>ValFloat(CODVEN.Text) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then begin
           if fmensagem('Esta duplicata não é do televendas selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
              begin
              ITEM_CANCELARClick(Self);
              NUMDUP.SetFocus;
              exit;
              end;
           end;
         end;
   //   mvalcom:=Formatfloat(mcasas, DM1.Tb_DarCRCOMTEL.Value)
      end
   else if (pComROrigem=3) then
      begin
      if (DM1.Tb_DarCRLOTCASSE.Value>0) and not
         ((moper=1) and (DM1.Tb_DarCRLOTCASSE.Value=ValFloat(NUMLOT.Text))) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then
            fmensagem('Esta duplicata ja esta no relatorio: '+DM1.Tb_DarCRLOTCASSE.AsString+'!',0,['0'],0);
         ITEM_CANCELARClick(Self);
         if mori_comrv <> 'frm_demonstrativo' then
            NUMDUP.SetFocus;
         exit;
         end;
      if DM1.Tb_DarCRCODASSE.Value<>ValFloat(CODVEN.Text) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then begin
           if fmensagem('Esta duplicata não é do Assessor selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
              begin
              ITEM_CANCELARClick(Self);
              NUMDUP.SetFocus;
              exit;
              end;
           end;
         end;
   //   mvalcom:=Formatfloat(mcasas, DM1.Tb_DarCRCOMASSE.Value)
      end;
   end
else   // se extorno de cheque
   begin
   if (pComROrigem=0) then
      begin
      if (DM1.Tb_DarCRCODV03.Value<>ValFloat(CODVEN.Text)) and
         (DM1.Tb_DarCRCODV02.Value<>ValFloat(CODVEN.Text)) and
         (DM1.Tb_DarCRCODVEN.Value<>ValFloat(CODVEN.Text)) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then begin
           if fmensagem('Este Cheque não é do vendedor selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
              begin
              NUMDUP.SetFocus;
              ITEM_CANCELARClick(Self);
              exit;
              end;
           end;
         end
      else if (pComROrigem=2) then
         begin
         if DM1.Tb_DarCRCODTLV.Value<>ValFloat(CODVEN.Text) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then begin
              if fmensagem('Este Cheque não é do televendas selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
                 begin
                 ITEM_CANCELARClick(Self);
                 NUMDUP.SetFocus;
                 exit;
                 end;
              end;
            end
         end
      else if (pComROrigem=3) then
         begin
         if DM1.Tb_DarCRCODASSE.Value<>ValFloat(CODVEN.Text) then
            begin
            if mori_comrv <> 'frm_demonstrativo' then begin
              if fmensagem('Este Cheque não é do Assessor selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
                 begin
                 ITEM_CANCELARClick(Self);
                 NUMDUP.SetFocus;
                 exit;
                 end;
              end;
            end;
         end
      end;
   end;



//if moper=0 then
//   begin
   for x:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_numero,x])='' then
         continue;
      if (moper_item=1) and (mlin=x+1) then
         continue;
      if (valfloat(NUMDUP.Text)   =valfloat(STG1.Cells[mcol_numero,x])) and
         (Trim(DESD.Text)         =Trim(STG1.Cells[mcol_desd,x]))     and
         (valfloat(DUP.Text)      =valFloat(STG1.Cells[mcol_dup,x])) and
         (valfloat(MCODECF.Text)  =valFloat(STG1.Cells[mcol_codecf,x])) and
         (Trim(MDTEMIS.Text)      =Trim(STG1.Cells[mcol_dtemis,x])) and
         (Valfloat(MCODEMP.Text)  =valFloat(STG1.Cells[mcol_codemp,x])) then
         begin
         if mori_comrv <> 'frm_demonstrativo' then
            fmensagem('Duplicata já digitado!',0,['0'],0);
         ITEM_CANCELARClick(Self);
         if mori_comrv <> 'frm_demonstrativo' then
            NUMDUP.SetFocus;
         exit;
         end;
      end;
//   end;

//if moper>0 then
//   begin
//   mlin:=STG1.row;
//   mlin:=mlin+1;
//   end
//else
//   begin
if moper_item=0 then
   begin
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   end;

//   end;
STG1.Cells[mcol_numero,mlin-1]   :=NUMDUP.Text;
STG1.Cells[mcol_desd,mlin-1]     :=DESD.Text;
STG1.Cells[mcol_dup,mlin-1]      :=DM1.Tb_DarCRDUP.AsString;
STG1.Cells[mcol_dtemis,mlin-1]   :=FormatDatetime(fdt2, DM1.Tb_DarCRDTEMIS.Value);
STG1.Cells[mcol_sacado,mlin-1]   :=DM1.Tb_Darrazaocli.Value;
STG1.Cells[mcol_dtvcto,mlin-1]   :=FormatDateTime(fdt2,DM1.Tb_DarCRDTVCTO.Value);
STG1.Cells[mcol_valor,mlin-1]    :=insere(FormatFloat(mcasas,DM1.Tb_DarCRVALOR.Value),' ',10);
STG1.Cells[mcol_chavep,mlin-1]   :=DM1.Tb_DarCRNPED.AsString;
if (DM1.Tb_DarCRSTATUS.Value>1) or (mori_comrv='frm_demonstrativo') then
   begin
   STG1.Cells[mcol_dtbx,mlin-1]     :=FormatDateTime(fdt2,DM1.Tb_DarCRDTBX.Value);
   STG1.Cells[mcol_valrec,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDEVOL.Value);
   end
else
   begin
   STG1.Cells[mcol_dtbx,mlin-1]     :=FormatDateTime(fdt2,DM1.Tb_DarCRDTEMIS.Value);
   STG1.Cells[mcol_dup,mlin-1]      :=InttoStr(20+DM1.Tb_DarCRDUP.AsInteger);
   STG1.Cells[mcol_valrec,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRVALOR.Value+DM1.Tb_DarCRDEVOL.Value);
   end;

STG1.Cells[mcol_codemp,mlin-1]   :=DM1.Tb_DarCRCODEMP.AsString;
STG1.Cells[mcol_valfre,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRVALFRE.Value);
STG1.Cells[mcol_icmsr,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRICMSR.Value);
STG1.Cells[mcol_semcom,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRSEMCOM.Value);
STG1.Cells[mcol_comtlv,mlin-1]   :='0.00';
STG1.Cells[mcol_codecf,mlin-1]   :=DM1.Tb_DarCRCODECF.AsString;
STG1.Cells[mcol_codcli,mlin-1]   :=DM1.Tb_DarCRCODCLI.AsString;
STG1.Cells[mcol_codbco,mlin-1]   :=DM1.Tb_DarCRCODBCO.AsString;
STG1.Cells[mcol_tarban,mlin-1]   :=I_TARBAN.Text;
STG1.Cells[mcol_outtar,mlin-1]   :=I_OUTDESP.Text;
STG1.Cells[mcol_valdes,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRDESC.Value);
STG1.Cells[mcol_dtpag,mlin-1]    :=FormatDateTime(fdt2,   DM1.Tb_DarCRDTPAG.Value);
STG1.Cells[mcol_juros,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRJUROS.Value+DM1.Tb_DarCRVALOR_ACRES.asfloat  );
STG1.Cells[mcol_jurd,mlin-1]     :=FormatFloat(mcasas, DM1.Tb_DarCRJURD.Value);
STG1.Cells[mcol_multa,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRMULTA.Value);
STG1.Cells[mcol_lotseq_bx,mlin-1]:=FormatFloat(mcasas, DM1.Tb_DarCRLOTSEQ_LB.Value);
STG1.Cells[mcol_lote_bx,mlin-1]  :=FormatFloat(mcasas, DM1.Tb_DarCRLOTE.Value);

if (pComROrigem=5) and (DM1.Tb_PargerPDEDVD.Value=1) then
   STG1.Cells[mcol_valfre,mlin-1]:=FormatFloat(mcasas, DM1.Tb_DarCRVALFRE.Value)
else
   STG1.Cells[mcol_valfre,mlin-1]:='0.00';
{
if mpcomis>0 then
   begin
   STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas,
                        (ValFloat(STG1.Cells[mcol_valor,mlin-1])
                        -
                        (ValFloat(STG1.Cells[mcol_valfre,mlin-1]) // VALOR do frete
                        +ValFloat(STG1.Cells[mcol_icmsr,mlin-1]) // icms retido
                        +ValFloat(STG1.Cells[mcol_valdes,mlin-1]) // valor do desconto
                        +ValFloat(STG1.Cells[mcol_semcom,mlin-1]) // sem comissão
                        +ValFloat(STG1.Cells[mcol_tarban,mlin-1]) // tarifa bancaria
                        +ValFloat(STG1.Cells[mcol_outtar,mlin-1]) // outras tarias
                        +ValFloat(STG1.Cells[mcol_vlracre,mlin-1]))
                         )*mpcomis/100); // valor do Acrescimo
   end
else
}
STG1.Cells[mcol_valcom,mlin-1]:=VALCOM.Text;


if ( (DM1.Tb_DarCRSTATUS.Value=2) and ( (DM1.Tb_DarCRDUP.AsInteger=1)
                                                                     or (DM1.Tb_DarCRDUP.AsInteger=2)) ) then
   begin
   for x:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_numero,x])='' then
         continue;
      if (valfloat(NUMDUP.Text)   =valfloat(STG1.Cells[mcol_numero,x])) and
         (Trim(DESD.Text)         =Trim(STG1.Cells[mcol_desd,x]))     and
         (valfloat(DUP.Text)      =20+valFloat(STG1.Cells[mcol_dup,x])) and
         (valfloat(MCODECF.Text)  =valFloat(STG1.Cells[mcol_codecf,x])) and
         (Trim(MDTEMIS.Text)      =Trim(STG1.Cells[mcol_dtemis,x])) and
         (Valfloat(MCODEMP.Text)  =valFloat(STG1.Cells[mcol_codemp,x])) then
         begin
         fcalcular(0);
         ITEM_CANCELAR.Click;
         if mori_comrv <> 'frm_demonstrativo' then
            NUMDUP.SetFocus;
         exit;
         end;
      end;
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   STG1.Cells[mcol_numero,mlin-1]   :=NUMDUP.Text;
   STG1.Cells[mcol_desd,mlin-1]     :=DESD.Text;
   STG1.Cells[mcol_dup,mlin-1]      :=InttoStr(20+DM1.Tb_DarCRDUP.AsInteger);
   STG1.Cells[mcol_dtemis,mlin-1]   :=FormatDatetime(fdt2, DM1.Tb_DarCRDTEMIS.Value);
   STG1.Cells[mcol_sacado,mlin-1]   :=DM1.Tb_Darrazaocli.Value;
   STG1.Cells[mcol_dtvcto,mlin-1]   :=FormatDateTime(fdt2,DM1.Tb_DarCRDTVCTO.Value);
   STG1.Cells[mcol_valor,mlin-1]    :=insere(FormatFloat(mcasas,DM1.Tb_DarCRVALOR.Value),' ',10);

   STG1.Cells[mcol_dtbx,mlin-1]     :=FormatDateTime(fdt2,DM1.Tb_DarCRDTEMIS.Value);
   STG1.Cells[mcol_dup,mlin-1]      :=InttoStr(20+DM1.Tb_DarCRDUP.AsInteger);

   STG1.Cells[mcol_codemp,mlin-1]   :=DM1.Tb_DarCRCODEMP.AsString;
   STG1.Cells[mcol_valfre,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRVALFRE.Value);
   STG1.Cells[mcol_icmsr,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRICMSR.Value);
   STG1.Cells[mcol_semcom,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRSEMCOM.Value);
   STG1.Cells[mcol_comtlv,mlin-1]   :='0.00';
   STG1.Cells[mcol_codecf,mlin-1]   :=DM1.Tb_DarCRCODECF.AsString;
   STG1.Cells[mcol_codcli,mlin-1]   :=DM1.Tb_DarCRCODCLI.AsString;
   STG1.Cells[mcol_codbco,mlin-1]   :=DM1.Tb_DarCRCODBCO.AsString;
   STG1.Cells[mcol_tarban,mlin-1]   :=I_TARBAN.Text;
   STG1.Cells[mcol_outtar,mlin-1]   :=I_OUTDESP.Text;
   STG1.Cells[mcol_valdes,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRDESC.Value);
   STG1.Cells[mcol_dtpag,mlin-1]    :=FormatDateTime(fdt2,   DM1.Tb_DarCRDTPAG.Value);
   STG1.Cells[mcol_juros,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRJUROS.Value+DM1.Tb_DarCRVALOR_ACRES.Asfloat );
   STG1.Cells[mcol_jurd,mlin-1]     :=FormatFloat(mcasas, DM1.Tb_DarCRJURD.Value);
   STG1.Cells[mcol_multa,mlin-1]    :=FormatFloat(mcasas, DM1.Tb_DarCRMULTA.Value);
   STG1.Cells[mcol_valrec,mlin-1]   :=FormatFloat(mcasas, DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDEVOL.Value);
   STG1.Cells[mcol_chavep,mlin-1]   :=DM1.Tb_DarCRNPED.AsString;
   STG1.Cells[mcol_lotseq_bx,mlin-1]:=FormatFloat(mcasas, DM1.Tb_DarCRLOTSEQ_LB.Value);
   STG1.Cells[mcol_lote_bx,mlin-1]  :=FormatFloat(mcasas, DM1.Tb_DarCRLOTE.Value);
   if (pComROrigem=5) and (DM1.Tb_PargerPDEDVD.Value=1) then
      STG1.Cells[mcol_valfre,mlin-1]:=FormatFloat(mcasas, DM1.Tb_DarCRVALFRE.Value)
   else
      STG1.Cells[mcol_valfre,mlin-1]:='0.00';

   if mpcomis>0 then
      begin
      STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas,
                           (ValFloat(STG1.Cells[mcol_valor,mlin-1])
                           -ValFloat(STG1.Cells[mcol_valfre,mlin-1]) // VALOR do frete
                           -ValFloat(STG1.Cells[mcol_icmsr,mlin-1]) // icms retido
                           -ValFloat(STG1.Cells[mcol_semcom,mlin-1]) // sem comissão
                           -ValFloat(STG1.Cells[mcol_vlracre,mlin-1]))*mpcomis/100); // valor do Acrescimo
      if  valfloat(STG1.Cells[mcol_valcom,mlin-1])<0 then
          STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas, 0);

      end
   else
      STG1.Cells[mcol_valcom,mlin-1]:=VALCOM.Text;

   end;


fcalcular(0);
ITEM_CANCELAR.Click;
if mori_comrv <> 'frm_demonstrativo' then
   NUMDUP.SetFocus;

end;
function TFrm_ComRV.fcalcular(ptipo: Integer): Boolean;
var
x: Integer;
begin
mtotcom:=0;
mtotal:=0;
mtottarban :=0;
mtotoutdesp:=0;


QTDDOC.Caption:=IntToStr(STG1.RowCount-2);
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      continue;
   if (valint(STG1.Cells[mcol_dup,x])>20) or
      (valint(STG1.Cells[mcol_dup,x])=5) then
      begin
      mtotal     :=mtotal     -valfloat(STG1.Cells[mcol_valor,x]);
      mtotcom    :=mtotcom    -valfloat(STG1.Cells[mcol_valcom,x]);
      mtottarban :=mtottarban -ValFloat(STG1.Cells[mcol_tarban,x]);
      mtotoutdesp:=mtotoutdesp-ValFloat(STG1.Cells[mcol_outtar,x]);
      end
   else
      begin
      mtotal     :=mtotal     +valfloat(STG1.Cells[mcol_valor,x]);
      mtotcom    :=mtotcom    +valfloat(STG1.Cells[mcol_valcom,x]);
      mtottarban :=mtottarban +ValFloat(STG1.Cells[mcol_tarban,x]);
      mtotoutdesp:=mtotoutdesp+ValFloat(STG1.Cells[mcol_outtar,x]);
      end;
   end;
TOTDOC.Caption    :=Formatfloat(mcasas,mtotal);
TOTCOM.Caption    :=Formatfloat(mcasas,mtotcom);
TOTTARBAN.Caption :=Formatfloat(mcasas,mtottarban);
TOTOUTDESP.Caption:=Formatfloat(mcasas,mtotoutdesp);
//TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtottarban+mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
QTDDOC.Update;
TOTDOC.Update;
TOTCOM.Update;
TOTTARBAN.Update;
TOTOUTDESP.Update;
TOTLIQ.Update;
result:=True;
end;

function TFrm_ComRV.fexcluir(ptipo: Integer): Boolean;
var
{ Parametros
0-Atualiza Cadastro e Deleta
1-So Atualiza Cadastro Deixando o Lote Zero
2-So Atualiza Cadastro Deixando o Lote Atual
3-So Deleta

}
mdup:Integer;
mTipoUpd: Integer;
begin
if ptipo<3 then
   begin
   Qr_CL02.First;
   mTipoUpd:=0;

   While not Qr_CL02.Eof do
      begin
      if Qr_CL02CL2DUP.AsInteger>20 then
         mdup:=Qr_CL02CL2DUP.AsInteger-20
      else
         mdup:=Qr_CL02CL2DUP.AsInteger;

      if fLerdup(Qr_CL02CL2CODEMPD.AsInteger,Qr_CL02CL2CODECF.AsInteger,
                     mdup,
                     Qr_CL02CL2NUMERO.Value,
                     Qr_CL02CL2DESD.Value,
                     Qr_CL02CL2DTEMIS.Value) then
         begin
         if Qr_CL02CL2DUP.AsInteger>20 then
            mtipoupd:=6
         else if pComROrigem=0 then
            begin
            if DM1.Query4.FieldByName('CRCODV03').Value=ValFloat(CODVEN.Text) then
               mTipoUpd:=0
            else if DM1.Query4.FieldByName('CRCODV02').Value=ValFloat(CODVEN.Text) then
               mTipoUpd:=1
            else
               mTipoUpd:=2;
            end
         else if pComROrigem=1 then
            mTipoUpd:=3
         else if pComROrigem=2 then
            mTipoUpd:=4
         else if pComROrigem=3 then
            mTipoUpd:=5;


         fUpdate(mTipoUpd,iif(ptipo=2,ValInt(NUMLOT.Text),0),Qr_CL02CL2CODEMPD.AsInteger,
                      Qr_CL02CL2CODECF.AsInteger,
                      mdup,
                      Qr_CL02CL2NUMERO.Value,
                      Qr_CL02CL2DESD.Value,
                      Qr_CL02CL2DTEMIS.Value);
         end;
      Qr_CL02.Next;
      end;
   end;
if (ptipo=0) or (ptipo=3) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL01 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL1CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL1CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL02 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL2CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL2CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL03 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL3CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL3CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;

   end;
result:=True;
end;

procedure TFrm_ComRV.ITEM_CANCELARClick(Sender: TObject);
begin
MCODEMP.Text  :='';
//MCODEMP.Text  :=IntToStr(CODEMP);
MCODECF.Text  :=IntToStr(codecf);
NUMDUP.Text   :='';
DESD.Text     :='';
DUP.Text      :='';
mDTEMIS.Text  :='';
DTVCTO.Text   :='';
NOMCLI.Text   :='';
VALOR.Text    :='';
VALCOM.Text   :='';
DTBX.Text     :='/  /';
I_TARBAN.Text :='';
I_OUTDESP.Text:='';
moper_item    :=0;
end;

procedure TFrm_ComRV.item_excluirClick(Sender: TObject);
var
x: Integer;
begin
mlin:=STG1.Row;

if (STG1.Cells[mcol_numero,mlin]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      STG1.Cells[02,x]:=STG1.Cells[02,x+1];
      STG1.Cells[03,x]:=STG1.Cells[03,x+1];
      STG1.Cells[04,x]:=STG1.Cells[04,x+1];
      STG1.Cells[05,x]:=STG1.Cells[05,x+1];
      STG1.Cells[06,x]:=STG1.Cells[06,x+1];
      STG1.Cells[07,x]:=STG1.Cells[07,x+1];
      STG1.Cells[08,x]:=STG1.Cells[08,x+1];
      STG1.Cells[09,x]:=STG1.Cells[09,x+1];
      STG1.Cells[10,x]:=STG1.Cells[10,x+1];
      STG1.Cells[11,x]:=STG1.Cells[11,x+1];
      STG1.Cells[12,x]:=STG1.Cells[12,x+1];
      STG1.Cells[13,x]:=STG1.Cells[13,x+1];
      STG1.Cells[14,x]:=STG1.Cells[14,x+1];
      STG1.Cells[15,x]:=STG1.Cells[15,x+1];
      STG1.Cells[16,x]:=STG1.Cells[16,x+1];
      STG1.Cells[17,x]:=STG1.Cells[17,x+1];
      STG1.Cells[18,x]:=STG1.Cells[18,x+1];
      STG1.Cells[19,x]:=STG1.Cells[19,x+1];
      STG1.Cells[20,x]:=STG1.Cells[20,x+1];
      STG1.Cells[21,x]:=STG1.Cells[21,x+1];
      STG1.Cells[22,x]:=STG1.Cells[22,x+1];
      STG1.Cells[23,x]:=STG1.Cells[23,x+1];
      STG1.Cells[24,x]:=STG1.Cells[24,x+1];
      STG1.Cells[25,x]:=STG1.Cells[25,x+1];
      STG1.Cells[26,x]:=STG1.Cells[26,x+1];
      STG1.Cells[27,x]:=STG1.Cells[27,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
fcalcular(0);
end;

procedure TFrm_ComRV.BBLIMPARClick(Sender: TObject);
begin
NUMLOT.Text:='';
MDATA.Text :='/  /';
CODVEN.Text:='';
NOMVEN.Text:='';
MDATAI.Text:='';
MDATAF.Text:='';
OBS1.Text  :='';
OBS2.Text  :='';
NUMDUP.Text:='';
DESD.Text  :='';
DUP.Text   :='';
MDTEMIS.Text:='';
DTVCTO.Text :='';
NOMCLI.Text :='';
VALOR.Text  :='';
DTBX.Text  :='/  /';
QTDDOC.Caption:='';
TOTDOC.Caption:='';
TOTCOM.Caption:='';
PCOMIS.Text      :='';
TOTLIQ.Caption   :='';
TOTTARBAN.Caption:='';
TOTOUTCRED.Caption:='';
moper:=0;
MTEXTOC01.Text:='';
MTEXTOC02.Text:='';
MTEXTOC03.Text:='';
MTEXTOC04.Text:='';
MTEXTOC05.Text:='';
MTEXTOC06.Text:='';
MTEXTOC07.Text:='';
MTEXTOC08.Text:='';
MTEXTOC09.Text:='';
MTEXTOC10.Text:='';
MTEXTOD01.Text:='';
MTEXTOD02.Text:='';
MTEXTOD03.Text:='';
MTEXTOD04.Text:='';
MTEXTOD05.Text:='';
MTEXTOD06.Text:='';
MTEXTOD07.Text:='';
MTEXTOD08.Text:='';
MTEXTOD09.Text:='';
MTEXTOD10.Text:='';
Memo_cred.Lines.Clear;
Memo_deb.Lines.Clear;
MVALC01.Text :='';
MVALC02.Text :='';
MVALC03.Text :='';
MVALC04.Text :='';
MVALC05.Text :='';
MVALC06.Text :='';
MVALC07.Text :='';
MVALC08.Text :='';
MVALC09.Text :='';
MVALC10.Text :='';

MVALD01.Text :='';
MVALD02.Text :='';
MVALD03.Text :='';
MVALD04.Text :='';
MVALD05.Text :='';
MVALD06.Text :='';
MVALD07.Text :='';
MVALD08.Text :='';
MVALD09.Text :='';
MVALD10.Text :='';



stg1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Rows[2].Clear;
Panel4.Enabled   :=False;
Panel_itens.Enabled:=False;
ts_recibo.Enabled:=false;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
end;

procedure TFrm_ComRV.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ComRV.BBINCLUIRClick(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: BBGRAVAR.Click;
      end;
   end;
BBLIMPAR.Click;
ITEM_CANCELAR.Click;
Panel4.Enabled   :=True;
Panel_itens.Enabled:=True;
ts_recibo.Enabled:=true;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
MDATA.Text:=FormatDateTime(Fdt2,pdatasis);
MDATAI.Text:=FormatDateTime(fdt2,pdatasis-30);
MDATAF.Text:=FormatDateTime(fdt2,pdatasis);
FReciboPadrao(0);

moper:=0;
if mori_comrv <> 'frm_demonstrativo' then
   MDATA.SetFocus;
end;

procedure TFrm_ComRV.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   if Frm_CRVC=nil then
      Application.CreateForm(TFrm_CRVC, Frm_CRVC)
   else
      begin
      Frm_CRVC.Free;
      Frm_CRVC:=nil;
      Application.CreateForm(TFrm_CRVC, Frm_CRVC);
      end;

   Frm_CRVC.ShowModal;
   mnumlot:=Frm_CRVC.Qr_ComVCL1CHAVE.AsInteger;
   Frm_CRVC.Free;
   Frm_CRVC:=nil;
   end;
BBLIMPAR.Click;
Qr_CL01.Close;
Qr_CL01.SQL.Clear;
Qr_CL01.SQL.Add('Select * from CADCL01 where CL1TIPO=0'+InttoStr(pComROrigem)+' and ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL01.SQL.add(' CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE')
else
   Qr_CL01.SQL.add(' CL1CODEMP=0'+IntTostr(codemp)
                   +' and CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE');
Qr_CL01.Open;
if Qr_CL01.Eof then
   begin
   fmensagem('Lote não Encontrado!',0,['0'],0);
   exit;
   end;

Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add(' select CADCL02.*,CADCLI.CRAZAO ');
Qr_CL02.SQL.Add(' from CADCL02,CADCLI ');
Qr_CL02.SQL.add(' where CCODCLI=CL2CODCLI ');
Qr_CL02.SQL.add(' and CL2CHAVE=0'+IntToStr(mnumlot));
if not (DM1.Qr_TID.Locate('TINOME','CADCLI',[])) then
  Qr_CL02.SQL.Add(' and CCODEMP=CL2CODEMP ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Qr_CL02.SQL.add(' and CL2CODEMP=0'+intTostr(codemp));

if CB_ORDEM.ItemIndex=0 then
  Qr_CL02.SQL.add(' order by CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=1 then
  Qr_CL02.SQL.add(' order by CRAZAO,CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=2 then
  Qr_CL02.SQL.add(' order by CL2NUMERO,CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=3 then
  Qr_CL02.SQL.add(' order by CL2DTVCTO,CL2NUMERO,CL2CHAVE,CL2DUP,CL2DTBX');

try
  Qr_CL02.Open;
except
  Qr_CL02.Sql.savetofile('C:\SQL.TXT');
  end;



Qr_CL03.Close;
Qr_CL03.SQL.Clear;
Qr_CL03.SQL.Add('Select * from CADCL03 where ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL03.SQL.add(' CL3CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL3CHAVE,CL3NAT,CL3ORDEM')
else
   Qr_CL03.SQL.add(' CL3CODEMP=0'+intTostr(codemp)
                  +' and CL3CHAVE=0'+IntToStr(mnumlot)
                  +' order by CL3CHAVE,CL3NAT,CL3ORDEM');
Qr_CL03.Open;

NUMLOT.Text :=Qr_CL01CL1CHAVE.AsString;
MDATA.Text  :=FormatDatetime(fdt2, Qr_CL01CL1DATA.Value);
CODVEN.Text :=Qr_CL01CL1CODIGO.AsString;
if pComROrigem=0 then
   flqr1('VNOME','V','CADVEN','N','VCODVEN',QR_CL01CL1CODIGO.AsString)
else if pComROrigem=1 then
   flqr1('SNOME','S','CADSUP','N','SCODSUP',QR_CL01CL1CODIGO.AsString)
else if pComROrigem=2 then
   flqr1('NOMUSR','','CADUSR','N','CODUSR',QR_CL01CL1CODIGO.AsString)
else if pComROrigem=3 then
   flqr1('CARAZAO','CA','CADASSE','N','CACODASS',QR_CL01CL1CODIGO.AsString);
NOMVEN.Text :=DM1.Query1.Fields[0].AsString;
MDATAI.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAI.Value);
MDATAF.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAF.Value);
PCOMIS.Text :=Formatfloat(mcasas, Qr_CL01CL1PCOMIS.Value);
mpcomis :=ValFloat(PCOMIS.Text);
mtarban :=ValFloat(TARBAN.Text);
moutdesp:=ValFloat(OUTDESP.Text);
OBS1.Text   :=Qr_CL01CL1OBS01.Value;
OBS2.Text   :=Qr_CL01CL1OBS02.Value;
Qr_CL02.First;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
While not Qr_CL02.Eof do
   begin
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CL02CL2CODCLI.AsString);
   STG1.Cells[mcol_sacado,mlin-1]:=DM1.Query1.Fields[0].AsString;
   STG1.Cells[mcol_numero,mlin-1]:=Qr_CL02CL2NUMERO.AsString;
   STG1.Cells[mcol_desd,mlin-1]:=Qr_CL02CL2DESD.Value;
   STG1.Cells[mcol_dup,mlin-1]:=FormatFloat('0',Qr_CL02CL2DUP.Value);
   STG1.Cells[mcol_dtemis,mlin-1]:=FormatDateTime(fdt2,Qr_CL02CL2DTEMIS.value);
   STG1.Cells[mcol_dtvcto,mlin-1]:=FormatDateTime(fdt2, Qr_CL02CL2DTVCTO.value);
   STG1.Cells[mcol_valor,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALDOC.Value);
   STG1.Cells[mcol_dtbx,mlin-1]:=FormatDateTime(fdt2, Qr_CL02CL2DTBX.value);
   STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALCOM.Value);
   STG1.Cells[mcol_codemp,mlin-1]:=Qr_CL02CL2CODEMPD.AsString;
   STG1.Cells[mcol_valfre,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALFRE.Value);
   STG1.Cells[mcol_icmsr,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALICMSR.Value);
   STG1.Cells[mcol_semcom,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2SEMCOM.Value);
   STG1.Cells[mcol_vlracre,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALACRE.Value);
   STG1.Cells[mcol_comtlv,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALCTL.Value);
   STG1.Cells[mcol_codecf,mlin-1]:=Qr_CL02CL2CODECF.AsString;
   STG1.Cells[mcol_codcli,mlin-1]:=Qr_CL02CL2CODCLI.AsString;
   STG1.Cells[mcol_codbco,mlin-1]:=Qr_CL02CL2CODBCO.AsString;
   STG1.Cells[mcol_tarban,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2TARBAN.Value);
   STG1.Cells[mcol_outtar,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2OUTDESP.Value);
   STG1.Cells[mcol_valdes,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALDESC.Value);
   STG1.Cells[mcol_dtpag,mlin-1] :=FormatDateTime(fdt2, Qr_CL02CL2DTPAG.Value);
   STG1.Cells[mcol_juros,mlin-1] :=FormatFloat(mcasas, Qr_CL02CL2JUROS.Value);
   STG1.Cells[mcol_jurd,mlin-1]  :=FormatFloat(mcasas, Qr_CL02CL2JURD.Value);
   STG1.Cells[mcol_multa,mlin-1] :=FormatFloat(mcasas, Qr_CL02CL2MULTA.Value);
   STG1.Cells[mcol_valrec,mlin-1]:=FormatFloat(mcasas, Qr_CL02CL2VALREC.Value);
   STG1.Cells[mcol_chavep,mlin-1]:=Qr_CL02CL2CHAVEP.AsString;
   Qr_CL02.Next;
   end;
if Qr_CL03.Eof then
   FReciboPadrao(0)
else
   begin
   While not Qr_CL03.Eof do
      begin
      if Qr_CL03CL3NAT.Value=1 then // debitos
         begin
         if Qr_CL03CL3ORDEM.Value=1 then
            begin
            MTEXTOD01.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=2 then
            begin
            MTEXTOD02.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=3 then
            begin
            MTEXTOD03.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=4 then
            begin
            MTEXTOD04.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=5 then
            begin
            MTEXTOD05.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=6 then
            begin
            MTEXTOD06.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=7 then
            begin
            MTEXTOD07.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=8 then
            begin
            MTEXTOD08.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=9 then
            begin
            MTEXTOD09.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=10 then
            begin
            MTEXTOD10.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end;
         end
      else
         begin
         if Qr_CL03CL3ORDEM.Value=1 then
            begin
            MTEXTOC01.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=2 then
            begin
            MTEXTOC02.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=3 then
            begin
            MTEXTOC03.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=4 then
            begin
            MTEXTOC04.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=5 then
            begin
            MTEXTOC05.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=6 then
            begin
            MTEXTOC06.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=7 then
            begin
            MTEXTOC07.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=8 then
            begin
            MTEXTOC08.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=9 then
            begin
            MTEXTOC09.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=10 then
            begin
            MTEXTOC10.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end;
         end;
      Qr_CL03.Next;   
      end;
   end;


BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
fcalcular(0);
FTotalPadrao(0);

end;

procedure TFrm_ComRV.BBGRAVARClick(Sender: TObject);
var
mcod,x: Integer;
begin
if Trim(MDATA.Text)='/  /' then
   begin
   fmensagem('Data Campo Obrigatório!',0,['0'],0);
   MDATA.SetFocus;
   exit;
   end;
if Trim(MDATAI.Text)='/  /' then
   begin
   fmensagem('Data inicial Campo Obrigatório!',0,['0'],0);
   MDATAI.SetFocus;
   exit;
   end;
if Trim(MDATAF.Text)='/  /' then
   begin
   fmensagem('Data final Campo Obrigatório!',0,['0'],0);
   MDATAF.SetFocus;
   exit;
   end;
if Trim(CODVEN.Text)='' then
   begin
   fmensagem('Código Campo Obrigatório!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;



if Trim(OBS1.Text)='' then
   begin
   fmensagem('A primeira linha da descrição é obrigatória!',0,['0'],0);
   OBS1.SetFocus;
   exit;
   end;
if STG1.RowCount<3 then
   begin
   fmensagem('Não há duplicatas selecionadas!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select max(CL1CHAVE) from CADCL01 ');
   if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query1.Sql.add(' where CL1CODEMP=0'+IntTostr(codemp)
                        +' order by CL1CODEMP,CL1CHAVE')
   else
      DM1.Query1.SQL.add(' order by CL1CHAVE ');
   DM1.Query1.Open;
   mnumlot:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   fexcluir(0);
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Insert into CADCL01 ('
                  +'CL1CODEMP,CL1CHAVE,CL1DATA,'
                  +'CL1TIPO,CL1CODIGO,CL1DATAI,CL1DATAF,'
                  +'CL1QTDDOC,CL1TOTDOC,CL1TOTCOM,CL1PCOMIS,CL1LOTSEQ,'
                  +'CL1TARBAN,CL1OUTDESP,CL1TOTTARBAN,CL1TOTOUTDESP,'
                  +'CL1OBS01,CL1OBS02,CL1DATHOR_EVE) values ('
                  +intTostr(codemp)+','
                  +IntTostr(mnumlot)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATA.Text))+chr(39)+','
                  +IntToStr(pComROrigem)+','
                  +Trim(CODVEN.Text)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAI.Text))+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAF.Text))+chr(39)+','
                  +mudaVP(FloatToStr(ValFloat(QTDDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTCOM.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(PCOMIS.Text)))+','
                  +IntToStr(ls_comrec)+','
                  +mudavp(FloatToStr(mtarban))+','
                  +mudavp(FloatToStr(moutdesp))+','
                  +mudavp(FloatToStr(ValFloat(TOTTARBAN.Caption)))+','
                  +mudavp(FloatToStr(ValFloat(TOTOUTDESP.Caption)))+','
                  +':OBS1, :OBS2,:CL1DATHOR_EVE)');
DM1.Query1.ParambyName('OBS1').AsString:=OBS1.Text;
DM1.Query1.ParambyName('OBS2').AsString:=OBS2.Text;
DM1.Query1.ParambyName('CL1DATHOR_EVE').AsDateTime:=Now;
DM1.Query1.ExecSQL;
DM1.Query1.Params.Clear;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DESD',ptinput);

mcod:=0;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      Continue;
   if ValInt(STG1.Cells[mcol_dup,x])>20 then
      mcinst2:=IntToStr(ValInt(STG1.Cells[mcol_dup,x])-20)
   else
      mcinst2:=STG1.Cells[mcol_dup,x];

   if not fLerdup(ValInt(STG1.Cells[mcol_codemp,x]),ValInt(STG1.Cells[mcol_codecf,x]),
          ValInt(mcinst2),
          fsonumero(STG1.Cells[mcol_numero,x]),
          Trim(STG1.Cells[mcol_desd,x]),StrToDate(STG1.Cells[mcol_dtemis,x])) then
      begin
      fmensagem('Erro ao ler a duplicata: '+STG1.Cells[mcol_numero,x]+'/'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x],0,['0'],0);
      continue;
      end;
   if ValInt(STG1.Cells[mcol_dup,x])>20 then
      begin
      if (DM1.Query4.FieldByName('CRLOTE_EC').Value>0) then
         begin
         fmensagem('O Cheque Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                +'ja esta lançado do lote: '+DM1.Query4.fieldbyName('CRLOTE_EC').AsString,0,['0'],0);
         Continue;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADDAR set CRLOTE_EC=0'+IntTostr(mnumlot)
                        +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                        +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                        +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                        +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                        +' and CRDUP=0'+IntToStr(Valint(STG1.Cells[mcol_dup,x])-20)
                        +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,4027,'Frm_Ped','CADP02');
         end;
      end
   else if (pComROrigem=0) then
      begin
      if DM1.Query4.FieldByName('CRCODV03').AsFloat=ValFloat(CODVEN.Text) then
         begin
         if (DM1.Query4.FieldByName('CRLOTCV03').Value>0) then
            begin
            fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                   +'ja esta lançado do lote: '+DM1.Query4.fieldbyName('CRLOTCV03').AsString,0,['0'],0);
            DM1.Tb_Dar.Cancel;
            Continue;
            end;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADDAR set CRLOTCV03=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
         Try
            DM1.Query2.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(02,4027,'Frm_Ped','CADP02');
            end;
         end
      else if DM1.Query4.FieldByName('CRCODV02').Value=ValFloat(CODVEN.Text) then
         begin
         if (DM1.Query4.FieldByName('CRLOTCV02').Value>0) then
            begin
            fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                   +'ja esta lançado do lote: '+DM1.Query4.fieldBYName('CRLOTCV02').AsString,0,['0'],0);
            DM1.Tb_Dar.Cancel;
            Continue;
            end;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADDAR set CRLOTCV02=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
         Try
            DM1.Query2.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(02,4027,'Frm_Ped','CADP02');
            end;
         end
      else
         begin
         if (DM1.Query4.FieldByName('CRLOTCV').Value>0) then
            begin
            fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                   +'ja esta lançado do lote: '+DM1.Query4.FieldByName('CRLOTCV').AsString,0,['0'],0);
            DM1.Tb_Dar.Cancel;
            Continue;
            end;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADDAR set CRLOTCV=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
         Try
            DM1.Query2.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(02,4027,'Frm_Ped','CADP02');
            end;
         end;
      end
   else if (pComROrigem=1) then
      begin
      if (DM1.Query4.FieldByName('CRLOTCS').Value>0) then
         begin
         fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                   +'ja esta lançado do lote: '+DM1.Query4.FieldbyName('CRLOTCS').AsString,0,['0'],0);
         DM1.Tb_Dar.Cancel;
         Continue;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADDAR set CRLOTCS=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,4027,'Frm_Ped','CADP02');
         end;
      end
   else if (pComROrigem=2) then
      begin
      if (DM1.Query4.FieldByName('CRLOTCT').Value>0) then
         begin
         fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                    +'ja esta lançado do lote: '+DM1.Query4.FieldByName('CRLOTCT').AsString,0,['0'],0);
         DM1.Tb_Dar.Cancel;
         Continue;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADDAR set CRLOTCT=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,4027,'Frm_Ped','CADP02');
         end;
      end
   else if (pComROrigem=3) then
      begin
      if (DM1.Query4.FieldByName('CRLOTCASSE').Value>0) then
         begin
         fmensagem('A duplicata Numero: '+STG1.Cells[mcol_numero,x]+'-'+STG1.Cells[mcol_desd,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                    +'ja esta lançado do lote: '+DM1.Query4.FieldByName('CRLOTCASSE').AsString,0,['0'],0);
         DM1.Tb_Dar.Cancel;
         Continue;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADDAR set CRLOTCASSE=0'+IntTostr(mnumlot)
                           +' where CRCODEMP=0'+Trim(STG1.Cells[mcol_codemp,x])
                           +' and CRCODECF=0'+Trim(STG1.Cells[mcol_codecf,x])
                           +' and CRNUMERO=0'+Trim(STG1.Cells[mcol_numero,x])
                           +' and CRDESD='+chr(39)+Trim(STG1.Cells[mcol_desd,x])+chr(39)
                           +' and CRDUP=0'+Trim(STG1.Cells[mcol_dup,x])
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.Cells[mcol_dtemis,x])))+chr(39));
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,4027,'Frm_Ped','CADP02');
         end;
      end;

   mcod:=mcod+1;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Params.CreateParam(ftString,'DESD',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'DTEMIS',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'DTVCTO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'DTBX',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'DTPAG',ptInput);
   DM1.Query1.Sql.add('Insert into CADCL02 ('
                     +'CL2CODEMP,'
                     +'CL2LOTSEQ,'
                     +'CL2CHAVE,'
                     +'CL2SEQ,'
                     +'CL2DOC,'
                     +'CL2CODECF,'
                     +'CL2NUMERO,'
                     +'CL2DUP,'
                     +'CL2LOTSEQ_DC,'
                     +'CL2CHAVEP,'
                     +'CL2ORDEMP,'
                     +'CL2CODEMPD,'
                     +'CL2VALCOM,'
                     +'CL2VALDOC,'
                     +'CL2VALFRE,'
                     +'CL2VALICMSR,'
                     +'CL2SEMCOM,'
                     +'CL2VALACRE,'
                     +'CL2VALCTL,'
                     +'CL2CODCLI,'
                     +'CL2TARBAN,'
                     +'CL2OUTDESP,'
                     +'CL2CODBCO,'
                     +'CL2DESD,CL2DTEMIS,CL2DTVCTO,CL2DTBX'
                     +',CL2DTPAG '
                     +',CL2VALDESC '
                     +',CL2JUROS '
                     +',CL2JURD '
                     +',CL2MULTA '
                     +',CL2VALREC '
                     +',CL2LOTSEQ_BX '
                     +',CL2LOTE_BX '
                     +') values ('
                     +IntToStr(codemp)+','
                     +IntTostr(ls_comrec)+','
                     +IntTostr(mnumlot)+','
                     +IntTostr(mcod)+','
                     +'0'+','
                     +IntTostr(ValInt(STG1.Cells[mcol_codecf,x]))+',' // Código do ECF
                     +Trim(STG1.Cells[mcol_numero,x])+','
                     +Trim(STG1.Cells[mcol_dup,x])+','
                     +'0'+','
                     +Trim(STG1.Cells[mcol_chavep,x])+','
                     +'0'+','
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_codemp,x])))+',' // Código da Empresa
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valcom,x])))+',' // valor da comissão
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valor,x])))+',' // valor do documento
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valfre,x])))+',' // valor do frete
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_icmsr,x])))+',' // valor do Icms Retido
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_semcom,x])))+',' // valor dos produtos sem comissão
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_vlracre,x])))+',' // valor dos Acrescimos dos produtos
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_comtlv,x])))+',' // valor da comissão do televendas
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_codcli,x])))+',' // Codigo do Cliente
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_tarban,x])))+',' // Tarifa Bancaria
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_outtar,x])))+',' // Outras Despesas
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_codbco,x])))+',' // Código do Banco
                     +':DESD,:DTEMIS,:DTVCTO,:DTBX '
                     +',:DTPAG '
                     +','+mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valdes,x]))) // valor do desconto
                     +','+mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_juros,x]))) // valor do juros recebido
                     +','+mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_jurd,x]))) // valor do juros por dia
                     +','+mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_multa,x]))) // valor da multa
                     +','+mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valrec,x]))) // valor recebido
                     +','+FloatToStr(ValFloat(STG1.Cells[mcol_lotseq_bx,x])) // valor recebido
                     +','+FloatToStr(ValFloat(STG1.Cells[mcol_lote_bx,x])) // valor recebido
                     +')');
   DM1.Query1.ParambyName('DESD').AsString   :=Trim(STG1.Cells[mcol_desd,x]);
   DM1.Query1.ParambyName('DTEMIS').AsString :=STG1.Cells[mcol_dtemis,x];
   DM1.Query1.ParambyName('DTVCTO').AsString :=STG1.Cells[mcol_dtvcto,x];
   DM1.Query1.ParambyName('DTBX').AsString   :=STG1.Cells[mcol_dtbx,x];
   DM1.Query1.ParambyName('DTPAG').AsString  :=STG1.Cells[mcol_dtpag,x];
   try
      DM1.Query1.ExecSQL;
   except
      DM1.Query1.Sql.SaveToFile('c:\sql.txt');
      exit;
      end;
   fdm1StartCommit;
   end;
// incio texto
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query1.Params.CreateParam(ftString,'NAT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'ORDEM',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TEXTO',ptInput);
DM1.Query1.Params.CreateParam(ftString,'VALOR',ptInput);
DM1.Query1.Sql.add('Insert into CADCL03 ('
                  +' CL3CODEMP '
                  +',CL3LOTSEQ '
                  +',CL3CHAVE '
                  +',CL3NAT '
                  +',CL3ORDEM '
                  +',CL3TEXTO '
                  +',CL3VALOR '
                  +') values ('
                  +' :CODEMP '
                  +',:LOTSEQ '
                  +',:CHAVE '
                  +',:NAT '
                  +',:ORDEM '
                  +',:TEXTO '
                  +',:VALOR '
                  +')');
DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
DM1.Query1.ParamByName('LOTSEQ').AsFloat:=ls_comrec;
DM1.Query1.ParamByName('CHAVE').AsFloat :=mnumlot;
DM1.Query1.ParamByName('NAT').AsFloat   :=0;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;
DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('NAT').AsFloat   :=1;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;



// termino texto




moper:=3;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLOCALIZAR.Click;
end;

procedure TFrm_ComRV.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   if CODVEN.Focused then
      begin
      fmensagem('Data Invalida!',0,['0'],0);
      MDATA.SetFocus;
      end
   else
      MDATA.Text:=FormatDatetime(fdt2, date);
   end;
end;

procedure TFrm_ComRV.item_pesquisarClick(Sender: TObject);
var
mlin: Integer;
mtem: Boolean;
mPMedDesc: Real;
mValcom: Real;
begin

if Frm_PComRV=nil then
   Application.CreateForm(TFrm_PComRV, Frm_PComRV)
else
   begin
   Frm_PComRV.Free;
   Frm_PComRV:=nil;
   Application.CreateForm(TFrm_PComRV, Frm_PComRV);
   end;

Frm_PComRV.mdt1.Text:=MDATAI.Text;
Frm_PComRV.mdt2.Text:=MDATAF.Text;

if cb_tipo_data.ItemIndex=0 then
   Frm_PComRV.mDataPesq:='CRDTEMIS'
else if cb_tipo_data.ItemIndex=1 then
   Frm_PComRV.mDataPesq:='CRDTVCTO'
else if cb_tipo_data.ItemIndex=2 then
   Frm_PComRV.mDataPesq:='CRDTBX'
else
   Frm_PComRV.mDataPesq:='CRDTVCTO';

{
CRDTBX
CRDTPAG
CRDTVCTO
CRDTEMIS
Data documento
Data de Vencimento
Data da Baixa
Data do Pagamento
}
Frm_PComRV.ShowModal;
Frm_PComRV.query_dup.First;
While not Frm_PComRV.query_dup.Eof do
   begin
   if trim(Frm_PComRV.query_dupOK.AsString)='' then
      begin
      Frm_PComRV.query_dup.Next;
      Continue;
      end;
   mtem:=False;
   for mlin:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_numero,mlin])='' then
         continue;
      if ((Frm_PComRV.query_dupCRNUMERO.AsFloat)=valfloat(STG1.Cells[mcol_numero,mlin]))       and
         (Trim(Frm_PComRV.query_dupCRDESD.AsString)=Trim(STG1.Cells[mcol_desd,mlin]))               and
         (Frm_PComRV.query_dupCRDUP.AsInteger=valint(STG1.Cells[mcol_dup,mlin])) and
         (Frm_PComRV.query_dupCRCODECF.asInteger=Valint(STG1.Cells[mcol_codecf,mlin]))        and
         (FormatDatetime(fdt2, Frm_PComRV.query_dupCRDTEMIS.Value)=Trim(STG1.Cells[mcol_dtemis,mlin]))               and
         (Frm_PComRV.query_dupCRCODEMP.AsFloat=ValFloat(STG1.Cells[mcol_codemp,mlin])) then
         begin
         case fmensagem('A Duplicata.: '+STG1.Cells[mcol_numero,mlin]+'-'+STG1.Cells[mcol_desd,mlin]+' Valor: '+STG1.Cells[mcol_valor,mlin]+#13
                    +'Ja esta relacionada.',0,['1','2'],0) of
                    mrCancel: break
                    else
                    Frm_PComRV.query_dup.Next;
                    end;
         mtem:=True;
         break;
         end;
      end;
   if mtem then
      Continue;
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   STG1.Cells[mcol_numero,mlin-1] :=Frm_PComRV.query_dupCRNUMERO.AsString;
   STG1.Cells[mcol_desd,mlin-1]   :=Frm_PComRV.query_dupCRDESD.AsString;
   STG1.Cells[mcol_dup,mlin-1]    :=Frm_PComRV.query_dupCRDUP.AsString;
   STG1.Cells[mcol_dtemis,mlin-1] :=FormatDatetime(fdt2, Frm_PComRV.query_dupCRDTEMIS.Value);
   STG1.Cells[mcol_sacado,mlin-1] :=Frm_PComRV.query_dupCRAZAO.AsString;
   STG1.Cells[mcol_dtvcto,mlin-1] :=FormatDateTime(fdt2, Frm_PComRV.query_dupCRDTVCTO.AsDateTime);
   STG1.Cells[mcol_valor,mlin-1]  :=FormatFloat(mcasas, Frm_PComRV.query_dupCRVALOR.Value);
   STG1.Cells[mcol_dtbx,mlin-1]   :=FormatDateTime(fdt2, Frm_PComRV.query_dupCRDTBX.AsDateTime);
   STG1.Cells[mcol_codemp,mlin-1] :=Frm_PComRV.query_dupCRCODEMP.AsString;
   STG1.Cells[mcol_valfre,mlin-1] :=FormatFloat(mcasas, Frm_PComRV.query_dupCRVALFRE.AsFloat);
   STG1.Cells[mcol_icmsr,mlin-1]  :=FormatFloat(mcasas, Frm_PComRV.query_dupCRICMSR.AsFloat);
   STG1.Cells[mcol_semcom,mlin-1] :=FormatFloat(mcasas, Frm_PComRV.query_dupCRSEMCOM.AsFloat);
   STG1.Cells[mcol_vlracre,mlin-1]:=FormatFloat(mcasas, Frm_PComRV.query_dupCRVLRACRE.AsFloat);
   STG1.Cells[mcol_codecf,mlin-1] :=Frm_PComRV.query_dupCRCODECF.AsString;
   STG1.Cells[mcol_codcli,mlin-1] :=Frm_PComRV.query_dupCRCODCLI.AsString;
   STG1.Cells[mcol_codbco,mlin-1] :=Frm_PComRV.query_dupCRCODBCO.AsString;
   STG1.Cells[mcol_valdes,mlin-1]   :=FormatFloat(mcasas, Frm_PComRV.query_dupCRDESC.Value);

   if (mtarban<>0) and (ValFloat(STG1.Cells[mcol_codbco,mlin-1])>0) then
      STG1.Cells[mcol_tarban,mlin-1]:=FormatFloat(mcasas, mtarban)
   else
//      STG1.Cells[mcol_tarban,mlin-1]:='0.00';
      STG1.Cells[mcol_tarban,mlin-1]:=FormatFloat(mcasas,Frm_PComRV.query_dupCRTARBAN.Value);

   if (moutdesp<>0) then
     STG1.Cells[mcol_outtar,mlin-1]:=FormatFloat(mcasas, moutdesp)
   else
      STG1.Cells[mcol_outtar,mlin-1]:='0.00';

   if (pComROrigem=0) and (DM1.Tb_PargerPDEDVD.Value=1) then
      STG1.Cells[mcol_comtlv,mlin-1]:=Formatfloat(mcasas, Frm_PComRV.query_dupCRCOMTEL.AsFloat)
   else
      STG1.Cells[mcol_comtlv,mlin-1]:='0.00';
   if mpcomis=0 then
      begin
      if (Frm_PComRV.query_dupCRDUP.AsInteger>20) or
         (Frm_PComRV.query_dupCRDUP.AsInteger=1) or
         (Frm_PComRV.query_dupCRDUP.AsInteger=2) then
         begin
         if Frm_PComRV.query_dupCRCOMVEN.AsFloat=0 then
            begin
            mPMedDesc:=DM4.Tb_Par01PJURM.Value;
            mValcom  :=(((Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value)-(Frm_PComRV.query_dupCRDESC.Value+Frm_PComRV.query_dupCRTARBAN.Value) )
                    *mPMedDesc)/100;
            STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, mValcom);
            end;
         end
      else if pComrOrigem=0 then
         begin
         mPMedDesc:=(Frm_PComRV.query_dupCRCOMVEN.AsFloat*100)/
                     (Frm_PComRV.query_dupCRVALOR.AsFloat-(Frm_PComRV.query_dupCRICMSR.Value
                                                        +Frm_PComRV.query_dupCRTARBAN.Value));
         mValcom  :=(((Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value)-(Frm_PComRV.query_dupCRDESC.Value+Frm_PComRV.query_dupCRTARBAN.Value) )
                    *mPMedDesc)/100;
         STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, mValcom);
         if valfloat(STG1.Cells[mcol_valcom,mlin-1])<0 then
            STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas, 0);

         end
      else if pComROrigem=1 then
         begin
         mPMedDesc:=(Frm_PComRV.query_dupCRCOMSUP.AsFloat*100)/
                     (Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value);
         mValcom  :=(((Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value)-(Frm_PComRV.query_dupCRDESC.Value+Frm_PComRV.query_dupCRTARBAN.Value))
                    *mPMedDesc)/100;
         STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, mValcom);
         if  valfloat(STG1.Cells[mcol_valcom,mlin-1])<0 then
             STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas, 0);

         end
      else if pComROrigem=2 then
         begin
         mPMedDesc:=(Frm_PComRV.query_dupCRCOMTEL.AsFloat*100)/(Frm_PComRV.query_dupCRVALOR.AsFloat-
                                                            (Frm_PComRV.query_dupCRICMSR.Value
                                                            +Frm_PComRV.query_dupCRTARBAN.Value));
         mValcom  :=(((Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value)-(Frm_PComRV.query_dupCRDESC.Value+Frm_PComRV.query_dupCRTARBAN.Value))
                    *mPMedDesc)/100;
         STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, mValcom);
         if valfloat(STG1.Cells[mcol_valcom,mlin-1])<0 then
            STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas, 0);

         end
      else if pComROrigem=3 then
         begin
         mPMedDesc:=(Frm_PComRV.query_dupCRCOMASSE.AsFloat*100)/(Frm_PComRV.query_dupCRVALOR.AsFloat-
                                                            (Frm_PComRV.query_dupCRICMSR.Value
                                                            +Frm_PComRV.query_dupCRTARBAN.Value));
         mValcom  :=(((Frm_PComRV.query_dupCRVALOR.AsFloat-Frm_PComRV.query_dupCRICMSR.Value)-(Frm_PComRV.query_dupCRDESC.Value+Frm_PComRV.query_dupCRTARBAN.Value))
                    *mPMedDesc)/100;
         STG1.Cells[mcol_valcom,mlin-1]:=FormatFloat(mcasas, mValcom);
         end
      end
   else
      begin
      STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas,
                           (ValFloat(STG1.Cells[mcol_valor,mlin-1])
                           -
                           (ValFloat(STG1.Cells[mcol_valfre,mlin-1]) // VALOR do frete
                           +ValFloat(STG1.Cells[mcol_icmsr,mlin-1]) // icms retido
                           +ValFloat(STG1.Cells[mcol_semcom,mlin-1]) // sem comissão
                           +ValFloat(STG1.Cells[mcol_valdes,mlin-1]) // desconto concedido

                           +Frm_PComRV.query_dupCRVALOR_ACRES.AsFloat
                           +ValFloat(STG1.Cells[mcol_vlracre,mlin-1])
//                           +ValFloat(STG1.Cells[mcol_ valdes,mlin-1]) // sem comissão
                          )
                           )*mpcomis/100); // valor do Acrescimo
      if  valfloat(STG1.Cells[mcol_valcom,mlin-1])<0 then
          STG1.Cells[mcol_valcom,mlin-1]:=Formatfloat(mcasas, 0);


      end;

   STG1.Cells[mcol_dtpag,mlin-1]    :=FormatDateTime(fdt2, Frm_PComRV.query_dupCRDTPAG.AsDateTime);
   STG1.Cells[mcol_juros,mlin-1]    :=FormatFloat(mcasas, Frm_PComRV.query_dupCRJUROS.Value);
   STG1.Cells[mcol_jurd,mlin-1]     :=FormatFloat(mcasas, Frm_PComRV.query_dupCRJURD.Value);
   STG1.Cells[mcol_multa,mlin-1]    :=FormatFloat(mcasas, Frm_PComRV.query_dupCRMULTA.Value);
   STG1.Cells[mcol_chavep,mlin-1]   :=Frm_PComRV.query_dupCRNPED.AsString;
   STG1.Cells[mcol_valrec,mlin-1]   :=FormatFloat(mcasas, Frm_PComRV.query_dupCRVALPAG.Value+Frm_PComRV.query_dupCRDEVOL.Value );
   STG1.Cells[mcol_lotseq_bx,mlin-1]:=FormatFloat(mcasas, Frm_PComRV.query_dupCRLOTSEQ_LB.Value);
   STG1.Cells[mcol_lote_bx,mlin-1]  :=FormatFloat(mcasas, Frm_PComRV.query_dupCRLOTE.Value);

   Frm_PComRV.query_dup.Next;

   end;
Frm_PComRV.Free;
Frm_PComRV:=nil;

fcalcular(0);
end;

procedure TFrm_ComRV.BBALTERARClick(Sender: TObject);
begin
Panel4.Enabled   :=True;
Panel_itens.Enabled:=True;
ts_recibo.Enabled:=true;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
ITEM_CANCELAR.Click;
moper:=1;
MDATA.SetFocus;

end;

procedure TFrm_ComRV.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este Lote?',0,['1','2'],2)<>mrYes then
   exit;
fexcluir(0);
BBLIMPAR.Click;
fmensagem('Lote Excluido!',0,['0'],0);

end;

procedure TFrm_ComRV.BBIMPRIMIRClick(Sender: TObject);
var
mtotg: Real;
matraso,mjurdev,mjurdeb,mpdesc,mbasec,mvcomv,mvcomt,mvcoml: Real;
mtotd, mtoti, mtotdes,mtotps,mtotbc,mtotvc,mtotct,mtotjdev,mtotjr,mtotjdeb,mtotcl:Real;
mtpdoc: Integer;
mQtdDoc: Integer;
begin
{
!Numero/P!Dt.Emissao!Nome do Sacado                          !Data Vcto.!Data Baixa!Data Pgto.!Valor  Titulo !Impostos/Frete!
!     Descontos!Produt.s/comis!Base de Comiss !Valor da Comis!Com.Televenda!Juros Devidos !Juros Recebid!Juros Debitad!Total Liquido!
!123456-1!10/09/0200!1234567890123456789012345678901234567890!10/09/2000!10/10/2000!10/10/2000!zzZ.zzz.ZZ9,99!zzZ.zzz.ZZ9,99!
!Zzz.zzz.ZZ9,99!zzZ.zzz.ZZ9,99!Zzz.zzz.ZZZ9,99!zzZ.zzz.ZZ9,99!zz.zzz.zz9,99!zz.zzz.zzz9,99!zz.zzz.zz9,99!zz.zzz.zz9,99!zz.zzz.zz9,99!
+--------------+--------------+---------------+--------------+-------------+--------------+-------------+-------------+-------------+
}


Qr_CL02.First;
if Qr_CL02.Eof then
   begin
   fmensagem('nao ha nada a ser impresso.',0,['1'],0);
   exit;
   end;


Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add(' select CADCL02.*,CADCLI.CRAZAO ');
Qr_CL02.SQL.Add(' from CADCL02,CADCLI ');
Qr_CL02.SQL.add(' where CCODCLI=CL2CODCLI ');
Qr_CL02.SQL.add(' and CL2CHAVE=0'+IntToStr(mnumlot));
if not (DM1.Qr_TID.Locate('TINOME','CADCLI',[])) then
  Qr_CL02.SQL.Add(' and CCODEMP=CL2CODEMP ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Qr_CL02.SQL.add(' and CL2CODEMP=0'+intTostr(codemp));

if CB_ORDEM.ItemIndex=0 then
  Qr_CL02.SQL.add(' order by CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=1 then
  Qr_CL02.SQL.add(' order by CRAZAO,CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=2 then
  Qr_CL02.SQL.add(' order by CL2NUMERO,CL2CHAVE,CL2DUP,CL2DTBX')
else if CB_ORDEM.ItemIndex=3 then
  Qr_CL02.SQL.add(' order by CL2DTVCTO,CL2NUMERO,CL2CHAVE,CL2DUP,CL2DTBX');

try
  Qr_CL02.Open;
except
  Qr_CL02.Sql.savetofile('C:\SQL.TXT');
  end;

if RG_TIPOREL.ItemIndex = 1 then
  begin
  imp_resumido;
  exit;
  end;

{
form_Impres_Comrv.RDPrint1.FonteTamanhoPadrao:=S10cpp;
form_Impres_Comrv.RDPrint1.TamanhoQteColunas:=136;
form_Impres_Comrv.RDPrint1.TamanhoQteLinhas :=66;
form_Impres_Comrv.RDPrint1.TamanhoQteLPP  :=Seis;
form_Impres_Comrv.RDPrint1.OpcoesPreview.Preview:=False;
form_Impres_Comrv.RDPrint1.SetPrinterbyName(impressora_padrao(0));
form_Impres_Comrv.RDPrint1.Abrir;
}
testeform := TFrm_ComRV(FindGlobalComponent('form_Impres_Comrv'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_Comrv);

form_Impres_Comrv.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP


mlin:=0;
mpag:=0;
mtotd:=0;
mtoti:=0;
mtotdes:=0;
mtotps:=0;
mtotbc:=0;
mtotvc:=0;
mtotct:=0;
mtotjdev:=0;
mtotjr:=0;
mtotjdeb:=0;
mtotcl:=0;
mQtdDoc:=0;
while not Qr_CL02.Eof do
   begin
   if mlin=0 then
      begin
      mlin:=form_Impres_Comrv.fImprimirCabecalho(136,'Relatorio de Comissão de recebimento.');
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(03,01,Centra('Lote.: '+Qr_CL01cL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CL1DATA.Value),' ',80),mneg);
      mlin:=4;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Qr_CL01CL1OBS01.Value,' ',80),mneg);
      if Trim(Qr_CL01CL1OBS02.Value)<>'' then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Qr_CL01CL1OBS02.Value,' ',80),mneg);
         end;
      mlin:=mlin+1;
      if pComROrigem=0 then
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
      else if pComROrigem=1 then
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Supervisor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
      else if pComROrigem=2 then
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Televendas.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
      else if pComROrigem=3 then
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Assessor...: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(fperiodo(0,MDATAI.Text,MDATAF.Text),' ',80),mneg);

      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+--------------+--------------+---------------+--------------+-------------+--------------+-------------+-------------+-------------+',mreduz);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!Numero/P!Tipo de documento !Dt.Emissao!Nome do Sacado                     !Data Vcto.!Data Baixa!Data Pgto.!Vlr. Titulo!Imp. /Frete!',mreduz);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,'!     Descontos!Produt.s/comis!Base de Comiss !Valor da Comis!Com.Televenda!Juros Devidos !Juros Recebid!Juros Debitad!Total Liquido!',mreduz);
      end;
   mbasec:=Qr_CL02CL2VALDOC.Value
          -Qr_CL02CL2VALICMSR.Value
          -Qr_CL02CL2VALFRE.Value
          -Qr_CL02CL2SEMCOM.Value
          -Qr_CL02CL2VALACRE.Value
          -Qr_CL02CL2TARBAN.Value
          -Qr_CL02CL2OUTDESP.Value;


   mvcomv:=Qr_CL02CL2VALCOM.Value;
   if (DM1.Tb_PargerPDEDVD.Value=1) and (pComROrigem=5) then
      mvcomt:= Qr_CL02CL2VALCTL.Value
   else
      mvcomt:=0;
   mpdesc:=(Qr_CL02CL2VALDESC.Value*100)/Qr_CL02CL2VALDOC.Value;
   mvcomv:=mvcomv-(mvcomv*mpdesc/100);
   matraso:=Qr_CL02CL2DTPAG.Value-Qr_CL02CL2DTVCTO.Value;
   if matraso<0 then matraso:=0;
   mjurdev:=0;
   mjurdeb:=0;
   if matraso>0 then
      begin
      mjurdev:=(Qr_CL02CL2JURD.Value*matraso);
      if matraso>DM4.Tb_Par01PQTDDM.Value then
         mjurdev:=mjurdev+Qr_CL02CL2MULTA.Value;
      end;
   if Qr_CL02CL2JUROS.Value<mjurdev then
      mjurdeb:=mjurdev-Qr_CL02CL2JUROS.Value;
   if DM1.Tb_PargerPDJNR.Value<>1 then
      mjurdeb:=0;
   mvcoml:=mvcomv-mvcomt-mjurdeb;
   flqr1('CRAZAO,CUF','C','CADCLI','N','CCODCLI',Qr_CL02CL2CODCLI.AsString);
   mlin:=mlin+1;
   if Qr_CL02CL2DUP.AsInteger>20 then
      mtpdoc:=Qr_CL02CL2DUP.AsInteger-20
   else
      mtpdoc:=Qr_CL02CL2DUP.AsInteger;
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,'!'+FormatFloat('0000000',Qr_CL02CL2NUMERO.Value)+'-'
                                   +insere2(Qr_CL02CL2DESD.Value,' ',2)+'!'
                                   +insere2(Formatfloat('0',Qr_CL02CL2DUP.Value)+'-'+ptpdoc[mtpdoc]
                                                                              +iif(Qr_CL02CL2DUP.AsInteger>20,' - Extorno',' ')    ,' ',17)+'!'
                                   +FormatDatetime(fdt2,Qr_CL02CL2DTEMIS.Value)+'!'
                                   +insere2(DM1.Query1.fields[0].AsString,' ',34)+'!'
                                   +formatDateTime(fdt2,Qr_CL02CL2DTVCTO.Value)+'!'
                                   +FormatDateTime(fdt2,Qr_CL02CL2DTBX.Value)+'!'
                                   +FormatDateTime(fdt2,Qr_CL02CL2DTPAG.Value)+'!'
                                   +insere(Formatfloat(mcasas,Qr_CL02CL2VALDOC.Value),' ',11)+'!'
                                   +insere(Formatfloat(mcasas,Qr_CL02CL2VALICMSR.Value+Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALACRE.Value),' ',11)+'!',mreduz);

   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!'+insere(FormatFloat(mcasas,Qr_CL02CL2VALDESC.Value),' ',14)+'!'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2SEMCOM.Value+Qr_CL02CL2TARBAN.AsFloat+Qr_CL02CL2OUTDESP.Value),' ',14)+'!'
                                   +insere(FormatFloat(mcasas,mbasec),' ',15)+'!'
                                   +insere(formatfloat(mcasas,mvcomv),' ',14)+'!'
                                   +insere(formatFloat(mcasas,mvcomt),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mjurdev),' ',14)+'!'
                                   +insere(formatFloat(mcasas,Qr_CL02CL2JUROS.Value),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mjurdeb),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mvcoml),' ',13)+'!',mreduz);
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+-----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
   mtotd   :=mtotd+Qr_CL02CL2VALDOC.Value;
   mtoti   :=mtoti+Qr_CL02CL2VALICMSR.Value+Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALACRE.Value;
   mtotdes :=mtotdes+Qr_CL02CL2VALDESC.Value;
   mtotps  :=mtotps +Qr_CL02CL2SEMCOM.Value+Qr_CL02CL2TARBAN.AsFloat+Qr_CL02CL2OUTDESP.Value;
   mtotbc  :=mtotbc +mbasec;
   mtotvc  :=mtotvc +mvcomv;
   mtotct  :=mtotct +mvcomt;
   mtotjdev:=mtotjdev+mjurdev;
   mtotjr  :=mtotjr+Qr_CL02CL2JUROS.Value;
   mtotjdeb:=mtotjdeb+mjurdeb;
   mtotcl  :=mtotcl+mvcoml;
   mQtdDoc :=mQtdDoc+1;
   Qr_CL02.Next;
   if Qr_CL02.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,'!'+insere2('-Totais','.',10)+'!'
                                   +insere2('Documentos.:'+IntToStr(mQtdDoc) ,'.',17)+'!'
                                   +insere2('.','.',10)+'!'
                                   +insere2('.','.',34)+'!'
                                   +insere2('.','.',10)+'!'
                                   +insere2('.','.',10)+'!'
                                   +insere2('.','.',10)+'!'
                                   +insere(Formatfloat(mcasas,mtotd),' ',11)+'!'
                                   +insere(Formatfloat(mcasas,mtoti),' ',11)+'!',mreduz);

      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!'+insere(FormatFloat(mcasas,mtotdes),' ',14)+'!'
                                   +insere(FormatFloat(mcasas,mtotps),' ',14)+'!'
                                   +insere(FormatFloat(mcasas,mtotbc),' ',15)+'!'
                                   +insere(formatfloat(mcasas,mtotvc),' ',14)+'!'
                                   +insere(formatFloat(mcasas,mtotct),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mtotjdev),' ',14)+'!'
                                   +insere(formatFloat(mcasas,mtotjr),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mtotjdeb),' ',13)+'!'
                                   +insere(formatFloat(mcasas,mtotcl),' ',13)+'!',mreduz);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+-----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
      if (Qr_CL01CL1TOTTARBAN.Value>0) or (Qr_CL01CL1TOTOUTDESP.Value>0) then
         begin
         if Qr_CL01CL1TOTTARBAN.Value>0 then
            begin
            mlin:=mlin+1;
            form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!'+insere2('Total Tarifa Bancaria','.',118)
                                   +insere(formatFloat(mcasas, Qr_CL01CL1TARBAN.Value),' ',13)+'!',mreduz);
            end;
         if Qr_CL01CL1TOTOUTDESP.Value>0 then
            begin
            mlin:=mlin+1;
            form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!'+insere2('Total Outras Despesas','.',118)
                                   +insere(formatFloat(mcasas, Qr_CL01CL1TOTOUTDESP.Value),' ',13)+'!',mreduz);
            end;
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+-----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'!'+insere2('Total Liquido','.',118)
                                +insere(formatFloat(mcasas, mtotcl-(Qr_CL01CL1TOTOUTDESP.Value+Qr_CL01CL1TOTTARBAN.Value)),' ',13)+'!',mreduz);
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+-----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
         end;
      end
   else if mlin>58 then
      begin
      form_Impres_Comrv.RDPrint1.Novapagina;
      mlin:=0;
      end;
   end;
if CB_EMIREC.Checked then
   FEmiteRecibo(0);
if form_Impres_Comrv.RDPrint1.Setup then form_Impres_Comrv.RDPrint1.Fechar;
form_Impres_Comrv.free;
form_Impres_Comrv:=nil;



end;

procedure TFrm_ComRV.imp_resumido;
var
x: Integer;
mpos_cred, mpos_deb: Integer;
mPercComis: Real;
mQtdDoc,mQtdDocGru: Integer;
begin

{
!Chave Pedi!Dt.Emiss!Nome do Sacado                       !Tot.Pedido!Imp./Frete!Pr.s/Comis!Base Comis!Vlr Comis.!comis.tele!Comis.Liq.!
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
!1234567/01!10-09-02!1234567890123456789012345678901234567!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!

!Chave Pedi!Dt.Emiss!Nome do Sacado                       !Tot.Pedido!Imp./Frete!Pr.s/Comis!Base Comis!Vlr Comis.!comis.tele!Comis.Liq.!
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
!1234567/01!10-09-02!1234567890123456789012345678901234567!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!
}
Qr_CL02.First;
mQtdDoc:=0; mQtdDocGru:=0;
if Qr_CL02.Eof then
   begin
   fmensagem('não há nada a ser impresso!',0,['0'],0);
   exit;
   end;



for x:=0 to 9 do
   begin
   mTextoCred[x]:='';
   mTextoDeb [x]:='';
   mValDeb   [x]:=0;
   mValCred  [x]:=0;
   end;
mpos_cred:=0;
mpos_cred:=0;

mtip_ant:=-1;
testeform := TFrm_ComRV(FindGlobalComponent('form_Impres_Comrv'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_Comrv);

form_Impres_Comrv.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
{
form_Impres_Comrv.RDPrint1.FonteTamanhoPadrao:=S10cpp;
form_Impres_Comrv.RDPrint1.TamanhoQteColunas:=136;
form_Impres_Comrv.RDPrint1.TamanhoQteLinhas :=66;
form_Impres_Comrv.RDPrint1.TamanhoQteLPP  :=Seis;
//form_Impres_Comrv.RDPrint1.OpcoesPreview.Preview:=False;
form_Impres_Comrv.RDPrint1.SetPrinterbyName(impressora_padrao(0));
form_Impres_Comrv.RDPrint1.Abrir;
}
mlin:=0;
mpag:=0;

mtd_valdoc:=0;
mtd_valrec:=0;
mtd_basec :=0;
mtd_valcom:=0;
mtd_valrec:=0;
mtd_valtlv:=0;

mtg_valdoc:=0;
mtg_valrec:=0;
mtg_basec :=0;
mtg_valcom:=0;
mtg_valrec:=0;
mtg_valtlv:=0;


mtEx_valdoc:=0;
mtEx_valrec:=0;
mtEx_basec :=0;
mtEx_valcom:=0;
mtEx_valtlv:=0;

while not Qr_CL02.Eof do
   begin
   if mlin=0 then
      begin
      fImpResumido_Cab(0);

      mlin:=mlin+1;
      if Qr_CL02CL2DUP.AsInteger>20 then
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger-20]+' - EXTORNO',mneg)
      else
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger],mneg);

      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|Pedido|  Titulo |Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|',mreduz);
      end;
{
+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+------+',mreduz);
|Pedido|Dt .Emiss|Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|
|123456|123456/a |123459-12345678901234567890123456789|25/06/07|30/06/07|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|123.12|1234567|

+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+------+',mreduz);
|Pedido|Dt.Emiss |Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|
|123456|123456/a |123459-12345678901234567890123456789|25/06/07|30/06/07|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|123.12|1234567|
}
   mbasec:=Qr_CL02CL2VALREC.Value
          -Qr_CL02CL2VALICMSR.Value
          -Qr_CL02CL2VALFRE.Value
          -Qr_CL02CL2SEMCOM.Value
          -Qr_CL02CL2VALACRE.Value
          -Qr_CL02CL2TARBAN.Value
          -Qr_CL02CL2OUTDESP.Value
          -Qr_CL02CL2JUROS.Value;
//   mbasec:=mbasec+Qr_CL02CL2VALDESC.Value;

   mvcomv:=Qr_CL02CL2VALCOM.Value;

   if (DM1.Tb_PargerPDEDVD.Value=1) and (pComROrigem=5) then
      mvcomt:= Qr_CL02CL2VALCTL.Value
   else
      mvcomt:=0;
   mvcoml:=mvcomv-mvcomt;


   mtd_valdoc:=mtd_valdoc+Qr_CL02CL2VALDOC.Value;
//   mtd_valrec:=mtd_valrec+Qr_CL02CL2VALREC.Value;
   mtd_basec :=mtd_basec +mbasec;
   mtd_valcom:=mtd_valcom+Qr_CL02CL2VALCOM.Value;
   mtd_valrec:=mtd_valrec+Qr_CL02CL2VALREC.Value;
   mtd_valtlv:=mtd_valtlv+Qr_CL02CL2VALCTL.Value;

   if (Qr_CL02CL2VALCOM.Value<>0) and (mbasec<>0) then
      mPercComis:=Arredonda((Qr_CL02CL2VALCOM.Value*100)/mbasec,1)
   else
      mPercComis:=0;
   if (Qr_CL02CL2DUP.AsInteger>20) OR
      (Qr_CL02CL2DUP.AsInteger=5) then
      begin
      mtEx_valdoc:=mtEx_valdoc+Qr_CL02CL2VALDOC.Value;
//      mtEx_valrec:=mtEx_valrec+Qr_CL02CL2VALREC.Value;
      mtEx_basec :=mtEx_basec +mbasec;
      mtEx_valcom:=mtEx_valcom+Qr_CL02CL2VALCOM.Value;
      mtEx_valrec:=mtEx_valrec+Qr_CL02CL2VALREC.Value;
      mtEx_valtlv:=mtEx_valtlv+Qr_CL02CL2VALCTL.Value;
      end
   else
      begin
      mtg_valdoc:=mtg_valdoc+Qr_CL02CL2VALDOC.Value;
//      mtg_valrec:=mtg_valrec+Qr_CL02CL2VALREC.Value;
      mtg_basec :=mtg_basec +mbasec;
      mtg_valcom:=mtg_valcom+Qr_CL02CL2VALCOM.Value;
      mtg_valrec:=mtg_valrec+Qr_CL02CL2VALREC.Value;
      mtg_valtlv:=mtg_valtlv+Qr_CL02CL2VALCTL.Value;
      end;


   mlin:=mlin+1;
   flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CL02CL2CODCLI.AsString);

   form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(FormatFloat('000000',Qr_CL02CL2CHAVEP.Value),' ',06)+'|'
                                       +insere(FormatFloat('000000',Qr_CL02CL2NUMERO.Value),' ',06)+'/'
                                       +insere2(Qr_CL02CL2DESD.Value,' ',2)+'|'
                                       +insere(FormatFloat('000000',Qr_CL02CL2CODCLI.Value),'0',06)+'-'
                                       +insere2(DM1.Query1.Fields[0].AsString,' ',29)+'|'
                                       +FormatDateTime(fdt3,Qr_CL02CL2DTEMIS.Value)+'|'
                                       +insere(FormatDateTime(fdt3,Qr_CL02CL2DTBX.Value),' ',08)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02CL2VALDOC.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02CL2VALREC.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mbasec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02CL2VALCOM.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mPercComis),' ',06)+'|'
                                       +insere(Qr_CL02CL2LOTE_BX.AsString,'0',07)+'|',mreduz);

   mQtdDoc:=mQtdDoc+1;
   mQtdDocGru:=mQtdDocGru+1;
   Qr_CL02.Next;


   if Qr_CL02.Eof then
      begin
      if mlin>50 then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         form_Impres_Comrv.RDPrint1.Novapagina;
         fImpResumido_Cab(0);
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         end;
      if mtd_valdoc<>0 then
         begin

         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'
                                            +insere2('Doc.:'+IntToStr(mQtdDoc) ,' ',09)+'|'
                                       +insere2('Total.','.',36)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valdoc),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valrec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_basec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valcom),' ',11)+'|'
                                       +insere(' ',' ',06)+'|'
                                       +insere(' ',' ',07)+'|',mreduz);
         if (mtip_ant=5) or (mtip_ant>20) then
            begin
            if mtip_ant>20 then
               mTextoDeb[mpos_deb]:=ptpdoc[mtip_ant-20]+' - EXTORNO'
            else
               mTextoDeb[mpos_deb]:=ptpdoc[mtip_ant];
            mValDeb[mpos_deb]:=mtd_valcom;
            mpos_deb:=mpos_deb+1;
            end
         else
            begin
            if mtip_ant>20 then
               mTextoCred[mpos_cred]:=ptpdoc[mtip_ant-20]+' - EXTORNO'
            else
               mTextoCred[mpos_cred]:=ptpdoc[mtip_ant];
            mValCred[mpos_cred]:=mtd_valcom;
            mpos_cred:=mpos_cred+1;
            end;


         mtd_valdoc:=0;
         mtd_valrec:=0;
         mtd_basec :=0;
         mtd_valcom:=0;
         mtd_valrec:=0;
         mtd_valtlv:=0;
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.Impf(mlin,01,'!'+insere(' ',' ',134)+'!',mreduz);
         end;
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total dos Creditos.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valdoc),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);
      if CB_EXTCRED_NC.Checked=True then
        begin
        mlin:=mlin+1;
        form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                      +insere2('Total dos Extornos.','.',36)+'|'
                                      +insere2(' ',' ',08)+'|'
                                      +insere2(' ',' ',08)+'|'
                                      +insere(FormatFloat(mcasas,mtEx_valdoc),' ',11)+'|'
                                      +insere(FormatFloat(mcasas,mtEx_valrec),' ',11)+'|'
                                      +insere(FormatFloat(mcasas,mtEx_basec),' ',11)+'|'
                                      +insere(FormatFloat(mcasas,mtEx_valcom),' ',11)+'|'
                                      +insere(' ',' ',06)+'|'
                                      +insere(' ',' ',07)+'|',mreduz);
        end;

      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      if CB_EXTCRED_NC.Checked=true then
        begin
        mlin:=mlin+1;
        form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total Liquido.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valdoc-mtEx_valdoc ),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valrec-mtEx_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_basec-mtEx_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_Valcom-mtEx_valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);
        end
      else
        begin
        mlin:=mlin+1;        
        form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total Liquido.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valdoc),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_Valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);
        end;


      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);

      end
   else if mtip_ant<>Qr_CL02CL2DUP.Asinteger then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.Impf(mlin,01,'|'+insere(' ',' ',06)+'|'
                                                  +insere2('Doc.:'+IntToStr(mQtdDocGru) ,' ',09)+'|'
                                       +insere2('Total.','.',36)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valdoc),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valrec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_basec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valcom),' ',11)+'|'
                                       +insere(' ',' ',06)+'|'
                                       +insere(' ',' ',07)+'|',mreduz);
      mQtddocGru:=0;
      if (mtip_ant=5) or (mtip_ant>20) then
         begin
         if mtip_ant>20 then
            mTextoDeb[mpos_deb]:=ptpdoc[mtip_ant-20]+' - EXTORNO'
         else
            mTextoDeb[mpos_deb]:=ptpdoc[mtip_ant];
         mValDeb[mpos_deb]:=mtd_valcom;
         mpos_deb:=mpos_deb+1;
         end
      else
         begin
         if mtip_ant>20 then
            mTextoCred[mpos_cred]:=ptpdoc[mtip_ant-20]+' - EXTORNO'
         else
            mTextoCred[mpos_cred]:=ptpdoc[mtip_ant];
         mValCred[mpos_cred]:=mtd_valcom;
         mpos_cred:=mpos_cred+1;
         end;

      mtd_valdoc:=0;
      mtd_valrec:=0;
      mtd_basec :=0;
      mtd_valcom:=0;
      mtd_valrec:=0;
      mtd_valtlv:=0;
      mlin:=mlin+1;
      mtip_ant:=Qr_CL02CL2DUP.AsInteger;

      if mlin<58 then
         begin
         if Qr_CL02CL2DUP.AsInteger>20 then
            form_Impres_Comrv.RDPrint1.Impf(mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger-20]+' - EXTORNO',mneg)
         else
            form_Impres_Comrv.RDPrint1.Impf(mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger],mneg);
         mlin:=mlin+1;
         form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         end
      else
         begin
         if mlin<59 then
            mlin:=59;
         end;
      end;

   if not (Qr_cl02.EOF) and (mlin>58) then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      form_Impres_Comrv.RDPrint1.Novapagina;
      mlin:=0;
      end;
   end;
if CB_EMIREC.Checked then
   FEmiteRecibo(0);
if form_Impres_Comrv.RDPrint1.Setup then form_Impres_Comrv.RDPrint1.Fechar;
form_Impres_Comrv.free;
form_Impres_Comrv:=nil;

end;

procedure TFrm_ComRV.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if pComROrigem=0 then
      begin
      CODVEN.Text:=fChamaVen(0,'frm_ComRV',Key);
      CODVENExit(self);
      key:=#0;
      end
   else if pComROrigem=1 then
      begin
      CODVEN.Text:=fChamaSup(0,'frm_ComRV',Key);
      key:=#0;
      end
   else if pComROrigem=2 then
      begin
      CODVEN.Text:=fChamaUsr(0,'frm_ComRV',Key);
      key:=#0;
      end
   else if pComROrigem=3 then
      begin
      CODVEN.Text:=fChamaAssessor(0,'frm_ComRV',Key);
      key:=#0;
      end;
   end;
end;

procedure TFrm_ComRV.CODVENExit(Sender: TObject);
begin
if (STG1.RowCount>2) and (mcodven_ant<>ValFloat(CODVEN.Text)) then
   begin
   mcinst:='Esta mudança de Código apagara os registros selecionados.'+#13
          +'Deseja Continuar?';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      CODVEN.Text:=FloatToStr(mcodven_ant);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end
   else
      begin
      STG1.RowCount:=2;
      STG1.Rows[1].Clear;
      end;
   end;

if pComROrigem=0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComROrigem=1 then
   begin
   if flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Supervisor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComROrigem=2 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Usuário não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComROrigem=3 then
   begin
   if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Assessor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ComRV.MDATAIExit(Sender: TObject);
begin
Try
   MDATAI.Text:=FormatDateTime(fdt2,Strtodate(MDATAI.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATAI.SetFocus;
   exit;
   end;
if (STG1.RowCount>2) and (mdt1_ant<>MDATAI.Text) then
   begin
   mcinst:='Esta mudança de Código de data apagara os registros selecionados.'+#13
          +'Deseja Continuar?';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      MDATAI.Text:=mdt1_ant;
      MDATAI.SetFocus;
      exit;
      end
   else
      begin
      STG1.RowCount:=2;
      STG1.Rows[1].Clear;
      end;
   end;
end;

procedure TFrm_ComRV.MDATAFExit(Sender: TObject);
begin
Try
   MDATAF.Text:=FormatDateTime(fdt2,Strtodate(MDATAF.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATAF.SetFocus;
   exit;
   end;
if (STG1.RowCount>2) and (mdt2_ant<>MDATAF.Text) then
   begin
   mcinst:='Esta mudança de data apagara os registros selecionados.'+#13
          +'Deseja Continuar?';

   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      MDATAF.Text:=mdt2_ant;
      MDATAF.SetFocus;
      exit;
      end
   else
      begin
      STG1.RowCount:=2;
      STG1.Rows[1].Clear;
      end;
   end;
if (Trim(MDATAI.Text)<>'/  /') and (Trim(MDATAI.Text)<>'') then
   Begin
   if StrToDate(MDATAF.Text)<StrToDate(MDATAI.Text) then
      Begin
      fmensagem('Periodo invalido. Data inicial maior que Final!',0,['0'],0);
      MDATAI.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ComRV.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ComRV.PCOMISExit(Sender: TObject);
begin
PCOMIS.Text:=Formatfloat(mcasas, ValFloat(PCOMIS.Text));
if ValFloat(PCOMIS.Text)<0 then
   begin
   fmensagem('Comissão não pode ser menor que zero!',0,['0'],0);
   PCOMIS.SetFocus;
   exit;
   end;
if not fTestaTam(0,6,PCOMIS.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   PCOMIS.SetFocus;
   exit;
   end;
mpcomis:=ValFloat(PCOMIS.Text);
fcalccom(0);
end;

procedure TFrm_ComRV.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;

begin
if (arow>0) then
   begin

//Pega o texto da célula

  if (valint(STG1.Cells[mcol_dup,arow])=1) or
     (valint(STG1.Cells[mcol_dup,arow])=2) then
     STG1.Canvas.Font.Color:=clBlue
//     STG1.Canvas.Brush.Color:=clBlue
  else if valint(STG1.Cells[mcol_dup,arow])>19 then
     STG1.Canvas.Font.Color:=clRed
  else if valint(STG1.Cells[mcol_dup,arow])=5 then
     STG1.Canvas.Font.Color:=clPurple
  else if valint(STG1.Cells[mcol_dup,arow])<>0 then
     STG1.Canvas.Font.Color:=clGreen;

  if (aCol=mcol_numero) or (acol=mcol_codecf) or (acol>mcol_dtbx) then
     begin
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
     end
  else
     begin
     STG1.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG1.Cells[acol,arow]);
     end;
  end;

end;

function TFrm_ComRV.fcalccom(ptipo: Integer): Boolean;
var
x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      Continue;
   if mpcomis=0 then
      begin
      if flcaddar(8,Valint(STG1.Cells[mcol_codemp,x]),0,ValInt(STG1.Cells[mcol_codecf,x]),
                  0,
                 Trim(STG1.Cells[mcol_numero,x]),Trim(STG1.Cells[mcol_desd,x]),
                 STG1.Cells[mcol_dup,x],StrToDate(STG1.Cells[mcol_dtemis,X]),'' ) then
         begin
         if pComROrigem=0 then
            begin
            if DM1.Tb_DarCRCODV03.Value=ValFloat(CODVEN.Text) then
               STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMV03.Value)
            else if DM1.Tb_DarCRCODV02.Value=ValFloat(CODVEN.Text) then
               STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMV02.Value)
            else
               STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMVEN.Value)
            end
         else if pComROrigem=1 then
            STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMSUP.Value)
         else if pComROrigem=2 then
            STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMTEL.Value)
         else if pComROrigem=3 then
            STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas, DM1.Tb_DarCRCOMASSE.Value)
         end
      else
         STG1.Cells[mcol_valcom,x]:='0';
      end
   else
      begin
      STG1.Cells[mcol_valcom,x]:=Formatfloat(mcasas,
                           (ValFloat(STG1.Cells[mcol_valor,x])
                           -ValFloat(STG1.Cells[mcol_valfre,x]) // VALOR do frete
                           -ValFloat(STG1.Cells[mcol_icmsr,x]) // icms retido
                           -ValFloat(STG1.Cells[mcol_semcom,x]) // sem comissão
                           -ValFloat(STG1.Cells[mcol_vlracre,x]))*mpcomis/100); // valor do Acrescimo
      end;
   end;
fcalcular(0);
result:=True;
end;

procedure TFrm_ComRV.CODVENEnter(Sender: TObject);
begin
mcodven_ant:=ValFloat(CODVEN.Text)
end;

procedure TFrm_ComRV.MDATAIEnter(Sender: TObject);
begin
mdt1_ant:=MDATAI.Text;
end;

procedure TFrm_ComRV.MDATAFEnter(Sender: TObject);
begin
mdt2_ant:=MDATAF.Text;
end;

procedure TFrm_ComRV.MDTEMISExit(Sender: TObject);
begin
if Trim(MDTEMIS.Text)<>'/  /' then
   begin
   try
      MDTEMIS.Text:=FormatDatetime(fdt2, StrtoDate(MDTEMIS.Text));
   except
      if mori_comrv <> 'frm_demonstrativo' then begin
         fmensagem('Data Invalida!',0,['0'],0);
         MDTEMIS.SetFocus;
      end;   
      end;
   end;
fTestaDup(0);
end;

function TFrm_Comrv.fLerdup(pCodEmp,pCodEcf,pDup: Integer; pNumero: Real; pDesd:String; Pdtemis:TDateTime): Boolean;
begin
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select CRCODV03,CRCODV02,CRCODVEN,CRCODTLV,'
                  +' CRLOTCV03,CRLOTCV02,CRLOTCV,CRLOTCS,CRLOTCT,CRCODCLI,CRLOTCASSE,CRCODASSE,CRVALPAG,CRDEVOL '
                  +' ,CRLOTSEQ_EC,CRLOTE_EC '
                  +' from CADDAR where '
                  +' CRCODEMP=0'+IntTosTr(pCodEmp));
if pcodecf>0 then
   DM1.Query4.SQL.Add(' and  CRCODECF=0'+IntToStr(pcodecf));
DM1.Query4.SQL.Add(' and CRNUMERO=0'+FloatToStr(pNumero));
if pdesd<>'' then
   DM1.Query4.SQL.Add(' and CRDESD='+chr(39)+pdesd+chr(39));
if pdup<>0 then
   DM1.Query4.SQL.Add(' and CRDUP=0'+IntTostr(pDup));
if pdtemis>pdatanula then
   DM1.Query4.sql.Add(' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, pdtemis)+chr(39));

//DM1.Query4.SQL.SaveToFile('C:\SQlErro.txt');   
DM1.Query4.Open;
if DM1.Query4.Eof then
   Result:=False
else
   Result:=True;
end;

function TFrm_ComRV.fUpdate(ptipo,pNumLot,pCodEmp,pCodEcf,pDup: Integer; pNumero: Real; pDesd:String; Pdtemis:TDateTime): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADDAR set ');
if ptipo=0 then
   DM1.Query2.SQL.add(' CRLOTCV03=0'+IntToStr(pNumlot))
else if ptipo=1 then
   DM1.Query2.SQL.add(' CRLOTCV02=0'+IntToStr(pNumlot))
else if ptipo=2 then
   DM1.Query2.SQL.add(' CRLOTCV=0'+IntToStr(pNumlot))
else if ptipo=3 then
   DM1.Query2.SQL.add(' CRLOTCS=0'+IntToStr(pNumlot))
else if ptipo=4 then
   DM1.Query2.SQL.add(' CRLOTCT=0'+IntToStr(pNumlot))
else if ptipo=5 then
   DM1.Query2.SQL.add(' CRLOTCASSE=0'+IntToStr(pNumlot))
else if ptipo=6 then
   DM1.Query2.SQL.add(' CRLOTE_EC=0'+IntToStr(pNumlot));

DM1.Query2.SQL.add(' where CRCODEMP=0'+IntToStr(pCodEmp)
                           +' and CRCODECF=0'+IntTostr(pCodEcf)
                           +' and CRNUMERO=0'+FloatToStr(pNumero)
                           +' and CRDESD='+chr(39)+Trim(pDesd)+chr(39)
                           +' and CRDUP=0'+FloatToStr(pDup)
                           +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, Pdtemis)+chr(39));
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,4027,'Frm_Ped','CADDAR');
   end;
end;
function TFrm_ComRV.fTestaDup(ptipo:Integer): Boolean;
var
x: Integer;
mPMedDesc: Real;
mvalcom: Real;
mdtteste: TDateTime;
query_temp: tQuery;
begin
if valint(NUMDUP.Text)=0 then
   begin
   result:=false;
   exit;
   end;

if Trim(MDTEMIS.Text)='/  /' then
   mdtteste:=pdatanula
else
   mdtteste:=StrToDate(MDTEMIS.Text);
if not flcaddar(8,ValInt(MCODEMP.Text),0,ValInt(MCODECF.Text),0,Trim(NUMDUP.Text),Trim(DESD.Text),copy(DUP.Text,1,1),mdtteste,'') then
   begin
   DTVCTO.Text   :='/  /';
   NOMCLI.Text   :='';
   VALOR.Text    :='';
   DTBX.Text     :='/  /';
   VALCOM.Text   :='';
   I_TARBAN.Text :='';
   I_OUTDESP.Text:='';
   DESD.Text     :='';
   DUP.Text      :='';
   MDTEMIS.Text  :='/  /';
   MCODECF.Text  :='';
   MCODEMP.Text  :='';

   Result:=False;
   exit;
   end;
if (DM1.Tb_DarCRSTATUS.AsInteger<2) and
   (  (DM1.Tb_DarCRDUP.AsInteger<>1) and (DM1.Tb_DarCRDUP.AsInteger<>2) ) then
   begin
   DTVCTO.Text   :='/  /';
   NOMCLI.Text   :='';
   VALOR.Text    :='';
   DTBX.Text     :='/  /';
   VALCOM.Text   :='';
   I_TARBAN.Text :='';
   I_OUTDESP.Text:='';
   Result:=False;
   exit;
   end;


if mpcomis>0 then
   begin
   mvalcom:=(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value)
                                     -(DM1.Tb_DarCRVALFRE.Value+DM1.Tb_DarCRSEMCOM.Value
                                     +DM1.Tb_DarCRTARBAN.Value
                                     +DM1.Tb_DarCRDESC.value+DM1.Tb_DarCRICMSR.Value
                                     );

   mvalcom:=mvalcom*mpcomis/100;
   end
else
   begin
   if (pComROrigem=0) then
      begin
      if DM1.Tb_DarCRCODV03.Value=ValFloat(CODVEN.Text) then
         begin
         mPMedDesc:=(DM1.Tb_DarCRCOMV03.AsFloat*100)/((DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
         mvalcom:=(((DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value)-
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
         end
      else if DM1.Tb_DarCRCODV02.Value=ValFloat(CODVEN.Text) then
         begin
         mPMedDesc:=(DM1.Tb_DarCRCOMV02.AsFloat*100)/( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value)-
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
         mvalcom:=(( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
         end
      else
         begin
         if DM1.Tb_DarCRCOMVEN.AsFloat=0 then
            begin
            query_temp:=tQuery.Create(nil);
            query_temp.DatabaseName:='SG_ASSOC';
            query_temp.Close;
            query_temp.SQL.Clear;
            query_temp.SQL.Add('SELECT ROUND( (SUM(P2VCOMIS)*:PERC) ,2) COMVEN FROM CADP02 WHERE P2CHAVE=:CHAVE AND P2ORDEM=:ORDEM '
              +'           AND P2LOTSEQ=:LOTSEQ AND P2CODEMP=:CODEMP ');

            query_temp.ParamByName('PERC').Value  :=iif(DM1.Tb_DarCRPFPGTO.AsFloat>0,DM1.Tb_DarCRPFPGTO.AsFloat,100) / 100;
            query_temp.ParamByName('CHAVE').Value :=DM1.Tb_DarCRNPED.AsFloat;
            query_temp.ParamByName('ORDEM').Value :=DM1.Tb_DarCRORDEM.AsFloat;
            query_temp.ParamByName('LOTSEQ').Value:=DM1.Tb_DarCRLOTSEQ_CP.AsFloat;
            query_temp.ParamByName('CODEMP').Value:=DM1.Tb_DarCRCODEMP.AsFloat;
            query_temp.Open;
            mPMedDesc:=query_temp.fieldbyname('COMVEN').AsFloat;
            end
        else
           mPMedDesc:=DM1.Tb_DarCRCOMVEN.AsFloat;
         mPMedDesc:=(mPMedDesc*100)/( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
         mvalcom:=((DM1.Tb_DarCRVALOR.Value-
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
         end;
      end
   else if (pComROrigem=1) then
      begin
      mPMedDesc:=(DM1.Tb_DarCRCOMSUP.AsFloat*100)/( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
      mvalcom:=(( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
      end
   else if (pComROrigem=2) then
      begin
      mPMedDesc:=(DM1.Tb_DarCRCOMTEL.AsFloat*100)/( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
      mvalcom:=(( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
      end
   else if (pComROrigem=3) then
      begin
      mPMedDesc:=(DM1.Tb_DarCRCOMASSE.AsFloat*100)/( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat));
      mvalcom:=(( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -
                    (DM1.Tb_DarCRICMSR.Value+DM1.Tb_DarCRTARBAN.AsFloat
                    +DM1.Tb_DarCRDESC.Value))
                  *mPMedDesc)/100;
      end;
   if (mvalcom=0) and ((DM1.Tb_DarCRDUP.AsInteger=1) or (DM1.Tb_DarCRDUP.AsInteger=2)) then
      begin
      mPMedDesc:=DM4.Tb_Par01PJURM.Value;
      mvalcom:=((( (DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALOR_ACRES.Value) -DM1.Tb_DarCRICMSR.Value)-DM1.Tb_DarCRDESC.Value)
                *mPMedDesc)/100;
      end;

   end;

MCODEMP.Text :=DM1.Tb_DarCRCODEMP.AsString;
NUMDUP.Text  :=DM1.Tb_DarCRNUMERO.AsString;
DESD.Text    :=DM1.Tb_DarCRDESD.AsString;
DUP.Text     :=DM1.Tb_DarCRDUP.AsString;
MDTEMIS.Text :=FormatDatetime(fdt2, DM1.Tb_DarCRDTEMIS.Value);
MCODECF.Text :=DM1.Tb_DarCRCODECF.AsString;

DTVCTO.Text  :=FormatDatetime(fdt2, DM1.Tb_DarCRDTVCTO.Value);
NOMCLI.Text  :=DM1.Tb_Darrazaocli.Value;
VALOR.Text   :=FormatFloat(mcasas, DM1.Tb_DarCRVALOR.Value);
if DM1.Tb_DarCRDTBX.AsDateTime<=pdatanula then
   DTBX.Text    :=FormatDatetime(fdt2, DM1.Tb_DarCRDTEMIS.Value)
else
   DTBX.Text    :=FormatDatetime(fdt2, DM1.Tb_DarCRDTBX.Value);

VALCOM.Text  :=FormatFloat(mcasas, mvalcom);
if (DM1.Tb_DarCRCODBCO.Value>0) and (ValFloat(TARBAN.Text)<>0) then
   I_TARBAN.Text:=TARBAN.Text
else
   I_TARBAN.Text:=FormatFloat(mcasas, DM1.Tb_DarCRTARBAN.Value);
I_OUTDESP.Text:=OUTDESP.Text;

Result:=True;
end;

procedure TFrm_ComRV.MCODEMPExit(Sender: TObject);
begin
MCODEMP.Text:=fdeixanum(MCODEMP.Text);
//fTestaDup(0);
end;

procedure TFrm_ComRV.NUMDUPExit(Sender: TObject);
begin
NUMDUP.Text:=fdeixanum(NUMDUP.Text);
fTestaDup(0);

end;

procedure TFrm_ComRV.DESDExit(Sender: TObject);
begin
fTestaDup(0);
end;

procedure TFrm_ComRV.MCODECFExit(Sender: TObject);
begin
fTestaDup(0);
end;

procedure TFrm_ComRV.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;
end;

procedure TFrm_ComRV.TARBANExit(Sender: TObject);
begin
TARBAN.Text:=Formatfloat(mcasas, ValFloat(TARBAN.Text));
if ValFloat(TARBAN.Text)<0 then
   begin
   fmensagem('Tarifa Bancaria não pode ser menor que zero!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
if not fTestaTam(0,10,TARBAN.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
mtarban:=ValFloat(TARBAN.Text);
fcalctarb(0);
end;

procedure TFrm_ComRV.OUTDESPExit(Sender: TObject);
begin
OUTDESP.Text:=Formatfloat(mcasas, ValFloat(OUTDESP.Text));
if ValFloat(OUTDESP.Text)<0 then
   begin
   fmensagem('Outras Despesas não pode ser menor que zero!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
if not fTestaTam(0,10,OUTDESP.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   OUTDESP.SetFocus;
   exit;
   end;
moutdesp:=ValFloat(OUTDESP.Text);
fcalcoutdesp(0);
end;

procedure TFrm_ComRV.OBS1Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS1.Text,'') then
   OBS1.Text:=copy(OBS1.Text,1,60);

end;

procedure TFrm_ComRV.OBS2Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);

end;

procedure TFrm_ComRV.PCOMISKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,5,PCOMIS.Text,key) then
   key:=#0;
end;

procedure TFrm_ComRV.TARBANKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;

if not fTestaTam(1,10,TARBAN.Text,key) then
   key:=#0;

end;

procedure TFrm_ComRV.OUTDESPKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,10,OUTDESP.Text,key) then
   key:=#0;

end;

procedure TFrm_ComRV.OBS1KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS1.Text,key) then
   key:=#0;
end;

procedure TFrm_ComRV.OBS2KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);
end;

procedure TFrm_ComRV.I_TARBANExit(Sender: TObject);
begin
I_TARBAN.Text:=Formatfloat(mcasas, ValFloat(I_TARBAN.Text));
if ValFloat(I_TARBAN.Text)<0 then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Tarifa Bancaria não pode ser menor que zero!',0,['0'],0);
     I_TARBAN.SetFocus;
   end;
   exit;
   end;
if not fTestaTam(0,10,I_TARBAN.Text,'') then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Valor muito grande para este Campo!',0,['0'],0);
     I_TARBAN.SetFocus;
   end;  
   exit;
   end;

end;

procedure TFrm_ComRV.I_TARBANKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,10,I_TARBAN.Text,key) then
   key:=#0;

end;

procedure TFrm_ComRV.I_OUTDESPExit(Sender: TObject);
begin
I_OUTDESP.Text:=Formatfloat(mcasas, ValFloat(I_OUTDESP.Text));
if ValFloat(I_OUTDESP.Text)<0 then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Outras Despesas não pode ser menor que zero!',0,['0'],0);
     TARBAN.SetFocus;
   end;
   exit;
   end;
if not fTestaTam(0,10,I_OUTDESP.Text,'') then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Valor muito grande para este Campo!',0,['0'],0);
     I_OUTDESP.SetFocus;
   end;  
   exit;
   end;

end;

procedure TFrm_ComRV.I_OUTDESPKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,10,I_OUTDESP.Text,key) then
   key:=#0;

end;

function TFrm_ComRv.fcalctarb(ptipo: Integer): Boolean;
var
x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      Continue;
   if mtarban=0 then
      STG1.Cells[mcol_tarban,x]:='0.00'
   else
      begin
      if valFloat(STG1.Cells[mcol_codbco,x])>0 then
         STG1.Cells[mcol_tarban,x]:=FormatFloat(mcasas, mtarban);
      end;
   end;
fcalcular(0);
result:=True;
end;
function TFrm_ComRV.fcalcoutdesp(ptipo: Integer): Boolean;
var
x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      Continue;
   if moutdesp=0 then
      STG1.Cells[mcol_outtar,x]:='0.00'
   else
      STG1.Cells[mcol_outtar,x]:=FormatFloat(mcasas, moutdesp);
   end;
fcalcular(0);
result:=True;
end;
procedure TFrm_ComRV.VALCOMExit(Sender: TObject);
begin
VALCOM.Text:=Formatfloat(mcasas, ValFloat(VALCOM.Text));
if ValFloat(VALCOM.Text)<0 then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Valor da Comissao não pode ser menor que zero!',0,['0'],0);
     VALCOM.SetFocus;
   end;
   exit;
   end;
if not fTestaTam(0,10,VALCOM.Text,'') then
   begin
   if mori_comrv <> 'frm_demonstrativo' then
   begin
     fmensagem('Valor muito grande para este Campo!',0,['0'],0);
     VALCOM.SetFocus;
   end;  
   exit;
   end;

end;

procedure TFrm_ComRV.TARBANEnter(Sender: TObject);
begin
TARBAN.SelectAll;
end;

procedure TFrm_ComRV.OUTDESPEnter(Sender: TObject);
begin
OUTDESP.SelectAll;
end;

procedure TFrm_ComRV.VALCOMEnter(Sender: TObject);
begin
VALCOM.SelectAll;
end;

procedure TFrm_ComRV.I_TARBANEnter(Sender: TObject);
begin
I_TARBAN.SelectAll;
end;

procedure TFrm_ComRV.I_OUTDESPEnter(Sender: TObject);
begin
I_OUTDESP.SelectAll;
end;

procedure TFrm_ComRV.MVALC01Enter(Sender: TObject);
begin
MVALC01.SelectAll;
end;

procedure TFrm_ComRV.MVALC02Enter(Sender: TObject);
begin
MVALC02.SelectAll;

end;

procedure TFrm_ComRV.MVALC03Enter(Sender: TObject);
begin
MVALC03.SelectAll;

end;

procedure TFrm_ComRV.MVALC04Enter(Sender: TObject);
begin
MVALC04.SelectAll;

end;

procedure TFrm_ComRV.MVALC05Enter(Sender: TObject);
begin
MVALC05.SelectAll;

end;

procedure TFrm_ComRV.MVALC06Enter(Sender: TObject);
begin
MVALC06.SelectAll;

end;

procedure TFrm_ComRV.MVALC07Enter(Sender: TObject);
begin
MVALC07.SelectAll;

end;

procedure TFrm_ComRV.MVALC08Enter(Sender: TObject);
begin
MVALC08.SelectAll;

end;

procedure TFrm_ComRV.MVALC09Enter(Sender: TObject);
begin
MVALC09.SelectAll;

end;

procedure TFrm_ComRV.MVALC10Enter(Sender: TObject);
begin
MVALC10.SelectAll;

end;

procedure TFrm_ComRV.MVALD01Enter(Sender: TObject);
begin
MVALD01.SelectAll;

end;

procedure TFrm_ComRV.MVALD02Enter(Sender: TObject);
begin
MVALD02.SelectAll;

end;

procedure TFrm_ComRV.MVALD03Enter(Sender: TObject);
begin
MVALD03.SelectAll;

end;

procedure TFrm_ComRV.MVALD04Enter(Sender: TObject);
begin
MVALD04.SelectAll;

end;

procedure TFrm_ComRV.MVALD05Enter(Sender: TObject);
begin
MVALD05.SelectAll;

end;

procedure TFrm_ComRV.MVALD06Enter(Sender: TObject);
begin
MVALD06.SelectAll;

end;

procedure TFrm_ComRV.MVALD07Enter(Sender: TObject);
begin
MVALD07.SelectAll;

end;

procedure TFrm_ComRV.MVALD08Enter(Sender: TObject);
begin
MVALD08.SelectAll;

end;

procedure TFrm_ComRV.MVALD09Enter(Sender: TObject);
begin
MVALD09.SelectAll;

end;

procedure TFrm_ComRV.MVALD10Enter(Sender: TObject);
begin
MVALD10.SelectAll;

end;

procedure TFrm_ComRV.MVALC01Exit(Sender: TObject);
begin
MVALC01.Text:=Formatfloat(mcasas, ValFloat(MVALC01.Text));
if ValFloat(MVALC01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC02Exit(Sender: TObject);
begin
MVALC02.Text:=Formatfloat(mcasas, ValFloat(MVALC02.Text));
if ValFloat(MVALC02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC03Exit(Sender: TObject);
begin
MVALC03.Text:=Formatfloat(mcasas, ValFloat(MVALC03.Text));
if ValFloat(MVALC03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC04Exit(Sender: TObject);
begin
MVALC04.Text:=Formatfloat(mcasas, ValFloat(MVALC04.Text));
if ValFloat(MVALC04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC05Exit(Sender: TObject);
begin
MVALC05.Text:=Formatfloat(mcasas, ValFloat(MVALC05.Text));
if ValFloat(MVALC05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC06Exit(Sender: TObject);
begin
MVALC06.Text:=Formatfloat(mcasas, ValFloat(MVALC06.Text));
if ValFloat(MVALC06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC07Exit(Sender: TObject);
begin
MVALC07.Text:=Formatfloat(mcasas, ValFloat(MVALC07.Text));
if ValFloat(MVALC07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC08Exit(Sender: TObject);
begin
MVALC08.Text:=Formatfloat(mcasas, ValFloat(MVALC08.Text));
if ValFloat(MVALC08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC09Exit(Sender: TObject);
begin
MVALC09.Text:=Formatfloat(mcasas, ValFloat(MVALC09.Text));
if ValFloat(MVALC09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALC10Exit(Sender: TObject);
begin
MVALC10.Text:=Formatfloat(mcasas, ValFloat(MVALC10.Text));
if ValFloat(MVALC10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALD01Exit(Sender: TObject);
begin
MVALD01.Text:=Formatfloat(mcasas, ValFloat(MVALD01.Text));
if ValFloat(MVALD01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALD02Exit(Sender: TObject);
begin
MVALD02.Text:=Formatfloat(mcasas, ValFloat(MVALD02.Text));
if ValFloat(MVALD02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;

FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALD03Exit(Sender: TObject);
begin
MVALD03.Text:=Formatfloat(mcasas, ValFloat(MVALD03.Text));
if ValFloat(MVALD03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD04Exit(Sender: TObject);
begin
MVALD04.Text:=Formatfloat(mcasas, ValFloat(MVALD04.Text));
if ValFloat(MVALD04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;

FTotalPadrao(0);
end;

procedure TFrm_ComRV.MVALD05Exit(Sender: TObject);
begin
MVALD05.Text:=Formatfloat(mcasas, ValFloat(MVALD05.Text));
if ValFloat(MVALD05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD06Exit(Sender: TObject);
begin
MVALD06.Text:=Formatfloat(mcasas, ValFloat(MVALD06.Text));
if ValFloat(MVALD06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD07Exit(Sender: TObject);
begin
MVALD07.Text:=Formatfloat(mcasas, ValFloat(MVALD07.Text));
if ValFloat(MVALD07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD08Exit(Sender: TObject);
begin
MVALD08.Text:=Formatfloat(mcasas, ValFloat(MVALD08.Text));
if ValFloat(MVALD08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD09Exit(Sender: TObject);
begin
MVALD09.Text:=Formatfloat(mcasas, ValFloat(MVALD09.Text));
if ValFloat(MVALD09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.MVALD10Exit(Sender: TObject);
begin
MVALD10.Text:=Formatfloat(mcasas, ValFloat(MVALD10.Text));
if ValFloat(MVALD10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComRV.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_COMRV','');
if Trim(MTEXTOC01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC01'     ,'text'      ,'_COMRV',MTEXTOC01.Text);
if Trim(MTEXTOC02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC02'     ,'text'      ,'_COMRV',MTEXTOC02.Text);
if Trim(MTEXTOC03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC03'     ,'text'      ,'_COMRV',MTEXTOC03.Text);
if Trim(MTEXTOC04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC04'     ,'text'      ,'_COMRV',MTEXTOC04.Text);
if Trim(MTEXTOC05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC05'     ,'text'      ,'_COMRV',MTEXTOC05.Text);
if Trim(MTEXTOC06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC06'     ,'text'      ,'_COMRV',MTEXTOC06.Text);
if Trim(MTEXTOC07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC07'     ,'text'      ,'_COMRV',MTEXTOC07.Text);
if Trim(MTEXTOC08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC08'     ,'text'      ,'_COMRV',MTEXTOC08.Text);
if Trim(MTEXTOC09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC09'     ,'text'      ,'_COMRV',MTEXTOC09.Text);
if Trim(MTEXTOC10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC10'     ,'text'      ,'_COMRV',MTEXTOC10.Text);
if Trim(MTEXTOD01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD01'     ,'text'      ,'_COMRV',MTEXTOD01.Text);
if Trim(MTEXTOD02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD02'     ,'text'      ,'_COMRV',MTEXTOD02.Text);
if Trim(MTEXTOD03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD03'     ,'text'      ,'_COMRV',MTEXTOD03.Text);
if Trim(MTEXTOD04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD04'     ,'text'      ,'_COMRV',MTEXTOD04.Text);
if Trim(MTEXTOD05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD05'     ,'text'      ,'_COMRV',MTEXTOD05.Text);
if Trim(MTEXTOD06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD06'     ,'text'      ,'_COMRV',MTEXTOD06.Text);
if Trim(MTEXTOD07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD07'     ,'text'      ,'_COMRV',MTEXTOD07.Text);
if Trim(MTEXTOD08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD08'     ,'text'      ,'_COMRV',MTEXTOD08.Text);
if Trim(MTEXTOD09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD09'     ,'text'      ,'_COMRV',MTEXTOD09.Text);
if Trim(MTEXTOD10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD10'     ,'text'      ,'_COMRV',MTEXTOD10.Text);
fGravaPadroes(codusr,'RG_TIPOREL'       ,'itemindex' ,'_COMRV',IntTostr(RG_TIPOREL.ItemIndex));
fGravaPadroes(codusr,'CB_EMIREC'        ,'checked'   ,'_COMRV',iif(CB_EMIREC.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);
end;

function TFrm_ComRV.FReciboPadrao(pTipo: Integer): Boolean;
begin
if flfilpad(codusr,'_COMRV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC01',[]) then
      MTEXTOC01.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC02',[]) then
      MTEXTOC02.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC03',[]) then
      MTEXTOC03.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC04',[]) then
      MTEXTOC04.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC05',[]) then
      MTEXTOC05.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC06',[]) then
      MTEXTOC06.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC07',[]) then
      MTEXTOC07.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC08',[]) then
      MTEXTOC08.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC09',[]) then
      MTEXTOC09.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC10',[]) then
      MTEXTOC10.Text:=DM4.Tb_FilPadFPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD01',[]) then
      MTEXTOD01.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD02',[]) then
      MTEXTOD02.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD03',[]) then
      MTEXTOD03.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD04',[]) then
      MTEXTOD04.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD05',[]) then
      MTEXTOD05.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD06',[]) then
      MTEXTOD06.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD07',[]) then
      MTEXTOD07.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD08',[]) then
      MTEXTOD08.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD09',[]) then
      MTEXTOD09.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD10',[]) then
      MTEXTOD10.Text:=DM4.Tb_FilPadFPVALOR.Value;
   end;

result:=true;
end;
function TFrm_ComRV.FTotalPadrao(pTipo: Integer): Boolean;
var
mTotal: Real;
begin
mTotal:=       ValFloat(MVALC01.Text)
              +ValFloat(MVALC02.Text)
              +ValFloat(MVALC03.Text)
              +ValFloat(MVALC04.Text)
              +ValFloat(MVALC05.Text)
              +ValFloat(MVALC06.Text)
              +ValFloat(MVALC07.Text)
              +ValFloat(MVALC08.Text)
              +ValFloat(MVALC09.Text)
              +ValFloat(MVALC10.Text);
TOTOUTCRED.Caption:=FormatFloat(mcasas, mTotal);

mTotal:=       ValFloat(MVALD01.Text)
              +ValFloat(MVALD02.Text)
              +ValFloat(MVALD03.Text)
              +ValFloat(MVALD04.Text)
              +ValFloat(MVALD05.Text)
              +ValFloat(MVALD06.Text)
              +ValFloat(MVALD07.Text)
              +ValFloat(MVALD08.Text)
              +ValFloat(MVALD09.Text)
              +ValFloat(MVALD10.Text);
TOTDEBITOS.Caption:=FormatFloat(mcasas, mTotal);

//TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtottarban+mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
Memo_cred.Lines.Clear;
Memo_cred.Lines.Add('Valor da Comissao');
Memo_cred.Lines.Add('Liquida:');
Memo_cred.Lines.Add(TOTCOM.Caption);
Memo_cred.Lines.Add('Total de Outros Creditos');
Memo_cred.Lines.Add(TOTOUTCRED.Caption);
Memo_cred.Lines.Add('Total Geral dos Creditos');
Memo_cred.Lines.Add(TOTLIQ.Caption);


Memo_deb.Lines.Clear;
Memo_deb.Lines.Add('Total Geral dos Debitos');
Memo_deb.Lines.Add(TOTDEBITOS.Caption);
result:=true;





end;

function TFrm_ComRV.FEmiteRecibo(pTipo: Integer): Boolean;
var
x: Integer;
mTotCred, mTotDeb: Real;
begin
form_Impres_Comrv.RDPrint1.Novapagina;
mlin:=1;
mpag:=mpag+1;
form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Lote.: '+Qr_CL01cL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CL1DATA.Value),' ',80),mneg);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Qr_CL01CL1OBS01.Value,' ',80),mneg);
if Trim(Qr_CL01CL1OBS02.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Qr_CL01CL1OBS02.Value,' ',80),mneg);
   end;
mlin:=mlin+1;
if pComROrigem=0 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=1 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Supervisor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=2 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Televendas.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=3 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Assessor...: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(fperiodo(0,MDATAI.Text,MDATAF.Text),' ',80),mneg);
mlin:=mlin+1;

form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|Descricao                                       |   Creditos   |    Debitos   |',mnormal);
mTotCred:=0;
mTotDeb :=0;

for x:=0 to 9 do
   begin
   if trim(mtextocred[x])='' then
      continue;
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(mtextocred[x],' ',48)+'|'+insere(FormatFloat(mcasas, mValCred[x]),' ',14)+'|              |',mnormal);
   mTotCred:=mTotCred+mValCred[x];
   end;

{
if mtg_valcom<>0 then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('Valor da Comissao',' ',48)+'|'+insere2(FormatFloat(mcasas, mtg_valcom),' ',14)+'|              |',mnormal);
   end;

if valfloat(TOTOUTCRED.Caption)<>0 then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('Outros Creditos',' ',48)+'|'+insere(TOTOUTCRED.Caption,' ',14)+'|              |',mnormal);
   end;
}
mTotCred:=mTotCred
          +ValFloat(MVALC01.Text)
          +ValFloat(MVALC02.Text)
          +ValFloat(MVALC03.Text)
          +ValFloat(MVALC04.Text)
          +ValFloat(MVALC05.Text)
          +ValFloat(MVALC06.Text)
          +ValFloat(MVALC07.Text)
          +ValFloat(MVALC08.Text)
          +ValFloat(MVALC09.Text)
          +ValFloat(MVALC10.Text);

mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC01.Text,' ',48)+'|'+insere(MVALC01.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC02.Text,' ',48)+'|'+insere(MVALC02.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC03.Text,' ',48)+'|'+insere(MVALC03.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC04.Text,' ',48)+'|'+insere(MVALC04.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC05.Text,' ',48)+'|'+insere(MVALC05.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC06.Text,' ',48)+'|'+insere(MVALC06.Text,' ',14)+'|              |',mnormal);

mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC07.Text,' ',48)+'|'+insere(MVALC07.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC08.Text,' ',48)+'|'+insere(MVALC08.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC09.Text,' ',48)+'|'+insere(MVALC09.Text,' ',14)+'|              |',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOC10.Text,' ',48)+'|'+insere(MVALC10.Text,' ',14)+'|              |',mnormal);

for x:=0 to 9 do
   begin
   if trim(mtextodeb[x])='' then
      continue;
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(mtextodeb[x],' ',48)+'|              |'+insere(FormatFloat(mcasas, mValdeb[x]),' ',14)+'|',mnormal);
   mTotDeb:=mTotDeb+mValDeb[x];

   end;

mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD01.Text,' ',48)+'|              |'+insere(MVALD01.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD02.Text,' ',48)+'|              |'+insere(MVALD02.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD03.Text,' ',48)+'|              |'+insere(MVALD03.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD04.Text,' ',48)+'|              |'+insere(MVALD04.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD05.Text,' ',48)+'|              |'+insere(MVALD05.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD06.Text,' ',48)+'|              |'+insere(MVALD06.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD07.Text,' ',48)+'|              |'+insere(MVALD07.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD08.Text,' ',48)+'|              |'+insere(MVALD08.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD09.Text,' ',48)+'|              |'+insere(MVALD09.Text,' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2(MTEXTOD10.Text,' ',48)+'|              |'+insere(MVALD10.Text,' ',14)+'|' ,mnormal);
mTotDeb:=mTotDeb
          +ValFloat(MVALD01.Text)
          +ValFloat(MVALD02.Text)
          +ValFloat(MVALD03.Text)
          +ValFloat(MVALD04.Text)
          +ValFloat(MVALD05.Text)
          +ValFloat(MVALD06.Text)
          +ValFloat(MVALD07.Text)
          +ValFloat(MVALD08.Text)
          +ValFloat(MVALD09.Text)
          +ValFloat(MVALD10.Text);

{
if mtEx_valcom<>0 then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('Total dos Extornos',' ',48)+'|              |'+insere(FormatFloat(mcasas, mtEx_valcom),' ',14)+'|' ,mnormal);
   end;
}



if ValFloat(TOTTARBAN.Caption)<>0 then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('TARIFA BANCARIAS',' ',48)+'|              |'+insere(TOTTARBAN.Caption,' ',14)+'|' ,mnormal);
   end;

if ValFloat( TOTOUTDESP.Caption)<>0 then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('OUTRAS DESPESAS',' ',48)+'|              |'+insere(TOTOUTDESP.Caption,' ',14)+'|' ,mnormal);
   end;

mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'|'+insere2('- Totais','.',48)
                     +'|'+insere(
                          FormatFloat(mcasas, mTotCred),' ',14)
                          +'|'+insere(FormatFloat(mcasas, mTotDeb),' ',14)+'|' ,mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,insere2('| Total Liquido a Receber R$ '+FormatFloat(mcasas, mTotCred-mTotDeb),' ',79)+'|',mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,Centra('_________________________________________________________________',' ',80),mnormal);
mlin:=mlin+1;
form_Impres_Comrv.RDPrint1.ImpF(mlin,01,Centra('Recebi de '+dm1.Tb_EmpRAZAO.AsString+' a quantida descrita acima.',' ',80),mnormal);
mlin:=mlin+1;


if pComROrigem=0 then
   begin
   if (not DM1.Tb_Ven.Active) or (DM1.Tb_VenVCODVEN.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadven(1,0,CODVEN.Text);
   if (length(DM1.Tb_VenVREFB01.AsString)>1) or
      (length(DM1.Tb_VenVREFB02.AsString)>1) or
      (length(DM1.Tb_VenVREFB03.AsString)>1) then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDprint1.ImpF(mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_VenVREFB01.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_VenVREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_VenVREFB02.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_VenVREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_VenVREFB03.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_VenVREFB03.AsString,mneg);
         end;
      end;
   end
else if pComROrigem=1 then
   begin
   if (not DM1.Tb_Sup.Active) or (DM1.Tb_SupSCODSUP.AsFloat<>ValFloat(CODVEN.Text)) then
       flcadsup(1,0,CODVEN.Text);
   if (length(DM1.Tb_SupSREFB01.AsString)>1) or
      (length(DM1.Tb_SupSREFB02.AsString)>1) or
      (length(DM1.Tb_SupSREFB03.AsString)>1) then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDprint1.ImpF(mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_SupSREFB01.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_SupSREFB02.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_SupSREFB03.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB03.AsString,mneg);
         end;
      end;
   end
else if pComROrigem=2 then
   begin
   if (not DM1.Tb_Sup.Active) or (DM1.Tb_SupSCODSUP.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadsup(1,0,CODVEN.Text);
   if (length(DM1.Tb_SupSREFB01.AsString)>1) or
      (length(DM1.Tb_SupSREFB02.AsString)>1) or
      (length(DM1.Tb_SupSREFB03.AsString)>1) then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDprint1.ImpF(mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_SupSREFB01.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_SupSREFB02.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_SupSREFB03.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM1.Tb_SupSREFB03.AsString,mneg);
         end;
      end;
   end
else if pComROrigem=3 then
   begin
   if (not DM2.Tb_Assessor.Active) or (DM2.Tb_AssessorCACODASS.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadassessor(1,0,CODVEN.Text);
   if (length(DM2.Tb_AssessorCAREFBAN01.AsString)>1) or
      (length(DM2.Tb_AssessorCAREFBAN02.AsString)>1) or
      (length(DM2.Tb_AssessorCAREFBAN03.AsString)>1) then
      begin
      mlin:=mlin+1;
      form_Impres_Comrv.RDprint1.ImpF(mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM2.Tb_AssessorCAREFBAN01.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM2.Tb_AssessorCAREFBAN01.AsString,mneg);
         end;

      if (length(DM2.Tb_AssessorCAREFBAN02.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM2.Tb_AssessorCAREFBAN02.AsString,mneg);
         end;
      if (length(DM2.Tb_AssessorCAREFBAN03.AsString)>1) then
         begin
         mlin:=mlin+1;
         form_Impres_Comrv.RDprint1.ImpF(mlin,01,DM2.Tb_AssessorCAREFBAN03.AsString,mneg);
         end;
      end;
   end;


result:=true;
end;
procedure TFrm_ComRV.NUMDUPEnter(Sender: TObject);
begin
NUMDUP.SelectAll;
end;

procedure TFrm_ComRV.DESDEnter(Sender: TObject);
begin
DUP.Text     :='';
MDTEMIS.Text :='';
MCODECF.Text :='';
MCODEMP.Text :='';

DESD.SelectAll;
end;

procedure TFrm_ComRV.DUPEnter(Sender: TObject);
begin
MDTEMIS.Text :='';
MCODECF.Text :='';
MCODEMP.Text :='';

DUP.SelectAll;
end;

procedure TFrm_ComRV.MDTEMISEnter(Sender: TObject);
begin
MCODECF.Text :='';
MCODEMP.Text :='';

MDTEMIS.SelectAll;
end;

procedure TFrm_ComRV.MCODECFEnter(Sender: TObject);
begin
MCODEMP.Text :='';
MCODECF.SelectAll;
end;

procedure TFrm_ComRV.MCODEMPEnter(Sender: TObject);
begin
MCODEMP.SelectAll;
end;

function TFrm_ComRV.fImpResumido_Cab(pTipo: Integer): Boolean;
begin
form_Impres_Comrv.fImprimirCabecalho(136,'Relatorio de Comissão de Recebimento Resumido');
{
mpag:=mpag+1;
form_Impres_Comrv.RDPrint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
form_Impres_Comrv.RDPrint1.Impf(01,64,'Pagina: '+Formatfloat('0000',mpag),mnormal);
form_Impres_Comrv.RDPrint1.Impf(02,01,'Relatorio de Comissão de Recebimento Resumido',mnormal);

form_Impres_Comrv.RDPrint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,date),mnormal);
}
form_Impres_Comrv.RDPrint1.Impf(03,01,'Lote.: '+Qr_CL01cL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CL1DATA.Value),mneg);
form_Impres_Comrv.RDPrint1.Impf(03,47,'Periodo.: '+MDATAI.Text+' a '+MDATAF.Text,mneg);
mlin:=4;
form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Trim(Qr_CL01CL1OBS01.Value),' ',80),mneg);
if Trim(Qr_CL01CL1OBS02.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra(Trim(Qr_CL01CL1OBS02.Value),' ',80),mneg);
   end;
mtip_ant:=Qr_CL02CL2DUP.AsInteger;

mlin:=mlin+1;

if pComROrigem=0 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=1 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Supervisor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=2 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Televendas.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComROrigem=3 then
   form_Impres_Comrv.RDPrint1.Impf(mlin,01,Centra('Assessor...: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);

result:=true;
end;
procedure TFrm_ComRV.bbeditarClick(Sender: TObject);
begin

mlin:=STG1.Row+1;
if valfloat(STG1.Cells[mcol_numero,mlin-1])=0 then
   exit;
moper_item    :=1;
NUMDUP.Text   :=STG1.Cells[mcol_numero,mlin-1];
DESD.Text     :=STG1.Cells[mcol_desd,mlin-1];
DUP.Text      :=STG1.Cells[mcol_dup,mlin-1];
MDTEMIS.Text  :=STG1.Cells[mcol_dtemis,mlin-1];
MCODECF.Text  :=STG1.Cells[mcol_codecf,mlin-1];
MCODEMP.Text  :=STG1.Cells[mcol_codemp,mlin-1];
NOMCLI.Text   :=STG1.Cells[mcol_sacado,mlin-1];
DTVCTO.Text   :=STG1.Cells[mcol_dtvcto,mlin-1];
DTBX.Text     :=STG1.Cells[mcol_dtbx,mlin-1];
VALOR.Text    :=STG1.Cells[mcol_valor,mlin-1];
VALCOM.Text   :=STG1.Cells[mcol_valcom,mlin-1];
I_TARBAN.Text :=STG1.Cells[mcol_tarban,mlin-1];
I_OUTDESP.Text:=STG1.Cells[mcol_outtar,mlin-1];
VALCOM.SetFocus;
end;

procedure TFrm_ComRV.sb_SalvarPadrao_MasterClick(Sender: TObject);
begin
fDeletaPadroes(0,'_COMRV','');
fGravaPadroes(0,'CB_COMISBCOAB'     ,'checked'      ,'_COMRV',iif(CB_COMISBCOAB.Checked,'true','false'));
fGravaPadroes(0,'CB_TITABERTO'      ,'checked'      ,'_COMRV',iif(CB_TITABERTO.Checked,'true','false'));
fGravaPadroes(0,'CB_EXTCRED'        ,'checked'      ,'_COMRV',iif(CB_EXTCRED_NC.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_ComRV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
  Action := caFree;

end;

procedure TFrm_ComRV.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
