unit s_termica_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Grids, DBGrids,
  DBClient,lerarq,s_lerarq_geral, Mask, DBCtrls, DBTables,printers, Spin;
                                                
type
  Tfrm_termica_produtos = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsConfig: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    cds_etiquetas: TClientDataSet;
    Label2: TLabel;
    cb_modelo: TComboBox;
    src_etiquetas: TDataSource;
    DBGrid_etiqueta: TDBGrid;
    Label3: TLabel;
    cb_impressora: TComboBox;
    cds_etiquetaset_codpro: TStringField;
    cds_etiquetaset_nome: TStringField;
    cds_etiquetaset_und: TStringField;
    cds_etiquetaset_marca: TStringField;
    cds_etiquetaset_lote: TStringField;
    cds_etiquetaset_dtvcto: TDateTimeField;
    cds_etiquetaset_qtd: TFloatField;
    cds_etiquetaset_preco: TFloatField;
    cds_etiquetaset_obs: TStringField;
    cds_etiquetaset_codbar: TStringField;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    cds_config_etiqueta: TClientDataSet;
    src_config_etiqueta: TDataSource;
    cds_config_etiquetaCE_LOCAL: TStringField;
    cds_config_etiquetaCE_NOME: TStringField;
    DBGrid_config: TDBGrid;
    tsPreDefinida: TTabSheet;
    PageControl2: TPageControl;
    ts_30x18_3_colunas: TTabSheet;
    cds_config_etiquetaCE_CONFIG_CAB: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ01: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ02: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ03: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ04: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ05: TStringField;
    GroupBox5: TGroupBox;
    Memo_30x18_3_colunas_cabec: TMemo;
    GroupBox6: TGroupBox;
    Memo_30x18_3_colunas_etiq01: TMemo;
    GroupBox7: TGroupBox;
    Memo_30x18_3_colunas_etiq02: TMemo;
    GroupBox8: TGroupBox;
    Memo_30x18_3_colunas_etiq03: TMemo;
    GroupBox9: TGroupBox;
    Memo_30x18_3_colunas_etiq04: TMemo;
    GroupBox10: TGroupBox;
    Memo_30x18_3_colunas_etiq05: TMemo;
    cds_config_etiquetaCE_QTDCOL: TIntegerField;
    tsLegenda: TTabSheet;
    GroupBox4: TGroupBox;
    memo_legenda: TMemo;
    bbincluir: TBitBtn;
    bbalterar: TBitBtn;
    bbexcluir: TBitBtn;
    bbgravar: TBitBtn;
    bbcancelar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bbfechar: TBitBtn;
    tsTexto: TTabSheet;
    Memo_texto_etiqueta: TMemo;
    tsEtiq40x302col: TTabSheet;
    GroupBox16: TGroupBox;
    Memo_40x302col_cab: TMemo;
    GroupBox17: TGroupBox;
    Memo_40x302col_etiq02: TMemo;
    GroupBox18: TGroupBox;
    Memo_40x302col_etiq04: TMemo;
    GroupBox19: TGroupBox;
    Memo_40x302col_etiq01: TMemo;
    GroupBox20: TGroupBox;
    Memo_40x302col_etiq03: TMemo;
    GroupBox21: TGroupBox;
    Memo_40x302col_etiq05: TMemo;
    tsEtiq_gondolas: TTabSheet;
    GroupBox22: TGroupBox;
    Memo_Gondolas_Cab: TMemo;
    GroupBox23: TGroupBox;
    Memo_Gondolas_Etiq01: TMemo;
    tsEtiq3x1emeio: TTabSheet;
    GroupBox24: TGroupBox;
    Memo_3x1emeio_cab: TMemo;
    GroupBox25: TGroupBox;
    Memo_3x1emeio_etiq01: TMemo;
    GroupBox26: TGroupBox;
    Memo_3x1emeio_etiq02: TMemo;
    GroupBox27: TGroupBox;
    Memo_3x1emeio_etiq03: TMemo;
    cds_etiquetaset_nome_l01: TStringField;
    cds_etiquetaset_nome_l02: TStringField;
    cds_etiquetaset_nome_l03: TStringField;
    cds_etiquetaset_nome_l04: TStringField;
    GroupBox28: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    edt_qtdcarporlinha: TSpinEdit;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    DBMemo_CE_CONFIG_CAB: TDBMemo;
    GroupBox11: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ01: TDBMemo;
    GroupBox12: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ02: TDBMemo;
    Panel4: TPanel;
    GroupBox13: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ03: TDBMemo;
    GroupBox14: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ04: TDBMemo;
    GroupBox15: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ05: TDBMemo;
    Panel3: TPanel;
    Label4: TLabel;
    DBE_CE_NOME: TDBEdit;
    Label5: TLabel;
    DBE_CE_QTDCOL: TDBEdit;
    BitBtn1: TBitBtn;
    procedure DBGrid_etiquetaColExit(Sender: TObject);
    procedure DBGrid_etiquetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_etiquetaKeyPress(Sender: TObject; var Key: Char);
    procedure cds_etiquetasBeforePost(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure cds_config_etiquetaBeforePost(DataSet: TDataSet);
    procedure bbfecharClick(Sender: TObject);
    procedure cds_config_etiquetaAfterEdit(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterInsert(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterPost(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterDelete(DataSet: TDataSet);
    procedure tsConfigExit(Sender: TObject);
    procedure bbincluirClick(Sender: TObject);
    procedure bbalterarClick(Sender: TObject);
    procedure bbexcluirClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_qtdcarporlinhaClick(Sender: TObject);
    procedure edt_qtdcarporlinhaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    mCarregandoConfig: boolean;
    mLocalEtiqueta: String;
    mAnt_Nome: String;
    mAnt_Local: String;
    mQtdCarPorLinha: integer;
    function fSetarConfiguraoPadrao: Boolean;
    function fLerConfiguracao: Boolean;

    function fOrganizarTexto(pTexto: String): String;

    function fLiberaBloqueiaCampos(pLibera: Boolean):Boolean;



  public
    { Public declarations }
  end;

var
  frm_termica_produtos: Tfrm_termica_produtos;

implementation

uses S_DM1, func_excecoes, Func, S_DM4;


{$R *.dfm}

procedure Tfrm_termica_produtos.DBGrid_etiquetaColExit(Sender: TObject);
begin
if cds_etiquetas.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_etiqueta.SelectedField=cds_etiquetaset_codpro then
      begin
      if length(cds_etiquetaset_codpro.AsString)=0 then
         begin
         cds_etiquetaset_nome.Clear;
         cds_etiquetaset_und.Clear;
         cds_etiquetaset_marca.Clear;
         cds_etiquetaset_lote.Clear;
         cds_etiquetaset_dtvcto.Clear;
         cds_etiquetaset_obs.Clear;
         cds_etiquetaset_preco.Clear;
         cds_etiquetaset_codbar.Clear;
         end
      else
         begin
         if fLerGenerico_query('CADPRO','PDNOME,PDUND,PDMARCA,PDCODBAR,PDPRECO1','PDCODPRO=0'+cds_etiquetaset_codpro.AsString,query_consulta) then
            begin
            cds_etiquetaset_nome.Value  :=query_consulta.fieldbyname('PDNOME').asstring;
            cds_etiquetaset_und.Value   :=query_consulta.fieldbyname('PDUND').asstring;
            cds_etiquetaset_marca.Value :=query_consulta.fieldbyname('PDMARCA').asstring;
            cds_etiquetaset_preco.Value :=query_consulta.fieldbyname('PDPRECO1').AsFloat;
            cds_etiquetaset_codbar.Value:=query_consulta.fieldbyname('PDCODBAR').asstring;
            if cds_etiquetaset_qtd.AsFloat=0 then
               cds_etiquetaset_qtd.Value:=1;
            end
         else
            begin
            MessageDlg('Produto '+cds_etiquetaset_codpro.AsString+' não Cadastrado!',mtWarning,[mbOk],0);
            DBGrid_etiqueta.SelectedField:=cds_etiquetaset_codpro;
            abort;
            end;
         end;
      end;
   end;


end;

procedure Tfrm_termica_produtos.DBGrid_etiquetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_etiqueta.SelectedField=cds_etiquetaset_codpro) then
   begin
   if not (cds_etiquetas.State in [dsEdit,dsInsert]) then
      begin
      if cds_etiquetaset_codpro.IsNull then
         cds_etiquetas.Append
      else
         cds_etiquetas.Edit;
      end;

//   cds_etiquetaset_codpro.AsString:=fChamaPro(0,'_venda','');
   cds_etiquetaset_codpro.AsString:=fChamaPro(2,'Frm_ProCodBar','');

   if (cds_etiquetaset_codpro.AsString)<>'' then
      begin
      DBGrid_etiquetaColExit(self);
      end;
   end;





end;

procedure Tfrm_termica_produtos.DBGrid_etiquetaKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_etiqueta.SelectedField=cds_etiquetaset_codpro) and
   (cds_etiquetas.State in [dsBrowse]) then
   begin
   if cds_etiquetaset_codpro.IsNull then
      begin
      cds_etiquetas.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_etiqueta.SelectedField=cds_etiquetaset_codpro) then
   begin
   if not (cds_etiquetas.State in [dsEdit,dsInsert]) then
      begin
      if cds_etiquetaset_codpro.IsNull then
         cds_etiquetas.Append
      else
         cds_etiquetas.Edit;
      end;
   cds_etiquetaset_codpro.AsString:=fChamaPro(0,'_venda',key);
   key:=#0;
   if (cds_etiquetaset_codpro.AsString)<>'' then
      begin
      DBGrid_etiquetaColExit(self);
      end;
   end;


end;

procedure Tfrm_termica_produtos.cds_etiquetasBeforePost(DataSet: TDataSet);
begin
if cds_etiquetaset_nome.IsNull then
   cds_etiquetas.cancel
else if cds_etiquetaset_qtd.AsInteger=0 then
   cds_etiquetaset_qtd.Value:=1;

if cds_etiquetaset_nome.AsString<>'' then
   begin
   cds_etiquetaset_nome_l04.Text:=fQuebraString(mQtdCarPorLinha,cds_etiquetaset_nome.AsString);

   cds_etiquetaset_nome_l01.Text:=centra( copy(cds_etiquetaset_nome_l04.asstring,1,mQtdCarPorLinha),' ',mQtdCarPorLinha);
   cds_etiquetaset_nome_l02.Text:=centra( copy(cds_etiquetaset_nome_l04.asstring,mQtdCarPorLinha+1,mQtdCarPorLinha),' ',mQtdCarPorLinha);
   cds_etiquetaset_nome_l03.Text:=centra( copy(cds_etiquetaset_nome_l04.asstring,(mQtdCarPorLinha*2)+1,mQtdCarPorLinha),' ',mQtdCarPorLinha);
   cds_etiquetaset_nome_l04.Text:=centra( copy(cds_etiquetaset_nome_l04.asstring
                                       ,(mQtdCarPorLinha*3)+1
                                       ,length(cds_etiquetaset_nome_l04.asstring)-48)
                                       ,' ',length(cds_etiquetaset_nome_l04.asstring)-48);


   end;


end;

procedure Tfrm_termica_produtos.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_termica_produtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (FormState<>[fsModal]) then
   action:=cafree;

end;
function Tfrm_termica_produtos.fLerConfiguracao: Boolean;
begin
mCarregandoConfig:=true;

if not fLerGenerico_query('CADCONFIGETIQ','CE_LOCAL,CE_NOME,CE_QTDCOL,CE_CONFIG_CAB,CE_CONFIG_ETIQ01,CE_CONFIG_ETIQ02,CE_CONFIG_ETIQ03,CE_CONFIG_ETIQ04,CE_CONFIG_ETIQ05',' CE_LOCAL='+QuotedStr(mLocalEtiqueta) ,query_consulta) then
   fSetarConfiguraoPadrao;
if cds_config_etiqueta.IsEmpty then
   begin
   cds_config_etiqueta.CreateDataSet;
   cds_config_etiqueta.Open;
   end;
cds_config_etiqueta.EmptyDataSet;
While not query_consulta.eof do
   begin
   cds_config_etiqueta.append;
   cds_config_etiquetaCE_LOCAL.value        :=query_consulta.fieldbyname('CE_LOCAL').asstring;
   cds_config_etiquetaCE_NOME.value         :=query_consulta.fieldbyname('CE_NOME').asstring;
   cds_config_etiquetaCE_CONFIG_CAB.value   :=query_consulta.fieldbyname('CE_CONFIG_CAB').asstring;
   cds_config_etiquetaCE_CONFIG_ETIQ01.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ01').asstring;
   cds_config_etiquetaCE_CONFIG_ETIQ02.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ02').asstring;
   cds_config_etiquetaCE_CONFIG_ETIQ03.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ03').asstring;
   cds_config_etiquetaCE_CONFIG_ETIQ04.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ04').asstring;
   cds_config_etiquetaCE_CONFIG_ETIQ05.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ05').asstring;
   cds_config_etiquetaCE_QTDCOL.value       :=query_consulta.fieldbyname('CE_QTDCOL').AsInteger;

   cds_config_etiqueta.Post;
   query_consulta.next;
   end;
cds_config_etiqueta.First;
cb_modelo.Items.Clear;
While not cds_config_etiqueta.Eof do
   begin
   cb_modelo.Items.Add(cds_config_etiquetaCE_NOME.AsString);
   cds_config_etiqueta.Next;
   end;
cds_config_etiqueta.First;

result:=true;
mCarregandoConfig:=false;


end;
function Tfrm_termica_produtos.fSetarConfiguraoPadrao: Boolean;
var
query_incluir: tquery;
begin
query_incluir:=tquery.create(nil);
query_incluir.databasename:=DM1.SG_ASSOC.databasename;
query_incluir.sql.add('Insert into CADCONFIGETIQ ('
                     +' CE_LOCAL '
                     +',CE_NOME '
                     +',CE_QTDCOL '
                     +',CE_CONFIG_CAB '
                     +',CE_CONFIG_ETIQ01 '
                     +',CE_CONFIG_ETIQ02 '
                     +',CE_CONFIG_ETIQ03 '
                     +',CE_CONFIG_ETIQ04 '
                     +',CE_CONFIG_ETIQ05 '
                     +') values ('
                     +' :CE_LOCAL '
                     +',:CE_NOME '
                     +',:CE_QTDCOL '
                     +',:CE_CONFIG_CAB '
                     +',:CE_CONFIG_ETIQ01 '
                     +',:CE_CONFIG_ETIQ02 '
                     +',:CE_CONFIG_ETIQ03 '
                     +',:CE_CONFIG_ETIQ04 '
                     +',:CE_CONFIG_ETIQ05 '
                     +')');

Query_incluir.ParamByName('CE_LOCAL').AsString     :=mLocalEtiqueta;
Query_incluir.ParamByName('CE_NOME').AsString      :='MODELO01_30x18_3_COLUNAS';

Query_incluir.ParamByName('CE_QTDCOL').AsInteger   :=3;
Query_incluir.ParamByName('CE_CONFIG_CAB').AsString:=Memo_30x18_3_colunas_cabec.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ01').AsString:=Memo_30x18_3_colunas_etiq01.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ02').AsString:=Memo_30x18_3_colunas_etiq02.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ03').AsString:=Memo_30x18_3_colunas_etiq03.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ04').AsString:=Memo_30x18_3_colunas_etiq04.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ05').AsString:=Memo_30x18_3_colunas_etiq05.Lines.Text;
try
   query_incluir.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_incluir,285,'func2 '+e.Message,'CADCONFIGETIQ');
   end;

