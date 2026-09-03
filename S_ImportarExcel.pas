unit S_ImportarExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, RxMemDS, Buttons, DBTables, Grids,
  DBGrids, DBCtrls, Mask, RxDBComb, ComCtrls, Gauges,ComObj;

type
  TFrm_ImportarExcel = class(TForm)
    mem_resumo: TRxMemoryData;
    mem_config_importador_tabela: TRxMemoryData;
    mem_config_importador_tabelaCTCODEMP: TFloatField;
    mem_config_importador_tabelaCTNOMETABELA: TStringField;
    mem_config_importador_tabelaCTPLANILHA: TStringField;
    mem_config_importador_tabelaCTINCSUB: TStringField;
    mem_config_importador_tabelaCTIMPORTAR: TStringField;
    src_config_importador: TDataSource;
    opdl1: TOpenDialog;
    src_config_importador_tabela: TDataSource;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    cb_tabelas: TComboBox;
    gbTabela: TGroupBox;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    bbPlanilha: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    RxDBCB_CST_PISCOF_ENTRADA: TRxDBComboBox;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    cb_todos: TCheckBox;
    sbSalvarPadrao: TSpeedButton;
    GroupBox_dados: TGroupBox;
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    cb_todas: TCheckBox;
    tsEventos: TTabSheet;
    RichEdit_eventos: TRichEdit;
    Panel5: TPanel;
    Label5: TLabel;
    cb_datapadrao: TComboBox;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    Label6: TLabel;
    edt_nomcampo: TEdit;
    bbPesquisar: TBitBtn;
    GroupBox1: TGroupBox;
    mem_config_importador_comando: TRxMemoryData;
    src_config_importador_comando: TDataSource;
    mem_config_importador_comandoCMCODEMP: TFloatField;
    mem_config_importador_comandoCMCOMANDO: TStringField;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    _39Edt_pdprazo_dia_up: TUpDown;
    edt_ret_tabela: TEdit;
    Label8: TLabel;
    edt_ret_planilha: TEdit;
    UpDown1: TUpDown;
    sbnLinkarParecidos: TSpeedButton;
    mem_config_importador: TRxMemoryData;
    mem_resumochave_sel: TFloatField;
    mem_config_importadorCICODEMP: TFloatField;
    mem_config_importadorCINOMECAMPO: TStringField;
    mem_config_importadorCINOMETABELA: TStringField;
    mem_config_importadorCIORDEM: TIntegerField;
    mem_config_importadorCIIMPORTAR: TStringField;
    mem_config_importadorCIMASCARA: TStringField;
    mem_config_importadorCICELULA: TStringField;
    mem_config_importadorCITAMANHO_CAMPO: TIntegerField;
    mem_config_importadorCITAMANHO_DECIMAIS: TIntegerField;
    mem_config_importadorCITIPOCAMPO: TStringField;
    mem_config_importadorCIVALDIG: TStringField;
    mem_config_importadorcelula: TStringField;
    DataSource1: TDataSource;
    Panel8: TPanel;
    bbLerPlanilha: TBitBtn;
    Gauge1: TGauge;
    Label9: TLabel;
    edt_celula: TEdit;
    bbPesqCelula: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cb_tabelasClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure bbPlanilhaClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure mem_resumoCalcFields(DataSet: TDataSet);
    procedure bbLerPlanilhaClick(Sender: TObject);
    procedure cb_tabelasChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbPesquisarClick(Sender: TObject);
    procedure edt_nomcampoChange(Sender: TObject);
    procedure mem_config_importador_tabelaAfterEdit(DataSet: TDataSet);
    procedure mem_config_importador_comandoAfterEdit(DataSet: TDataSet);
    procedure gbTabelaExit(Sender: TObject);
    procedure sbnLinkarParecidosClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mem_config_importadorAfterEdit(DataSet: TDataSet);
    procedure mem_config_importadorAfterPost(DataSet: TDataSet);
    procedure cb_datapadraoExit(Sender: TObject);
    procedure bbPesqCelulaClick(Sender: TObject);
  private
    { Private declarations }
    mAlteroudados: Boolean;
    mBloqueadoEvento : Boolean;

    mant_importa: string;

    function fCarregar(pTabela: String): Boolean;


    function fMarcarDesmarcar(pMarcacao: String): Boolean;


    function fSalvarDados(pTabela: String): Boolean;

    function fImportardadosTabela: Boolean;



    function fRetornarDataHora(pValor: String): tDateTime;


    function fvalidarstring(pTam: Integer; pTexto: String): String;

    function fRetornarNome(pNomeEntra: String; pRetira: Integer): String;

    function fDefinirResumo: Boolean;


    function LerXls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;


    function LerCSV_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_ImportarExcel: TFrm_ImportarExcel;

implementation

uses S_DM1, func_excecoes, Func, StrUtils, S_DM4, lerarq,
  funcoes_especificas;

{$R *.dfm}

procedure TFrm_ImportarExcel.FormCreate(Sender: TObject);
var
query_temp: tquery;

begin

if flfilpad(0,'_IMPORTAREXCEL','CB_DATAPADRAO') then
   CB_DATAPADRAO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
mBloqueadoEvento:=true;


mem_resumo.open;
mem_resumo.EmptyTable;


 mAlteroudados:=false;

query_temp:=tquery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_temp.sql.add( 'select OBJECT_NAME from user_objects '
                  +' where OBJECT_TYPE='+QuotedStr('TABLE')
                  +' and not (OBJECT_NAME like '+QuotedStr('OLD_%')+')'
                  +' order by OBJECT_NAME '
                  );
try
   query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(query_temp,67,'func Erro:'+e.Message ,'user_objects');
   end;
