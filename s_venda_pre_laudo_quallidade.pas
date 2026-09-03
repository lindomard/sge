unit s_venda_pre_laudo_quallidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, StdCtrls, ExtCtrls, ComCtrls, DBTables, DBCtrls,
  Mask, ToolEdit, RXDBCtrl, Grids, DBGrids, Buttons, RLReport, RLFilters,
  RLPDFFilter,jpeg;

type
  Tfrm_venda_pre_laudo_quallidade = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Tb_Laudo01: TQuery;
    u_Laudo01: TUpdateSQL;
    src_laudo01: TDataSource;
    Tb_Laudo01L01_CODEMP: TFloatField;
    Tb_Laudo01L01_CHAVE: TFloatField;
    Tb_Laudo01L01_CHAVE_ANO: TFloatField;
    Tb_Laudo01L01_NOMERESP: TStringField;
    Tb_Laudo01L01_DATHOR_INC: TDateTimeField;
    Tb_Laudo01L01_CODUSR_INC: TFloatField;
    Tb_Laudo01L01_NOMUSR_INC: TStringField;
    Tb_Laudo01P1DATANF: TDateTimeField;
    Tb_Laudo01P1CODCLI: TFloatField;
    Tb_Laudo01CRAZAO: TStringField;
    DBD_P1DATANF: TDBDateEdit;
    Label3: TLabel;
    Tb_Laudo01P1NUMNF: TFloatField;
    DBE_P1NUMNF: TDBEdit;
    Label4: TLabel;
    DBE_CRAZAO: TDBEdit;
    Label5: TLabel;
    DBE_L01_NOMERESP: TDBEdit;
    Tb_Laudo02_substrato: TQuery;
    U_Laudo02_substrato: TUpdateSQL;
    src_Laudo02_substrato: TDataSource;
    Gb_substrato: TGroupBox;
    DBGrid_substrato: TDBGrid;
    Tb_Laudo02_substratoL02_CHAVEREG: TFloatField;
    Tb_Laudo02_substratoL02_SELECIONADO: TStringField;
    Tb_Laudo02_substratoLCFG_GRUPO_ORDEM: TFloatField;
    Tb_Laudo02_substratoLCFG_GRUPO_NOME: TStringField;
    Tb_Laudo02_substratoLCFG_ITEM_ORDEM: TFloatField;
    Tb_Laudo02_substratoLCFG_ITEM_NOME: TStringField;
    Tb_Laudo02_corte: TQuery;
    U_Laudo02_corte: TUpdateSQL;
    src_Laudo02_corte: TDataSource;
    gb_corte: TGroupBox;
    DBGrid_corte: TDBGrid;
    gb_tipoadesivo: TGroupBox;
    DBGrid_tipoadesivo: TDBGrid;
    Tb_Laudo02_tipoadesivo: TQuery;
    u_Laudo02_tipoadesivo: TUpdateSQL;
    src_Laudo02_tipoadesivo: TDataSource;
    gb_gramatura: TGroupBox;
    DBGrid_gramatura: TDBGrid;
    Tb_Laudo02_gramatura: TQuery;
    U_Laudo02_gramatura: TUpdateSQL;
    src_Laudo02_gramatura: TDataSource;
    gb_produtos: TGroupBox;
    Tb_Laudo03: TQuery;
    U_Laudo03: TUpdateSQL;
    Src_Laudo03: TDataSource;
    Tb_Laudo03L03_CODEMP: TFloatField;
    Tb_Laudo03L03_CHAVE: TFloatField;
    Tb_Laudo03L03_CHAVE_ANO: TFloatField;
    Tb_Laudo03L03_ITEM: TFloatField;
    Tb_Laudo03L03_CODPRO: TFloatField;
    Tb_Laudo03L03_DESCRICAO_PROD: TStringField;
    Tb_Laudo03L03_NUM_PEDORI: TStringField;
    Tb_Laudo03L03_QTDETIQ: TFloatField;
    Tb_Laudo03L03_QTDCAIXAS: TFloatField;
    Tb_Laudo03L03_LOTE: TStringField;
    Tb_Laudo03L03_DATFAB: TDateTimeField;
    Tb_Laudo03L03_DATVAL: TDateTimeField;
    DBGrid_Laudo03: TDBGrid;
    Tb_Laudo03L03_CORES: TStringField;
    bbImprimir: TBitBtn;
    bbSalvar: TBitBtn;
    bbSair: TBitBtn;
    Tb_Laudo02_corteL02_CHAVEREG: TFloatField;
    Tb_Laudo02_corteL02_SELECIONADO: TStringField;
    Tb_Laudo02_corteLCFG_GRUPO_ORDEM: TFloatField;
    Tb_Laudo02_corteLCFG_GRUPO_NOME: TStringField;
    Tb_Laudo02_corteLCFG_ITEM_ORDEM: TFloatField;
    Tb_Laudo02_corteLCFG_ITEM_NOME: TStringField;
    Tb_Laudo02_gramaturaL02_CHAVEREG: TFloatField;
    Tb_Laudo02_gramaturaL02_SELECIONADO: TStringField;
    Tb_Laudo02_gramaturaLCFG_GRUPO_ORDEM: TFloatField;
    Tb_Laudo02_gramaturaLCFG_GRUPO_NOME: TStringField;
    Tb_Laudo02_gramaturaLCFG_ITEM_ORDEM: TFloatField;
    Tb_Laudo02_gramaturaLCFG_ITEM_NOME: TStringField;
    Tb_Laudo02_tipoadesivoL02_CHAVEREG: TFloatField;
    Tb_Laudo02_tipoadesivoL02_SELECIONADO: TStringField;
    Tb_Laudo02_tipoadesivoLCFG_GRUPO_ORDEM: TFloatField;
    Tb_Laudo02_tipoadesivoLCFG_GRUPO_NOME: TStringField;
    Tb_Laudo02_tipoadesivoLCFG_ITEM_ORDEM: TFloatField;
    Tb_Laudo02_tipoadesivoLCFG_ITEM_NOME: TStringField;
    RLReport1: TRLReport;
    RLBand_cabger: TRLBand;
    RLSintImage1: TRLImage;
    lbl_razao: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbl_data: TRLLabel;
    lbl_hora: TRLLabel;
    RLBand2: TRLBand;
    RLMemo1: TRLMemo;
    RLLabel1: TRLLabel;
    Tb_Laudo02: TQuery;
    U_Laudo02: TUpdateSQL;
    Src_Laudo02: TDataSource;
    Tb_Laudo02L02_CHAVEREG: TFloatField;
    Tb_Laudo02L02_SELECIONADO: TStringField;
    Tb_Laudo02LCFG_GRUPO_ORDEM: TFloatField;
    Tb_Laudo02LCFG_GRUPO_NOME: TStringField;
    Tb_Laudo02LCFG_ITEM_ORDEM: TFloatField;
    Tb_Laudo02LCFG_ITEM_NOME: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    RLSubDetail2: TRLSubDetail;
    Tb_Laudo02SEL_COMPLETO: TStringField;
    band_cab03: TRLBand;
    cab_L03_DESCRICAO_PROD: TRLMemo;
    cab_L03_CODPRO: TRLMemo;
    cab_L03_NUM_PEDORI: TRLMemo;
    cab_L03_QTDETIQ: TRLMemo;
    cab_L03_CORES: TRLMemo;
    cab_L03_QTDCAIXAS: TRLMemo;
    cab_L03_LOTE: TRLMemo;
    cab_L03_DATFAB: TRLMemo;
    cab_L03_DATVAL: TRLMemo;
    band_det03: TRLBand;
    det_L03_DESCRICAO_PROD: TRLDBText;
    det_L03_CODPRO: TRLDBText;
    det_L03_NUM_PEDORI: TRLDBText;
    det_L03_QTDETIQ: TRLDBText;
    det_L03_CORES: TRLDBText;
    det_L03_QTDCAIXAS: TRLDBText;
    det_L03_LOTE: TRLDBText;
    det_L03_DATFAB: TRLDBText;
    det_L03_DATVAL: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand_cabcli: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLGroup3: TRLGroup;
    RLBand4: TRLBand;
    det_LCFG_GRUPO_NOME: TRLDBText;
    RLBand5: TRLBand;
    det_LCFG_ITEM_NOME: TRLDBText;
    RLBand3: TRLBand;
    RLMemo2: TRLMemo;
    Label6: TLabel;
    DBE_L01_PROCIMP: TDBEdit;
    Tb_Laudo01L01_PROCIMP: TStringField;
    RLDb_L01_PROCIMP: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_Laudo03KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_Laudo03KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_Laudo03ColExit(Sender: TObject);
    procedure Tb_Laudo03AfterInsert(DataSet: TDataSet);
    procedure Tb_Laudo03AfterEdit(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure Tb_Laudo01AfterPost(DataSet: TDataSet);
    procedure Tb_Laudo02_substratoAfterPost(DataSet: TDataSet);
    procedure Tb_Laudo02_corteAfterPost(DataSet: TDataSet);
    procedure Tb_Laudo02_gramaturaAfterPost(DataSet: TDataSet);
    procedure Tb_Laudo02_tipoadesivoAfterPost(DataSet: TDataSet);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure DBGrid_substratoDblClick(Sender: TObject);
    procedure DBGrid_corteDblClick(Sender: TObject);
    procedure DBGrid_tipoadesivoDblClick(Sender: TObject);
    procedure DBGrid_gramaturaDblClick(Sender: TObject);
  private
    { Private declarations }
    mant_codpro: Real;

    mValorGenerico01: string;
    mGrupo_ant: string;

  public

    { Public declarations }

    mOri_chave: integer;
    mOri_chave_ano: integer;
    mOri_codemp: integer;

  end;


var
  frm_venda_pre_laudo_quallidade: Tfrm_venda_pre_laudo_quallidade;

    const
    mSubstrato : Array[0..12] of string = ('BOPP PEROLADO A-730'
                                          ,'BOPP BRANCO FOSCO A-530'
                                          ,'BOPP BRANCO COLACRIL'
                                          ,'BOPP TRANSPARENTE A-530'
                                          ,'BOPP TRANSP. FASSON 30G'
                                          ,'COUCHE AUTOMACAO'
                                          ,'COUCHE REMOVIVEL'
                                          ,'COUCHE COLA BORRACHA'
                                          ,'PPA(POLIETILENO DE ALTA) 80u'
                                          ,'PPA(POLIETILENO DE ALTA) 100u'
                                          ,'PAPEL COUCHE COLACRIL/ADC 1000'
                                          ,'PAPEL FOSCO COLACRIL/ADC 1000'
                                          ,'PAPEL TERMICO 22 G/M');

    mCorte : Array[0..02] of string = ('MEIO CORTE'
                                      ,'CORTE RETO'
                                      ,'SERRILHA');

    mTipoAdesivo : Array[0..01] of string = ('ACRILICA'
                                      ,'BORRACHA');

    mGramatura  : Array[0..02] of string = ('20g'
                                           ,'25g'
                                           ,'30g');

implementation

uses S_DM1, Func, func_excecoes, lerarq, s_lerarq_geral;

{$R *.dfm}

procedure Tfrm_venda_pre_laudo_quallidade.FormCreate(Sender: TObject);
var
query_laudo: TQuery;
x_laudo: Integer;
mChaveReg: Integer;

mjpeg: TJPEGImage;

begin

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('CABREL',mjpeg)=true then
   begin
   RLSintImage1.Picture.Bitmap.Assign(mjpeg);
   end;
freeandnil(mjpeg);

cab_L03_CODPRO.Borders.DrawLeft:=true;
cab_L03_NUM_PEDORI.Borders.DrawLeft:=true;
cab_L03_QTDETIQ.Borders.DrawLeft:=true;
cab_L03_CORES.Borders.DrawLeft:=true;
cab_L03_QTDCAIXAS.Borders.DrawLeft:=true;
cab_L03_LOTE.Borders.DrawLeft:=true;
cab_L03_DATFAB.Borders.DrawLeft:=true;
cab_L03_DATVAL.Borders.DrawLeft:=true;

det_L03_CODPRO.Borders.DrawLeft:=true;
det_L03_NUM_PEDORI.Borders.DrawLeft:=true;
det_L03_QTDETIQ.Borders.DrawLeft:=true;
det_L03_CORES.Borders.DrawLeft:=true;
det_L03_QTDCAIXAS.Borders.DrawLeft:=true;
det_L03_LOTE.Borders.DrawLeft:=true;
det_L03_DATFAB.Borders.DrawLeft:=true;
det_L03_DATVAL.Borders.DrawLeft:=true;

RLReport1.Borders.DrawLeft:=true;
RLReport1.Borders.DrawTop:=true;
RLReport1.Borders.DrawRight:=true;
RLReport1.Borders.DrawBottom:=true;
RLBand_cabger.Borders.DrawBottom:=true;
RLBand_cabcli.Borders.DrawBottom:=true;
band_cab03.Borders.DrawBottom:=true;
RLSubDetail2.Borders.Drawtop:=true;
RLSubDetail2.Borders.DrawBottom:=true;
RLBand3.Borders.DrawBottom:=true;

tsRelatorio.TabVisible:=FALSE;
query_laudo:=TQuery.create(nil);
query_laudo.DatabaseName:='SG_ASSOC';
query_laudo.SQL.clear;
query_laudo.SQL.Add('Select count(*) from '+mTab_CADLAUDO_cfg);
try
   query_laudo.Open;
except on e : exception do
   ex_erroSql_Novo(query_laudo,113,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_cfg);
   end;

if query_laudo.fields[0].AsInteger<1 then
   begin
   mChaveReg:=0;
   query_laudo.close;
   query_laudo.sql.clear;
   query_laudo.sql.Add('Insert into '+mTab_CADLAUDO_cfg+' ('
                      +' LCFG_GRUPO_ORDEM  '
                      +',LCFG_GRUPO_NOME '
                      +',LCFG_ITEM_ORDEM  '
                      +',LCFG_ITEM_NOME  '
                      +',LCFG_CHAVEREG     '
                      +') values ('
                      +' :LCFG_GRUPO_ORDEM  '
                      +',:LCFG_GRUPO_NOME '
                      +',:LCFG_ITEM_ORDEM  '
                      +',:LCFG_ITEM_NOME  '
                      +',:LCFG_CHAVEREG     '
                      +')');


   for x_laudo:=0 to High(msubstrato) do
      begin
      mChaveReg:=mChaveReg+1;


      query_laudo.ParamByName('LCFG_GRUPO_ORDEM').AsInteger:=01;
      query_laudo.ParamByName('LCFG_GRUPO_NOME').AsString  :='Substrato';

      query_laudo.ParamByName('LCFG_ITEM_ORDEM').AsInteger:=x_laudo+1;
      query_laudo.ParamByName('LCFG_ITEM_NOME').AsString  :=msubstrato[x_laudo];
      query_laudo.ParamByName('LCFG_CHAVEREG').AsInteger  :=mChaveReg;
      try
         query_laudo.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_laudo,153,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_cfg);
         end;
      end;


   for x_laudo:=0 to High(mcorte) do
      begin
      mChaveReg:=mChaveReg+1;


      query_laudo.ParamByName('LCFG_GRUPO_ORDEM').AsInteger:=02;
      query_laudo.ParamByName('LCFG_GRUPO_NOME').AsString  :='Corte';

      query_laudo.ParamByName('LCFG_ITEM_ORDEM').AsInteger:=x_laudo+1;
      query_laudo.ParamByName('LCFG_ITEM_NOME').AsString  :=mCorte[x_laudo];
      query_laudo.ParamByName('LCFG_CHAVEREG').AsInteger  :=mChaveReg;
      try
         query_laudo.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_laudo,173,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_cfg);
         end;
      end;



   for x_laudo:=0 to High(mTipoAdesivo) do
      begin
      mChaveReg:=mChaveReg+1;


      query_laudo.ParamByName('LCFG_GRUPO_ORDEM').AsInteger:=03;
      query_laudo.ParamByName('LCFG_GRUPO_NOME').AsString  :='Tipo de Adesivo';

      query_laudo.ParamByName('LCFG_ITEM_ORDEM').AsInteger:=x_laudo+1;
      query_laudo.ParamByName('LCFG_ITEM_NOME').AsString  :=mTipoAdesivo[x_Laudo];
      query_laudo.ParamByName('LCFG_CHAVEREG').AsInteger  :=mChaveReg;
      try
         query_laudo.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_laudo,194,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_cfg);
         end;
      end;


   for x_laudo:=0 to High(mGramatura) do
      begin
      mChaveReg:=mChaveReg+1;


      query_laudo.ParamByName('LCFG_GRUPO_ORDEM').AsInteger:=04;
      query_laudo.ParamByName('LCFG_GRUPO_NOME').AsString  :='Gramatura';

      query_laudo.ParamByName('LCFG_ITEM_ORDEM').AsInteger:=x_laudo+1;
      query_laudo.ParamByName('LCFG_ITEM_NOME').AsString  :=mGramatura[x_Laudo];
      query_laudo.ParamByName('LCFG_CHAVEREG').AsInteger  :=mChaveReg;
      try
         query_laudo.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_laudo,2134,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_cfg);
         end;
      end;
   end;



