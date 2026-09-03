unit S_PedPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,S_DM4,func,lerarq,S_PedCli,
  Grids, DBGrids, ComCtrls, Mask, DB, DBTables,
  RxMemDS, ToolEdit, CurrEdit, Menus, S_Ped_02, S_Ped,S_Ped_AutoP, S_PV
  , S_PedPart_Pend,
  S_Ped_02_MPReq,S_Ped_02_MPReq_Outros,s_lerarq_geral;

type
  TFrm_PedPart = class(TForm)
    Panel1: TPanel;
    CHAVE: TEdit;
    NOMCLI_PED: TEdit;
    bb_Pesquisar: TBitBtn;
    GroupBox1: TGroupBox;
    bbSair: TBitBtn;
    POBS01: TEdit;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CHAVEROM: TEdit;
    MDATA: TMaskEdit;
    MOBS01: TEdit;
    MOBS02: TEdit;
    MOBS03: TEdit;
    GroupBox5: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BBINCLUIR: TBitBtn;
    BBFATURAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    GroupBox6: TGroupBox;
    bbExcluir: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_GRAVAR: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    TOTAL: TStaticText;
    MTOTUND: TStaticText;
    MTOTITEM: TStaticText;
    Src_PedPart01: TDataSource;
    Qr_PedPart01: TQuery;
    Qr_PedPart02: TQuery;
    Qr_PedPart01codcli: TFloatField;
    Qr_PedPart01razaosocial: TStringField;
    Qr_PedPart01denominacao: TStringField;
    Qr_PedPart01endereco: TStringField;
    Qr_PedPart01bairro: TStringField;
    Qr_PedPart01cidade: TStringField;
    Qr_PedPart01cep: TStringField;
    Qr_PedPart02nome: TStringField;
    Qr_PedPart02und: TStringField;
    Qr_PedPart02valortotal: TFloatField;
    Qr_PedPart01total: TFloatField;
    Src_PedPart02: TDataSource;
    Tb_Ped: TQuery;
    Tb_PedP2CODPRO: TFloatField;
    Tb_PedQTD: TFloatField;
    Tb_Rom: TQuery;
    Tb_PedP2PRECO: TFloatField;
    BitBtn1: TBitBtn;
    Tb_Ped02D: TQuery;
    Tb_Ped02DP2DCODEMP: TFloatField;
    Tb_Ped02DP2DTIPO: TFloatField;
    Tb_Ped02DP2DCHAVE: TFloatField;
    Tb_Ped02DP2DORDEM: TFloatField;
    Tb_Ped02DP2DITEM: TFloatField;
    Tb_Ped02DP2DCODPRO: TFloatField;
    Tb_Ped02DP2DLINHA: TFloatField;
    Tb_Ped02DP2DESC: TStringField;
    Tb_Ped02DP2DLOTSEQ: TFloatField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Qr_PedPart01P1CODEMP: TFloatField;
    Qr_PedPart01P1CHAVE: TFloatField;
    Qr_PedPart01P1CODCLI: TFloatField;
    Qr_PedPart01P1DATAP: TDateTimeField;
    Qr_PedPart01P1OBS1: TStringField;
    Qr_PedPart01P1OBS2: TStringField;
    Qr_PedPart01P1OBS3: TStringField;
    Qr_PedPart01P1STATUS: TFloatField;
    Qr_PedPart01P1TOTALL: TFloatField;
    Qr_PedPart01P1CODTRA: TFloatField;
    Qr_PedPart01P1QTDVOL: TFloatField;
    Qr_PedPart01P1PESOL: TFloatField;
    Qr_PedPart01P1PESOB: TFloatField;
    Qr_PedPart01P1ESPECIE: TStringField;
    Qr_PedPart01P1FRETEPC: TFloatField;
    Qr_PedPart01P1VALFRE: TFloatField;
    Qr_PedPart01P1UFPV: TStringField;
    Qr_PedPart01P1PLACAV: TStringField;
    Qr_PedPart01P1ETIVOL: TFloatField;
    Qr_PedPart01P1DTMOD: TDateTimeField;
    Qr_PedPart01P1HRMOD: TStringField;
    Qr_PedPart01P1USRMOD: TFloatField;
    Qr_PedPart01P1CONF: TStringField;
    Qr_PedPart01P1CODCON: TFloatField;
    Qr_PedPart01P1DATCON: TDateTimeField;
    Qr_PedPart01P1HORCON: TStringField;
    Qr_PedPart01P1CODENT: TFloatField;
    Qr_PedPart01P1DATENT: TDateTimeField;
    Qr_PedPart01P1HORENT: TStringField;
    Qr_PedPart01P1CODSEP: TFloatField;
    Qr_PedPart01P1DATASEP: TDateTimeField;
    Qr_PedPart01P1HORSEP: TStringField;
    Qr_PedPart01P1CODEMB: TFloatField;
    Qr_PedPart01P1DATAEMB: TDateTimeField;
    Qr_PedPart01P1HOREMB: TStringField;
    Qr_PedPart01P1NUMNF: TFloatField;
    Qr_PedPart01P1DATANF: TDateTimeField;
    Qr_PedPart01P1CODVEN: TFloatField;
    Qr_PedPart01P1TABPV: TStringField;
    Qr_PedPart01P1CODPV: TFloatField;
    Label1: TLabel;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    NOMPV: TEdit;
    Qr_PedPart02P2CODEMP: TFloatField;
    Qr_PedPart02P2CHAVE: TFloatField;
    Qr_PedPart02P2CODPRO: TFloatField;
    Qr_PedPart02P2LOTE: TStringField;
    Qr_PedPart02P2DTVCTO: TDateTimeField;
    Qr_PedPart02P2ITEM: TFloatField;
    Qr_PedPart02P2QTD: TFloatField;
    Qr_PedPart02P2PRECO: TFloatField;
    Qr_PedPart02P2DESC1: TFloatField;
    Qr_PedPart02P2DESC2: TFloatField;
    Qr_PedPart02P2DESC3: TFloatField;
    Qr_PedPart02P2VALDES: TFloatField;
    Tb_PedP2LOTE: TStringField;
    Tb_RomP2PRECO: TFloatField;
    Tb_RomP2CODPRO: TFloatField;
    Tb_RomP2LOTE: TStringField;
    Tb_RomQTD: TFloatField;
    Tb_PedP2DESC1: TFloatField;
    Tb_PedP2DESC2: TFloatField;
    Tb_PedP2DESC3: TFloatField;
    Tb_PedP2VALDES: TFloatField;
    Tb_Pedqtdrom: TFloatField;
    Src_Ped: TDataSource;
    Tb_Pedsaldo: TFloatField;
    Tb_Pednompro: TStringField;
    Tb_Pedund: TStringField;
    bbPendencia: TBitBtn;
    DBGrid2_ped: TDBGrid;
    Tb_Ped02DP2DGRADE: TStringField;
    StaticText3: TStaticText;
    st_dataped: TStaticText;
    StaticText5: TStaticText;
    st_totalped: TStaticText;
    Label2: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label8: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    Label11: TLabel;
    Qr_PedPart01P1CODTLV: TFloatField;
    mem_ped02part: TRxMemoryData;
    mem_ped02partP2CODPRO: TFloatField;
    mem_ped02partP2LOTE: TStringField;
    mem_ped02partP2QTD: TFloatField;
    mem_ped02partPDUND: TStringField;
    mem_ped02partPDNOME: TStringField;
    mem_ped02partP2PRECO: TFloatField;
    mem_ped02partP2DESC01: TFloatField;
    mem_ped02partP2DESC02: TFloatField;
    mem_ped02partP2DESC03: TFloatField;
    mem_ped02partP2VALDES: TFloatField;
    mem_ped02partP2TOTAL: TFloatField;
    mem_ped02partP2COMIS: TFloatField;
    mem_ped02partP2DESCFIN: TFloatField;
    Panel2: TPanel;
    CODPRO: TEdit;
    GRADE: TEdit;
    QTD: TCurrencyEdit;
    UND: TEdit;
    NOMPRO: TEdit;
    PCOUNI: TCurrencyEdit;
    MDESCI01: TCurrencyEdit;
    MDESCI02: TCurrencyEdit;
    MDESCI03: TCurrencyEdit;
    DESCFINP: TCurrencyEdit;
    COMISP: TCurrencyEdit;
    TOTALI: TCurrencyEdit;
    DBGrid3: TDBGrid;
    src_ped02part: TDataSource;
    pop_grid: TPopupMenu;
    ExluirItem1: TMenuItem;
    Qr_PedPart01datanf: TStringField;
    Qr_PedPart01P1PDESCLIB: TFloatField;
    Qr_PedPart01P1PDESCL_USR: TFloatField;
    lbl_codpro: TStaticText;
    lbl_lote: TStaticText;
    StaticText4: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    bbGravarMP: TBitBtn;
    bbEditarMP: TBitBtn;
    bbExcluirMP: TBitBtn;
    Tb_Rom_MP: TQuery;
    Tb_Rom_MPQTD_VENDIDA: TFloatField;
    Tb_Rom_MPQTD_ENTREGUE: TFloatField;
    Tb_Rom_MPPRECO: TFloatField;
    Tb_Rom_MPCODPRO: TFloatField;
    Tb_Rom_MPLOTE: TStringField;
    Tb_Rom_MPDISPONIVEL: TFloatField;
    Qr_PedPart02_MP: TQuery;
    Qr_PedPart02_MPP2MP_QTDSOL: TFloatField;
    Qr_PedPart02_MPP2MP_PRECO: TFloatField;
    Qr_PedPart02_MPP2MP_CODPRO: TFloatField;
    Qr_PedPart02_MPP2MP_LOTE: TStringField;
    Qr_PedPart02_MPP2MP_DTVCTO: TDateTimeField;
    Qr_PedPart02_MPP2MP_CODPRO_ORI: TFloatField;
    Qr_PedPart02_MPP2MP_LOTE_ORI: TStringField;
    Qr_PedPart02_MPP2MP_DTVCTO_ORI: TDateTimeField;
    Qr_PedPart02_MPP2MP_OUTINF: TStringField;
    Qr_PedPart02_MPP2MP_DATAHORA_SOL: TDateTimeField;
    Qr_PedPart02_MPP2MP_QTD_SOBRA: TFloatField;
    Qr_PedPart02_MPP2MP_QTD_DEVOL: TFloatField;
    Qr_PedPart02_MPP2MP_QTD_QUEBRA: TFloatField;
    Qr_PedPart02_MPP2MP_QTD_OUTRET: TFloatField;
    Qr_PedPart01P1LOTSEQ: TFloatField;
    Qr_PedPart02P2LOTSEQ: TFloatField;
    pop_grid_mp: TPopupMenu;
    MenuItem1: TMenuItem;
    Src_PedPart02_mp: TDataSource;
    Qr_PedPart02_MPNOMPRO: TStringField;
    Qr_PedPart02_MPtotal_pro: TFloatField;
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure bb_PesquisarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure PCOUNIExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure Src_PedPart01DataChange(Sender: TObject; Field: TField);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure CHAVEROMExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_PedPart01CalcFields(DataSet: TDataSet);
    procedure Qr_PedPart02CalcFields(DataSet: TDataSet);
    procedure CHAVEEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure Tb_PedCalcFields(DataSet: TDataSet);
    procedure bbPendenciaClick(Sender: TObject);
    procedure BBFATURARClick(Sender: TObject);
    procedure GRADEExit(Sender: TObject);
    procedure MDESCI01Exit(Sender: TObject);
    procedure MDESCI02Exit(Sender: TObject);
    procedure MDESCI03Exit(Sender: TObject);
    procedure DESCFINPExit(Sender: TObject);
    procedure COMISPExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TABPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODTLVExit(Sender: TObject);
    procedure MOBS01Exit(Sender: TObject);
    procedure MOBS02Exit(Sender: TObject);
    procedure MOBS03Exit(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure TOTALIEnter(Sender: TObject);
    procedure ExluirItem1Click(Sender: TObject);
    procedure Src_PedPart02DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_PedPart02_MPCalcFields(DataSet: TDataSet);

  private
    function fromcalc(ptipo: Integer): Boolean;
    function fCarrega(ptipo: Integer): Boolean;
    function fromExcluir(ptipo: Integer): Boolean;
    function fRomGravar(ptipo: Integer): Boolean;

    function fExisteProduto(pCodpro: Real): Boolean;
    function fPreparaEdicaoItem(pTipo: Integer): Boolean;

    function fMateriasPrimas(pTipo: Integer):Boolean;

    { Private declarations }
  public
    { Public declarations }
      Pedido_02_PedPart   : Tfrm_ped_02;
    Pedido_Autop_PedPart: Tfrm_ped_AutoP;
    form_pedcli_pedpart: TFrm_PedCli;
    form_pv_pedpart:     TFrm_PV;

    form_Ped_02_MPPed_PedPart:   TFrm_Ped_02_MPReq;
    form_PedPart_Pend_pedPart:   TFrm_PedPart_Pend;

  end;

var
  Frm_PedPart: TFrm_PedPart;

  pedPart_Ori: String;
  PedParoper,mop_pedpart,mop_pedpart_mp: Integer;
  mqtdrom,mqtdped: Real;
  mcodigo: Integer;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;

  mPosReg_registro: TBookmark;
  mPosReg_registro_mp: TBookmark;
  mTriggerTemp: String;

   mFiltro_Codpro_mp:Real=0;
   mFiltro_Lote_mp  :String='';
   mFiltro_Qtd_mp   :Real=0;
   mFiltro_Preco_mp :Real=0;

implementation

uses S_DM2, func_excecoes;

{$R *.dfm}

procedure TFrm_PedPart.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_PedPart.bb_PesquisarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_pedcli, form_pedcli_pedpart);
form_pedcli_pedpart.ShowModal;
CHAVE.Text:=form_pedcli_pedpart.CHAVE.Text;
NOMCLI_pED.Text:=form_pedcli_pedpart.Tb_PedCRAZAO.Value;
form_pedcli_pedpart.Free;
form_pedcli_pedpart:=nil;
CHAVE.SetFocus;
end;

procedure TFrm_PedPart.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedPart.CHAVEExit(Sender: TObject);
begin
if (BBFATURAR.Enabled) or (pedPart_Ori='consulta') then
   exit;
if bbSair.Focused then
   exit;
if ValFloat(CHAVE.Text)=0 then
   exit;