cb_tabelas.Items.clear;
While not Query_temp.Eof do
   begin
   cb_tabelas.Items.Add(query_temp.fieldbyname('OBJECT_NAME').asstring);
   query_temp.next;
   end;
if cb_tabelas.Items.Count>0 then
   begin
   cb_tabelas.ItemIndex:=0;
   cb_tabelasClick(self);
   end;
mBloqueadoEvento :=false;

query_temp.close;
freeandnil(query_temp);



end;

function TFrm_ImportarExcel.fCarregar(pTabela: String): Boolean;
var
query_temp: TQuery;

begin
mBloqueadoEvento:=true;
query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.Sql.add('insert into CONFIG_IMPORTADOR ( CICODEMP, '
                  +'  CINOMECAMPO,   CINOMETABELA,  CIORDEM '
                  +',CITAMANHO_CAMPO '
                  +',CITAMANHO_DECIMAIS '
                  +',CITIPOCAMPO '


                  +') select '+Inttostr(codemp)+',COLUMN_NAME,TABLE_NAME,rownum '
                  +',CASE WHEN NOT CHAR_COL_DECL_LENGTH IS NULL THEN CHAR_COL_DECL_LENGTH '
                  +'     WHEN NOT DATA_PRECISION IS NULL THEN DATA_PRECISION '
                  +'     WHEN NOT DATA_LENGTH IS NULL THEN DATA_LENGTH '
                  +'     ELSE 0 END AS TAMANHO, '
                  +'    DATA_SCALE '
                  +'   ,DATA_TYPE '
                  +' from '
                  +'  user_tab_columns where table_name='+QuotedStr(pTabela)
                  +' and not exists '
                  +'( select  CINOMETABELA from CONFIG_IMPORTADOR where CINOMETABELA=TABLE_NAME and CINOMECAMPO=COLUMN_NAME  ) ');
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,104,'func Erro:'+e.Message ,'user_objects');
   end;
query_temp.Close;
query_temp.sql.clear;
query_temp.sql.Add('Select ');
query_temp.sql.Add(' CICODEMP, ');
query_temp.sql.Add('  CINOMECAMPO, ');
query_temp.sql.Add('  CINOMETABELA, ');
query_temp.sql.Add('  CIORDEM, ');
query_temp.sql.Add('  CIIMPORTAR, ');
query_temp.sql.Add('  CIMASCARA, ');
query_temp.sql.Add('  CICELULA, ');
query_temp.sql.Add('  NVL(CITAMANHO_CAMPO,NVL(DATA_PRECISION,DATA_LENGTH)) AS CITAMANHO_CAMPO, ');
query_temp.sql.Add('  NVL(CITAMANHO_DECIMAIS,DATA_SCALE) AS CITAMANHO_DECIMAIS, ');
query_temp.sql.Add('  NVL(CITIPOCAMPO,DATA_TYPE) AS CITIPOCAMPO , ');
query_temp.sql.Add('  CIVALDIG ');
query_temp.sql.Add('  from CONFIG_IMPORTADOR ');
query_temp.sql.Add(' T1 LEFT JOIN user_tab_columns ON (TABLE_NAME=CINOMETABELA and COLUMN_NAME=CINOMECAMPO)  ');
query_temp.sql.Add(' where CINOMETABELA='+QuotedStr(ptabela)+' order by CINOMECAMPO,CIORDEM  ');



//query_temp.sql.Add('Select * from CONFIG_IMPORTADOR where CINOMETABELA='+QuotedStr(ptabela)+' order by CINOMECAMPO,CIORDEM ');
try
   query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(query_temp,104,'func Erro:'+e.Message ,'user_objects');
   end;
if mem_config_importador.Active=false then
   mem_config_importador.open;

mem_resumo.EmptyTable;

mem_config_importador.EmptyTable;
query_temp.First;
While not query_temp.Eof do
   begin
   mem_config_importador.Append;
   mem_config_importadorCICODEMP.value           := query_temp.fieldbyname('CICODEMP').AsInteger;
   mem_config_importadorCINOMECAMPO.value        := query_temp.fieldbyname('CINOMECAMPO').AsString;
   mem_config_importadorCINOMETABELA.value       := query_temp.fieldbyname('CINOMETABELA').AsString;
   mem_config_importadorCIORDEM.value            := query_temp.fieldbyname('CIORDEM').AsInteger;
   mem_config_importadorCIIMPORTAR.value         := query_temp.fieldbyname('CIIMPORTAR').AsString;
   mem_config_importadorCIMASCARA.value          := query_temp.fieldbyname('CIMASCARA').AsString;
   mem_config_importadorCICELULA.value           := query_temp.fieldbyname('CICELULA').AsString;
   mem_config_importadorCITAMANHO_CAMPO.value    := query_temp.fieldbyname('CITAMANHO_CAMPO').AsInteger;
   mem_config_importadorCITAMANHO_DECIMAIS.value := query_temp.fieldbyname('CITAMANHO_DECIMAIS').AsInteger;
   mem_config_importadorCITIPOCAMPO.value        := query_temp.fieldbyname('CITIPOCAMPO').AsString;
   mem_config_importadorCIVALDIG.value           := query_temp.fieldbyname('CIVALDIG').AsString;

   mem_config_importador.Post;
   query_temp.Next;

   end;


query_temp.close;
query_temp.sql.clear;
query_temp.Sql.add('insert into CONFIG_IMPORTADOR_TABELA ( CTCODEMP, '
                  +'  CTNOMETABELA '
                  +') select '+Inttostr(codemp)+',TABLE_NAME from '
                  +'  user_tab_columns where table_name='+QuotedStr(pTabela)
                  +' and not exists '
                  +'( select  CTNOMETABELA from CONFIG_IMPORTADOR_TABELA where CTNOMETABELA=TABLE_NAME ) '
                  +' group by TABLE_NAME'
                  );

