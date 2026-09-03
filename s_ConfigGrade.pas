unit s_ConfigGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, RxMemDS, StdCtrls, ComCtrls, Mask, DBCtrls, Grids,
  DBGrids, Buttons, DBTables, WordXP, OleServer, RxDBComb;

type
  TFrm_ConfigGrade = class(TForm)
    panel_cab: TPanel;
    tb_dword01: TRxMemoryData;
    src_dword01: TDataSource;
    tb_dword01DW01_NOMREL: TStringField;
    tb_dword01DW01_NOMGRADE: TStringField;
    tb_dword01DW01_OBS: TMemoField;
    tb_dword01DW01_QTDCOL: TIntegerField;
    tb_dword01DW01_QTDLINCAB: TIntegerField;
    tb_dword01DW01_QTDLINROD: TIntegerField;
    PageControl1: TPageControl;
    tsConfiguracao: TTabSheet;
    tsLegenda: TTabSheet;
    tsLegContServ: TTabSheet;
    tb_dword01DW01_TAMANHO: TIntegerField;
    Panel_detalhe: TPanel;
    GroupBox2: TGroupBox;
    DBGrid_TabOP02_res: TDBGrid;
    tb_dword02_res: TRxMemoryData;
    src_dword02_res: TDataSource;
    tb_dword02_resITEM: TStringField;
    tb_dword02: TRxMemoryData;
    src_dword02: TDataSource;
    tb_dword02DW02_TAMANHO: TIntegerField;
    tb_dword02DW02_FORMATO: TStringField;
    GroupBox3: TGroupBox;
    DBGrid_dadoscol: TDBGrid;
    tb_dword02DW02_CORFUNDO: TStringField;
    tb_dword02DW02_CORFONTE: TStringField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ColorDialog1: TColorDialog;
    tb_dword01_grades: TRxMemoryData;
    src_dword01_grades: TDataSource;
    Panel2: TPanel;
    GroupBox5: TGroupBox;
    DBGrid_grades: TDBGrid;
    tb_dword01_gradesDW01G_NOMGRADE: TStringField;
    Panel3: TPanel;
    StaticText1: TStaticText;
    DBEdit_nomrel: TDBEdit;
    StaticText4: TStaticText;
    StaticText7: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBE_DW01_TAMANHO: TDBEdit;
    DBEdit_QTDCOL: TDBEdit;
    DBEdit_QTDLINCAB: TDBEdit;
    DBE_QTDLINROD: TDBEdit;
    DBMemo_OBS: TDBMemo;
    Panel5: TPanel;
    panel_rodape: TPanel;
    GroupBox1: TGroupBox;
    tb_dword02_resNOMGRADE: TStringField;
    tb_dword02DW02_NOMGRADE: TStringField;
    tb_dword02_temp: TRxMemoryData;
    tb_dword02_tempDW02_TAMANHO: TIntegerField;
    tb_dword02_tempDW02_FORMATO: TStringField;
    tb_dword02_tempDW02_CORFUNDO: TStringField;
    tb_dword02_tempDW02_CORFONTE: TStringField;
    tb_dword02_tempDW02_NOMGRADE: TStringField;
    tb_dword02DW02_CAMPOOUTEXTO: TStringField;
    tb_dword02_tempDW02_CAMPOOUTEXTO: TStringField;
    tb_dword02DW02_COLUNA: TIntegerField;
    tb_dword02_tempDW02_COLUNA: TIntegerField;
    tb_dword02DW02_POSICAO: TStringField;
    tb_dword02_tempDW02_POSICAO: TStringField;
    tb_dword02DW02_MESCLAR_FIN: TIntegerField;
    tb_dword02_tempDW02_MESCLAR_FIN: TIntegerField;
    PaintBox1: TPaintBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tb_dword02tamcalc: TIntegerField;
    tb_dword02DW02_TAMANHO_DIG: TIntegerField;
    tb_dword02_tempDW02_TAMANHO_DIG: TIntegerField;
    Panel4: TPanel;
    bbgrade_incluir: TBitBtn;
    bbgrade_alterar: TBitBtn;
    bbgrade_excluir: TBitBtn;
    bbgrade_gravar: TBitBtn;
    bbgrade_cancelar: TBitBtn;
    DBNavigator_tabop01: TDBNavigator;
    bbSairSemGravar: TBitBtn;
    tb_dword02DW02_TIPOCAMPO: TStringField;
    tb_dword02DW02_ALINHAMENTO: TStringField;
    tb_dword02DW02_DATATYPE: TStringField;
    tb_dword02_tempDW02_TIPOCAMPO: TStringField;
    tb_dword02_tempDW02_ALINHAMENTO: TStringField;
    tb_dword02_tempDW02_DATATYPE: TStringField;
    bbgrade_sair: TBitBtn;
    GroupBox4: TGroupBox;
    bbop_esp_adq: TBitBtn;
    opd1: TOpenDialog;
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    bbop_esp_visedit: TBitBtn;
    richEdit_leg_ContPServ: TRichEdit;
    tb_dword02DW02_FONTE_TAMANHO: TIntegerField;
    tb_dword02_tempDW02_FONTE_TAMANHO: TIntegerField;
    cb_original: TCheckBox;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    StaticText8: TStaticText;
    RxDBComboBox1: TRxDBComboBox;
    tb_dword01DW01_TABELA: TIntegerField;
    BitBtn8: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid_dadoscolDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bbSairSemGravarClick(Sender: TObject);
    procedure tb_dword01AfterInsert(DataSet: TDataSet);
    procedure tb_dword01BeforeEdit(DataSet: TDataSet);
    procedure DBEdit_nomrelExit(Sender: TObject);
    procedure tb_dword01AfterEdit(DataSet: TDataSet);
    procedure tb_dword01BeforeCancel(DataSet: TDataSet);
    procedure tb_dword01BeforeDelete(DataSet: TDataSet);
    procedure tb_dword01FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tb_dword02_resFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tb_dword02FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bbgrade_incluirClick(Sender: TObject);
    procedure bbgrade_alterarClick(Sender: TObject);
    procedure bbgrade_excluirClick(Sender: TObject);
    procedure bbgrade_gravarClick(Sender: TObject);
    procedure DBEdit_QTDCOLExit(Sender: TObject);
    procedure DBEdit_QTDLINCABExit(Sender: TObject);
    procedure DBE_QTDLINRODExit(Sender: TObject);
    procedure tb_dword01AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure tb_dword01BeforePost(DataSet: TDataSet);
    procedure tb_dword02BeforePost(DataSet: TDataSet);
    procedure tb_dword02CalcFields(DataSet: TDataSet);
    procedure src_dword02_resDataChange(Sender: TObject; Field: TField);
    procedure tb_dword02AfterPost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure bbgrade_sairClick(Sender: TObject);
    procedure bbop_esp_adqClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bbop_esp_viseditClick(Sender: TObject);
    procedure DBGrid_dadoscolColExit(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure DBEdit_QTDCOLEnter(Sender: TObject);
    procedure DBEdit_QTDLINCABEnter(Sender: TObject);
    procedure DBE_QTDLINRODEnter(Sender: TObject);
    procedure tb_dword01BeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure src_dword01_gradesDataChange(Sender: TObject; Field: TField);
    procedure src_dword01DataChange(Sender: TObject; Field: TField);
    procedure tb_dword01AfterCancel(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    mCarregandoDados:Boolean;
    mOper: Integer;

    mGrade_Anterior: String;

    mAnt_QtdCol: Integer;
    mAnt_QtdLinCab: Integer;
    mAnt_QtdLinRod: Integer;


    mTamcol: Array of integer;
    mTamCol_Fixa: Integer;
    mTamQtdCol_Fixa: Integer;
    mCargaInicial: Boolean;

    procedure fAdicionarPickList;

    procedure fAbrirTabelasCabecalho;

    procedure fAbrirTabelasItensGrade;


    function fExistegrade(pNomeGrade: String): Boolean;


    function fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;

    function fAtualizarBotoes(pEditando: Boolean): Boolean;

    function fTestarDetalhes: Boolean;

    function fGerarPreview: Boolean;
    procedure ClearPaintBox(Sender:TObject);

    function fPintarFundo: Boolean;
    function fTamanhocolunas: Boolean;

    function fGravarGrade: Boolean;


  public
    { Public declarations }

    mNomeRel: String;


  end;

const
   mCol_TipoCampo=1;
   mCol_Alinha=1;
   mTipoDados : Array[0..1] of string = ('Texto','Dados');
   mAlinhamento: array [0..2] of string = ('Esquerda','Centro','Direita');
   mTipoCampo : Array[0..5] of string = ('String','Valor Decimais','Data','Hora','Data Hora','Imagem');
   mCol_CampoTexto=3;



   leg_campos_contLocacao: array[0..17,0..2] of string = (
                                              ('CSS_CODIND'                     ,'Inteiro'             ,'Código Indexador')
                                             ,('CSS_CODSERV'                    ,'Inteiro'             ,'Código do Serviço')
                                             ,('CSS_PDESCFIN'                  ,'Float'                ,'Percentual Desconto Financeiro')
                                             ,('CSS_DATCONT'                   ,'Data'                 ,'Data do Contrato')
                                             ,('CSS_DTLDESCFIN'                ,'Data'                 ,'Data Limite para Desconto financeiro')
                                             ,('PDNOME'                        ,'Varchar(60)'          ,'Nome do Serviço')
                                             ,('PDNOME2'                       ,'Varchar(60)'          ,'Nome Generico do Serviço')
                                             ,('CSS_PERCINDEX'                 ,'Float'                ,'Percentual do Indexador Mensal')
                                             ,('MNOME'                         ,'Varchar(60)'          ,'Nome do Indexador')
                                             ,('MSIMBOLO'                      ,'Varchar(10)'          ,'simbolo(sigla) do Indexador')
                                             ,('valor_cont'                    ,'Float'                ,'Valor do Contrato Mensal')
                                             ,('valor_cont_desc'               ,'Float'                ,'Valor do Desconto Financeiro')
                                             ,('valor_liquido'                 ,'Float'                ,'Valor Liquido do Contrato')
                                             ,('VALOR_INDEX'                   ,'Float'                ,'Valor do Indexador')
                                             ,('CSS_QTDSERV'                   ,'Inteiro'              ,'Quantidade de Servidores')
                                             ,('CSS_QTDEST'                    ,'Inteiro'              ,'Quantidade de Estaçoes')
                                             ,('CSS_VALORLIC'                  ,'Float'                ,'Valor da Licença')
                                             ,('CSS_QTDHOR_TREINO'             ,'Float'                ,'Quantidade de Horas Treiro')

                                             );



  leg_soma_contLocacao: array[0..06,0..2] of string = (
                                              ('QTD_CONT'                      ,'Inteiro'              ,'Quantidade de itens Contratado')
                                             ,('Total_valor_cont'              ,'Float'                ,'Total dos Valores do Contrato Mensal')
                                             ,('Total_valor_cont_desc'         ,'Float'                ,'Total dos Valores do Desconto Financeiro')
                                             ,('Total_valor_liquido'           ,'Float'                ,'Total dos Valores Liquido do Contrato')
                                             ,('TOTAL_QTDSERV'                 ,'Inteiro'              ,'Quantidade Total dos Servidores')
                                             ,('TOTAL_QTDEST'                  ,'Inteiro'              ,'Quantidade Total das Estaçoes')
                                             ,('TOTAL_VALORLIC'                ,'Float'                ,'Total dos Valores das Licenças')
                                             );


  leg_campos_produtos: array[0..11,0..2] of string = (
                                              ('CSM_ORDEM'                     ,'Inteiro'              ,'Ordem do Produto')
                                             ,('CSM_CODPRO'                    ,'Float'                ,'Código do Produto')
                                             ,('PDNOME'                        ,'Varchar(60)'          ,'Nome do Produto')
                                             ,('PDNOME2'                       ,'Varchar(60)'          ,'Nome Generico do Produto')
                                             ,('PDUND'                         ,'Varchar(03)'          ,'unidade do Produto')
                                             ,('CSM_QTD'                       ,'Float'                ,'Quantidade do Produto')
                                             ,('CSM_PU'                        ,'Preço Unitario'       ,'Preço Unitario do Produto')
                                             ,('TOTAL'                         ,'Float'                ,'Valor Total do Produto')
                                             ,('CSM_DESC_VALOR'                ,'Float'                ,'Desconto em Valor')
                                             ,('CSM_DESC_PERC01'               ,'Float'                ,'Desconto em percentual 01')
                                             ,('CSM_DESC_TOTAL'                ,'Varchar(10)'          ,'Valor total dos Descontos')
                                             ,('TOTAL_LIQUIDO'                 ,'Float'                ,'Total Liquido do Produto')
                                             );



 leg_soma_produtos: array[0..06,0..2] of string = (
                                              ('QTD_ITENS'                     ,'Inteiro'              ,'Quantidade de itens')
                                             ,('QTD_UND'                       ,'Float'                ,'Quantidade total das Unidades')
                                             ,('TOTAL_DESC_VALOR'              ,'Float'                ,'Total dos Descontos em Valores')
                                             ,('TOTAL_DESC_PERC'               ,'Float'                ,'Total dos Descontos em Percentuais')
                                             ,('TOTAL_DESC_GERAL'              ,'Float'                ,'Total Geral dos Descontos')
                                             ,('TOTAL_BRUTO_GERAL'             ,'Float'                ,'Total Geral Bruto')
                                             ,('TOTAL_LIQUIDO_GERAL'           ,'Float'                ,'Total Geral Liquido')
                                             );

var
  Frm_ConfigGrade: TFrm_ConfigGrade;

implementation

uses S_DM1, Func, lerarq, func_excecoes, S_Contrato, Math;

{$R *.dfm}

procedure TFrm_ConfigGrade.fAdicionarPickList;
begin

DBGrid_dadoscol.Columns[mCol_TipoCampo].PickList.Clear;
DBGrid_dadoscol.Columns[mCol_TipoCampo].PickList.Add('Texto');
DBGrid_dadoscol.Columns[mCol_TipoCampo].PickList.Add('Dados Tabela');

DBGrid_dadoscol.Columns[mCol_Alinha].PickList.Clear;
DBGrid_dadoscol.Columns[mCol_Alinha].PickList.Add('Esquerda');
DBGrid_dadoscol.Columns[mCol_Alinha].PickList.Add('Centro');
DBGrid_dadoscol.Columns[mCol_Alinha].PickList.Add('Direita');


end;


procedure TFrm_ConfigGrade.SpeedButton1Click(Sender: TObject);
begin
if ColorDialog1.Execute then
   begin
   if (not (tb_dword02.State in [dsedit,dsinsert])) and (not tb_dword02DW02_NOMGRADE.IsNull) then
      begin
      tb_dword02.Edit;
      tb_dword02DW02_CORFONTE.Value:=FloatTostr(ColorDialog1.Color);
      tb_dword02.Post;
      end
   else
      tb_dword02DW02_CORFONTE.Value:=FloatTostr(ColorDialog1.Color);
      
   end;
end;

procedure TFrm_ConfigGrade.SpeedButton2Click(Sender: TObject);
begin
if ColorDialog1.Execute then
   begin
   if (not (tb_dword02.State in [dsedit,dsinsert])) and (not tb_dword02DW02_NOMGRADE.IsNull) then
      begin
      tb_dword02.Edit;
      tb_dword02DW02_CORFUNDO.Value:=FloatTostr(ColorDialog1.Color);
      tb_dword02.Post;
      end
   else
      tb_dword02DW02_CORFUNDO.Value:=FloatTostr(ColorDialog1.Color);
   end;

end;

procedure TFrm_ConfigGrade.DBGrid_dadoscolDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if not tb_dword02DW02_CORFONTE.IsNull then
   begin
   DBGrid_dadoscol.Canvas.Font.Color:=strtoInt(tb_dword02DW02_CORFONTE.AsString);
   DBGrid_dadoscol.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if not tb_dword02DW02_CORFUNDO.IsNull then
   begin
   DBGrid_dadoscol.Canvas.Brush.Color:=strtoInt(tb_dword02DW02_CORFUNDO.AsString);
   DBGrid_dadoscol.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if tb_dword02DW02_FONTE_TAMANHO.Asinteger>0 then
   begin
   DBGrid_dadoscol.Canvas.Font.Height:=(tb_dword02DW02_FONTE_TAMANHO.AsInteger*-1);
   DBGrid_dadoscol.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;


procedure TFrm_ConfigGrade.fAbrirTabelasCabecalho;
var
query_dword01: TQuery;
query_dword01_res: TQuery;
begin

mCarregandoDados:=true;
tb_dword01_grades.EmptyTable;
tb_dword02_res.EmptyTable;
tb_dword01.EmptyTable;
tb_dword01_grades.Open;
tb_dword01.Open;

query_dword01:=TQuery.Create(nil);
query_dword01.DatabaseName:='SG_ASSOC';
query_dword01.close;
query_dword01.SQL.Clear;
query_dword01.SQL.add('Select DW01_CODEMP '
                     +',DW01_NOMREL  '
                     +',DW01_NOMGRADE '
                     +',DW01_OBS  '
                     +',DW01_QTDCOL '
                     +',DW01_QTDLINCAB '
                     +',DW01_QTDLINROD '
                     +',DW01_TAMANHO  '
                     +',DW01_ALINHAMENTO '
                     +',DW01_TABELA '
                     +' from CADDWORD_TAB01 '
                     +' where DW01_CODEMP=:CODEMP '
                     +' and DW01_NOMREL=:NOMREL '
                     +' order by DW01_NOMGRADE ');
query_dword01.ParamByName('CODEMP').AsInteger:=codemp;
query_dword01.ParamByName('NOMREL').AsString :=mNomeRel;
query_dword01.Open;
if not query_dword01.IsEmpty then
   begin
   query_dword01_res:=TQuery.Create(nil);
   query_dword01_res.DatabaseName:='SG_ASSOC';
   query_dword01_res.close;
   query_dword01_res.SQL.Clear;
   query_dword01_res.SQL.add('Select DW01_NOMGRADE,count(*) '
                        +' from CADDWORD_TAB01 '
                        +' where DW01_CODEMP=:CODEMP '
                        +' and DW01_NOMREL=:NOMREL '
                        +' group by DW01_NOMGRADE '
                        +' order by DW01_NOMGRADE ');
   query_dword01_res.ParamByName('CODEMP').AsInteger:=codemp;
   query_dword01_res.ParamByName('NOMREL').AsString :=mNomeRel;
   query_dword01_res.Open;

   query_dword01.First;

   While not query_dword01.Eof do
      begin
      if not (tb_dword01.State in [dsEdit,dsInsert]) then
         tb_dword01.Append;
      tb_dword01DW01_NOMREL.Value    := query_dword01.fieldbyname('DW01_NOMREL').AsString;
      tb_dword01DW01_NOMGRADE.Value  := query_dword01.fieldbyname('DW01_NOMGRADE').AsString;
      tb_dword01DW01_TABELA.Value    := query_dword01.fieldbyname('DW01_TABELA').AsInteger;
      tb_dword01DW01_OBS.Value       := query_dword01.fieldbyname('DW01_OBS').AsString;
      tb_dword01DW01_QTDCOL.Value    := query_dword01.fieldbyname('DW01_QTDCOL').AsInteger;
      tb_dword01DW01_QTDLINCAB.Value := query_dword01.fieldbyname('DW01_QTDLINCAB').AsInteger;
      tb_dword01DW01_QTDLINROD.Value := query_dword01.fieldbyname('DW01_QTDLINROD').AsInteger;
      tb_dword01DW01_TAMANHO.Value   := query_dword01.fieldbyname('DW01_TAMANHO').AsInteger;
      tb_dword01.Post;
      query_dword01.Next;
      end;


   While not query_dword01_res.Eof do
      begin
      tb_dword01_grades.Append;
      tb_dword01_gradesDW01G_NOMGRADE.Value    := query_dword01_res.fieldbyname('DW01_NOMGRADE').AsString;
      tb_dword01_grades.Post;
      query_dword01_res.Next;
      end;
   end;
FreeAndNil(query_dword01);
FreeAndNil(query_dword01_res);
fAbrirTabelasItensGrade;

mCarregandoDados:=false;
end;




procedure TFrm_ConfigGrade.FormShow(Sender: TObject);
begin
mCargaInicial:=true;

mTamCol_Fixa   :=0;
mTamQtdCol_Fixa:=0;
fAbrirTabelasCabecalho;
fAtualizarBotoes(false);
Tb_dword01.Filtered:=false;
tb_dword01.First;
While not tb_dword01.Eof do
   begin
   fTestarDetalhes;
   tb_dword01.Next;
   end;
Tb_dword01.Filtered:=true;
mCargaInicial:=false;

end;

procedure TFrm_ConfigGrade.bbSairSemGravarClick(Sender: TObject);
begin
close;

end;

procedure TFrm_ConfigGrade.tb_dword01AfterInsert(DataSet: TDataSet);
begin
tb_dword01DW01_NOMREL.Value:=mNomeRel;
tb_dword01DW01_NOMGRADE.Value:=' ';
if not mCargaInicial then
   tb_dword02_res.Refresh;

    mOper:=0;
    mGrade_Anterior:='';
fAtualizarBotoes(true);
    mAnt_QtdCol   :=0;
    mAnt_QtdLinCab:=0;
    mAnt_QtdLinRod:=0;
tb_dword01DW01_TAMANHO.Value:=800;
tb_dword01DW01_TABELA.Value :=1;

end;

procedure TFrm_ConfigGrade.tb_dword01BeforeEdit(DataSet: TDataSet);
begin
    mOper          :=1;
    mGrade_Anterior:=tb_dword01DW01_NOMGRADE.AsString;
end;

procedure TFrm_ConfigGrade.DBEdit_nomrelExit(Sender: TObject);
begin
if ((mOper=1) and (mGrade_Anterior<>tb_dword01DW01_NOMGRADE.AsString)) or (moper=0) then
   begin
   if fExistegrade(tb_dword01DW01_NOMGRADE.AsString) then
      begin
      MessageDlg('grade '+tb_dword01DW01_NOMGRADE.AsString+' ja existe!',mtWarning,[mbOk],0);
      DBEdit_nomrel.SetFocus;
      end;
   end;

end;
function TFrm_ConfigGrade.fExistegrade(pNomeGrade: String): Boolean;
var
mPosGrade_Res: TBookmark;
begin
mCarregandoDados:=true;
mPosGrade_Res:=Tb_dword01_grades.GetBookmark;
result:=false;
tb_dword01_grades.First;
While not tb_dword01_grades.eof do
   begin
   if tb_dword01_gradesDW01G_NOMGRADE.AsString=pNomeGrade then
      begin
      result:=true;
      break;
      end;
   tb_dword01_grades.next;
   end;
tb_dword01_grades.GotoBookmark(mPosGrade_Res);
mCarregandoDados:=false;
end;

function TFrm_ConfigGrade.fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;
begin
DBEdit_nomrel.Enabled   :=plibera;
DBE_DW01_TAMANHO.Enabled:=plibera;
DBEdit_QTDCOL.Enabled   :=plibera;
DBE_DW01_TAMANHO.Enabled:=plibera;
DBEdit_QTDLINCAB.Enabled:=plibera;
DBE_QTDLINROD.Enabled   :=plibera;
DBMemo_OBS.Enabled      :=plibera;

end;

function TFrm_ConfigGrade.fAtualizarBotoes(pEditando: Boolean): Boolean;
begin
bbgrade_incluir.Enabled    :=iif(pEditando=true,false,true);
bbgrade_alterar.Enabled    :=iif(pEditando=true,false,true);
bbgrade_excluir.Enabled    :=iif(pEditando=true,false,true);
DBNavigator_tabop01.Enabled:=iif(pEditando=true,false,true);
DBGrid_grades.Enabled      :=iif(pEditando=true,false,true);

bbgrade_gravar.Enabled     :=pEditando;
bbgrade_cancelar.Enabled   :=pEditando;
result:=true;
end;
procedure TFrm_ConfigGrade.tb_dword01AfterEdit(DataSet: TDataSet);
begin
fAtualizarBotoes(true);
    mAnt_QtdCol   :=tb_dword01DW01_QTDCOL.AsInteger;
    mAnt_QtdLinCab:=tb_dword01DW01_QTDLINCAB.AsInteger;
    mAnt_QtdLinRod:=tb_dword01DW01_QTDLINROD.AsInteger;

end;

procedure TFrm_ConfigGrade.tb_dword01BeforeCancel(DataSet: TDataSet);
begin
fAtualizarBotoes(false);

end;

procedure TFrm_ConfigGrade.tb_dword01BeforeDelete(DataSet: TDataSet);
begin
fAtualizarBotoes(false);

end;


procedure TFrm_ConfigGrade.tb_dword01FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   if ( tb_dword01DW01_NOMGRADE.AsString=tb_dword01_gradesDW01G_NOMGRADE.AsString) then
      Accept:=true
   else
      Accept:=false;
end;

procedure TFrm_ConfigGrade.tb_dword02_resFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   if ( tb_dword02_resNOMGRADE.AsString=tb_dword01DW01_NOMGRADE.AsString) then
      Accept:=true
   else
      Accept:=false;

end;

procedure TFrm_ConfigGrade.tb_dword02FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   if ( tb_dword02DW02_NOMGRADE.AsString=tb_dword02_resNOMGRADE.AsString) and
      ( tb_dword02DW02_POSICAO.AsString=tb_dword02_resITEM.AsString) then
      Accept:=true
   else
      Accept:=false;

end;

procedure TFrm_ConfigGrade.bbgrade_incluirClick(Sender: TObject);
begin
tb_dword01.Append;

DBEdit_nomrel.SetFocus;
end;
                        
procedure TFrm_ConfigGrade.bbgrade_alterarClick(Sender: TObject);
begin
tb_dword01.Edit;
DBE_DW01_TAMANHO.SetFocus;
end;

procedure TFrm_ConfigGrade.bbgrade_excluirClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Quer Realmente Excluir a Grade '+tb_dword01DW01_NOMGRADE.asstring+'?'),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

tb_dword01.Delete;
end;

procedure TFrm_ConfigGrade.bbgrade_gravarClick(Sender: TObject);
begin
tb_dword01.Post;
end;

function TFrm_ConfigGrade.fTestarDetalhes: Boolean;
var
x_rec: Integer;
x_item: Integer;
x_col: Integer;
begin
//ShowMessage('Ao Entrar: '+IntTostr( tb_dword02.RecordCount));


if not (tb_dword01.state in [dsInsert]) then
   begin
   if (tb_dword01DW01_QTDCOL.AsInteger>0) and (tb_dword01DW01_QTDLINCAB.AsInteger>0)
      and (tb_dword01DW01_QTDLINROD.AsInteger>0) and
      ( (mAnt_QtdCol<>tb_dword01DW01_QTDCOL.AsInteger) or
      (mAnt_QtdLinCab<>tb_dword01DW01_QTDLINCAB.AsInteger) or
      (mAnt_QtdLinRod<>tb_dword01DW01_QTDLINROD.AsInteger)  ) and (tb_dword02.Active=true) then
      begin
      mCarregandoDados:=true;
      tb_dword02.Filtered:=false;
      tb_dword02_res.Filtered:=false;


//   mTamCol_Fixa:=0;
//   mTamQtdCol_Fixa:=0;
      tb_dword02_temp.EmptyTable;
      tb_dword02_temp.Close;
      tb_dword02_temp.Open;

       for x_rec:=1 to tb_dword01DW01_QTDLINCAB.AsInteger do
          begin
          for x_col:=1 to tb_dword01DW01_QTDCOL.AsInteger do
             begin
             tb_dword02_temp.Append;
             tb_dword02.First;
             if tb_dword02.Locate('DW02_NOMGRADE;DW02_POSICAO;DW02_COLUNA',VarArrayOf([tb_dword01DW01_NOMGRADE.AsString,'CAB'+FormatFloat('00',x_rec),x_col]),[]) then
                begin
                tb_dword02_tempDW02_POSICAO.Value     :=tb_dword02DW02_POSICAO.AsString;
                tb_dword02_tempDW02_COLUNA.Value      :=tb_dword02DW02_COLUNA.AsInteger;
                tb_dword02_tempDW02_TIPOCAMPO.Value   :=tb_dword02DW02_TIPOCAMPO.AsString;
                tb_dword02_tempDW02_CAMPOOUTEXTO.Value:=tb_dword02DW02_CAMPOOUTEXTO.AsString;
                tb_dword02_tempDW02_TAMANHO.Value     :=tb_dword02DW02_TAMANHO.AsInteger;
                tb_dword02_TempDW02_TAMANHO_DIG.Value :=tb_dword02DW02_TAMANHO_DIG.AsInteger;

                tb_dword02_tempDW02_ALINHAMENTO.Value :=tb_dword02DW02_ALINHAMENTO.AsString;
                tb_dword02_tempDW02_FORMATO.Value     :=tb_dword02DW02_FORMATO.AsString;
                tb_dword02_tempDW02_DATATYPE.Value    :=tb_dword02DW02_DATATYPE.AsString;
                tb_dword02_tempDW02_MESCLAR_FIN.Value :=tb_dword02DW02_MESCLAR_FIN.AsInteger;
                tb_dword02_tempDW02_CORFUNDO.Value    :=tb_dword02DW02_CORFUNDO.AsString;
                tb_dword02_tempDW02_CORFONTE.Value    :=tb_dword02DW02_CORFONTE.AsString;
                tb_dword02_tempDW02_NOMGRADE.Value       :=tb_dword02DW02_NOMGRADE.AsString;
                tb_dword02_tempDW02_FONTE_TAMANHO.Value  :=tb_dword02DW02_FONTE_TAMANHO.AsInteger;
                end
             else
                begin
                tb_dword02_tempDW02_POSICAO.Value     :='CAB'+FormatFloat('00',x_rec);
                tb_dword02_tempDW02_TIPOCAMPO.Value   :='';
                tb_dword02_tempDW02_COLUNA.Value      :=x_col;
                tb_dword02_tempDW02_CAMPOOUTEXTO.Value:='texto';
                tb_dword02_tempDW02_TAMANHO.Value     :=0;
                tb_dword02_TempDW02_TAMANHO_DIG.Value :=0;
                tb_dword02_tempDW02_ALINHAMENTO.Value :='';
                tb_dword02_tempDW02_FORMATO.Value     :='';
                tb_dword02_tempDW02_DATATYPE.Value    :='';
                tb_dword02_tempDW02_MESCLAR_FIN.Value :=0;
                tb_dword02_tempDW02_CORFUNDO.Value    :='';
                tb_dword02_tempDW02_CORFONTE.Value    :='';
                tb_dword02_tempDW02_NOMGRADE.Value    :=tb_dword01DW01_NOMGRADE.AsString;
                tb_dword02_tempDW02_FONTE_TAMANHO.Value:=0;

                end;
             tb_dword02_temp.Post;
             end;
          end;

    // DETALHES
       x_rec:=1;
       for x_col:=1 to tb_dword01DW01_QTDCOL.AsInteger do
          begin
          tb_dword02_temp.Append;
          tb_dword02.First;
          if tb_dword02.Locate('DW02_NOMGRADE;DW02_POSICAO;DW02_COLUNA',VarArrayOf([tb_dword01DW01_NOMGRADE.AsString,'DET'+FormatFloat('00',x_rec),x_col]),[]) then
             begin
             tb_dword02_tempDW02_POSICAO.Value     :=tb_dword02DW02_POSICAO.AsString;
             tb_dword02_tempDW02_COLUNA.Value      :=tb_dword02DW02_COLUNA.AsInteger;
             tb_dword02_tempDW02_TIPOCAMPO.Value   :=tb_dword02DW02_TIPOCAMPO.AsString;
             tb_dword02_tempDW02_CAMPOOUTEXTO.Value:=tb_dword02DW02_CAMPOOUTEXTO.AsString;
             tb_dword02_tempDW02_TAMANHO.Value     :=tb_dword02DW02_TAMANHO.AsInteger;
             tb_dword02_tempDW02_TAMANHO_DIG.Value :=tb_dword02DW02_TAMANHO_DIG.AsInteger;
             tb_dword02_tempDW02_ALINHAMENTO.Value :=tb_dword02DW02_ALINHAMENTO.AsString;
             tb_dword02_tempDW02_FORMATO.Value     :=tb_dword02DW02_FORMATO.AsString;
             tb_dword02_tempDW02_DATATYPE.Value    :=tb_dword02DW02_DATATYPE.AsString;
             tb_dword02_tempDW02_CORFUNDO.Value    :=tb_dword02DW02_CORFUNDO.AsString;
             tb_dword02_tempDW02_CORFONTE.Value    :=tb_dword02DW02_CORFONTE.AsString;
             tb_dword02_tempDW02_NOMGRADE.Value    :=tb_dword02DW02_NOMGRADE.AsString;
             tb_dword02_tempDW02_MESCLAR_FIN.Value :=tb_dword02DW02_MESCLAR_FIN.AsInteger;
             tb_dword02_tempDW02_FONTE_TAMANHO.Value  :=tb_dword02DW02_FONTE_TAMANHO.AsInteger;


             end
          else
             begin
             tb_dword02_tempDW02_POSICAO.Value     :='DET'+FormatFloat('00',x_rec);
             tb_dword02_tempDW02_TIPOCAMPO.Value   :='';
             tb_dword02_tempDW02_COLUNA.Value      :=x_col;
             tb_dword02_tempDW02_CAMPOOUTEXTO.Value:='texto';
             tb_dword02_tempDW02_TAMANHO.Value     :=0;
             tb_dword02_tempDW02_TAMANHO_DIG.Value :=0;
             tb_dword02_tempDW02_ALINHAMENTO.Value :='';
             tb_dword02_tempDW02_FORMATO.Value     :='';
             tb_dword02_tempDW02_DATATYPE.Value    :='';
             tb_dword02_tempDW02_CORFUNDO.Value    :='';
             tb_dword02_tempDW02_CORFONTE.Value    :='';
             tb_dword02_tempDW02_NOMGRADE.Value    :=tb_dword01DW01_NOMGRADE.AsString;
             tb_dword02_tempDW02_MESCLAR_FIN.Value :=0;
             tb_dword02_tempDW02_FONTE_TAMANHO.Value  :=0;

             end;
          tb_dword02_temp.Post;
          end;

    // termino DETALHES

    // rodape

       for x_rec:=1 to tb_dword01DW01_QTDLINROD.AsInteger do
          begin
          for x_col:=1 to tb_dword01DW01_QTDCOL.AsInteger do
             begin
             tb_dword02_temp.Append;
             tb_dword02.First;
             if tb_dword02.Locate('DW02_NOMGRADE;DW02_POSICAO;DW02_COLUNA',VarArrayOf([tb_dword01DW01_NOMGRADE.AsString,'ROD'+FormatFloat('00',x_rec),x_col]),[]) then
                begin
                tb_dword02_tempDW02_POSICAO.Value     :=tb_dword02DW02_POSICAO.AsString;
                tb_dword02_tempDW02_COLUNA.Value      :=tb_dword02DW02_COLUNA.AsInteger;
                tb_dword02_tempDW02_TIPOCAMPO.Value   :=tb_dword02DW02_TIPOCAMPO.AsString;
                tb_dword02_tempDW02_CAMPOOUTEXTO.Value:=tb_dword02DW02_CAMPOOUTEXTO.AsString;
                tb_dword02_tempDW02_TAMANHO.Value     :=tb_dword02DW02_TAMANHO.AsInteger;
                tb_dword02_TempDW02_TAMANHO.Value     :=tb_dword02DW02_TAMANHO_DIG.AsInteger;
                tb_dword02_tempDW02_ALINHAMENTO.Value :=tb_dword02DW02_ALINHAMENTO.AsString;
                tb_dword02_tempDW02_FORMATO.Value     :=tb_dword02DW02_FORMATO.AsString;
                tb_dword02_tempDW02_DATATYPE.Value    :=tb_dword02DW02_DATATYPE.AsString;
                tb_dword02_tempDW02_CORFUNDO.Value    :=tb_dword02DW02_CORFUNDO.AsString;
                tb_dword02_tempDW02_CORFONTE.Value    :=tb_dword02DW02_CORFONTE.AsString;
                tb_dword02_tempDW02_NOMGRADE.Value    :=tb_dword02DW02_NOMGRADE.AsString;
                tb_dword02_tempDW02_MESCLAR_FIN.Value :=tb_dword02DW02_MESCLAR_FIN.AsInteger;
                tb_dword02_tempDW02_FONTE_TAMANHO.Value  :=tb_dword02DW02_FONTE_TAMANHO.AsInteger;

                end
             else
                begin
                tb_dword02_tempDW02_POSICAO.Value     :='ROD'+FormatFloat('00',x_rec);
                tb_dword02_tempDW02_TIPOCAMPO.Value   :='';
                tb_dword02_tempDW02_COLUNA.Value      :=x_col;
                tb_dword02_tempDW02_CAMPOOUTEXTO.Value:='texto';
                tb_dword02_tempDW02_TAMANHO.Value     :=0;
                tb_dword02_TempDW02_TAMANHO_DIG.Value :=0;
                tb_dword02_tempDW02_ALINHAMENTO.Value :='';
                tb_dword02_tempDW02_FORMATO.Value     :='';
                tb_dword02_tempDW02_DATATYPE.Value    :='';
                tb_dword02_tempDW02_CORFUNDO.Value    :='';
                tb_dword02_tempDW02_CORFONTE.Value    :='';
                tb_dword02_tempDW02_NOMGRADE.Value    :=tb_dword01DW01_NOMGRADE.AsString;;
                tb_dword02_tempDW02_MESCLAR_FIN.Value :=0;
                tb_dword02_tempDW02_FONTE_TAMANHO.Value:=0;


                end;
             tb_dword02_temp.Post;
             end;
          end;

    // termino rodape





       tb_dword02.First;
       While not tb_dword02.Eof do
          begin
          if (tb_dword01DW01_NOMGRADE.AsString=tb_dword02DW02_NOMGRADE.AsString) or (trim(tb_dword02DW02_NOMGRADE.AsString)='') then
             tb_dword02.Delete
          else
             tb_dword02.Next;
          end;
       tb_dword02_temp.First;
//       tb_dword02_res.EmptyTable;

       tb_dword02_res.First;
       While not tb_dword02_res.Eof do
          begin
          if (tb_dword01DW01_NOMGRADE.AsString=tb_dword02_resNOMGRADE.AsString) or (trim(tb_dword02_resNOMGRADE.AsString)='') then
             tb_dword02_res.Delete
          else
             tb_dword02_res.Next;
          end;

       While not tb_dword02_temp.Eof do
          begin
          tb_dword02.append;
          tb_dword02DW02_POSICAO.Value     :=tb_dword02_TempDW02_POSICAO.AsString;
          tb_dword02DW02_COLUNA.Value      :=tb_dword02_TempDW02_COLUNA.AsInteger;
          tb_dword02DW02_TIPOCAMPO.Value   :=tb_dword02_TempDW02_TIPOCAMPO.AsString;
          tb_dword02DW02_CAMPOOUTEXTO.Value:=tb_dword02_TempDW02_CAMPOOUTEXTO.AsString;
          tb_dword02DW02_TAMANHO.Value     :=tb_dword02_TempDW02_TAMANHO.AsInteger;
          tb_dword02DW02_TAMANHO_DIG.Value :=tb_dword02_TempDW02_TAMANHO_DIG.AsInteger;
          tb_dword02DW02_ALINHAMENTO.Value :=tb_dword02_TempDW02_ALINHAMENTO.AsString;
          tb_dword02DW02_FORMATO.Value     :=tb_dword02_TempDW02_FORMATO.AsString;
          tb_dword02DW02_DATATYPE.Value    :=tb_dword02_TempDW02_DATATYPE.AsString;
          tb_dword02DW02_CORFUNDO.Value    :=tb_dword02_TempDW02_CORFUNDO.AsString;
          tb_dword02DW02_CORFONTE.Value    :=tb_dword02_TempDW02_CORFONTE.AsString;
          tb_dword02DW02_MESCLAR_FIN.Value :=tb_dword02_TempDW02_MESCLAR_FIN.AsInteger;
          tb_dword02DW02_FONTE_TAMANHO.Value:=tb_dword02_tempDW02_FONTE_TAMANHO.AsInteger;

          tb_dword02DW02_NOMGRADE.Value    :=tb_dword02_TempDW02_NOMGRADE.AsString;

            if not tb_dword02_res.Locate('NOMGRADE;ITEM',VarArrayOf([tb_dword02_TempDW02_NOMGRADE.AsString,tb_dword02_tempDW02_POSICAO.AsString]),[]) then
             begin
             tb_dword02_res.Append;
             tb_dword02_resITEM.Value    :=tb_dword02_tempDW02_POSICAO.AsString;
             tb_dword02_resNOMGRADE.Value:=tb_dword02_tempDW02_NOMGRADE.AsString;
             tb_dword02_res.Post;
             end;
          if Tb_dword02.State in [dsedit,dsinsert] then
             tb_dword02.Post;
          tb_dword02_temp.Next;
          end;
       if not tb_dword01_grades.Locate('DW01G_NOMGRADE',tb_dword01DW01_NOMGRADE.AsString,[]) then
          begin
          tb_dword01_grades.Append;
          tb_dword01_gradesDW01G_NOMGRADE.Value:=tb_dword01DW01_NOMGRADE.AsString;
          tb_dword01_grades.Post;
          end;

       mAnt_QtdCol   :=tb_dword01DW01_QTDCOL.AsInteger;
       mAnt_QtdLinCab:=tb_dword01DW01_QTDLINCAB.AsInteger;
       mAnt_QtdLinRod:=tb_dword01DW01_QTDLINROD.AsInteger;

       tb_dword02.Filtered:=true;
       tb_dword02_res.Filtered:=true;
       fTamanhocolunas;
       tb_dword01_grades.Locate('DW01G_NOMGRADE',tb_dword01DW01_NOMGRADE.AsString,[]);


       mCarregandoDados:=false;
       BitBtn1Click(self);


    //   tb_dword02_resFilterRecord(tb_dword02_res,TRUE);
       end;
    end;
//ShowMessage('Ao Sair: '+IntTostr( tb_dword02.RecordCount));

result:=true;
end;

function TFrm_ConfigGrade.fTamanhocolunas: Boolean;
var
x_col: Integer;
mChaveItem: String;
mfiltroAnt: Boolean;
begin


if (tb_dword01.Active) and (tb_dword02_res.active) and  (tb_dword01DW01_QTDCOL.AsInteger>0) then
   begin
   mfiltroAnt:=Tb_dWord02.filtered;
   Tb_dWord02.filtered:=true;

   setlength(mTamcol, tb_dword01DW01_QTDCOL.AsInteger);
   for x_col:=0 to tb_dword01DW01_QTDCOL.AsInteger-1 do
      begin
      mtamcol[x_col]:=0;
      end;
   if tb_dword01DW01_QTDLINCAB.AsInteger>0 then
      mChaveItem:='CAB01'
   else if tb_dword01DW01_QTDLINROD.AsInteger>0 then
      mChaveItem:='ROD01'
   else
      mChaveItem:='DET01';
//    mTamCol_Fixa   :=0;
//    mTamQtdCol_Fixa:=0;

   if tb_dword02_res.Locate('ITEM',mChaveItem,[]) then
      begin

      x_col:=0;
//      tb_dword02_resNOMGRADE.value;
//      tb_dword02_resITEM.value;

      Tb_Dword02.Refresh;

      tb_dword02.first;
      While not tb_dword02.Eof do
         begin
         if tb_dword02DW02_TAMANHO_DIG.AsInteger>0 then
            begin
//            mTamCol_Fixa:=mTamCol_Fixa+mtamcol[x_col];
//            mTamQtdCol_Fixa:=mTamCol_Fixa+1;

            mtamcol[x_col]:=tb_dword02DW02_TAMANHO_DIG.AsInteger;
            end;
         x_col:=x_col+1;
         tb_dword02.Next;
         end;
      end;
   Tb_dWord02.filtered:=mfiltroAnt;
   end;

end;


procedure TFrm_ConfigGrade.DBEdit_QTDCOLExit(Sender: TObject);
begin
fTestarDetalhes;

end;

procedure TFrm_ConfigGrade.DBEdit_QTDLINCABExit(Sender: TObject);
begin
fTestarDetalhes;

end;

procedure TFrm_ConfigGrade.DBE_QTDLINRODExit(Sender: TObject);
begin
fTestarDetalhes;

end;

procedure TFrm_ConfigGrade.tb_dword01AfterPost(DataSet: TDataSet);
begin
mCarregandoDados:=false;
fAtualizarBotoes(false);
if not mCargaInicial then
   begin
   if not tb_dword01_grades.Locate('DW01G_NOMGRADE',tb_dword01DW01_NOMGRADE.AsString,[]) then
      begin
      tb_dword01_grades.Append;
      tb_dword01_gradesDW01G_NOMGRADE.Value:=tb_dword01DW01_NOMGRADE.AsString;
      tb_dword01_grades.Post;
      end;
   tb_dword01.Filtered:=true;
   end;

end;

procedure TFrm_ConfigGrade.BitBtn1Click(Sender: TObject);

begin
if not mCarregandoDados then
   begin
   BitBtn2Click(self);
   verteclado_02(0);
   PaintBox1.Update;
   fGerarPreview;
   verteclado_02(0);
   PaintBox1.Update;
   end;

{
//PaintBox1.Canvas.RoundRect(40,40,100,100,30,30);
PaintBox1.Canvas.Rectangle(30,30,60,60);
//PaintBox1.Canvas.Rectangle(30,30,90,90);
PaintBox1.Canvas.TextOut(40,35,'Delphi');
verteclado_02(0);
fPintarFundo;
}
//PaintBox1.Update;
//verteclado(0);
//PaintBox1.Canvas.Brush.Color:=clred;
end;


function TFrm_ConfigGrade.fGerarPreview: Boolean;
var
mAltura: Integer;
mTop_ini: Integer;
mLeft_Ini: Integer;
mLeft_Ini_mesclar: Integer;
mCol_Mesclar: Integer;

mAlt_Ini: Integer;
x_col: Integer;
mTamAcum: Integer;


mPosicao: String;
mposdoc: TBookmark;
//mcordenadas: tStrings;
mTextosaida: String;

begin
if (mCarregandoDados) or (tb_dword02.IsEmpty) then
   begin
   result:=true;
   exit;
   end;
//PaintBox1.Invalidate; // limpar anteriore



{
//PaintBox1.Canvas.RoundRect(40,40,100,100,30,30);
PaintBox1.Canvas.Rectangle(30,30,60,60);
//PaintBox1.Canvas.Rectangle(30,30,90,90);
PaintBox1.Canvas.TextOut(40,35,'Delphi');
verteclado_02(0);
fPintarFundo;
}
                            
//mcordenadas:= TStringList.Create;
if not mCarregandoDados then
   begin

tb_dword02.Filtered:=false;
mposdoc:=tb_dword02.GetBookmark;

tb_dword02.First;
mLeft_Ini    :=10;
mTop_ini     :=1;
mTamAcum     :=10;
mAltura:=20;
mAlt_ini     :=mAltura;
mCol_Mesclar :=0;
mTextosaida:='';

While not (tb_dword02.Eof) do
   begin
   if (tb_dword02DW02_NOMGRADE.AsString<>tb_dword01DW01_NOMGRADE.AsString) then
       begin
       Tb_DWord02.Next;
       Continue;
       end;
   mPosicao:=tb_dword02DW02_POSICAO.AsString;
   mLeft_Ini_mesclar:=mLeft_Ini;
   While (not tb_dworD02.Eof)  do
      begin
     if (tb_dword02DW02_NOMGRADE.AsString<>tb_dword01DW01_NOMGRADE.AsString) then
         begin
         tb_dword02.Next;
         Continue;
         end;
      if (mPosicao<>tb_dword02DW02_POSICAO.AsString) then
         break;
      if (mCol_Mesclar=0) and (tb_dword02DW02_MESCLAR_FIN.AsInteger>0) then
         begin
         mLeft_Ini_mesclar:=mLeft_Ini;
         mCol_Mesclar:=tb_dword02DW02_MESCLAR_FIN.AsInteger;
         end;
      mTextosaida:=mTextosaida+' '+tb_dword02DW02_POSICAO.AsString+'/'+tb_dword02DW02_COLUNA.AsString;


//      if tb_dword02DW02_POSICAO.AsString='DET01' then
         begin
         if (mCol_Mesclar=0) or (tb_dword02DW02_COLUNA.AsInteger>=mCol_Mesclar) then
            begin
            PaintBox1.Canvas.Rectangle(mLeft_Ini_mesclar,mtop_ini,mTamAcum+ tb_dword02tamcalc.AsInteger,malt_ini);


            PaintBox1.Canvas.TextOut(mLeft_Ini_mesclar+5,mTop_ini+5,mTextosaida);
            mTextosaida:='';

            mCol_Mesclar:=0;
            end;
         end;
//      mcordenadas.ADD(tb_dword02DW02_POSICAO.AsString+' '+Inttostr(mleft_ini)+','+inttostr(mtop_ini)+','+Inttostr(mtamacum+tb_dword02tamcalc.asinteger)+','+Inttostr(malt_ini));

      mTamAcum:=mTamAcum+tb_dword02tamcalc.AsInteger;
      mLeft_Ini     :=mLeft_Ini+tb_dword02tamcalc.AsInteger;
      if mCol_Mesclar=0 then
         begin
         mLeft_Ini_mesclar:=mLeft_Ini;
         if tb_dword02DW02_MESCLAR_FIN.AsInteger>0 then
            mCol_Mesclar:=tb_dword02DW02_MESCLAR_FIN.AsInteger;
         end;
      tb_dword02.Next;
      end;
   mTop_ini:=mTop_Ini+mAltura;
   mAlt_ini:=mAlt_Ini+mAltura;
   mLeft_Ini    :=10;
   mTamAcum     :=10;
//mcordenadas.savetofile('c:\cordenadas.txt');
//freeandnil(mcordenadas);
   end;

   try
     tb_dword02.GotoBookmark(mposdoc);
   except
     end;


   end;
tb_dword02.Filtered:=true;

end;
function TFrm_ConfigGrade.fPintarFundo: Boolean;
begin
PaintBox1.Canvas.Brush.Color:=clred;

PaintBox1.Canvas.Brush.Color:=clred;

result:=true;
end;


procedure TFrm_ConfigGrade.BitBtn2Click(Sender: TObject);
begin
//ClearPaintBox(PaintBox1);
//fPintarFundo;
PaintBox1.Invalidate; // limpar anteriore

end;


procedure tFrm_ConfigGrade.ClearPaintBox(Sender:TObject);
begin

//    mGrade_Anterior: String;

  PaintBox1.Invalidate;
{
 with PaintBox1.Canvas do
  begin
   Brush.Style := bsClear
    else
    begin
      Brush.Color := clFuchsia;
      Brush.Style := bsSolid;

    end;
    FillRect(ClientRect);
  end;
}
end;
procedure TFrm_ConfigGrade.tb_dword01BeforePost(DataSet: TDataSet);
begin
if tb_dword01DW01_TAMANHO.AsInteger<10 then
   tb_dword01DW01_TAMANHO.AsInteger:=800;
if tb_dword01DW01_QTDCOL.AsInteger<1 then
   tb_dword01DW01_QTDCOL.AsInteger:=1;

if (tb_dword01DW01_QTDLINCAB.AsInteger<0) or (tb_dword01DW01_QTDLINCAB.AsInteger>10)  then
   tb_dword01DW01_QTDLINCAB.AsInteger:=1;

if (tb_dword01DW01_QTDLINROD.AsInteger<0) or (tb_dword01DW01_QTDLINROD.AsInteger>10)  then
   tb_dword01DW01_QTDLINROD.AsInteger:=1;
if trim(tb_dword01DW01_NOMGRADE.AsString)='' then
   begin
   MessageDlg('Nome da grade é obrigatorio!',mtWarning,[mbOk],0);
   DBEdit_nomrel.SetFocus;
   abort;
   end;

end;

procedure TFrm_ConfigGrade.tb_dword02BeforePost(DataSet: TDataSet);
var
mCampoIndex: Integer;
begin
IF DBGrid_dadoscol.Columns[4].Visible then
   begin
   if high(mTamcol)>=(tb_dword02DW02_COLUNA.AsInteger-1) then
      mTamcol[tb_dword02DW02_COLUNA.AsInteger-1]:=tb_dword02DW02_TAMANHO_DIG.AsInteger;
   end;
DBGrid_dadoscolColExit(self);


mCampoIndex:=dbGrid_dadoscol.Columns[mcol_campotexto].PickList.IndexOf(tb_dword02DW02_CAMPOOUTEXTO.AsString);

if (copy(tb_dword02_resITEM.Value,1,3)='CAB') or (copy(tb_dword02_resITEM.Value,1,3)='ROD') then
   begin
   if mCampoIndex>-1 then
      begin
      if tb_dword01DW01_TABELA.AsInteger=2 then
         begin
         if Uppercase(leg_soma_produtos[mCampoIndex,1])='INTEIRO' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_soma_produtos[mCampoIndex,1])='FLOAT' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_soma_produtos[mCampoIndex,1])='DATA' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[2]
          else if copy( Uppercase(leg_soma_produtos[mCampoIndex,1]),1,7) ='VARCHAR' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[0];
          end
       else
         begin
         if Uppercase(leg_soma_contLocacao[mCampoIndex,1])='INTEIRO' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_soma_contLocacao[mCampoIndex,1])='FLOAT' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_soma_contLocacao[mCampoIndex,1])='DATA' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[2]
          else if copy( Uppercase(leg_soma_contLocacao[mCampoIndex,1]),1,7) ='VARCHAR' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[0];
          end;


      end;

   end