CHAVE.Text:=FloatToStr(ValFloat(CHAVE.Text));
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select max(P1CODCLI) as P1CODCLI,max(P1OBS1) as P1OBS1,'
                  +' max(P1DATAP) as P1DATAP,sum(P1TOTALL) AS P1TOTALL, '
                  +' max(P1OBS2) as P1OBS2,'
                  +' max(P1OBS3) as P1OBS3,'
                  +' max(P1TABPV) as P1TABPV,'
                  +' max(P1CODPV) as P1CODPV,'
                  +' max(P1CODVEN) as P1CODVEN,'
                  +' max(P1CODTLV) as P1CODTLV'
                  +' from CADP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P1CHAVE=0'+Trim(CHAVE.Text)
                  +' and P1ORDEM=1 and P1STATUS<>9');
DM1.Query2.Open;
if DM1.Query2.IsEmpty then
   begin
   fMensagem('Chave Não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
if flcadcli(1,0,DM1.Query2.FieldByName('P1CODCLI').AsString) then
   NOMCLI_PED.Text:=DM1.Tb_CliCRAZAO.Value
else
   NOMCLI_pED.Text:='';
POBS01.Text:=DM1.Query2.FieldByName('P1OBS1').AsString;
st_dataped.Caption :=FormatDateTime(fdt2, DM1.Query2.FieldByName('P1DATAP').AsDateTime);
st_totalped.Caption:=FormatFloat(mcasas, DM1.Query2.FieldByName('P1TOTALL').AsFloat);
Tb_Ped02D.Close;
Tb_Ped02D.SQL.Clear;
Tb_Ped02D.SQL.Add('Select P2DCODPRO, P2DGRADE,P2DLINHA, '
                 +'       max(P2DITEM)   as P2DITEM, '
                 +'       max(P2DCODEMP) as P2DCODEMP, '
                 +'       max(P2DTIPO)   as P2DTIPO, '
                 +'       max(P2DCHAVE)  as P2DCHAVE, '
                 +'       max(P2DORDEM)  as P2DORDEM, '
                 +'       max(P2DESC)    as P2DESC, '
                 +'       max(P2DLOTSEQ) as P2DLOTSEQ '
                 +'  from CADP02D where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2DCODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2DLOTSEQ=0'+IntToStr(ls_numped)
                 +' and P2DCHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2DCODPRO,P2DGRADE,P2DLINHA');
Tb_Ped02D.Open;

Qr_PedPart01.Close;
Qr_PedPart01.SQL.Clear;
Qr_PedPart01.Sql.Add('Select P1CODEMP,P1CHAVE,P1LOTSEQ,P1CODCLI,P1DATAP,P1OBS1, '
                    +'       P1OBS2,P1OBS3,P1STATUS,P1TOTALL, '
                    +'       P1CODTRA,P1QTDVOL,P1PESOL,P1PESOB, '
                    +'       P1ESPECIE,P1FRETEPC,P1VALFRE, '
                    +'       P1UFPV,P1PLACAV,P1ETIVOL,P1DTMOD, '
                    +'       P1HRMOD,P1USRMOD,P1CONF,P1CODCON, '
                    +'       P1DATCON,P1HORCON,P1CODENT,P1DATENT, '
                    +'       P1HORENT,P1CODSEP,P1DATASEP,P1HORSEP, '
                    +'       P1CODEMB,P1DATAEMB,P1HOREMB, '
                    +'       P1NUMNF,P1DATANF,P1CODVEN, '
                    +'       P1TABPV,P1CODPV,P1CODTLV '
                    +'       ,P1PDESCLIB'
                    +'       ,P1PDESCL_USR '
                    +' from CADP01 where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),' ',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(chave.Text)+' and P1STATUS<>9 ' );
try
  Qr_PedPart01.Open;
except
  Qr_PedPart01.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  end;


   Tb_Rom.Close;
   Tb_Rom.SQL.Clear;
   if ValInt(copy(mpseg,4,2))=2 then
      begin
      Tb_Rom.SQL.Add('select P2PRECO,P2CODPRO,P2LOTE, '
                    +'       sum(P2QTD) AS QTD from CADP01,CADP02 '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP')
                    +' and P2LOTSEQ=P1LOTSEQ '
                    +' and P2CHAVE =P1CHAVE '
                    +' group by P2PRECO,P2CODPRO,P2LOTE ');
      end
   else
      begin
      Tb_Rom.SQL.Add('select P2PRECO,P2CODPRO,max(P2LOTE) as P2LOTE, '
                    +'       sum(P2QTD) AS QTD from CADP01,CADP02 '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP')
                    +' and P2LOTSEQ=P1LOTSEQ '
                    +' and P2CHAVE =P1CHAVE '
                    +' group by P2PRECO,P2CODPRO ');
      end;
   Tb_Rom.Open;
   Tb_Ped.Close;
   Tb_Ped.SQL.Clear;
   if ValInt(copy(mpseg,4,2))=2 then
      begin
      Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,P2LOTE,'
                    +'       max(P2DESC1) AS P2DESC1, '
                    +'       max(P2DESC2)  AS P2DESC2, '
                    +'       max(P2DESC3)  AS P2DESC3, '
                    +'       max(P2VALDES) AS P2VALDES, '
                    +'       sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2LOTSEQ=0'+IntTostr(ls_numped)
                 +' and P2CHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2PRECO,P2CODPRO,P2LOTE'
                 +' order by max(P2ORDEM),min(P2ITEM)');
      end
   else
      begin
      Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,max(P2LOTE) AS P2LOTE,'
                    +'       max(P2DESC1) AS P2DESC1, '
                    +'       max(P2DESC2)  AS P2DESC2, '
                    +'       max(P2DESC3)  AS P2DESC3, '
                    +'       max(P2VALDES) AS P2VALDES, '
                    +'       sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2LOTSEQ=0'+IntTostr(ls_numped)
                 +' and P2CHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2PRECO,P2CODPRO'
                 +' order by max(P2ORDEM),min(P2ITEM)');
      end;
   Tb_Ped.Open;

mem_ped02part.Close;
mem_ped02part.Open;


if trim(mTriggerTemp)='' then
   mTriggerTemp:=fProcTemp(0);

DM1.query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mTriggerTemp+' as ');

DM1.Query1.SQL.Add('Select 0 AS QTD_VENDIDA '
                  +', sum(P2MP_QTDSOL) AS QTD_ENTREGUE,P2MP_PRECO AS PRECO,P2MP_CODPRO AS CODPRO '
                  +',P2MP_LOTE AS LOTE '
                  +',P2MP_DTVCTO AS DTVCTO '
                  +',P2MP_CODPRO_ORI AS CODPRO_ORI '
                  +',P2MP_LOTE_ORI AS LOTE_ORI '
                  +',P2MP_PRECO_ORI AS  PRECO_ORI '
                  +',P2MP_QTD_ORI AS QTD_ORI '
                  +',P2MP_DTVCTO_ORI AS DTVCTO_ORI '
{
                  +',0 AS AT_CODPRO_ORI '
                  +',null AS AT_LOTE_ORI '
                  +',0 AS  AT_PRECO_ORI '
                  +',0 AS AT_QTD_ORI '
                  +',null AS AT_DTVCTO_ORI '
 }
                  +',P2MP_OUTINF AS OUTINF '
                  +' ,P2MP_DATAHORA_SOL AS DATAHORA_SOL'
                  +', sum(P2MP_QTD_SOBRA) AS QTD_SOBRA'
                  +', sum(P2MP_QTD_DEVOL) AS QTD_DEVOL'
                  +', sum(P2MP_QTD_QUEBRA) AS QTD_QUEBRA '
                  +', sum(P2MP_QTD_OUTRET) AS QTD_OUTRET'


                  );

DM1.Query1.SQL.Add(' from CADP01,CADP02_MP '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2MP_CODEMP=P1CODEMP')
                    +' and P2MP_LOTSEQ=P1LOTSEQ '
                    +' and P2MP_CHAVE =P1CHAVE '
                    +' group by P2MP_PRECO,P2MP_CODPRO,P2MP_LOTE,P2MP_DTVCTO'
                    +',P2MP_CODPRO_ORI  '
                    +',P2MP_LOTE_ORI,P2MP_DTVCTO_ORI '
                    +' ,P2MP_PRECO_ORI, P2MP_QTD_ORI '
                    +',P2MP_OUTINF '
                     +' ,P2MP_DATAHORA_SOL '                  );

//INICIO

DM1.Query1.SQL.add(' union ');
DM1.Query1.SQL.add(' Select ');

DM1.Query1.SQL.Add(' sum(P2MP_QTDSOL) AS QTD_VENDIDA '
                  +', 0 QTD_ENTREGUE,P2MP_PRECO AS PRECO,P2MP_CODPRO AS CODPRO '
                  +',P2MP_LOTE AS LOTE '
                  +',P2MP_DTVCTO AS DTVCTO '
                  +',P2MP_CODPRO_ORI AS CODPRO_ORI '
                  +',P2MP_LOTE_ORI AS LOTE_ORI '
                  +',P2MP_PRECO_ORI AS PRECO_ORI, P2MP_QTD_ORI AS QTD_ORI '
                  +',P2MP_DTVCTO_ORI AS DTVCTO_ORI '
{
                  +',P2MP_CODPRO_ORI AS AT_CODPRO_ORI '
                  +',P2MP_LOTE_ORI AS AT_LOTE_ORI '
                  +',P2MP_PRECO_ORI AS  AT_PRECO_ORI '
                  +',P2MP_QTD_ORI AS AT_QTD_ORI '
                  +',P2MP_DTVCTO_ORI AS AT_DTVCTO_ORI '
}
                  +',P2MP_OUTINF AS OUTINF '
                  +' ,P2MP_DATAHORA_SOL AS DATAHORA_SOL'
                  +', sum(P2MP_QTD_SOBRA) AS QTD_SOBRA'
                  +', sum(P2MP_QTD_DEVOL)  AS QTD_DEVOL'
                  +', sum(P2MP_QTD_QUEBRA)  AS QTD_QUEBRA '
                  +', sum(P2MP_QTD_OUTRET)  AS QTD_OUTRET'
                  );
DM1.Query1.SQL.Add(' from CADP01,CADP02_MP '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1CHAVE=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2MP_CODEMP=P1CODEMP')
                    +' and P2MP_LOTSEQ=P1LOTSEQ '
                    +' and P2MP_CHAVE =P1CHAVE '
                    +' group by P2MP_PRECO,P2MP_CODPRO,P2MP_LOTE,P2MP_DTVCTO, '
                    +' P2MP_CODPRO_ORI '
                    +',P2MP_LOTE_ORI,P2MP_DTVCTO_ORI '
                    +', P2MP_PRECO_ORI, P2MP_QTD_ORI '
                    +',P2MP_OUTINF '
                    +' ,P2MP_DATAHORA_SOL '
                   );
//DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   exit;
   end;




BBINCLUIR.Enabled:=bbinc_true;
bbPendencia.Enabled:=true;
end;

procedure TFrm_PedPart.CODPROExit(Sender: TObject);
var
x: Integer;
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if (Trim(CODPRO.Text)='')  then
   begin
   if (GRADE.Focused) or (QTD.Focused) then
      CODPRO.Setfocus;
   exit;
   end;
CODPRO.Text:=FloatToStr(ValFloat(CODPRO.Text));
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   UND.Text   :=DM1.Tb_ProPDUND.Value;
   end;

if (mop_pedpart=0)  then
   begin

   if fExisteProduto(fSonumero(CODPRO.Text)) then
      begin
      if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
         begin
         mop_pedpart:=1;
         if trim(GRADE.Text)<>'' then
            begin
            if not mem_ped02part.Locate('P2CODPRO;PLOTE',vararrayof([valfloat(CODPRO.Text),GRADE.Text]),[]) then
               mem_ped02part.Locate('P2CODPRO',valfloat(CODPRO.Text),[])
            end
         else
            mem_ped02part.Locate('P2CODPRO',valfloat(CODPRO.Text),[]);
         fPreparaEdicaoItem(0);
         end;
      end;
   end
else
   begin
   if ValInt(copy(mpseg,4,2))<>2 then
      begin
      if fSonumero(CODPRO.text)<>mem_ped02partP2CODPRO.Asfloat then
         mem_ped02part.GotoBookmark(mPosReg_registro);

      if fSonumero(CODPRO.text)<>mem_ped02partP2CODPRO.Asfloat then
         begin
         if fExisteProduto(fSonumero(CODPRO.Text)) then
            begin
            fmensagem('Este Código ja Existe no Pedido. Invalido!',0,['0'],0);
            CODPRO.SetFocus;
            exit;
            end;
         end;
      end;
   end;
mqtdped:=0;
mqtdrom:=0;
if (valint(copy(mpseg,4,2))=2) then
   begin
   if (trim(GRADE.Text)<>'') then
      begin
      if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
         begin
         mqtdped:=Tb_PedQTD.Value;
         PCOUNI.Value  :=Tb_PedP2PRECO.Value;
         MDESCI01.Value:=Tb_PedP2DESC1.Value;
         MDESCI02.Value:=Tb_PedP2DESC2.Value;
         MDESCI03.Value:=Tb_PedP2DESC3.Value;
         end;
      end;
   end