try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,150,'func Erro:'+e.Message ,'user_objects');
   end;
query_temp.Close;
query_temp.sql.clear;
query_temp.sql.Add('Select * from CONFIG_IMPORTADOR_TABELA where CTNOMETABELA='+QuotedStr(ptabela));
try
   query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(query_temp,104,'func Erro:'+e.Message ,'user_objects');
   end;
if mem_config_importador_tabela.Active=false then
   mem_config_importador_tabela.open;
mem_config_importador_tabela.EmptyTable;

while not query_temp.Eof do
   begin
   mem_config_importador_tabela.Append;
   mem_config_importador_tabelaCTCODEMP.Value    :=query_temp.fieldbyname('CTCODEMP').asinteger;
   mem_config_importador_tabelaCTNOMETABELA.Value:=query_temp.fieldbyname('CTNOMETABELA').AsString;
   mem_config_importador_tabelaCTPLANILHA.Value  :=query_temp.fieldbyname('CTPLANILHA').AsString;
   mem_config_importador_tabelaCTINCSUB.Value    :=query_temp.fieldbyname('CTINCSUB').AsString;
   mem_config_importador_tabelaCTIMPORTAR.Value  :=query_temp.fieldbyname('CTIMPORTAR').AsString;
   mem_config_importador_tabela.Post;
   query_temp.Next;
   end;

// comando



query_temp.Close;
query_temp.sql.clear;
query_temp.sql.Add('Select * from CONFIG_IMPORTADOR_COMANDO where CMNOMETABELA='+QuotedStr(ptabela));
try
   query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(query_temp,282,'func Erro:'+e.Message ,'user_objects');
   end;
if mem_config_importador_comando.Active=false then
   mem_config_importador_comando.open;
mem_config_importador_comando.EmptyTable;

while not query_temp.Eof do
   begin
   mem_config_importador_comando.Append;
   mem_config_importador_comandoCMCODEMP.Value    :=query_temp.fieldbyname('CMCODEMP').asinteger;
   mem_config_importador_comandoCMCOMANDO.Value   :=query_temp.fieldbyname('CMCOMANDO').AsString;
   mem_config_importador_comando.Post;
   query_temp.Next;
   end;
query_temp.close;
freeandnil(query_temp);



{
cb_importar.Checked:=mem_config_importador_tabelaCTINCSUB.AsString='S';
if mem_config_importador_tabelaCTINCSUB.AsString='S' then
   cb_incsub.ItemIndex:=0
else
   cb_incsub.ItemIndex:=1;
edt_nompla.Text:=mem_config_importador_tabelaCTPLANILHA.AsString;
}


mAlteroudados:=false;
mBloqueadoEvento:=false;
fDefinirResumo;



end;


procedure TFrm_ImportarExcel.cb_tabelasClick(Sender: TObject);
begin
fCarregar(cb_tabelas.text);


end;

procedure TFrm_ImportarExcel.DBGrid1DblClick(Sender: TObject);
begin
if not (mem_config_importador.State in [dsedit,dsinsert] )then
   mem_config_importador.Edit;

if mem_config_importadorCIIMPORTAR.AsString='S' then
   mem_config_importadorCIIMPORTAR.AsString:='N'
else
   mem_config_importadorCIIMPORTAR.AsString:='S';
mem_config_importador.Post;

end;

procedure TFrm_ImportarExcel.cb_todosClick(Sender: TObject);
begin
fMarcarDesmarcar(iif(cb_todos.Checked=true,'S','N'));

end;

function TFrm_ImportarExcel.fMarcarDesmarcar(pMarcacao: String): Boolean;
var
mbookmarck: TBookmark;
begin
mbookmarck:=mem_config_importador.GetBookmark;
mem_config_importador.First;
While not mem_config_importador.eof do
   begin
   mem_config_importador.Edit;
   mem_config_importadorCIIMPORTAR.AsString:=pmarcacao;
   mem_config_importador.Post;
   mem_config_importador.next;
   end;
mem_config_importador.GotoBookmark(mbookmarck);
result:=true;
end;
procedure TFrm_ImportarExcel.bbPlanilhaClick(Sender: TObject);
begin
if opdl1.Execute then
   begin
   if not (mem_config_importador_tabela.State in [dsedit,dsinsert]) then
      mem_config_importador_tabela.Edit;
   mem_config_importador_tabelaCTPLANILHA.AsString :=opdl1.filename;
   mem_config_importador_tabela.post;

   end;
end;

function TFrm_ImportarExcel.fSalvarDados(pTabela: String): Boolean;
var
query_temp: TQuery;
begin
result:=true;
query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_temp.Sql.add('TRUNCATE TABLE  CONFIG_IMPORTADOR');

try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,286,'func Erro:'+e.Message ,'user_objects');
   result:=false;
   end;
   end;
query_temp.close;
query_temp.Sql.clear;

query_temp.Sql.add('insert into CONFIG_IMPORTADOR ( '
                   +'CIORDEM '
                   +',CIIMPORTAR '
                   +',CIMASCARA '
                   +',CICELULA '
                   +',CIVALDIG '
                   +',CICODEMP '
                   +',CINOMECAMPO '
                   +',CINOMETABELA '

                   +') values ('
                   +':CIORDEM '
                   +',:CIIMPORTAR '
                   +',:CIMASCARA '
                   +',:CICELULA '

                   +',:CIVALDIG '
                   +',:CICODEMP '
                   +',:CINOMECAMPO '
                   +',:CINOMETABELA '

                   +' ) ');

