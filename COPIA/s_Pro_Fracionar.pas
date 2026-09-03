unit s_Pro_Fracionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient, Buttons,
  Gauges, DBTables;

type
  TFrm_Pro_Fracionar = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    edt_codpro: TEdit;
    edt_nompro: TEdit;
    Label3: TLabel;
    edt_marca: TEdit;
    Label4: TLabel;
    edt_und: TEdit;
    Label5: TLabel;
    edt_estoque: TEdit;
    Label6: TLabel;
    edt_multiplicar: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edt_undnova: TEdit;
    edt_novoestoque: TEdit;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    cds_tabelas: TClientDataSet;
    src_tabelas: TDataSource;
    DBGrid1: TDBGrid;
    cds_tabelastabela: TStringField;
    cds_tabelascampo: TStringField;
    cds_tabelastabela_descricao: TStringField;
    cds_tabelascampo_descricao: TStringField;
    bbFracionar: TBitBtn;
    bbSair: TBitBtn;
    cds_tabelascampo_qtd: TStringField;
    Gauge1: TGauge;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbFracionarClick(Sender: TObject);
    procedure edt_codproExit(Sender: TObject);
    procedure edt_multiplicarExit(Sender: TObject);
  private
    { Private declarations }
    procedure fIncluirProdutos(pTabela,pTabela_Descricao, pCampo,pCampo_Descricao,pCampo_Qtd: String);

    function fFracionar: Boolean;


  public
    { Public declarations }
  end;

var
  Frm_Pro_Fracionar: TFrm_Pro_Fracionar;

implementation

uses Func, S_DM1, func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_Pro_Fracionar.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
if (FormState<>[fsModal]) then
   Action := caFree;



end;

procedure TFrm_Pro_Fracionar.FormShow(Sender: TObject);
begin
cds_tabelas.Close;

cds_tabelas.CreateDataSet;
cds_tabelas.open;

fIncluirProdutos('CADAGRU_PRO','','AGP_CODPRO_NOV','','AGP_QTD_NOV');
fIncluirProdutos('CADAGRU_PRO','','AGP_CODPRO_ANT','','AGP_QTD_ANT');
fIncluirProdutos('CADAJU','Tabela de Ajuste de estoque','AJCODPRO','Codigo do produto Tabela de Ajuste de estoque','AJQTD');
fIncluirProdutos('CADBAL02','Tabela de Balanço 02 - Cabecalho','B2CODPRO','Código do Produto Tabela de Balanço 02 - Cabecalho','B2QTDEST');

fIncluirProdutos('CADCOMP','Tabela de Composição de produtos','CPCODMAT','Código da matéria prima a ser utilizada Tabela de Composição de produtos','CPQUANT');

fIncluirProdutos('CADCOM02','','CM02_CODPRO','','CM02_QTD');
fIncluirProdutos('CADCON03','Tabela de Conhecimentos 03 Produtos','C03CODPRO','Codigo do Produto Tabela de Conhecimentos 03 Produtos','C03QTDVEND');
fIncluirProdutos('CADCOT2','','CCT2CODPRO','','CCT2QTD');
fIncluirProdutos('CADCOT3','','CCT3CODPRO','','CCT3QTD');

fIncluirProdutos('CADECF_CAT52_ITENS','','CT52I_CODPRO','','CT52I_QTD');

fIncluirProdutos('CADEST','Tabela de Estoque','CECODPRO','Código do Produto Tabela de Estoque','CESALDO');

fIncluirProdutos('CADFRAC01_FRACIONAR','','CF_CODPRO','','CF_QTD');
fIncluirProdutos('CADFRAC02_EMB','','CFE_CODPRO','','CFE_QTD');

fIncluirProdutos('CADFRAC03_PN','','PN_CODPRO','','PN_QTDUND_MASTER');
fIncluirProdutos('CADFRAC04_PNE','','PNE_CODPRO','','PNE_QTD');

fIncluirProdutos('CADLC2','Tabela de Licitações 02','LC2_CODPRO','Código do produto Tabela de Licitações 02','LC2_QTD');
fIncluirProdutos('CADLC2','Tabela de Licitações 02','LC2_CODPRO','Código do produto Tabela de Licitações 02','LC2_QTDENV');

fIncluirProdutos('CADLGC','Tabela de Lotes/Grades','CLCODPRO','Codigo do produto Tabela de Lotes/Grades','CLQTD');