else
   begin
   if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      PCOUNI.Value:=Tb_PedP2PRECO.Value;
      MDESCI01.Value :=Tb_PedP2DESC1.Value;
      MDESCI02.Value :=Tb_PedP2DESC2.Value;
      MDESCI03.Value :=Tb_PedP2DESC3.Value;
      end
   else
      begin
      fmensagem('Produto não Encontrado no Pedido de Origem!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;

if (valint(copy(mpseg,4,2))=2) then
   begin
   if (trim(GRADE.Text)<>'') then
      begin
      if Tb_Rom.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
         mqtdrom:=Tb_RomQTD.Value
      end;
   end
else
   begin
   if Tb_Rom.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
      begin
      mqtdrom:=Tb_RomQTD.Value;
      end;
   end;
if (valint(copy(mpseg,4,2))<>2) then
   begin
   if mqtdrom>=mqtdped then
      begin
      fMensagem('Este Produto ja Foi Todo Enviado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end
else
   begin
   QTD.Text:=FormatFloat(mcasqtd, (mqtdped-mqtdrom));
   TOTALI.Value:=ValFloat(PCOUNI.Text)*ValFloat(QTD.Text);
   end;
end;

procedure TFrm_PedPart.FormCreate(Sender: TObject);
begin
pedPart_Ori:='';

if ValInt(copy(mpseg,4,2))=2 then
   begin
   GRADE.Visible:=true;
   end
else
   begin
   GRADE.Visible:=true;
   end;


if flcadactab(0,0,IntToStr(codcar),'CADROM') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbrel_true:=true;
   end;

Qr_PedPart01total.DisplayFormat     :=mcasas;
Qr_PedPart01P1DATAP.DisplayFormat   :=fdt2;
Qr_PedPart01P1TOTALL.DisplayFormat  :=mcasas;
Qr_PedPart01P1VALFRE.DisplayFormat  :=mcasas;
Qr_PedPart02valortotal.DisplayFormat:=mcasas;
Qr_PedPart02P2DTVCTO.DisplayFormat  :=fdt2;
Qr_PedPart02P2QTD.DisplayFormat     :=mcasqtd;
Qr_PedPart02P2PRECO.DisplayFormat   :=mcasaspu;
Qr_PedPart02P2DESC1.DisplayFormat   :=mcasas;
Qr_PedPart02P2DESC2.DisplayFormat   :=mcasas;
Qr_PedPart02P2DESC3.DisplayFormat   :=mcasas;


mem_ped02partP2PRECO.DisplayFormat:=mcasaspu;
mem_ped02partP2DESC01.DisplayFormat:=mcasas;
mem_ped02partP2DESC02.DisplayFormat:=mcasas;
mem_ped02partP2DESC03.DisplayFormat:=mcasas;
mem_ped02partP2VALDES.DisplayFormat:=mcasas;
mem_ped02partP2TOTAL.DisplayFormat:=mcasas;
mem_ped02partP2COMIS.DisplayFormat:=mcasas;
mem_ped02partP2DESCFIN.DisplayFormat:=mcasas;
Qr_PedPart02_MPP2MP_QTDSOL.DisplayFormat    :=mcasqtd;
Qr_PedPart02_MPP2MP_PRECO.DisplayFormat     :=mcasaspu;
Qr_PedPart02_MPP2MP_QTD_SOBRA.DisplayFormat :=mcasqtd;
Qr_PedPart02_MPP2MP_QTD_DEVOL.DisplayFormat :=mcasqtd;
Qr_PedPart02_MPP2MP_QTD_QUEBRA.DisplayFormat:=mcasqtd;
Qr_PedPart02_MPP2MP_QTD_OUTRET.DisplayFormat:=mcasqtd;
Qr_PedPart02_MPtotal_pro.DisplayFormat      :=mcasas;





mem_ped02partP2PRECO.DisplayFormat:=mcasaspu;



Qr_PedPart02_MPP2MP_PRECO.DisplayFormat:=mcasaspu;
Qr_PedPart02_MPP2MP_QTDSOL.DisplayFormat:=mcasqtd;



Qr_PedPart02P2VALDES.DisplayFormat  :=mcasas;
Tb_PedQTD.DisplayFormat             :=mcasqtd;
Tb_PedP2PRECO.DisplayFormat         :=mcasaspu;
Tb_PedP2DESC1.DisplayFormat         :=mcasas;
Tb_PedP2DESC2.DisplayFormat         :=mcasas;
Tb_PedP2DESC3.DisplayFormat         :=mcasas;
Tb_PedP2VALDES.DisplayFormat        :=mcasas;
Tb_Pedqtdrom.DisplayFormat          :=mcasqtd;
Tb_PedQTD.DisplayFormat             :=mcasqtd;
TabSheet1.TabVisible:=false;





CODPRO.Text  :='';
GRADE.Text   :='';
QTD.Text     :='';
UND.Text     :='';
NOMPRO.Text  :='';
PCOUNI.Text  :='';
MDESCI01.Text:='';
MDESCI02.Text:='';
MDESCI03.Text:='';
TOTALI.Text  :='';
COMISP.Text  :='';
DESCFINP.Text:='';

Top  := 0;
if ((mtamppal - Width) div 2)<20 then
   left:=0
else
   Left := (mtamppal - Width) div 2;

IF (SCREEN.Width=800) AND (SCREEN.height=600) then
   height := 467
else
   Height:=590;
end;

procedure TFrm_PedPart.QTDExit(Sender: TObject);
begin
QTD.Text:=FormatFloat(mcasqtd,ValFloat(QTD.Text));
if ValFloat(QTD.Text)<=0 then
   begin
   fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
if ValFloat(QTD.Text)>(mqtdped-mqtdrom) then
   begin
   fmensagem('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
TOTALI.Value:=ValFloat(PCOUNI.Text)*ValFloat(QTD.Text);

end;

procedure TFrm_PedPart.PCOUNIExit(Sender: TObject);
begin
PCOUNI.Text:=FormatFloat(mcasaspu,ValFloat(PCOUNI.Text));
if (ValFloat(PCOUNI.Text)<0) or (ValFloat(PCOUNI.Text)>99999999) then
   begin
   fmensagem('Valor Inválido!',0,['0'],0);
   PCOUNI.SetFocus;
   exit;
   end;

TOTALI.Value:=ValFloat(PCOUNI.Text)*ValFloat(QTD.Text);

end;

procedure TFrm_PedPart.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if ValFloat(CODPRO.Text)<=0 then
   begin
   fmensagem('Favor Digitar um código Valido',0,['0'],0);
   CODPRO.Text;
   exit;
   end;
if ValFloat(QTD.Text)<=0 then
   begin
   fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;

mqtdped:=0;
mqtdrom:=0;
if (valint(copy(mpseg,4,2))=2) then
   begin
   if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      end;
   end
else
   begin
   if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      end
   end;

if (valint(copy(mpseg,4,2))=2) then
   begin
   if Tb_Rom.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
      mqtdrom:=Tb_RomQTD.Value
   end
else
   begin
   if Tb_Rom.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
      begin
      mqtdrom:=Tb_RomQTD.Value;
      end;
   end;

if ValFloat(QTD.Text)>(mqtdped-mqtdrom) then
   begin
   fmensagem('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
if mop_pedpart=0 then
   mem_ped02part.Append
else
   begin
   mem_ped02part.GotoBookmark(mPosReg_registro);
   mem_ped02part.Edit;
   end;

mem_ped02partP2CODPRO.Value :=fsonumero(CODPRO.Text);
mem_ped02partP2LOTE.Value   :=GRADE.Text;
mem_ped02partP2QTD.Value    :=QTD.Value;
mem_ped02partPDUND.Value    :=UND.Text;
mem_ped02partPDNOME.Value   :=NOMPRO.Text;
mem_ped02partP2PRECO.Value  :=PCOUNI.Value;
mem_ped02partP2DESC01.Value :=MDESCI01.Value;
mem_ped02partP2DESC02.Value :=MDESCI02.Value;
mem_ped02partP2DESC03.Value :=MDESCI03.Value;
mem_ped02partP2VALDES.Value :=0;
mem_ped02partP2TOTAL.Value  :=TOTALI.Value;
mem_ped02partP2COMIS.Value  :=COMISP.Value;
mem_ped02partP2DESCFIN.Value:=DESCFINP.Value;
mem_ped02part.Post;

fromcalc(0);
mop_pedpart:=0;


CODPRO.Text  :='';
GRADE.Text   :='';
QTD.Text     :='';
UND.Text     :='';
NOMPRO.Text  :='';
PCOUNI.Text  :='';
MDESCI01.Text:='';
MDESCI02.Text:='';
MDESCI03.Text:='';
TOTALI.Text  :='';
COMISP.Text  :='';
DESCFINP.Text:='';

CODPRO.SetFocus;
end;
function TFrm_PedPart.fromcalc(ptipo: Integer): Boolean;
var
x: Integer;
mtotu, mtotb: Real;
mPosReg_Calc: TBookmark;

begin
mtotu:=0;
mtotb:=0;
if not mem_ped02part.active then
   mem_ped02part.open;
mPosReg_Calc:=mem_ped02part.GetBookmark;

mem_ped02part.First;
While not mem_ped02part.Eof do
   begin
   mtotu :=mtotu+mem_ped02partP2QTD.AsFloat;
   mtotb :=mtotb+mem_ped02partP2TOTAL.AsFloat;
   mem_ped02part.Next;
   end;
mem_ped02part.GotoBookmark(mPosReg_Calc);

MTOTITEM.Caption:=InttoStr(mem_ped02part.RecordCount);
MTOTUND.Caption :=Formatfloat(mcasqtd, mtotu);
TOTAL.Caption   :=FormatFloat(mcasas,mtotb);
result:=True;
end;

procedure TFrm_PedPart.bbExcluirClick(Sender: TObject);
begin
mop_pedpart:=1;

if not mem_ped02partP2CODPRO.IsNull then
   begin
   mem_ped02part.Delete;
   CODPRO.Setfocus;
   end;
end;

procedure TFrm_PedPart.ITEM_CANCELARClick(Sender: TObject);
begin
CODPRO.Text   :='';
GRADE.Text    :='';
QTD.Text      :='';
UND.Text      :='';
NOMPRO.Text   :='';
PCOUNI.Text   :='';
MDESCI01.Text :='';
MDESCI02.Text :='';
MDESCI03.Text :='';
DESCFINP.Text :='';
COMISP.Text   :='';
mop_pedpart:=0;
end;


function tFrm_PedPart.fCarrega(ptipo: Integer): Boolean;
var
x: Integer;
begin

CHAVEROM.Text:=Qr_PedPart01P1CHAVE.AsString;
MDATA.Text   :=FormatDateTime(fdt2, Qr_PedPart01P1DATAP.Value);
MOBS01.Text  :=Qr_PedPart01P1OBS1.Value;
MOBS02.Text  :=Qr_PedPart01P1OBS2.Value;
MOBS03.Text  :=Qr_PedPart01P1OBS3.Value;
Qr_PedPart02.Close;
Qr_PedPart02.SQL.Clear;
Qr_PedPart02.SQL.Add('Select P2CODEMP,P2CHAVE,P2LOTSEQ,P2CODPRO, '
                    +'       P2LOTE,P2DTVCTO,P2ITEM, '
                    +'       P2QTD,P2PRECO, '
                    +'       P2DESC1,P2DESC2,P2DESC3,P2VALDES '
                    +'       from CADP02 where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                    +' P2LOTSEQ=0'+Inttostr(ls_numped)
                    +' and P2CHAVE=0'+Qr_PedPart01P1CHAVE.AsString);
Qr_PedPart02.Open;
if not Qr_PedPart02.Eof then
   begin
   TabSheet2.Caption:='Mercadorias Faturadas na Chave '+Qr_PedPart02P2CHAVE.Asstring;
   Tb_Rom.Close;
   Tb_Rom.SQL.Clear;
   if ValInt(copy(mpseg,4,2))=2 then
      begin
      Tb_Rom.SQL.Add('select P2PRECO,P2CODPRO,P2LOTE, '
                    +'       sum(P2QTD) AS QTD from CADP01,CADP02 '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP')
                    +' and P2LOTSEQ=P1LOTSEQ '
                    +' and P2CHAVE =P1CHAVE '
                    +' group by P2PRECO,P2CODPRO,P2LOTE ');
      end
   else
      begin
      Tb_Rom.SQL.Add('select P2PRECO,P2CODPRO,max(P2LOTE) as P2LOTE, '
                    +'       sum(P2QTD) AS QTD from CADP01,CADP02 '
                    +'       where '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Inttostr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(CHAVE.text)
                    +' and P1STATUS<8 '
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP')
                    +' and P2LOTSEQ=P1LOTSEQ '
                    +' and P2CHAVE =P1CHAVE '
                    +' group by P2PRECO,P2CODPRO ');
      end;
   Tb_Rom.Open;
   Tb_Ped.Close;
   Tb_Ped.SQL.Clear;
   if ValInt(copy(mpseg,4,2))=2 then
      begin
      Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,P2LOTE,'
                    +'       max(P2DESC1) AS P2DESC1, '
                    +'       max(P2DESC2)  AS P2DESC2, '
                    +'       max(P2DESC3)  AS P2DESC3, '
                    +'       max(P2VALDES) AS P2VALDES, '
                    +'       sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2LOTSEQ=0'+IntTostr(ls_numped)
                 +' and P2CHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2PRECO,P2CODPRO,P2LOTE'
                 +' order by max(P2ORDEM),min(P2ITEM)');
      end
   else
      begin
      Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,max(P2LOTE) AS P2LOTE,'
                    +'       max(P2DESC1) AS P2DESC1, '
                    +'       max(P2DESC2)  AS P2DESC2, '
                    +'       max(P2DESC3)  AS P2DESC3, '
                    +'       max(P2VALDES) AS P2VALDES, '
                    +'       sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2LOTSEQ=0'+IntTostr(ls_numped)
                 +' and P2CHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2PRECO,P2CODPRO'
                 +' order by max(P2ORDEM),min(P2ITEM)');
      end;
   Tb_Ped.Open;
   end;


CHAVEROM.Text:=Qr_PedPart01P1CHAVE.AsString;
MDATA.Text   :=FormatDatetime(fdt2, Qr_PedPart01P1DATAP.Value);
CODCLI.Text  :=Qr_PedPart01P1CODCLI.AsString;
NOMCLI.Text  :=Qr_PedPart01razaosocial.AsString;
MOBS01.Text  :=Qr_PedPart01P1OBS1.AsString;
MOBS02.Text  :=Qr_PedPart01P1OBS2.AsString;
MOBS03.Text  :=Qr_PedPart01P1OBS3.AsString;
CB_TABPV.Text:=Qr_PedPart01P1TABPV.AsString;
CODPV.Text   :=Qr_PedPart01P1CODPV.AsString;
CODVEN.Text  :=Qr_PedPart01P1CODVEN.AsString;
CODTLV.Text  :=Qr_PedPart01P1CODTLV.AsString;
if flcadpv(1,0,CB_TABPV.Text,CODPV.Text) then
   NOMPV.Text:=DM1.Tb_PVPVNOME.Value
else
   NOMPV.Text:='';
if flcadven(1,0,Trim(CODVEN.Text)) then
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   NOMVEN.Text:='';
if flcadusr(1,0,CODTLV.Text) then
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value
else
   NOMTLV.Text:='';
fromcalc(0);
result:=True;
end;
procedure TFrm_PedPart.BBLIMPARClick(Sender: TObject);
begin
TabSheet1.TabVisible:=false;

CHAVEROM.Text      :='';
MDATA.Text         :='/  /';
MOBS01.Text        :='';
MOBS02.Text        :='';
MOBS03.Text        :='';
CODCLI.Text        :='';
NOMCLI.Text        :='';
NOMPV.Text         :='';
CB_TABPV.Text      :='';
CODPV.Text         :='';
NOMVEN.Text        :='';
CODVEN.text        :='';
CODTLV.Text        :='';
NOMTLV.Text        :='';


MTOTUND.Caption:='0';
MTOTITEM.Caption:=FormatFloat(mcasaspu,0);
TOTAL.Caption   :=Formatfloat(mcasas,0);

BBINCLUIR.Enabled   :=bbinc_true;
BBFATURAR.Enabled    :=False;
CHAVEROM.Enabled    :=True;
DBGrid1.Enabled     :=True;
CHAVEROM.Enabled    :=True;
bb_Pesquisar.Enabled:=True;
MDATA.Enabled       :=False;
MOBS01.Enabled      :=False;
MOBS02.Enabled      :=False;
MOBS03.Enabled      :=False;
GroupBox6.Enabled   :=False;

end;

procedure TFrm_PedPart.Src_PedPart01DataChange(Sender: TObject; Field: TField);
begin
if not (Qr_PedPart01P1CHAVE.IsNull) and (pedPart_Ori<>'consulta')
   and (fSonumero(CHAVEROM.Text)<>Qr_PedPart01P1CHAVE.AsFloat) then
   begin
   fCarrega(0);
   BBINCLUIR.Enabled :=bbinc_true;
   end;
end;

procedure TFrm_PedPart.BBINCLUIRClick(Sender: TObject);
var
x: Integer;
begin
BBLIMPAR.Click;
BBINCLUIR.Enabled   :=False;
BBFATURAR.Enabled    :=True;
CHAVEROM.Enabled    :=False;
DBGrid1.Enabled     :=False;
CHAVEROM.Enabled    :=False;
bb_Pesquisar.Enabled:=False;
MDATA.Enabled       :=True;
MOBS01.Enabled      :=True;
MOBS02.Enabled      :=True;
MOBS03.Enabled      :=True;
GroupBox6.Enabled   :=True;
MDATA.Text          :=FormatDatetime(fdt2, pdatasis);
TabSheet1.TabVisible:=true;
PageControl1.ActivePage:=TabSheet1;
PedParoper:=0;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select max(P1CODCLI) as P1CODCLI,max(P1OBS1) as P1OBS1,'
                  +' max(P1DATAP) as P1DATAP,sum(P1TOTALL) AS P1TOTALL, '
                  +' max(P1OBS2) as P1OBS2,'
                  +' max(P1OBS3) as P1OBS3,'
                  +' max(P1TABPV) as P1TABPV,'
                  +' max(P1CODPV) as P1CODPV,'
                  +' max(P1CODVEN) as P1CODVEN,'
                  +' max(P1CODTLV) as P1CODTLV'
                  +' from CADP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P1CHAVE=0'+Trim(CHAVE.Text)
                  +' and P1ORDEM=1');
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   fMensagem('Chave Não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
if flcadcli(1,0,DM1.Query2.FieldByName('P1CODCLI').AsString) then
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value
else
   NOMCLI.Text:='';
CHAVEROM.Text:='';
MDATA.Text   :=FormatDatetime(fdt2, Date);
CODCLI.Text  :=DM1.Query2.FieldByName('P1CODCLI').AsString;
MOBS01.Text  :=DM1.Query2.FieldByName('P1OBS1').AsString;
MOBS02.Text  :=DM1.Query2.FieldByName('P1OBS2').AsString;
MOBS03.Text  :=DM1.Query2.FieldByName('P1OBS3').AsString;
CB_TABPV.Text:=DM1.Query2.FieldByName('P1TABPV').AsString;
CODPV.Text   :=DM1.Query2.FieldByName('P1CODPV').AsString;
CODVEN.Text  :=DM1.Query2.FieldByName('P1CODVEN').AsString;
CODTLV.Text  :=DM1.Query2.FieldByName('P1CODTLV').AsString;
if flcadpv(1,0,CB_TABPV.Text,CODPV.Text) then
   NOMPV.Text:=DM1.Tb_PVPVNOME.Value
else
   NOMPV.Text:='';
if flcadven(1,0,Trim(CODVEN.Text)) then
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   NOMVEN.Text:='';
if flcadusr(1,0,CODTLV.Text) then
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value
else
   NOMTLV.Text:='';
st_dataped.Caption :=FormatDateTime(fdt2, DM1.Query2.FieldByName('P1DATAP').AsDateTime);
st_totalped.Caption:=FormatFloat(mcasas, DM1.Query2.FieldByName('P1TOTALL').AsFloat);
mem_ped02part.Close;
mem_ped02part.Open;

if fmensagem('Deseja Incluir as Mercadorias Automaticamente?',0,['1','2'],2)=mrYes then
   begin
   Tb_Ped.First;
   While not Tb_ped.Eof do
      begin
      if Tb_Pedqtdrom.Value>=Tb_PedQTD.Value then
         begin
         Tb_Ped.Next;
         Continue;
         end;
      mem_ped02part.Append;
      mem_ped02partP2CODPRO.Value  :=Tb_PedP2CODPRO.AsFloat;
      mem_ped02partP2LOTE.AsString :=Tb_PedP2LOTE.AsString;
      mem_ped02partP2QTD.AsFloat   :=Tb_PedQTD.Value-Tb_Pedqtdrom.Value;
      mem_ped02partPDUND.AsString  :=Tb_Pedund.Value;
      mem_ped02partPDNOME.AsString :=Tb_Pednompro.Value;
      mem_ped02partP2PRECO.AsFloat :=Tb_PedP2PRECO.Value;
      mem_ped02partP2DESC01.AsFloat:=Tb_PedP2DESC1.Value;
      mem_ped02partP2DESC02.AsFloat:=Tb_PedP2DESC2.Value;
      mem_ped02partP2DESC03.AsFloat:=Tb_PedP2DESC3.Value;
      mem_ped02partP2VALDES.AsFloat:=Tb_PedP2VALDES.Value;
      mem_ped02partP2TOTAL.AsFloat:=Tb_PedP2PRECO.AsFloat*mem_ped02partP2QTD.AsFloat;
      mem_ped02part.Post;
      Tb_Ped.Next;
      end;
   DM1.Query4.close;
   DM1.Query4.SQL.clear;
   DM1.Query4.SQL.Add('Select sum(QTD_VENDIDA) AS QTD_VENDIDA, '
                     +'    sum(QTD_ENTREGUE) AS QTD_ENTREGUE, '
                     +'    sum(QTD_VENDIDA-QTD_ENTREGUE) AS QTD_PENDENTE, '
                     +'    max(PRECO) as  PRECO '
                     +' ,CODPRO,LOTE,PDNOME,PDUND '
                     +' ,CODPRO_ORI,LOTE_ORI '
                     +' ,max(PRECO_ORI) as PRECO_ORI, max(QTD_ORI) as QTD_ORI '
                     +' , max(DATAHORA_SOL) as  DATAHORA_SOL '
                     +',  OUTINF '

                     +', sum(QTD_SOBRA) as QTD_SOBRA '
                     +', sum(QTD_DEVOL) as QTD_DEVOL '
                     +', sum(QTD_QUEBRA) as QTD_QUEBRA  '
                     +', sum(QTD_OUTRET) as QTD_OUTRET '
                     +' from '+mTriggerTemp+',CADPRO '
                     +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                     +' PDCODPRO=CODPRO '
                     +' group by CODPRO,LOTE,PDNOME,PDUND, '
                     +' CODPRO_ORI,LOTE_ORI '
//                     +' ,PRECO_ORI, QTD_ORI '
//                     +',DATAHORA_SOL'
                     +', OUTINF ');
// DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   try
      DM1.Query4.Open;
   except
      DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      exit;
      end;
   fromcalc(0);
   end;
CODPRO.SetFocus;

end;

procedure TFrm_PedPart.CHAVEROMExit(Sender: TObject);
begin
if DM4.Tb_Rm1.Locate('R1_CODIGO',Trim(CHAVEROM.Text),[]) then
   begin
   fCarrega(0);
   BBINCLUIR.Enabled   :=bbinc_true;
   end;

end;

function TFrm_PedPart.fromExcluir(ptipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADRM1 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R1_LOTSEQ=0'+IntTostr(ls_numped)
                  +' and R1_CHAVE=0'+Trim(CHAVE.Text)
                  +' and R1_CODIGO=0'+Trim(CHAVEROM.Text));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1224,'Frm_Rom','CADRM1');
  end;


DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADRM2 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R2_LOTSEQ=0'+IntToStr(ls_numped)+' and '
                  +' R2_CHAVE=0'+Trim(CHAVE.Text)
                  +' and R2_CODIGO=0'+Trim(CHAVEROM.Text));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1238,'Frm_Rom','CADRM2');
  end;