{
                   +' where '
                   +' CICODEMP=:CICODEMP '
                   +' and CINOMECAMPO=:CINOMECAMPO '
                   +' and CINOMETABELA=:CINOMETABELA ');
}
mem_config_importador.First;
While not mem_config_importador.Eof do
   begin
   if mem_config_importador_tabelaCTIMPORTAR.AsString<>'S' then
      begin
      mem_config_importador.next;
      continue;
      end;
   query_temp.Close;
   query_temp.ParamByName('CIORDEM').AsInteger    := mem_config_importadorCIORDEM.AsInteger;
   query_temp.ParamByName('CIIMPORTAR').AsString  := mem_config_importadorCIIMPORTAR.AsString;
   query_temp.ParamByName('CIMASCARA').AsString   := mem_config_importadorCIMASCARA.AsString;
   query_temp.ParamByName('CICELULA').AsString    := mem_config_importadorCICELULA.AsString;
   query_temp.ParamByName('CICODEMP').AsInteger   := mem_config_importadorCICODEMP.AsInteger;
   query_temp.ParamByName('CINOMECAMPO').AsString := mem_config_importadorCINOMECAMPO.AsString;
   query_temp.ParamByName('CINOMETABELA').AsString:= mem_config_importadorCINOMETABELA.AsString;
   query_temp.ParamByName('CIVALDIG').AsString    := mem_config_importadorCIVALDIG.AsString;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_temp,286,'func Erro:'+e.Message ,'user_objects');
      result:=false;
      end;
      end;
   mem_config_importador.Next;
   end;
if mem_config_importador_tabela.state in [dsedit,dsinsert] then
   mem_config_importador_tabela.post;
if mem_config_importador_comando.state in [dsedit,dsinsert] then
   mem_config_importador_comando.post;


//mem_config_importador_tabela.First;
// inicio
query_temp.Close;
query_temp.Sql.Clear;
query_temp.Sql.add('Update CONFIG_IMPORTADOR_TABELA set '
                   +' CTPLANILHA=:CTPLANILHA '
                   +',CTINCSUB=:CTINCSUB '
                   +',CTIMPORTAR=:CTIMPORTAR '
                   +' where '
                   +' CTCODEMP=:CTCODEMP '
                   +' and CTNOMETABELA=:CTNOMETABELA ');
query_temp.Close;
query_temp.ParamByName('CTPLANILHA').AsString  := mem_config_importador_tabelaCTPLANILHA.AsString;
query_temp.ParamByName('CTINCSUB').AsString    := mem_config_importador_tabelaCTINCSUB.AsString;
query_temp.ParamByName('CTIMPORTAR').AsString  := mem_config_importador_tabelaCTIMPORTAR.AsString;
query_temp.ParamByName('CTCODEMP').AsInteger   := mem_config_importador_tabelaCTCODEMP.AsInteger;
query_temp.ParamByName('CTNOMETABELA').AsString:= mem_config_importador_tabelaCTNOMETABELA.AsString;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,311,'func Erro:'+e.Message ,'user_objects');
   result:=false;
   end;
   end;
// excluir comando extra

query_temp.Close;
query_temp.Sql.Clear;
query_temp.Sql.add('delete from CONFIG_IMPORTADOR_COMANDO  '
                   +' where '
                   +' CMCODEMP=:CMCODEMP '
                   +' and CMNOMETABELA=:CMNOMETABELA ');
query_temp.Close;
query_temp.ParamByName('CMCODEMP').AsInteger   := mem_config_importador_tabelaCTCODEMP.AsInteger;
query_temp.ParamByName('CMNOMETABELA').AsString:= mem_config_importador_tabelaCTNOMETABELA.AsString;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,428,'func Erro:'+e.Message ,'CONFIG_IMPORTADOR_COMANDO');
   result:=false;
   end;
   end;




query_temp.Close;
query_temp.Sql.Clear;
query_temp.Sql.add('Insert into  CONFIG_IMPORTADOR_COMANDO  '
                  +' ( CMCODEMP,CMNOMETABELA,CMCOMANDO ) '
                  +' values '
                  +' ( :CMCODEMP,:CMNOMETABELA,:CMCOMANDO ) ');
mem_config_importador_comando.First;

While not mem_config_importador_comando.Eof do
   begin
   if trim(mem_config_importador_comandoCMCOMANDO.AsString)<>'' then
      begin
      query_temp.close;
      query_temp.ParamByName('CMCODEMP').AsInteger   :=codemp;
      query_temp.ParamByName('CMNOMETABELA').AsString:=cb_tabelas.Text;
      query_temp.ParamByName('CMCOMANDO').AsString   :=mem_config_importador_comandoCMCOMANDO.AsString;
      try
         query_temp.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_temp,457,'func Erro:'+e.Message ,'CONFIG_IMPORTADOR_COMANDO');
         result:=false;
         end;
         end;
      end;
   mem_config_importador_comando.next;
   end;

query_temp.close;
freeandnil(query_temp);
mAlteroudados:=false;
fCarregar(cb_tabelas.text);
end;



procedure TFrm_ImportarExcel.sbSalvarPadraoClick(Sender: TObject);
begin

if fSalvarDados(cb_tabelas.Text) then
   MessageDlg('Arquivo Salvo Com sucesso!',mtInformation,[mbOk],0)
else
   MessageDlg('Erro ao Salvar arquivo!',mtError,[mbOk],0);


end;

procedure TFrm_ImportarExcel.mem_resumoCalcFields(
  DataSet: TDataSet);
begin
if mem_config_importadorCIORDEM.AsInteger>0 then
   mem_config_importadorcelula.AsString:=DecToAlphal(mem_config_importadorCIORDEM.AsInteger);

end;

procedure TFrm_ImportarExcel.bbLerPlanilhaClick(Sender: TObject);
var
mExtensao: String;
mLeuOk: Boolean;
begin
mExtensao:=(uppercase(ExtractFileExt(mem_config_importador_tabelaCTPLANILHA.AsString)));