freeandnil(query_laudo);



Tb_Laudo03L03_DATFAB.EditMask          :=pEditMascData;
Tb_Laudo03L03_DATVAL.EditMask          :=pEditMascData;


end;

procedure Tfrm_venda_pre_laudo_quallidade.FormShow(Sender: TObject);
var
query_temp: tquery;
begin

Tb_Laudo01.close;
Tb_Laudo01.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo01.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo01.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
try
   Tb_Laudo01.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo01,310,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_01);
   end;


Tb_Laudo02_substrato.close;
Tb_Laudo02_substrato.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo02_substrato.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo02_substrato.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
Tb_Laudo02_substrato.ParamByName('NOMEGRUPO').AsString:='Substrato';

try
   Tb_Laudo02_substrato.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo02_substrato,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;


Tb_Laudo02_corte.close;
Tb_Laudo02_corte.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo02_corte.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo02_corte.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
Tb_Laudo02_corte.ParamByName('NOMEGRUPO').AsString:='Corte';

try
   Tb_Laudo02_corte.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo02_corte,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;


Tb_Laudo02_gramatura.close;
Tb_Laudo02_gramatura.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo02_gramatura.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo02_gramatura.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
Tb_Laudo02_gramatura.ParamByName('NOMEGRUPO').AsString:='Gramatura';