result:=True;
end;

function TFrm_PedPart.fRomGravar(ptipo: Integer): Boolean;
begin
end;
procedure TFrm_PedPart.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Rom',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedPart.Qr_PedPart01CalcFields(DataSet: TDataSet);
begin
Qr_PedPart01codcli.Value     :=DM1.Tb_CliCCODCLI.Value;
Qr_PedPart01razaosocial.Value:=DM1.Tb_CliCRAZAO.Value;
Qr_PedPart01denominacao.Value:=DM1.Tb_CliCDENOM.Value;
Qr_PedPart01endereco.Value   :=DM1.Tb_CliCLOG.Value;
Qr_PedPart01bairro.Value     :=DM1.Tb_CliCBAIRRO.Value;
Qr_PedPart01cidade.Value     :=Trim(DM1.Tb_CliCCIDADE.Value)+'-'+DM1.Tb_CliCUF.Value;
Qr_PedPart01cep.Value        :=DM1.Tb_CliCCEP.Value;
Qr_PedPart01total.Value      :=ValFloat(TOTAL.Caption);
if Qr_PedPart01P1CHAVE.IsNull then
   bbPendencia.Enabled:=false
else
   bbPendencia.Enabled:=true;
if Qr_PedPart01P1DATANF.AsDateTime<=pdatanula then
   Qr_PedPart01datanf.Value:='Nao Emitiu'
else
   Qr_PedPart01datanf.Value:=FormatDateTime(fdt2, Qr_PedPart01P1DATANF.AsDateTime);

end;

procedure TFrm_PedPart.Qr_PedPart02CalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_PedPart02P2CODPRO.AsString) then
   begin
   Qr_PedPart02nome.Value:=DM1.Query1.Fields[0].AsString;
   Qr_PedPart02und.Value :=DM1.Query1.Fields[1].AsString;
   end;
Qr_PedPart02valortotal.Value:=Arredonda((Qr_PedPart02P2QTD.Value*Qr_PedPart02P2PRECO.Value),DM1.Tb_PargerPCASAS.AsInteger);
end;

procedure TFrm_PedPart.CHAVEEnter(Sender: TObject);
begin
If BBFATURAR.Enabled then
   begin
   Case fmensagem('O registro atual não foi faturado!'+#13
                  +'Deseja fatura-lo agora?',0,['1','2'],2) of
      mrYes: BBFATURAR.Click;
      mrNo : BBLIMPAR.Click;
      else begin
          CODPRO.SetFocus;
          abort;
          end;
      end;
   end;
end;

procedure TFrm_PedPart.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If BBFATURAR.Enabled then
   begin
   Case fmensagem('O registro atual não foi faturado!'+#13
                  +'Deseja fatura-lo agora?',0,['1','2'],2) of

      mrYes: BBFATURAR.Click;
      mrNo : BBLIMPAR.Click;
      else CanClose:=False;
      end;
   end;

end;


procedure TFrm_PedPart.FormActivate(Sender: TObject);
begin
if pedPart_Ori='consulta' then
   begin
   fCarrega(0);
   end;
end;

procedure TFrm_PedPart.Tb_PedCalcFields(DataSet: TDataSet);
begin
Tb_Pedqtdrom.Value:=0;
if Tb_Rom.Active then
   begin
   if ValInt(copy(mpseg,4,2))=2 then
      begin
      if Tb_Rom.Locate('P2CODPRO;P2LOTE',vararrayof([Tb_PedP2CODPRO.Value,Tb_PedP2LOTE.Value]),[]) then
         Tb_Pedqtdrom.Value:=Tb_RomQTD.Value;
      end
   else
      begin
      if Tb_Rom.Locate('P2CODPRO',Tb_PedP2CODPRO.Value,[]) then
         Tb_Pedqtdrom.Value:=Tb_RomQTD.Value;
      end;
   end;
Tb_Pedsaldo.Value:=Tb_PedQTD.Value-Tb_Pedqtdrom.Value;
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_PedP2CODPRO.AsString) then
   begin
   Tb_Pedund.Value   :=DM1.Query1.Fields[1].AsString;
   Tb_Pednompro.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_PedPart.bbPendenciaClick(Sender: TObject);
var
mQtd: Integer;
begin
Application.Createform(TFrm_PedPart_Pend,form_PedPart_Pend_pedPart);
form_PedPart_Pend_pedPart.CHAVE.Text :=CHAVE.Text;
form_PedPart_Pend_pedPart.NOMCLI.Text:=NOMCLI.Text;

if ValInt(copy(mpseg,4,2))<>2 then
   form_PedPart_Pend_pedPart.DBGrid1.Columns[1].Visible:=false;
form_PedPart_Pend_pedPart.ShowModal;
form_PedPart_Pend_pedPart.Free;
end;

procedure TFrm_PedPart.BBFATURARClick(Sender: TObject);
var
mqtd,x: Integer;
begin
if valint(MTOTITEM.Caption)=0 then
   begin
   fMensagem('Não ha ítens a ser faturado!',0,['0'],0);
   exit;
   end;