fIncluirProdutos('CADLOCA02','Cadastro de Locação 02','LC02_CODPRO','Código do Produto Cadastro de Locação 02','LC02_QUANT');
fIncluirProdutos('CADMOV_PROD','','CMP_CODPRO','','CMP_QTD');
fIncluirProdutos('CADOP02','Tabela Produtos a serem produzidos da Ordem de Produção','OP2_CODPRO','Código do produto a ser produzido Tabela Produtos a serem produzidos da Ordem de','OP2_QTDPROD');
fIncluirProdutos('CADOP02','Tabela Produtos a serem produzidos da Ordem de Produção','OP2_CODPRO','Código do produto a ser produzido Tabela Produtos a serem produzidos da Ordem de','OP2_QTDPREV');
fIncluirProdutos('CADOP03','Tabela Matérias primas utilizadas na Ordem de Produção','OP3_CODMAT','Código da Matéria Prima Utilizada Tabela Matérias primas utilizadas na Ordem de','OP3_QTDUTIL');
fIncluirProdutos('CADOP03','Tabela Matérias primas utilizadas na Ordem de Produção','OP3_CODMAT','Código da Matéria Prima Utilizada Tabela Matérias primas utilizadas na Ordem de','OP3_QTDPREV');

fIncluirProdutos('CADOS03','Cadastro de Ordem de Serviço 03 Acessórios','OS3CODPRO','Código do ítem a ser reparado Cadastro de Ordem de Serviço 03 Acessórios','OS3QTD');
fIncluirProdutos('CADOS04','Cadastro de Ordem de Serviço 04 Peças Utilizadas','OS4CODPRO','Código da Peça Utilizada Cadastro de Ordem de Serviço 04 Peças Utilizadas','OS4QTD');
fIncluirProdutos('CADOS05','Cadastro de Ordem de Serviço 05 Serviços Executados','OS5CODPRO','Código do Serviço Executado Cadastro de Ordem de Serviço 05 Serviços Executados','OS5QTD');
fIncluirProdutos('CADPEN','Tabela de Pendencias de Mercadorias','PECODPRO','Codigo do produto Tabela de Pendencias de Mercadorias','PEQTDPEN');

fIncluirProdutos('CADPF2','Tabela de Pedidos de Fornecedores 02 Mercadorias','PF2CODPRO','Codigo do produto Tabela de Pedidos de Fornecedores 02 Mercadorias','PF2QTDP');
fIncluirProdutos('CADPF2_LOTES_ORC','','PF2L_CODPRO','','PF2L_QTD');

fIncluirProdutos('CADPPR','Promoções de Produtos','PPCODPRO','Código do produto em promoçao Promoções de Produtos','PPQTDMIN');
fIncluirProdutos('CADPRO','Tabela de Produtos','PDCODPRO','Codigo do produto Tabela de Produtos','PDSALDO');

fIncluirProdutos('CADPRO_BLOQ','Tabela de Produtos Bloqueados Pelo Controle de Qualidade(SAC','CPB_CODPRO','Codigo do produto Tabela de Produtos Bloqueados Pelo Controle de Qualidade(SAC','CPB_QTD');
fIncluirProdutos('CADPRO_BLOQ_BX','Tabela das Baixas de Produtos Bloqueados Pelo Controle de Qu','PBX_CODPRO','Codigo do produto Tabela das Baixas de Produtos Bloqueados Pelo Controle de Qu','PBX_QTD');
fIncluirProdutos('CADPRO_CODBAR','Tabela de Produtos Codigo de Barras','CBCODPRO','Codigo do produto Tabela de Produtos Codigo de Barras','CBQTDMULT');

fIncluirProdutos('CADPRO_KIT','','KIT_CODPRO','','KIT_QTD');


fIncluirProdutos('CADP02','Tabela de Pedidos 02 Mercadorias','P2CODPRO','Codigo produto Tabela de Pedidos 02 Mercadorias','P2QTD');

fIncluirProdutos('CADP02_DCONS','Tabela de Pedidos 02 Devolução de Consignaçoes','P2DC_CODPRO','Codigo produto Tabela de Pedidos 02 Devolução de Consignaçoes','P2DC_QTD');

fIncluirProdutos('CADP02_LOTES','','P2LM_CODPRO','','P2LM_QTD');