if  (mExtensao<>'.XLS') and
    (mExtensao<>'.XLSX') and
    (mExtensao<>'.CSV') then
     begin
     MessageDlg('Planilha '+mem_config_importador_tabelaCTPLANILHA.AsString+' não é uma planilha valida!' ,mtWarning,[mbOk],0);
     exit;
     end;


if (length(trim(mem_config_importador_tabelaCTPLANILHA.AsString))>5) and (FileExists(mem_config_importador_tabelaCTPLANILHA.AsString)) then
   begin
   if mExtensao='.CSV' then
      mLeuOk:=lerCSV_To_StringGrid(StringGrid1, mem_config_importador_tabelaCTPLANILHA.AsString)
   else
      mLeuOk:=lerXls_To_StringGrid(StringGrid1, mem_config_importador_tabelaCTPLANILHA.AsString);
   if not mLeuOk then
      begin
      MessageDlg('Erro ao Ler dados da tabela '+mem_config_importador_tabelaCTPLANILHA.AsString,mtError,[mbOk],0);
      end
   else
      StringGrid1.visible:=true;
   end;

end;

procedure TFrm_ImportarExcel.cb_tabelasChange(Sender: TObject);
begin
if StringGrid1.Visible=true then
   StringGrid1.Visible:=false;
end;

procedure TFrm_ImportarExcel.SpeedButton1Click(Sender: TObject);
var
x_tab: Integer;
x_qtdtab: Integer;
mTabImportar: String;
begin
if Application.MessageBox('Quer realmente Importar as Tabelas? ','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
if (cb_todas.Checked=false) then
   mTabImportar:=cb_tabelas.Text
else
   mTabImportar:='';

x_qtdtab:=cb_tabelas.Items.Count;
RichEdit_eventos.Lines.Clear;
for x_tab:=0 to x_qtdtab-1 do
   begin
   if (mTabImportar<>'') and (cb_tabelas.Items[x_tab]<>mTabImportar) then
      continue;
   cb_tabelasClick(self);
   if mem_config_importador_tabelaCTIMPORTAR.AsString<>'S' then
      begin
      RichEdit_eventos.Lines.Add('Verificando a Tabela '+cb_tabelas.Items[x_tab]+' nao importada!');
      end
   else if length(mem_config_importador_tabelaCTPLANILHA.AsString)<5 then
      RichEdit_eventos.Lines.Add('Verificando a Tabela '+cb_tabelas.Items[x_tab]+' não definido a planilha de dados que sera lida!')
   else if not fileexists(mem_config_importador_tabelaCTPLANILHA.AsString) then
      RichEdit_eventos.Lines.Add('Verificando a Tabela '+cb_tabelas.Items[x_tab]+' Planilha '+mem_config_importador_tabelaCTPLANILHA.AsString+' planilha nao encontrada!')
   else if not Xls_To_StringGrid(StringGrid1, mem_config_importador_tabelaCTPLANILHA.AsString,0) then
      begin
      RichEdit_eventos.Lines.Add('Verificando a Tabela '+cb_tabelas.Items[x_tab]+' Planilha '+mem_config_importador_tabelaCTPLANILHA.AsString+' erro ao ler a planilha!')
      end
   else
      begin
      if not fImportardadosTabela then
         begin
         MessageDlg('Erro ao Importar o Arquivo, VERIFIQUE EVENTOS '+cb_tabelas.items[x_tab],mtError,[mbOk],0);
         PageControl1.ActivePage:=tsEventos;
         exit;
         end;
      end;
   end;


end;
function TFrm_ImportarExcel.fImportardadosTabela: Boolean;
var
mQtdCampos: Integer;
mQtdSelecionados: Integer;
query_exec: TQuery;
mVirg: String;
x_row: Integer;

x_rowcount: Integer;
mIdSeq01: Integer;
begin
RichEdit_eventos.Lines.Clear;

mIdSeq01 :=0;
mQtdCampos      :=0;
mQtdSelecionados:=0;
mem_config_importador.DisableControls;

mem_config_importador.First;
While not mem_config_importador.Eof do
   begin
   mQtdCampos:=mQtdCampos+1;
   if mem_config_importadorCIIMPORTAR.AsString='S' then
      mQtdSelecionados:=mQtdSelecionados+1;
   mem_config_importador.Next;
   end;
if mQtdSelecionados=0 then
   begin
   RichEdit_eventos.Lines.Add('Verificando a Tabela '+mem_config_importadorCINOMETABELA.AsString+' Existem '+IntToStr(mQtdCampos)+' porem nenhum foi selecionado!');
   result:=false
   end
else
   begin
   query_exec:=TQuery.Create(nil);
   query_exec.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   if mem_config_importador_tabelaCTINCSUB.AsString='S' then
      begin
      query_exec.SQL.Add('truncate table '+mem_config_importadorCINOMETABELA.AsString);
      try
         query_exec.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
          RichEdit_eventos.Lines.Add(e.Message);
//          RichEdit_eventos.Lines.Add( ex_erroSql_richedit(query_exec,471,'func Erro:'+e.Message ,mem_config_importadorCINOMETABELA.asstring));
         end;
      end;
   query_exec.Close;
   query_exec.SQL.clear;
   query_exec.SQL.Add('Insert into '+mem_config_importadorCINOMETABELA.AsString+'(');
   mem_config_importador.First;
   mVirg:='';
   While not mem_config_importador.Eof do
      begin
      if mem_config_importadorCIIMPORTAR.AsString='S' then
         begin
         query_exec.SQL.add(mVirg+mem_config_importadorCINOMECAMPO.AsString);
         mVirg:=',';
         end;
      mem_config_importador.Next;
      end;
   query_exec.SQL.add(') values (');

   mem_config_importador.First;

   mVirg:='';
   While not mem_config_importador.Eof do
      begin
      if mem_config_importadorCIIMPORTAR.AsString='S' then
         begin
         query_exec.SQL.add(mVirg+' :'+mem_config_importadorCINOMECAMPO.AsString);
         mVirg:=',';
         end;
      mem_config_importador.Next;
      end;
   query_exec.SQL.add(')');

   x_rowcount:=StringGrid1.RowCount-1;
   for x_row:=2 to x_rowcount do
      begin
      if (trim(StringGrid1.Cells[0,x_row])='') and
         (trim(StringGrid1.Cells[1,x_row])='') and
         (trim(StringGrid1.Cells[2,x_row])='') and
         (trim(StringGrid1.Cells[3,x_row])='') and
         (trim(StringGrid1.Cells[4,x_row])='') then
         continue;
      mIdSeq01:=mIdSeq01+1;
      mem_config_importador.First;
      While not mem_config_importador.Eof do
          begin
          if mem_config_importadorCIIMPORTAR.AsString='S' then
             begin
             if mem_config_importadorCIVALDIG.AsString='[idseq01]' then
                query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).AsString :=InttoStr(mIdSeq01)
             else if (UpperCase(mem_config_importadorCITIPOCAMPO.AsString)=uppercase(pcData)) or
                (UpperCase(mem_config_importadorCITIPOCAMPO.AsString)=uppercase(pcDataHora)) then
                begin
                if trim(mem_config_importadorCIVALDIG.AsString)<>'' then
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).AsDateTime:=fRetornarDataHora(mem_config_importadorCIVALDIG.AsString)
                else
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).AsDateTime:=fRetornarDataHora(StringGrid1.Cells[mem_config_importadorCIORDEM.asinteger-1,x_row]);
                end
             else if (UpperCase(mem_config_importadorCITIPOCAMPO.AsString)=uppercase(pcFloat)) then
                begin

                if trim(mem_config_importadorCIVALDIG.AsString)<>'' then
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).Asfloat:=Valfloat(mem_config_importadorCIVALDIG.AsString)
                else
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).Asfloat:=Valfloat(StringGrid1.Cells[mem_config_importadorCIORDEM.asinteger-1,x_row])
                end
             else if (UpperCase(mem_config_importadorCITIPOCAMPO.AsString)=uppercase(pcInteger)) then
                begin
                if trim(mem_config_importadorCIVALDIG.AsString)<>'' then
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).Asfloat:=Valint(mem_config_importadorCIVALDIG.AsString)
                else
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).Asfloat:=Valint(StringGrid1.Cells[mem_config_importadorCIORDEM.asinteger-1,x_row])

                end
             else
                begin
                if trim(mem_config_importadorCIVALDIG.AsString)<>'' then
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).AsString:=mem_config_importadorCIVALDIG.AsString
                else
                   query_exec.ParamByName(mem_config_importadorCINOMECAMPO.AsString).AsString:=fvalidarstring(mem_config_importadorCITAMANHO_CAMPO.asinteger, StringGrid1.Cells[mem_config_importadorCIORDEM.asinteger-1,x_row]);
                end;
             end;
          mem_config_importador.Next;
          end;


      try
         query_exec.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
          begin
          result:=false;

          RichEdit_eventos.Lines.Add(e.Message);
          RichEdit_eventos.Lines.Add(ex_erroSql_Novo_texto(query_exec,833,'SGE','CADEXCEL'));