// 40x30_2col

query_incluir.close;
query_incluir.SQL.clear;

query_incluir.sql.add('Insert into CADCONFIGETIQ ('
                     +' CE_LOCAL '
                     +',CE_NOME '
                     +',CE_QTDCOL '
                     +',CE_CONFIG_CAB '
                     +',CE_CONFIG_ETIQ01 '
                     +',CE_CONFIG_ETIQ02 '
                     +',CE_CONFIG_ETIQ03 '
                     +',CE_CONFIG_ETIQ04 '
                     +',CE_CONFIG_ETIQ05 '
                     +') values ('
                     +' :CE_LOCAL '
                     +',:CE_NOME '
                     +',:CE_QTDCOL '
                     +',:CE_CONFIG_CAB '
                     +',:CE_CONFIG_ETIQ01 '
                     +',:CE_CONFIG_ETIQ02 '
                     +',:CE_CONFIG_ETIQ03 '
                     +',:CE_CONFIG_ETIQ04 '
                     +',:CE_CONFIG_ETIQ05 '
                     +')');

Query_incluir.ParamByName('CE_LOCAL').AsString     :=mLocalEtiqueta;
Query_incluir.ParamByName('CE_NOME').AsString      :='MODELO02_40x30_2_COLUNAS';

Query_incluir.ParamByName('CE_QTDCOL').AsInteger   :=2;
Query_incluir.ParamByName('CE_CONFIG_CAB').AsString:=Memo_40x302col_cab.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ01').AsString:=Memo_40x302col_etiq01.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ02').AsString:=Memo_40x302col_etiq02.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ03').AsString:=Memo_40x302col_etiq03.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ04').AsString:=Memo_40x302col_etiq04.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ05').AsString:=Memo_40x302col_etiq05.Lines.Text;
try
   query_incluir.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_incluir,285,'func2 '+e.Message,'CADCONFIGETIQ');
   end;