flcadpar01(0,codemp,'1');
if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   Application.CreateForm(TFrm_Ped_Autop, Pedido_Autop_PedPart);
   Pedido_Autop_PedPart.Tool_Limpar.Click;
   flcadpar01(0,codemp,'1');
   Pedido_Autop_PedPart.mFatMz       :=DM4.Tb_Par01PFATMZ.AsInteger=1;
   Pedido_Autop_PedPart.mFatMz_LocMov:=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   Pedido_Autop_PedPart.mAvisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;
   Pedido_Autop_PedPart.Tool_Incluir.Enabled        :=False;
   Pedido_Autop_PedPart.tool_localizar.Enabled      :=False;
   Pedido_Autop_PedPart.Tool_Alterar.Enabled        :=False;
   Pedido_Autop_PedPart.Tool_Excluir.Enabled        :=False;
   Pedido_Autop_PedPart.Tool_Gravar.Enabled         :=True;
   Pedido_Autop_PedPart.Tool_LSep.Enabled       :=False;
   Pedido_Autop_PedPart.Tool_EmiteNF.Enabled        :=False;
   Pedido_Autop_PedPart.Tool_Calcular.Enabled       :=True;
   Pedido_Autop_PedPart.Tool_Faturar.Enabled        :=False;
   Pedido_Autop_PedPart.pc_Cabecalho.ActivePage   :=Pedido_Autop_PedPart.ts_principais;
   Pedido_Autop_PedPart.pc_Cabecalho.Enabled           :=true;
   Pedido_Autop_PedPart.pc_ProdServ.Enabled        :=True;
   Pedido_Autop_PedPart.ts_situacao.Enabled      :=True;
   Pedido_Autop_PedPart.CB_TIPO.Enabled          :=True;
   Pedido_Autop_PedPart.ts_principais.Enabled     :=True;
   Pedido_Autop_PedPart.ts_outros.Enabled    :=True;
   Pedido_Autop_PedPart.Tool_Arredondar.Enabled           :=True;
   Pedido_Autop_PedPart.CODDIG.Text              :=IntToStr(codusr);
   flcadusr(1,0,Pedido_Autop_PedPart.CODDIG.Text);
   Pedido_Autop_PedPart.NOMDIG.Text              :=DM4.Tb_UsrNOMUSR.Value;
   Pedido_Autop_PedPart.HORDIG.Text              :=FormatDatetime('hh:nn:ss',time);
   Pedido_Autop_PedPart.DATAP.Text               :=FormatDatetime('dd/mm/yyyy',date);
   Pedido_Autop_PedPart.moper_ped:=0;
   mqtd:=1;

   Pedido_Autop_PedPart.Tb_Ped02.Close;
   Pedido_Autop_PedPart.Tb_Ped02.SQL.Clear;
   Pedido_Autop_PedPart.Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
   Pedido_Autop_PedPart.Tb_Ped02.Open;
   Pedido_Autop_PedPart.Tb_Ped02s.Close;
   Pedido_Autop_PedPart.Tb_Ped02s.SQL.Clear;
   Pedido_Autop_PedPart.Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
   Pedido_Autop_PedPart.Tb_Ped02s.Open;
   mem_ped02part.First;
   While not mem_ped02part.Eof do
      begin
      if mem_ped02partP2CODPRO.IsNull then
         begin
         mem_ped02part.Next;
         Continue;
         end;
      if not flcadpro(1,0,0,mem_ped02partP2CODPRO.AsString) then
         begin
         mem_ped02part.Next;
         Continue;
         end;
      if (valint(copy(mpseg,4,2))=2) and
         (DM1.Tb_PargerPPCOGRA.Value=1) then
         flcadlgc(0,1,0,mem_ped02partP2CODPRO.AsString,mem_ped02partP2LOTE.AsString,'');
      Pedido_Autop_PedPart.Tb_Ped02.Append;
      Pedido_Autop_PedPart.Tb_Ped02P2CODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2QTD.Value   :=mem_ped02partP2QTD.AsFloat;
      Pedido_Autop_PedPart.Tb_Ped02UNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
      Pedido_Autop_PedPart.Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2PRECO.Value :=mem_ped02partP2PRECO.AsFloat; // PCO UNITARIO
      Pedido_Autop_PedPart.Tb_Ped02P2DESC1.Value :=mem_ped02partP2DESC01.AsFloat; // DESC.01
      Pedido_Autop_PedPart.Tb_Ped02P2DESC2.Value :=mem_ped02partP2DESC02.AsFloat; // DESC. 02
      Pedido_Autop_PedPart.Tb_Ped02P2DESC3.Value :=mem_ped02partP2DESC03.AsFloat; // DESC. 03
      Pedido_Autop_PedPart.Tb_Ped02P2LOTE.Value  :=mem_ped02partP2LOTE.AsString; // grade
      Pedido_Autop_PedPart.Tb_Ped02P2DTVCTO.Value:=pdatanula;
      Pedido_Autop_PedPart.Tb_Ped02P2SIT.Value   :=DM1.Tb_ProPDSIT.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2PRECO.Value :=mem_ped02partP2PRECO.Value;
      Pedido_Autop_PedPart.Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
      if Tb_Ped02D.Active then
         begin
         Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value:='';
         Tb_Ped02D.First;
         if (valint(copy(mpseg,4,2))=2) then
            begin
            if Tb_Ped.Locate('P2CODPRO;P2LOTE', vararrayof([mem_ped02partP2CODPRO.AsString,
                                              mem_ped02partP2LOTE.AsString]),[]) then
               begin
               While not (Tb_Ped02D.Eof) and (mem_ped02partP2CODPRO.AsFloat=Tb_Ped02DP2DCODPRO.Value)
                     and (mem_ped02partP2LOTE.AsString=trim(Tb_Ped02DP2DGRADE.AsString)) do
                  begin
                  Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value:=Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value
                                                        +Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end
            end
         else
            begin
            if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
               begin
               Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value:='';
               While not (Tb_Ped02D.Eof) and (ValFloat(CODPRO.Text)=Tb_Ped02DP2DCODPRO.Value) do
                  begin
                  Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value:=Pedido_Autop_PedPart.Tb_Ped02DESCALTER.Value
                                                        +Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end;
            end;
         end;
      Pedido_Autop_PedPart.Tb_Ped02P2DESCM.Value:=0;
      Pedido_Autop_PedPart.Tb_Ped02P2DESC1.Value:=mem_ped02partP2DESC01.AsFloat; // DESC.01 '0';   // percentual de comissao
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         Pedido_Autop_PedPart.Tb_Ped02P2PCOCUS.Value:=iif(DM1.Tb_LGCCLPCUSTO.IsNull,0,DM1.Tb_LGCCLPCUSTO.AsString)
       else
         Pedido_Autop_PedPart.Tb_Ped02P2PCOCUS.Value:=iif(DM1.Tb_ProPDPRECOC.IsNull,0,DM1.Tb_ProPDPRECOC.AsString);
      mem_ped02part.Next;
      mqtd:=mqtd+1;
      end;
   flcadcli(1,0,trim(CODCLI.Text));
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   Pedido_Autop_PedPart.CODPV.Text   :=CODPV.Text;
   Pedido_Autop_PedPart.CB_TABPV.Text:=CB_TABPV.Text;

   if not flcadpv(1,0,Pedido_Autop_PedPart.CB_TABPV.Text,Pedido_Autop_PedPart.CODPV.Text) then
      begin
      Pedido_Autop_PedPart.CODPV.Text:='';
      Pedido_Autop_PedPart.NOMPV.Text:='';
      end
   else
      Pedido_Autop_PedPart.NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   Pedido_Autop_PedPart.CHAVE.Text :='';
   Pedido_Autop_PedPart.ORDEM.Text :='';
   Pedido_Autop_PedPart.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
   Pedido_Autop_PedPart.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   Pedido_Autop_PedPart.DATAP.Text :=FormatDatetime(fdt2,date);
   Pedido_Autop_PedPart.DATANF.Text:='/  /';
   Pedido_Autop_PedPart.NUMNF.Text  :='';
   Pedido_Autop_PedPart.NPEDORI.Text:=CHAVE.Text;
   Pedido_Autop_PedPart.SERIENF.Text:='';
   Pedido_Autop_PedPart.SUBSER.Text :='';
   Pedido_Autop_PedPart.PCOMIS.Text :='';
   Pedido_Autop_PedPart.MODELO.Text :='';
   Pedido_Autop_PedPart.OBS1.Text   :=MOBS01.Text;
   Pedido_Autop_PedPart.OBS2.Text   :=MOBS02.Text;
   Pedido_Autop_PedPart.OBS3.Text   :=MOBS03.Text;
   mstatus                   :=0;
   Pedido_Autop_PedPart.mtipop      :=1;
   Pedido_Autop_PedPart.CB_TIPO2.ItemIndex  :=Pedido_Autop_PedPart.mtipop;
   Pedido_Autop_PedPart.CB_TIPO2.text:=Pedido_Autop_PedPart.CB_TIPO2.items[Pedido_Autop_PedPart.CB_TIPO2.itemIndex];
   Pedido_Autop_PedPart.mtipop:=Pedido_Autop_PedPart.CB_TIPO2.ItemIndex;

   with Pedido_Autop_PedPart.CB_TIPO do ItemIndex:=Items.IndexOf(Pedido_Autop_PedPart.CB_TIPO2.Text);
   Pedido_Autop_PedPart.CB_TIPO.text:=Pedido_Autop_PedPart.CB_TIPO.items[Pedido_Autop_PedPart.CB_TIPO.itemIndex];


   Pedido_Autop_PedPart.CODDIG.Text :=Inttostr(codusr);
   Pedido_Autop_PedPart.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
   flcadusr(1,0,Inttostr(codusr));
   Pedido_Autop_PedPart.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
   Pedido_Autop_PedPart.DTMOD.Text  :='';
   Pedido_Autop_PedPart.NOMUSRM.Text:='';
   Pedido_Autop_PedPart.CB_CONF.Checked:=False;
   Pedido_Autop_PedPart.CODCON.Text    :='';
   Pedido_Autop_PedPart.DATCON.Text :='/  /';
   Pedido_Autop_PedPart.HORCON.Text :='';
   Pedido_Autop_PedPart.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
   Pedido_Autop_PedPart.DESC01.Text   :='0';
   Pedido_Autop_PedPart.DESC02.Text   :='0';
   Pedido_Autop_PedPart.VALDES.Text   :='0';
   Pedido_Autop_PedPart.CODTRA.Text:='';
   Pedido_Autop_PedPart.NOMTRA.Text:='';
   Pedido_Autop_PedPart.QTDVOL.Text:='0';
   Pedido_Autop_PedPart.PESOL.Text :='0';
   Pedido_Autop_PedPart.PESOB.Text :='0';
   Pedido_Autop_PedPart.ESPECIE.Text       :='';
   Pedido_Autop_PedPart.RGFRETEPC.ItemIndex:=0;
   Pedido_Autop_PedPart.VALFRE.Text        :='0';
   Pedido_Autop_PedPart.UFPV.Text          :='';
   Pedido_Autop_PedPart.PLACAV.Text        :='';
   Pedido_Autop_PedPart.CODBCO.Text        :='';
   Pedido_Autop_PedPart.RGCODSER.ItemIndex :=0;
   mcodldr            :=0;
   mbcissqn           :=0;
   missqn             :=0;
   Pedido_Autop_PedPart.CODVEN2.Text:='';
   Pedido_Autop_PedPart.NOMVEN2.Text:='';
   Pedido_Autop_PedPart.CODVEN3.Text:='';
   Pedido_Autop_PedPart.NOMVEN3.Text:='';
   if flcadven(1,0,Trim(Pedido_Autop_PedPart.CODVEN.Text)) then
      Pedido_Autop_PedPart.NOMVEN.Text:=DM1.Tb_VenVNOME.Value
   else
      Pedido_Autop_PedPart.CODVEN.Text:='';
   mcomis     :=0;
   Pedido_Autop_PedPart.CB_ORIGEM.ItemIndex:=0;
   Pedido_Autop_PedPart.CODTLV.Text:=CODTLV.Text;
   Pedido_Autop_PedPart.NOMTLV.Text:=NOMTLV.Text;
   Pedido_Autop_PedPart.CB_ETIVOL.Checked :=False;
   Pedido_Autop_PedPart.CODSEP.Text:='';
   Pedido_Autop_PedPart.NOMSEP.Text:='';
   Pedido_Autop_PedPart.DATSEP.Text:='/  /';
   Pedido_Autop_PedPart.HORSEP.Text:='';
   Pedido_Autop_PedPart.codemb.Text:='';
   Pedido_Autop_PedPart.NOMEMB.Text:='';
   Pedido_Autop_PedPart.NUMCF.Text:='0';
   Pedido_Autop_PedPart.PEDORI1.Text:='Pedido Particionado: Chave: '+CHAVE.Text+' Data: '+st_dataped.Caption;
   Pedido_Autop_PedPart.Tool_Calcular.Click;
   mGravarCh_Terc:=true;
   mChaveTerc    :=0;
   Pedido_Autop_PedPart.ShowModal;
   Pedido_Autop_PedPart.Free;
   Pedido_Autop_PedPart:=nil;
   end
else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
   begin

   //inicio

   Application.CreateForm(TFrm_Ped_02, Pedido_02_PedPart);
   Pedido_02_PedPart.mped02_ori:='frm_fatemp';

   Pedido_02_PedPart.btn_cancelar.Click;
   flcadpar01(0,codemp,'1');
   Pedido_02_PedPart.mPed_Par_FatMz                :=DM4.Tb_Par01PFATMZ.AsInteger=1;
   Pedido_02_PedPart.mPed_Par_FatMz_LocMov         :=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   Pedido_02_PedPart.mPed_Par_Avisar_SemEstoque    :=DM4.Tb_Par01PFATMZC.AsInteger=1;

//   Pedido_02_PedPart.Show;

   Pedido_02_PedPart.mPd_FaturandoPedido:=true;

   Pedido_02_PedPart.btn_incluir.Click;
   Pedido_02_PedPart.edt_codcliente.Text :=CODCLI.Text;
   Pedido_02_PedPart.edt_codvendedor.Text:=CODVEN.Text;
   Pedido_02_PedPart.mPd_FaturandoPedido:=true;
   flcadpar01(0,codemp,'1');
   Pedido_02_PedPart.mPed_Par_FatMz:=DM4.Tb_Par01PFATMZ.AsInteger=1;
   Pedido_02_PedPart.mPed_Par_FatMz_LocMov     :=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   Pedido_02_PedPart.mPed_Par_Avisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;

   Pedido_02_PedPart.mPd_Oper_Ped:=0;


   Pedido_02_PedPart.mpd_chave:=0;
   Pedido_02_PedPart.mpd_ordem:=0;

   if Qr_PedPart01P1CODEMP.AsFloat>0 then
      Pedido_02_PedPart.edt_submod.Text:='100'
   else
      Pedido_02_PedPart.edt_submod.Text:='000';
   Pedido_02_PedPart.mPed_SubMod:=StrtoFloat('0'+Trim(Pedido_02_PedPart.edt_submod.Text));


   Pedido_02_PedPart.mlib_mPDescLib    :=Qr_PedPart01P1PDESCLIB.AsFloat;
   Pedido_02_PedPart.mlib_mPDescLib_Usr:=Qr_PedPart01P1PDESCL_USR.AsInteger;
   Pedido_02_PedPart.btn_incluir.Enabled      :=False;
   Pedido_02_PedPart.btn_localizar.Enabled    :=False;
   Pedido_02_PedPart.btn_alterar.Enabled      :=False;
   Pedido_02_PedPart.btn_excluir.Enabled      :=False;
   Pedido_02_PedPart.btn_gravar.Enabled       :=True;
   Pedido_02_PedPart.btn_imprimir.Enabled     :=False;
   Pedido_02_PedPart.btn_nota.Enabled         :=False;
   Pedido_02_PedPart.btn_calcular.Enabled     :=True;
   Pedido_02_PedPart.btn_faturar.Enabled      :=False;
   Pedido_02_PedPart.pgc_capapedido.ActivePage:=Pedido_02_PedPart.tbs_principal;
   Pedido_02_PedPart.pgc_capapedido.Enabled   :=true;
   Pedido_02_PedPart.tbs_mercadoria.Enabled   :=True;
   Pedido_02_PedPart.tbs_principal.Enabled    :=True;

   //pareiaqui


   Pedido_02_PedPart.Ts_Servico.Enabled    :=True;
   Pedido_02_PedPart.tbs_outrosdados.Enabled      :=True;
   Pedido_02_PedPart.tbs_situacao.Enabled         :=True;
   Pedido_02_PedPart.cb_tipopedido.Enabled        :=True;
   Pedido_02_PedPart.CODCON.Text    :='';
   Pedido_02_PedPart.DATCON.Text :='/  /';
   Pedido_02_PedPart.HORCON.Text :='';
   Pedido_02_PedPart.edt_codtra.Text:='';
   Pedido_02_PedPart.edt_nometrans.Text:='';
   Pedido_02_PedPart.edt_qtdvol.Text:='0';
   Pedido_02_PedPart.edt_pesol.Text :='0';
   Pedido_02_PedPart.edt_pesob.Text :='0';
   Pedido_02_PedPart.edt_especie.Text       :='';
   Pedido_02_PedPart.RGFRETEPC.ItemIndex:=0;
   Pedido_02_PedPart.edt_valorfrete.Text        :='0';
   Pedido_02_PedPart.edt_ufpv.Text          :='';
   Pedido_02_PedPart.edt_placav.Text        :='';
   Pedido_02_PedPart.edt_desconto01.Text        :='0';
   Pedido_02_PedPart.edt_desconto02.Text        :='0';
   Pedido_02_PedPart.edt_codvendedor02.Text:='';
   Pedido_02_PedPart.edt_codvendedor03.Text:='';
   Pedido_02_PedPart.CB_ORIGEM.ItemIndex:=0;
   Pedido_02_PedPart.CODTLV.Text:='';
   Pedido_02_PedPart.cb_etivol.Checked :=False;
   Pedido_02_PedPart.edt_codsep.Text:='';
   Pedido_02_PedPart.edt_datasep.Text:='/  /';
   Pedido_02_PedPart.edt_horasep.Text:='';
   Pedido_02_PedPart.CODEMB.Text:='';
   Pedido_02_PedPart.edt_numcf.Text:='0';
   Pedido_02_PedPart.edt_submod.Text:='000';
   Pedido_02_PedPart.mPed_SubMod:=StrtoFloat('0'+Trim(Pedido_02_PedPart.edt_submod.Text));


   flcadcli(1,0,CODCLI.Text);
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   Pedido_02_PedPart.edt_codvenda.Text   :=Trim(CODPV.Text);
   Pedido_02_PedPart.cb_tabelavenda.Text :=Trim(CB_TABPV.Text);
   flcadpv(1,0,Pedido_02_PedPart.cb_tabelavenda.Text,Pedido_02_PedPart.edt_codvenda.Text);
   Pedido_02_PedPart.edt_chave.Text :='';
   Pedido_02_PedPart.edt_codcliente.Text:=DM1.Tb_CliCCODCLI.AsString;
   Pedido_02_PedPart.edt_nomecliente.Text:=DM1.Tb_CliCRAZAO.Value;
   Pedido_02_PedPart.edt_datapedido.Text :=FormatDatetime(fdt2,date);