fIncluirProdutos('CADP02S','Tabela de Pedidos 02 Serviços','P2SCODPRO','Codigo do produto pedido 02 serviços Tabela de Pedidos 02 Serviços','P2SQTD');

fIncluirProdutos('CADTRO_ENT','Cadastro das Mercadorias Devolvidas para troca','TECODPRO','Código do Produto Cadastro das Mercadorias Devolvidas para troca','TEQTD');
fIncluirProdutos('CADTRO_SAI','Cadastro das Mercadorias Envidas para troca','TSCODPRO','Código do Produto Cadastro das Mercadorias Envidas para troca','TSQTD');

fIncluirProdutos('INVGRA','Cadastro de Inventarios Gravados','IGCODPRO','Código do Produto Cadastro de Inventarios Gravados','IGQTD');

//cds_tabelas



end;

procedure TFrm_Pro_Fracionar.fIncluirProdutos(pTabela,pTabela_Descricao, pCampo,pCampo_Descricao,pCampo_qtd: String);
begin
cds_tabelas.Append;
cds_tabelastabela.AsString           := pTabela;
cds_tabelastabela_descricao.AsString := pTabela_Descricao;
cds_tabelascampo.AsString            := pCampo;
cds_tabelascampo_descricao.AsString  := pCampo_Descricao;
cds_tabelascampo_qtd.AsString        := pCampo_qtd;
cds_tabelas.Post;




end;


procedure TFrm_Pro_Fracionar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_Fracionar.bbFracionarClick(Sender: TObject);
begin
if trim(edt_nompro.Text)='' then
   begin
   MessageDlg('Código do Produto é Obrigatório!',mtWarning,[mbOk],0);
   edt_codpro.setfocus;
   exit;
   end;
if valfloat(edt_multiplicar.text)<=0 then
   begin
   MessageDlg('Campo Multiplicado por é obrigatorio!',mtWarning,[mbOk],0);
   edt_multiplicar.SetFocus;
   exit;
   end;


if Application.MessageBox(pchar('Quer realmene Fracionar o Produto '+edt_nompro.text+' por '+edt_multiplicar.Text),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

if fFracionar then
   begin
   MessageDlg('Concluido!',mtInformation,[mbOk],0);
   end;


end;


function TFrm_Pro_Fracionar.fFracionar: Boolean;
var
mQtd: Integer;
mLido: Integer;
query_exe: tquery;
begin
result:=true;
query_exe:=TQuery.create(nil);

query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
mQtd:=cds_tabelas.RecordCount;
mLido:=0;
cds_tabelas.First;
Gauge1.Visible:=true;
While not cds_tabelas.eof do
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.sql.add('Update '+cds_tabelastabela.AsString+' set '+cds_tabelascampo_qtd.AsString+'='+cds_tabelascampo_qtd.AsString+'*'+mudaVP(edt_multiplicar.Text)
                     +' where '+cds_tabelascampo.AsString+'='+edt_codpro.Text);
   try
      query_exe.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,23,'func Erro:'+e.Message ,cds_tabelastabela.AsString);
      exit;
      end;
      end;
   cds_tabelas.Next;
   mLido:=mLido+1;
   Gauge1.progress:=mlido*100 div mQtd;
   end;
query_exe.close;
freeandnil(query_exe);



end;
procedure TFrm_Pro_Fracionar.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum(edt_codpro.Text);
if Trim(edt_codpro.Text)<>'' then
   begin
   flcadpro(1,0,0,edt_CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      edt_CODpro.SetFocus;
      end
   else
      begin
      edt_nompro.Text   :=DM1.Tb_ProPDNOME.AsString;
      edt_marca.Text    :=DM1.Tb_ProPDMARCA.AsString;
      edt_und.Text      :=DM1.Tb_ProPDUND.AsString;
      edt_estoque.Text  :=formatfloat(mcasas, DM1.Tb_ProPDSALDO.AsFloat);
      edt_undnova.Text  :=DM1.Tb_ProPDUND.AsString;
      end;
   end;

end;

procedure TFrm_Pro_Fracionar.edt_multiplicarExit(Sender: TObject);
begin
edt_multiplicar.Text:=Floattostr(valfloat(edt_multiplicar.Text));
edt_novoestoque.Text:=Floattostr(valfloat(edt_multiplicar.Text)*ValFloat(edt_estoque.Text));
end;

end.