// 40x30_2col fim

// gondolas 01 colunas inicio

// 40x30_2col

query_incluir.close;
query_incluir.SQL.clear;

query_incluir.sql.add('Insert into CADCONFIGETIQ ('
                     +' CE_LOCAL '
                     +',CE_NOME '
                     +',CE_QTDCOL '
                     +',CE_CONFIG_CAB '
                     +',CE_CONFIG_ETIQ01 '
                     +') values ('
                     +' :CE_LOCAL '
                     +',:CE_NOME '
                     +',:CE_QTDCOL '
                     +',:CE_CONFIG_CAB '
                     +',:CE_CONFIG_ETIQ01 '
                     +')');

Query_incluir.ParamByName('CE_LOCAL').AsString     :=mLocalEtiqueta;
Query_incluir.ParamByName('CE_NOME').AsString      :='MODELO03_GONDOLAS';

Query_incluir.ParamByName('CE_QTDCOL').AsInteger   :=1;
Query_incluir.ParamByName('CE_CONFIG_CAB').AsString:=Memo_Gondolas_Cab.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ01').AsString:=Memo_Gondolas_etiq01.Lines.Text;
try
   query_incluir.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_incluir,452,'func2 '+e.Message,'CADCONFIGETIQ');
   end;



// gondolas 1 colunas fim