try
   Tb_Laudo02_gramatura.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo02_gramatura,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;



Tb_Laudo02_tipoadesivo.close;
Tb_Laudo02_tipoadesivo.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo02_tipoadesivo.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo02_tipoadesivo.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
Tb_Laudo02_tipoadesivo.ParamByName('NOMEGRUPO').AsString:='Tipo de Adesivo';

try
   Tb_Laudo02_tipoadesivo.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo02_tipoadesivo,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;

query_temp:=tquery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';
Query_temp.sql.Clear;
Query_temp.sql.Add('select count(*) from '+mTab_CADLAUDO_03+' where '
                  +' L03_CODEMP=:CODEMP '
                  +' and L03_CHAVE=:CHAVE '
                  +' and L03_CHAVE_ANO=:CHAVE_ANO ');
Query_temp.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Query_temp.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Query_temp.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;

try
   Query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(Query_temp,470,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_03);
   end;
if query_temp.fields[0].AsInteger=0 then
   begin
   query_temp.Close;
   query_temp.sql.clear;
   query_temp.sql.Add('Insert into '+mTab_CADLAUDO_03+' ('
                     +'L03_CODEMP '
                     +',L03_CHAVE '
                     +',L03_CHAVE_ANO '
                     +',L03_ITEM '
                     +',L03_CODPRO '
                     +',L03_DESCRICAO_PROD  '
                     +',L03_NUM_PEDORI '
                     +',L03_QTDETIQ '
                     +',L03_QTDCAIXAS '
                     +',L03_LOTE '
                     +',L03_DATFAB '
                     +',L03_DATVAL '
                     +')'
                     +' select '
                     +'  P1CODEMP '
                     +'  ,P1CHAVE '
                     +'  ,P1LOTSEQ '
                     +'  ,P2ITEM '
                     +'  ,P2CODPRO '
                     +'  ,PDNOME '
                     +'  ,P2COMPRA_XPED '
                     +'  ,P2QTD '
                     +'  ,P1QTDVOL '
                     +'  ,TO_CHAR(P1CHAVE) '
                     +'  ,P1DATANF '
                     +'  ,P1DATANF+ ((PDPRZVAL_ANOS*365)+(PDPRZVAL*30)+PDPRZVAL_DIAS) '
                     +'from cadp01,cadp02,cadpro '
                     +'where p2chave=p1chave and p2lotseq=p1lotseq and p2codemp=p1codemp '
                     +'and pdcodpro=p2codpro '
                     +' and p1chave=:CHAVE '
                     +' and P1LOTSEQ=:CHAVE_ANO '
                     +' and P1CODEMP=:CODEMP '
                     );

   Query_temp.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
   Query_temp.ParamByName('CHAVE').AsInteger    :=mOri_chave;
   Query_temp.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_temp,520,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_03);
      end;
   end;