//          RichEdit_eventos.Lines.Add( ex_erroSql_richedit(query_exec,471,'func Erro:'+e.Message ,mem_config_importadorCINOMETABELA.asstring));

//          RichEdit_eventos.Lines.Add( ex_erroSql_richedit(query_exec,564,'func Erro:'+e.Message ,'user_objects'));
          query_exec.Close;
          freeandnil(query_exec);
          EXIT;
          end;
         end;
      end;
   mem_config_importador_comando.First;
   While not mem_config_importador_comando.Eof do
      begin
      if (mem_config_importador_comandoCMCOMANDO.AsString)<>'' then
         begin
         query_exec.close;
         query_exec.SQL.clear;
         query_exec.SQL.add(mem_config_importador_comandoCMCOMANDO.AsString);
         try
            query_exec.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
             begin
             result:=false;
             RichEdit_eventos.Lines.Add(e.Message);
//          RichEdit_eventos.Lines.Add( ex_erroSql_richedit(query_exec,471,'func Erro:'+e.Message ,mem_config_importadorCINOMETABELA.asstring));

//             RichEdit_eventos.Lines.Add( ex_erroSql_richedit(query_exec,564,'func Erro:'+e.Message ,'user_objects')) ;
             query_exec.Close;
             freeandnil(query_exec);
             EXIT;
             end;
            end;
         end;
      mem_config_importador_comando.Next;
      end;

   query_exec.Close;
   freeandnil(query_exec);

   end;

mem_config_importador.EnableControls;
verteclado(0);
MessageDlg('Concluido!',mtInformation,[mbOk],0);

end;


function TFrm_ImportarExcel.fvalidarstring(pTam: Integer; pTexto: String): String;
begin
if uppercase(pTexto)='NULL' then
   result:=''
else if ptam>0 then
   result:=copy(ptexto,1,ptam)
else
   result:=pTexto;
end;

function TFrm_ImportarExcel.fRetornarDataHora(pValor: String): tDateTime;
var
mHora: String;
mDia: Integer;
mMes: Integer;
mAno: Integer;
mData: String;
mPosHora: Integer;
begin
if fsonumero(pValor)=0 then
   result:=pdatanula
