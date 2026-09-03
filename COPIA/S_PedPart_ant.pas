unit S_PedPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,S_DM4,func,lerarq,S_PedCli,
  Grids, DBGrids, ComCtrls, Mask,S_Tra,S_Usr, DB,S_Pro, DBTables,S_Ven,S_Pv,
  RxMemDS, ToolEdit, CurrEdit;

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
    STG1: TStringGrid;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    UND: TEdit;
    BitBtn6: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
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
    StaticText8: TStaticText;
    ST_DESCRICAO: TStaticText;
    StaticText10: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    lbl_desc01: TStaticText;
    lbl_desc02: TStaticText;
    lbl_desc03: TStaticText;
    st_descivlr: TStaticText;
    lbl_descfin: TStaticText;
    lbl_comis: TStaticText;
    StaticText18: TStaticText;
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
    st_grade: TStaticText;
    GRADE: TEdit;
    Tb_Pedqtdrom: TFloatField;
    Src_Ped: TDataSource;
    Tb_Pedsaldo: TFloatField;
    Tb_Pednompro: TStringField;
    Tb_Pedund: TStringField;
    bbPendencia: TBitBtn;
    DBGrid2: TDBGrid;
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
    QTD: TCurrencyEdit;
    PCOUNI: TCurrencyEdit;
    MDESCI01: TCurrencyEdit;
    MDESCI02: TCurrencyEdit;
    MDESCI03: TCurrencyEdit;
    VALDESI: TCurrencyEdit;
    DESCFINP: TCurrencyEdit;
    COMISP: TCurrencyEdit;
    TOTALI: TCurrencyEdit;
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure bb_PesquisarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure PCOUNIExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
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
    procedure VALDESIExit(Sender: TObject);
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
  private
    function fromcalc(ptipo: Integer): Boolean;
    function fCarrega(ptipo: Integer): Boolean;
    function fromExcluir(ptipo: Integer): Boolean;
    function fRomGravar(ptipo: Integer): Boolean;

    function fExisteProduto(pCodpro: Real): Boolean;
    function fPreparaEdicaoItem(pTipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedPart: TFrm_PedPart;
  pedPart_Ori: String;
  PedParoper,mop_pedpart: Integer;
  mqtdrom,mqtdped: Real;
  mcodigo: Integer;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;


  
implementation

uses S_DM2, func_excecoes, S_PedPart_Pend, S_Ped,S_Ped_AutoP;

{$R *.dfm}

procedure TFrm_PedPart.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_PedPart.bb_PesquisarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_PedCli, Frm_PedCli);
Frm_PedCli.ShowModal;
CHAVE.Text:=Frm_PedCli.CHAVE.Text;
NOMCLI_pED.Text:=Frm_PedCli.Tb_PedCRAZAO.Value;
Frm_PedCli.Free;
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
                  +' and P1ORDEM=1');
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   MessageDlg('Chave Não Encontrada!',mtWarning,[mbOk],0);
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
Qr_PedPart01.Sql.Add('Select P1CODEMP,P1CHAVE,P1CODCLI,P1DATAP,P1OBS1, '
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
                    +' from CADP01 where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),' ',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                    +' P1NPEDORI=0'+Trim(chave.Text));
Qr_PedPart01.Open;


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


BBINCLUIR.Enabled:=bbinc_true;
bbPendencia.Enabled:=true;
end;

procedure TFrm_PedPart.CODPROExit(Sender: TObject);
var
x: Integer;
begin
if (ITEM_CANCELAR.Focused) or (Trim(CODPRO.Text)='') then
   exit;
CODPRO.Text:=FloatToStr(ValFloat(CODPRO.Text));
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   UND.Text   :=DM1.Tb_ProPDUND.Value;
   end;
{
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


               STG1.Row:=x;
               CODPRO.Text   :=STG1.Cells[00,STG1.Row];
               GRADE.Text    :=STG1.Cells[01,STG1.Row];
               QTD.Text      :=STG1.Cells[02,STG1.Row];
               UND.Text      :=STG1.Cells[03,STG1.Row];
               NOMPRO.Text   :=STG1.Cells[04,STG1.Row];
               PCOUNI.Text   :=STG1.Cells[05,STG1.Row];
               MDESCI01.Text :=STG1.Cells[06,STG1.Row];
               MDESCI02.Text :=STG1.Cells[07,STG1.Row];
               MDESCI03.Text :=STG1.Cells[08,STG1.Row];
               VALDESI.Text  :=STG1.Cells[09,STG1.Row];
               TOTALI.Caption:=STG1.Cells[10,STG1.Row];
               break;
               end
            else
               begin
               CODPRO.Text:='';
               CODPRO.SetFocus;
               break;
               exit;
               end;
            end;
         end;
      end;
   end
else
   begin
   if ValInt(copy(mpseg,4,2))<>2 then
      begin
      if Trim(STG1.Cells[00,STG1.Row])<>Trim(CODPRO.Text) then
         begin
         for x:=1 to STG1.RowCount-1 do
            begin
            if (Trim(STG1.Cells[0,x])='') or (x=STG1.Row) then
               continue;
            if trim(codpro.Text)=trim(STG1.Cells[0,x]) then
               begin
               MessageDlg('Este Código ja Existe no Pedido. Invalido!',mtWarning,[mbOk],0);
               CODPRO.Text:=STG1.Cells[0,STG1.Row];
               CODPRO.SetFocus;
               break;
               exit;
               end;
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
         PCOUNI.Text:=FormatFloat(mcasaspu, Tb_PedP2PRECO.Value);
         MDESCI01.Text:=FormatFloat(mcasas, Tb_PedP2DESC1.Value);
         MDESCI02.Text:=FormatFloat(mcasas, Tb_PedP2DESC2.Value);
         MDESCI03.Text:=FormatFloat(mcasas, Tb_PedP2DESC3.Value);
         VALDESI.Text :=FormatFloat(mcasas, Tb_PedP2VALDES.Value);
         end;
      end;
   end
else
   begin
   if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      PCOUNI.Text:=FormatFloat(mcasaspu, Tb_PedP2PRECO.Value);
      MDESCI01.Text:=FormatFloat(mcasas, Tb_PedP2DESC1.Value);
      MDESCI02.Text:=FormatFloat(mcasas, Tb_PedP2DESC2.Value);
      MDESCI03.Text:=FormatFloat(mcasas, Tb_PedP2DESC3.Value);
      VALDESI.Text :=FormatFloat(mcasas, Tb_PedP2VALDES.Value);
      end
   else
      begin
      MessageDlg('Produto não Encontrado no Pedido de Origem!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;
}

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
      MessageDlg('Este Produto ja Foi Todo Enviado!',mtWarning,[mbOk],0);
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
if (Screen.WIDTH=800) and
   (Screen.Height=600) then
   Frm_PedPart.WindowState:=wsMaximized;
pedPart_Ori:='';
STG1.RowCount:=2;

STG1.ColWidths[00]:=80; // CODIGO
if ValInt(copy(mpseg,4,2))=2 then
   begin
   STG1.ColWidths[01]:=80;  // GRADE
   end
else
   begin
   STG1.ColWidths[01]:=0;  // GRADE
   st_grade.Visible  :=false;
   GRADE.Visible     :=false;
   ST_DESCRICAO.Left :=172;
   NOMPRO.Left       :=239;
   NOMPRO.Width      :=354;
   end;

if ValInt(copy(mpseg,4,2))=2 then
   DBGrid2.Columns[2].Visible:=false
else if ValInt(copy(mpseg,4,2))=1 then
   DBGrid2.Columns[1].Title.Caption:='Lote'
else
   begin
   DBGrid2.Columns[1].Visible:=false;
   DBGrid2.Columns[2].Visible:=false;
   end;

STG1.ColWidths[02]:=80; //Quantidade
STG1.ColWidths[03]:=30; // 'Und';
STG1.ColWidths[04]:=200; // 'Descrição';
STG1.ColWidths[05]:=80; // 'Pço.Unitário';
STG1.ColWidths[06]:=50; // 'Desc.01';
STG1.ColWidths[07]:=50; // 'Desc.02';
STG1.ColWidths[08]:=50; // 'Desc.03';
STG1.ColWidths[09]:=80; // 'Desc.Valor';
STG1.ColWidths[10]:=80; // 'Valor Total';
STG1.ColWidths[11]:=80; // 'Comissao';
STG1.ColWidths[12]:=80; // 'Desconto financeiro';
STG1.ColWidths[13]:=80; // 'Total Desconto';

STG1.Cells[00,0]:='Código';
STG1.Cells[01,0]:='Grade';
STG1.Cells[02,0]:='Quantidade';
STG1.Cells[03,0]:='Und';
STG1.Cells[04,0]:='Descrição';
STG1.Cells[05,0]:='Pço.Unitário';
STG1.Cells[06,0]:='Desc.01';
STG1.Cells[07,0]:='Desc.02';
STG1.Cells[08,0]:='Desc.03';
STG1.Cells[09,0]:='Desc.Valor';
STG1.Cells[10,0]:='Valor Total';
STG1.Rows[1].Clear;
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


end;

procedure TFrm_PedPart.QTDExit(Sender: TObject);
begin
QTD.Text:=FormatFloat(mcasqtd,ValFloat(QTD.Text));
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) or (BitBtn1.Focused) then
   exit;
if ValFloat(QTD.Text)<=0 then
   begin
   ShowMessage('Favor Digitar uma Quantidade Valida');
   QTD.SetFocus;
   exit;
   end;
if ValFloat(QTD.Text)>(mqtdped-mqtdrom) then
   begin
   MessageDlg('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',mtWarning,[mbOk],0);
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
   MessageDlg('Valor Inválido!',mtWarning,[mbOk],0);
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
   MessageDlg('Favor Digitar um código Valido',mtWarning,[mbOk],0);
   CODPRO.Text;
   exit;
   end;
if ValFloat(QTD.Text)<=0 then
   begin
   MessageDlg('Favor Digitar uma Quantidade Valida!',mtWarning,[mbOk],0);
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
   MessageDlg('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',mtWarning,[mbOk],0);
   QTD.SetFocus;
   exit;
   end;

if valfloat(PCOUNI.Text)<0 then
   PCOUNI.Text:=FormatFloat(mcasaspu,0);
if mop_pedpart>0 then
   begin
   x:=STG1.row;
   x:=x+1;
   end
else
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x+1].Clear;
   STG1.Rows[x].Clear;
   end;

