unit S_LerSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, StdCtrls, Buttons, DBGrids, Mask, ExtCtrls, DB,
  DBTables,S_DM4,S_DM1,func, Gauges;

type
  TFrm_LerSintegra = class(TForm)
    PC1: TPageControl;
    tsProc: TTabSheet;
    TsTipo10: TTabSheet;
    STG_TIPO10: TStringGrid;
    tsTipo11: TTabSheet;
    tsTipo50: TTabSheet;
    tsTipo53: TTabSheet;
    tsTipo54: TTabSheet;
    tsTipo60A: TTabSheet;
    tsTipo60M: TTabSheet;
    TsTipo60R: TTabSheet;
    STG_TIPO11: TStringGrid;
    STG_TIPO50: TStringGrid;
    STG_TIPO53: TStringGrid;
    STG_TIPO60A: TStringGrid;
    STG_TIPO54: TStringGrid;
    STG_TIPO60M: TStringGrid;
    STG_TIPO60R: TStringGrid;
    tsTipo51: TTabSheet;
    STG_TIPO51: TStringGrid;
    tsTipo55: TTabSheet;
    STG_TIPO55: TStringGrid;
    tsTipo56: TTabSheet;
    STG_TIPO56: TStringGrid;
    tsTipo60D: TTabSheet;
    STG_TIPO60D: TStringGrid;
    tsTipo60I: TTabSheet;
    STG_TIPO60I: TStringGrid;
    tsTipo61: TTabSheet;
    STG_TIPO61: TStringGrid;
    tsTipo61R: TTabSheet;
    STG_TIPO61R: TStringGrid;
    tsTipo70: TTabSheet;
    STG_TIPO70: TStringGrid;
    tsTipo71: TTabSheet;
    STG_TIPO71: TStringGrid;
    tsTipo74: TTabSheet;
    STG_TIPO74: TStringGrid;
    tsTipo75: TTabSheet;
    STG_TIPO75: TStringGrid;
    tsTipo76: TTabSheet;
    STG_TIPO76: TStringGrid;
    tsTipo77: TTabSheet;
    STG_TIPO77: TStringGrid;
    tsTipo90: TTabSheet;
    STG_TIPO90: TStringGrid;
    DBG_TIPO10: TDBGrid;
    DBG_TIPO11: TDBGrid;
    DBG_TIPO50: TDBGrid;
    DBG_TIPO53: TDBGrid;
    DBG_TIPO54: TDBGrid;
    DBG_TIPO60A: TDBGrid;
    DBG_TIPO60M: TDBGrid;
    DBG_TIPO60R: TDBGrid;
    DBG_TIPO51: TDBGrid;
    DBG_TIPO55: TDBGrid;
    DBG_TIPO56: TDBGrid;
    DBG_TIPO60D: TDBGrid;
    DBG_TIPO60I: TDBGrid;
    DBG_TIPO61: TDBGrid;
    DBG_TIPO61R: TDBGrid;
    DBG_TIPO71: TDBGrid;
    DBG_TIPO74: TDBGrid;
    DBG_TIPO75: TDBGrid;
    DBG_TIPO76: TDBGrid;
    DBG_TIPO77: TDBGrid;
    DBG_TIPO90: TDBGrid;
    DBG_TIPO70: TDBGrid;
    Label1: TLabel;
    NOMEARQ: TEdit;
    SPB_LER: TSpeedButton;
    bbLer: TBitBtn;
    GBREST: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label4: TLabel;
    NUMNFI: TEdit;
    NUMNFF: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    NUMCFI: TEdit;
    Label7: TLabel;
    NUMCFF: TEdit;
    RG_TIPDOC: TRadioGroup;
    Label8: TLabel;
    NOMEPASTA: TEdit;
    Label9: TLabel;
    ARQUIVO: TEdit;
    Tb_Tipo10: TTable;
    Src_Tipo10: TDataSource;
    OPD1: TOpenDialog;
    Tb_Tipo11: TTable;
    Src_Tipo11: TDataSource;
    Tb_Tipo50: TTable;
    Src_Tipo50: TDataSource;
    Tb_Tipo51: TTable;
    Src_Tipo51: TDataSource;
    Tb_Tipo53: TTable;
    Src_Tipo53: TDataSource;
    Tb_Tipo54: TTable;
    Src_Tipo54: TDataSource;
    Tb_Tipo55: TTable;
    Src_Tipo55: TDataSource;
    Tb_Tipo60A: TTable;
    Src_Tipo60A: TDataSource;
    Tb_Tipo60M: TTable;
    Src_Tipo60M: TDataSource;
    Tb_Tipo60R: TTable;
    Src_Tipo60R: TDataSource;
    Tb_Tipo60D: TTable;
    Src_Tipo60D: TDataSource;
    Tb_Tipo60I: TTable;
    Src_Tipo60I: TDataSource;
    Tb_Tipo61R: TTable;
    Src_Tipo61R: TDataSource;
    Tb_Tipo70: TTable;
    Src_Tipo70: TDataSource;
    Tb_Tipo71: TTable;
    Src_Tipo71: TDataSource;
    Tb_Tipo74: TTable;
    Src_Tipo74: TDataSource;
    Tb_Tipo75: TTable;
    Src_Tipo75: TDataSource;
    Tb_Tipo77: TTable;
    Src_Tipo77: TDataSource;
    Tb_Tipo90: TTable;
    Src_Tipo90: TDataSource;
    Tb_Tipo56: TTable;
    Src_Tipo56: TDataSource;
    Tb_Tipo61: TTable;
    Src_Tipo61: TDataSource;
    Tb_Tipo76: TTable;
    Src_Tipo76: TDataSource;
    lbl_tipo10: TLabel;
    lbl_tipo11: TLabel;
    lbl_tipo51: TLabel;
    lbl_tipo50: TLabel;
    lbl_tipo53: TLabel;
    lbl_tipo56: TLabel;
    lbl_tipo54: TLabel;
    lbl_tipo55: TLabel;
    lbl_tipo60A: TLabel;
    lbl_tipo60M: TLabel;
    lbl_tipo60R: TLabel;
    lbl_tipo60D: TLabel;
    lbl_tipo60I: TLabel;
    lbl_tipo61: TLabel;
    lbl_tipo61R: TLabel;
    lbl_tipo70: TLabel;
    lbl_tipo71: TLabel;
    lbl_tipo74: TLabel;
    lbl_tipo75: TLabel;
    lbl_tipo76: TLabel;
    lbl_tipo77: TLabel;
    lbl_tipo90: TLabel;
    GB_DOCREST: TGroupBox;
    CB_PEDIDOS: TCheckBox;
    CB_NF: TCheckBox;
    CB_DUPLIC: TCheckBox;
    CB_DUPBAI: TCheckBox;
    bbRestAgora: TBitBtn;
    bbSair: TBitBtn;
    tsTeste: TTabSheet;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    DataSource1: TDataSource;
    Query1: TQuery;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    tsResumo: TTabSheet;
    Label10: TLabel;
    Memo_Evento: TMemo;
    bbVerificar: TBitBtn;
    Gauge_60i: TGauge;
    Qr_Ped02: TQuery;
    Qr_Ped02P2ITEM: TFloatField;
    Qr_Ped02P2CODPRO: TFloatField;
    Qr_Ped02P2PRECO: TFloatField;
    Qr_Ped02P2TOTDES: TFloatField;
    Qr_Ped02P2DESCRAT: TFloatField;
    Qr_Ped02P2QTD: TFloatField;
    Qr_Ped02P2ALIQ: TFloatField;
    Qr_Ped02P2BASEN: TFloatField;
    Qr_Ped02P2ALIQNR: TFloatField;
    Qr_Ped02P2BCINR: TFloatField;
    Qr_Ped02P2ICMSN: TFloatField;
    Qr_Ped02P2ICMSNR: TFloatField;
    Qr_Ped02P2SIT: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NUMNFIExit(Sender: TObject);
    procedure NUMNFFExit(Sender: TObject);
    procedure NUMCFIExit(Sender: TObject);
    procedure NUMCFFExit(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure SPB_LERClick(Sender: TObject);
    procedure CB_DUPLICClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbRestAgoraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbVerificarClick(Sender: TObject);
  private
    { Private declarations }
    Function FGeraTipo10(pVersao: String): Boolean;
    Function FGeraTipo11(pVersao: String): Boolean;
    Function FGeraTipo50(pVersao: String): Boolean;
    Function FGeraTipo51(pVersao: String): Boolean;
    Function FGeraTipo53(pVersao: String): Boolean;
    Function FGeraTipo54(pVersao: String): Boolean;
    Function FGeraTipo55(pVersao: String): Boolean;
    Function FGeraTipo56(pVersao: String): Boolean;
    Function FGeraTipo60M(pVersao: String): Boolean;
    Function FGeraTipo60A(pVersao: String): Boolean;
    Function FGeraTipo60D(pVersao: String): Boolean;
    Function FGeraTipo60I(pVersao: String): Boolean;
    Function FGeraTipo60R(pVersao: String): Boolean;
    Function FGeraTipo61(pVersao: String): Boolean;
    Function FGeraTipo61R(pVersao: String): Boolean;
    Function FGeraTipo70(pVersao: String): Boolean;
    Function FGeraTipo71(pVersao: String): Boolean;
    Function FGeraTipo74(pVersao: String): Boolean;
    Function FGeraTipo75(pVersao: String): Boolean;
    Function FGeraTipo76(pVersao: String): Boolean;
    Function FGeraTipo77(pVersao: String): Boolean;
    Function FGeraTipo90(pVersao: String): Boolean;
    function fCriarEsquema(pTipo: String): Boolean;
    function fCarregarTabelas(pTipo: String): Boolean;

    Function FCarregaTipo10(pLinha: String): Boolean;
    Function FCarregaTIPO11(pLinha: String): Boolean;
    Function FCarregaTIPO50(pLinha: String): Boolean;
    Function FCarregaTIPO51(pLinha: String): Boolean;
    Function FCarregaTIPO53(pLinha: String): Boolean;
    Function FCarregaTIPO54(pLinha: String): Boolean;
    Function FCarregaTIPO55(pLinha: String): Boolean;
    Function FCarregaTIPO56(pLinha: String): Boolean;
    Function FCarregaTIPO60A(pLinha: String): Boolean;
    Function FCarregaTIPO60D(pLinha: String): Boolean;
    Function FCarregaTIPO60M(pLinha: String): Boolean;
    Function FCarregaTIPO60R(pLinha: String): Boolean;
    Function FCarregaTIPO60I(pLinha: String): Boolean;
    Function FCarregaTIPO61(pLinha: String): Boolean;
    Function FCarregaTIPO61R(pLinha: String): Boolean;
    Function FCarregaTIPO70(pLinha: String): Boolean;
    Function FCarregaTIPO71(pLinha: String): Boolean;
    Function FCarregaTIPO74(pLinha: String): Boolean;
    Function FCarregaTIPO75(pLinha: String): Boolean;
    Function FCarregaTIPO76(pLinha: String): Boolean;
    Function FCarregaTIPO77(pLinha: String): Boolean;
    Function FCarregaTIPO90(pLinha: String): Boolean;


  public
    { Public declarations }
  end;
function FSoNumero(Texto:String): Real;
function ValInt(Texto:String): Integer;
function fdeixanum2(Texto:String): String;
function Fnomearq_Pasta(ptipo: Integer; pNome: String): String;
function Insere(Texto:String;Caracter:Char;Qtd:Integer): String;

var
  Frm_LerSintegra: TFrm_LerSintegra;
  mLin: Integer;
//  Frm_Ret_Layout: TFrm_Ret_Layout;
  mcol_nomcpo  : Integer=0;
  mcol_tipdados: Integer=1;
  mcol_tamanho : Integer=2;
  mcol_decimais: Integer=3;
  mcol_inicio  : Integer=4;
  mcol_termino : Integer=5;
  mcol_obs     : Integer=6;
  mcol_opc     : Integer=7;
  mcol_NomeXML  : Integer=8;

  mPosIni       : Integer=0;
  mTot10 : Integer;
  mTot11 : Integer;
  mTot50 : Integer;
  mTot51 : Integer;
  mTot53 : Integer;
  mTot54 : Integer;
  mTot55 : Integer;
  mTot56 : Integer;
  mTot60M : Integer;
  mTot60A : Integer;
  mTot60D : Integer;
  mTot60I : Integer;
  mTot60R : Integer;
  mTot61  : Integer;
  mTot61R : Integer;
  mTot70 : Integer;
  mTot71 : Integer;
  mTot74 : Integer;
  mTot75 : Integer;
  mTot76 : Integer;
  mTot77 : Integer;
  mTot90 : Integer;



implementation

uses Lerarq;

{$R *.dfm}


Function TFrm_LerSintegra.FGeraTipo10(pVersao: String): Boolean;
begin
STG_TIPO10.RowCount:=6;
STG_TIPO10.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO10.ColWidths[mcol_tipdados]:=70;
STG_TIPO10.ColWidths[mcol_tamanho] :=45;
STG_TIPO10.ColWidths[mcol_decimais]:=45;
STG_TIPO10.ColWidths[mcol_inicio]  :=45;
STG_TIPO10.ColWidths[mcol_termino] :=45;
STG_TIPO10.ColWidths[mcol_obs]     :=230;
STG_TIPO10.ColWidths[mcol_opc]     :=30;
STG_TIPO10.ColWidths[mcol_NomeXML] :=60;

mLin:=0;
mPosIni:=1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO10.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO10.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO10.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO10.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO10.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='T10_TIPO';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Valor Fixo: 10';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='TBTIPO10';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='CNPJ';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='14';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='CNPJ do Emitente';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_CNPJ';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='IE';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='14';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='CNPJ do Emitente';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_IE';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='RAZAO_SOCIAL';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='35';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Razão Social do Cliente';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_RAZSOC';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='MUNICIPIO';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='30';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Municipio';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_MUNICIPIO';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='UF';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Estado';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_UF';


mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='FAX';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='10';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Numero do Fax';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_FAX';


mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='DATAINICIAL';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='D';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='08';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Data Inicial';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_DATAINICIAL';


mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='DATAFINAL';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='D';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='08';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Data Inicial';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_DATAFINAL';

mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='CODCONV';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='S';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='01';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Código do Convenio';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_CODCON';


mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='CODNATOP';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='S';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='01';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Natureza da Operação';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_CODNATOP';


mlin:=mlin+1;
STG_TIPO10.Cells[mcol_nomcpo,mlin]  :='CODFIN';
STG_TIPO10.Cells[mcol_tipdados,mlin]:='S';
STG_TIPO10.Cells[mcol_tamanho,mlin] :='01';
STG_TIPO10.Cells[mcol_decimais,mlin]:='';
STG_TIPO10.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO10.Cells[mcol_tamanho,mlin]);
STG_TIPO10.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO10.Cells[mcol_obs,mlin]     :='Código da Finalidade';
STG_TIPO10.Cells[mcol_opc,mlin]     :='M';
STG_TIPO10.Cells[mcol_NomeXML,mlin] :='T10_CODFIN';

STG_TIPO10.RowCount:=mLin+1;


result:=True;
end;



function FSoNumero(Texto:String): Real;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
if Trim(maux)='' then
   maux:='0';
Result:=StrToFloat(maux);
end;

function ValInt(Texto:String): Integer;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   begin
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
   end;
if Trim(maux)='' then
   maux:='0';
Result:=StrToInt(maux);
end;

procedure TFrm_LerSintegra.FormCreate(Sender: TObject);
begin
FGeraTipo10('0');
FGeraTipo11('0');
FGeraTipo50('0');
FGeraTipo51('0');
FGeraTipo53('0');
FGeraTipo54('0');
FGeraTipo55('0');
FGeraTipo56('0');
FGeraTipo60M('0');
FGeraTipo60A('0');
FGeraTipo60D('0');
FGeraTipo60I('0');
FGeraTipo60R('0');
FGeraTipo61('0');
FGeraTipo61R('0');
FGeraTipo70('0');
FGeraTipo71('0');
FGeraTipo74('0');
FGeraTipo75('0');
FGeraTipo76('0');
FGeraTipo77('0');
FGeraTipo90('0');


end;