else if (copy(tb_dword02_resITEM.Value,1,3)='DET')  then
   begin
   if mCampoIndex>-1 then
      begin
      if tb_dword01DW01_TABELA.AsInteger=2 then
         begin
         if Uppercase(leg_campos_produtos[mCampoIndex,1])='INTEIRO' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_campos_produtos[mCampoIndex,1])='FLOAT' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_campos_produtos[mCampoIndex,1])='DATA' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[2]
          else if copy( Uppercase(leg_campos_produtos[mCampoIndex,1]),1,7) ='VARCHAR' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[0];
         end
      else
         begin
         if Uppercase(leg_campos_contLocacao[mCampoIndex,1])='INTEIRO' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_campos_contLocacao[mCampoIndex,1])='FLOAT' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[1]
          else if Uppercase(leg_campos_contLocacao[mCampoIndex,1])='DATA' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[2]
          else if copy( Uppercase(leg_campos_contLocacao[mCampoIndex,1]),1,7) ='VARCHAR' then
            tb_dword02DW02_DATATYPE.Value:=mTipoCampo[0];
         end;

      end;
   end;

end;

procedure TFrm_ConfigGrade.tb_dword02CalcFields(DataSet: TDataSet);
var
x_col: Integer;
begin
if not mCarregandoDados then
   begin