else
   begin
   try
      result:=strtodatetime(pvalor);
      exit;
   except
      end;
   mPosHora:=pos(' ',pValor);
   if fsonumero(copy(pvalor,12,08))=0 then
      mHora:='00:00:00'
   else if ((mPosHora<1) or  (mPosHora>length(trim(pValor)))) then
      mHora:='00:00:00'
   else
      begin
      try
         mHora:=FormatDateTime('hh:nn:ss' , Strtotime(copy(pvalor,mPosHora+1,08)));
      except
         mHora:='00:00:00';
         end;
      end;
//    if mPosHora<1 then
//       mPosHora:=length(pValor);
    mData:=copy(pValor,1, length(pValor) -mposhora);
    if (cb_datapadrao.itemindex=0) or (cb_datapadrao.ItemIndex=1) then
       begin
       mdia:=valint(copy(mData,1,2));
       mmes:=valint(copy(mData,3,2));
       mano:=valint(copy(mData,5,4));
       if fEData(mDia,mMes,mAno) then
          begin
          Result:=Strtodatetime(FormatFloat('00', mdia)+'/'+FormatFloat('00', mmes)+'/'
                               +FormatFloat('0000', mano)+' '+mhora);
          exit;
          end;
       end;
    if (cb_datapadrao.itemindex=2) or (cb_datapadrao.ItemIndex=3) then
       begin
       mdia:=valint(copy(mData,09,2));
       mmes:=valint(copy(mData,06,2));
       mano:=valint(copy(mData,01,4));
       if fEData(mDia,mMes,mAno) then
          begin
          Result:=Strtodatetime(FormatFloat('00', mdia)+'/'+FormatFloat('00', mmes)+'/'
                               +FormatFloat('0000', mano)+' '+mhora);
          exit;
          end;
       end;

    mdia:=valint(copy(mData,1,2));
    mmes:=valint(copy(mData,3,2));
    mano:=valint(copy(mData,5,4));
    if fEData(mDia,mMes,mAno) then
       begin
       Result:=Strtodatetime(FormatFloat('00', mdia)+'/'+FormatFloat('00', mmes)+'/'
                            +FormatFloat('0000', mano)+' '+mhora);
       if copy(mData,3,1)='-' then
          cb_datapadrao.ItemIndex:=1
       else
          cb_datapadrao.ItemIndex:=0;
       exit;
       end;

    mdia:=valint(copy(mData,09,2));
    mmes:=valint(copy(mData,06,2));
    mano:=valint(copy(mData,01,4));
    if fEData(mDia,mMes,mAno) then
       begin
       Result:=Strtodatetime(FormatFloat('00', mdia)+'/'+FormatFloat('00', mmes)+'/'
                            +FormatFloat('0000', mano)+' '+mhora);
       if copy(mData,5,1)='-' then
          cb_datapadrao.ItemIndex:=3
       else
          cb_datapadrao.ItemIndex:=2;
       exit;
       end;
    result:=pdatanula;
    end;




end;