Function TFrm_LerSintegra.FGeraTipo11(pVersao: String): Boolean;
begin
STG_TIPO11.RowCount:=6;
STG_TIPO11.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO11.ColWidths[mcol_tipdados]:=70;
STG_TIPO11.ColWidths[mcol_tamanho] :=45;
STG_TIPO11.ColWidths[mcol_decimais]:=45;
STG_TIPO11.ColWidths[mcol_inicio]  :=45;
STG_TIPO11.ColWidths[mcol_termino] :=45;
STG_TIPO11.ColWidths[mcol_obs]     :=230;
STG_TIPO11.ColWidths[mcol_opc]     :=30;
STG_TIPO11.ColWidths[mcol_NomeXML] :=60;

mLin:=0;
mPosIni:=1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO11.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO11.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO11.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO11.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO11.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='T11_TIPO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Valor Fixo: 11';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='TBTIPO11';

mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='LOGRADOURO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='34';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Nome do Logradouro';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_LOGRADOURO';


mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='NUMERO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='05';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Numero Predial';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_NUMERO';

mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='COMPLEMENTO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='22';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Complemento do Endereço';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_COMPLEMENTO';

mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='BAIRRO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='15';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Nome do Bairro';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_BAIRRO';

mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='CEP';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='08';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='CEP';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_CEP';

mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='NOMECONTATO';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='28';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='Nome da Pessoa de Contato';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_NOMECONTATO';


mlin:=mlin+1;
STG_TIPO11.Cells[mcol_nomcpo,mlin]  :='TELEFONE';
STG_TIPO11.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO11.Cells[mcol_tamanho,mlin] :='12';
STG_TIPO11.Cells[mcol_decimais,mlin]:='';
STG_TIPO11.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO11.Cells[mcol_tamanho,mlin]);
STG_TIPO11.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO11.Cells[mcol_obs,mlin]     :='TELEFONE';
STG_TIPO11.Cells[mcol_opc,mlin]     :='M';
STG_TIPO11.Cells[mcol_NomeXML,mlin] :='T11_TELEFONE';
STG_TIPO11.RowCount:=mLin+1;
result:=True;
end;


Function TFrm_LerSintegra.FGeraTipo50(pVersao: String): Boolean;
begin
STG_TIPO50.RowCount:=6;
STG_TIPO50.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO50.ColWidths[mcol_tipdados]:=70;
STG_TIPO50.ColWidths[mcol_tamanho] :=45;
STG_TIPO50.ColWidths[mcol_decimais]:=45;
STG_TIPO50.ColWidths[mcol_inicio]  :=45;
STG_TIPO50.ColWidths[mcol_termino] :=45;
STG_TIPO50.ColWidths[mcol_obs]     :=230;
STG_TIPO50.ColWidths[mcol_opc]     :=30;
STG_TIPO50.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO50.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO50.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO50.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO50.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO50.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_TIPO';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Valor Fixo: 50';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='TBTIPO50';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='CNPJ';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='14';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Numero do CNPJ Destinatario da Nota Fiscal';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_CNPJ';
mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='INSCRICAO ESTADUAL';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='14';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Inscrição Estadual do Destinatario';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_IE';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='DATA';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='08';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Data da Nota Fiscal';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_DATA';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_UF';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='UF-Unidade da Federação';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_UF';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_MODELO';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Modelo do Documento';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_MODELO';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_SERIE';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='03';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Serie da Nota Fiscal';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_SERIE';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_NUMERO';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='06';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Numero da Nota Fiscal';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_NUMERO';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='CFOP';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='04';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='CFOP da Nota Fiscal';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_CFOP';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_EMITENTE';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='01';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Emitente do Documento P-Proprio T-Terceiro';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_EMITENTE';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_VLTOTAL';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='13';
STG_TIPO50.Cells[mcol_decimais,mlin]:='02';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Valor Total dos Produtos';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_VLTOTAL';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_BCICMS';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='13';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Inscrição Estadual do Destinatario';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_BCICMS';


mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_ICMS';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='13';
STG_TIPO50.Cells[mcol_decimais,mlin]:='02';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Valor do Icms';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_ICMS';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_ISENTAS';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='13';
STG_TIPO50.Cells[mcol_decimais,mlin]:='02';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Valor das Mercadorias Isentas';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_ISENTAS';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_OUTRAS';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='13';
STG_TIPO50.Cells[mcol_decimais,mlin]:='02';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Valor de Outras Nao Tributadas';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_OUTRAS';


mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_ALIQ';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Numerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='04';
STG_TIPO50.Cells[mcol_decimais,mlin]:='02';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Aliquota de Icms';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_ALIQ';

mlin:=mlin+1;
STG_TIPO50.Cells[mcol_nomcpo,mlin]  :='T50_SITUACAO';
STG_TIPO50.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO50.Cells[mcol_tamanho,mlin] :='01';
STG_TIPO50.Cells[mcol_decimais,mlin]:='';
STG_TIPO50.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO50.Cells[mcol_tamanho,mlin]);
STG_TIPO50.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO50.Cells[mcol_obs,mlin]     :='Situação N-Nornal S-Cancelada';
STG_TIPO50.Cells[mcol_opc,mlin]     :='M';
STG_TIPO50.Cells[mcol_NomeXML,mlin] :='T50_SITUACAO';
STG_TIPO50.RowCount:=mLin+1;
result:=True;
end;


Function TFrm_LerSintegra.FGeraTipo53(pVersao: String): Boolean;
begin
STG_TIPO53.RowCount:=6;
STG_TIPO53.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO53.ColWidths[mcol_tipdados]:=70;
STG_TIPO53.ColWidths[mcol_tamanho] :=45;
STG_TIPO53.ColWidths[mcol_decimais]:=45;
STG_TIPO53.ColWidths[mcol_inicio]  :=45;
STG_TIPO53.ColWidths[mcol_termino] :=45;
STG_TIPO53.ColWidths[mcol_obs]     :=230;
STG_TIPO53.ColWidths[mcol_opc]     :=30;
STG_TIPO53.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO53.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO53.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO53.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO53.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO53.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO53.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO53.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO53.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_TIPO';
STG_TIPO53.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO53.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO53.Cells[mcol_decimais,mlin]:='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='Valor Fixo: 53';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_NomeXML,mlin] :='TBTIPO53';
{
mlin:=mlin+1;
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_TIPO';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_TIPO';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_TIPO';
}
mlin:=mlin+1;
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CNPJ';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_CNPJ';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CNPJ';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_IE';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_IE';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_IE';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_DATA';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_DATA';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_DATA';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_UF';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_UF';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_UF';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_MODELO';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_MODELO';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_MODELO';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_SERIE';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_SERIE';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_SERIE';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_NUMERO';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_NUMERO';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_NUMERO';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CFOP';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_CFOP';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CFOP';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_EMITENTE';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_EMITENTE';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_EMITENTE';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_BCICMSST';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_BCICMSST';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_BCICMSST';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_ICMSRetido';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_ICMSRetido';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_ICMSRetido';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_DESPACES';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_DESPACES';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_DESPACES';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_SITUACAO';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_SITUACAO';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_SITUACAO';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CODANT';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_CODANT';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_CODANT';
mlin:=mlin+1; 
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_BRANCOS';
STG_TIPO53.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO53.Cells[mcol_tamanho,mlin]  :='29';
STG_TIPO53.Cells[mcol_decimais,mlin]  :='';
STG_TIPO53.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO53.Cells[mcol_tamanho,mlin]);
STG_TIPO53.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO53.Cells[mcol_obs,mlin]     :='T53_BRANCOS';
STG_TIPO53.Cells[mcol_opc,mlin]     :='M';
STG_TIPO53.Cells[mcol_nomcpo,mlin]  :='T53_BRANCOS';
STG_TIPO53.RowCount:=mLin+1;
result:=True;

end;


Function TFrm_LerSintegra.FGeraTipo51(pVersao: String): Boolean;
begin
STG_TIPO51.RowCount:=6;
STG_TIPO51.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO51.ColWidths[mcol_tipdados]:=70;
STG_TIPO51.ColWidths[mcol_tamanho] :=45;
STG_TIPO51.ColWidths[mcol_decimais]:=45;
STG_TIPO51.ColWidths[mcol_inicio]  :=45;
STG_TIPO51.ColWidths[mcol_termino] :=45;
STG_TIPO51.ColWidths[mcol_obs]     :=230;
STG_TIPO51.ColWidths[mcol_opc]     :=30;
STG_TIPO51.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO51.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO51.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO51.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO51.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO51.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO51.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO51.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO51.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_TIPO';
STG_TIPO51.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO51.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO51.Cells[mcol_decimais,mlin]:='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='Valor Fixo: 51';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_NomeXML,mlin] :='TBTIPO51';
{
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_TIPO';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_TIPO';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_TIPO';
}
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_CNPJ';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_CNPJ';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_CNPJ';
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_IE';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_IE';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_IE';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_DATA';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_DATA';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_DATA';
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_UF';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_UF';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_UF';
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_SERIE';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_SERIE';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_SERIE';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_NUMERO';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_NUMERO';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_NUMERO';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_CFOP';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_CFOP';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_CFOP';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_VLTOTAL';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_VLTOTAL';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_VLTOTAL';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_VLIPI';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_VLIPI';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_VLIPI';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_ISENTAS';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_ISENTAS';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_ISENTAS';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_OUTRAS';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_OUTRAS';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_OUTRAS';
mlin:=mlin+1; 
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_BRANCOS';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_BRANCOS';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_BRANCOS';
mlin:=mlin+1;
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_SITUACAO';
STG_TIPO51.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO51.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO51.Cells[mcol_decimais,mlin]  :='';
STG_TIPO51.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO51.Cells[mcol_tamanho,mlin]);
STG_TIPO51.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO51.Cells[mcol_obs,mlin]     :='T51_SITUACAO';
STG_TIPO51.Cells[mcol_opc,mlin]     :='M';
STG_TIPO51.Cells[mcol_nomcpo,mlin]  :='T51_SITUACAO';
STG_TIPO51.RowCount:=mLin+1;
result:=True;
end;