if (high(mtamcol)>=tb_dword02DW02_COLUNA.AsInteger-1)  and (tb_dword02DW02_COLUNA.AsInteger>0) then
   begin
   if mTamcol[tb_dword02DW02_COLUNA.AsInteger-1]>0 then
      tb_dword02tamcalc.AsInteger:=mTamcol[tb_dword02DW02_COLUNA.AsInteger-1]
   else
      begin
      try
          mTamCol_Fixa:=0;
          mTamQtdCol_Fixa:=0;

         for x_col:=0 to high(mTamcol)-1 do
            begin
            if mTamcol[x_col]>0 then
               begin
               mTamCol_Fixa:=mTamCol_Fixa+mtamcol[x_col];
               mTamQtdCol_Fixa:=mTamQtdCol_Fixa+1;
               end;
            end;
         if ((tb_dword01DW01_TAMANHO.AsInteger-mTamCol_Fixa)>0)  and ((tb_dword01DW01_QTDCOL.AsInteger-mTamQtdCol_Fixa)>0) then
            tb_dword02tamcalc.AsInteger:=(tb_dword01DW01_TAMANHO.AsInteger-mTamCol_Fixa)
                         div (tb_dword01DW01_QTDCOL.AsInteger-mTamQtdCol_Fixa)
         else
            tb_dword02tamcalc.AsInteger:=0;

      except
         tb_dword02tamcalc.AsInteger:=0;
         end;
      end;
   end;
  end;