Tb_Laudo03.Close;
Tb_Laudo03.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo03.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo03.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;
try
   Tb_Laudo03.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo03,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_03);
   end;

end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_Laudo03KeyPress(
  Sender: TObject; var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_Laudo03.SelectedField=Tb_Laudo03L03_CODPRO) and
   (Tb_Laudo03.State in [dsBrowse]) then
   begin
   if Tb_Laudo03L03_CODPRO.IsNull then
      begin
      Tb_Laudo03.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_Laudo03.SelectedField=Tb_Laudo03L03_CODPRO) then
   begin
   if not (Tb_Laudo03.State in [dsEdit,dsInsert]) then
      begin
      if Tb_Laudo03L03_CODPRO.IsNull then
         Tb_Laudo03.Append
      else
         Tb_Laudo03.Edit;
      end;
   Tb_Laudo03L03_CODPRO.AsString:=fChamaPesqPro(0,'_venda',key);
   key:=#0;
   if (Tb_Laudo03L03_CODPRO.AsString)<>'' then
      begin
      DBGrid_laudo03ColExit(self);
      DBGrid_Laudo03.SelectedField:=Tb_Laudo03L03_DESCRICAO_PROD;
      end;
   end;




end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_Laudo03KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_Laudo03.SelectedField=Tb_Laudo03L03_CODPRO) then
   begin
   if not (Tb_Laudo03.State in [dsEdit,dsInsert]) then
      begin
      if Tb_Laudo03L03_CODPRO.IsNull then
         Tb_Laudo03.Append
      else
         Tb_Laudo03.Edit;
      end;
   Tb_Laudo03L03_CODPRO.AsString:=fChamaPesqPro(0,'_venda','');
   if (Tb_Laudo03L03_CODPRO.AsString)<>'' then
      begin
      DBGrid_Laudo03ColExit(self);
      DBGrid_Laudo03.SelectedField:=Tb_Laudo03L03_DESCRICAO_PROD;
      end;
   end;