// 3x1emeio

query_incluir.close;
query_incluir.SQL.clear;

query_incluir.sql.add('Insert into CADCONFIGETIQ ('
                     +' CE_LOCAL '
                     +',CE_NOME '
                     +',CE_QTDCOL '
                     +',CE_CONFIG_CAB '
                     +',CE_CONFIG_ETIQ01 '
                     +',CE_CONFIG_ETIQ02 '
                     +',CE_CONFIG_ETIQ03 '
                     +') values ('
                     +' :CE_LOCAL '
                     +',:CE_NOME '
                     +',:CE_QTDCOL '
                     +',:CE_CONFIG_CAB '
                     +',:CE_CONFIG_ETIQ01 '
                     +',:CE_CONFIG_ETIQ02 '
                     +',:CE_CONFIG_ETIQ03 '
                     +')');

Query_incluir.ParamByName('CE_LOCAL').AsString     :=mLocalEtiqueta;
Query_incluir.ParamByName('CE_NOME').AsString      :='MODELO04_3X1EMEIO';

Query_incluir.ParamByName('CE_QTDCOL').AsInteger   :=3;
Query_incluir.ParamByName('CE_CONFIG_CAB').AsString:=Memo_3x1emeio_cab.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ01').AsString:=Memo_3x1emeio_etiq01.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ02').AsString:=Memo_3x1emeio_etiq02.Lines.Text;
Query_incluir.ParamByName('CE_CONFIG_ETIQ03').AsString:=Memo_3x1emeio_etiq03.Lines.Text;
try
   query_incluir.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_incluir,452,'func2 '+e.Message,'CADCONFIGETIQ');
   end;