//   lindomar atualizar

//   Pedido_02_PedPart.PEDORI1.Text:='Pedido Particionado: Chave: '+CHAVE.Text+' Data: '+st_dataped.Caption;

   Pedido_02_PedPart.edt_datanf.Text:='/  /';
   Pedido_02_PedPart.edt_numnf.Text  :='';
   Pedido_02_PedPart.edt_serienf.Text:='';
   Pedido_02_PedPart.edt_subser.Text :='';
   Pedido_02_PedPart.edt_pcomis.Text :='';
   Pedido_02_PedPart.edt_modelo.Text :='';
   Pedido_02_PedPart.edt_obs1.Text   :='';
   Pedido_02_PedPart.edt_obs2.Text   :='';
     Pedido_02_PedPart.edt_obs3.Text   :='';
   Pedido_02_PedPart.mpd_status                 :=0;
   Pedido_02_PedPart.mpd_ptipop                 :=0;

   Pedido_02_PedPart.cb_tipo2.text  := Pedido_02_PedPart.cb_tipo2.items[Pedido_02_PedPart.cb_tipo2.itemIndex];
   with Pedido_02_PedPart.cb_tipopedido do
      ItemIndex := Items.IndexOf(Pedido_02_PedPart.cb_tipo2.Text);

   Pedido_02_PedPart.cb_tipopedido.text := Pedido_02_PedPart.cb_tipopedido.items[Pedido_02_PedPart.cb_tipopedido.itemIndex];

   Pedido_02_PedPart.edt_codigodigitador.Text     :=IntToStr(codusr);
   flcadusr(1,0,Pedido_02_PedPart.edt_codigodigitador.Text);
   Pedido_02_PedPart.edt_nomedigitador.Text       :=DM4.Tb_UsrNOMUSR.Value;
   Pedido_02_PedPart.edt_horadigitacao.Text       :=FormatDatetime('hh:nn:ss',time);
   Pedido_02_PedPart.DTMOD.Text  :='';


   Pedido_02_PedPart.NOMUSRM.Text:='';
   Pedido_02_PedPart.CB_CONF.Checked:=False;
   Pedido_02_PedPart.edt_nomevenda.Text    :=DM1.Tb_PVPVNOME.Value;



   Pedido_02_PedPart.edt_codbanco.Text        :='';
   Pedido_02_PedPart.edt_codbanco2.Text        :='';



   Pedido_02_PedPart.edt_codvendedor.Text:=CODVEN.Text;

   Pedido_02_PedPart.edt_nomevendedor2.Text:='';
   Pedido_02_PedPart.edt_nomevendedor3.Text:='';
   flcadven(1,0,Pedido_02_PedPart.edt_codvendedor.Text);
   Pedido_02_PedPart.edt_nomevendedor.Text:=DM1.Tb_VenVNOME.Value;

   Pedido_02_PedPart.NOMTLV.Text:='';


   Pedido_02_PedPart.edt_nomesep.Text:='';

   Pedido_02_PedPart.edt_datasep.Text:='/  /';
   Pedido_02_PedPart.edt_horasep.Text:='';
   Pedido_02_PedPart.CODEMB.Text:='';
   Pedido_02_PedPart.NOMEMB.Text:='';
   Pedido_02_PedPart.edt_numcf.Text:='0';
   Pedido_02_PedPart.QryItem_Nota.Close;
   Pedido_02_PedPart.QryItem_Nota.Open;
   Pedido_02_PedPart.QryServico_Nota.Close;
   Pedido_02_PedPart.QryServico_Nota.Open;


   Pedido_02_PedPart.cb_tipopreco.ItemIndex:=3;
   Pedido_02_PedPart.cb_tipopedidoExit(self);
   Pedido_02_PedPart.edt_valordesconto.Text        :=FormatFloat(mcasas, 0);

   Pedido_02_PedPart.mPd_Oper_Ped:=0;
   mem_ped02part.First;
   mqtd:=1;
   While not mem_ped02part.Eof do
      begin
      if mem_ped02partP2CODPRO.IsNull then
         begin
         mem_ped02part.Next;
         Continue;
         end;
      Pedido_02_PedPart.edt_codproduto.Text    := mem_ped02partP2CODPRO.AsString;
      Pedido_02_PedPart.edt_lote.Text          := mem_ped02partP2LOTE.AsString;
      Pedido_02_PedPart.edt_precounitario.Value:= mem_ped02partP2PRECO.AsFloat;
      Pedido_02_PedPart.edt_quantidade.Value   := mem_ped02partP2QTD.AsFloat;
      Pedido_02_PedPart.edt_desc1.Value        := mem_ped02partP2DESC01.AsFloat;
      Pedido_02_PedPart.edt_desc2.Value        := mem_ped02partP2DESC02.AsFloat;
      Pedido_02_PedPart.edt_desc3.Value        := mem_ped02partP2DESC03.AsFloat;
      Pedido_02_PedPart.edt_descfin.Value      := mem_ped02partP2DESCFIN.AsFloat;
      Pedido_02_PedPart.edt_comissao.value     := mem_ped02partP2COMIS.AsFloat;
      Pedido_02_PedPart.edt_codprodutoExit(Self);
      Pedido_02_PedPart.edt_quantidadeExit(self);

      if Pedido_02_PedPart.edt_quantidade.Value<=0 then
         begin
         Pedido_02_PedPart.edt_codproduto.Text    := '';
         Pedido_02_PedPart.edt_lote.Text          := '';
         Pedido_02_PedPart.edt_dtvcto.Text        :='/  /';
         Pedido_02_PedPart.edt_precounitario.Text := '';
         Pedido_02_PedPart.edt_quantidade.Text    := '';
         Pedido_02_PedPart.edt_desc1.Text         := '';
         Pedido_02_PedPart.edt_desc2.Text         := '';
         Pedido_02_PedPart.edt_desc3.Text         := '';
         Pedido_02_PedPart.edt_descfin.Text       := '';
         Pedido_02_PedPart.edt_comissao.Text      := '';
         Pedido_02_PedPart.edt_descricao.Text     := '';
         Pedido_02_PedPart.edt_marca.Text         := '';
         Pedido_02_PedPart.edt_und.Text           := '';
         mem_ped02part.Next;
         Continue;
         end;

      Pedido_02_PedPart.edt_precounitario.Value:= mem_ped02partP2PRECO.AsFloat;
      Pedido_02_PedPart.edt_quantidade.Value   := mem_ped02partP2QTD.AsFloat;
      Pedido_02_PedPart.edt_desc1.Value        := mem_ped02partP2DESC01.AsFloat;
      Pedido_02_PedPart.edt_desc2.Value        := mem_ped02partP2DESC02.AsFloat;
      Pedido_02_PedPart.edt_desc3.Value        := mem_ped02partP2DESC03.AsFloat;

      Pedido_02_PedPart.edt_precounitarioExit(self);
      Pedido_02_PedPart.edt_precounitario.Value:= mem_ped02partP2PRECO.AsFloat;

      Pedido_02_PedPart.edt_total.Value := Arredonda(( Pedido_02_PedPart.edt_precounitario.Value * Pedido_02_PedPart.edt_quantidade.Value), DM1.Tb_PargerPCASAS.Asinteger) ;


      if DM4.Qr_Ped02d.Active then
         begin
         if DM4.Qr_Ped02d.Locate('P2DCODPRO',mem_ped02partP2CODPRO.Value,[]) then
            begin
            Pedido_02_PedPart.DESCALTER.Lines.Clear;
            While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=mem_ped02partP2CODPRO.Value))  do
               begin
               Pedido_02_PedPart.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
               DM4.Qr_Ped02d.Next;
               end;
            end;
         end;

      Pedido_02_PedPart.bbGravarItemClick(Self);
      dm1.Query3.Close;
      dm1.Query3.SQL.Clear;
      dm1.Query3.SQL.Add(' select * from cadp02_mp ');
      dm1.Query3.SQL.Add(' where P2MP_CODEMP='+IntToStr(codemp));
      dm1.Query3.SQL.Add(' and P2MP_LOTSEQ=0'+IntTostr(ls_numped));
      dm1.Query3.SQL.Add(' and P2MP_CHAVE=0'+Trim(CHAVE.Text));
      if not dm1.Query3.IsEmpty then
        fMateriasPrimas(0);
      mqtd:=mqtd+1;
      mem_ped02part.Next;
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

      Pedido_02_PedPart.txts_codpro.Text       := Qr_SerP2SCODPRO.AsString;
      Pedido_02_PedPart.txts_pcouni.Value      :=  DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
      Pedido_02_PedPart.txts_quant.Value       := DM1.Query5.FieldbyName('P2SQTD').AsFloat;
      Pedido_02_PedPart.txts_desci01.Value     := DM1.Query5.FieldbyName('P2SDESC01').AsFloat;
      Pedido_02_PedPart.txts_desci02.Value     := DM1.Query5.FieldbyName('P2SDESC02').AsFloat;
      Pedido_02_PedPart.txts_desci03.Value     := DM1.Query5.FieldbyName('P2SDESC03').AsFloat;
      Pedido_02_PedPart.txts_descfin.Value     := DM1.Query5.FieldbyName('P2SDESCFIN').AsFloat;
      Pedido_02_PedPart.txts_comis.value       := DM1.Query5.FieldbyName('P2SPCOMIS').AsFloat;
      Pedido_02_PedPart.txts_codproExit(Self);
      Pedido_02_PedPart.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
      Pedido_02_PedPart.txts_pcouniExit(self);
      if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
         begin
         Pedido_02_PedPart.DESCALTER.Lines.Clear;
         While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
            begin
            Pedido_02_PedPart.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
            DM4.Qr_Ped02d.Next;
            end;
         end;
      Pedido_02_PedPart.bbGravarServClick(Self);
      mqtd:=mqtd+1;
      Qr_Ser.Next;
      end;

   // fim dos servicos

}
//   Pedido_Autop_PedPart.Tool_Calcular.Click;
   if (Pedido_02_PedPart.QryItem_Nota.RecordCount>0) or (Pedido_02_PedPart.QryServico_Nota.RecordCount>0) then
      begin
//      if mvlrdes<>0 then
//         begin
         Pedido_02_PedPart.edt_valordesconto.Text        :=FormatFloat(mcasas, 0);
         Pedido_02_PedPart.edt_valordescontoExit(self);
//         end;

      if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
         Pedido_02_PedPart.fGerarFormas_ped02(iif(Pedido_02_PedPart.cb_tabelavenda.Text='PP',1,0),0);
      Pedido_02_PedPart.edt_pedori1.Text    :='Pedido Particionado: Chave: '+CHAVE.Text+' Data: '+st_dataped.Caption;
      Pedido_02_PedPart.edt_pedori2.Text    :='';

      end;
   Pedido_02_PedPart.NPEDORI.Text:=CHAVE.Text;
//   Pedido_02_PedPart.ShowModal;
    Pedido_02_PedPart.btn_gravarClick(self);


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP02_TEMP WHERE ');
   DM1.query1.SQL.add('  P2TERM=:P2TERM');
   DM1.query1.SQL.add(' and P2DATHOR=:P2DATHOR');
   DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;
   Pedido_02_PedPart.QryItem_Nota.Close;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP01_TEMP WHERE ');
   DM1.query1.SQL.add('  P1TERM=:P1TERM');
   DM1.query1.SQL.add(' and P1DATHOR=:P1DATHOR');
   DM1.Query1.ParamByName('P1TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P1DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP02S_TEMP WHERE ');
   DM1.query1.SQL.add('  P2STERM=:P2TERM');
   DM1.query1.SQL.add(' and P2SDATHOR=:P2DATHOR');
   DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
   DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
   DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
   DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16340,'Frm_Ped_02','CADP01');
      end;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADPEN_TEMP WHERE ');
   DM1.query1.SQL.add('  PETERM=:P2TERM');
   DM1.query1.SQL.add(' and PEDATHOR=:P2DATHOR');
   DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP01D_TEMP WHERE ');
   DM1.query1.SQL.add('  P1DTERM=:P2TERM');
   DM1.query1.SQL.add(' and P1DDATHOR=:P2DATHOR');
   DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
   DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
   DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
   DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_PedPart.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_PedPart.mPd_DatHor_Eve;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,19474,'Frm_Ped_02','CADP01');
      end;



   Pedido_02_PedPart.Free;
   Frm_Ped_02:=nil;
   Pedido_02_PedPart.mPd_FaturandoPedido:=false;

   if Pedido_02_PedPart.mpd_chave<>0 then
      begin
      end;
      


   Pedido_02_PedPart.mped02_ori:='';