end;

procedure TFrm_ConfigGrade.src_dword02_resDataChange(Sender: TObject;
  Field: TField);
var
x_campos: Integer;
begin
if not mCarregandoDados then
   begin
if tb_dword02.Filtered=true then
   tb_dword02.First;
if (tb_dword01DW01_QTDLINCAB.AsInteger>0) then
   begin
   if tb_dword02_resITEM.AsString='CAB01' then
      DBGrid_dadoscol.Columns[04].Visible:=true
   else
      DBGrid_dadoscol.Columns[04].Visible:=false;
   end
else
   begin
   if tb_dword02_resITEM.AsString='DET01' then
      DBGrid_dadoscol.Columns[04].Visible:=true
   else
      DBGrid_dadoscol.Columns[04].Visible:=false;
   end;

if (copy(tb_dword02_resITEM.Value,1,3)='CAB') or (copy(tb_dword02_resITEM.Value,1,3)='ROD') then
   begin
   DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Clear;
   if tb_dword01DW01_TABELA.AsInteger=2 then
      begin
      for x_campos:=0 to high(leg_soma_produtos)  do
         begin
         DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Add(leg_soma_produtos[x_campos,0]);
         end;
      end
   else
      begin
      for x_campos:=0 to high(leg_soma_contLocacao) do
         begin
         DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Add(leg_soma_contlocacao[x_campos,0]);
         end;
      end;

   end