end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_Laudo03ColExit(
  Sender: TObject);
begin
if Tb_Laudo03.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_Laudo03.SelectedField=Tb_Laudo03L03_QTDETIQ then
      begin
      if Tb_Laudo03L03_QTDETIQ.AsInteger<=0 then
         Tb_Laudo03L03_QTDETIQ.AsInteger:=1;
      end
   else if DBGrid_Laudo03.SelectedField=Tb_Laudo03L03_CODPRO then
      begin
      if (Tb_Laudo03L03_CODPRO.AsFloat>0) and ((mant_codpro<>Tb_Laudo03L03_CODPRO.AsFloat)  or (trim(Tb_Laudo03L03_DESCRICAO_PROD.AsString)='')) then
         begin
         if not fLerGenerico01_campos('CADPRO','PDNOME',' PDCODPRO='+Tb_Laudo03L03_CODPRO.AsString,mvalorgenerico01) then
            begin
            MessageDlg('Produto: '+Tb_Laudo03L03_CODPRO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
            DBGrid_Laudo03.SelectedField:=Tb_Laudo03L03_CODPRO;
            end
         else
            begin
            Tb_Laudo03L03_DESCRICAO_PROD.Value:=Tb_Laudo03L03_DESCRICAO_PROD.AsString;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo03AfterInsert(
  DataSet: TDataSet);
begin
mant_codpro:=-1;
end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo03AfterEdit(
  DataSet: TDataSet);
begin
mant_codpro:=Tb_Laudo03L03_CODPRO.AsFloat;
end;

procedure Tfrm_venda_pre_laudo_quallidade.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo01AfterPost(
  DataSet: TDataSet);
begin
if not bbSalvar.Enabled then
   bbSalvar.Enabled:=true;
end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo02_substratoAfterPost(
  DataSet: TDataSet);
begin
if not bbSalvar.Enabled then
   bbSalvar.Enabled:=true;

end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo02_corteAfterPost(
  DataSet: TDataSet);
begin
if not bbSalvar.Enabled then
   bbSalvar.Enabled:=true;

end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo02_gramaturaAfterPost(
  DataSet: TDataSet);
begin
if not bbSalvar.Enabled then
   bbSalvar.Enabled:=true;

end;

procedure Tfrm_venda_pre_laudo_quallidade.Tb_Laudo02_tipoadesivoAfterPost(
  DataSet: TDataSet);
begin
if not bbSalvar.Enabled then
   bbSalvar.Enabled:=true;

end;

procedure Tfrm_venda_pre_laudo_quallidade.bbSalvarClick(Sender: TObject);
var
query_exe: TQuery;

mChave_Old: Integer;
mCondicao_old: String;

begin
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';

bbSalvar.Enabled:=true;
query_exe.SQL.Clear;
query_exe.SQL.add('Select count(*) from '+mTab_CADLAUDO_01+' where '
                 +' L01_CODEMP=:CODEMP '
                 +' and L01_CHAVE=:CHAVE '
                 +' and L01_CHAVE_ANO=:CHAVE_ANO ');
query_exe.ParamByName('CODEMP').AsInteger:=mOri_codemp;
query_exe.ParamByName('CHAVE').AsInteger :=mOri_chave;
query_exe.ParamByName('CHAVE_ANO').AsInteger :=mOri_chave_ano;

try
   Query_exe.Open;
except on e : exception do
   ex_erroSql_Novo(Query_exe,963,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_01);
   end;

if query_exe.Fields[0].AsInteger>0 then
   begin
   mCondicao_old:=' where L01_CODEMP='+IntTostr(mOri_codemp)
                  +' and L01_CHAVE='+intTostr(mOri_chave)
                  +' and L01_CHAVE_ANO='+IntTostr(mOri_chave_ano);

   mChave_Old:=fGerarTabelas_Old(8 //status
                  ,0 //codigo novo valor chave
                  ,'L01_CODNOV' //nome do campo do novo valor (chave)
                  ,'L01_DATHOR_EVE' // nome do campo data e hora do evento
                  ,'L01_CODUSR_EVE' // nome do campo do usuario
                  ,'L01_STATUS_EVE' // nome do campo de status
                  ,mTab_CADLAUDO_01 // nome da tabela
                  ,mCondicao_old);

   mCondicao_old:=' where L02_CODEMP='+IntTostr(mOri_codemp)
                  +' and L02_CHAVE='+intTostr(mOri_chave)
                  +' and L02_CHAVE_ANO='+IntTostr(mOri_chave_ano);

   mChave_Old:=fGerarTabelas_Old(8 //status
                  ,mChave_Old //codigo novo valor chave
                  ,'L02_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,mTab_CADLAUDO_02 // nome da tabela
                  ,mCondicao_old);

   mCondicao_old:=' where L03_CODEMP='+IntTostr(mOri_codemp)
                  +' and L03_CHAVE='+intTostr(mOri_chave)
                  +' and L03_CHAVE_ANO='+IntTostr(mOri_chave_ano);

   mChave_Old:=fGerarTabelas_Old(8 //status
                  ,mChave_Old //codigo novo valor chave
                  ,'L03_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,mTab_CADLAUDO_03 // nome da tabela
                  ,mCondicao_old);

   end;


query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Delete from '+mTab_CADLAUDO_01+' where '
                 +' L01_CODEMP=:CODEMP '
                 +' and L01_CHAVE=:CHAVE '
                 +' and L01_CHAVE_ANO=:CHAVE_ANO ');