{
STG1.Cells[00,x-1]:=CODPRO.Text;
STG1.Cells[01,x-1]:=GRADE.Text;
STG1.Cells[02,x-1]:=QTD.Text;
STG1.Cells[03,x-1]:=UND.Text;
STG1.Cells[04,x-1]:=NOMPRO.Text;
STG1.Cells[05,x-1]:=PCOUNI.Text;
STG1.Cells[06,x-1]:=MDESCI01.Text;
STG1.Cells[07,x-1]:=MDESCI02.Text;
STG1.Cells[08,x-1]:=MDESCI03.Text;
STG1.Cells[09,x-1]:=VALDESI.Text;
STG1.Cells[10,x-1]:=TOTALI.Caption;
STG1.Cells[11,x-1]:=COMISP.Text;
STG1.Cells[12,x-1]:=DESCFINP.Text;
}
fromcalc(0);
ITEM_CANCELAR.Click;
if x>12 then
   STG1.TopRow:=x-11;

mop_pedpart:=0;
CODPRO.SetFocus;
end;
function TFrm_PedPart.fromcalc(ptipo: Integer): Boolean;
var
x: Integer;
mtotu, mtotb: Real;
begin
mtotu:=0;
mtotb:=0;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   mtotu :=mtotu+ValFloat(STG1.Cells[02,x]);
   mtotb :=mtotb+ValFloat(STG1.Cells[10,x]);
   end;