else if (copy(tb_dword02_resITEM.Value,1,3)='DET')  then
   begin
   DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Clear;
   if tb_dword01DW01_TABELA.AsInteger=2 then
      begin
      for x_campos:=0 to high(leg_campos_produtos) do
         begin
         DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Add(leg_campos_produtos[x_campos,0]);
         end;
      end
   else
      begin
      for x_campos:=0 to high(leg_campos_contLocacao) do
         begin
         DBGrid_dadoscol.Columns[mcol_campotexto].PickList.Add(leg_campos_contlocacao[x_campos,0]);
         end;
      end;

   end;
BitBtn1Click(self);
end;


end;

procedure TFrm_ConfigGrade.tb_dword02AfterPost(DataSet: TDataSet);
begin
BitBtn1Click(self);

end;

procedure TFrm_ConfigGrade.FormPaint(Sender: TObject);
begin
BitBtn1Click(self);
end;

procedure TFrm_ConfigGrade.bbgrade_sairClick(Sender: TObject);
begin
fGravarGrade;

close;

end;



procedure TFrm_ConfigGrade.fAbrirTabelasItensGrade;
var

query_dword02: TQuery;
query_dword02_res: TQuery;
begin
tb_dword02.EmptyTable;
tb_dword02_res.EmptyTable;