query_exe.ParamByName('CODEMP').AsInteger:=mOri_codemp;
query_exe.ParamByName('CHAVE').AsInteger :=mOri_chave;
query_exe.ParamByName('CHAVE_ANO').AsInteger :=mOri_chave_ano;

try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(Query_exe,1025,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_01);
   end;

query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Insert into '+mTab_CADLAUDO_01+'('
                 +'L01_CODEMP '
                 +',L01_CHAVE '
                 +',L01_CHAVE_ANO '
                 +',L01_NOMERESP '
                 +',L01_PROCIMP '
                 +',L01_DATHOR_INC '
                 +',L01_CODUSR_INC '
                 +',L01_NOMUSR_INC '
                 +') values ('
                 +' :L01_CODEMP '
                 +',:L01_CHAVE '
                 +',:L01_CHAVE_ANO '
                 +',:L01_NOMERESP '
                 +',:L01_PROCIMP '
                 +',:L01_DATHOR_INC '
                 +',:L01_CODUSR_INC '
                 +',:L01_NOMUSR_INC '
                 +')');


query_exe.ParamByName('L01_CODEMP').AsInteger        := mOri_codemp;
query_exe.ParamByName('L01_CHAVE').AsInteger         := mOri_chave;
query_exe.ParamByName('L01_CHAVE_ANO').AsInteger     := mOri_chave_ano;
query_exe.ParamByName('L01_NOMERESP').AsString       := Tb_Laudo01L01_NOMERESP.AsString;
query_exe.ParamByName('L01_PROCIMP').AsString        := Tb_Laudo01L01_PROCIMP.AsString;
if Tb_Laudo01L01_DATHOR_INC.AsDateTime>pdatanula then
   begin
   query_exe.ParamByName('L01_DATHOR_INC').AsDateTime:=Tb_Laudo01L01_DATHOR_INC.AsDateTime;
   query_exe.ParamByName('L01_CODUSR_INC').AsInteger :=Tb_Laudo01L01_CODUSR_INC.AsInteger;
   query_exe.ParamByName('L01_NOMUSR_INC').AsString  :=Tb_Laudo01L01_NOMUSR_INC.AsString;
   end
else
   begin
   query_exe.ParamByName('L01_DATHOR_INC').AsDateTime:=now;
   query_exe.ParamByName('L01_CODUSR_INC').AsInteger :=codusr;
   query_exe.ParamByName('L01_NOMUSR_INC').AsString  :=nomusr;
   end;

try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(Query_exe,1070,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_01);
   end;


// inicio 02


query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Delete from '+mTab_CADLAUDO_02+' where '
                 +' L02_CODEMP=:CODEMP '
                 +' and L02_CHAVE=:CHAVE '
                 +' and L02_CHAVE_ANO=:CHAVE_ANO ');
query_exe.ParamByName('CODEMP').AsInteger:=mOri_codemp;
query_exe.ParamByName('CHAVE').AsInteger :=mOri_chave;
query_exe.ParamByName('CHAVE_ANO').AsInteger :=mOri_chave_ano;