Function TFrm_LerSintegra.FGeraTipo54(pVersao: String): Boolean;
begin
STG_TIPO54.RowCount:=6;
STG_TIPO54.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO54.ColWidths[mcol_tipdados]:=70;
STG_TIPO54.ColWidths[mcol_tamanho] :=45;
STG_TIPO54.ColWidths[mcol_decimais]:=45;
STG_TIPO54.ColWidths[mcol_inicio]  :=45;
STG_TIPO54.ColWidths[mcol_termino] :=45;
STG_TIPO54.ColWidths[mcol_obs]     :=230;
STG_TIPO54.ColWidths[mcol_opc]     :=30;
STG_TIPO54.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO54.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO54.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO54.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO54.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO54.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO54.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO54.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO54.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_TIPO';
STG_TIPO54.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO54.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO54.Cells[mcol_decimais,mlin]:='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='Valor Fixo: 54';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_NomeXML,mlin] :='TBTIPO54';
{
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_TIPO';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_TIPO';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_TIPO';
}
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CNPJ';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_CNPJ';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CNPJ';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_MODELO';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_MODELO';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_MODELO';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_SERIE';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_SERIE';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_SERIE';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_NUMERO';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_NUMERO';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_NUMERO';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CFOP';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_CFOP';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CFOP';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CST';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_CST';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CST';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_ITEM';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_ITEM';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_ITEM';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CODPROD';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_CODPROD';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_CODPROD';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_QUANTIDADE';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='11';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_QUANTIDADE';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_QUANTIDADE';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLPRODUTO';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_VLPRODUTO';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLPRODUTO';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLDESCONTO';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_VLDESCONTO';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLDESCONTO';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_BCICMS';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_BCICMS';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_BCICMS';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_BCICMSST';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_BCICMSST';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_BCICMSST';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLIPI';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_VLIPI';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_VLIPI';
mlin:=mlin+1;
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_ALIQ';
STG_TIPO54.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO54.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO54.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO54.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO54.Cells[mcol_tamanho,mlin]);
STG_TIPO54.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO54.Cells[mcol_obs,mlin]     :='T54_ALIQ';
STG_TIPO54.Cells[mcol_opc,mlin]     :='M';
STG_TIPO54.Cells[mcol_nomcpo,mlin]  :='T54_ALIQ';
STG_TIPO54.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo55(pVersao: String): Boolean;
begin
STG_TIPO55.RowCount:=6;
STG_TIPO55.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO55.ColWidths[mcol_tipdados]:=70;
STG_TIPO55.ColWidths[mcol_tamanho] :=45;
STG_TIPO55.ColWidths[mcol_decimais]:=45;
STG_TIPO55.ColWidths[mcol_inicio]  :=45;
STG_TIPO55.ColWidths[mcol_termino] :=45;
STG_TIPO55.ColWidths[mcol_obs]     :=230;
STG_TIPO55.ColWidths[mcol_opc]     :=30;
STG_TIPO55.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO55.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO55.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO55.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO55.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO55.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO55.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO55.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO55.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_TIPO';
STG_TIPO55.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO55.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO55.Cells[mcol_decimais,mlin]:='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='Valor Fixo: 55';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_NomeXML,mlin] :='TBTIPO55';
{
mlin:=mlin+1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_TIPO';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_TIPO';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_TIPO';
}
mlin:=mlin+1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_CNPJST';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_CNPJST';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_CNPJST';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_IEST';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_IEST';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_IEST';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_DATAGNR';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_DATAGNR';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_DATAGNR';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_UFST';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_UFST';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_UFST';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_UF';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_UF';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_UF';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_BANCOGNR';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_BANCOGNR';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_BANCOGNR';
mlin:=mlin+1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_AGENCIAGNR';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_AGENCIAGNR';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_AGENCIAGNR';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_NUMEROGNR';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_NUMEROGNR';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_NUMEROGNR';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_VLGNR';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_VLGNR';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_VLGNR';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_DATAVENCTO';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_DATAVENCTO';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_DATAVENCTO';
mlin:=mlin+1; 
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_MESANOREF';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_MESANOREF';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_MESANOREF';
mlin:=mlin+1;
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_NCONVENIO';
STG_TIPO55.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO55.Cells[mcol_tamanho,mlin]  :='30';
STG_TIPO55.Cells[mcol_decimais,mlin]  :='';
STG_TIPO55.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO55.Cells[mcol_tamanho,mlin]);
STG_TIPO55.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO55.Cells[mcol_obs,mlin]     :='T55_NCONVENIO';
STG_TIPO55.Cells[mcol_opc,mlin]     :='M';
STG_TIPO55.Cells[mcol_nomcpo,mlin]  :='T55_NCONVENIO';
STG_TIPO55.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo56(pVersao: String): Boolean;
begin
STG_TIPO56.RowCount:=6;
STG_TIPO56.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO56.ColWidths[mcol_tipdados]:=70;
STG_TIPO56.ColWidths[mcol_tamanho] :=45;
STG_TIPO56.ColWidths[mcol_decimais]:=45;
STG_TIPO56.ColWidths[mcol_inicio]  :=45;
STG_TIPO56.ColWidths[mcol_termino] :=45;
STG_TIPO56.ColWidths[mcol_obs]     :=230;
STG_TIPO56.ColWidths[mcol_opc]     :=30;
STG_TIPO56.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO56.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO56.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO56.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO56.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO56.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO56.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO56.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO56.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_TIPO';
STG_TIPO56.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO56.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO56.Cells[mcol_decimais,mlin]:='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='Valor Fixo: 56';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_NomeXML,mlin] :='TBTIPO56';
{
mlin:=mlin+1;
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_TIPO';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_TIPO';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_TIPO';
}
mlin:=mlin+1;
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CNPJ';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CNPJ';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CNPJ';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_MODELO';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_MODELO';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_MODELO';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_SERIE';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_SERIE';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_SERIE';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_NUMERO';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_NUMERO';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_NUMERO';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CFOP';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CFOP';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CFOP';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CST';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CST';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CST';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_ITEM';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_ITEM';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_ITEM';
mlin:=mlin+1;
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CODPROD';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CODPROD';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CODPROD';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_TIPO_OP';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_TIPO_OP';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_TIPO_OP';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CNPJ_CONS';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CNPJ_CONS';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CNPJ_CONS';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_ALIQIPI';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_ALIQIPI';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_ALIQIPI';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CHASSI';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='17';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_CHASSI';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_CHASSI';
mlin:=mlin+1; 
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_BRANCOS';
STG_TIPO56.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO56.Cells[mcol_tamanho,mlin]  :='39';
STG_TIPO56.Cells[mcol_decimais,mlin]  :='';
STG_TIPO56.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO56.Cells[mcol_tamanho,mlin]);
STG_TIPO56.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO56.Cells[mcol_obs,mlin]     :='T56_BRANCOS';
STG_TIPO56.Cells[mcol_opc,mlin]     :='M';
STG_TIPO56.Cells[mcol_nomcpo,mlin]  :='T56_BRANCOS';
STG_TIPO56.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo60M(pVersao: String): Boolean;
begin
STG_TIPO60M.RowCount:=6;
STG_TIPO60M.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO60M.ColWidths[mcol_tipdados]:=70;
STG_TIPO60M.ColWidths[mcol_tamanho] :=45;
STG_TIPO60M.ColWidths[mcol_decimais]:=45;
STG_TIPO60M.ColWidths[mcol_inicio]  :=45;
STG_TIPO60M.ColWidths[mcol_termino] :=45;
STG_TIPO60M.ColWidths[mcol_obs]     :=230;
STG_TIPO60M.ColWidths[mcol_opc]     :=30;
STG_TIPO60M.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO60M.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO60M.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO60M.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO60M.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO60M.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO60M.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_TIPO';
STG_TIPO60M.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO60M.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO60M.Cells[mcol_decimais,mlin]:='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='Valor Fixo: 60';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_NomeXML,mlin] :='TBTIPO60M';
{
mlin:=mlin+1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_TIPO';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_TIPO';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_TIPO';
}
mlin:=mlin+1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_MA';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_MA';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_MA';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_DATA';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_DATA';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_DATA';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NSECF';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_NSECF';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NSECF';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NECF';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_NECF';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NECF';
mlin:=mlin+1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_MODELO';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_MODELO';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_MODELO';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NINICIAL';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_NINICIAL';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NINICIAL';
mlin:=mlin+1;
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NFINAL';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_NFINAL';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NFINAL';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NREDZ';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_NREDZ';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_NREDZ';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_CRO';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_CRO';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_CRO';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_VLVB';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_VLVB';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_VLVB';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_VLGT';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_VLGT';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_VLGT';
mlin:=mlin+1; 
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_BRANCOS';
STG_TIPO60M.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60M.Cells[mcol_tamanho,mlin]  :='37';
STG_TIPO60M.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60M.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60M.Cells[mcol_tamanho,mlin]);
STG_TIPO60M.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60M.Cells[mcol_obs,mlin]     :='T60M_BRANCOS';
STG_TIPO60M.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60M.Cells[mcol_nomcpo,mlin]  :='T60M_BRANCOS';
STG_TIPO60M.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo60A(pVersao: String): Boolean;
begin
STG_TIPO60A.RowCount:=6;
STG_TIPO60A.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO60A.ColWidths[mcol_tipdados]:=70;
STG_TIPO60A.ColWidths[mcol_tamanho] :=45;
STG_TIPO60A.ColWidths[mcol_decimais]:=45;
STG_TIPO60A.ColWidths[mcol_inicio]  :=45;
STG_TIPO60A.ColWidths[mcol_termino] :=45;
STG_TIPO60A.ColWidths[mcol_obs]     :=230;
STG_TIPO60A.ColWidths[mcol_opc]     :=30;
STG_TIPO60A.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO60A.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO60A.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO60A.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO60A.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO60A.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO60A.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_TIPO';
STG_TIPO60A.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO60A.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO60A.Cells[mcol_decimais,mlin]:='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='Valor Fixo: 60A';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_NomeXML,mlin] :='TBTIPO60A';
{
mlin:=mlin+1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_TIPO';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_TIPO';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_TIPO';
}
mlin:=mlin+1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_MA';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_MA';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_MA';
mlin:=mlin+1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_DATA';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='8';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_DATA';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_DATA';
mlin:=mlin+1;
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_NSECF';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_NSECF';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_NSECF';
mlin:=mlin+1; 
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_SITALIQ';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_SITALIQ';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_SITALIQ';
mlin:=mlin+1; 
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_VLTP';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_VLTP';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_VLTP';
mlin:=mlin+1; 
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_BRANCOS';
STG_TIPO60A.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60A.Cells[mcol_tamanho,mlin]  :='79';
STG_TIPO60A.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60A.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60A.Cells[mcol_tamanho,mlin]);
STG_TIPO60A.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60A.Cells[mcol_obs,mlin]     :='T60A_BRANCOS';
STG_TIPO60A.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60A.Cells[mcol_nomcpo,mlin]  :='T60A_BRANCOS';
STG_TIPO60A.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo60D(pVersao: String): Boolean;
begin
STG_TIPO60D.RowCount:=6;
STG_TIPO60D.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO60D.ColWidths[mcol_tipdados]:=70;
STG_TIPO60D.ColWidths[mcol_tamanho] :=45;
STG_TIPO60D.ColWidths[mcol_decimais]:=45;
STG_TIPO60D.ColWidths[mcol_inicio]  :=45;
STG_TIPO60D.ColWidths[mcol_termino] :=45;
STG_TIPO60D.ColWidths[mcol_obs]     :=230;
STG_TIPO60D.ColWidths[mcol_opc]     :=30;
STG_TIPO60D.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO60D.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO60D.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO60D.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO60D.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO60D.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO60D.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_TIPO';
STG_TIPO60D.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO60D.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO60D.Cells[mcol_decimais,mlin]:='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='Valor Fixo: 60D';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_NomeXML,mlin] :='TBTIPO60D';
{
mlin:=mlin+1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_TIPO';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_TIPO';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_TIPO';
}
mlin:=mlin+1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_MA';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_MA';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_MA';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_DATA';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_DATA';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_DATA';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_NSECF';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_NSECF';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_NSECF';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_CODPRO';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_CODPRO';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_CODPRO';
mlin:=mlin+1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_QUANT';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_QUANT';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_QUANT';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLBRUTO';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_VLBRUTO';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLBRUTO';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLBCICMS';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_VLBCICMS';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLBCICMS';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_SITALIQ';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_SITALIQ';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_SITALIQ';
mlin:=mlin+1; 
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLCICMS';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_VLCICMS';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_VLCICMS';
mlin:=mlin+1;
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_BRANCOS';
STG_TIPO60D.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60D.Cells[mcol_tamanho,mlin]  :='19';
STG_TIPO60D.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60D.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60D.Cells[mcol_tamanho,mlin]);
STG_TIPO60D.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60D.Cells[mcol_obs,mlin]     :='T60D_BRANCOS';
STG_TIPO60D.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60D.Cells[mcol_nomcpo,mlin]  :='T60D_BRANCOS';
STG_TIPO60D.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo60I(pVersao: String): Boolean;
begin
STG_TIPO60I.RowCount:=6;
STG_TIPO60I.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO60I.ColWidths[mcol_tipdados]:=70;
STG_TIPO60I.ColWidths[mcol_tamanho] :=45;
STG_TIPO60I.ColWidths[mcol_decimais]:=45;
STG_TIPO60I.ColWidths[mcol_inicio]  :=45;
STG_TIPO60I.ColWidths[mcol_termino] :=45;
STG_TIPO60I.ColWidths[mcol_obs]     :=230;
STG_TIPO60I.ColWidths[mcol_opc]     :=30;
STG_TIPO60I.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO60I.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO60I.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO60I.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO60I.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO60I.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO60I.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_TIPO';
STG_TIPO60I.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO60I.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO60I.Cells[mcol_decimais,mlin]:='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='Valor Fixo: 60I';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_NomeXML,mlin] :='TBTIPO60I';
{
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_TIPO';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_TIPO';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_TIPO';
}
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_SUBTIPO';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_SUBTIPO';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_SUBTIPO';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_DATA';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_DATA';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_DATA';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_NSECF';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='20';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_NSECF';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_NSECF';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_MODELO';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_MODELO';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_MODELO';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_NUMDOC';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_NUMDOC';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_NUMDOC';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_ITEM';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_ITEM';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_ITEM';
mlin:=mlin+1; 
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_CODPRO';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_CODPRO';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_CODPRO';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_QUANT';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_QUANT';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_QUANT';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_TOTAL';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='13';
//STG_TIPO60I.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_TOTAL';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_TOTAL';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_BCICMS';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_BCICMS';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_BCICMS';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_SITALIQ';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_SITALIQ';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_SITALIQ';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_VLICMS';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_VLICMS';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_VLICMS';
mlin:=mlin+1;
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_BRANCOS';
STG_TIPO60I.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60I.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60I.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60I.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60I.Cells[mcol_tamanho,mlin]);
STG_TIPO60I.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60I.Cells[mcol_obs,mlin]     :='T60I_BRANCOS';
STG_TIPO60I.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60I.Cells[mcol_nomcpo,mlin]  :='T60I_BRANCOS';
STG_TIPO60I.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo60R(pVersao: String): Boolean;
begin
STG_TIPO60R.RowCount:=6;
STG_TIPO60R.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO60R.ColWidths[mcol_tipdados]:=70;
STG_TIPO60R.ColWidths[mcol_tamanho] :=45;
STG_TIPO60R.ColWidths[mcol_decimais]:=45;
STG_TIPO60R.ColWidths[mcol_inicio]  :=45;
STG_TIPO60R.ColWidths[mcol_termino] :=45;
STG_TIPO60R.ColWidths[mcol_obs]     :=230;
STG_TIPO60R.ColWidths[mcol_opc]     :=30;
STG_TIPO60R.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO60R.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO60R.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO60R.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO60R.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO60R.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO60R.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_TIPO';
STG_TIPO60R.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO60R.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO60R.Cells[mcol_decimais,mlin]:='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='Valor Fixo: 60R';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_NomeXML,mlin] :='TBTIPO60R';
{
mlin:=mlin+1;
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_TIPO';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO6OR.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_TIPO';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_TIPO';
}
mlin:=mlin+1;
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_SubTipo';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_SubTipo';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_SubTipo';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_MESANO';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_MESANO';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_MESANO';
mlin:=mlin+1;
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_CODPRO';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_CODPRO';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_CODPRO';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_QUANT';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_QUANT';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_QUANT';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_VLTOTAL';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_VLTOTAL';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_VLTOTAL';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_BCICMS';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_BCICMS';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_BCICMS';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_SITALI';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_SITALI';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_SITALI';
mlin:=mlin+1; 
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_BRANCOS';
STG_TIPO60R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO60R.Cells[mcol_tamanho,mlin]  :='54';
STG_TIPO60R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO60R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO60R.Cells[mcol_tamanho,mlin]);
STG_TIPO60R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO60R.Cells[mcol_obs,mlin]     :='T60R_BRANCOS';
STG_TIPO60R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO60R.Cells[mcol_nomcpo,mlin]  :='T60R_BRANCOS';
STG_TIPO60R.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo61(pVersao: String): Boolean;
begin
STG_TIPO61.RowCount:=6;
STG_TIPO61.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO61.ColWidths[mcol_tipdados]:=70;
STG_TIPO61.ColWidths[mcol_tamanho] :=45;
STG_TIPO61.ColWidths[mcol_decimais]:=45;
STG_TIPO61.ColWidths[mcol_inicio]  :=45;
STG_TIPO61.ColWidths[mcol_termino] :=45;
STG_TIPO61.ColWidths[mcol_obs]     :=230;
STG_TIPO61.ColWidths[mcol_opc]     :=30;
STG_TIPO61.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO61.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO61.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO61.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO61.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO61.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO61.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO61.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO61.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_TIPO';
STG_TIPO61.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO61.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO61.Cells[mcol_decimais,mlin]:='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='Valor Fixo: 61';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_NomeXML,mlin] :='TBTIPO61';
{
mlin:=mlin+1;
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_TIPO';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_TIPO';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_TIPO';
}
mlin:=mlin+1;
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_BRANCOS';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS1';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_BRANCOS1';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS1';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_DATA';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_DATA';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_DATA';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_MODELO';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_MODELO';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_MODELO';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_SERIE';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_SERIE';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_SERIE';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_SUBSERIE';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_SUBSERIE';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_SUBSERIE';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_NINICIAL';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_NINICIAL';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_NINICIAL';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_NFINAL';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_NFINAL';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_NFINAL';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_VLTOTAL';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_VLTOTAL';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_VLTOTAL';
mlin:=mlin+1;
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BCICMS';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_BCICMS';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BCICMS';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_VLICMS';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_VLICMS';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_VLICMS';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_ISENTAS';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_ISENTAS';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_ISENTAS';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_OUTRAS';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_OUTRAS';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_OUTRAS';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_ALIQUOTA';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_ALIQUOTA';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_ALIQUOTA';
mlin:=mlin+1; 
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS2';
STG_TIPO61.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO61.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61.Cells[mcol_tamanho,mlin]);
STG_TIPO61.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61.Cells[mcol_obs,mlin]     :='T61_BRANCOS2';
STG_TIPO61.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61.Cells[mcol_nomcpo,mlin]  :='T61_BRANCOS2';
STG_TIPO61.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo61R(pVersao: String): Boolean;
begin
STG_TIPO61R.RowCount:=6;
STG_TIPO61R.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO61R.ColWidths[mcol_tipdados]:=70;
STG_TIPO61R.ColWidths[mcol_tamanho] :=45;
STG_TIPO61R.ColWidths[mcol_decimais]:=45;
STG_TIPO61R.ColWidths[mcol_inicio]  :=45;
STG_TIPO61R.ColWidths[mcol_termino] :=45;
STG_TIPO61R.ColWidths[mcol_obs]     :=230;
STG_TIPO61R.ColWidths[mcol_opc]     :=30;
STG_TIPO61R.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO61R.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO61R.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO61R.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO61R.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO61R.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO61R.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_TIPO';
STG_TIPO61R.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO61R.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO61R.Cells[mcol_decimais,mlin]:='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='Valor Fixo: 61R';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_NomeXML,mlin] :='TBTIPO61R';
{
mlin:=mlin+1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_TIPO';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_TIPO';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_TIPO';
}
mlin:=mlin+1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_MA';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_MA';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_MA';
mlin:=mlin+1; 
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_MESANO';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_MESANO';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_MESANO';
mlin:=mlin+1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_CODPROD';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_CODPROD';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_CODPROD';
mlin:=mlin+1; 
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_QUANT';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_QUANT';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_QUANT';
mlin:=mlin+1; 
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_VLBRUTO';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_VLBRUTO';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_VLBRUTO';
mlin:=mlin+1; 
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_BCICMS';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='16';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_BCICMS';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_BCICMS';
mlin:=mlin+1; 
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_ALIQ';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_ALIQ';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_ALIQ';
mlin:=mlin+1;
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_BRANCOS';
STG_TIPO61R.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO61R.Cells[mcol_tamanho,mlin]  :='54';
STG_TIPO61R.Cells[mcol_decimais,mlin]  :='';
STG_TIPO61R.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO61R.Cells[mcol_tamanho,mlin]);
STG_TIPO61R.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO61R.Cells[mcol_obs,mlin]     :='T61R_BRANCOS';
STG_TIPO61R.Cells[mcol_opc,mlin]     :='M';
STG_TIPO61R.Cells[mcol_nomcpo,mlin]  :='T61R_BRANCOS';
STG_TIPO61R.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo70(pVersao: String): Boolean;
begin
STG_TIPO70.RowCount:=6;
STG_TIPO70.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO70.ColWidths[mcol_tipdados]:=70;
STG_TIPO70.ColWidths[mcol_tamanho] :=45;
STG_TIPO70.ColWidths[mcol_decimais]:=45;
STG_TIPO70.ColWidths[mcol_inicio]  :=45;
STG_TIPO70.ColWidths[mcol_termino] :=45;
STG_TIPO70.ColWidths[mcol_obs]     :=230;
STG_TIPO70.ColWidths[mcol_opc]     :=30;
STG_TIPO70.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO70.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO70.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO70.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO70.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO70.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO70.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO70.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO70.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_TIPO';
STG_TIPO70.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO70.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO70.Cells[mcol_decimais,mlin]:='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='Valor Fixo: 70';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_NomeXML,mlin] :='TBTIPO70';
{
mlin:=mlin+1;
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_TIPO';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_TIPO';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_TIPO';
}
mlin:=mlin+1;
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CNPJ';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_CNPJ';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CNPJ';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_IE';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_IE';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_IE';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_DATA';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_DATA';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_DATA';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_UF';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_UF';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_UF';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_MODELO';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_MODELO';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_MODELO';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SERIE';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_SERIE';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SERIE';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SUBSERIE';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_SUBSERIE';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SUBSERIE';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_NUMERO';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_NUMERO';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_NUMERO';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CFOP';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_CFOP';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CFOP';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_VLTOTAL';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_VLTOTAL';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_VLTOTAL';
mlin:=mlin+1;
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_BCICMS';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_BCICMS';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_BCICMS';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_VLICMS';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_VLICMS';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_VLICMS';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_ISENTAS';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_ISENTAS';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_ISENTAS';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_OUTRAS';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_OUTRAS';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_OUTRAS';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CIFFOB';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_CIFFOB';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_CIFFOB';
mlin:=mlin+1; 
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SITUACAO';
STG_TIPO70.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO70.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO70.Cells[mcol_decimais,mlin]  :='';
STG_TIPO70.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO70.Cells[mcol_tamanho,mlin]);
STG_TIPO70.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO70.Cells[mcol_obs,mlin]     :='T70_SITUACAO';
STG_TIPO70.Cells[mcol_opc,mlin]     :='M';
STG_TIPO70.Cells[mcol_nomcpo,mlin]  :='T70_SITUACAO';
STG_TIPO70.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo71(pVersao: String): Boolean;
begin
STG_TIPO71.RowCount:=6;
STG_TIPO71.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO71.ColWidths[mcol_tipdados]:=70;
STG_TIPO71.ColWidths[mcol_tamanho] :=45;
STG_TIPO71.ColWidths[mcol_decimais]:=45;
STG_TIPO71.ColWidths[mcol_inicio]  :=45;
STG_TIPO71.ColWidths[mcol_termino] :=45;
STG_TIPO71.ColWidths[mcol_obs]     :=230;
STG_TIPO71.ColWidths[mcol_opc]     :=30;
STG_TIPO71.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO71.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO71.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO71.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO71.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO71.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO71.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO71.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO71.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_TIPO';
STG_TIPO71.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO71.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]:='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='Valor Fixo: 71';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_NomeXML,mlin] :='TBTIPO71';
{
mlin:=mlin+1;
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_TIPO';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_TIPO';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_TIPO';
}
mlin:=mlin+1;
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_CNPJTOMADOR';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_CNPJTOMADOR';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_CNPJTOMADOR';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_IETOMADOR';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_IETOMADOR';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_IETOMADOR';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_DATA';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_DATA';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_DATA';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_UF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_UF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_UF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_MODELO';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_MODELO';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_MODELO';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SERIE';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_SERIE';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SERIE';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SUBSERIE';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_SUBSERIE';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SUBSERIE';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_NUMERO';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_NUMERO';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_NUMERO';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_UFNF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_UFNF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_UFNF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_CNPJNF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_CNPJNF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_CNPJNF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_IENF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_IENF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_IENF';
mlin:=mlin+1;
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_DATANF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_DATANF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_DATANF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_MODELONF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_MODELONF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_MODELONF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SERIENF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_SERIENF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_SERIENF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_NUMERONF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_NUMERONF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_NUMERONF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_VLNF';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_VLNF';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_VLNF';
mlin:=mlin+1; 
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_BRANCOS';
STG_TIPO71.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO71.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO71.Cells[mcol_decimais,mlin]  :='';
STG_TIPO71.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO71.Cells[mcol_tamanho,mlin]);
STG_TIPO71.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO71.Cells[mcol_obs,mlin]     :='T71_BRANCOS';
STG_TIPO71.Cells[mcol_opc,mlin]     :='M';
STG_TIPO71.Cells[mcol_nomcpo,mlin]  :='T71_BRANCOS';
STG_TIPO71.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo74(pVersao: String): Boolean;
begin
STG_TIPO74.RowCount:=6;
STG_TIPO74.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO74.ColWidths[mcol_tipdados]:=70;
STG_TIPO74.ColWidths[mcol_tamanho] :=45;
STG_TIPO74.ColWidths[mcol_decimais]:=45;
STG_TIPO74.ColWidths[mcol_inicio]  :=45;
STG_TIPO74.ColWidths[mcol_termino] :=45;
STG_TIPO74.ColWidths[mcol_obs]     :=230;
STG_TIPO74.ColWidths[mcol_opc]     :=30;
STG_TIPO74.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO74.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO74.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO74.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO74.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO74.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO74.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO74.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO74.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_TIPO';
STG_TIPO74.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO74.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO74.Cells[mcol_decimais,mlin]:='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='Valor Fixo: 74';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_NomeXML,mlin] :='TBTIPO74';
{
mlin:=mlin+1;
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_TIPO';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_TIPO';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_TIPO';
}
mlin:=mlin+1;
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_DATA';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_DATA';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_DATA';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CODPRO';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_CODPRO';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CODPRO';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_QTD';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_QTD';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_QTD';
mlin:=mlin+1;
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_TOTAL';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_TOTAL';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_TOTAL';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CODPOS';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_CODPOS';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CODPOS';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CNPJ';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_CNPJ';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_CNPJ';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_IE';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_IE';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_IE';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_UF';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_UF';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_UF';
mlin:=mlin+1; 
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_BRANCOS';
STG_TIPO74.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO74.Cells[mcol_tamanho,mlin]  :='45';
STG_TIPO74.Cells[mcol_decimais,mlin]  :='';
STG_TIPO74.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO74.Cells[mcol_tamanho,mlin]);
STG_TIPO74.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO74.Cells[mcol_obs,mlin]     :='T74_BRANCOS';
STG_TIPO74.Cells[mcol_opc,mlin]     :='M';
STG_TIPO74.Cells[mcol_nomcpo,mlin]  :='T74_BRANCOS';
STG_TIPO74.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo75(pVersao: String): Boolean;
begin
STG_TIPO75.RowCount:=6;
STG_TIPO75.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO75.ColWidths[mcol_tipdados]:=70;
STG_TIPO75.ColWidths[mcol_tamanho] :=45;
STG_TIPO75.ColWidths[mcol_decimais]:=45;
STG_TIPO75.ColWidths[mcol_inicio]  :=45;
STG_TIPO75.ColWidths[mcol_termino] :=45;
STG_TIPO75.ColWidths[mcol_obs]     :=230;
STG_TIPO75.ColWidths[mcol_opc]     :=30;
STG_TIPO75.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO75.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO75.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO75.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO75.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO75.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO75.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO75.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO75.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_TIPO';
STG_TIPO75.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO75.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO75.Cells[mcol_decimais,mlin]:='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='Valor Fixo: 75';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_NomeXML,mlin] :='TBTIPO75';
{
mlin:=mlin+1;
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_TIPO';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_TIPO';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_TIPO';
}
mlin:=mlin+1;
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DATAINICIAL';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_DATAINICIAL';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DATAINICIAL';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DATAFINAL';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_DATAFINAL';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DATAFINAL';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_CODPROD';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_CODPROD';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_CODPROD';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_CODNCM';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_CODNCM';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_CODNCM';
mlin:=mlin+1;
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DESCRICAO';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='53';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_DESCRICAO';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_DESCRICAO';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_UNID';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='06';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_UNID';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_UNID';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_ALIQUOTAIPI';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='05';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_ALIQUOTAIPI';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_ALIQUOTAIPI';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_ALIQUOTAICMS';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_ALIQUOTAICMS';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_ALIQUOTAICMS';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_REDBCICMS';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='05';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_REDBCICMS';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_REDBCICMS';
mlin:=mlin+1; 
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_BCICMSST';
STG_TIPO75.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO75.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO75.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO75.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO75.Cells[mcol_tamanho,mlin]);
STG_TIPO75.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO75.Cells[mcol_obs,mlin]     :='T75_BCICMSST';
STG_TIPO75.Cells[mcol_opc,mlin]     :='M';
STG_TIPO75.Cells[mcol_nomcpo,mlin]  :='T75_BCICMSST';
STG_TIPO75.RowCount:=mLin+1;
Result:=true;
end;
Function TFrm_LerSintegra.FGeraTipo76(pVersao: String): Boolean;
begin
STG_TIPO76.RowCount:=6;
STG_TIPO76.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO76.ColWidths[mcol_tipdados]:=70;
STG_TIPO76.ColWidths[mcol_tamanho] :=45;
STG_TIPO76.ColWidths[mcol_decimais]:=45;
STG_TIPO76.ColWidths[mcol_inicio]  :=45;
STG_TIPO76.ColWidths[mcol_termino] :=45;
STG_TIPO76.ColWidths[mcol_obs]     :=230;
STG_TIPO76.ColWidths[mcol_opc]     :=30;
STG_TIPO76.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO76.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO76.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO76.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO76.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO76.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO76.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO76.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO76.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_TIPO';
STG_TIPO76.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO76.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]:='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='Valor Fixo: 76';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_NomeXML,mlin] :='TBTIPO76';
{
mlin:=mlin+1;
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_TIPO';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_TIPO';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_TIPO';
}
mlin:=mlin+1;
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_CNPJ';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_CNPJ';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_CNPJ';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_IE';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_IE';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_IE';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_MODELO';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_MODELO';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_MODELO';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SERIE';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_SERIE';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SERIE';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SUBSERIE';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_SUBSERIE';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SUBSERIE';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_NUMERO';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='10';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_NUMERO';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_NUMERO';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_CFOP';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_CFOP';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_CFOP';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_TIPOREC';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='N';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_TIPOREC';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_TIPOREC';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_DTEREC';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='D';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_DTEREC';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_DTEREC';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_UF';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_UF';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_UF';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_VLTOTAL';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_VLTOTAL';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_VLTOTAL';
mlin:=mlin+1;
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_BCICMS';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_BCICMS';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_BCICMS';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_VLICMS';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_VLICMS';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_VLICMS';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_ISENTAS';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_ISENTAS';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_ISENTAS';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_OUTRAS';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_OUTRAS';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_OUTRAS';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_ALIQ';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_ALIQ';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_ALIQ';
mlin:=mlin+1; 
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SITUACAO';
STG_TIPO76.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO76.Cells[mcol_tamanho,mlin]  :='1';
STG_TIPO76.Cells[mcol_decimais,mlin]  :='';
STG_TIPO76.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO76.Cells[mcol_tamanho,mlin]);
STG_TIPO76.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO76.Cells[mcol_obs,mlin]     :='T76_SITUACAO';
STG_TIPO76.Cells[mcol_opc,mlin]     :='M';
STG_TIPO76.Cells[mcol_nomcpo,mlin]  :='T76_SITUACAO';
STG_TIPO76.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo77(pVersao: String): Boolean;
begin
STG_TIPO77.RowCount:=6;
STG_TIPO77.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO77.ColWidths[mcol_tipdados]:=70;
STG_TIPO77.ColWidths[mcol_tamanho] :=45;
STG_TIPO77.ColWidths[mcol_decimais]:=45;
STG_TIPO77.ColWidths[mcol_inicio]  :=45;
STG_TIPO77.ColWidths[mcol_termino] :=45;
STG_TIPO77.ColWidths[mcol_obs]     :=230;
STG_TIPO77.ColWidths[mcol_opc]     :=30;
STG_TIPO77.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO77.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO77.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO77.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO77.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO77.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO77.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO77.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO77.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_TIPO';
STG_TIPO77.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO77.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]:='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='Valor Fixo: 77';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_NomeXML,mlin] :='TBTIPO77';
{
mlin:=mlin+1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_TIPO';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='I';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_TIPO';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_TIPO';
}
mlin:=mlin+1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CNPJ';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_CNPJ';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CNPJ';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_MODELO';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_MODELO';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_MODELO';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_SERIE';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_SERIE';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_SERIE';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_SUBSERIE';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_SUBSERIE';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_SUBSERIE';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_NUMERO';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='10';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_NUMERO';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_NUMERO';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CFOP';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='04';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_CFOP';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CFOP';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_TIPOREC';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='N';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='01';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_TIPOREC';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_TIPOREC';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_ITEM';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='N';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='03';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_ITEM';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_ITEM';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CODPROD';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='11';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_CODPROD';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CODPROD';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_QUANT';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='13';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='3';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_QUANT';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_QUANT';
mlin:=mlin+1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_VLTOTAL';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_VLTOTAL';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_VLTOTAL';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_VLDESC';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_VLDESC';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_VLDESC';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_BCICMS';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='12';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='2';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_BCICMS';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_BCICMS';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_ALIQ';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_ALIQ';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_ALIQ';
mlin:=mlin+1; 
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CNPJNF';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='S';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_CNPJNF';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CNPJNF';
mlin:=mlin+1;
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CODTER';
STG_TIPO77.Cells[mcol_tipdados,mlin]  :='V';
STG_TIPO77.Cells[mcol_tamanho,mlin]  :='10';
STG_TIPO77.Cells[mcol_decimais,mlin]  :='';
STG_TIPO77.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO77.Cells[mcol_tamanho,mlin]);
STG_TIPO77.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO77.Cells[mcol_obs,mlin]     :='T77_CODTER';
STG_TIPO77.Cells[mcol_opc,mlin]     :='M';
STG_TIPO77.Cells[mcol_nomcpo,mlin]  :='T77_CODTER';
STG_TIPO77.RowCount:=mLin+1;
Result:=true;
end;