MTOTITEM.Caption:=InttoStr(STG1.RowCount-2);
MTOTUND.Caption :=Formatfloat(mcasqtd, mtotu);
TOTAL.Caption   :=FormatFloat(mcasas,mtotb);
result:=True;
end;

procedure TFrm_PedPart.ITEM_EDITARClick(Sender: TObject);
begin
mop_pedpart:=1;
CODPRO.Text     :=STG1.Cells[00,STG1.Row];
GRADE.Text      :=STG1.Cells[01,STG1.Row];
QTD.Text        :=STG1.Cells[02,STG1.Row];
UND.Text        :=STG1.Cells[03,STG1.Row];
NOMPRO.Text     :=STG1.Cells[04,STG1.Row];
PCOUNI.Text     :=STG1.Cells[05,STG1.Row];
MDESCI01.Text   :=STG1.Cells[06,STG1.Row];
MDESCI02.Text   :=STG1.Cells[07,STG1.Row];
MDESCI03.Text   :=STG1.Cells[08,STG1.Row];
VALDESI.Text    :=STG1.Cells[09,STG1.Row];
//TOTALI.Caption  :=STG1.Cells[10,STG1.Row];
COMISP.Text     :=STG1.Cells[11,STG1.Row];
DESCFINP.Text   :=STG1.Cells[12,STG1.Row];

CODPRO.Setfocus;
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
VALDESI.Text  :='';
//TOTALI.Caption:='';
DESCFINP.Text :='';
COMISP.Text   :='';
mop_pedpart:=0;
end;

procedure TFrm_PedPart.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
x:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,x]='') then
   exit;