tb_dword02.Open;
tb_dword02_res.Open;

query_dword02:=TQuery.Create(nil);
query_dword02.DatabaseName:='SG_ASSOC';
query_dword02_res:=TQuery.Create(nil);
query_dword02_res.DatabaseName:='SG_ASSOC';



query_dword02.close;
query_dword02.SQL.Clear;
query_dword02.SQL.add('Select DW02_CODEMP '
                     +',DW02_NOMREL  '
                     +',DW02_NOMGRADE '
                     +',DW02_POSICAO '
                     +',DW02_COLUNA '
                     +',DW02_MESCLAR_FIN'
                     +',case when  DW02_TIPOCAMPO=0 then '+QuotedStr(mTipoDados[0])+' else '+QuotedStr(mTipoDados[1])+' end as DW02_TIPOCAMPO '
                     +',DW02_CAMPOOUTEXTO '
                     +',DW02_TAMANHO '
                     +',DW02_TAMANHO_DIG '
                     +',CASE WHEN DW02_ALINHAMENTO=2 THEN '+QuotedStr(mAlinhamento[2])+' when DW02_ALINHAMENTO=1 then '+QuotedStr(mAlinhamento[1])
                     +' else '+QuotedStr(mAlinhamento[0])+' end as DW02_ALINHAMENTO '
                     +',DW02_FORMATO '
                     +',case when DW02_DATATYPE=5 then '+QuotedStr(mTipoCampo[5])+' when DW02_DATATYPE=4 then '+QuotedStr(mTipoCampo[4])
                     +' when DW02_DATATYPE=3 then '+QuotedStr(mTipoCampo[3])
                     +' when DW02_DATATYPE=2 then '+QuotedStr(mTipoCampo[2])
                     +' when DW02_DATATYPE=1 then '+QuotedStr(mTipoCampo[1])
                     +' else  '+QuotedStr(mTipoCampo[0])+' end as DW02_DATATYPE '
                     +',DW02_CORFUNDO '
                     +',DW02_CORFONTE '
                     +',DW02_FONTE_TAMANHO '

                     +' from CADDWORD_TAB02,CADDWORD_TAB01 '
                     +' where DW02_CODEMP=:CODEMP '
                     +' and DW02_NOMREL=:NOMREL '
                     +' AND DW01_CODEMP=DW02_CODEMP '
                     +' AND DW01_NOMREL=DW02_NOMREL AND DW01_NOMGRADE=DW02_NOMGRADE '
                     +' order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
query_dword02.ParamByName('CODEMP').AsInteger:=codemp;
query_dword02.ParamByName('NOMREL').AsString :=mNomeRel;
query_dword02.Open;
if not query_dword02.IsEmpty then
   begin
   query_dword02_res.close;
   query_dword02_res.SQL.Clear;
   query_dword02_res.SQL.add('Select DW02_NOMGRADE '
                        +',DW02_POSICAO '
                        +', count(*) '
                        +' from CADDWORD_TAB02,CADDWORD_TAB01 '
                        +' where DW02_CODEMP=:CODEMP '
                        +' and DW02_NOMREL=:NOMREL '
                        +' AND DW01_CODEMP=DW02_CODEMP '
                        +' AND DW01_NOMREL=DW02_NOMREL AND DW01_NOMGRADE=DW02_NOMGRADE '
                        +' group by DW02_NOMGRADE,DW02_POSICAO '
                        +' order by DW02_NOMGRADE,DW02_POSICAO ');
   query_dword02_res.ParamByName('CODEMP').AsInteger:=codemp;
   query_dword02_res.ParamByName('NOMREL').AsString :=mNomeRel;
   query_dword02_res.Open;


   While not query_dword02.Eof do
      begin
      tb_dword02.Append;
      tb_dword02DW02_POSICAO.Value      := query_dword02.fieldbyName('DW02_POSICAO').AsString;
      tb_dword02DW02_TIPOCAMPO.Value    := query_dword02.fieldbyName('DW02_TIPOCAMPO').AsString;
      tb_dword02DW02_CAMPOOUTEXTO.Value := query_dword02.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
      tb_dword02DW02_TAMANHO.Value      := query_dword02.fieldbyName('DW02_TAMANHO').AsInteger;
      tb_dword02DW02_TAMANHO_DIG.Value  := query_dword02.fieldbyName('DW02_TAMANHO_DIG').AsInteger;
      tb_dword02DW02_ALINHAMENTO.Value  := query_dword02.fieldbyName('DW02_ALINHAMENTO').AsString;
      tb_dword02DW02_FORMATO.Value      := query_dword02.fieldbyName('DW02_FORMATO').AsString;
      tb_dword02DW02_DATATYPE.Value     := query_dword02.fieldbyName('DW02_DATATYPE').AsString;
      tb_dword02DW02_CORFUNDO.Value     := query_dword02.fieldbyName('DW02_CORFUNDO').AsString;
      tb_dword02DW02_CORFONTE.Value     := query_dword02.fieldbyName('DW02_CORFONTE').AsString;
      tb_dword02DW02_NOMGRADE.Value     := query_dword02.fieldbyName('DW02_NOMGRADE').AsString;
      tb_dword02DW02_COLUNA.Value       := query_dword02.fieldbyName('DW02_COLUNA').AsInteger;
      tb_dword02DW02_MESCLAR_FIN.Value  := query_dword02.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
      tb_dword02DW02_FONTE_TAMANHO.Value:= query_dword02.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;



      tb_dword02.Post;
      query_dword02.Next;
      end;

   While not query_dword02_res.Eof do
      begin
      tb_dword02_res.Append;
      tb_dword02_resITEM.Value      := query_dword02_res.fieldbyName('DW02_POSICAO').AsString;
      tb_dword02_resNOMGRADE.Value  := query_dword02_res.fieldbyName('DW02_NOMGRADE').AsString;
      tb_dword02_res.Post;
      query_dword02_res.Next;
      end;


   end;
FreeAndNil(query_dword02);
FreeAndNil(query_dword02_res);
end;

function TFrm_ConfigGrade.fGravarGrade: Boolean;
var
query_exe:TQuery;
mcondicao_old: string;
mChave_Old: Integer;
mTipoOper: Integer;
pRetorno: Integer;
mTamcol_Calc: Integer;
x_col: Integer;
begin
mCarregandoDados:=true;
//tb_dword02.Filtered:=false;
tb_dword02_res.Filtered:=false;


if tb_dword01.IsEmpty then
   mTipoOper:=9
else
   mTipoOper:=8;

mCondicao_old:=' where DW01_CODEMP='+IntTostr(codemp)
                  +' and DW01_NOMREL='+quotedstr(mNomeRel);


mChave_Old:=fGerarTabelas_Old(mTipoOper //status
                  ,0 //codigo novo valor chave
                  ,'DW01_CODNOV' //nome do campo do novo valor (chave)
                  ,'DW01_DATHOR' // nome do campo data e hora do evento
                  ,'DW01_CODUSR' // nome do campo do usuario
                  ,'DW01_STATUS' // nome do campo de status
                  ,'CADDWORD_TAB01' // nome da tabela
                  ,mCondicao_old);
mCondicao_old:=' where DW02_CODEMP='+IntTostr(codemp)
                  +' and DW02_NOMREL='+quotedstr(mNomeRel);

mChave_Old:=fGerarTabelas_Old(mTipoOper //status
                  ,mchave_old //codigo novo valor chave
                  ,'DW02_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADDWORD_TAB02' // nome da tabela
                  ,mCondicao_old);



query_exe:=TQuery.create(nil);
query_exe.DatabaseName:='SG_ASSOC';

query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADDWORD_TAB01 where DW01_CODEMP=:CODEMP '
                 +' and DW01_NOMREL=:NOMREL ');