query_incluir.close;
freeandnil(query_incluir);
fLerGenerico_query('CADCONFIGETIQ','CE_LOCAL,CE_NOME,CE_QTDCOL,CE_CONFIG_CAB,CE_CONFIG_ETIQ01,CE_CONFIG_ETIQ02,CE_CONFIG_ETIQ03,CE_CONFIG_ETIQ04,CE_CONFIG_ETIQ05','',query_consulta);

result:=true;
end;

procedure Tfrm_termica_produtos.FormCreate(Sender: TObject);
var
x_print: integer;
begin
    mQtdCarPorLinha:=16;
edt_qtdcarporlinha.Value:=mQtdCarPorLinha;

PageControl1.ActivePageIndex:=0;
tsPreDefinida.TabVisible:=false;
mLocalEtiqueta:='PRODUTOS';

cds_etiquetaset_preco.DisplayFormat:=mcasaspu;
cds_etiquetas.CreateDataSet;

cb_impressora.Items.clear;
for x_print:=0 to Printer.printers.Count-1 do
   begin
   cb_impressora.Items.Add(printer.Printers[x_print]);
   end;
fLerConfiguracao;
cb_impressora.ItemIndex:=0;

cb_modelo.ItemIndex:=0;

mCarregandoConfig:=false;

end;

procedure Tfrm_termica_produtos.bbImprimirClick(Sender: TObject);
var
mEtiquetas: TStrings;
x_qtdet: Integer;
x_etiq: integer;
mTextoEtiq: string;
mArqSai: String;
x_Arq: Integer;
mComando: String;
begin
if cds_etiquetas.IsEmpty then
   begin
   MessageDlg('Favor digitar as etiquetas a serem impressas!',mtWarning,[mbOk],0);
   exit;
   end;
if not cds_config_etiqueta.Locate('CE_NOME',cb_modelo.Text,[]) then
   begin
   MessageDlg('Erro ao localizar a configuração da etiqueta '+cb_modelo.Text,mtError,[mbOk],0);
   exit;
   end;

mEtiquetas:=TStringlist.create;
x_etiq:=0;
mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_CAB.asstring));
cds_etiquetas.First;
While not cds_etiquetas.Eof do
   begin
   for x_qtdet:=1 to cds_etiquetaset_qtd.AsInteger do
      begin
      for x_etiq:=1 to cds_config_etiquetaCE_QTDCOL.AsInteger do
         begin
         if x_etiq=1 then
            mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ01.AsString))
         else if x_etiq=2 then
            mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ02.AsString))
         else if x_etiq=3 then
            mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ03.AsString))
         else if x_etiq=4 then
            mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ04.AsString))
         else if x_etiq=5 then
            mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ05.AsString));
         end;
      end;
   cds_etiquetas.Next;
   end;

fDeletaPadroes(-1,'_TERMICA_PRODUTOS','');
fGravaPadroes(-1,'IMPRESSORA'    ,'text'   ,'_TERMICA_PRODUTOS',cb_impressora.text);
fGravaPadroes(-1,'MODELO'        ,'text'   ,'_TERMICA_PRODUTOS',cb_modelo.text);

Memo_texto_etiqueta.Lines.Clear;
Memo_texto_etiqueta.Lines.Add(mEtiquetas.Text);
x_Arq:=0;
While true do
   begin
   mArqSai:=mcamtmp+'etiq'+inttostr(x_arq)+'.txt';
   if FileExists(marqsai) then
      begin
      if deletefile(mArqSai) then
         break;
      end
   else
      break;
   x_Arq:=x_Arq+1;
   end;
try
   mEtiquetas.SaveToFile(mArqSai);
   mComando:='print /D:'+fImpressoraCompartilhamento(cb_impressora.Text)+' '+mArqSai;
   fexecprog(mComando,0);
//   Showmessage('Nome do Arquivo temporario '+mArqSai);
   DeleteFile(mArqSai);
except
   MessageDlg('Erro ao gerar o arquivo '+mArqSai,mtError,[mbOk],0);
   end;

end;

function Tfrm_termica_produtos.fOrganizarTexto(pTexto: String): String;
var
mRetorno: String;
begin
mRetorno:=fSubstituirtexto(pTexto,'{CODPRO}',insere2(cds_etiquetaset_codpro.AsString,' ',14));

mRetorno:=fSubstituirtexto(mRetorno,'{CODBAR}',cds_etiquetaset_codbar.AsString);


mRetorno:=fSubstituirtexto(mRetorno,'{NOME}',cds_etiquetaset_nome.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{NOME_L01}',cds_etiquetaset_nome_l01.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{NOME_L02}',cds_etiquetaset_nome_l02.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{NOME_L03}',cds_etiquetaset_nome_l03.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{NOME_L04}',cds_etiquetaset_nome_l04.AsString);