Function TFrm_LerSintegra.FGeraTipo90(pVersao: String): Boolean;
begin
STG_TIPO90.RowCount:=6;
STG_TIPO90.ColWidths[mcol_nomcpo]  :=180;
STG_TIPO90.ColWidths[mcol_tipdados]:=70;
STG_TIPO90.ColWidths[mcol_tamanho] :=45;
STG_TIPO90.ColWidths[mcol_decimais]:=45;
STG_TIPO90.ColWidths[mcol_inicio]  :=45;
STG_TIPO90.ColWidths[mcol_termino] :=45;
STG_TIPO90.ColWidths[mcol_obs]     :=230;
STG_TIPO90.ColWidths[mcol_opc]     :=30;
STG_TIPO90.ColWidths[mcol_NomeXML] :=60;
mLin:=0;
mPosIni:=1;
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_TIPO90.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_TIPO90.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_TIPO90.Cells[mcol_decimais,mlin]:='Decimais';
STG_TIPO90.Cells[mcol_inicio,mlin]  :='Inicio';
STG_TIPO90.Cells[mcol_termino,mlin] :='Termino';
STG_TIPO90.Cells[mcol_obs,mlin]     :='Observacoes';
STG_TIPO90.Cells[mcol_opc,mlin]     :='Opcional';
STG_TIPO90.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para Receber';
mlin:=mlin+1;
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_TIPO';
STG_TIPO90.Cells[mcol_tipdados,mlin]:='Alfanumerico';
STG_TIPO90.Cells[mcol_tamanho,mlin] :='02';
STG_TIPO90.Cells[mcol_decimais,mlin]:='';
STG_TIPO90.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO90.Cells[mcol_tamanho,mlin]);
STG_TIPO90.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO90.Cells[mcol_obs,mlin]     :='Valor Fixo: ';
STG_TIPO90.Cells[mcol_opc,mlin]     :='M';
STG_TIPO90.Cells[mcol_NomeXML,mlin] :='TBTIPO90)';
mlin:=mlin+1; 
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_CNPJ';
STG_TIPO90.Cells[mcol_tipdados,mlin]  :='alfanumerico';
STG_TIPO90.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO90.Cells[mcol_decimais,mlin]  :='';
STG_TIPO90.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO90.Cells[mcol_tamanho,mlin]);
STG_TIPO90.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO90.Cells[mcol_obs,mlin]     :='T90_CNPJ';
STG_TIPO90.Cells[mcol_opc,mlin]     :='M';
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_CNPJ';
mlin:=mlin+1;
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_INSCRICAO';
STG_TIPO90.Cells[mcol_tipdados,mlin]  :='alfanumerico';
STG_TIPO90.Cells[mcol_tamanho,mlin]  :='14';
STG_TIPO90.Cells[mcol_decimais,mlin]  :='';
STG_TIPO90.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO90.Cells[mcol_tamanho,mlin]);
STG_TIPO90.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO90.Cells[mcol_obs,mlin]     :='T90_INSCRICAO';
STG_TIPO90.Cells[mcol_opc,mlin]     :='M';
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_INSCRICAO';
mlin:=mlin+1; 
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_TIPOREG';
STG_TIPO90.Cells[mcol_tipdados,mlin]  :='Inteiro';
STG_TIPO90.Cells[mcol_tamanho,mlin]  :='02';
STG_TIPO90.Cells[mcol_decimais,mlin]  :='';
STG_TIPO90.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO90.Cells[mcol_tamanho,mlin]);
STG_TIPO90.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO90.Cells[mcol_obs,mlin]     :='T90_TIPOREG';
STG_TIPO90.Cells[mcol_opc,mlin]     :='M';
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_TIPOREG';
mlin:=mlin+1; 
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_TOTREG';
STG_TIPO90.Cells[mcol_tipdados,mlin]  :='Inteiro';
STG_TIPO90.Cells[mcol_tamanho,mlin]  :='08';
STG_TIPO90.Cells[mcol_decimais,mlin]  :='';
STG_TIPO90.Cells[mcol_inicio,mlin]  :=FormatFloat('000',mPosIni);
mPosIni:=mPosIni+valint(STG_TIPO90.Cells[mcol_tamanho,mlin]);
STG_TIPO90.Cells[mcol_termino,mlin] :=FormatFloat('000',mPosIni-1);
STG_TIPO90.Cells[mcol_obs,mlin]     :='T90_TOTREG';
STG_TIPO90.Cells[mcol_opc,mlin]     :='M';
STG_TIPO90.Cells[mcol_nomcpo,mlin]  :='T90_TOTREG';
STG_TIPO90.RowCount:=mLin+1;
mlin:=mlin+1;
result:=true;
end;
procedure TFrm_LerSintegra.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy', StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_LerSintegra.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy', StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