if Application.MessageBox('Quer realmente excluir o item selecionado?',' ',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
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
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
fromcalc(0);
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
Qr_PedPart02.SQL.Add('Select P2CODEMP,P2CHAVE,P2CODPRO, '
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
MOBS02.Text  :=Qr_PedPart01P1OBS1.AsString;
MOBS03.Text  :=Qr_PedPart01P1OBS1.AsString;
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
STG1.RowCount:=2;
STG1.Rows[1].Clear;
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

procedure TFrm_PedPart.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (arow>0) and ((aCol=2) or (Acol>4)) then
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

procedure TFrm_PedPart.Src_PedPart01DataChange(Sender: TObject; Field: TField);
begin
if not (Qr_PedPart01P1CHAVE.IsNull) and (pedPart_Ori<>'consulta') then
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
   MessageDlg('Chave Não Encontrada!',mtWarning,[mbOk],0);
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

if Application.MessageBox('Deseja Incluir as Mercadorias Automaticamente?','',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
// inicio

   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   Tb_Ped.First;

   While not Tb_ped.Eof do
      begin
      if Tb_Pedqtdrom.Value>=Tb_PedQTD.Value then
         begin
         Tb_Ped.Next;
         Continue;
         end;
      x:=STG1.RowCount;
      STG1.Rows[x].Clear;
      STG1.Cells[00,x-1]:=Tb_PedP2CODPRO.AsString;
      STG1.Cells[01,x-1]:=Tb_PedP2LOTE.AsString;
      STG1.Cells[02,x-1]:=Formatfloat(mcasqtd, Tb_PedQTD.Value-Tb_Pedqtdrom.Value);
      STG1.Cells[03,x-1]:=Tb_Pedund.Value;
      STG1.Cells[04,x-1]:=Tb_Pednompro.Value;
      STG1.Cells[05,x-1]:=Formatfloat(mcasaspu, Tb_PedP2PRECO.Value);
      STG1.Cells[06,x-1]:=Formatfloat(mcasas,   Tb_PedP2DESC1.Value);
      STG1.Cells[07,x-1]:=Formatfloat(mcasas,   Tb_PedP2DESC2.Value);
      STG1.Cells[08,x-1]:=Formatfloat(mcasas,   Tb_PedP2DESC3.Value);
      STG1.Cells[09,x-1]:=Formatfloat(mcasas,   Tb_PedP2VALDES.Value);
      STG1.Cells[10,x-1]:=Formatfloat(mcasas,   Tb_PedP2PRECO.Value*(Tb_PedQTD.Value-Tb_Pedqtdrom.Value));
      STG1.RowCount:=x+1;
      Tb_Ped.Next;
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
   Case MessageDlg('O registro atual não foi faturado!'+#13
                  +'Deseja fatura-lo agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
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
   Case MessageDlg('O registro atual não foi faturado!'+#13
                  +'Deseja fatura-lo agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of

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
begin
Application.Createform(TFrm_PedPart_Pend,Frm_PedPart_Pend);
Frm_PedPart_Pend.CHAVE.Text :=CHAVE.Text;
Frm_PedPart_Pend.NOMCLI.Text:=NOMCLI.Text;

if ValInt(copy(mpseg,4,2))<>2 then
   Frm_PedPart_Pend.DBGrid1.Columns[1].Visible:=false;
Frm_PedPart_Pend.ShowModal;
Frm_PedPart_Pend.Free;
end;

procedure TFrm_PedPart.BBFATURARClick(Sender: TObject);
var
x: Integer;
begin
if valint(MTOTITEM.Caption)=0 then
   begin
   MessageDlg('Não ha ítens a ser faturado!',mtWarning,[mbOk],0);
   exit;
   end;

flcadpar01(0,codemp,'1');
if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   Application.CreateForm(TFrm_Ped_AutoP, Frm_Ped_AutoP);
   Frm_Ped_AutoP.Tool_Limpar.Click;
   flcadpar01(0,codemp,'1');
   mFatMz       :=DM4.Tb_Par01PFATMZ.AsInteger=1;
   mFatMz_LocMov:=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   mAvisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;
   Frm_Ped_AutoP.Tool_Incluir.Enabled        :=False;
   Frm_Ped_AutoP.tool_localizar.Enabled      :=False;
   Frm_Ped_AutoP.Tool_Alterar.Enabled        :=False;
   Frm_Ped_AutoP.Tool_Excluir.Enabled        :=False;
   Frm_Ped_AutoP.Tool_Gravar.Enabled         :=True;
   Frm_Ped_AutoP.Tool_LSep.Enabled       :=False;
   Frm_Ped_AutoP.Tool_EmiteNF.Enabled        :=False;
   Frm_Ped_AutoP.Tool_Calcular.Enabled       :=True;
   Frm_Ped_AutoP.Tool_Faturar.Enabled        :=False;
   Frm_Ped_AutoP.pc_Cabecalho.ActivePage   :=Frm_Ped_AutoP.ts_principais;
   Frm_Ped_AutoP.pc_Cabecalho.Enabled           :=true;
   Frm_Ped_AutoP.pc_ProdServ.Enabled        :=True;
   Frm_Ped_AutoP.ts_situacao.Enabled      :=True;
   Frm_Ped_AutoP.CB_TIPO.Enabled          :=True;
   Frm_Ped_AutoP.ts_principais.Enabled     :=True;
   Frm_Ped_AutoP.ts_outros.Enabled    :=True;
   Frm_Ped_AutoP.Tool_Arredondar.Enabled           :=True;
   Frm_Ped_AutoP.CODDIG.Text              :=IntToStr(codusr);
   flcadusr(1,0,Frm_Ped_AutoP.CODDIG.Text);
   Frm_Ped_AutoP.NOMDIG.Text              :=DM4.Tb_UsrNOMUSR.Value;
   Frm_Ped_AutoP.HORDIG.Text              :=FormatDatetime('hh:nn:ss',time);
   Frm_Ped_AutoP.DATAP.Text               :=FormatDatetime('dd/mm/yyyy',date);
   moper_ped:=0;
   mqtd:=1;

   Frm_Ped_AutoP.Tb_Ped02.Close;
   Frm_Ped_AutoP.Tb_Ped02.SQL.Clear;
   Frm_Ped_AutoP.Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
   Frm_Ped_AutoP.Tb_Ped02.Open;
   Frm_Ped_AutoP.Tb_Ped02s.Close;
   Frm_Ped_AutoP.Tb_Ped02s.SQL.Clear;
   Frm_Ped_AutoP.Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
   Frm_Ped_AutoP.Tb_Ped02s.Open;

   for x:=1 to STG1.RowCount do
      begin
      if trim(STG1.cells[00,x])='' then
         Continue;
      if not flcadpro(1,0,0,trim(stg1.Cells[00,x])) then
         begin
         Continue;
         end;
      if (valint(copy(mpseg,4,2))=2) and
         (DM1.Tb_PargerPPCOGRA.Value=1) then
         flcadlgc(1,0,trim(stg1.Cells[00,x]),trim(stg1.Cells[01,x]),'');
      Frm_Ped_AutoP.Tb_Ped02.Append;
      Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
      Frm_Ped_AutoP.Tb_Ped02P2QTD.Value   :=ValFloat(stg1.Cells[02,x]);
      Frm_Ped_AutoP.Tb_Ped02UNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
      Frm_Ped_AutoP.Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value :=ValFloat(stg1.Cells[05,x]); // PCO UNITARIO
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value :=ValFloat(stg1.Cells[06,x]); // DESC.01
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value :=ValFloat(stg1.Cells[07,x]); // DESC. 02
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value :=ValFloat(stg1.Cells[08,x]); // DESC. 03
      Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value  :=stg1.Cells[01,x]; // grade
      Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value:=pdatanula;
      Frm_Ped_AutoP.Tb_Ped02P2SIT.Value   :=DM1.Tb_ProPDSIT.Value;
      Frm_Ped_AutoP.Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
      Frm_Ped_AutoP.Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value :=DM1.Tb_ProPDPRECO1.Value;
      Frm_Ped_AutoP.Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
      if Tb_Ped02D.Active then
         begin
         Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value:='';
         Tb_Ped02D.First;
         if (valint(copy(mpseg,4,2))=2) then
            begin
            if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
               begin
               While not (Tb_Ped02D.Eof) and (ValFloat(CODPRO.Text)=Tb_Ped02DP2DCODPRO.Value)
                     and (trim(GRADE.Text)=trim(Tb_Ped02DP2DGRADE.AsString)) do
                  begin
                  Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value:=Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value
                                                        +Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end
            end
         else
            begin
            if Tb_Ped.Locate('P2CODPRO',ValFloat(CODPRO.Text),[]) then
               begin
               Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value:='';
               While not (Tb_Ped02D.Eof) and (ValFloat(CODPRO.Text)=Tb_Ped02DP2DCODPRO.Value) do
                  begin
                  Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value:=Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value
                                                        +Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end;
            end;
         end;
      Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=0;
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=ValFloat(stg1.Cells[11,x]); // DESC.01 '0';   // percentual de comissao
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOCUS.Value:=iif(DM1.Tb_LGCCLPCUSTO.IsNull,0,DM1.Tb_LGCCLPCUSTO.AsString)
       else
         Frm_Ped_AutoP.Tb_Ped02P2PCOCUS.Value:=iif(DM1.Tb_ProPDPRECOC.IsNull,0,DM1.Tb_ProPDPRECOC.AsString);
      mqtd:=mqtd+1;
      end;
   flcadcli(1,0,trim(CODCLI.Text));
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   Frm_Ped_AutoP.CODPV.Text   :=CODPV.Text;
   Frm_Ped_AutoP.CB_TABPV.Text:=CB_TABPV.Text;

   if not flcadpv(1,0,Frm_Ped_AutoP.CB_TABPV.Text,Frm_Ped_AutoP.CODPV.Text) then
      begin
      Frm_Ped_AutoP.CODPV.Text:='';
      Frm_Ped_AutoP.NOMPV.Text:='';
      end
   else
      Frm_Ped_AutoP.NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   Frm_Ped_AutoP.CHAVE.Text :='';
   Frm_Ped_AutoP.ORDEM.Text :='';
   Frm_Ped_AutoP.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
   Frm_Ped_AutoP.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   Frm_Ped_AutoP.DATAP.Text :=FormatDatetime(fdt2,date);
   Frm_Ped_AutoP.DATANF.Text:='/  /';
   Frm_Ped_AutoP.NUMNF.Text  :='';
   Frm_Ped_AutoP.NPEDORI.Text:=CHAVE.Text;
   Frm_Ped_AutoP.SERIENF.Text:='';
   Frm_Ped_AutoP.SUBSER.Text :='';
   Frm_Ped_AutoP.PCOMIS.Text :='';
   Frm_Ped_AutoP.MODELO.Text :='';
   Frm_Ped_AutoP.OBS1.Text   :=MOBS01.Text;
   Frm_Ped_AutoP.OBS2.Text   :=MOBS02.Text;
   Frm_Ped_AutoP.OBS3.Text   :=MOBS03.Text;
   mstatus                   :=0;
   mtipop      :=1;
   Frm_Ped_AutoP.CB_TIPO2.ItemIndex  :=mtipop;
   Frm_Ped_AutoP.CB_TIPO2.text:=Frm_Ped_AutoP.CB_TIPO2.items[Frm_Ped_AutoP.CB_TIPO2.itemIndex];
   mtipop:=Frm_Ped_AutoP.CB_TIPO2.ItemIndex;

   with Frm_Ped_AutoP.CB_TIPO do ItemIndex:=Items.IndexOf(Frm_Ped_AutoP.CB_TIPO2.Text);
   Frm_Ped_AutoP.CB_TIPO.text:=Frm_Ped_AutoP.CB_TIPO.items[Frm_Ped_AutoP.CB_TIPO.itemIndex];


   Frm_Ped_AutoP.CODDIG.Text :=Inttostr(codusr);
   Frm_Ped_AutoP.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
   flcadusr(1,0,Inttostr(codusr));
   Frm_Ped_AutoP.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
   Frm_Ped_AutoP.DTMOD.Text  :='';
   Frm_Ped_AutoP.NOMUSRM.Text:='';
   Frm_Ped_AutoP.CB_CONF.Checked:=False;
   Frm_Ped_AutoP.CODCON.Text    :='';
   Frm_Ped_AutoP.DATCON.Text :='/  /';
   Frm_Ped_AutoP.HORCON.Text :='';
   Frm_Ped_AutoP.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
   Frm_Ped_AutoP.DESC01.Text   :='0';
   Frm_Ped_AutoP.DESC02.Text   :='0';
   Frm_Ped_AutoP.VALDES.Text   :='0';
   Frm_Ped_AutoP.CODTRA.Text:='';
   Frm_Ped_AutoP.NOMTRA.Text:='';
   Frm_Ped_AutoP.QTDVOL.Text:='0';
   Frm_Ped_AutoP.PESOL.Text :='0';
   Frm_Ped_AutoP.PESOB.Text :='0';
   Frm_Ped_AutoP.ESPECIE.Text       :='';
   Frm_Ped_AutoP.RGFRETEPC.ItemIndex:=0;
   Frm_Ped_AutoP.VALFRE.Text        :='0';
   Frm_Ped_AutoP.UFPV.Text          :='';
   Frm_Ped_AutoP.PLACAV.Text        :='';
   Frm_Ped_AutoP.CODBCO.Text        :='';
   Frm_Ped_AutoP.RGCODSER.ItemIndex :=0;
   mcodldr            :=0;
   mbcissqn           :=0;
   missqn             :=0;
   Frm_Ped_AutoP.CODVEN2.Text:='';
   Frm_Ped_AutoP.NOMVEN2.Text:='';
   Frm_Ped_AutoP.CODVEN3.Text:='';
   Frm_Ped_AutoP.NOMVEN3.Text:='';
   if flcadven(1,0,Trim(Frm_Ped_AutoP.CODVEN.Text)) then
      Frm_Ped_AutoP.NOMVEN.Text:=DM1.Tb_VenVNOME.Value
   else
      Frm_Ped_AutoP.CODVEN.Text:='';
   mcomis     :=0;
   Frm_Ped_AutoP.CB_ORIGEM.ItemIndex:=0;
   Frm_Ped_AutoP.CODTLV.Text:=CODTLV.Text;
   Frm_Ped_AutoP.NOMTLV.Text:=NOMTLV.Text;
   Frm_Ped_AutoP.CB_ETIVOL.Checked :=False;
   Frm_Ped_AutoP.CODSEP.Text:='';
   Frm_Ped_AutoP.NOMSEP.Text:='';
   Frm_Ped_AutoP.DATSEP.Text:='/  /';
   Frm_Ped_AutoP.HORSEP.Text:='';
   Frm_Ped_AutoP.codemb.Text:='';
   Frm_Ped_AutoP.NOMEMB.Text:='';
   Frm_Ped_AutoP.NUMCF.Text:='0';
   Frm_Ped_AutoP.PEDORI1.Text:='Pedido Particionado: Chave: '+CHAVE.Text+' Data: '+st_dataped.Caption;
   Frm_Ped_AutoP.Tool_Calcular.Click;
   mGravarCh_Terc:=true;
   mChaveTerc    :=0;
   Frm_Ped_AutoP.ShowModal;
   Frm_Ped_AutoP.Free;
   Frm_Ped_AutoP:=nil;
   end
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
   Frm_Ped.STG1.RowCount:=2;
   Frm_Ped.STG1.Rows[1].Clear;
   mqtd:=1;

   for x:=1 to STG1.RowCount do
      begin
      if trim(STG1.cells[00,x])='' then
         Continue;
      Frm_Ped.STG1.RowCount:=mqtd+1;
      if not flcadpro(1,0,0,trim(stg1.Cells[00,x])) then
         begin
         Continue;
         end;
      if (valint(copy(mpseg,4,2))=2) and
         (DM1.Tb_PargerPPCOGRA.Value=1) then
         flcadlgc(1,0,trim(stg1.Cells[00,x]),trim(stg1.Cells[01,x]),'');
      Frm_Ped.STG1.Cells[stg1_col[00],mqtd]:=DM1.Tb_ProPDCODPRO.AsString;
      Frm_Ped.STG1.Cells[stg1_col[01],mqtd]:=stg1.Cells[02,x];
      Frm_Ped.STG1.Cells[stg1_col[02],mqtd]:=DM1.Tb_ProPDUND.Value;
      Frm_Ped.STG1.Cells[stg1_col[03],mqtd]:=DM1.Tb_ProPDNOME.Value;
      Frm_Ped.STG1.Cells[stg1_col[04],mqtd]:=stg1.Cells[05,x]; // PCO UNITARIO
      Frm_Ped.STG1.Cells[stg1_col[06],mqtd]:=stg1.Cells[06,x]; // DESC.01
      Frm_Ped.STG1.Cells[stg1_col[07],mqtd]:=stg1.Cells[07,x]; // DESC. 02
      Frm_Ped.STG1.Cells[stg1_col[08],mqtd]:=stg1.Cells[08,x]; // DESC. 03
      Frm_Ped.STG1.Cells[stg1_col[05],mqtd]:=Formatfloat(mcasas,(valfloat(Frm_Ped.STG1.Cells[stg1_col[01],mqtd])*ValFloat(Frm_Ped.STG1.Cells[stg1_col[04],mqtd])));
      Frm_Ped.STG1.Cells[stg1_col[09],mqtd]:=stg1.Cells[01,x]; // grade
      Frm_Ped.STG1.Cells[stg1_col[10],mqtd]:=''; // dt vcto
      Frm_Ped.STG1.cells[stg1_col[17],mqtd]:=FormatFloat('000',DM1.Tb_ProPDSIT.AsFloat);
      Frm_Ped.STG1.cells[stg1_col[18],mqtd]:=DM1.Tb_ProPDTABICM.Value;
      Frm_Ped.STG1.Cells[stg1_col[19],mqtd]:=Formatfloat('0',DM1.Tb_ProPDLISTA.Value);
      Frm_Ped.STG1.cells[stg1_col[24],mqtd]:=DM1.Tb_ProPDPRECO1.AsString;
      Frm_Ped.STG1.cells[stg1_col[25],mqtd]:=DM1.Tb_ProPDCODFOR.AsString;
      Frm_Ped.STG1.Cells[stg1_col[29],mqtd]:=''; // unidade
      Frm_Ped.STG1.Cells[stg1_col[11],mqtd]:=''; // descricao alternada

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
                  STG1.Cells[11,mqtd]:=STG1.Cells[11,mqtd]+Tb_Ped02DP2DESC.Value+' ';
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
                  STG1.Cells[11,mqtd]:=STG1.Cells[11,mqtd]+Tb_Ped02DP2DESC.Value+' ';
                  Tb_Ped02D.Next;
                  end;
               end;
            end;
         end;
      Frm_Ped.STG1.Cells[stg1_col[30],mqtd]:='0';   // Media de descontos
      Frm_Ped.STG1.Cells[stg1_col[31],mqtd]:=stg1.Cells[11,x]; // DESC.01 '0';   // percentual de comissao
      Frm_Ped.STG1.Cells[stg1_col[32],mqtd]:=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
      Frm_Ped.STG1.Cells[stg1_col[33],mqtd]:='0';   // Isentas
      Frm_Ped.STG1.Cells[stg1_col[34],mqtd]:=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);
      if DM4.Tb_Par01PORDGPED.Value=1 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=2 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME2.Value
      else if DM4.Tb_Par01PORDGPED.Value=3 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=insere(DM1.Tb_ProPDCODPRO.AsString,'0',15)
      else if DM4.Tb_Par01PORDGPED.Value=4 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=DM1.Tb_ProPDMARCA.Value+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=5 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=FormatFloat('00',DM1.Tb_ProPDLISTA.Value)+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=6 then
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=DM1.Tb_ProPDSECAO.Value+DM1.Tb_ProPDNOME.Value
      else
         Frm_Ped.STG1.Cells[stg1_col[35],mqtd]:=Formatfloat('000000000',mqtd);
      Frm_Ped.STG1.Cells[stg1_col[36],mqtd-1]:=stg1.Cells[12,x];
      STG1.Cells[stg1_col[37],mqtd-1]:=FormatFloat(mcasas,valfloat(STG1.Cells[stg1_col[05],mqtd-1])*valFloat(stg1.Cells[12,x])/100);
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         STG1.Cells[stg1_col[40],mqtd-1]:=iif(DM1.Tb_LGCCLPCUSTO.IsNull,0,DM1.Tb_LGCCLPCUSTO.AsString)
       else
         STG1.Cells[stg1_col[40],mqtd-1]:=iif(DM1.Tb_ProPDPRECOC.IsNull,0,DM1.Tb_ProPDPRECOC.AsString);
      STG1.Cells[stg1_col[41],mqtd-1]:=iif(DM1.Tb_ProPDPMC.IsNull,0,DM1.Tb_ProPDPMC.AsString);
      STG1.Cells[stg1_col[42],mqtd-1]:='';
      mqtd:=mqtd+1;
      end;
   Frm_Ped.STG1.RowCount:=mqtd+1;


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
   mtipop      :=1;
   Frm_Ped.CB_TIPO2.ItemIndex  :=mtipop;
   Frm_Ped.CB_TIPO2.text:=Frm_Ped.CB_TIPO2.items[Frm_Ped.CB_TIPO2.itemIndex];
   mtipop:=Frm_Ped.CB_TIPO2.ItemIndex;

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
end;

procedure TFrm_PedPart.GRADEExit(Sender: TObject);
var
x: Integer;
begin
if (ITEM_CANCELAR.Focused) or (Trim(GRADE.Text)='') then
   exit;
if not flcadlgc(1,0,Trim(codpro.Text),GRADE.Text,'') then
   begin
   MessageDlg('Grade Nao cadastrada!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end;


if (mop_pedpart=0)  then
   begin
   for x:=1 to STG1.RowCount-1 do
      begin
      if Trim(STG1.Cells[0,x])='' then
         continue;
      if (trim(codpro.Text)=trim(STG1.Cells[0,x])) and
         (trim(GRADE.Text) =trim(STG1.Cells[1,x])) then
         begin
         if Application.MessageBox('Produto já digitado quer altera-lo?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
            begin
            mop_pedpart:=1;
            STG1.Row:=x;
            CODPRO.Text   :=STG1.Cells[00,STG1.Row];
            GRADE.Text    :=STG1.Cells[01,STG1.Row];
            QTD.Text      :=STG1.Cells[02,STG1.Row];
            UND.Text      :=STG1.Cells[03,STG1.Row];
            NOMPRO.Text   :=STG1.Cells[04,STG1.Row];
            PCOUNI.Text   :=STG1.Cells[05,STG1.Row];
            MDESCI01.Text :=STG1.Cells[06,STG1.Row];
            MDESCI02.Text :=STG1.Cells[07,STG1.Row];
            MDESCI03.Text :=STG1.Cells[08,STG1.Row];
            VALDESI.Text  :=STG1.Cells[09,STG1.Row];
            //TOTALI.Caption:=STG1.Cells[10,STG1.Row];
            break;
            end
         else
            begin
            CODPRO.Text:='';
            CODPRO.SetFocus;
            break;
            exit;
            end;
         end;
      end;
   end
else
   begin
   if (Trim(STG1.Cells[00,STG1.Row])<>Trim(CODPRO.Text)) or
      (Trim(STG1.Cells[01,STG1.Row])<>Trim(GRADE.Text)) then
      begin
      for x:=1 to STG1.RowCount-1 do
         begin
         if (Trim(STG1.Cells[0,x])='') or (x=STG1.Row) then
            continue;
         if (trim(codpro.Text)=trim(STG1.Cells[00,x])) and
            (trim(GRADE.Text) =trim(STG1.Cells[01,x])) then
            begin
            MessageDlg('Este Código ja Existe no Pedido. Invalido!',mtWarning,[mbOk],0);
            CODPRO.Text:=STG1.Cells[0,STG1.Row];
            CODPRO.SetFocus;
            break;
            exit;
            end;
         end;
      end;
   end;
mqtdped:=0;
mqtdrom:=0;
if (trim(GRADE.Text)<>'') then
   begin
   if Tb_Ped.Locate('P2CODPRO;P2LOTE',vararrayof([ValFloat(CODPRO.Text),trim(GRADE.Text)]),[]) then
      begin
      mqtdped:=Tb_PedQTD.Value;
      PCOUNI.Text:=FormatFloat(mcasaspu, Tb_PedP2PRECO.Value);
      MDESCI01.Text:=FormatFloat(mcasas, Tb_PedP2DESC1.Value);
      MDESCI02.Text:=FormatFloat(mcasas, Tb_PedP2DESC2.Value);
      MDESCI03.Text:=FormatFloat(mcasas, Tb_PedP2DESC3.Value);
      VALDESI.Text :=FormatFloat(mcasas, Tb_PedP2VALDES.Value);
      end
   else
      begin
      MessageDlg('Produto não Encontrado no Pedido de Origem!',mtWarning,[mbOk],0);
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
   MessageDlg('Este Produto ja Foi Todo Enviado!',mtWarning,[mbOk],0);
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
MDESCI01.Text:=FormatFloat(mcasas,ValFloat(MDESCI01.Text));
if (Valfloat(MDESCI01.Text)<0) or (valfloat(MDESCI01.Text)>90) then
   begin
   MessageDlg('Desconto Inválido!',mtWarning,[mbOk],0);
   MDESCI01.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.MDESCI02Exit(Sender: TObject);
begin
MDESCI02.Text:=FormatFloat(mcasas,ValFloat(MDESCI02.Text));
if (Valfloat(MDESCI02.Text)<0) or (valfloat(MDESCI02.Text)>90) then
   begin
   MessageDlg('Desconto Inválido!',mtWarning,[mbOk],0);
   MDESCI02.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.MDESCI03Exit(Sender: TObject);
begin
MDESCI03.Text:=FormatFloat(mcasas,ValFloat(MDESCI03.Text));
if (Valfloat(MDESCI03.Text)<0) or (valfloat(MDESCI03.Text)>90) then
   begin
   MessageDlg('Desconto Inválido!',mtWarning,[mbOk],0);
   MDESCI03.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.VALDESIExit(Sender: TObject);
begin
VALDESI.Text:=FormatFloat(mcasas,ValFloat(VALDESI.Text));
if (Valfloat(VALDESI.Text)<0) or (valfloat(VALDESI.Text)>90) then
   begin
   MessageDlg('Desconto Inválido!',mtWarning,[mbOk],0);
   VALDESI.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.DESCFINPExit(Sender: TObject);
begin
DESCFINP.Text:=FormatFloat(mcasas,ValFloat(DESCFINP.Text));
if (Valfloat(DESCFINP.Text)<0) or (valfloat(DESCFINP.Text)>90) then
   begin
   MessageDlg('Desconto Inválido!',mtWarning,[mbOk],0);
   DESCFINP.SetFocus;
   exit;
   end;

end;

procedure TFrm_PedPart.COMISPExit(Sender: TObject);
begin
COMISP.Text:=FormatFloat(mcasas,ValFloat(COMISP.Text));
if (Valfloat(COMISP.Text)<0) or (valfloat(COMISP.Text)>90) then
   begin
   MessageDlg('Comissão Inválida!',mtWarning,[mbOk],0);
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
   if Frm_PV=nil then
      Application.CreateForm(Tfrm_Pv, Frm_Pv)
   else
      begin
      Frm_PV.Free;
      Frm_PV:=nil;
      Application.CreateForm(Tfrm_Pv, Frm_Pv);
      end;
   Frm_Pv.Edit1.Text:='';
   Frm_Pv.BBnAtu.Click;
   Frm_Pv.Edit1.SelStart:=1;
   Frm_Pv.Edit1.SelLength:=1;
   Frm_Pv.PC1.ActivePage:=Frm_PV.tsTab;
   pv_ori:='Frm_Ped_AutoP';
   if mFormstayontop then
      Frm_PV.FormStyle:=fsStayOnTop;
   if Frm_Pv.ShowModal=mrok then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      CODVENExit(self);
      end;
   Frm_Pv.Free;
   Frm_Pv:=nil;
   end;



end;

procedure TFrm_PedPart.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if Frm_PV=nil then
      Application.CreateForm(Tfrm_Pv, Frm_Pv)
   else
      begin
      Frm_PV.Free;
      Frm_PV:=nil;
      Application.CreateForm(Tfrm_Pv, Frm_Pv);
      end;
   Frm_Pv.Edit1.Text:=key;
   Frm_Pv.BBnAtu.Click;
   Frm_Pv.Edit1.SelStart:=1;
   Frm_Pv.Edit1.SelLength:=1;
   Frm_Pv.PC1.ActivePage:=Frm_PV.tsTab;
   pv_ori:='Frm_Ped_AutoP';
   if mFormstayontop then
      Frm_PV.FormStyle:=fsStayOnTop;
   if Frm_Pv.ShowModal=mrok then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      CODPVExit(self);
      end;
   Frm_Pv.Free;
   Frm_Pv:=nil;
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
   MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   MessageDlg('Favor Corrigir o Estado do Cadastro do Cliente!',mtWarning,[mbOk],0);
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
   MessageDlg('Tabelas Válidas "AV","AP","PP"',mtWarning,[mbok],0);
   exit;
   end;

end;

procedure TFrm_PedPart.CODPVExit(Sender: TObject);
begin
if not (CODVEN.Focused) and (trim(CODPV.Text)='')  then
   exit;
if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   MessageDlg('Plano de Vendas não Cadastrado',mtWarning,[mbOk],0);
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
   MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
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
   MessageDlg('Vendedor nao Cadastrado!',mtWarning,[mbOk],0);
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
QTD.Text    :=mem_ped02partPDNOME.AsString;


end;


end.