query_exe.parambyName('CODEMP').asinteger:=codemp;
query_exe.parambyName('NOMREL').AsString:=mnomerel;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(query_exe,1222,'_configgrade','CADDWORD_TAB01');
   end;

query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                 +' and DW02_NOMREL=:NOMREL ');
query_exe.parambyName('CODEMP').asinteger:=codemp;
query_exe.parambyName('NOMREL').AsString:=mnomerel;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(query_exe,1235,'_configgrade','CADDWORD_TAB02');
   end;
tb_dword01.Filtered:=false;
tb_dword01.First;
tb_dword01_grades.First;


While not tb_dword01.Eof do
   begin

   fTamanhocolunas;
//   tb_dword01.Refresh;
   tb_dword02_res.Filtered:=true;
   tb_dword02_res.Refresh;


   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.Add('Insert into CADDWORD_TAB01 ('
                +'DW01_CODEMP '
                +',DW01_NOMREL '
                +',DW01_NOMGRADE '
                +',DW01_OBS '
                +',DW01_QTDCOL '
                +',DW01_ETAPA '
                +',DW01_QTDLINCAB '
                +',DW01_QTDLINROD '
                +',DW01_TAMCOLAUT0  '
                +',DW01_TABELA  '
                +',DW01_FORMAGRADE  '
                +',DW01_TAMANHO '
                +',DW01_ALINHAMENTO '
                +') values ('
                +':DW01_CODEMP '
                +',:DW01_NOMREL '
                +',:DW01_NOMGRADE '
                +',:DW01_OBS '
                +',:DW01_QTDCOL '
                +',:DW01_ETAPA '
                +',:DW01_QTDLINCAB '
                +',:DW01_QTDLINROD '
                +',:DW01_TAMCOLAUT0  '
                +',:DW01_TABELA  '
                +',:DW01_FORMAGRADE  '
                +',:DW01_TAMANHO '
                +',:DW01_ALINHAMENTO '
                +')');
   query_exe.ParamByName('DW01_CODEMP').Value     :=codemp;
   query_exe.ParamByName('DW01_NOMREL').value     :=mNomeRel;
   query_exe.ParamByName('DW01_NOMGRADE').Value   :=tb_dword01DW01_NOMGRADE.AsString;
   query_exe.ParamByName('DW01_OBS').Value        :=tb_dword01DW01_OBS.AsString;
   query_exe.ParamByName('DW01_QTDCOL').Value     :=tb_dword01DW01_QTDCOL.AsInteger;
   query_exe.ParamByName('DW01_ETAPA').Value      :=0;
   query_exe.ParamByName('DW01_QTDLINCAB').Value  :=tb_dword01DW01_QTDLINCAB.AsInteger;
   query_exe.ParamByName('DW01_QTDLINROD').Value  :=tb_dword01DW01_QTDLINROD.AsInteger;
   query_exe.ParamByName('DW01_TAMCOLAUT0').Value :=0;
   query_exe.ParamByName('DW01_TABELA').Value     :=tb_dword01DW01_TABELA.AsInteger;
   query_exe.ParamByName('DW01_FORMAGRADE').value :=0;
   query_exe.ParamByName('DW01_TAMANHO').Value    :=tb_dword01DW01_TAMANHO.AsInteger;
   query_exe.ParamByName('DW01_ALINHAMENTO').Value:=0;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(query_exe,1290,'_configgrade','CADDWORD_TAB01');
      end;


   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.Add('Insert into CADDWORD_TAB02 ('
                    +'DW02_CODEMP'
                    +',DW02_NOMREL'
                    +',DW02_NOMGRADE'
                    +',DW02_POSICAO '
                    +',DW02_COLUNA '
                    +',DW02_TIPOCAMPO '
                    +',DW02_CAMPOOUTEXTO '
                    +',DW02_TAMANHO '
                    +',DW02_TAMANHO_DIG '
                    +',DW02_ALINHAMENTO '
                    +',DW02_FORMATO '
                    +',DW02_DATATYPE '
                    +',DW02_FONTE_TAMANHO '
                    +',DW02_FUNDO '
                    +',DW02_MESCLAR_FIN  '
                    +',DW02_CORFUNDO '
                    +',DW02_CORFONTE '
                    +' ) values ('
                    +':DW02_CODEMP'
                    +',:DW02_NOMREL'
                    +',:DW02_NOMGRADE'
                    +',:DW02_POSICAO '
                    +',:DW02_COLUNA '
                    +',:DW02_TIPOCAMPO '
                    +',:DW02_CAMPOOUTEXTO '
                    +',:DW02_TAMANHO '
                    +',:DW02_TAMANHO_DIG '
                    +',:DW02_ALINHAMENTO '
                    +',:DW02_FORMATO '
                    +',:DW02_DATATYPE '
                    +',:DW02_FONTE_TAMANHO '
                    +',:DW02_FUNDO '
                    +',:DW02_MESCLAR_FIN  '
                    +',:DW02_CORFUNDO '
                    +',:DW02_CORFONTE '
                    +')');

   tb_dword02_res.Refresh;
   While not Tb_dWord02_Res.Eof do
      begin
      tb_dword02.Filtered:=true;
      tb_dword02.Refresh;

      tb_dword02.First;
      tb_dword02.Refresh;
      While not tb_dword02.Eof do
         begin
         query_exe.ParamByName('DW02_CODEMP').Value      :=codemp;
         query_exe.ParamByName('DW02_NOMREL').Value      :=mNomeRel;
         query_exe.ParamByName('DW02_NOMGRADE').Value    :=tb_dword02DW02_NOMGRADE.AsString;
         query_exe.ParamByName('DW02_POSICAO').Value     :=tb_dword02DW02_POSICAO.AsString;
         query_exe.ParamByName('DW02_COLUNA').Value      :=tb_dword02DW02_COLUNA.AsInteger;

      //   query_exe.ParamByName('DW02_TIPOCAMPO').value   :=tb_dword02DW02_TIPOCAMPO.AsInteger;
         if fPosdoArray(mTipoDados,tb_dword02DW02_TIPOCAMPO.AsString,pRetorno) then
            query_exe.ParamByName('DW02_TIPOCAMPO').value   := pRetorno
         else
            query_exe.ParamByName('DW02_TIPOCAMPO').value   := 0;

         query_exe.ParamByName('DW02_CAMPOOUTEXTO').Value:=tb_dword02DW02_CAMPOOUTEXTO.AsString;

   // inicio

      if mTamcol[tb_dword02DW02_COLUNA.AsInteger-1]>0 then
         mTamcol_Calc:=mTamcol[tb_dword02DW02_COLUNA.AsInteger-1]
      else
         begin
         try
             mTamCol_Fixa:=0;
             mTamQtdCol_Fixa:=0;

            for x_col:=0 to high(mTamcol)-1 do
               begin
               if mTamcol[x_col]>0 then
                  begin
                  mTamCol_Fixa:=mTamCol_Fixa+mtamcol[x_col];
                  mTamQtdCol_Fixa:=mTamQtdCol_Fixa+1;
                  end;
               end;
            if ((tb_dword01DW01_TAMANHO.AsInteger-mTamCol_Fixa)>0)  and ((tb_dword01DW01_QTDCOL.AsInteger-mTamQtdCol_Fixa)>0) then
               mTamcol_Calc:=(tb_dword01DW01_TAMANHO.AsInteger-mTamCol_Fixa)
                            div (tb_dword01DW01_QTDCOL.AsInteger-mTamQtdCol_Fixa)
            else
               mTamcol_Calc:=0;

         except
            mTamcol_Calc:=0;
            end;
         end;


   // termino



         query_exe.ParamByName('DW02_TAMANHO').Value     :=mTamcol_Calc;
         query_exe.ParamByName('DW02_TAMANHO_DIG').Value :=tb_dword02DW02_TAMANHO_DIG.AsInteger;

         if fPosdoArray(mAlinhamento,tb_dword02DW02_ALINHAMENTO.AsString,pRetorno) then
            query_exe.ParamByName('DW02_ALINHAMENTO').value   := pRetorno
         else
            query_exe.ParamByName('DW02_ALINHAMENTO').value   := 0;

         query_exe.ParamByName('DW02_FORMATO').Value     :=tb_dword02DW02_FORMATO.AsString;

         if fPosdoArray(mTipoCampo,tb_dword02DW02_DATATYPE.AsString,pRetorno) then
            query_exe.ParamByName('DW02_DATATYPE').value   := pRetorno
         else
            query_exe.ParamByName('DW02_DATATYPE').value   := 0;

         query_exe.ParamByName('DW02_FONTE_TAMANHO').Value :=tb_dword02DW02_FONTE_TAMANHO.AsInteger;

         query_exe.ParamByName('DW02_FUNDO').Value       :=0;
         query_exe.ParamByName('DW02_MESCLAR_FIN').Value :=tb_dword02DW02_MESCLAR_FIN.AsInteger;
         query_exe.ParamByName('DW02_CORFUNDO').Value    :=tb_dword02DW02_CORFUNDO.AsString;
         query_exe.ParamByName('DW02_CORFONTE').Value    :=tb_dword02DW02_CORFONTE.AsSTRING;
         try
            query_exe.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(query_exe,1364,'_configgrade','CADDWORD_TAB02');
            end;
         tb_dword02.Next;
         end;
      tb_dword02_Res.Next;
      end;
   tb_dword01.Next;