procedure TFrm_ImportarExcel.bbPesquisarClick(Sender: TObject);
begin
mem_config_importador.Locate('CINOMECAMPO',edt_nomcampo.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_ImportarExcel.edt_nomcampoChange(Sender: TObject);
begin
bbPesquisarClick(self);
end;

procedure TFrm_ImportarExcel.mem_config_importador_tabelaAfterEdit(
  DataSet: TDataSet);
begin
mAlteroudados:=true;
end;

procedure TFrm_ImportarExcel.mem_config_importador_comandoAfterEdit(
  DataSet: TDataSet);
begin
mAlteroudados:=true;
end;

procedure TFrm_ImportarExcel.gbTabelaExit(Sender: TObject);
begin
if mAlteroudados then
   begin
   if Application.MessageBox('o Registro atual nao esta salvo deseja grava-lo agora?','Confirmação!',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   sbSalvarPadraoClick(self);
   end;

end;

procedure TFrm_ImportarExcel.sbnLinkarParecidosClick(Sender: TObject);
var
x_stg: Integer;
query_tab: TQuery;
const
   mLinNome =2;

begin
if (mem_config_importador.IsEmpty) or (StringGrid1.RowCount<6) then
   exit;

mBloqueadoEvento :=true;

query_tab:=TQuery.Create(nil);
query_tab.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_tab.sql.add('select CINOMECAMPO from CONFIG_IMPORTADOR WHERE CINOMETABELA=:NOMETABELA '
                 +' and CINOMECAMPO like :NOMECAMPO ');



for x_stg:=0 to StringGrid1.ColCount-1 do
   begin
   query_tab.Close;
   query_tab.ParamByName('NOMETABELA').AsString :=cb_tabelas.Text;
   query_tab.ParamByName('NOMECAMPO').AsString  :='%'+fRetornarNome(StringGrid1.Cells[x_stg,mLinNome],valint(edt_ret_planilha.Text))+'%';
   query_tab.open;
   While not query_tab.Eof do
      begin
      if fRetornarNome(query_tab.fieldbyname('CINOMECAMPO').AsString,valint(edt_ret_tabela.Text))=fRetornarNome(StringGrid1.Cells[x_stg,mLinNome],valint(edt_ret_planilha.Text)) then
         begin
         if mem_config_importador.Locate('CINOMECAMPO',query_tab.fieldbyname('CINOMECAMPO').AsString,[]) then
            begin
            mem_config_importador.Edit;
            mem_config_importadorCIIMPORTAR.Value :='S';
            mem_config_importadorCIORDEM.AsInteger:=x_stg+1;
            mem_config_importador.Post;
            end;
         end;
      query_tab.Next;
      end;
   end;

query_tab.close;
freeandnil(query_tab);
mBloqueadoEvento :=false;
fDefinirResumo;

end;


function TFrm_ImportarExcel.fRetornarNome(pNomeEntra: String; pRetira: Integer): String;
begin

pNomeEntra:=UpperCase(pNomeEntra);
if pRetira>0 then
   pNomeEntra:=RightStr(pNomeEntra,length(pNomeEntra)-pretira);
result := pNomeEntra;

end;

procedure TFrm_ImportarExcel.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;

begin


if mem_resumo.Locate('chave_sel',acol,[]) then
   begin
   Texto := StringGrid1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := StringGrid1.Canvas.TextWidth(Texto);
  AlturaTexto := StringGrid1.Canvas.TextHeight(Texto);

//  StringGrid1.Canvas.Brush.Color:=clBlue;
  StringGrid1.Canvas.Brush.Color:=$0080FFFF;
// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  StringGrid1.Canvas.TextRect(Rect, X, Y, Texto);

    end;


end;


function TFrm_ImportarExcel.fDefinirResumo: Boolean;
var
mbookmarck: TBookmark;
x_col: Integer;
begin
if mBloqueadoEvento=true then
   begin
   result:=true;
   exit;
   end;

mbookmarck:=mem_config_importador.GetBookmark;

mem_config_importador.DisableControls;
mem_resumo.EmptyTable;
mem_config_importador.first;

for x_col:=0 to StringGrid1.ColCount-1 do
   begin
   StringGrid1.Cells[x_col,01]:='';
   end;
While not mem_config_importador.eof do
   begin
   if (mem_config_importador.FieldByName('CIIMPORTAR').AsString='S') and (trim(mem_config_importador.fieldbyname('CIVALDIG').AsString)='') then
      begin
      if trim(StringGrid1.Cells[mem_config_importador.fieldbyname('CIORDEM').AsInteger-1,01])='' then
         StringGrid1.Cells[mem_config_importador.fieldbyname('CIORDEM').AsInteger-1,01]:=mem_config_importador.fieldbyname('CINOMECAMPO').AsString
      else
         StringGrid1.Cells[mem_config_importador.fieldbyname('CIORDEM').AsInteger-1,01]:=StringGrid1.Cells[mem_config_importador.fieldbyname('CIORDEM').AsInteger-1,01]
                                                                                       +'/'+mem_config_importador.fieldbyname('CINOMECAMPO').AsString;
      if not mem_resumo.Locate('chave_sel',mem_config_importador.fieldbyname('CIORDEM').AsInteger-1,[]) then
         begin
         mem_resumo.Append;
         mem_resumochave_sel.Value :=mem_config_importador.fieldbyname('CIORDEM').AsInteger-1;
         mem_resumo.post;
         end;
      end;
   mem_config_importador.Next;
   end;
mem_config_importador.GotoBookmark(mbookmarck);
mem_config_importador.EnableControls;
StringGrid1.Refresh;
result:=true;
end;


function tFrm_ImportarExcel.LerCSV_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
var
  x_qtdcol: Integer;
  x_qtdlin: integer;
  mPlanilha: TStringList;
  xcol: Integer;
  xlin: integer;
begin
result:=true;
  mPlanilha:=TStringList.Create;
  mPlanilha.LoadFromFile(AXLSFile);
  x_qtdcol:=fQtd_PV(mPlanilha[1]);
  x_qtdlin:=mPlanilha.Count;


   for xcol:=0 to x_qtdcol do
      AGrid.Cells[xcol,0]:=IntTostr(xcol+1)+' celula '+DecToAlphal(xcol+1);

    AGrid.RowCount := x_qtdlin+2;

    AGrid.ColCount := x_qtdcol;

   for xlin:=0 to x_qtdlin-1 do
      begin
      gauge1.progress:=xlin*100 div x_qtdlin;
      for xcol:=0 to x_qtdcol do
         AGrid.Cells[xcol,xlin+2]:=fBuscarValor_Del_PV(xcol+1,mPlanilha[xlin]);
      end;
end;





function tFrm_ImportarExcel.LerXls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r,mqtdcol: Integer;
begin

  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(AXLSFile);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    try
    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    except
      if not VarIsEmpty(XLApp) then
         begin
      // XLApp.DisplayAlerts := False;
         XLApp.Quit;
         XLAPP := Unassigned;
         Sheet := Unassigned;
         end;
       result:=false;
       exit;
       end;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row+1;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;


    // Set Stringgrid's row &col dimensions.

    if y<8 then
       y:=8;
    for mqtdcol:=0 to y do
       AGrid.Cells[mqtdcol,0]:=IntTostr(mqtdcol+1)+' celula '+DecToAlphal(mqtdcol+1);

    AGrid.RowCount := x;

    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //  Define the loop for filling in the TStringGrid
//    Gauge1.progress:= x;
    k := 1;
    repeat
      for r := 1 to y do
        begin
        try

          AGrid.Cells[(r -1), (k+1)] := RangeMatrix[K, R];
//          AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
        except
          end;
        end;
      Gauge1.Progress:=k*100 div x;
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;
AGrid.FixedRows:=3;
end;


procedure TFrm_ImportarExcel.mem_config_importadorAfterEdit(
  DataSet: TDataSet);
begin
    mant_importa:=mem_config_importadorCIIMPORTAR.AsString;

end;

procedure TFrm_ImportarExcel.mem_config_importadorAfterPost(
  DataSet: TDataSet);
begin
mAlteroudados:=true;
fDefinirResumo;

end;

procedure TFrm_ImportarExcel.cb_datapadraoExit(Sender: TObject);
begin
fDeletaPadroes(0,'_IMPORTAREXCEL','CB_DATAPADRAO');
fGravaPadroes(0,'CB_DATAPADRAO'   ,'itemindex',  '_IMPORTAREXCEL',inttostr(cb_datapadrao.itemindex));

end;

procedure TFrm_ImportarExcel.bbPesqCelulaClick(Sender: TObject);
begin
mem_config_importador.First;
mem_config_importador.Locate('CICELULA',edt_celula.Text,[loPartialKey,loCaseInsensitive]);

end;

end.