try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(Query_exe,1091,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;

query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Insert into '+mTab_CADLAUDO_02+'('
                 +'L02_CODEMP '
                 +',L02_CHAVE '
                 +',L02_CHAVE_ANO '
                 +',L02_CHAVEREG '
                 +',L02_SELECIONADO '
                 +') values ('
                 +' :L02_CODEMP '
                 +',:L02_CHAVE '
                 +',:L02_CHAVE_ANO '
                 +',:L02_CHAVEREG '
                 +',:L02_SELECIONADO '
                 +')');
Tb_Laudo02_substrato.First;
While not Tb_Laudo02_substrato.Eof do
   begin
   if Tb_Laudo02_substratoL02_SELECIONADO.AsString<>'S' then
      begin
      Tb_Laudo02_substrato.Next;
      Continue;                                      
      end;
   query_exe.Close;
   query_exe.ParamByName('L02_CODEMP').AsInteger        := mOri_codemp;
   query_exe.ParamByName('L02_CHAVE').AsInteger         := mOri_chave;
   query_exe.ParamByName('L02_CHAVE_ANO').AsInteger     := mOri_chave_ano;
   query_exe.ParamByName('L02_CHAVEREG').AsInteger      := Tb_Laudo02_substratoL02_CHAVEREG.AsInteger;
   query_exe.ParamByName('L02_SELECIONADO').AsString    := Tb_Laudo02_substratoL02_SELECIONADO.AsString;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_exe,1122,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
      end;
   Tb_Laudo02_substrato.Next;
   end;


Tb_Laudo02_corte.First;
While not Tb_Laudo02_corte.Eof do
   begin
   if Tb_Laudo02_corteL02_SELECIONADO.AsString<>'S' then
      begin
      Tb_Laudo02_Corte.Next;
      Continue;
      end;
   query_exe.Close;
   query_exe.ParamByName('L02_CODEMP').AsInteger        := mOri_codemp;
   query_exe.ParamByName('L02_CHAVE').AsInteger         := mOri_chave;
   query_exe.ParamByName('L02_CHAVE_ANO').AsInteger     := mOri_chave_ano;
   query_exe.ParamByName('L02_CHAVEREG').AsInteger      := Tb_Laudo02_corteL02_CHAVEREG.AsInteger;
   query_exe.ParamByName('L02_SELECIONADO').AsString    := Tb_Laudo02_corteL02_SELECIONADO.AsString;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_exe,1151,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
      end;
   Tb_Laudo02_Corte.Next;

   end;


Tb_Laudo02_gramatura.First;
While not Tb_Laudo02_gramatura.Eof do
   begin
   if Tb_Laudo02_gramaturaL02_SELECIONADO.AsString<>'S' then
      begin
      Tb_Laudo02_gramatura.Next;
      Continue;
      end;
   query_exe.Close;
   query_exe.ParamByName('L02_CODEMP').AsInteger        := mOri_codemp;
   query_exe.ParamByName('L02_CHAVE').AsInteger         := mOri_chave;
   query_exe.ParamByName('L02_CHAVE_ANO').AsInteger     := mOri_chave_ano;
   query_exe.ParamByName('L02_CHAVEREG').AsInteger      := Tb_Laudo02_gramaturaL02_CHAVEREG.AsInteger;
   query_exe.ParamByName('L02_SELECIONADO').AsString    := Tb_Laudo02_gramaturaL02_SELECIONADO.AsString;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_exe,1151,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
      end;
   Tb_Laudo02_Gramatura.Next;
   end;


Tb_Laudo02_tipoadesivo.First;
While not Tb_Laudo02_tipoadesivo.Eof do
   begin
   if Tb_Laudo02_tipoadesivoL02_SELECIONADO.AsString<>'S' then
      begin
      Tb_Laudo02_tipoadesivo.Next;
      Continue;
      end;
   query_exe.Close;
   query_exe.ParamByName('L02_CODEMP').AsInteger        := mOri_codemp;
   query_exe.ParamByName('L02_CHAVE').AsInteger         := mOri_chave;
   query_exe.ParamByName('L02_CHAVE_ANO').AsInteger     := mOri_chave_ano;
   query_exe.ParamByName('L02_CHAVEREG').AsInteger      := Tb_Laudo02_tipoadesivoL02_CHAVEREG.AsInteger;
   query_exe.ParamByName('L02_SELECIONADO').AsString    := Tb_Laudo02_tipoadesivoL02_SELECIONADO.AsString;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_exe,1196,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
      end;
   Tb_Laudo02_tipoAdesivo.Next;
   end;




query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Delete from '+mTab_CADLAUDO_03+' where '
                 +' L03_CODEMP=:CODEMP '
                 +' and L03_CHAVE=:CHAVE '
                 +' and L03_CHAVE_ANO=:CHAVE_ANO ');
query_exe.ParamByName('CODEMP').AsInteger:=mOri_codemp;
query_exe.ParamByName('CHAVE').AsInteger :=mOri_chave;
query_exe.ParamByName('CHAVE_ANO').AsInteger :=mOri_chave_ano;

try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(Query_exe,1025,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_03);
   end;

query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Insert into '+mTab_CADLAUDO_03+'('
                 +'L03_CODEMP '
                 +',L03_CHAVE '
                 +',L03_CHAVE_ANO '
                 +',L03_ITEM '
                 +',L03_CODPRO '
                 +',L03_DESCRICAO_PROD '
                 +',L03_NUM_PEDORI '
                 +',L03_QTDETIQ '
                 +',L03_CORES  '
                 +',L03_QTDCAIXAS '
                 +',L03_LOTE  '
                 +',L03_DATFAB '
                 +',L03_DATVAL '
                 +') values ('
                 +':L03_CODEMP '
                 +',:L03_CHAVE '
                 +',:L03_CHAVE_ANO '
                 +',:L03_ITEM '
                 +',:L03_CODPRO '
                 +',:L03_DESCRICAO_PROD '
                 +',:L03_NUM_PEDORI '
                 +',:L03_QTDETIQ '
                 +',:L03_CORES  '
                 +',:L03_QTDCAIXAS '
                 +',:L03_LOTE  '
                 +',:L03_DATFAB '
                 +',:L03_DATVAL '
                 +')');