function fdeixanum2(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];

Result:=maux;
end;

procedure TFrm_LerSintegra.NUMNFIExit(Sender: TObject);
begin
NUMNFI.Text:=fdeixanum2(NUMNFI.Text);
end;

procedure TFrm_LerSintegra.NUMNFFExit(Sender: TObject);
begin
NUMNFF.Text:=fdeixanum2(NUMNFF.Text);
end;

procedure TFrm_LerSintegra.NUMCFIExit(Sender: TObject);
begin
NUMCFI.Text:=fdeixanum2(NUMCFI.Text);
end;

procedure TFrm_LerSintegra.NUMCFFExit(Sender: TObject);
begin
NUMCFF.Text:=fdeixanum2(NUMCFF.Text);

end;
function Fnomearq_Pasta(ptipo: Integer; pNome: String): String;
// ptipo=0 extrai o nome do arquivo 1-Extrai o nome da pasta
var
x,mTam: Integer;
mPasta,mArq: String;
begin
mPasta:='';
mArq  :='';
mtam:=length(pNome);
for x:=mTam downto 1 do
   begin
   if pnome[x]='\' then
      begin
{
123456789012345678901234567
c:\arquivos\teste\cadpro.db
x=18
mtam=27           123456789

19- (27-18)=9
}
      mPasta:=copy(pnome,1,x-1);
      marq  :=copy(pnome,(x+1),mtam-(x));
      break;
      end;
   end;
if ptipo=0 then
   result:=mArq
else
   result:=mPasta;
end;


procedure TFrm_LerSintegra.bbLerClick(Sender: TObject);
begin
if not FileExists(NOMEARQ.Text) then
   begin
   MessageDlg('Favor Selecionar um Arquivo válido!',mtWarning,[mbOk],0);
   NOMEARQ.SetFocus;
   exit;
   end;
NOMEPASTA.Text:=Fnomearq_Pasta(1,NOMEARQ.Text);
ARQUIVO.Text  :=Fnomearq_Pasta(0,NOMEARQ.Text);
mTot10 :=0;
mTot11 :=0;
mTot50 :=0;
mTot51 :=0;
mTot53 :=0;
mTot54 :=0;
mTot55 :=0;
mTot56 :=0;
mTot60M :=0;
mTot60A :=0;
mTot60D :=0;
mTot60I :=0;
mTot60R :=0;
mTot61  :=0;
mTot61R :=0;
mTot70 :=0;
mTot71 :=0;
mTot74 :=0;
mTot75 :=0;
mTot76 :=0;
mTot77 :=0;
mTot90 :=0;


fCriarEsquema('');
fCarregarTabelas('');
{
fCarregarTabelas('11');
fCarregarTabelas('50');
fCarregarTabelas('51');
fCarregarTabelas('53');
fCarregarTabelas('56');
fCarregarTabelas('54');
fCarregarTabelas('55');
fCarregarTabelas('60A');
fCarregarTabelas('60M');
fCarregarTabelas('60R');
fCarregarTabelas('60D');
fCarregarTabelas('60I');
fCarregarTabelas('61');
fCarregarTabelas('61R');
fCarregarTabelas('70');
fCarregarTabelas('71');
fCarregarTabelas('74');
fCarregarTabelas('75');
fCarregarTabelas('76');
fCarregarTabelas('77');
fCarregarTabelas('90');

}



Tb_Tipo10.Close;
Tb_Tipo10.Open;
Tb_Tipo11.Close;
Tb_Tipo11.Open;
Tb_Tipo90.Close;
Tb_Tipo90.Open;

lbl_tipo10.Caption:='Total dos Registros do Tipo 10: '+IntTostr(mTot10);
lbl_tipo11.Caption:='Total dos Registros do Tipo 11: '+IntTostr(mTot11);
lbl_tipo50.Caption:='Total dos Registros do Tipo 50: '+IntTostr(mTot50);
lbl_tipo51.Caption:='Total dos Registros do Tipo 51: '+IntTostr(mTot51);
lbl_tipo53.Caption:='Total dos Registros do Tipo 53: '+IntTostr(mTot53);
lbl_tipo54.Caption:='Total dos Registros do Tipo 54: '+IntTostr(mTot54);
lbl_tipo55.Caption:='Total dos Registros do Tipo 55: '+IntTostr(mTot55);
lbl_tipo56.Caption:='Total dos Registros do Tipo 56: '+IntTostr(mTot56);
lbl_tipo60M.Caption:='Total dos Registros do Tipo 60M: '+IntTostr(mTot60M);
lbl_tipo60A.Caption:='Total dos Registros do Tipo 60A: '+IntTostr(mTot60A);
lbl_tipo60I.Caption:='Total dos Registros do Tipo 60I: '+IntTostr(mTot60I);
lbl_tipo60D.Caption:='Total dos Registros do Tipo 60D: '+IntTostr(mTot60D);
lbl_tipo60R.Caption:='Total dos Registros do Tipo 60R: '+IntTostr(mTot60R);
lbl_tipo70.Caption:='Total dos Registros do Tipo 70: '+IntTostr(mTot70);
lbl_tipo71.Caption:='Total dos Registros do Tipo 71: '+IntTostr(mTot71);
lbl_tipo74.Caption:='Total dos Registros do Tipo 74: '+IntTostr(mTot74);
lbl_tipo75.Caption:='Total dos Registros do Tipo 75: '+IntTostr(mTot75);
lbl_tipo76.Caption:='Total dos Registros do Tipo 76: '+IntTostr(mTot76);
lbl_tipo77.Caption:='Total dos Registros do Tipo 77: '+IntTostr(mTot77);
lbl_tipo90.Caption:='Total dos Registros do Tipo 90: '+IntTostr(mTot90);

end;

function TFrm_LerSintegra.fCriarEsquema(pTipo: String): Boolean;
var
x: Integer;
begin

if (trim(pTipo)='') or (pTipo='10') then
   begin
   if Tb_Tipo10.Active then
      Tb_Tipo10.Close;
   if Tb_Tipo10.Exists then
      Tb_Tipo10.DeleteTable;
   Tb_Tipo10.FieldDefs.Clear;
   Tb_Tipo10.DatabaseName:=NOMEPASTA.Text;
   Tb_Tipo10.TableName   :='TBTIPO10';
   for x:=1 to STG_TIPO10.RowCount-1 do
      begin
      if STG_TIPO10.Cells[mcol_tipdados,x]='D' then
         Tb_Tipo10.FieldDefs.Add(STG_TIPO10.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO10.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO10.Cells[mcol_tipdados,x]='V') then
         Tb_Tipo10.FieldDefs.Add(STG_TIPO10.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_Tipo10.FieldDefs.Add(STG_TIPO10.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO10.Cells[mcol_tamanho,x]),false);
      end;
   Tb_Tipo10.CreateTable;
   Tb_Tipo10.Open;
   end;

if (trim(pTipo)='') or (pTipo='11') then
   begin
   if Tb_Tipo11.Active then
      Tb_Tipo11.Close;
   if Tb_Tipo11.Exists then
      Tb_Tipo11.DeleteTable;
   Tb_Tipo11.FieldDefs.Clear;
   Tb_Tipo11.DatabaseName:=NOMEPASTA.Text;
   Tb_Tipo11.TableName   :='TBTIPO11';
   for x:=1 to STG_TIPO11.RowCount-1 do
      begin
      if STG_TIPO11.Cells[mcol_tipdados,x]='D' then
         Tb_Tipo11.FieldDefs.Add(STG_TIPO11.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO11.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO11.Cells[mcol_tipdados,x]='V') then
         Tb_Tipo11.FieldDefs.Add(STG_TIPO11.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_Tipo11.FieldDefs.Add(STG_TIPO11.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO11.Cells[mcol_tamanho,x]),false);
      end;
   Tb_Tipo11.CreateTable;
   Tb_Tipo11.Open;
   end;