mRetorno:=fSubstituirtexto(mRetorno,'{UND}',cds_etiquetaset_und.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{LOTE}',cds_etiquetaset_lote.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{DTVCTO}',FormatDateTime(fdt2,  cds_etiquetaset_dtvcto.AsDateTime));
mRetorno:=fSubstituirtexto(mRetorno,'{PRECO}', FormatFloat(mcasas, cds_etiquetaset_preco.AsFloat));
mRetorno:=fSubstituirtexto(mRetorno,'{OBSERVACAO}',cds_etiquetaset_obs.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_RAZAO}', DM1.Tb_EmpRAZAO.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_FANTASIA}',DM1.Tb_EmpRAZAO.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_ENDERECO}',DM1.Tb_EmpENDERECO.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_BAIRRO}',DM1.Tb_EmpBAIRRO.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_CIDADE}',DM1.Tb_EmpCIDADE.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_FONE}',DM1.Tb_EmpFONE.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_UF}',DM1.Tb_EmpUF.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_EMAIL}',DM1.Tb_EmpE_MAIL.AsString);


mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_HOME}',DM1.Tb_EmpHOMEPAGE.AsString);
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_CNPJ}', MaskCPFCNPJ2(formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)));
mRetorno:=fSubstituirtexto(mRetorno,'{EMPRESA_IE}',DM1.Tb_EmpINSCRICAO.AsString);


mRetorno:=fSubstituirtexto(mRetorno,'{NOME_l01}',cds_etiquetaset_nome.AsString);

result:=mRetorno;

end;


procedure Tfrm_termica_produtos.cds_config_etiquetaBeforePost(
  DataSet: TDataSet);