Tb_Laudo03.First;
While not Tb_Laudo03.Eof do
   begin
   query_exe.close;
   query_exe.ParamByName('L03_CODEMP').AsInteger       :=mOri_codemp;
   query_exe.ParamByName('L03_CHAVE').AsInteger        :=mOri_chave;
   query_exe.ParamByName('L03_CHAVE_ANO').AsInteger    :=mOri_chave_ano;
   query_exe.ParamByName('L03_ITEM').AsInteger         :=Tb_Laudo03L03_ITEM.AsInteger;
   query_exe.ParamByName('L03_CODPRO').AsFloat         :=Tb_Laudo03L03_CODPRO.AsFloat;
   query_exe.ParamByName('L03_DESCRICAO_PROD').AsString:=Tb_Laudo03L03_DESCRICAO_PROD.AsString;
   query_exe.ParamByName('L03_NUM_PEDORI').AsString    :=Tb_Laudo03L03_NUM_PEDORI.AsString;
   query_exe.ParamByName('L03_QTDETIQ').AsFloat        :=Tb_Laudo03L03_QTDETIQ.AsFloat;
   query_exe.ParamByName('L03_CORES').AsString         :=Tb_Laudo03L03_CORES.AsString;
   query_exe.ParamByName('L03_QTDCAIXAS').AsFloat      :=Tb_Laudo03L03_QTDCAIXAS.AsFloat;
   query_exe.ParamByName('L03_LOTE').AsString          :=Tb_Laudo03L03_LOTE.AsString;
   query_exe.ParamByName('L03_DATFAB').AsDateTime      :=Tb_Laudo03L03_DATFAB.AsDateTime;
   query_exe.ParamByName('L03_DATVAL').AsDateTime      :=Tb_Laudo03L03_DATVAL.AsDateTime;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(Query_exe,1381,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_03);
      end;
   Tb_Laudo03.Next;
   end;

FreeAndNil(query_exe);


bbImprimir.Enabled:=true;
end;

procedure Tfrm_venda_pre_laudo_quallidade.bbImprimirClick(Sender: TObject);
begin
bbSalvarClick(self);
lbl_razao.Caption:=DM1.Tb_EmpRAZAO.AsString;
Tb_Laudo02.close;
Tb_Laudo02.ParamByName('CODEMP').AsInteger   :=mOri_codemp;
Tb_Laudo02.ParamByName('CHAVE').AsInteger    :=mOri_chave;
Tb_Laudo02.ParamByName('CHAVE_ANO').AsInteger:=mOri_chave_ano;

try
   Tb_Laudo02.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_laudo02,320,'_venda_pre_laudo_qualidade:'+e.Message ,mTab_CADLAUDO_02);
   end;
//ShowMessage('qUANTIDADE '+IntToStr(Tb_Laudo02.RecordCount));
Tb_Laudo01.First;
RLReport1.PreviewModal;

end;

procedure Tfrm_venda_pre_laudo_quallidade.RLReport1BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
    mGrupo_ant:='-1';
lbl_data.Caption:='Data: '+FormatDateTime(fdt2, date);
lbl_hora.Caption:='Hora: '+FormatDateTime(fhr, time);

end;

procedure Tfrm_venda_pre_laudo_quallidade.RLDetailGrid1BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
if mGrupo_ant<>Tb_Laudo02LCFG_GRUPO_NOME.AsString then
   begin
   det_LCFG_GRUPO_NOME.Visible:=true;
   det_LCFG_ITEM_NOME.Visible:=false;
   mGrupo_ant:=Tb_Laudo02LCFG_GRUPO_NOME.AsString;

   end
else
   begin
   det_LCFG_GRUPO_NOME.Visible:=false;
   det_LCFG_ITEM_NOME.Visible:=true;
   end


end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_substratoDblClick(
  Sender: TObject);
begin

if not (Tb_Laudo02_substrato.State in [dsedit,dsinsert]) then
   Tb_Laudo02_substrato.Edit;
if Tb_Laudo02_substratoL02_SELECIONADO.AsString='S' then
   Tb_Laudo02_substratoL02_SELECIONADO.AsString:=''
else
   Tb_Laudo02_substratoL02_SELECIONADO.AsString:='S';
Tb_Laudo02_substrato.Post;

end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_corteDblClick(
  Sender: TObject);
begin
if not (Tb_Laudo02_corte.State in [dsedit,dsinsert]) then
   Tb_Laudo02_corte.Edit;
if Tb_Laudo02_corteL02_SELECIONADO.AsString='S' then
   Tb_Laudo02_corteL02_SELECIONADO.AsString:=''
else
   Tb_Laudo02_corteL02_SELECIONADO.AsString:='S';
Tb_Laudo02_corte.Post;

end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_tipoadesivoDblClick(
  Sender: TObject);
begin
if not (Tb_Laudo02_tipoadesivo.State in [dsedit,dsinsert]) then
   Tb_Laudo02_tipoadesivo.Edit;
if Tb_Laudo02_tipoadesivoL02_SELECIONADO.AsString='S' then
   Tb_Laudo02_tipoadesivoL02_SELECIONADO.AsString:=''
else
   Tb_Laudo02_tipoadesivoL02_SELECIONADO.AsString:='S';
Tb_Laudo02_tipoadesivo.Post;

end;

procedure Tfrm_venda_pre_laudo_quallidade.DBGrid_gramaturaDblClick(
  Sender: TObject);
begin
if not (Tb_Laudo02_gramatura.State in [dsedit,dsinsert]) then
   Tb_Laudo02_gramatura.Edit;
if Tb_Laudo02_gramaturaL02_SELECIONADO.AsString='S' then
   Tb_Laudo02_gramaturaL02_SELECIONADO.AsString:=''
else
   Tb_Laudo02_gramaturaL02_SELECIONADO.AsString:='S';
Tb_Laudo02_gramatura.Post;

end;

end.