//   Pedido_Autop_PedPart.Tool_Gravar.Click;
//   mchave:=StrToInt('0'+Trim(Pedido_Autop_PedPart.CHAVE.Text));
//   Pedido_Autop_PedPart.Tool_Sair.Click;
   end
   //termino
else
   begin
   Application.CreateForm(TFrm_Ped, Frm_Ped);
   Frm_Ped.BBLIMPAR.Click;
   Frm_Ped.BBINCLUIR.Enabled        :=False;
   Frm_Ped.BBLOCALIZAR.Enabled      :=False;
   Frm_Ped.BBALTERAR.Enabled        :=False;
   Frm_Ped.BBEXCLUIR.Enabled        :=False;
   Frm_Ped.BBGRAVAR.Enabled         :=True;
   Frm_Ped.BBIMPRIMIR.Enabled       :=False;
   Frm_Ped.BBEMITENF.Enabled        :=False;
   Frm_Ped.BBCUPOM.Enabled          :=False;
   Frm_Ped.BBCALCULAR.Enabled       :=True;
   Frm_Ped.BBFATURAR.Enabled        :=False;
   Frm_Ped.PC_CAB.ActivePageIndex   :=0;

   Frm_Ped.PC_CAB.Enabled           :=true;
   Frm_Ped.Pn_DigPro.Enabled        :=True;
   Frm_Ped.Pn_Servicos.Enabled      :=True;
   Frm_Ped.Pn_Complementares.Enabled:=True;
   Frm_Ped.Pn_Situacao.Enabled      :=True;
   Frm_Ped.CB_TIPO.Enabled          :=True;
   Frm_Ped.TS_Principal.Enabled     :=True;
   Frm_Ped.TS_Adicionais.Enabled    :=True;
   Frm_Ped.Ts_Fpgto.Enabled         :=True;
   Frm_Ped.BB_ARR.Enabled           :=True;
   Frm_Ped.CODDIG.Text              :=IntToStr(codusr);
   flcadusr(1,0,Frm_Ped.CODDIG.Text);
   Frm_Ped.NOMDIG.Text              :=DM4.Tb_UsrNOMUSR.Value;
   Frm_Ped.HORDIG.Text              :=FormatDatetime('hh:nn:ss',time);
   Frm_Ped.DATAP.Text               :=FormatDatetime('dd/mm/yyyy',date);
   moper:=0;
   mqtd:=1;
   mem_ped02part.First;
   while not mem_ped02part.Eof do
      begin
      if mem_ped02partP2CODPRO.IsNull then
         begin
         mem_ped02part.Next;
         Continue;
         end;
      if not flcadpro(1,0,0,mem_ped02partP2CODPRO.AsString) then
         begin
         mem_ped02part.Next;
         Continue;
         end;
      if (valint(copy(mpseg,4,2))=2) and
         (DM1.Tb_PargerPPCOGRA.Value=1) then
         flcadlgc(0,1,0,mem_ped02partP2CODPRO.AsString,mem_ped02partP2LOTE.AsString,'');
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[00],mqtd]:=DM1.Tb_ProPDCODPRO.AsString;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[01],mqtd]:=mem_ped02partP2QTD.AsString;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[02],mqtd]:=DM1.Tb_ProPDUND.Value;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[03],mqtd]:=DM1.Tb_ProPDNOME.Value;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[04],mqtd]:=mem_ped02partP2PRECO.AsString; // PCO UNITARIO
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[06],mqtd]:=mem_ped02partP2DESC01.AsString; // DESC.01
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[07],mqtd]:=mem_ped02partP2DESC02.AsString; // DESC. 02
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[08],mqtd]:=mem_ped02partP2DESC03.AsString; // DESC. 03
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[05],mqtd]:=Formatfloat(mcasas,mem_ped02partP2QTD.AsFloat*mem_ped02partP2PRECO.AsFloat);
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[09],mqtd]:=mem_ped02partP2LOTE.AsString; // grade
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[10],mqtd]:=''; // dt vcto
      Frm_Ped.STG1.cells[Frm_Ped.stg1_col[17],mqtd]:=FormatFloat('000',DM1.Tb_ProPDSIT.AsFloat);
      Frm_Ped.STG1.cells[Frm_Ped.stg1_col[18],mqtd]:=DM1.Tb_ProPDTABICM.Value;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[19],mqtd]:=Formatfloat('0',DM1.Tb_ProPDLISTA.Value);
      Frm_Ped.STG1.cells[Frm_Ped.stg1_col[24],mqtd]:=mem_ped02partP2PRECO.AsString;
      Frm_Ped.STG1.cells[Frm_Ped.stg1_col[25],mqtd]:=DM1.Tb_ProPDCODFOR.AsString;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[29],mqtd]:=''; // unidade
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[11],mqtd]:=''; // descricao alternada

      if Tb_Ped02D.Active then
         begin
         Tb_Ped02D.First;
         if (valint(copy(mpseg,4,2))=2) then
            begin
            if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
               begin
               While not (Tb_Ped02D.Eof) and (ValFloat(CODPRO.Text)=Tb_Ped02DP2DCODPRO.Value)
                     and (trim(GRADE.Text)=trim(Tb_Ped02DP2DGRADE.AsString)) do
                  begin
                  Frm_Ped.STG1.Cells[11,mqtd]:=Frm_Ped.STG1.Cells[11,mqtd]+Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end
            end
         else
            begin
            if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
               begin
               While not (Tb_Ped02D.Eof) and (ValFloat(CODPRO.Text)=Tb_Ped02DP2DCODPRO.Value) do
                  begin
                  Frm_Ped.STG1.Cells[11,mqtd]:=Frm_Ped.STG1.Cells[11,mqtd]+Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end;
            end;
         end;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[30],mqtd]:='0';   // Media de descontos
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[31],mqtd]:=mem_ped02partP2DESC01.AsString; // DESC.01 '0';   // percentual de comissao
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[32],mqtd]:=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[33],mqtd]:='0';   // Isentas
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[34],mqtd]:=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);
      if DM4.Tb_Par01PORDGPED.Value=1 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=2 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME2.Value
      else if DM4.Tb_Par01PORDGPED.Value=3 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=insere(DM1.Tb_ProPDCODPRO.AsString,'0',15)
      else if DM4.Tb_Par01PORDGPED.Value=4 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=DM1.Tb_ProPDMARCA.Value+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=5 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=FormatFloat('00',DM1.Tb_ProPDLISTA.Value)+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=6 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=DM1.Tb_ProPDSECAO.Value+DM1.Tb_ProPDNOME.Value
      else
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[35],mqtd]:=Formatfloat('000000000',mqtd);
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[36],mqtd-1]:=mem_ped02partP2DESCFIN.AsString;
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[37],mqtd-1]:=FormatFloat(mcasas,mem_ped02partP2TOTAL.AsFloat*mem_ped02partP2DESCFIN.AsFloat/100);
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[40],mqtd-1]:=iif(DM1.Tb_LGCCLPCUSTO.IsNull,0,DM1.Tb_LGCCLPCUSTO.AsString)
       else
         Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[40],mqtd-1]:=iif(DM1.Tb_ProPDPRECOC.IsNull,0,DM1.Tb_ProPDPRECOC.AsString);
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[41],mqtd-1]:=iif(DM1.Tb_ProPDPMC.IsNull,0,DM1.Tb_ProPDPMC.AsString);
      Frm_Ped.STG1.Cells[Frm_Ped.stg1_col[42],mqtd-1]:='';
      mqtd:=mqtd+1;
      mem_ped02part.Next;
      end;


   flcadcli(1,0,trim(CODCLI.Text));
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   Frm_Ped.CODPV.Text   :=CODPV.Text;
   Frm_Ped.CB_TABPV.Text:=CB_TABPV.Text;

   if not flcadpv(1,0,Frm_Ped.CB_TABPV.Text,Frm_Ped.CODPV.Text) then
      begin
      Frm_Ped.CODPV.Text:='';
      Frm_Ped.NOMPV.Text:='';
      end
   else
      Frm_Ped.NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   Frm_Ped.CHAVE.Text :='';
   Frm_Ped.ORDEM.Text :='';
   Frm_Ped.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
   Frm_Ped.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   Frm_Ped.DATAP.Text :=FormatDatetime(fdt2,date);
   Frm_Ped.DATANF.Text:='/  /';
   Frm_Ped.NUMNF.Text  :='';
   Frm_Ped.NPEDORI.Text:=CHAVE.Text;
   Frm_Ped.SERIENF.Text:='';
   Frm_Ped.SUBSER.Text :='';
   Frm_Ped.PCOMIS.Text :='';
   Frm_Ped.MODELO.Text :='';
   Frm_Ped.OBS1.Text   :=MOBS01.Text;
   Frm_Ped.OBS2.Text   :=MOBS02.Text;
   Frm_Ped.OBS3.Text   :=MOBS03.Text;
   Frm_Ped.STATUS.Text :='0';
   Frm_Ped.mtipop_ant          :=1;
   Frm_Ped.CB_TIPO2.ItemIndex  :=Frm_Ped.mtipop_ant;
   Frm_Ped.CB_TIPO2.text:=Frm_Ped.CB_TIPO2.items[Frm_Ped.CB_TIPO2.itemIndex];
   Frm_Ped.mtipop_ant:=Frm_Ped.CB_TIPO2.ItemIndex;

   with Frm_Ped.CB_TIPO do ItemIndex:=Items.IndexOf(Frm_Ped.CB_TIPO2.Text);
   Frm_Ped.CB_TIPO.text:=Frm_Ped.CB_TIPO.items[Frm_Ped.CB_TIPO.itemIndex];


   Frm_Ped.CODDIG.Text :=Inttostr(codusr);
   Frm_Ped.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
   flcadusr(1,0,Inttostr(codusr));
   Frm_Ped.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
   Frm_Ped.DTMOD.Text  :='';
   Frm_Ped.NOMUSRM.Text:='';
   Frm_Ped.CB_CONF.Checked:=False;
   Frm_Ped.CODCON.Text    :='';
   Frm_Ped.DATCON.Text :='/  /';
   Frm_Ped.HORCON.Text :='';
   Frm_Ped.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
   Frm_Ped.CB_ECF.Checked:=False;
   Frm_Ped.DESC01.Text   :='0';
   Frm_Ped.DESC02.Text   :='0';
   Frm_Ped.VALDES.Text   :='0';
   Frm_Ped.CODTRA.Text:='';
   Frm_Ped.NOMTRA.Text:='';
   Frm_Ped.QTDVOL.Text:='0';
   Frm_Ped.PESOL.Text :='0';
   Frm_Ped.PESOB.Text :='0';
   Frm_Ped.ESPECIE.Text       :='';
   Frm_Ped.RGFRETEPC.ItemIndex:=0;
   Frm_Ped.VALFRE.Text        :='0';
   Frm_Ped.UFPV.Text          :='';
   Frm_Ped.PLACAV.Text        :='';
   Frm_Ped.CODBCO.Text        :='';
   Frm_Ped.RGCODSER.ItemIndex :=0;
   mcodldr            :=0;
   mbcissqn           :=0;
   missqn             :=0;
   Frm_Ped.CODVEN2.Text:='';
   Frm_Ped.NOMVEN2.Text:='';
   Frm_Ped.CODVEN3.Text:='';
   Frm_Ped.NOMVEN3.Text:='';
   Frm_Ped.CODVEN.Text:=CODVEN.Text;
   if flcadven(1,0,Trim(Frm_Ped.CODVEN.Text)) then
      Frm_Ped.NOMVEN.Text:=DM1.Tb_VenVNOME.Value
   else
      Frm_Ped.CODVEN.Text:='';
   mcomis     :=0;
   Frm_Ped.RG_ORIGEM.ItemIndex:=0;
   Frm_Ped.CODTLV.Text:=CODTLV.Text;
   Frm_Ped.NOMTLV.Text:=NOMTLV.Text;
   Frm_Ped.CB_ETIVOL.Checked :=False;
   Frm_Ped.CODSEP.Text:='';
   Frm_Ped.NOMSEP.Text:='';
   Frm_Ped.DATSEP.Text:='/  /';
   Frm_Ped.HORSEP.Text:='';
   Frm_Ped.codemb.Text:='';
   Frm_Ped.NOMEMB.Text:='';
   Frm_Ped.NUMCF.Text:='0';
   Frm_Ped.PEDORI1.Text:='Pedido Particionado: Chave: '+CHAVE.Text+' Data: '+st_dataped.Caption;
   Frm_Ped.BBCALCULAR.Click;
   mGravarCh_Terc:=true;
   mChaveTerc    :=0;
   Frm_Ped.ShowModal;
   Frm_Ped.Free;
   Frm_Ped:=nil;
   end;

TabSheet1.TabVisible:=false;
bblimpar.click;
CHAVE.Text         :='';
NOMCLI_PED.Text    :='';
POBS01.Text        :='';
st_dataped.Caption :='/  /';
st_totalped.Caption:='/  /';

end;

procedure TFrm_PedPart.GRADEExit(Sender: TObject);
var
x: Integer;
begin
if (Trim(GRADE.Text)='') then
   exit;