//   tb_dword01_grades.Next;
   end;
end;
procedure TFrm_ConfigGrade.bbop_esp_adqClick(Sender: TObject);
var
mNomeDoc_doc: OleVariant;
mNomeDoc_xml: OleVariant;
mTeste: OleVariant;
begin
bbop_esp_adq.Enabled:=false;
bbop_esp_visedit.Enabled:=false;
If Opd1.Execute then
   begin
   if (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOC') and
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOCX') then
      begin
      verteclado(0);
      MessageDlg('O Arquivo '+Opd1.FileName+' não é um arquivo do tipo DOC',mtWarning,[mbOk],0);
      bbop_esp_adq.Enabled:=true;
      bbop_esp_visedit.Enabled:=true;
      exit;
      end;

   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
//   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }
   mNomeDoc_doc:=opd1.filename;
   mNomeDoc_xml:=fretiraextensao(opd1.filename)+'.xml';

   WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   mTeste:=11;
   deletefile(mNomeDoc_xml);
//   mTeste:=wdFormatXML;
   WordDoc.SaveAs2000(mNomeDoc_xml,mteste,EmptyParam,EmptyParam,EmptyParam);

   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;

//,wdFormatXML


   if fGravarArquivoParticionadoBlob(mNomeDoc_xml,mNomeRel, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI',[],[]) then
      MessageDlg('Arquivo '+mNomeDoc_doc+' gravado!',mtInformation,[mbOk],0)
   else
      begin
      MessageDlg('Erro ao Gravar o Arquivo '+opd1.FileName,mtWarning,[mbOk],0);
      exit;
      end;
   deletefile(mNomeDoc_xml);
   end;
bbop_esp_adq.Enabled:=true;
bbop_esp_visedit.Enabled:=true;


end;

procedure TFrm_ConfigGrade.PageControl1Change(Sender: TObject);
begin
BitBtn1Click(self);

end;

procedure TFrm_ConfigGrade.bbop_esp_viseditClick(Sender: TObject);
var
mNomeArq: String;
mNomeDoc_doc: OleVariant;

begin
bbop_esp_adq.Enabled:=false;
bbop_esp_visedit.Enabled:=false;

if Frm_Contrato.fPreparaRelatorio(mNomeRel,126,1,mNomeArq,cb_original.Checked) then
   begin
   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }
   mNomeDoc_doc:=mNomeArq;
   try
      WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   except on e : exception do
      Messagedlg('Erro ao Abrir Documento '+e.message+#13+'. Feche e tente novamente!' ,mterror,[mbOk],0);
      end;
{
   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
|\}
   end;

bbop_esp_adq.Enabled:=true;
bbop_esp_visedit.Enabled:=true;

end;

procedure TFrm_ConfigGrade.DBGrid_dadoscolColExit(Sender: TObject);
begin

if tb_dword02.state in [dsEdit,dsInsert] then
   begin
   if DBGrid_dadoscol.SelectedField=tb_dword02DW02_CAMPOOUTEXTO then
      begin
      if dbGrid_dadoscol.Columns[mcol_campotexto].PickList.IndexOf(tb_dword02DW02_CAMPOOUTEXTO.AsString) = -1 then
         tb_dword02DW02_TIPOCAMPO.value:='Texto'
      else
         tb_dword02DW02_TIPOCAMPO.value:='Dados';
      end;
   end;   
end;

procedure TFrm_ConfigGrade.Panel3Exit(Sender: TObject);
begin
if tb_dword01.State in [dsEdit,dsInsert] then
   tb_dword01.Post;

fTestarDetalhes;

src_dword02_resDataChange(self,tb_dword02_resITEM);

fTamanhocolunas;


//tb_dword01.Filtered:=false;
//tb_dword01_grades.Filtered:=false;

end;


procedure TFrm_ConfigGrade.DBEdit_QTDCOLEnter(Sender: TObject);
begin
    mAnt_QtdCol   :=tb_dword01DW01_QTDCOL.AsInteger;

end;

procedure TFrm_ConfigGrade.DBEdit_QTDLINCABEnter(Sender: TObject);
begin
    mAnt_QtdLinCab:=tb_dword01DW01_QTDLINCAB.AsInteger;

end;

procedure TFrm_ConfigGrade.DBE_QTDLINRODEnter(Sender: TObject);
begin
    mAnt_QtdLinRod:=tb_dword01DW01_QTDLINROD.AsInteger;

end;

procedure TFrm_ConfigGrade.tb_dword01BeforeInsert(DataSet: TDataSet);
begin
//mCarregandoDados:=true;
if not mCargaInicial then
   tb_dword01.Filtered:=false;
end;

procedure TFrm_ConfigGrade.FormCreate(Sender: TObject);
begin
tb_dword01.Filtered:=true;
mCargaInicial:=false;
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_ConfigGrade.src_dword01_gradesDataChange(Sender: TObject;
  Field: TField);
begin
if not mCarregandoDados then
   begin
   if (tb_dword01.active) then
      begin
      tb_dword01.Refresh;
      fTamanhocolunas;
      end;
   end;
end;

procedure TFrm_ConfigGrade.src_dword01DataChange(Sender: TObject;
  Field: TField);
begin
if not mCarregandoDados then
   begin
   if (tb_dword02_res.active) then
      tb_dword02_res.Refresh;
   end;

end;

procedure TFrm_ConfigGrade.tb_dword01AfterCancel(DataSet: TDataSet);
begin
if not mCargaInicial then
   tb_dword01.Filtered:=true;
end;

procedure TFrm_ConfigGrade.BitBtn8Click(Sender: TObject);
begin
if not mCarregandoDados then
   begin
   BitBtn2Click(self);
   verteclado_02(0);
   PaintBox1.Update;
   fGerarPreview;
   verteclado_02(0);
   PaintBox1.Update;
   end;

end;

end.