var
mMensagem: String;
begin
if mCarregandoConfig=false then
   begin
   mMensagem:='';
   if cds_config_etiquetaCE_QTDCOL.AsInteger<1 then
      cds_config_etiquetaCE_QTDCOL.AsInteger:=1;

   if length(cds_config_etiquetaCE_NOME.AsString)<1 then
      mMensagem:=mMensagem+'Falta o nome da etiqueta';
   if (length(cds_config_etiquetaCE_CONFIG_CAB.AsString)<1) then
      mMensagem:=mMensagem+'Falta dados do Cabecalho da Etiqueta';
   if length(cds_config_etiquetaCE_CONFIG_ETIQ01.AsString)<1 then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 01';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>1) and (length(cds_config_etiquetaCE_CONFIG_ETIQ02.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 02';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>2) and (length(cds_config_etiquetaCE_CONFIG_ETIQ03.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 03';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>3) and (length(cds_config_etiquetaCE_CONFIG_ETIQ04.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 04';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>4) and (length(cds_config_etiquetaCE_CONFIG_ETIQ05.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 05';
   if mMensagem<>'' then
      begin
      MessageDlg(mMensagem,mtWarning,[mbOk],0);
      abort;
      exit;
      end;
   end;
end;

procedure Tfrm_termica_produtos.bbfecharClick(Sender: TObject);
begin
close;

end;
function Tfrm_termica_produtos.fLiberaBloqueiaCampos(pLibera: Boolean):Boolean;
begin
DBE_CE_NOME.Enabled            :=pLibera;
DBE_CE_QTDCOL.Enabled          :=pLibera;
DBMemo_CE_CONFIG_CAB.Enabled   :=plibera;
DBMemo_CE_CONFIG_ETIQ01.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ01.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ02.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ03.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ04.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ05.Enabled:=plibera;

bbincluir.Enabled:=pLibera=false;
bbalterar.Enabled:=pLibera=false;
bbexcluir.Enabled:=pLibera=False;
bbgravar.Enabled :=pLibera;
bbincluir.Enabled:=pLibera;

DBNavigator1.Enabled:=pLibera=false;
DBGrid_config.Enabled:=pLibera=false;




end;

procedure Tfrm_termica_produtos.cds_config_etiquetaAfterEdit(
  DataSet: TDataSet);
begin
if mCarregandoConfig=false then
   begin
   mAnt_Nome :=cds_config_etiquetaCE_NOME.AsString;
   mAnt_Local:=cds_config_etiquetaCE_LOCAL.AsString;
   fLiberaBloqueiaCampos(true);
   end;

end;

procedure Tfrm_termica_produtos.cds_config_etiquetaAfterInsert(
  DataSet: TDataSet);
begin
if mCarregandoConfig=false then
   begin
   mAnt_Nome :='';
   mAnt_Local:='';
   fLiberaBloqueiaCampos(true);
   end;

end;

procedure Tfrm_termica_produtos.cds_config_etiquetaAfterPost(
  DataSet: TDataSet);
var
query_gravar: TQuery;
begin
if mCarregandoConfig=false then
   begin
   fLiberaBloqueiaCampos(false);
   query_gravar:=TQuery.create(nil);
   query_gravar.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   if (mAnt_Nome<>'') then
      begin
      if fLerGenerico_query('CADCONFIGETIQ','CE_NOME','CE_NOME='+QuotedStr(mAnt_Nome)
                        +' and CE_LOCAL='+QuotedStr(mAnt_Local) ,query_consulta) then
         begin
         query_gravar.Close;
         query_gravar.sql.clear;
         query_gravar.SQL.Add('Delete from CADCONFIGETIQ WHERE CE_NOME=:NOME and CE_LOCAL=:LOCAL ');
         query_gravar.parambyname('NOME').AsString := mAnt_Nome;
         query_gravar.parambyname('LOCAL').AsString := mAnt_Local;
         try
            query_gravar.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            ex_erroSql_Novo(query_gravar,553,'func2 '+e.Message,'CADCONFIGETIQ');
            end;
         end;
      end;
   query_gravar.Close;
   query_gravar.sql.clear;

   if fLerGenerico_query('CADCONFIGETIQ','CE_NOME','CE_NOME='+QuotedStr( cds_config_etiquetaCE_NOME.AsString)
                        +' and CE_LOCAL='+QuotedStr(cds_config_etiquetaCE_LOCAL.AsString) ,query_consulta) then
      begin
      query_gravar.sql.Add('Update CADCONFIGETIQ set '
                          +' CE_CONFIG_CAB=:CE_CONFIG_CAB'
                          +',CE_CONFIG_ETIQ01=:CE_CONFIG_ETIQ01'
                          +',CE_CONFIG_ETIQ02=:CE_CONFIG_ETIQ02'
                          +',CE_CONFIG_ETIQ03=:CE_CONFIG_ETIQ03'
                          +',CE_CONFIG_ETIQ04=:CE_CONFIG_ETIQ04'
                          +',CE_CONFIG_ETIQ05=:CE_CONFIG_ETIQ05'
                          +',CE_QTDCOL=:CE_QTDCOL'
                          +' where CE_NOME=:NOME '
                          +' and CE_LOCAL=:LOCAL');
      query_gravar.parambyname('CE_CONFIG_CAB').AsString    := cds_config_etiquetaCE_CONFIG_CAB.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ01').AsString := cds_config_etiquetaCE_CONFIG_ETIQ01.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ02').AsString := cds_config_etiquetaCE_CONFIG_ETIQ02.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ03').AsString := cds_config_etiquetaCE_CONFIG_ETIQ03.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ04').AsString := cds_config_etiquetaCE_CONFIG_ETIQ04.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ05').AsString := cds_config_etiquetaCE_CONFIG_ETIQ05.AsString;
      query_gravar.parambyname('CE_QTDCOL').AsInteger       := cds_config_etiquetaCE_QTDCOL.Asinteger;
      query_gravar.parambyname('NOME').AsString  := cds_config_etiquetaCE_NOME.AsString;
      query_gravar.parambyname('LOCAL').AsString := cds_config_etiquetaCE_LOCAL.AsString;
      end
   else
      begin
      query_gravar.sql.add('Insert into CADCONFIGETIQ ('
                        +' CE_LOCAL '
                        +',CE_NOME '
                        +',CE_QTDCOL '
                        +',CE_CONFIG_CAB '
                        +',CE_CONFIG_ETIQ01 '
                        +',CE_CONFIG_ETIQ02 '
                        +',CE_CONFIG_ETIQ03 '
                        +',CE_CONFIG_ETIQ04 '
                        +',CE_CONFIG_ETIQ05 '
                        +') values ('
                        +' :CE_LOCAL '
                        +',:CE_NOME '
                        +',:CE_QTDCOL '
                        +',:CE_CONFIG_CAB '
                        +',:CE_CONFIG_ETIQ01 '
                        +',:CE_CONFIG_ETIQ02 '
                        +',:CE_CONFIG_ETIQ03 '
                        +',:CE_CONFIG_ETIQ04 '
                        +',:CE_CONFIG_ETIQ05 '
                        +')');

      query_gravar.ParamByName('CE_LOCAL').AsString        :=mLocalEtiqueta;
      Query_gravar.ParamByName('CE_NOME').AsString         :=cds_config_etiquetaCE_NOME.AsString;
      Query_gravar.ParamByName('CE_QTDCOL').AsInteger      :=cds_config_etiquetaCE_QTDCOL.AsInteger;
      Query_gravar.ParamByName('CE_CONFIG_CAB').AsString   :=cds_config_etiquetaCE_CONFIG_CAB.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ01').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ01.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ02').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ02.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ03').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ03.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ04').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ04.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ05').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ05.AsString;
      end;

   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravar,583,'func2 '+e.Message,'CADCONFIGETIQ');
      end;
   query_gravar.close;
   freeandnil(query_gravar);
   end;

end;

procedure Tfrm_termica_produtos.cds_config_etiquetaAfterDelete(
  DataSet: TDataSet);
begin
if mCarregandoConfig=false then
   fLiberaBloqueiaCampos(false);

end;