if not flcadlgc(0,1,0,Trim(codpro.Text),GRADE.Text,'') then
   begin
   fmensagem('Grade Nao cadastrada!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;


if (mop_pedpart=0)  then
   begin
   if fExisteProduto(fSonumero(CODPRO.Text)) then
      begin
      if fmensagem('Produto já digitado quer altera-lo?',0,['0'],2)=mrYes then
         begin
         mop_pedpart:=1;
         fPreparaEdicaoItem(0);
         end
      else
         begin
         CODPRO.Text:='';
         CODPRO.SetFocus;
         exit;
         if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            mop_pedpart:=1;
            end
         else
            begin
            CODPRO.Text:='';
            CODPRO.SetFocus;
            exit;
            end;
         end;
      end;
   end
else
   begin
   if fExisteProduto(fSonumero(CODPRO.Text)) then
      begin
      fmensagem('Este Código ja Existe no Pedido. Invalido!',0,['0'],0);
      CODPRO.Text:=mem_ped02partP2CODPRO.AsString;
      CODPRO.SetFocus;
      exit;
      end;
   end;
mqtdped:=0;
mqtdrom:=0;
if (trim(GRADE.Text)<>'') then
   begin
   if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      PCOUNI.Value  :=Tb_PedP2PRECO.Value;
      MDESCI01.Value:=Tb_PedP2DESC1.Value;
      MDESCI02.Value:=Tb_PedP2DESC2.Value;
      MDESCI03.Value:=Tb_PedP2DESC3.Value;
      end
   else
      begin
      fmensagem('Produto não Encontrado no Pedido de Origem!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;


if (trim(GRADE.Text)<>'') then
   begin
   if Tb_Rom.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
      mqtdrom:=Tb_RomQTD.Value
   end;
if mqtdrom>=mqtdped then
   begin
   fmensagem('Este Produto ja Foi Todo Enviado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   QTD.Text:=FormatFloat(mcasqtd, (mqtdped-mqtdrom));
   //TOTALI.Caption:=FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text));
   end;
end;

procedure TFrm_PedPart.MDESCI01Exit(Sender: TObject);
begin
if (MDESCI01.Value<0) or (MDESCI01.Value>90) then
   begin
   fmensagem('Desconto Inválido!',0,['0'],0);
   MDESCI01.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.MDESCI02Exit(Sender: TObject);
begin
MDESCI02.Text:=FormatFloat(mcasas,ValFloat(MDESCI02.Text));
if (Valfloat(MDESCI02.Text)<0) or (valfloat(MDESCI02.Text)>90) then
   begin
   fMensagem('Desconto Inválido!',0,['0'],0);
   MDESCI02.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.MDESCI03Exit(Sender: TObject);
begin
MDESCI03.Text:=FormatFloat(mcasas,ValFloat(MDESCI03.Text));
if (Valfloat(MDESCI03.Text)<0) or (valfloat(MDESCI03.Text)>90) then
   begin
   fMensagem('Desconto Inválido!',0,['0'],0);
   MDESCI03.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.DESCFINPExit(Sender: TObject);
begin
DESCFINP.Text:=FormatFloat(mcasas,ValFloat(DESCFINP.Text));
if (Valfloat(DESCFINP.Text)<0) or (valfloat(DESCFINP.Text)>90) then
   begin
   fMensagem('Desconto Inválido!',0,['0'],0);
   DESCFINP.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.COMISPExit(Sender: TObject);
begin
COMISP.Text:=FormatFloat(mcasas,ValFloat(COMISP.Text));
if (Valfloat(COMISP.Text)<0) or (valfloat(COMISP.Text)>90) then
   begin
   fMensagem('Comissão Inválida!',0,['0'],0);
   COMISP.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedPart',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedPart.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_PedPart',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedPart.CB_TABPVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if form_pv_pedpart=nil then
      Application.CreateForm(Tfrm_PV, form_pv_pedpart)
   else
      begin
      form_pv_pedpart.Free;
      form_pv_pedpart:=nil;
      Application.CreateForm(Tfrm_PV, form_pv_pedpart);
      end;
   form_pv_pedpart.Edit1.Text:='';
   form_pv_pedpart.BBnAtu.Click;
   form_pv_pedpart.Edit1.SelStart:=1;
   form_pv_pedpart.Edit1.SelLength:=1;
   form_pv_pedpart.PC1.ActivePage:=form_pv_pedpart.tsTab;
   pv_ori:='Pedido_Autop_PedPart';
   if form_pv_pedpart.ShowModal=mrok then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      CODVENExit(self);
      end;
   form_pv_pedpart.Free;
   form_pv_pedpart:=nil;
   end;



end;

procedure TFrm_PedPart.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if form_pv_pedpart=nil then
      Application.CreateForm(Tfrm_PV, form_pv_pedpart)
   else
      begin
      form_pv_pedpart.Free;
      form_pv_pedpart:=nil;
      Application.CreateForm(Tfrm_PV, form_pv_pedpart);
      end;
   form_pv_pedpart.Edit1.Text:=key;
   form_pv_pedpart.BBnAtu.Click;
   form_pv_pedpart.Edit1.SelStart:=1;
   form_pv_pedpart.Edit1.SelLength:=1;
   form_pv_pedpart.PC1.ActivePage:=form_pv_pedpart.tsTab;
   pv_ori:='Pedido_Autop_PedPart';
   if form_pv_pedpart.ShowModal=mrok then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      CODPVExit(self);
      end;
   form_pv_pedpart.Free;
   form_pv_pedpart:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedPart.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_PedPart',Key);
   if trim(CODTLV.Text)<>'' then
      CODTLVExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PedPart.CODCLIExit(Sender: TObject);
begin
if not (CB_TABPV.Focused) and (trim(CODCLI.Text)='') then
   exit;
CODCLI.Text:=fdeixanum(CODCLI.Text);
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   fMensagem('Favor Corrigir o Estado do Cadastro do Cliente!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.CB_TABPVExit(Sender: TObject);
begin
with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.Items.Strings[CB_TABPV.ItemIndex];

if (BBLIMPAR.Focused) or (BBSAIR.Focused) then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') then
   begin
   fMensagem('Tabelas Válidas "AV","AP","PP"',0,['0'],0);
   exit;
   end;

end;

procedure TFrm_PedPart.CODPVExit(Sender: TObject);
begin
if not (CODVEN.Focused) and (trim(CODPV.Text)='')  then
   exit;
if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
   CB_TABPV.SetFocus;
   end
else
   begin
   NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   end;
end;

procedure TFrm_PedPart.CODVENExit(Sender: TObject);
begin
if not (CODTLV.Focused) and (trim(CODVEN.Text)='') then
   exit;
CODVEN.Text:=fdeixanum(CODVEN.Text);

if not flcadven(1,0,CODVEN.Text) then
   begin
   fMensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end
else
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;

end;

procedure TFrm_PedPart.CODTLVExit(Sender: TObject);
begin
if Trim(CODTLV.Text)='0' then
   CODTLV.Text:='';
if trim(CODTLV.Text)='' then
   exit;
if not flcadusr(1,0,CODTLV.Text) then
   begin
   fMensagem('Vendedor nao Cadastrado!',0,['0'],0);
   CODTLV.SetFocus;
   end
else
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_PedPart.MOBS01Exit(Sender: TObject);
begin
if (length(MOBS01.Text)>59) then
   MOBS01.Text:=copy(MOBS01.Text,1,60);

end;

procedure TFrm_PedPart.MOBS02Exit(Sender: TObject);
begin
if (length(MOBS02.Text)>59) then
   MOBS02.Text:=copy(MOBS02.Text,1,60);

end;

procedure TFrm_PedPart.MOBS03Exit(Sender: TObject);
begin
if (length(MOBS03.Text)>59) then
   MOBS03.Text:=copy(MOBS03.Text,1,60);

end;

function TFrm_PedPart.fExisteProduto(pCodpro: Real): Boolean;
var
mPosReg: TBookmark;
begin
mPosReg:=mem_ped02part.GetBookmark;
if mem_ped02part.Locate('P2CODPRO',pcodpro,[]) then
   result:=true
else
   result:=false;
mem_ped02part.GotoBookmark(mPosReg);
end;


function TFrm_PedPart.fPreparaEdicaoItem(pTipo: Integer): Boolean;
begin
CODPRO.Text :=mem_ped02partP2CODPRO.AsString;
GRADE.Text  :=mem_ped02partP2LOTE.AsString;
NOMPRO.Text :=mem_ped02partPDNOME.AsString;
UND.Text    :=mem_ped02partPDUND.AsString;
QTD.Value   :=mem_ped02partP2QTD.AsFloat;

PCOUNI.Value:=mem_ped02partP2PRECO.Value;
MDESCI01.Value:=mem_ped02partP2DESC01.Value;
MDESCI02.Value:=mem_ped02partP2DESC02.Value;
MDESCI03.Value:=mem_ped02partP2DESC03.Value;

TOTALI.Value:=mem_ped02partP2TOTAL.Value;


DESCFINP.Value:=mem_ped02partP2DESCFIN.Value;
COMISP.Value:=mem_ped02partP2COMIS.Value;

mPosReg_registro:=mem_ped02part.GetBookmark;




end;




procedure TFrm_PedPart.ITEM_EDITARClick(Sender: TObject);
begin
if not mem_ped02partP2CODPRO.IsNull then
   begin
   fPreparaEdicaoItem(0);
   mop_pedpart:=1;
   CODPRO.SetFocus;
   end;
end;

procedure TFrm_PedPart.DBGrid3DblClick(Sender: TObject);
begin
ITEM_EDITARClick(self);

end;

procedure TFrm_PedPart.TOTALIEnter(Sender: TObject);
begin
if trim(NOMPRO.Text)<>'' then
   begin
   ITEM_GRAVARClick(self);
   exit;
   end;
end;

procedure TFrm_PedPart.ExluirItem1Click(Sender: TObject);
begin
bbExcluirClick(self);
end;

procedure TFrm_PedPart.Src_PedPart02DataChange(Sender: TObject;
  Field: TField);
begin
{
if (not Qr_pedPart02_mp.Active) or
   (Qr_PedPart02_MPP2MP_CODPRO_ORI.AsFloat<>Qr_PedPart02P2CODPRO.AsFloat) or
   (Qr_PedPart02_MPP2MP_LOTE_ORI.AsString<>Qr_PedPart02P2LOTE.AsString) then
   begin
   Qr_PedPart02_mp.Close;
   Qr_PedPart02_mp.SQL.Clear;
   Qr_PedPart02_mp.SQL.Add('Select P2MP_QTDSOL,P2MP_PRECO,P2MP_CODPRO '
                     +',P2MP_LOTE '
                     +',P2MP_DTVCTO '
                     +',P2MP_CODPRO_ORI '
                     +',P2MP_LOTE_ORI '
                     +',P2MP_DTVCTO_ORI  '
                     +',P2MP_OUTINF  '
                     +' ,P2MP_DATAHORA_SOL'
                     +', P2MP_QTD_SOBRA'
                     +', P2MP_QTD_DEVOL'
                     +', P2MP_QTD_QUEBRA'
                     +', P2MP_QTD_OUTRET'
                     +', PDNOME AS NOMPRO '

                    );

   Qr_PedPart02_mp.SQL.Add(' from CADP02_MP,CADPRO '
                       +'       where '
                       +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2MP_CODEMP=0'+Qr_PedPart02P2CODEMP.AsString+' and ')
                       +' P2MP_CHAVE=0'+Qr_PedPart02P2CHAVE.AsString
                       +' and P2MP_LOTSEQ='+Qr_PedPart02P2LOTSEQ.AsString
                       +' and P2MP_CHAVE='+Qr_PedPart02P2CHAVE.AsString
                       +' and P2MP_CODPRO_ORI='+Qr_PedPart02P2CODPRO.AsString
                       +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                       +' and PDCODPRO=P2MP_CODPRO '                       );
   if trim(Qr_PedPart02P2LOTE.AsString)<>'' then
      begin
      Qr_PedPart02_MP.SQL.Add(' and P2MP_LOTE_ORI=:LOTE_ORI ');
      Qr_PedPart02_MP.ParamByName('LOTE_ORI').AsString:=Qr_PedPart02P2LOTE.AsString;
      end;
   //Qr_PedPart02_MP.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   try
      Qr_PedPart02_MP.Open;
   except
      Qr_PedPart02_MP.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   end;

}
end;

function Tfrm_PedPart.fMateriasPrimas(pTipo: Integer):Boolean;
begin

if DM1.Tb_PargerPINDUSTRIA.Value=68 then
   begin
   form_Ped_02_MPPed_PedPart.txt_codpro.Caption    :='';
   form_Ped_02_MPPed_PedPart.txt_descricao.Caption :='';
   form_Ped_02_MPPed_PedPart.txt_lote.Caption      :='';
   form_Ped_02_MPPed_PedPart.txt_dtvcto.Caption    :='/  /';
   form_Ped_02_MPPed_PedPart.txt_quantidade.Caption:='0';
   form_Ped_02_MPPed_PedPart.txt_pcounit.Caption   :='0';
   form_Ped_02_MPPed_PedPart.txt_vltotal.Caption   :='0';

   end
else
   begin
   form_Ped_02_MPPed_PedPart.txt_codpro.Caption    :=Pedido_02_PedPart.QryItem_NotaP2CODPRO.AsString;
   form_Ped_02_MPPed_PedPart.txt_descricao.Caption :=Pedido_02_PedPart.QryItem_NotaNOMEPRO.AsString;
   form_Ped_02_MPPed_PedPart.txt_lote.Caption      :=Pedido_02_PedPart.QryItem_NotaP2LOTE.AsString;
   if Pedido_02_PedPart.QryItem_NotaP2DTVCTO.AsDateTime<=pdatanula then
      form_Ped_02_MPPed_PedPart.txt_dtvcto.Caption :='/  /'
   else
      form_Ped_02_MPPed_PedPart.txt_dtvcto.Caption :=FormatDatetime(fdt2, Pedido_02_PedPart.QryItem_NotaP2DTVCTO.AsDateTime);
   form_Ped_02_MPPed_PedPart.txt_quantidade.Caption:=FormatFloat(mcasqtd, Pedido_02_PedPart.QryItem_NotaP2QTD.AsFloat);
   form_Ped_02_MPPed_PedPart.txt_pcounit.Caption   :=FormatFloat(mcasaspu, Pedido_02_PedPart.QryItem_NotaP2PRECO.AsFloat);
   form_Ped_02_MPPed_PedPart.txt_vltotal.Caption   :=FormatFloat(mcasas, Pedido_02_PedPart.QryItem_Notavlr_total.AsFloat);
   end;
Pedido_02_PedPart.mFiltro_Codpro:=Pedido_02_PedPart.QryItem_NotaP2CODPRO.AsFloat;
Pedido_02_PedPart.mFiltro_Lote  :=Pedido_02_PedPart.QryItem_NotaP2LOTE.AsString;
Pedido_02_PedPart.mFiltro_Preco :=Pedido_02_PedPart.QryItem_NotaP2PRECO.AsFloat;;
Pedido_02_PedPart.mFiltro_Qtd   :=Pedido_02_PedPart.QryItem_NotaP2QTD.AsFloat;;


Pedido_02_PedPart.mTotbruMP:=0;
Pedido_02_PedPart.mQtdItemMP:=0;


form_Ped_02_MPPed_PedPart.lbl_total.Caption:=Formatfloat(mcasas, Pedido_02_PedPart.mTotbruMP);
if Log_TipoLote=1 then
   form_Ped_02_MPPed_PedPart.txt_lote.TabStop:=false;
//form_Ped_02_MPPed_PedPart.ShowModal;
result:=true;
end;

procedure TFrm_PedPart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PedPart.Qr_PedPart02_MPCalcFields(DataSet: TDataSet);
begin
Qr_PedPart02_MPtotal_pro.Value:=Arredonda((Qr_PedPart02_MPP2MP_QTDSOL.AsFloat*Qr_PedPart02_MPP2MP_PRECO.AsFloat),DM1.Tb_PargerPCASAS.AsInteger);

end;

end.