if (trim(pTipo)='') or (pTipo='50') then
   begin
   if Tb_TIPO50.Active then
      Tb_TIPO50.Close;
   if Tb_TIPO50.Exists then
      Tb_TIPO50.DeleteTable;
   Tb_TIPO50.FieldDefs.Clear;
   Tb_TIPO50.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO50.TableName   :='TBTIPO50';
   for x:=1 to STG_TIPO50.RowCount-1 do
      begin
      if STG_TIPO50.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO50.FieldDefs.Add(STG_TIPO50.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO50.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO50.Cells[mcol_tipdados,x]='V') then
         Tb_Tipo50.FieldDefs.Add(STG_TIPO50.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO50.FieldDefs.Add(STG_TIPO50.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO50.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO50.CreateTable;
   Tb_TIPO50.Open;
   end;

if (trim(pTipo)='') or (pTipo='51') then
   begin
   if Tb_TIPO51.Active then
      Tb_TIPO51.Close;
   if Tb_TIPO51.Exists then
      Tb_TIPO51.DeleteTable;
   Tb_TIPO51.FieldDefs.Clear;
   Tb_TIPO51.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO51.TableName   :='TBTIPO51';
   for x:=1 to STG_TIPO51.RowCount-1 do
      begin
      if STG_TIPO51.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO51.FieldDefs.Add(STG_TIPO51.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO51.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO51.Cells[mcol_tipdados,x]='V') then
         Tb_Tipo51.FieldDefs.Add(STG_TIPO51.Cells[mcol_nomcpo,x],ftFloat,0,false)

      else
         Tb_TIPO51.FieldDefs.Add(STG_TIPO51.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO51.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO51.CreateTable;
   Tb_TIPO51.Open;
   end;

if (trim(pTipo)='') or (pTipo='53') then
   begin
   if Tb_TIPO53.Active then
      Tb_TIPO53.Close;
   if Tb_TIPO53.Exists then
      Tb_TIPO53.DeleteTable;
   Tb_TIPO53.FieldDefs.Clear;
   Tb_TIPO53.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO53.TableName   :='TBTIPO53';
   for x:=1 to STG_TIPO53.RowCount-1 do
      begin
      if STG_TIPO53.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO53.FieldDefs.Add(STG_TIPO53.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO53.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO53.Cells[mcol_tipdados,x]='V') then
         Tb_Tipo53.FieldDefs.Add(STG_TIPO53.Cells[mcol_nomcpo,x],ftFloat,0,false)

      else
         Tb_TIPO53.FieldDefs.Add(STG_TIPO53.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO53.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO53.CreateTable;
   Tb_TIPO53.Open;
   end;


if (trim(pTipo)='') or (pTipo='55') then
   begin
   if Tb_TIPO54.Active then
      Tb_TIPO54.Close;
   if Tb_TIPO54.Exists then
      Tb_TIPO54.DeleteTable;
   Tb_TIPO54.FieldDefs.Clear;
   Tb_TIPO54.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO54.TableName   :='TBTIPO54';
   for x:=1 to STG_TIPO54.RowCount-1 do
      begin
      if STG_TIPO54.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO54.FieldDefs.Add(STG_TIPO54.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO54.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO54.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO54.FieldDefs.Add(STG_TIPO54.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO54.FieldDefs.Add(STG_TIPO54.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO54.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO54.CreateTable;
   Tb_TIPO54.Open;
   end;

if (trim(pTipo)='') or (pTipo='51') then
   begin
   if Tb_TIPO55.Active then
      Tb_TIPO55.Close;
   if Tb_TIPO55.Exists then
      Tb_TIPO55.DeleteTable;
   Tb_TIPO55.FieldDefs.Clear;
   Tb_TIPO55.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO55.TableName   :='TBTIPO55';
   for x:=1 to STG_TIPO55.RowCount-1 do
      begin
      if STG_TIPO55.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO55.FieldDefs.Add(STG_TIPO55.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO55.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO55.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO55.FieldDefs.Add(STG_TIPO55.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO55.FieldDefs.Add(STG_TIPO55.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO55.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO55.CreateTable;
   Tb_TIPO55.Open;
   end;

if (trim(pTipo)='') or (pTipo='56') then
   begin
   if Tb_TIPO56.Active then
      Tb_TIPO56.Close;
   if Tb_TIPO56.Exists then
      Tb_TIPO56.DeleteTable;
   Tb_TIPO56.FieldDefs.Clear;
   Tb_TIPO56.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO56.TableName   :='TBTIPO56';
   for x:=1 to STG_TIPO56.RowCount-1 do
      begin
      if STG_TIPO56.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO56.FieldDefs.Add(STG_TIPO56.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO56.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO56.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO56.FieldDefs.Add(STG_TIPO56.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO56.FieldDefs.Add(STG_TIPO56.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO56.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO56.CreateTable;
   Tb_TIPO56.Open;
   end;

if (trim(pTipo)='') or (pTipo='60A') then
   begin
   if Tb_TIPO60A.Active then
      Tb_TIPO60A.Close;
   if Tb_TIPO60A.Exists then
      Tb_TIPO60A.DeleteTable;
   Tb_TIPO60A.FieldDefs.Clear;
   Tb_TIPO60A.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO60A.TableName   :='TBTIPO60A';
   for x:=1 to STG_TIPO60A.RowCount-1 do
      begin
      if STG_TIPO60A.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO60A.FieldDefs.Add(STG_TIPO60A.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO60A.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO60A.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO60A.FieldDefs.Add(STG_TIPO60A.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO60A.FieldDefs.Add(STG_TIPO60A.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO60A.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO60A.CreateTable;
   Tb_TIPO60A.Open;
   end;

if (trim(pTipo)='') or (pTipo='60M') then
   begin
   if Tb_TIPO60M.Active then
      Tb_TIPO60M.Close;
   if Tb_TIPO60M.Exists then
      Tb_TIPO60M.DeleteTable;
   Tb_TIPO60M.FieldDefs.Clear;
   Tb_TIPO60M.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO60M.TableName   :='TBTIPO60M';
   for x:=1 to STG_TIPO60M.RowCount-1 do
      begin
      if STG_TIPO60M.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO60M.FieldDefs.Add(STG_TIPO60M.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO60M.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO60M.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO60M.FieldDefs.Add(STG_TIPO60M.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO60M.FieldDefs.Add(STG_TIPO60M.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO60M.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO60M.CreateTable;
   Tb_TIPO60M.Open;
   end;

if (trim(pTipo)='') or (pTipo='60R') then
   begin
   if Tb_TIPO60R.Active then
      Tb_TIPO60R.Close;
   if Tb_TIPO60R.Exists then
      Tb_TIPO60R.DeleteTable;
   Tb_TIPO60R.FieldDefs.Clear;
   Tb_TIPO60R.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO60R.TableName   :='TBTIPO60R';
   for x:=1 to STG_TIPO60R.RowCount-1 do
      begin
      if STG_TIPO60R.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO60R.FieldDefs.Add(STG_TIPO60R.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO60R.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO60R.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO60R.FieldDefs.Add(STG_TIPO60R.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO60R.FieldDefs.Add(STG_TIPO60R.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO60R.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO60R.CreateTable;
   Tb_TIPO60R.Open;
   end;

if (trim(pTipo)='') or (pTipo='60D') then
   begin
   if Tb_TIPO60D.Active then
      Tb_TIPO60D.Close;
   if Tb_TIPO60D.Exists then
      Tb_TIPO60D.DeleteTable;
   Tb_TIPO60D.FieldDefs.Clear;
   Tb_TIPO60D.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO60D.TableName   :='TBTIPO60D';
   for x:=1 to STG_TIPO60D.RowCount-1 do
      begin
      if STG_TIPO60D.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO60D.FieldDefs.Add(STG_TIPO60D.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO60D.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO60D.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO60D.FieldDefs.Add(STG_TIPO60D.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO60D.FieldDefs.Add(STG_TIPO60D.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO60D.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO60D.CreateTable;
   Tb_TIPO60D.Open;
   end;

if (trim(pTipo)='') or (pTipo='60I') then
   begin
   if Tb_TIPO60I.Active then
      Tb_TIPO60I.Close;
   if Tb_TIPO60I.Exists then
      Tb_TIPO60I.DeleteTable;
   Tb_TIPO60I.FieldDefs.Clear;
   Tb_TIPO60I.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO60I.TableName   :='TBTIPO60I';
   for x:=1 to STG_TIPO60I.RowCount-1 do
      begin
      if STG_TIPO60I.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO60I.FieldDefs.Add(STG_TIPO60I.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO60I.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO60I.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO60I.FieldDefs.Add(STG_TIPO60I.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO60I.FieldDefs.Add(STG_TIPO60I.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO60I.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO60I.CreateTable;
   Tb_TIPO60I.Open;
   end;

if (trim(pTipo)='') or (pTipo='61') then
   begin
   if Tb_TIPO61.Active then
      Tb_TIPO61.Close;
   if Tb_TIPO61.Exists then
      Tb_TIPO61.DeleteTable;
   Tb_TIPO61.FieldDefs.Clear;
   Tb_TIPO61.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO61.TableName   :='TBTIPO61';
   for x:=1 to STG_TIPO61.RowCount-1 do
      begin
      if STG_TIPO61.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO61.FieldDefs.Add(STG_TIPO61.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO61.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO61.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO61.FieldDefs.Add(STG_TIPO61.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO61.FieldDefs.Add(STG_TIPO61.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO61.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO61.CreateTable;
   Tb_TIPO61.Open;
   end;

if (trim(pTipo)='') or (pTipo='61R') then
   begin
   if Tb_TIPO61R.Active then
      Tb_TIPO61R.Close;
   if Tb_TIPO61R.Exists then
      Tb_TIPO61R.DeleteTable;
   Tb_TIPO61R.FieldDefs.Clear;
   Tb_TIPO61R.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO61R.TableName   :='TBTIPO61R';
   for x:=1 to STG_TIPO61R.RowCount-1 do
      begin
      if STG_TIPO61R.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO61R.FieldDefs.Add(STG_TIPO61R.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO61R.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO61R.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO61R.FieldDefs.Add(STG_TIPO61R.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO61R.FieldDefs.Add(STG_TIPO61R.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO61R.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO61R.CreateTable;
   Tb_TIPO61R.Open;
   end;

if (trim(pTipo)='') or (pTipo='70') then
   begin
   if Tb_TIPO70.Active then
      Tb_TIPO70.Close;
   if Tb_TIPO70.Exists then
      Tb_TIPO70.DeleteTable;
   Tb_TIPO70.FieldDefs.Clear;
   Tb_TIPO70.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO70.TableName   :='TBTIPO70';
   for x:=1 to STG_TIPO70.RowCount-1 do
      begin
      if STG_TIPO70.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO70.FieldDefs.Add(STG_TIPO70.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO70.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO70.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO70.FieldDefs.Add(STG_TIPO70.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO70.FieldDefs.Add(STG_TIPO70.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO70.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO70.CreateTable;
   Tb_TIPO70.Open;
   end;
if (trim(pTipo)='') or (pTipo='71') then
   begin
   if Tb_TIPO71.Active then
      Tb_TIPO71.Close;
   if Tb_TIPO71.Exists then
      Tb_TIPO71.DeleteTable;
   Tb_TIPO71.FieldDefs.Clear;
   Tb_TIPO71.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO71.TableName   :='TBTIPO71';
   for x:=1 to STG_TIPO71.RowCount-1 do
      begin
      if STG_TIPO71.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO71.FieldDefs.Add(STG_TIPO71.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO71.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO71.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO71.FieldDefs.Add(STG_TIPO71.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO71.FieldDefs.Add(STG_TIPO71.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO71.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO71.CreateTable;
   Tb_TIPO71.Open;
   end;

if (trim(pTipo)='') or (pTipo='74') then
   begin
   if Tb_TIPO74.Active then
      Tb_TIPO74.Close;
   if Tb_TIPO74.Exists then
      Tb_TIPO74.DeleteTable;
   Tb_TIPO74.FieldDefs.Clear;
   Tb_TIPO74.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO74.TableName   :='TBTIPO74';
   for x:=1 to STG_TIPO74.RowCount-1 do
      begin
      if STG_TIPO74.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO74.FieldDefs.Add(STG_TIPO74.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO74.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO74.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO74.FieldDefs.Add(STG_TIPO74.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO74.FieldDefs.Add(STG_TIPO74.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO74.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO74.CreateTable;
   Tb_TIPO74.Open;
   end;

if (trim(pTipo)='') or (pTipo='75') then
   begin
   if Tb_TIPO75.Active then
      Tb_TIPO75.Close;
   if Tb_TIPO75.Exists then
      Tb_TIPO75.DeleteTable;
   Tb_TIPO75.FieldDefs.Clear;
   Tb_TIPO75.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO75.TableName   :='TBTIPO75';
   for x:=1 to STG_TIPO75.RowCount-1 do
      begin
      if STG_TIPO75.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO75.FieldDefs.Add(STG_TIPO75.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO75.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO75.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO75.FieldDefs.Add(STG_TIPO75.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO75.FieldDefs.Add(STG_TIPO75.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO75.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO75.CreateTable;
   Tb_TIPO75.Open;
   end;

if (trim(pTipo)='') or (pTipo='76') then
   begin
   if Tb_TIPO76.Active then
      Tb_TIPO76.Close;
   if Tb_TIPO76.Exists then
      Tb_TIPO76.DeleteTable;
   Tb_TIPO76.FieldDefs.Clear;
   Tb_TIPO76.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO76.TableName   :='TBTIPO76';
   for x:=1 to STG_TIPO76.RowCount-1 do
      begin
      if STG_TIPO76.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO76.FieldDefs.Add(STG_TIPO76.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO76.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO76.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO76.FieldDefs.Add(STG_TIPO76.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO76.FieldDefs.Add(STG_TIPO76.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO76.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO76.CreateTable;
   Tb_TIPO76.Open;
   end;

if (trim(pTipo)='') or (pTipo='77') then
   begin
   if Tb_TIPO77.Active then
      Tb_TIPO77.Close;
   if Tb_TIPO77.Exists then
      Tb_TIPO77.DeleteTable;
   Tb_TIPO77.FieldDefs.Clear;
   Tb_TIPO77.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO77.TableName   :='TBTIPO77';
   for x:=1 to STG_TIPO77.RowCount-1 do
      begin
      if STG_TIPO77.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO77.FieldDefs.Add(STG_TIPO77.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO77.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO77.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO77.FieldDefs.Add(STG_TIPO77.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO77.FieldDefs.Add(STG_TIPO77.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO77.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO77.CreateTable;
   Tb_TIPO77.Open;
   end;


if (trim(pTipo)='') or (pTipo='90') then
   begin
   if Tb_TIPO90.Active then
      Tb_TIPO90.Close;
   if Tb_TIPO90.Exists then
      Tb_TIPO90.DeleteTable;
   Tb_TIPO90.FieldDefs.Clear;
   Tb_TIPO90.DatabaseName:=NOMEPASTA.Text;
   Tb_TIPO90.TableName   :='TBTIPO90';
   for x:=1 to STG_TIPO90.RowCount-1 do
      begin
      if STG_TIPO90.Cells[mcol_tipdados,x]='D' then
         Tb_TIPO90.FieldDefs.Add(STG_TIPO90.Cells[mcol_nomcpo,x],ftDateTime,0,false)
      else if (STG_TIPO90.Cells[mcol_tipdados,x]='Numerico') or
              (STG_TIPO90.Cells[mcol_tipdados,x]='V') then
         Tb_TIPO90.FieldDefs.Add(STG_TIPO90.Cells[mcol_nomcpo,x],ftFloat,0,false)
      else
         Tb_TIPO90.FieldDefs.Add(STG_TIPO90.Cells[mcol_nomcpo,x],ftString,
         valint(STG_TIPO90.Cells[mcol_tamanho,x]),false);
      end;
   Tb_TIPO90.CreateTable;
   Tb_TIPO90.Open;
   end;

result:=true;

end;

function TFrm_LerSintegra.fCarregarTabelas(pTipo: String): Boolean;
var
x: Integer;
f: TextFile;
mlinha: string;
begin
AssignFile(f,NOMEARQ.Text);
Reset(f);
while not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,02)='10' then
      FCarregaTipo10(mlinha)
   else if copy(mlinha,1,02)='11' then
      FCarregaTipo11(mlinha)
   else if copy(mlinha,1,02)='50' then
      FCarregaTipo50(mlinha)
   else if copy(mlinha,1,02)='51' then
      FCarregaTipo51(mlinha)
   else if copy(mlinha,1,02)='53' then
      FCarregaTipo53(mlinha)
   else if copy(mlinha,1,02)='54' then
      FCarregaTipo54(mlinha)
   else if copy(mlinha,1,02)='55' then
      FCarregaTipo55(mlinha)
   else if copy(mlinha,1,02)='56' then
      FCarregaTipo56(mlinha)
   else if copy(mlinha,1,03)='60A' then
      FCarregaTipo60A(mlinha)
   else if copy(mlinha,1,03)='60D' then
      FCarregaTipo60D(mlinha)
   else if copy(mlinha,1,03)='60M' then
      FCarregaTipo60M(mlinha)
   else if copy(mlinha,1,03)='60R' then
      FCarregaTipo60R(mlinha)
   else if copy(mlinha,1,03)='60I' then
      FCarregaTipo60I(mlinha)
   else if copy(mlinha,1,03)='61R' then
      FCarregaTipo61R(mlinha)
   else if copy(mlinha,1,02)='61' then
      FCarregaTipo61(mlinha)
   else if copy(mlinha,1,02)='70' then
      FCarregaTipo70(mlinha)
   else if copy(mlinha,1,02)='71' then
      FCarregaTipo71(mlinha)
   else if copy(mlinha,1,02)='74' then
      FCarregaTipo74(mlinha)
   else if copy(mlinha,1,02)='75' then
      FCarregaTipo75(mlinha)
   else if copy(mlinha,1,02)='76' then
      FCarregaTipo76(mlinha)
   else if copy(mlinha,1,02)='77' then
      FCarregaTipo77(mlinha)
   else if copy(mlinha,1,02)='90' then
      FCarregaTipo90(mlinha)
   end;
CloseFile(f);
result:=true;
end;

procedure TFrm_LerSintegra.SPB_LERClick(Sender: TObject);
begin
if OPD1.Execute then NOMEARQ.Text:=OPD1.FileName;
end;

Function tFrm_LerSintegra.FCarregaTipo10(pLinha: String): Boolean;
var
x: Integer;
begin

mTot10:=mTot10+1;
Tb_Tipo10.Append;
for x:=1 to STG_TIPO10.RowCount-1 do
   begin
   if STG_TIPO10.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_Tipo10.FieldByName(STG_TIPO10.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO10.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO10.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO10.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO10.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO10.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO10.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_Tipo10.FieldByName(STG_TIPO10.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO10.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO10.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO10.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_Tipo10.FieldByName(STG_TIPO10.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO10.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO10.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_Tipo10.FieldByName(STG_TIPO10.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO10.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO10.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_Tipo10.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO11(pLinha: String): Boolean;
var
x: Integer;
begin
mTot11:=mTot11+1;

Tb_TIPO11.Append;
for x:=1 to STG_TIPO11.RowCount-1 do
   begin
   if STG_TIPO11.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO11.FieldByName(STG_TIPO11.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO11.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO11.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO11.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO11.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO11.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO11.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO11.FieldByName(STG_TIPO11.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO11.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO11.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO11.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO11.FieldByName(STG_TIPO11.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO11.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO11.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO11.FieldByName(STG_TIPO11.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO11.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO11.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO11.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO50(pLinha: String): Boolean;
var
x: Integer;
begin
mTot50:=mTot50+1;

Tb_TIPO50.Append;
for x:=1 to STG_TIPO50.RowCount-1 do
   begin
   if STG_TIPO50.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO50.FieldByName(STG_TIPO50.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO50.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO50.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO50.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO50.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO50.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO50.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO50.FieldByName(STG_TIPO50.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO50.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO50.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO50.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO50.FieldByName(STG_TIPO50.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO50.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO50.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO50.FieldByName(STG_TIPO50.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO50.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO50.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO50.Post;
result:=true;

end;
Function tFrm_LerSintegra.FCarregaTIPO51(pLinha: String): Boolean;
var
x: Integer;
begin
mTot51:=mTot51+1;

Tb_TIPO51.Append;
for x:=1 to STG_TIPO51.RowCount-1 do
   begin
   if STG_TIPO51.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO51.FieldByName(STG_TIPO51.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO51.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO51.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO51.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO51.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO51.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO51.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO51.FieldByName(STG_TIPO51.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO51.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO51.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO51.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO51.FieldByName(STG_TIPO51.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO51.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO51.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO51.FieldByName(STG_TIPO51.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO51.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO51.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO51.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO53(pLinha: String): Boolean;
var
x: Integer;
begin
mTot53:=mTot53+1;

Tb_TIPO53.Append;
for x:=1 to STG_TIPO53.RowCount-1 do
   begin
   if STG_TIPO53.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO53.FieldByName(STG_TIPO53.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO53.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO53.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO53.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO53.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO53.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO53.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO53.FieldByName(STG_TIPO53.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO53.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO53.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO53.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO53.FieldByName(STG_TIPO53.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO53.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO53.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO53.FieldByName(STG_TIPO53.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO53.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO53.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO53.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO54(pLinha: String): Boolean;
var
x: Integer;
begin
mTot54:=mTot54+1;
Tb_TIPO54.Append;
for x:=1 to STG_TIPO54.RowCount-1 do
   begin
   if STG_TIPO54.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO54.FieldByName(STG_TIPO54.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO54.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO54.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO54.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO54.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO54.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO54.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO54.FieldByName(STG_TIPO54.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO54.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO54.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO54.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO54.FieldByName(STG_TIPO54.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO54.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO54.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO54.FieldByName(STG_TIPO54.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO54.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO54.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO54.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO55(pLinha: String): Boolean;
var
x: Integer;
begin

mTot55:=mTot55+1;
Tb_TIPO55.Append;
for x:=1 to STG_TIPO55.RowCount-1 do
   begin
   if STG_TIPO55.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO55.FieldByName(STG_TIPO55.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO55.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO55.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO55.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO55.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO55.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO55.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO55.FieldByName(STG_TIPO55.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO55.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO55.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO55.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO55.FieldByName(STG_TIPO55.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO55.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO55.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO55.FieldByName(STG_TIPO55.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO55.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO55.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO55.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO56(pLinha: String): Boolean;
var
x: Integer;
begin

mTot56:=mTot56+1;
Tb_TIPO56.Append;
for x:=1 to STG_TIPO56.RowCount-1 do
   begin
   if STG_TIPO56.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO56.FieldByName(STG_TIPO56.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO56.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO56.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO56.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO56.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO56.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO56.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO56.FieldByName(STG_TIPO56.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO56.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO56.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO56.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO56.FieldByName(STG_TIPO56.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO56.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO56.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO56.FieldByName(STG_TIPO56.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO56.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO56.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO56.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO60A(pLinha: String): Boolean;
var
x: Integer;
begin
mTot60A:=mTot60A+1;

Tb_TIPO60A.Append;
for x:=1 to STG_TIPO60A.RowCount-1 do
   begin
   if STG_TIPO60A.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO60A.FieldByName(STG_TIPO60A.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO60A.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60A.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60A.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO60A.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO60A.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO60A.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO60A.FieldByName(STG_TIPO60A.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60A.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60A.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO60A.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO60A.FieldByName(STG_TIPO60A.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60A.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60A.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO60A.FieldByName(STG_TIPO60A.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO60A.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60A.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO60A.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO60D(pLinha: String): Boolean;
var
x: Integer;
begin
mTot60D:=mTot60D+1;
Tb_TIPO60D.Append;
for x:=1 to STG_TIPO60D.RowCount-1 do
   begin
   if STG_TIPO60D.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO60D.FieldByName(STG_TIPO60D.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO60D.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60D.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60D.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO60D.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO60D.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO60D.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO60D.FieldByName(STG_TIPO60D.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60D.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60D.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO60D.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO60D.FieldByName(STG_TIPO60D.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60D.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60D.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO60D.FieldByName(STG_TIPO60D.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO60D.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60D.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO60D.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO60M(pLinha: String): Boolean;
var
x: Integer;
begin
mTot60M:=mTot60M+1;

Tb_TIPO60M.Append;
for x:=1 to STG_TIPO60M.RowCount-1 do
   begin
   if STG_TIPO60M.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO60M.FieldByName(STG_TIPO60M.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO60M.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60M.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60M.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO60M.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO60M.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO60M.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO60M.FieldByName(STG_TIPO60M.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60M.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60M.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO60M.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO60M.FieldByName(STG_TIPO60M.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60M.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60M.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO60M.FieldByName(STG_TIPO60M.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO60M.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60M.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO60M.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO60R(pLinha: String): Boolean;
var
x: Integer;
begin
mTot60R:=mTot60R+1;

Tb_TIPO60R.Append;
for x:=1 to STG_TIPO60R.RowCount-1 do
   begin
   if STG_TIPO60R.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO60R.FieldByName(STG_TIPO60R.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO60R.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60R.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60R.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO60R.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO60R.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO60R.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO60R.FieldByName(STG_TIPO60R.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60R.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO60R.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO60R.FieldByName(STG_TIPO60R.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60R.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO60R.FieldByName(STG_TIPO60R.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO60R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60R.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO60R.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO60I(pLinha: String): Boolean;
var
x: Integer;
begin

mTot60I:=mTot60I+1;
Tb_TIPO60I.Append;
for x:=1 to STG_TIPO60I.RowCount-1 do
   begin
   if STG_TIPO60I.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO60I.FieldByName(STG_TIPO60I.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO60I.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60I.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO60I.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO60I.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO60I.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO60I.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO60I.FieldByName(STG_TIPO60I.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60I.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60I.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO60I.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO60I.FieldByName(STG_TIPO60I.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO60I.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60I.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO60I.FieldByName(STG_TIPO60I.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO60I.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO60I.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO60I.Post;
result:=true;

end;
Function tFrm_LerSintegra.FCarregaTIPO61(pLinha: String): Boolean;
var
x: Integer;
begin
mTot61:=mTot61+1;

Tb_TIPO61.Append;
for x:=1 to STG_TIPO61.RowCount-1 do
   begin
   if STG_TIPO61.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO61.FieldByName(STG_TIPO61.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO61.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO61.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO61.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO61.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO61.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO61.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO61.FieldByName(STG_TIPO61.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO61.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO61.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO61.FieldByName(STG_TIPO61.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO61.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO61.FieldByName(STG_TIPO61.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO61.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO61.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO61R(pLinha: String): Boolean;
var
x: Integer;
begin
mTot61R:=mTot61R+1;

Tb_TIPO61R.Append;
for x:=1 to STG_TIPO61R.RowCount-1 do
   begin
   if STG_TIPO61R.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO61R.FieldByName(STG_TIPO61R.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO61R.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO61R.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO61R.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO61R.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO61R.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO61R.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO61R.FieldByName(STG_TIPO61R.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO61R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61R.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO61R.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO61R.FieldByName(STG_TIPO61R.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO61R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61R.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO61R.FieldByName(STG_TIPO61R.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO61R.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO61R.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO61R.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO70(pLinha: String): Boolean;
var
x: Integer;
begin

mTot70:=mTot70+1;
Tb_TIPO70.Append;
for x:=1 to STG_TIPO70.RowCount-1 do
   begin
   if STG_TIPO70.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO70.FieldByName(STG_TIPO70.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO70.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO70.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO70.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO70.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO70.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO70.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO70.FieldByName(STG_TIPO70.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO70.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO70.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO70.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO70.FieldByName(STG_TIPO70.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO70.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO70.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO70.FieldByName(STG_TIPO70.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO70.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO70.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO70.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO71(pLinha: String): Boolean;
var
x: Integer;
begin

mTot71:=mTot71+1;
Tb_TIPO71.Append;
for x:=1 to STG_TIPO71.RowCount-1 do
   begin
   if STG_TIPO71.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO71.FieldByName(STG_TIPO71.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO71.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO71.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO71.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO71.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO71.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO71.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO71.FieldByName(STG_TIPO71.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO71.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO71.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO71.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO71.FieldByName(STG_TIPO71.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO71.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO71.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO71.FieldByName(STG_TIPO71.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO71.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO71.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO71.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO74(pLinha: String): Boolean;
var
x: Integer;
begin

mTot74:=mTot74+1;
Tb_TIPO74.Append;
for x:=1 to STG_TIPO74.RowCount-1 do
   begin
   if STG_TIPO74.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO74.FieldByName(STG_TIPO74.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO74.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO74.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO74.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO74.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO74.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO74.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO74.FieldByName(STG_TIPO74.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO74.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO74.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO74.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO74.FieldByName(STG_TIPO74.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO74.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO74.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO74.FieldByName(STG_TIPO74.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO74.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO74.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO74.Post;
result:=true;

end;
Function tFrm_LerSintegra.FCarregaTIPO75(pLinha: String): Boolean;
var
x: Integer;
begin
mTot75:=mTot75+1;

Tb_TIPO75.Append;
for x:=1 to STG_TIPO75.RowCount-1 do
   begin
   if STG_TIPO75.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO75.FieldByName(STG_TIPO75.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO75.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO75.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO75.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO75.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO75.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO75.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO75.FieldByName(STG_TIPO75.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO75.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO75.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO75.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO75.FieldByName(STG_TIPO75.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO75.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO75.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO75.FieldByName(STG_TIPO75.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO75.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO75.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO75.Post;
result:=true;

end;
Function tFrm_LerSintegra.FCarregaTIPO76(pLinha: String): Boolean;
var
x: Integer;
begin
mTot76:=mTot76+1;

Tb_TIPO76.Append;
for x:=1 to STG_TIPO76.RowCount-1 do
   begin
   if STG_TIPO76.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO76.FieldByName(STG_TIPO76.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO76.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO76.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO76.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO76.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO76.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO76.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO76.FieldByName(STG_TIPO76.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO76.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO76.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO76.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO76.FieldByName(STG_TIPO76.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO76.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO76.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO76.FieldByName(STG_TIPO76.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO76.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO76.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO76.Post;
result:=true;

end;

Function tFrm_LerSintegra.FCarregaTIPO77(pLinha: String): Boolean;
var
x: Integer;
begin
mTot77:=mTot77+1;

Tb_TIPO77.Append;
for x:=1 to STG_TIPO77.RowCount-1 do
   begin
   if STG_TIPO77.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO77.FieldByName(STG_TIPO77.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO77.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO77.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO77.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO77.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO77.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO77.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO77.FieldByName(STG_TIPO77.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO77.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO77.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO77.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO77.FieldByName(STG_TIPO77.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO77.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO77.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO77.FieldByName(STG_TIPO77.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO77.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO77.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO77.Post;
result:=true;

end;


Function tFrm_LerSintegra.FCarregaTIPO90(pLinha: String): Boolean;
var
x: Integer;
begin

mTot90:=mTot90+1;
Tb_TIPO90.Append;
for x:=1 to STG_TIPO90.RowCount-1 do
   begin
   if STG_TIPO90.Cells[mcol_tipdados,x]='D' then
      begin
      try
         Tb_TIPO90.FieldByName(STG_TIPO90.Cells[mcol_nomcpo,x]).AsDateTime:=StrToDate
                              (copy(plinha,StrToInt(STG_TIPO90.Cells[mcol_inicio,x])+6,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO90.Cells[mcol_inicio,x])+4,2)+'/'
                 +copy(plinha,StrToInt(STG_TIPO90.Cells[mcol_inicio,x]),4));
      except
         end;
      end
   else if (STG_TIPO90.Cells[mcol_tipdados,x]='Numerico') or
           (STG_TIPO90.Cells[mcol_tipdados,x]='V') then
      begin
      if trim(STG_TIPO90.Cells[mcol_decimais,x])<>'' then
         begin
         try
            Tb_TIPO90.FieldByName(STG_TIPO90.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO90.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO90.Cells[mcol_tamanho,x])
                      )
                   )
                                /
                                StrToFloat('1'+insere('0','0',
                                StrtoInt(STG_TIPO90.Cells[mcol_decimais,x])));
         except
            end
         end
      else
         begin
         try
            Tb_TIPO90.FieldByName(STG_TIPO90.Cells[mcol_nomcpo,x]).Asfloat:=
            StrToFloat(
                  copy(plinha,  StrtoInt(STG_TIPO90.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO90.Cells[mcol_tamanho,x])
                      )
                   );
         except
            end;
         end;
      end
   else
      begin
      Tb_TIPO90.FieldByName(STG_TIPO90.Cells[mcol_nomcpo,x]).AsString:=
                  copy(plinha,  StrtoInt(STG_TIPO90.Cells[mcol_inicio,x]),
                                StrToInt(STG_TIPO90.Cells[mcol_tamanho,x])
                    );
      end;
   end;
Tb_TIPO90.Post;
result:=true;

end;


//Insere um Caracter qtd vezes em uma string
function Insere(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x: Integer;
  nt: String;
begin
nt:=Texto;
for x:=1 to Qtd-Length(Texto) do
   nt:=Caracter+nt;
result:=Copy(nt,1,Qtd);
end;

procedure TFrm_LerSintegra.CB_DUPLICClick(Sender: TObject);
begin
if CB_DUPLIC.Checked then
   CB_DUPBAI.Enabled:=true
else
   CB_DUPBAI.Enabled:=false;

end;

procedure TFrm_LerSintegra.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LerSintegra.bbRestAgoraClick(Sender: TObject);
var
mChave: Real;
mNumnf_Ant: Real;
mCnpj_Ant: Real;
mSerie_ant: String;
mModelo_ant: String;
mData_ant: TDateTime;
mItem: Real;
begin

if (not Tb_Tipo10.Active) or (Tb_Tipo10.IsEmpty) then
   begin
   MessageDlg('Favor Executar a Leitura para Depois Efetuar a Restauracao',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from cadfp ');
DM1.Qr_FP.Open;
if not Tb_Tipo54.isempty then 
   begin
   Tb_Tipo54.First;
   mNumnf_Ant :=Tb_Tipo54.FieldByName('T54_NUMERO').AsFloat ;
   mCnpj_Ant  :=Tb_Tipo54.FieldByName('T54_CNPJ').AsFloat ;
   mSerie_ant :=Tb_Tipo54.FieldByName('T54_SERIE').AsString;
   mModelo_ant:=Tb_Tipo54.FieldByName('T54_MODELO').AsString;
//   mChave     :=fbuscaNUMPED(codemp);
   end;
mItem      :=0;
While not Tb_Tipo54.Eof do
   begin
   if NUMNFI.Text<>'' then
      begin
      if Tb_Tipo54.FieldByName('T54_NUMERO').AsInteger<ValInt(NUMNFI.Text) then
         begin
         Tb_Tipo54.Next;
         Continue;
         end;
      end;
   if NUMNFF.Text<>'' then
      begin
      if Tb_Tipo54.FieldByName('T54_NUMERO').AsInteger>ValInt(NUMNFF.Text) then
         begin
         Tb_Tipo54.Next;
         Continue;
         end;
      end;
   if (trim(MDT1.Text)<>'/  /') or (trim(MDT2.Text)<>'/  /') then
      begin
      if not Frm_LerSintegra.Tb_Tipo50.Locate('T50_NUMERO;CNPJ;T50_MODELO;T50_SERIE',
                            vararrayof([Tb_Tipo54.FieldByName('T54_NUMERO').AsFloat,
                                        Tb_Tipo54.FieldByName('T54_CNPJ').AsFloat,
                                        Tb_Tipo54.FieldByName('T54_SERIE').AsString,
                                        Tb_Tipo54.FieldByName('T54_MODELO').AsString]),[]) then
         begin
         MessageDlg('Erro ao Procurar registro do tipo 50'+#13
                   +'Numero: '+Tb_Tipo54.FieldByName('T54_NUMERO').Asstring+#13
                   +'SERIE: '+Tb_Tipo54.FieldByName('T54_SERIE').Asstring+#13
                   +'Modelo: '+Tb_Tipo54.FieldByName('T54_MODELO').Asstring,
                   mtWarning,[mbOk],0);
         exit;
         end;
     if trim(MDT1.Text)<>'/  /' then
        begin
        if Tb_Tipo50.FieldByName('T50_DATA').AsDateTime<StrToDate(MDT1.Text) then
           begin
           Tb_Tipo54.Next;
           Continue;
           end;
        end;
     if trim(MDT2.Text)<>'/  /' then
        begin
        if Tb_Tipo50.FieldByName('T50_DATA').AsDateTime<StrToDate(MDT2.Text) then
           begin
           Tb_Tipo54.Next;
           Continue;
           end;
        end;
     end;
   if (Tb_Tipo54.FieldByName('T54_NUMERO').AsFloat<>mNumnf_Ant) or
      (Tb_Tipo54.FieldByName('T54_CNPJ').AsFloat<>mCnpj_Ant) or
      (Tb_Tipo54.FieldByName('T54_SERIE').AsString<>mSerie_ant) or
      (Tb_Tipo54.FieldByName('T54_MODELO').AsString<>mModelo_ant) then
      begin
      mNumnf_Ant :=Tb_Tipo54.FieldByName('T54_NUMERO').AsFloat ;
      mCnpj_Ant  :=Tb_Tipo54.FieldByName('T54_CNPJ').AsFloat ;
      mSerie_ant :=Tb_Tipo54.FieldByName('T54_SERIE').AsString;
      mModelo_ant:=Tb_Tipo54.FieldByName('T54_MODELO').AsString;
      mItem      :=0;
//      if not fGravarPed01(mChave,mNumnf_Ant,0,mCnpj_Ant,mModelo_ant,mSerie_ant,'',CB_NF.Checked,CB_DUPLIC.Checked,CB_DUPBAI.Checked) then
//         exit;
//      mChave:=fbuscaNUMPED(codemp);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODFOR,PDCODGRU,PDLISTA,PDTABICM,PDPMC,PDUCPR,PDPRECOC from CADPRO '
                     +' where PDCODPRO=0'+trim(Tb_Tipo54.FieldByName('T54_CODPROD').AsString));
   DM1.Query1.Open;
   if DM1.Query1.IsEmpty then
      begin
      MessageDlg('Erro ao Procurar o Produto: '+Tb_Tipo54.FieldByName('T54_CODPROD').AsString,mtwarning,[mbOk],0);
      exit;
      end;


   mItem:=mItem+1;
   DM4.Qr_IncPed02.Close;
   DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=codemp;
   DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ls_numped;
   DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchave;
   DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=01;
   DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mitem;
   DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=Tb_Tipo54.FieldByName('T54_CODPROD').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=Tb_Tipo54.FieldByName('T54_CODPROD').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=Tb_Tipo54.FieldByName('T54_QUANTIDADE').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2QTD_ATEN').AsFloat    :=Tb_Tipo54.FieldByName('T54_QUANTIDADE').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       :=' ';
   DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsString     :='';
   DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=(Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                           Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat)
                                                           /Tb_Tipo54.FieldByName('T54_QUANTIDADE').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        :=Tb_Tipo54.FieldByName('T54_CST').AsString;
   DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=DM1.Query1.FieldbyName('PDCODFOR').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=DM1.Query1.FieldbyName('PDCODGRU').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       :=Tb_Tipo54.FieldByName('T54_BCICMS').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=Tb_Tipo54.FieldByName('T54_ALIQ').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       :=Arredonda( (Tb_Tipo54.FieldByName('T54_BCICMS').AsFloat
                                                          *Tb_Tipo54.FieldByName('T54_ALIQ').AsFloat/100), 2);
   DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=Tb_Tipo54.FieldByName('T54_BCICMSST').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=DM1.Query1.fieldbyName('PDLISTA').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=1;
   DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      :=Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     :=Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=0;
   DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     :=DM1.Query1.fieldbyName('PDTABICM').AsString;
   if Tb_Tipo54.FieldByName('T54_VLIPI').AsFloat=0 then
      DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=0
   else
      begin
      DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=(Tb_Tipo54.FieldByName('T54_VLIPI').AsFloat*100)
                                                             / (Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                                Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat);
      end;
   DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=Tb_Tipo54.FieldByName('T54_VLIPI').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=0;
   if Tb_Tipo54.FieldByName('T54_CST').AsString='040' then
      DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat  :=0
   else
      DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat  :=(Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                           Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat);
   DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2VCOM02').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2VCOM03').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2VCOM04').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2PCOM02').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2PCOM03').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=Tb_Tipo54.FieldByName('T54_CFOP').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2CFOSUBECF').AsFloat   :=0;
   DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      :=(Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                           Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat);
   DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    :=0;
   DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     :=0;
   DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   :=' ';
   DM4.Qr_IncPed02.ParambyName('P2AMBIENTE').AsString   :=' ';
   DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGUE').AsFloat:=0;
   DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGANDO').AsFloat:=0;
   DM4.Qr_IncPed02.ParambyName('P2PCOMIS_EXTRA').AsFloat  :=0;
   DM4.Qr_IncPed02.ParambyName('P2VCOMIS_EXTRA').AsFloat  :=0;
   DM4.Qr_IncPed02.ParambyName('P2STATUS_PED1').AsFloat   :=0;
   DM4.Qr_IncPed02.ParambyName('P2TIPO').AsFloat          :=1;
   DM4.Qr_IncPed02.ParambyName('P2CODAGRU').AsFloat       :=0;
   DM4.Qr_IncPed02.ParambyName('P2CONSIG').AsFloat        :=0;
   DM4.Qr_IncPed02.ParambyName('P2ST_IVA').AsFloat        :=0;
   DM4.Qr_IncPed02.ParambyName('P2ST_REDUT').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2ST_ICMCRED').AsFloat    :=0;
   DM4.Qr_IncPed02.ParambyName('P2ST_ICMDEB').AsFloat     :=0;
   DM4.Qr_IncPed02.ParambyName('P2REDUTICM').AsFloat      :=0;
   DM4.Qr_IncPed02.ParambyName('P2PRAZO').AsFloat         :=0;
   DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat        :=(Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                           Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat)
                                                           /Tb_Tipo54.FieldByName('T54_QUANTIDADE').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      :=(Tb_Tipo54.FieldByName('T54_VLPRODUTO').AsFloat-
                                                        Tb_Tipo54.FieldByName('T54_VLDESCONTO').AsFloat)
                                                        /Tb_Tipo54.FieldByName('T54_QUANTIDADE').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=DM1.Query1.fieldbyName('PDLISTA').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=DM1.Query1.fieldbyName('PDUCPR').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=DM1.Query1.fieldbyName('PDPRECOC').AsFloat;
   DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=0;
   Try
      DM4.Qr_IncPed02.ExecSQL;
      fdm1StartCommit;
   except
      ShowMessage('Erro ao Atualizar Produto');
      exit;
      end;
   Tb_Tipo54.Next;
   end;
if not Tb_Tipo54.IsEmpty then
   begin
//   if not fGravarPed01(mChave,mNumnf_Ant,0,mCnpj_Ant,mModelo_ant,mSerie_ant,'',CB_NF.Checked,CB_DUPLIC.Checked,CB_DUPBAI.Checked) then
//      exit;

   end;
if not Tb_Tipo60I.IsEmpty then
   begin
   Tb_Tipo60I.First;
   mNumnf_Ant :=Tb_Tipo60I.FieldByName('T60I_NUMDOC').AsFloat ;
   mData_ant  :=Tb_Tipo60I.FieldByName('T60I_DATA').AsDateTime;
   mSerie_ant :=Tb_Tipo60i.FieldByName('T60I_NSECF').AsString;

//   mChave     :=fbuscaNUMPED(codemp);

   While not Tb_Tipo60I.Eof do
      begin
      if NUMCFI.Text<>'' then
         begin
         if Tb_Tipo60I.FieldByName('T60I_NUMDOC').AsInteger<ValInt(NUMCFI.Text) then
            begin
            Tb_Tipo60I.Next;
            Continue;
            end;
         end;
      if NUMCFF.Text<>'' then
         begin
         if Tb_Tipo60I.FieldByName('T60I_NUMDOC').AsInteger>ValInt(NUMCFF.Text) then
            begin
            Tb_Tipo60I.Next;
            Continue;
            end;
         end;
      if (trim(MDT1.Text)<>'/  /') or (trim(MDT2.Text)<>'/  /') then
         begin
        if trim(MDT1.Text)<>'/  /' then
           begin
           if Tb_Tipo60I.FieldByName('T60I_DATA').AsDateTime<StrToDate(MDT1.Text) then
              begin
              Tb_Tipo60I.Next;
              Continue;
              end;
           end;
        if trim(MDT2.Text)<>'/  /' then
           begin
           if Tb_Tipo60I.FieldByName('T60I_DATA').AsDateTime<StrToDate(MDT2.Text) then
              begin
              Tb_Tipo60I.Next;
              Continue;
              end;
           end;
        end;

      if (Tb_Tipo60I.FieldByName('T60I_NUMDOC').AsFloat<>mNumnf_Ant) or
         (Tb_Tipo60I.FieldByName('T60I_DATA').AsDateTime<>mData_ant) or
         (Tb_Tipo60I.FieldByName('T60I_NSECF').AsString<>mSerie_ant) then
         begin
         mNumnf_Ant :=Tb_Tipo60I.FieldByName('T60I_NUMDOC').AsFloat ;
         mData_ant  :=Tb_Tipo60I.FieldByName('T60I_DATA').AsDateTime;
         mSerie_ant :=Tb_Tipo60i.FieldByName('T60i_NSECF').AsString;
         mItem      :=0;
//         if not fGravarPed01(mChave,mNumnf_Ant,mNumnf_Ant,mCnpj_Ant,mModelo_ant,mSerie_ant,mSerie_ant,CB_NF.Checked,CB_DUPLIC.Checked,CB_DUPBAI.Checked) then
//            exit;
//         mChave:=fbuscaNUMPED(codemp);
         end;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select PDCODFOR,PDCODGRU,PDLISTA,PDTABICM,PDPMC,PDUCPR,PDPRECOC,PDSIT from CADPRO '
                        +' where PDCODPRO=0'+trim(Tb_Tipo60i.FieldByName('T60I_CODPRO').AsString));
      DM1.Query1.Open;
      if DM1.Query1.IsEmpty then
         begin
         MessageDlg('Erro ao Procurar o Produto: '+Tb_Tipo60I.FieldByName('T60I_CODPRO').AsString,mtwarning,[mbOk],0);
         exit;
         end;


      mItem:=mItem+1;
      DM4.Qr_IncPed02.Close;
      DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=codemp;
      DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ls_numped;
      DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchave;
      DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=01;
      DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mitem;
      DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=Tb_Tipo60I.FieldByName('T60I_CODPRO').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=Tb_Tipo60I.FieldByName('T60I_CODPRO').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=Tb_Tipo60I.FieldByName('T60I_QUANT').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2QTD_ATEN').AsFloat    :=Tb_Tipo60I.FieldByName('T60I_QUANT').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       :=' ';
      DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsString     :='';
      DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=(Tb_Tipo60I.FieldByName('T60I_TOTAL').AsFloat);
//                                                              /Tb_Tipo60I.FieldByName('T60I_QUANT').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        :=DM1.Query1.fieldbyName('PDSIT').AsString;;
      DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=DM1.Query1.FieldbyName('PDCODFOR').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=DM1.Query1.FieldbyName('PDCODGRU').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       :=Tb_Tipo60I.FieldByName('T60I_BCICMS').AsFloat;
      if ENumero(Tb_Tipo60I.FieldByName('T60I_SITALIQ').Asstring) then
         DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=ValFloat(Tb_Tipo60I.FieldByName('T60I_SITALIQ').AsString)/100
      else
         DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=0;

      DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       :=Tb_Tipo60I.FieldByName('T60I_VLICMS').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=DM1.Query1.fieldbyName('PDLISTA').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=1;
      DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      :=(Tb_Tipo60I.FieldByName('T60I_TOTAL').AsFloat
                                                              *Tb_Tipo60I.FieldByName('T60I_QUANT').AsFloat)
                                                             -Tb_Tipo60I.fieldbyName('T60I_BCICMS').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     :=(Tb_Tipo60I.FieldByName('T60I_TOTAL').AsFloat
                                                              *Tb_Tipo60I.FieldByName('T60I_QUANT').AsFloat)
                                                             -Tb_Tipo60I.fieldbyName('T60I_BCICMS').AsFloat;

      DM4.Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=0;
      DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     :=DM1.Query1.fieldbyName('PDTABICM').AsString;
      DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=0;
      if Tb_Tipo60I.FieldByName('T60I_SITALIQ').AsString<>'II' then
         DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat  :=0
      else
         DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat  :=Tb_Tipo60I.FieldByName('T60I_BCICMS').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2VCOM02').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2VCOM03').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2VCOM04').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2PCOM02').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2PCOM03').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       :=0;
      if Tb_Tipo60I.FieldByName('T60I_SITALIQ').AsString<>'FF' then
         DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=5402
      ELSE
         DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=5102;
      DM4.Qr_IncPed02.ParambyName('P2CFOSUBECF').AsFloat   :=0;
      DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      :=Tb_Tipo60I.FieldByName('T60I_BCICMS').AsFloat;;
      DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    :=0;
      DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     :=0;
      DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   :=' ';
      DM4.Qr_IncPed02.ParambyName('P2AMBIENTE').AsString   :=' ';
      DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGUE').AsFloat:=0;
      DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGANDO').AsFloat:=0;
      DM4.Qr_IncPed02.ParambyName('P2PCOMIS_EXTRA').AsFloat  :=0;
      DM4.Qr_IncPed02.ParambyName('P2VCOMIS_EXTRA').AsFloat  :=0;
      DM4.Qr_IncPed02.ParambyName('P2STATUS_PED1').AsFloat   :=0;
      DM4.Qr_IncPed02.ParambyName('P2TIPO').AsFloat          :=1;
      DM4.Qr_IncPed02.ParambyName('P2CODAGRU').AsFloat       :=0;
      DM4.Qr_IncPed02.ParambyName('P2CONSIG').AsFloat        :=0;
      DM4.Qr_IncPed02.ParambyName('P2ST_IVA').AsFloat        :=0;
      DM4.Qr_IncPed02.ParambyName('P2ST_REDUT').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2ST_ICMCRED').AsFloat    :=0;
      DM4.Qr_IncPed02.ParambyName('P2ST_ICMDEB').AsFloat     :=0;
      DM4.Qr_IncPed02.ParambyName('P2REDUTICM').AsFloat      :=0;
      DM4.Qr_IncPed02.ParambyName('P2PRAZO').AsFloat         :=0;
      DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat        :=(Tb_Tipo60I.FieldByName('T60I_TOTAL').AsFloat);
      DM4.Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      :=(Tb_Tipo60I.FieldByName('T60I_TOTAL').AsFloat);
      DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=DM1.Query1.fieldbyName('PDLISTA').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=DM1.Query1.fieldbyName('PDUCPR').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=DM1.Query1.fieldbyName('PDPRECOC').AsFloat;
      DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=0;
      Try
         DM4.Qr_IncPed02.ExecSQL;
         fdm1StartCommit;
      except
         ShowMessage('Erro ao Atualizar Produto');
         exit;
         end;
      Tb_Tipo60i.Next;
      end;
   if not Tb_Tipo54.IsEmpty then
      begin
//      if not fGravarPed01(mChave,mNumnf_Ant,mNumnf_Ant,mCnpj_Ant,mModelo_ant,mSerie_ant,mSerie_ant,CB_NF.Checked,CB_DUPLIC.Checked,CB_DUPBAI.Checked) then
//         exit;
      end;
   end;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_LerSintegra.BitBtn1Click(Sender: TObject);
begin
Query1.Close;
Query1.DatabaseName:=NOMEPASTA.Text;

Query1.SQL.Clear;
Query1.SQL.Add(Memo1.Text);
try
   Query1.Open;
except
   Query1.SQL.SaveToFile('c:\sql.txt');
   end;
end;

procedure TFrm_LerSintegra.bbVerificarClick(Sender: TObject);
var
mTotReg,mRegLid: Integer;
mNumCf: Integer;
mDataCF: TDateTime;
mTotLiq: Real;
mBasen: Real;
begin

mTotReg:=Tb_Tipo60I.RecordCount;
mRegLid:=0;
Tb_Tipo60I.First;
Memo_Evento.Lines.Clear;
While not Tb_Tipo60I.Eof do
   begin
   mRegLid:=mRegLid+1;
   Gauge_60i.Progress:=mRegLid*100 div mTotReg;

   Qr_Ped02.Close;
   Qr_Ped02.ParamByName('NUMCF').AsFloat    :=Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsFloat;
   Qr_Ped02.ParamByName('CODEMP').AsFloat   :=codemp;
   Qr_Ped02.ParamByName('DATACF').AsDateTime:=Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime;
   Qr_Ped02.Open;
   if Qr_Ped02.IsEmpty then
      begin
      Memo_Evento.Lines.Add('Cupom Número: '+Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsString+' Data: '+FormatDateTime(fdt2, Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime)+' Não Encontrado!') ;
      Tb_Tipo60I.Next;
      Continue;
      end;
   mNumCf := Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsInteger;
   mDataCF:= Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime;
   While (not Tb_Tipo60I.Eof) and
      (mNumCf=Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsInteger)
      and (mDataCF=Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime) do
      begin
      mRegLid:=mRegLid+1;
      Gauge_60i.Progress:=mRegLid*100 div mTotReg;
      Frm_LerSintegra.Update;
      if not Qr_Ped02.Locate('P2ITEM;P2CODPRO',vararrayof([Tb_Tipo60I.fieldbyName('T60I_ITEM').AsInteger
                                                           ,Tb_Tipo60I.fieldbyName('T60I_CODPRO').AsFloat]),[]) then
         begin
         Memo_Evento.Lines.Add('Cupom Número: '+Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsString+' Data: '+FormatDateTime(fdt2, Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime)
                              +' Item: '+Tb_Tipo60I.fieldbyName('T60I_ITEM').AsString
                              +' Codigo: '+Tb_Tipo60I.fieldbyName('T60I_CODPRO').AsString
                              +' Produto/Item Não Encontrado!') ;
         Tb_Tipo60I.Next;
         Continue;
         end;
      mTotLiq:=Arredonda( ((Qr_Ped02P2QTD.AsFloat*Qr_Ped02P2PRECO.AsFloat)-Qr_Ped02P2TOTDES.AsFloat) ,2);
      if Arredonda( Tb_Tipo60I.fieldbyName('T60I_TOTAL').AsFloat ,2)<> mTotLiq then
         begin
         Memo_Evento.Lines.Add('Cupom Número: '+Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsString+' Data: '+FormatDateTime(fdt2, Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime)
                              +' Item: '+Tb_Tipo60I.fieldbyName('T60I_ITEM').AsString
                              +' Codigo: '+Tb_Tipo60I.fieldbyName('T60I_CODPRO').AsString
                              +' Valor Sintegra: '+FormatFloat(mcasas, Tb_Tipo60I.fieldbyName('T60I_TOTAL').AsFloat)
                              +' Valor Pedido: '+FormatFloat(mcasas, mTotLiq)
                              +' Valor Divergente') ;
         end;

      mBasen:=Qr_Ped02P2BASEN.AsFloat+Qr_Ped02P2BCINR.AsFloat;

      if Arredonda( Tb_Tipo60I.fieldbyName('T60I_BCICMS').AsFloat ,2)<>
         Arredonda( mBasen ,2) then
         begin
         Memo_Evento.Lines.Add('Cupom Número: '+Tb_Tipo60I.fieldbyName('T60I_NUMDOC').AsString+' Data: '+FormatDateTime(fdt2, Tb_Tipo60I.fieldbyName('T60I_DATA').AsDateTime)
                              +' Item: '+Tb_Tipo60I.fieldbyName('T60I_ITEM').AsString
                              +' Codigo: '+Tb_Tipo60I.fieldbyName('T60I_CODPRO').AsString
                              +' Base ICMS Sintegra: '+FormatFloat(mcasas, Tb_Tipo60I.fieldbyName('T60I_BCICMS').AsFloat)
                              +' Valor Pedido: '+FormatFloat(mcasas, mBasen)
                              +' Base Icms Divergente') ;
         end;
      Tb_Tipo60I.Next;
      end;
   end;


end;

end.