procedure Tfrm_termica_produtos.tsConfigExit(Sender: TObject);
var
mMensagem: String;
begin
{
if cds_config_etiqueta.State in [dsedit,dsinsert] then
   begin
   if cds_config_etiquetaCE_QTDCOL.AsInteger<1 then
      cds_config_etiquetaCE_QTDCOL.AsInteger:=1;

   if length(cds_config_etiquetaCE_NOME.AsString)<1 then
      mMensagem:=mMensagem+'Falta o nome da etiqueta';
   if (length(cds_config_etiquetaCE_CONFIG_CAB.AsString)<1) then
      mMensagem:=mMensagem+'Falta dados do Cabecalho da Etiqueta';
   if length(cds_config_etiquetaCE_CONFIG_ETIQ01.AsString)<1 then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 01';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>1) and (length(cds_config_etiquetaCE_CONFIG_ETIQ02.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 02';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>2) and (length(cds_config_etiquetaCE_CONFIG_ETIQ03.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 03';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>3) and (length(cds_config_etiquetaCE_CONFIG_ETIQ04.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 04';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>4) and (length(cds_config_etiquetaCE_CONFIG_ETIQ05.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 05';
   if mMensagem<>'' then
     cds_config_etiqueta.post
   else
     cds_config_etiqueta.cancel;
   end;
}   
end;

procedure Tfrm_termica_produtos.bbincluirClick(Sender: TObject);
begin
cds_config_etiqueta.Insert;
end;

procedure Tfrm_termica_produtos.bbalterarClick(Sender: TObject);
begin
cds_config_etiqueta.edit;
end;

procedure Tfrm_termica_produtos.bbexcluirClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Quer realmente Excluir a Configuração da Etiqueta '+cds_config_etiquetaCE_NOME.asstring),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
cds_config_etiqueta.Delete;
end;

procedure Tfrm_termica_produtos.bbgravarClick(Sender: TObject);
begin
cds_config_etiqueta.Post;

end;

procedure Tfrm_termica_produtos.bbcancelarClick(Sender: TObject);
begin
cds_config_etiqueta.Cancel;

end;




procedure Tfrm_termica_produtos.FormShow(Sender: TObject);
begin


if flfilpad(-1,'_TERMICA_PRODUTOS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','IMPRESSORA',[]) then
      cb_impressora.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MODELO',[]) then
      cb_modelo.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   end;

if flfilpad(0,'_TERMICA_PRODUTOS','QTDCARPORLIINHA') then
   begin
   edt_qtdcarporlinha.Value := valint(DM4.Tb_FilPad2FPVALOR.AsString);
   mQtdCarPorLinha          :=edt_qtdcarporlinha.Value;
   END;


end;

procedure Tfrm_termica_produtos.edt_qtdcarporlinhaClick(Sender: TObject);
begin
mQtdCarPorLinha:=edt_qtdcarporlinha.value;
end;

procedure Tfrm_termica_produtos.edt_qtdcarporlinhaExit(Sender: TObject);
begin
mQtdCarPorLinha:=edt_qtdcarporlinha.value;
fDeletaPadroes(0,'_TERMICA_PRODUTOS','');
fGravaPadroes(0,'QTDCARPORLIINHA'    ,'text'   ,'_TERMICA_PRODUTOS',edt_qtdcarporlinha.text);
end;





procedure Tfrm_termica_produtos.BitBtn1Click(Sender: TObject);
begin
{
Q609,019');
q831');
rN');
S4');
D7');
ZT');
JB');
OD');
R9,0');
N');
A023,030,0,2,3,3,R,"[EMI_NOMFAN]"
A555,030,0,2,1,1,R,"Volume"

A650,035,0,2,3,3,N,"[NUM_VOLUME]"

A030,093,0,2,1,1,R,"[PEDIDOS]"

A030,116,0,2,1,2,N,"[PEDIDOS]"

A030,175,0,2,1,2,R,"Razão Social:"
A150,175,0,2,1,2,N,"[RAZAOSOC]"

A030,213,0,2,1,2,R,"Fantasia:"
A150,213,0,2,1,2,N,"[FANTASIA]"

A030,250,0,2,1,2,R,"Transportadora:"
A150,250,0,2,1,2,N,"[TRA_NOMTRA]"

A030,251,0,2,1,2,R,"Endereço"
A150,251,0,2,1,2,N,"[ENDERECO]"

A030,289,0,2,1,2,R,"Bairro:"
A150,289,0,2,1,2,N,"[BAIRRO]"'

A520,289,0,2,1,2,R,"Fone 01"
A590,289,0,2,1,2,N,"[FONE01]"

A030,327,0,2,1,2,R,"Cidade"
A150,327,0,2,1,2,N,"[CIDADE]"
A520,327,0,2,1,2,R,"UF"
A620,327,0,2,1,2,N,"[UF]"

A030,365,0,2,1,2,R,"Data do Pedido"
A150,365,0,2,1,2,N,"[DATAPED]"


A300,365,0,2,1,2,R,"Cód Embalador"
A370,365,0,2,1,2,N,"[CODEMB]"


A520,365,0,2,1,2,R,"Hora de embalagem"
A620,365,0,2,1,2,N,"[HORAEMB]"
A030,565,0,2,1,2,N,"Emitente:"
A030,600,0,2,1,2,N,"[EMI_RAZSOC]"
X15,20,8,790,650
LO22,550,770,8
LO22,400,770,8
LO22,160,770,8
LO22,079,770,8
B200,410,0,E30,3,8,100,N,"[CODBAR]"
A320,513,0,2,1,1,N,"[CODBAR]"
}
end;

end.
