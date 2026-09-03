unit s_ordemdeproducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,func, DB, DBTables,DBClient,maskutils, StdCtrls, RxMemDS, Grids,
  DBGrids, ComCtrls;

type
   TLegenda = record
   NomeLegenga: String;
   Descricao: String;
   tipo_campo: String;
   end;



type
   TDocWord01 = record
   codemp: integer;
   nomerel: String;
   nomegrade: String;
   obs: String;
   qtdcol: integer;
   etapa: integer;
   qtdlincab: integer;
   qtdlinrod: integer;
   qtdlindet: integer;
   tamcolauto: integer;
   tabela: Integer;
   formagrade: integer;
   tamanho: integer;
   alinhamento: integer;

   categoria: String;
   versao: String;
   end;

type
   TDocWord02 = record
   codemp: integer;
   nomerel: String;
   nomgrade: string;
   posicao: string;
   coluna: integer;
   tipocampo: integer;
   campooutexto: string;
   tamanho: integer;
   alinhamento: integer;
   formato: string;
   datatype: integer;
   fundo: integer;
   mesclar_ini: integer;
   mesclar_fin: integer;
   fonte_tamanho: integer;
   tamanho_dig: integer;
   corfonte: string;
   corfundo: string;
   categoria: string;
   fonte_negrito: string;
   fonte_sublinhado: string;
   fonte_italico: string;
   end;
  

type
  TFrm_ordemdeproducao = class(TForm)
    Query1: TQuery;
    mem_grade: TRxMemoryData;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    RE_relatorio: TMemo;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fTestarTabulacoes(pNomeRel: string);

    function fPreparaRelatorio_ordemproducao(pNomeRel: String;pChave,pLotSeq: Integer; out pArquivoSaida: String;pOriginal: Boolean): Boolean;

  end;


var
  Frm_ordemdeproducao: TFrm_ordemdeproducao;


const
    tipocampo_extenso_reais = 'extenso_reais';
    tipocampo_extenso_numero = 'extenso_numero';
    tipocampo_extenso_data = 'extenso_data';
    tipocampo_padrao = '';


   Items_leg_op01 : array[0..04] of TLegenda =
   (
     (NomeLegenga : 'DataEmi'; Descricao : 'Data de Emissão da Ordem de Produção'; tipo_campo: fdt2 ),
     (NomeLegenga : 'NumOp'; Descricao : 'Numero da Ordem de Produção'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'MesAnoEmi'; Descricao : 'Mes e Ano da data de emissao da ordem de producao'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'DatFab'; Descricao : 'data de Fabricação do Produto'; tipo_campo: fdt2 ),
     (NomeLegenga : 'DatVal'; Descricao : 'data de validade do Produto'; tipo_campo: fdt2 )

   ) ;




   Items_leg_op02 : array[0..10] of TLegenda =
   (


     (NomeLegenga : 'Desc_Sobre'; Descricao : 'Descrição do Sobre do Cadastro de Produto'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'Observacao_Prod'; Descricao : 'Obervação do Cadastro de Produtos'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'CodproMask'; Descricao : 'Código do Produto com Mascara'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'CodPro'; Descricao : 'Código do Produto'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'NomPro'; Descricao : 'Nome do Produto'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'NumLot'; Descricao : 'Numero do Lote'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'PERC_PERDAS'; Descricao : 'Percental de Perdas'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'QTDGRML'; Descricao : 'Quandidade Por Gramas ou ML'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'Apresent'; Descricao : 'Apresentação do Produto'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'QtdPrev'; Descricao : 'Quantidade Prevista para Produção'; tipo_campo: tipocampo_padrao ),
     (NomeLegenga : 'Qtdutil'; Descricao : 'Quantidade utilizada na Produção'; tipo_campo: tipocampo_padrao )


   ) ;                        

   versao_docxml = '001';
   categoria_docxml = 'CADOP';


var
   mdocWord01: array of TDocWord01;
   mdocword02: array of TDocWord02;
   x_seq: integer = 0;
implementation

uses S_DM1, func_excecoes, lerarq;


{$R *.dfm}



procedure TFrm_ordemdeproducao.fTestarTabulacoes(pNomeRel: string);
var
query_dword_01: TQuery;
//mvetor_dword01: array of array;
query_dword_02: TQuery;
mNomGrade: string;
mQtdTag: integer;
mQtdLinhas: integer;
mTam_Cpo: Integer;
mMesclar_Ini: integer;
mMesclar_Fin: integer;
mTamanhoFonte: integer;
mLocal_DetCab: String;
mqtdcol: Integer;
mcoluna: integer;
const
   mAlinha_Esquerda=0;
   mAlinha_Centro  =1;
   mAlinha_Direito =2;

//   mAlinhamento: array [0..2] of string = ('Esquerda','Centro','Direita');
    mDataType_string = 0;
    mDataType_integer = 1;
    mDataType_float = 1;
    mDataType_data = 2;
    mDataType_hora = 3;
    mDataType_DataHora = 4;
    mDataType_imagem = 5;

    mFormato_Extenso_reais = 'extenso_reais';
    mFormato_nenhum = '';

    mNegrito_nao = 'N';
    mNegrito_sim = 'S';

    mSublinhado_nao = 'N';
    mSublinhado_sim = 'S';


    mItalico_nao = 'N';
    mItalico_sim = 'S';
    mqtd_bandas = 3;

//   mTipoCampo : Array[0..5] of string = ('String','Valor Decimais','Data','Hora','Data Hora','Imagem');

//   Frm_Stru.STG1.Cells[5,mlinha]:='Tipo do Campo 0-String 1-Integer 2-Float 3-Data';


mcor_fundo_nao = 0;
mcor_fundo_sim = 1;

mtipocampo_texto = 0;
mtipocampo_dados = 1;

mcorfundo_com  =' ';
mcorfundo_sem  =' ';

mcorfonte_sem =' ';
mcorfonte_com =' ';

    procedure fdefinirmp01;
    var
    x_local: integer;
    x_itens: integer;


    begin
    mNomGrade:='MP01';

    SetLength(mdocword01,1);
    x_itens:=0;
    mdocWord01[x_itens].codemp:=codemp;
    mdocWord01[x_itens].nomerel:=pNomeRel;
    mdocWord01[x_itens].nomegrade:=mNomGrade;
    mdocWord01[x_itens].obs:='Gerado Internamente';
    mdocWord01[x_itens].qtdcol:=04;
    mdocWord01[x_itens].etapa:=0;
    mdocWord01[x_itens].qtdlincab:=1;
    mdocWord01[x_itens].qtdlinrod:=1;
    mdocWord01[x_itens].qtdlindet:=1;
    mdocWord01[x_itens].tamcolauto:=1;
    mdocWord01[x_itens].tabela:=1;;
    mdocWord01[x_itens].formagrade:=0;
    mdocWord01[x_itens].tamanho:=950;
    mdocWord01[x_itens].alinhamento:=0;;
    mdocWord01[x_itens].categoria:=categoria_docxml;
    mdocWord01[x_itens].versao:=versao_docxml;






    mtam_cpo:=400;
    // CAB DET
    SetLength(mdocword02,4*mqtd_bandas);
    mcoluna:=0;
    x_itens:=0;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;

       mdocword02[x_itens].coluna:=mcoluna;
       mdocword02[x_itens].tipocampo:=iif(x_local=0,mtipocampo_texto,mtipocampo_dados);
       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
    //   mdocword02[x_itens].alinhamento:=iif(x_local=0,mAlinha_Centro,mAlinha_Esquerda);

       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;
       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Nome';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='SEQ_NOMPRO';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          mLocal_DetCab:='DET01';
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Totais';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;

          mLocal_DetCab:='ROD01';
          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;
       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;
       end;


    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;
       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;


       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Formula Padrão(kg/lt)';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='OP3_QTDUTIL';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='TOT_OP3_QTDUTIL';
          mLocal_DetCab:='ROD01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;

          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;


       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;

       end;

    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;


       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;

       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Formula Centesimal(%)';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='PERC_FORM_CENTESIMAL';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='TOT_PERC_FORM_CENTESIMAL';
          mLocal_DetCab:='ROD01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;

          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;

       end;


    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;    
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;
       mdocword02[x_itens].tipocampo:=iif(x_local=0,mtipocampo_texto,mtipocampo_dados);
       mdocword02[x_itens].campooutexto:=iif(x_local=0,'Lote/venc','LOTVENC');
       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;


       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Lote/Venc';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='LOTVENC';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          mLocal_DetCab:='ROD01';
          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;
       end;

    end;






// inicio mp02


    procedure fdefinirmp02;
    var
    x_local: integer;
    x_itens: integer;


    begin
    mNomGrade:='MP02';

    SetLength(mdocword01,1);
    x_itens:=0;
    mdocWord01[x_itens].codemp:=codemp;
    mdocWord01[x_itens].nomerel:=pNomeRel;
    mdocWord01[x_itens].nomegrade:=mNomGrade;
    mdocWord01[x_itens].obs:='Gerado Internamente';
    mdocWord01[x_itens].qtdcol:=04;
    mdocWord01[x_itens].etapa:=0;
    mdocWord01[x_itens].qtdlincab:=1;
    mdocWord01[x_itens].qtdlinrod:=1;
    mdocWord01[x_itens].qtdlindet:=1;
    mdocWord01[x_itens].tamcolauto:=1;
    mdocWord01[x_itens].tabela:=2;
    mdocWord01[x_itens].formagrade:=0;
    mdocWord01[x_itens].tamanho:=950;
    mdocword01[x_itens].alinhamento:=mAlinha_Centro;
    mdocWord01[x_itens].categoria:=categoria_docxml;
    mdocWord01[x_itens].versao:=versao_docxml;




    mtam_cpo:=200;
    // CAB DET
    SetLength(mdocword02,4*mqtd_bandas);
    mcoluna:=0;
    x_itens:=0;
    mtam_cpo:=400;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;
       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;


       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Nome';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='ME_NOMPRO';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Totais';
          mLocal_DetCab:='ROD01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;

          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;

       end;

    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;


       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;

       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;

       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Embalagens';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='ME_QTDUTIL';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='TOT_ME_QTDUTIL';
          mLocal_DetCab:='ROD01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;

          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;

       end;


    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;


       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;

       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Quantidade Padrao Litros/KG';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='ME_QTDPADRAO';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='TOT_ME_QTDPADRAO';
          mLocal_DetCab:='ROD01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;

          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;

       end;



    mtam_cpo:=200;
    mcoluna:=mcoluna+1;
    for x_local:=0 to (mqtd_bandas-1)  do
       begin
       mdocword02[x_itens].codemp:=codemp;
       mdocword02[x_itens].nomerel:=pNomeRel;
       mdocword02[x_itens].nomgrade:=mNomGrade;
       mdocword02[x_itens].coluna:=mcoluna;
       mdocword02[x_itens].tipocampo:=iif(x_local=0,mtipocampo_texto,mtipocampo_dados);
       mdocword02[x_itens].tamanho:=mtam_cpo;
       mdocword02[x_itens].alinhamento:=mAlinha_Centro;
       mdocword02[x_itens].formato:=mFormato_nenhum;
       mdocword02[x_itens].datatype:=mDataType_string;


       if x_local=0 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='Lote/Venc';
          mLocal_DetCab:='CAB01';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          end
       else if x_local=1 then
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_nao;
          mdocword02[x_itens].corfundo:='';
          mdocword02[x_itens].campooutexto:='ME_LOTVENC';
          mLocal_DetCab:='DET01';
          mdocword02[x_itens].tipocampo:=mtipocampo_dados;
          end
       else
          begin
          mdocword02[x_itens].fundo:=mcor_fundo_sim;
          mdocword02[x_itens].corfundo:='8454016';
          mdocword02[x_itens].campooutexto:='';
          mdocword02[x_itens].tipocampo:=mtipocampo_texto;
          mLocal_DetCab:='ROD01';
          end;
       mdocword02[x_itens].posicao:=mLocal_DetCab;

       mdocword02[x_itens].mesclar_ini:=mMesclar_Ini;
       mdocword02[x_itens].mesclar_fin:=mMesclar_Fin;
       mdocword02[x_itens].fonte_tamanho:=mTamanhoFonte;
       mdocword02[x_itens].tamanho_dig:=mTam_Cpo;
       mdocword02[x_itens].corfonte:=mcorfundo_sem;
       mdocword02[x_itens].categoria:=categoria_docxml;
       mdocword02[x_itens].fonte_negrito:=mNegrito_nao;
       mdocword02[x_itens].fonte_sublinhado:=mSublinhado_nao;
       mdocword02[x_itens].fonte_italico:=mItalico_nao;
       x_itens:=x_itens+1;
       end;

    end;

// termino mp02








    procedure fIncluirGrades;
    var
    x_itens: integer;
    begin

    query_dword_01.Close;
    query_dword_01.SQL.Clear;
    query_dword_01.SQL.Add('Insert into CADDWORD_TAB01 ('
                     +' DW01_CODEMP '
                     +',DW01_NOMREL '
                     +',DW01_NOMGRADE '
                     +',DW01_OBS '
                     +',DW01_QTDCOL '
                     +',DW01_ETAPA  '
                     +',DW01_QTDLINCAB '
                     +',DW01_QTDLINROD '
                     +',DW01_QTDLINDET '
                     +',DW01_TAMCOLAUT0  '
                     +',DW01_TABELA '
                     +',DW01_FORMAGRADE '
                     +',DW01_TAMANHO '
                     +',DW01_ALINHAMENTO  '
                     +',DW01_CATEGORIA  '
                     +',DW01_VERSAO '
                     +') values ('

                     +' :DW01_CODEMP '
                     +',:DW01_NOMREL '
                     +',:DW01_NOMGRADE '
                     +',:DW01_OBS '
                     +',:DW01_QTDCOL '
                     +',:DW01_ETAPA  '
                     +',:DW01_QTDLINCAB '
                     +',:DW01_QTDLINROD '
                     +',:DW01_QTDLINDET '
                     +',:DW01_TAMCOLAUT0  '
                     +',:DW01_TABELA '
                     +',:DW01_FORMAGRADE '
                     +',:DW01_TAMANHO '
                     +',:DW01_ALINHAMENTO  '
                     +',:DW01_CATEGORIA  '
                     +',:DW01_VERSAO '
                     +') ');

    query_dword_02:=TQuery.Create(nil);
    query_dword_02.DatabaseName:='SG_ASSOC';
    query_dword_02.SQL.Clear;

    query_dword_02.Close;
    query_dword_02.SQL.Clear;
    query_dword_02.SQL.Add('Insert into CADDWORD_TAB02 ('
                     +' DW02_CODEMP '
                     +',DW02_NOMREL '
                     +',DW02_NOMGRADE '
                     +',DW02_POSICAO '
                     +',DW02_COLUNA  '
                     +',DW02_TIPOCAMPO '
                     +',DW02_CAMPOOUTEXTO '
                     +',DW02_TAMANHO '
                     +',DW02_ALINHAMENTO '
                     +',DW02_FORMATO '
                     +', DW02_DATATYPE      '
                     +', DW02_FUNDO         '
                     +', DW02_MESCLAR_INI  '
                     +', DW02_MESCLAR_FIN  '
                     +', DW02_FONTE_TAMANHO '
                     +', DW02_TAMANHO_DIG   '
                     +', DW02_CORFUNDO      '
                     +', DW02_CORFONTE      '
                     +', DW02_CATEGORIA     '
                     +', DW02_FONTE_NEGRITO     '
                     +', DW02_FONTE_SUBLINHADO     '
                     +', DW02_FONTE_ITALICO     '

                     +') values ('
                     +' :DW02_CODEMP '
                     +',:DW02_NOMREL '
                     +',:DW02_NOMGRADE '
                     +',:DW02_POSICAO '
                     +',:DW02_COLUNA  '
                     +',:DW02_TIPOCAMPO '
                     +',:DW02_CAMPOOUTEXTO '
                     +',:DW02_TAMANHO '
                     +',:DW02_ALINHAMENTO '
                     +',:DW02_FORMATO '
                     +',:DW02_DATATYPE      '
                     +',:DW02_FUNDO         '
                     +',:DW02_MESCLAR_INI  '
                     +',:DW02_MESCLAR_FIN  '
                     +',:DW02_FONTE_TAMANHO '
                     +',:DW02_TAMANHO_DIG   '
                     +',:DW02_CORFUNDO      '
                     +',:DW02_CORFONTE      '
                     +',:DW02_CATEGORIA     '
                     +',:DW02_FONTE_NEGRITO     '
                     +',:DW02_FONTE_SUBLINHADO     '
                     +',:DW02_FONTE_ITALICO     '

                     +')');

    if high(mdocWord01)>-1 then
       begin

       mQtdTag:=high(mdocword01);
       for x_itens:=0 to mQtdtag do
          begin
          fGerarEvento('510 INCLUINDO MQTDTAG '+INTTOSTR(mQtdTag)+' X_ITENS '+iNTTOSTR(x_itens));
          query_dword_01.Close;

          query_dword_01.ParamByName('DW01_CODEMP').AsInteger      := mdocword01[x_itens].codemp;
          query_dword_01.ParamByName('DW01_NOMREL').AsString       := mdocword01[x_itens].nomerel;
          query_dword_01.ParamByName('DW01_NOMGRADE').AsString     := mdocword01[x_itens].nomegrade;
          query_dword_01.ParamByName('DW01_OBS').AsString          := mdocword01[x_itens].obs;
          query_dword_01.ParamByName('DW01_QTDCOL').AsInteger      := mdocword01[x_itens].qtdcol;
          query_dword_01.ParamByName('DW01_ETAPA').AsInteger       := mdocword01[x_itens].etapa;
          query_dword_01.ParamByName('DW01_QTDLINCAB').AsInteger   := mdocword01[x_itens].qtdlincab;
          query_dword_01.ParamByName('DW01_QTDLINROD').AsInteger   := mdocword01[x_itens].qtdlinrod;
          query_dword_01.ParamByName('DW01_QTDLINDET').AsInteger   := mdocword01[x_itens].qtdlindet;
          query_dword_01.ParamByName('DW01_TAMCOLAUT0').AsInteger  := mdocword01[x_itens].tamcolauto;
          query_dword_01.ParamByName('DW01_TABELA').AsInteger      := mdocword01[x_itens].tabela;
          query_dword_01.ParamByName('DW01_FORMAGRADE').AsInteger  := mdocword01[x_itens].formagrade;
          query_dword_01.ParamByName('DW01_TAMANHO').AsInteger     := mdocword01[x_itens].tamanho;
          query_dword_01.ParamByName('DW01_ALINHAMENTO').AsInteger := mdocword01[x_itens].alinhamento;
          query_dword_01.ParamByName('DW01_CATEGORIA').AsString    := mdocword01[x_itens].categoria;
          query_dword_01.ParamByName('DW01_VERSAO').AsString       := mdocword01[x_itens].versao;


          try
             query_dword_01.execsql;
          except on e : exception do
             ex_erroSql_Novo(query_dword_01,530,'func Erro:'+e.Message ,'CADDWORD_TAB01');
             end;
          end;
       mQtdTag:=high(mdocword02);
       for x_itens:=0 to  mQtdTag do
          begin
          fGerarEvento('530 INCLUINDO MQTDTAG '+INTTOSTR(mQtdTag)+' X_ITENS '+iNTTOSTR(x_itens));
          query_dword_02.Close;
          query_dword_02.ParamByName('DW02_CODEMP').AsInteger       := mdocword02[x_itens].codemp;
          query_dword_02.ParamByName('DW02_NOMREL').AsString        := mdocword02[x_itens].nomerel;
          query_dword_02.ParamByName('DW02_NOMGRADE').AsString      := mdocword02[x_itens].nomgrade;
          query_dword_02.ParamByName('DW02_POSICAO').Asstring       := mdocword02[x_itens].posicao;
          query_dword_02.ParamByName('DW02_COLUNA').AsInteger       := mdocword02[x_itens].coluna;
          query_dword_02.ParamByName('DW02_TIPOCAMPO').AsInteger    := mdocword02[x_itens].tipocampo;
          query_dword_02.ParamByName('DW02_CAMPOOUTEXTO').AsString  := mdocword02[x_itens].campooutexto;
          query_dword_02.ParamByName('DW02_TAMANHO').AsInteger      := mdocword02[x_itens].tamanho;
          query_dword_02.ParamByName('DW02_ALINHAMENTO').AsInteger  := mdocword02[x_itens].alinhamento;
          query_dword_02.ParamByName('DW02_FORMATO').AsString       := mdocword02[x_itens].formato;
          query_dword_02.ParamByName('DW02_DATATYPE').AsInteger     := mdocword02[x_itens].datatype;
          query_dword_02.ParamByName('DW02_FUNDO').AsInteger        := mdocword02[x_itens].fundo;
          query_dword_02.ParamByName('DW02_MESCLAR_INI').AsInteger  := mdocword02[x_itens].mesclar_ini;
          query_dword_02.ParamByName('DW02_MESCLAR_FIN').AsInteger  := mdocword02[x_itens].mesclar_fin;
          query_dword_02.ParamByName('DW02_FONTE_TAMANHO').AsInteger:= mdocword02[x_itens].fonte_tamanho;
          query_dword_02.ParamByName('DW02_TAMANHO_DIG').AsInteger  := mdocword02[x_itens].tamanho_dig;
          query_dword_02.ParamByName('DW02_CORFONTE').AsString      := mdocword02[x_itens].corfonte;
          if valint(mdocword02[x_itens].corfundo)=0 then
             query_dword_02.ParamByName('DW02_CORFUNDO').Clear
          else
             query_dword_02.ParamByName('DW02_CORFUNDO').AsString      := mdocword02[x_itens].corfundo;
          query_dword_02.ParamByName('DW02_CATEGORIA').AsString     := mdocword02[x_itens].categoria;

          query_dword_02.ParamByName('DW02_FONTE_NEGRITO').AsString     := mdocword02[x_itens].fonte_negrito;
          query_dword_02.ParamByName('DW02_FONTE_SUBLINHADO').AsString  := mdocword02[x_itens].fonte_sublinhado;
          query_dword_02.ParamByName('DW02_FONTE_ITALICO').AsString     := mdocword02[x_itens].fonte_italico;
          try
             query_dword_02.execsql;
          except on e : exception do
             ex_erroSql_Novo(query_dword_02,6768,'func Erro:'+e.Message ,'CADDWORD_TAB02');
             end;
          end;
       end;

    end;


begin
mMesclar_Ini:=0;
mMesclar_Fin:=0;
mTamanhoFonte := 9; // tamanho da fonte das grades;

query_dword_01:=TQuery.Create(nil);
query_dword_01.DatabaseName:='SG_ASSOC';
query_dword_01.close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('delete from CADDWORD_TAB01 '
                  +' where DW01_CODEMP=:CODEMP '
                  +' and DW01_NOMREL=:NOMREL '
                  +' and DW01_CATEGORIA=:CATEGORIA ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
//query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_dword_01,6524,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;


query_dword_01.close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('delete from CADDWORD_TAB02 '
                  +' where DW02_CODEMP=:CODEMP '
                  +' and DW02_NOMREL=:NOMREL '
                  +' and DW02_CATEGORIA=:CATEGORIA ');
//                  +' and NVL(DW01_VERSAO,'+QuotedStr('0')+')<>:VERSAO ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
//query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_dword_02,6717,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;


query_dword_01.Close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('select count(*) from CADDWORD_TAB01 '
                  +' where DW01_CODEMP=:CODEMP '
                  +' and DW01_NOMREL=:NOMREL '
                  +' and DW01_CATEGORIA=:CATEGORIA '
                  +' and NVL(DW01_VERSAO,'+QuotedStr('0')+')=:VERSAO ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.Open;
except on e : exception do
   ex_erroSql_Novo(query_dword_01,6541,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;
if query_dword_01.Fields[0].AsInteger>0 then
   begin
   freeandnil(query_dword_01);
   exit;
   end;

// inicio grade 01
fdefinirmp01;
fIncluirGrades;


fdefinirmp02;
fIncluirGrades;

fGerarEvento('570 FINAL ');
query_dword_01.Close;
query_dword_02.close;

freeandnil(query_dword_01);
freeandnil(query_dword_02);
fGerarEvento('575 FINALIZOU TUDO');
//FreeAndNil(mdocWord01);
//FreeAndNil(mdocWord02);
fGerarEvento('577 FINALIZOU TUDO');

end;




function TFrm_ordemdeproducao.fPreparaRelatorio_ordemproducao(pNomeRel: String;pChave,pLotSeq: Integer; out pArquivoSaida: String;pOriginal: Boolean): Boolean;
var
findtext: string;
replacetext: string;
Query_op01: tQuery;
Query_op02_profab: tQuery;
Query_op03_mp: tQuery;
Query_op03_mp_tot: tQuery;
Query_op03_embalagem: tQuery;
Query_op03_embalagem_tot: tQuery;
Query_etapas: tQuery;
Query_DWord01: tQuery;
Query_Grade: tQuery;

Query_Grade_Res: TQuery;

Query_Grade_Pos: TQuery;



mTextoSaida: tStringList;
mNomeArq: String;
// verificar

x_sub: integer;
mPrim: Boolean;
mTamcol_array: Array of integer;
mCol: Integer;
mQtdCol: Integer;
mGrade: String;


mMesclar_ColAcum: Integer;
mCampoValor: String;
mComandoSql: String;

    const

    mTIPOCAMPO=0;
    mTAMCOL=1;
    mCOLUNA=2;
    mCOL_MESCLAR_ATE=3;
    mCOR_FONTE=4;
    mCOR_FUNDO=5;
    mCOL_ALINHAMENTO=6;
    mVALOR_CAMPO=7;
    mCOL_MESCLAR_ATE_TAMGER=8;
    mCOL_FONTE_TAMANHO=9;

    mCOL_FONTE_ITALICO=10;
    mCOL_FONTE_NEGRITO=11;
    mCOL_FONTE_SUBLINHADO=12;

    mfatur_coluna = 10;



     procedure pfechartudo;
     begin
     if Query_Grade_Res<>nil then
        begin
        Query_Grade_Res.close;
        freeandnil(Query_Grade_Res);
        end;

     if Query_op01<>nil then
        begin
        query_op01.close;
        freeandnil(Query_op01);
        end;

     if Query_Grade<>nil then
        begin
        Query_Grade.close;
        freeandnil(Query_Grade);
        end;

     if Query_op02_profab<>nil then
        begin
        Query_op02_profab.close;
        freeandnil(Query_op02_profab);
        end;

     if Query_op03_mp<>nil then
        begin
        Query_op03_mp.close;
        freeandnil(Query_op03_mp);
        end;

     if Query_op03_mp_tot<>nil then
        begin
        Query_op03_mp_tot.close;
        freeandnil(Query_op03_mp_tot);
        end;

     if Query_op03_embalagem<>nil then
        begin
        Query_op03_embalagem.close;
        freeandnil(Query_op03_embalagem);
        end;

     if Query_op03_embalagem_tot<>nil then
        begin
        Query_op03_embalagem_tot.close;
        freeandnil(Query_op03_embalagem_tot);
        end;


     if Query_etapas<>nil then
        begin
        Query_etapas.close;
        freeandnil(Query_etapas);
        end;

     if Query_DWord01<>nil then
        begin
        Query_DWord01.close;
        freeandnil(Query_DWord01);
        end;

     if Query_Grade_Pos<>nil then
        begin
        Query_Grade_Pos.close;
        freeandnil(Query_Grade_Pos);
        end;






     end;
/// inicio


    function  fGerarTextoGrade(pTabela: TRxMemoryData;pTextoSaida: tStringList): Boolean;
    var
    mQtdColunas: Integer;
    mTamGrade: string;
    x_col: Integer;
    mTexto: string;
    mMesclar_Ate: Integer;
    mMesclar_Ate_inicio: Integer;
    mTamColGeral: Integer;
    mCorFundo: String;
    mAlinhamento_form: string;
    mCorFonte: String;
    mTamFonte: String;
    mNegrito: boolean;
    mSublinhado: boolean;
    mItalico: boolean;
    mGrade_Centro: boolean;

    const
    m_00D7076B = '00D7076B';
    m_00D7076B_alt = '#FFE4C4';
    m_001A104A = '00942C43';
    m_001A104A_alt = '#FFE4C4';
    m_004D1B74 = '004D1B74';
    m_004D1B74_alt = '#FFE4C4';
    mQtdCpoColuna =13;

    begin
    pTextoSaida.Clear;
    if pTabela.IsEmpty then
       begin
       result:=false;
       exit;
       end;
    result:=true;
    fGerarEvento('782 gerando grande');


    mGrade_Centro:=true;
    pTextoSaida.Add(' <w:tbl>');
    pTextoSaida.Add(' <w:tblPr> ');
    pTextoSaida.Add(' <w:tblW w:w="0" w:type="auto"/> ');

    pTextoSaida.Add(' <w:tblBorders> ');
    pTextoSaida.Add(' <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
    pTextoSaida.Add(' </w:tblBorders> ');

    pTextoSaida.Add(' <w:tblLook w:val="04A0"/> ');
    pTextoSaida.Add(' </w:tblPr> ');



    pTabela.First;
        fGerarEvento('805 - qtd.fields '+inttostr(pTabela.Fields.Count)+' mqtdcpocoluna: '+Inttostr(mQtdCpoColuna) );

    mQtdColunas:=pTabela.Fields.Count div mQtdCpoColuna;

    mMesclar_Ate       :=0;
    mMesclar_Ate_inicio:=0;

    While not pTabela.Eof do
       begin
       pTextoSaida.Add(' <w:tr wsp:rsidR="'+m_00D7076B_alt+'" wsp:rsidTr="'+m_00D7076B_alt+'"> ');
       mTexto:='';

       for x_col:=0 to mQtdColunas-1 do
          begin
          if mMesclar_Ate=0 then
             begin
//              mTamColGeral:=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE_TAMGER].AsString);
             //VERIFICR AQUI
             fGerarEvento('821 - vai testar');

             mMesclar_Ate       :=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE].Asstring);
            fGerarEvento('824 - vai testar');

             if mMesclar_Ate>0 then
                begin
             fGerarEvento('828 - vai testar mesclar ate '+inttostr(mMesclar_Ate)+' INICIO '+iNTTOSTR(mMesclar_Ate_inicio));

                mMesclar_Ate_inicio:=valint( pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsString);
                mTamColGeral:=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE_TAMGER].AsString);
                mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
                mTamGrade:=IntTostr (valint(pTabela.Fields[(x_col*mQtdCpoColuna)+1].Asstring)*mfatur_coluna);
                mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
                mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
                mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
                mItalico      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_ITALICO].AsString='S';
                mNegrito      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_NEGRITO].AsString='S';
                mSublinhado   :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_SUBLINHADO].AsString='S';
             fGerarEvento('840 - vai testar');

                end
             else
                begin
                        fGerarEvento('845 - vai testar');

                mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
        fGerarEvento('848 - vai testar ');

                mTamGrade:=IntTostr (valint(pTabela.Fields[(x_col*mQtdCpoColuna)+1].Asstring)*mfatur_coluna);
        fGerarEvento('851 - mtamgrade '+pTabela.Fields[(x_col*mQtdCpoColuna)+1].Asstring);

                mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
        fGerarEvento('854 - vai testar');

                mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
        fGerarEvento('857 - vai testar');

                mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
        fGerarEvento('860 - vai testar');

                mItalico      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_ITALICO].AsString='S';
        fGerarEvento('863 - vai testar');

                mNegrito      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_NEGRITO].AsString='S';
        fGerarEvento('866 - vai testar');

                mSublinhado   :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_SUBLINHADO].AsString='S';
        fGerarEvento('869 - vai testar');

                end;
             end;


          if mTexto<>'' then
             mTexto:=mTexto+' ';
        fGerarEvento('877 - vai testar');

          mTexto   := mTexto +  pTabela.Fields[(x_col*mQtdCpoColuna)+mVALOR_CAMPO].AsString;
          if (mMesclar_Ate=0) or (mMesclar_Ate=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsString)) then
             begin
          fGerarEvento('868 - mesclar ate '+pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].asstring);

    //         if pos('CARRO PARA TRASPORTE DE MATERIAIS',mTexto)>0 then
    //            showmessage(mTexto);
    //             mTexto:=AnsiToAscii(mTexto);
    //          mTexto:=AnsiToAcentosWord(mTexto);
              mTexto:=fParametrizarCaracteres_word(mTexto);
        fGerarEvento('875 - vai testar');

              if (mMesclar_Ate=0) then
                 begin
                 pTextoSaida.Add(' <w:tc> ');
                 end

              else
                 begin
                 pTextoSaida.Add(' <w:tc> ');


                 pTextoSaida.Add('<w:tcPr> ');


        fGerarEvento('890 - vai testar');


                 pTextoSaida.Add('<w:tcW w:w="'+IntToStr(mTamColGeral*mfatur_coluna)+'" w:type="dxa"/> ');
                 pTextoSaida.Add('<w:gridSpan w:val="'+InttoStr((mMesclar_Ate-mMesclar_Ate_inicio)+1)+'"/> ');

        fGerarEvento('896 - vai testar');

                 pTextoSaida.Add('</w:tcPr> ');
                 end;

             pTextoSaida.Add(' <w:tcPr> ');
             pTextoSaida.Add(' <w:tcW w:w="'+mTamGrade+'" w:type="dxa"/> ');

             if mGrade_Centro then
                pTextoSaida.Add('<w:vAlign w:val="center"/>');

             if trim(mCorFundo)<>'' then
                begin
                pTextoSaida.Add('<w:shd w:val="clear" w:color="auto" w:fill="'
                              +IntToHex( valint(mCorFundo),6)
                              +'"/> '); // corfundo
                end;


             pTextoSaida.Add(' </w:tcPr> ');

             pTextoSaida.Add(' <w:p wsp:rsidR="'+m_00D7076B+'" wsp:rsidRDefault="'+m_001A104A_alt+'" wsp:rsidP="'+m_00D7076B_alt+'">');
             pTextoSaida.Add(' <w:proofErr w:type="spellStart"/> ');
             if valint(mAlinhamento_form)=1 then
                 pTextoSaida.Add(' <w:pPr> <w:jc w:val="center"/>  </w:pPr> ')
              else if valint(mAlinhamento_form)=2 then
                 pTextoSaida.Add(' <w:pPr> <w:jc w:val="right"/>  </w:pPr> ');
    {
             pTextoSaida.Add('<w:rPr> ');
             pTextoSaida.Add('<w:rFonts w:asciiTheme="minorHAnsi" w:hAnsiTheme="minorHAnsi" w:cstheme="minorHAnsi"/> ');
             pTextoSaida.Add('<w:color w:val="000000"/><w:sz w:val="20"/> ');
             pTextoSaida.Add('<w:szCs w:val="20"/></w:rPr> ');
    }


        fGerarEvento('931 - vai testar');

             pTextoSaida.Add(' <w:r> ');

             if valint(mTamFonte)<>0 then
                begin
                pTextoSaida.Add('<w:rPr><w:sz w:val="'
                +IntTostr(valint(mTamFonte) *2)
                +'"/><w:szCs w:val="'
                +IntTostr(valint(mTamFonte) *2)
                +'"/></w:rPr> ');
                end;


            // VERMELHO FONTE
    //         pTextoSaida.Add(' <w:rPr>');

    //         pTextoSaida.Add('<w:rFonts w:asciiTheme="minorHAnsi" w:hAnsiTheme="minorHAnsi" w:cstheme="minorHAnsi"/>');

        fGerarEvento('950 - vai testar');
             if trim(mCorFonte)<>'' then
                begin
                pTextoSaida.Add(' <w:rPr>');
                pTextoSaida.Add(' <w:color w:val="'
                      +IntToHex( valint(mCorFonte),6)
                       +'"/></w:rPr> ');
                pTextoSaida.Add('</w:rPr> ');

                end;

    //            pTextoSaida.Add('</w:rPr> ');



    //        pTextoSaida.Add('<w:pPr2><w:rPr2><w:b/></w:rPr2></w:pPr2><w:proofErr w:type="spellStart"/><w:r w:rsidRPr="'+m_004D1B74_alt+'"><w:rPr2><w:b/></w:rPr2>');

            // VERMELHO FONTE

            if mNegrito then
               pTextoSaida.Add('<w:rPr><w:b/></w:rPr>');

            if mSublinhado then
               pTextoSaida.Add('<w:rPr><w:u/></w:rPr>');

            if mItalico then
               pTextoSaida.Add('<w:rPr><w:i/></w:rPr>');

    {
    mNegrito: boolean;
    mSobrescrito: boolean;
    mItalico: boolean;
    }

              pTextoSaida.Add(' <w:t>'+mTexto+'</w:t>');
              pTextoSaida.Add(' </w:r> ');
              pTextoSaida.Add(' <w:proofErr w:type="spellEnd"/> ');
              pTextoSaida.Add(' <w:r wsp:rsidR="'+m_004D1B74_alt+'"> ');
              pTextoSaida.Add(' </w:r> ');
              pTextoSaida.Add(' </w:p> ');
        //     end;




              pTextoSaida.Add(' </w:tc> ');
              mMesclar_Ate       :=0;
              mMesclar_Ate_inicio:=0;
              mTexto:='';
              end;
           end;
       pTextoSaida.Add(' </w:tr> '); // <w:tr wsp:rsidR="'+m_004D1B74+'" wsp:rsidTr="'+m_004D1B74+'">');
        fGerarEvento('1002 - vai testar');

       pTabela.Next;
       end;

    pTextoSaida.Add(' </w:tbl> ');


    result:=true;

    end;

// termino


// inicio materias primas
   procedure fGerargradeMateriasPrimas;
   var
   x_mesclar: Integer;

   begin

   While not Query_grade_pos.eof do
      begin
      Query_Grade.Close;
      Query_Grade.SQL.Clear;
      Query_Grade.SQL.Add('select  DW02_CODEMP, '
                          +'  DW02_NOMREL, '
                          +'  DW02_NOMGRADE, '
                          +'  DW02_POSICAO, '
                          +'  DW02_COLUNA, '
                          +'  DW02_TIPOCAMPO, '
                          +'  DW02_CAMPOOUTEXTO, '
                          +'  DW02_TAMANHO, '
                          +'  DW02_ALINHAMENTO, '
                          +'  DW02_FORMATO, '
                          +'  DW02_DATATYPE, '
                          +'  DW02_FUNDO, '
                          +'  DW02_MESCLAR_FIN, '
                          +'  DW02_CORFUNDO, '
                          +'  DW02_CORFONTE, '
                          +'  DW02_TAMANHO_DIG, '
                          +'  DW02_FONTE_TAMANHO '
                          +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                          +'  and DW02_NOMREL=:NOMREL '
                          +'  and DW02_NOMGRADE=:NOMGRADE '
                          +'  and DW02_POSICAO=:POSICAO '
                          +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
      Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
      Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
      Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
      Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString;
      Query_Grade.open;
      mCol:=0;
        fGerarEvento('1538 - query_grade.open posicao grade  '+query_grade_pos.FieldByName('DW02_POSICAO').AsString);
      Query_op03_mp.First;
      Query_op03_mp_tot.First;


      if (copy(query_grade_pos.FieldByName('DW02_POSICAO').AsString,1,3)='CAB') or
         (copy(Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString,1,3)='ROD') then
         begin
         While not Query_op03_mp_tot.Eof do
            begin
            fGerarEvento('1473 - vai apendar rodape posicao '+Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString );

            mem_grade.append;
            Query_grade.first;

            While not Query_Grade.eof do
               begin
               if mcol>mQtdCol-1 then
                  begin
                  fGerarEvento('1482 mcol '+Inttostr(mcol)+' qtd col mtdcol '+inttostr(mQtdCol)+' - vai apendar rodape  posicao '+Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString);

                  Query_Grade.Next;
                  Continue;
                  end;
               fGerarEvento('1487 nos dados eando rodape! posicao '+Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString);

               if mprim then
                  mTamcol_array[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
               mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
               mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mTamcol_array[mcol];
               mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
               mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
               mMesclar_ColAcum:=0;
               if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                  begin
                  for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                     begin
                     mMesclar_ColAcum:=mMesclar_ColAcum+mTamcol_array[x_Mesclar];
                     end;
                  mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                  end;

               mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
               mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
               mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mCampoValor:=Query_op03_mp_tot.fieldbyName(
                   Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
               if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                  mCampoValor:=Extenso(valfloat(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                  mCampoValor:=Extenso2(valint(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                  begin
                  try
                     mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                  except
                     end;
                  end
               else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                  begin
                  try
                  if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                     (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                     mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                  else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                     mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                  else
                     mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                  except
                     end;
                  end;


               mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);



               Query_Grade.Next;
               mcol:=mcol+1;
               end;
            mem_grade.Post;
           fGerarEvento('1549 gravou '+Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString);
            Query_op03_mp_tot.Next;
            mPrim:=false;
            end

         end
      else
         begin
        fGerarEvento('1626 - query mp 03 firts');

         Query_op03_mp.First;
         While not Query_op03_mp.Eof do
            begin

            mem_grade.append;
            Query_grade.First;
            mCol:=0;
            While not Query_Grade.eof do
               begin

               if mcol>mQtdCol-1 then
                  begin
                  Query_Grade.Next;
                  Continue;
                  end;
              fGerarEvento('1643 - vai testar');


               if mprim then
                  mTamcol_array[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
               mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
               mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mTamcol_array[mcol];
               mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
               mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
               mMesclar_ColAcum:=0;
               if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                  begin
                  for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                     begin
                     mMesclar_ColAcum:=mMesclar_ColAcum+mTamcol_array[x_Mesclar];
                     end;
                  mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                  end;

               mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
               mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
               mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;


            fGerarEvento('1667 - vai testar');

               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_op03_mp.fieldbyName(
                  Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;


               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mCampoValor:=Query_op03_mp.fieldbyName(Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
               if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                  mCampoValor:=Extenso(valfloat(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                  mCampoValor:=Extenso2(valint(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                  begin
                  try
                     mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                  except
                     end;
                  end
               else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                  begin
                  try
                  if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                     (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                     mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                  else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                     mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                  else
                      mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor);
                  except
                     end;
                  end;
              fGerarEvento('1704 - vai testar');

               mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;
               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);
               Query_Grade.Next;
               mcol:=mcol+1;
               end;
            mem_grade.Post;
            Query_op03_mp.Next;
            mPrim:=false;
            fGerarEvento('1714 - vai testar');

            end;
         end;
      Query_grade_pos.Next;
      end;

   end;
// termino materias primas


// inicio material de embalagem
   procedure fGerarGradeMaterialEmbalagem;
   var
   x_mesclar: Integer;

   begin
   While not Query_grade_pos.eof do
      begin
      Query_Grade.Close;
      Query_Grade.SQL.Clear;
      Query_Grade.SQL.Add('select  DW02_CODEMP, '
                          +'  DW02_NOMREL, '
                          +'  DW02_NOMGRADE, '
                          +'  DW02_POSICAO, '
                          +'  DW02_COLUNA, '
                          +'  DW02_TIPOCAMPO, '
                          +'  DW02_CAMPOOUTEXTO, '
                          +'  DW02_TAMANHO, '
                          +'  DW02_ALINHAMENTO, '
                          +'  DW02_FORMATO, '
                          +'  DW02_DATATYPE, '
                          +'  DW02_FUNDO, '
                          +'  DW02_MESCLAR_FIN, '
                          +'  DW02_CORFUNDO, '
                          +'  DW02_CORFONTE, '
                          +'  DW02_TAMANHO_DIG, '
                          +'  DW02_FONTE_TAMANHO '
                          +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                          +'  and DW02_NOMREL=:NOMREL '
                          +'  and DW02_NOMGRADE=:NOMGRADE '
                          +'  and DW02_POSICAO=:POSICAO '
                          +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
      Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
      Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
      Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
      Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString;
      Query_Grade.open;
      mCol:=0;
        fGerarEvento('1538 - lendo grade posicaso '+Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString+'/'
                                                   +Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString);

      Query_op03_embalagem.First;
      Query_op03_embalagem_tot.First;


      if (copy(query_grade_pos.FieldByName('DW02_POSICAO').AsString,1,3)='CAB') or
         (copy(Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString,1,3)='ROD') then
         begin
         While not Query_op03_embalagem_tot.Eof do
            begin

            mem_grade.append;
            Query_grade.first;

            While not Query_Grade.eof do
               begin
               if mcol>mQtdCol-1 then
                  begin
                  Query_Grade.Next;
                  Continue;
                  end;

               if mprim then
                  mTamcol_array[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
               mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
               mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mTamcol_array[mcol];
               mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
               mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
               mMesclar_ColAcum:=0;
               if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                  begin
                  for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                     begin
                     mMesclar_ColAcum:=mMesclar_ColAcum+mTamcol_array[x_Mesclar];
                     end;
                  mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                  end;

               mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
               mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
               mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mCampoValor:=Query_op03_embalagem_tot.fieldbyName(
                   Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
               if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                  mCampoValor:=Extenso(valfloat(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                  mCampoValor:=Extenso2(valint(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                  begin
                  try
                     mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                  except
                     end;
                  end
               else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                  begin
                  try
                  if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                     (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                     mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                  else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                     mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                  else
                     mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                  except
                     end;
                  end;


               mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);



               Query_Grade.Next;
               mcol:=mcol+1;
               end;
            mem_grade.Post;
            Query_op03_embalagem_tot.Next;
            mPrim:=false;
            end

         end
      else
         begin
        fGerarEvento('1626 - query mp 03 firts');

         Query_op03_embalagem.First;
         While not Query_op03_embalagem.Eof do
            begin

            mem_grade.append;
            Query_grade.First;
            mCol:=0;
            While not Query_Grade.eof do
               begin

               if mcol>mQtdCol-1 then
                  begin
                  Query_Grade.Next;
                  Continue;
                  end;
              fGerarEvento('1643 - vai testar');


               if mprim then
                  mTamcol_array[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
               mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
               mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mTamcol_array[mcol];
               mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
               mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
               mMesclar_ColAcum:=0;
               if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                  begin
                  for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                     begin
                     mMesclar_ColAcum:=mMesclar_ColAcum+mTamcol_array[x_Mesclar];
                     end;
                  mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                  end;

               mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
               mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
               mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;


            fGerarEvento('1667 - vai testar');

               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_op03_embalagem.fieldbyName(
                  Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;


               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mCampoValor:=Query_op03_embalagem.fieldbyName(Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
               if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                  mCampoValor:=Extenso(valfloat(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                  mCampoValor:=Extenso2(valint(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                  begin
                  try
                     mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                  except
                     end;
                  end
               else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                  begin
                  try
                  if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                     (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                     mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                  else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                     mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                  else
                      mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor);
                  except
                     end;
                  end;
              fGerarEvento('1704 - vai testar');

               mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;
               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);
               Query_Grade.Next;
               mcol:=mcol+1;
               end;
            mem_grade.Post;
            Query_op03_embalagem.Next;
            mPrim:=false;
            fGerarEvento('1714 - vai testar');

            end;
         end;
      Query_grade_pos.Next;
      end;

   end;


// termino material de embalagem

begin
   fGerarEvento('1001 - chegou vai ler o arquivo');

if not fLerArquivoParticionadoBlob(pNomeRel, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI',mNomeArq,[],[]) then
   begin
   result:=false;
   exit;
   end;

   fGerarEvento('1009 - ja lido o arquivo');

try

Query_Grade_Pos:=nil;
Query_op01:=nil;
Query_Grade:=nil;
Query_op02_profab:=nil;
Query_op03_mp:=nil;
Query_op03_mp_tot:=nil;
Query_op03_embalagem:=nil;
Query_op03_embalagem_tot:=nil;
Query_etapas:=nil;
Query_DWord01:=nil;
Query_Grade_Res:=nil;
   fGerarEvento('1022 - colocou no estado de nil as tabelas' );


   fGerarEvento('1026 - criou relatorio');

RE_relatorio.Lines.Clear;
try
   RE_relatorio.Lines.LoadFromFile(mnomearq);
except on e : exception do
   begin
   Messagedlg('Erro ao ler arquivo '+e.message,mterror,[mbOk],0);
   result:=false;
   exit;
   end;
   end;

Query_op01:=tQuery.Create(Nil);
Query_op01.DatabaseName:='SG_ASSOC';

Query_op02_profab:=tQuery.Create(Nil);
Query_op02_profab.DatabaseName:='SG_ASSOC';

Query_op03_mp:=tQuery.Create(Nil);
Query_op03_mp.DatabaseName:='SG_ASSOC';

Query_op03_mp_tot:=tQuery.Create(Nil);
Query_op03_mp_tot.DatabaseName:='SG_ASSOC';


Query_op03_embalagem:=tQuery.Create(Nil);
Query_op03_embalagem.DatabaseName:='SG_ASSOC';

Query_op03_embalagem_tot:=tQuery.Create(Nil);
Query_op03_embalagem_tot.DatabaseName:='SG_ASSOC';

Query_etapas:=tQuery.Create(Nil);
Query_etapas.DatabaseName:='SG_ASSOC';


// inicio licencas
   fGerarEvento('1054 - criou tabelas');

Query_op01.Close;

Query_op01.Sql.Clear;
Query_op01.SQL.add('Select  OP1_CODEMP,  OP1_FABENV,  OP1_LOTSEQ'
                   +',  OP1_CODIGO as numop '
                   +',  OP1_NOME,  OP1_ORIGEM '
                   +',  OP1_DATA as dataemi '
                   +',  to_char(OP1_DATA, '+QuotedStr('MM/YYYY')+') as MesAnoEmi '


                   +',  OP1_DATAPREV,  OP1_LOTE '
                   +',  OP1_DATAVEN '
                   +',  OP1_TMPPREV  as QtdPrev '
                   +',  OP1_TMPUTIL as Qtdutil '
                   +',  OP1_TOTPREV '
                   +',  OP1_TOTPROD,  OP1_STATUS,  OP1_SITUACAO,  OP1_QTDMAN '
                   +',  OP1_SITMP,  OP1_SITACAB,  OP1_OBS01,  OP1_OBS02 '
                   +',  OP1_OBS03,  OP1_OBS04,  OP1_OBS05,  OP1_OBS06,  OP1_OBS07 '
                   +',  OP1_OBS08,  OP1_OBS09,  OP1_OBS10,  OP1_QTD_ETAPAS '
                   +',  OP1_TMPUTIL_MOTIVO,  OP1_LOCARMAZENAMENTO,  OP1_PEDORI_CHAVE '
                   +',  OP1_PEDORI_LOTSEQ,  OP1_PEDORI_CODEMP,  OP1_CHAVE_FRAC '
                   +',  OP1_CHAVE_FRAC_ANO,  OP1_TIPO_OP '
                   +',  OP1_NOMEREL_PADRAO '
                   +' ,OP1_DATA as DatFab '
                   +' ,OP1_DATAVEN as DatVal  '

                   +' , '+QuotedStr('LOTEOP01')+' as LOTE '

                   +' from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(pLotSeq)

                   +' and OP1_CODIGO=0'+Inttostr(pChave));


try
   Query_op01.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op01,164,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;

if Query_op01.isempty then
  begin
  Fmensagem('Chave '+IntToStr(pChave)+'/'+Inttostr(pLotSeq)+' não Encontrada!',0,['0'],0);
  pfechartudo;
  exit;
  end;

   fGerarEvento('1108 - gerar op02 prodfab');

Query_op02_profab.Close;
Query_op02_profab.SQL.Clear;
Query_op02_profab.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO AS CodproMask, '
                   +'       OP2_CODPRO AS Codpro, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_QTDPREV as qtdprev, '
                   +'       OP2_QTDPROD as Qtdutil, '
                   +'       OP2_QTDPROD_MOTIVO, '
                   +'       OP2_PU, '
                     +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE as NumLot, '
                   +'       OP2_FAB_VCTO as DatVal, '
                   +'       OP2_FAB_DTFAB as DatFab , '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       CASE WHEN OP2_QTDPREV>0 AND OP2_QTDPROD>0 AND OP2_QTDPREV<>OP2_QTDPROD THEN '
                   +'       (OP2_QTDPREV-OP2_QTDPROD) * 100 / OP2_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS, '
                   +'       PDNOME as NomPro'
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML as QTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +'       ,PDAPRES AS Apresent '
                   +'      ,PDOBS_NEW AS Observacao_Prod'
                   +'      ,PDS_TEXTO2 AS PDS_TEXTO as Desc_Sobre '
//                   +' ,0 AS FORM_CENTESIMAL '
//                   +' ,0 AS FORM_PADRAO '
                   +' , '+QuotedStr('LOTEOP02_PROFAB')+' as LOTE '

                   +' from CADOP02,CADPRO,CADPRO_SOBRE '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_FABENV=0 and '
                   +' OP2_LOTSEQ=0'+IntToStr(pLotSeq)
                   +' and OP2_CODIGO=0'+Inttostr(pChave)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' AND PDS_CODPRO(+)=OP2_CODPRO '
                   +' AND PDS_PAG(+)<2 '
                   +' order by OP2_SEQ, PDNOME');

Query_op02_profab.sql.text:='Select p2.*, '
                           +' lpad(rownum,3,'+QuotedStr('  ')+') || '+QuotedStr('.')+' ||NomPro as SEQ_NOMPRO  from ('
                           +Query_op02_profab.sql.text+' ) p2 ';


//   ex_erroSql_Novo(Query_op02_profab,221,'_stru','user');

try
   Query_op02_profab.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op02_profab,221,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;
   fGerarEvento('1170 - gerar op03 mp');

Query_op03_mp.close;
Query_op03_mp.SQL.clear;




Query_op03_mp.SQL.add('Select OP3_CODEMP , '
                   +'  OP3_CODIGO, '
                   +'  OP3_SEQ, '
                   +'  OP3_CODMAT, '
                   +'  OP3_NUMERO, '
                   +'  OP3_QTDPREV, '
                   +'  OP3_QTDUTIL, '
                   +'  OP3_QTDUTIL_MOTIVO, '
                   +'  OP3_PU, '
                   +'  OP3_LOTSEQ, '
                   +'  OP3_FABENV, '
                   +'  OP3_LOTE, '
                   +'  OP3_LOTE_RE,'
                   +'  OP3_DTVCTO, '
                   +'  OP3_SITMP, '
                   +'  OP3_ORIGEM '
                   +'  ,PDCODPRO '
                   +'  ,PDNOME '
                   +'  ,PDUND '
                   +'  ,PDNOME2 '
                   +'  ,(SELECT sum(OP3_QTDUTIL)  from CADOP03 interno where interno.OP3_LOTSEQ=externo.OP3_LOTSEQ '
                   +' and interno.OP3_CODIGO=externo.OP3_CODIGO '
                   +' and interno.OP3_CODEMP=externo.OP3_CODEMP '
                   +' and interno.OP3_CODMAT=externo.OP3_CODMAT '

                   +' and OP3_LOTSEQ=0'+IntToStr(pLotSeq)
                   +' and OP3_CODIGO=0'+Inttostr(pChave)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' ) AS TOTAL_QTDUTIL  '


                   +' ,(SELECT MAX(CPPERCENT_REST) FROM CADCOMP WHERE CPCODPRO=9 AND CPCODMAT=OP3_CODMAT)  AS FORM_CENTESIMAL '
                   +' ,(SELECT MAX(CPQTD_PAD) FROM CADCOMP WHERE CPCODPRO=:CODPRO_ACAB AND CPCODMAT=OP3_CODMAT)  AS FORM_PADRAO '
                   +', NVL( (SELECT MAX((CPQTD_PAD*OP3_QTDPREV)) FROM CADCOMP WHERE CPCODPRO=:CODPRO_ACAB AND CPCODMAT=OP3_CODMAT),0)   AS FORM_PADRAO_TOTAL '


                   +'  ,     CASE WHEN OP3_QTDPREV>0 AND OP3_QTDUTIL>0 AND OP3_QTDPREV<>OP3_QTDUTIL THEN '
                   +'       (OP3_QTDPREV-OP3_QTDUTIL) * 100 / OP3_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS '
                   +'   ,OP3_LOTE || '+QuotedStr(' ')+' || CASE WHEN OP3_DTVCTO IS NULL OR OP3_DTVCTO<'+QuotedStr('01/01/1900')+' THEN '+QuotedStr('')+' ELSE '
                   +'                TO_CHAR(OP3_DTVCTO, '+QuotedStr('DD/MM/YYYY')+') END AS LOTVENC '

                   +' ,PDCODGRU AS CODGRU '
                   +' ,PDNOMGRU AS NOMGRU '
                   +' ,PDMARCA '
                   +' , OP3_LOTE as LOTE '

                   +'   from CADOP03 externo,CADPRO '
                   +'   where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP3_FABENV=0'
                   +' and OP3_LOTSEQ=0'+IntToStr(pLotSeq)
                   +' and OP3_CODIGO=0'+Inttostr(pChave)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' and PDCODPRO=OP3_CODMAT '
                   +' order by OP3_SEQ, PDNOME ');

Query_op03_mp.sql.text:='Select p2.*, round(  ((OP3_QTDUTIL/TOTAL_QTDUTIL) * FORM_CENTESIMAL),3) AS PERC_FORM_CENTESIMAL,  '
                           +' lpad(rownum,3,'+QuotedStr('  ')+') || '+QuotedStr('.')+' || PDNOME as SEQ_NOMPRO  from ('
                           +Query_op03_mp.sql.text+' ) p2 ';
Query_op03_mp.ParambyName('CODPRO_ACAB').AsFloat:=Query_op02_profab.Fieldbyname('CODPRO').AsFloat;

ex_erroSql_Novo(Query_op03_mp,275,'_stru','user');

try
   Query_op03_mp.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op03_mp,275,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;
fGerarEvento('1224 - gerar op03 embalagem');

Query_op03_mp_tot.close;
Query_op03_mp_tot.sql.Clear;
Query_op03_mp_tot.sql.add('Select count(*) as TOT_REG '
                         +',sum(OP3_QTDPREV) as TOT_OP3_QTDPREV '
                         +',sum(OP3_QTDUTIL) as TOT_OP3_QTDUTIL '
                         +',sum(FORM_CENTESIMAL) as TOT_FORM_CENTESIMAL '
                         +',sum(PERC_FORM_CENTESIMAL) as TOT_PERC_FORM_CENTESIMAL '
                         +',sum(FORM_PADRAO) as TOT_FORM_PADRAO '
                         +',sum(FORM_PADRAO_TOTAL) as TOT_FORM_PADRAO_TOTAL '
                         +',sum(PERC_PERDAS) as TOT_PERC_PERDAS '
                         +' from ( '
                         +Query_op03_mp.sql.Text
                         +') t2 ');

Query_op03_mp_tot.ParambyName('CODPRO_ACAB').AsFloat:=Query_op02_profab.Fieldbyname('CODPRO').AsFloat;
try
   Query_op03_mp_tot.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op03_mp_tot,1403,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;



Query_op03_embalagem.close;
Query_op03_embalagem.SQL.clear;
Query_op03_embalagem.SQL.add('Select OP3_CODEMP , '
                   +'  OP3_CODIGO, '
                   +'  OP3_SEQ, '
                   +'  OP3_CODMAT as ME_CODPRO, '
                   +'  OP3_NUMERO, '
                   +'  OP3_QTDPREV AS ME_QTDPREV, '
                   +'  OP3_QTDUTIL AS ME_QTDUTIL, '
                   +'  OP3_QTDUTIL_MOTIVO, '
                   +'  OP3_PU, '
                   +'  OP3_LOTSEQ, '
                   +'  OP3_FABENV, '
                   +'  OP3_LOTE, '
                   +'  OP3_LOTE_RE,'
                   +'  OP3_DTVCTO, '
                   +'  OP3_SITMP, '
                   +'  OP3_ORIGEM '
                   +'  ,PDCODPRO '
                   +'  ,PDNOME AS ME_NOMPRO'
                   +'  ,PDUND AS ME_UND '
                   +'  ,PDNOME2 '
                   +'  ,     CASE WHEN OP3_QTDPREV>0 AND OP3_QTDUTIL>0 AND OP3_QTDPREV<>OP3_QTDUTIL THEN '
                   +'       (OP3_QTDPREV-OP3_QTDUTIL) * 100 / OP3_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS '

                   +' ,PDCODGRU AS CODGRU '
                   +' ,PDNOMGRU AS NOMGRU '
                   +' ,PDMARCA '

                   +' ,0 AS FORM_CENTESIMAL '
                   +' ,CASE WHEN PDQTDGRML>0 THEN ROUND((PDQTDGRML*OP3_QTDUTIL),3) ELSE 0  END AS ME_QTDPADRAO '
                   +' , OP3_LOTE as LOTE '

                   +'   ,OP3_LOTE || '+QuotedStr(' ')+' || CASE WHEN OP3_DTVCTO IS NULL OR OP3_DTVCTO<'+QuotedStr('01/01/1900')+' THEN '+QuotedStr('')+' ELSE '
                   +'                TO_CHAR(OP3_DTVCTO, '+QuotedStr('DD/MM/YYYY')+') END AS ME_LOTVENC '

                   +'   from CADOP03,CADPRO '
                   +'   where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP3_FABENV=1'
                   +' and OP3_LOTSEQ=0'+IntToStr(pLotSeq)
                   +' and OP3_CODIGO=0'+Inttostr(pChave)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' and PDCODPRO=OP3_CODMAT '
                   +' order by OP3_SEQ, PDNOME ');

Query_op03_embalagem.sql.text:='Select p2.*, '
                           +'  lpad(rownum,3,'+QuotedStr('  ')+') || '+QuotedStr('.')+' || ME_NOMPRO as SEQ_NOMPRO  from ('
                           +Query_op03_embalagem.sql.text+' ) p2 ';



try
   Query_op03_embalagem.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op03_embalagem,330,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;


Query_op03_embalagem_tot.close;
Query_op03_embalagem_tot.sql.Clear;
Query_op03_embalagem_tot.sql.add('Select count(*) as TOT_REG '
                         +',sum(ME_QTDPREV) as TOT_ME_QTDPREV '
                         +',sum(ME_QTDUTIL) as TOT_ME_QTDUTIL '
                         +',sum(FORM_CENTESIMAL) as TOT_FORM_CENTESIMAL '
                         +',sum(ME_QTDPADRAO) as TOT_ME_QTDPADRAO '
                         +',sum(PERC_PERDAS) as TOT_PERC_PERDAS '
                         +' from ( '
                         +Query_op03_embalagem.sql.Text
                         +') t2 ');

try
   Query_op03_embalagem_tot.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_op03_embalagem_tot,1799,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;
// ex_erroSql_Novo(Query_op03_embalagem_tot,1799,'_stru','user');


   fGerarEvento('1277 - gerar etapas');

Query_etapas.close;
Query_etapas.SQL.Add('Select * from CADOP_ETA where '
                   +' ETA_CODEMP=:CODEMP '
                   +' and ETA_CHAVE_OP=:CHAVE '
                   +' and ETA_CHAVE_OP_ano=:CHAVE_ANO '
                   +' order by ETA_DATHOR_INIPROC ');
query_etapas.ParamByName('CODEMP').AsInteger:=codemp;
query_etapas.ParamByName('CHAVE').AsInteger:=pchave;
query_etapas.ParamByName('CHAVE_ANO').AsInteger:=plotseq;

try
   Query_etapas.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Query_etapas,349,'_stru'+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;



   fGerarEvento('1301 - gerou etapas');



result:=true;






if not pOriginal then
   begin
   for x_sub:=0 to high(Items_leg_op01) do
      begin
//      findtext   := copy(items_leg_op01[x_sub].NomeLegenga,2,length(items_leg_op01[x_sub].NomeLegenga)-2);
      findtext   := items_leg_op01[x_sub].NomeLegenga;
      replacetext:= Query_op01.Fieldbyname(items_leg_op01[x_sub].NomeLegenga).asstring;
      if items_leg_op01[x_sub].tipo_campo=tipocampo_extenso_reais then
         replacetext:=Extenso(valfloat(replacetext))
      else if items_leg_op01[x_sub].tipo_campo=tipocampo_extenso_numero then
         replacetext:=Extenso2(valint(replacetext))
      else if items_leg_op01[x_sub].tipo_campo=tipocampo_extenso_data then
         replacetext:=Data(fStringtodatetime(replacetext),0)
      else if items_leg_op01[x_sub].tipo_campo=fdt2 then
         replacetext:=FormatDateTime(items_leg_op01[x_sub].tipo_campo, fStringtodate(replacetext))
      else if items_leg_op01[x_sub].tipo_campo=tipocampo_padrao then
         replacetext:=FormatFloat(items_leg_op01[x_sub].tipo_campo, valfloat(replacetext));

      replacetext:=AnsiToAscii(replacetext);
      RE_RELATORIO.Lines.Text:=fSubstituirtexto(RE_RELATORIO.Lines.Text,findtext,replacetext);
      fGerarEvento('1316 - procurando ['+findtext+'] substituindo por ['+replacetext+']');

      end;
   fGerarEvento('1329 - substituiu cadop 01');

// CADOP02

   for x_sub:=0 to high(Items_leg_op02) do
      begin
      findtext   := Items_leg_op02[x_sub].NomeLegenga;
//      findtext   := copy(items_leg_op01[x_sub].NomeLegenga,2,length(items_leg_op01[x_sub].NomeLegenga)-2);


      IF Items_leg_op02[x_sub].NomeLegenga='Desc_Sobre' then
         fGerarEvento('descricao do sobre '+Query_op02_profab.Fieldbyname(Items_leg_op02[x_sub].NomeLegenga).asstring+' tipo do campo '+Items_leg_op02[x_sub].tipo_campo);
      replacetext:= Query_op02_profab.Fieldbyname(Items_leg_op02[x_sub].NomeLegenga).asstring;
      if Items_leg_op02[x_sub].tipo_campo=tipocampo_extenso_reais then
         replacetext:=Extenso(valfloat(replacetext))
      else if Items_leg_op02[x_sub].tipo_campo=tipocampo_extenso_numero then
         replacetext:=Extenso2(valint(replacetext))
      else if Items_leg_op02[x_sub].tipo_campo=tipocampo_extenso_data then
         replacetext:=Data(fStringtodatetime(replacetext),0);
      replacetext:=AnsiToAscii(replacetext);
      RE_RELATORIO.Lines.Text:=fSubstituirtexto(RE_RELATORIO.Lines.Text,findtext,replacetext);
      fGerarEvento('1323 - procurando ['+findtext+'] substituindo por ['+replacetext+']');

      end;
   fGerarEvento('1348 - substituiu cadop02');


// CADOP02






   fGerarEvento('1368 - gerar grade resumida');



   Query_Grade_Res:=TQuery.Create(nil);
   Query_Grade_Res.DatabaseName:='SG_ASSOC';
   Query_Grade_Res.SQL.Clear;
   Query_Grade_Res.SQL.Add('select DW02_NOMGRADE,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' group by DW02_NOMGRADE '
                            +' order by DW02_NOMGRADE ');
   Query_Grade_Res.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Grade_Res.ParamByName('NOMREL').AsString :=pNomeRel;
   Query_Grade_Res.open;


      fGerarEvento('1375 - gerar grade');


   Query_Grade:=TQuery.Create(nil);
   Query_Grade.DatabaseName:='SG_ASSOC';



   Query_DWord01:=tQuery.Create(Nil);
   Query_DWord01.DatabaseName:='SG_ASSOC';

   Query_Grade_Pos:=tQuery.Create(Nil);
   Query_Grade_Pos.DatabaseName:='SG_ASSOC';

   mTextoSaida:=tStringList.create;

//   mem_grade:=TRxMemoryData.Create(nil);

      fGerarEvento('1393 - caddword01 wHile ');

      fGerarEvento('1395 - grade res  '+iif(Query_Grade_Res.isempty,'vazio','cheio') );

   While not Query_Grade_Res.Eof do
      begin
      fGerarEvento('1399 - grade procurada '+query_grade_res.fieldbyName('DW02_NOMGRADE').asString);

      Query_DWord01.Sql.Clear;
      Query_DWord01.Sql.Add('select DW01_QTDCOL,NVL(DW01_TABELA,0) AS DW01_TABELA FROM CADDWORD_TAB01 '
                               +' where DW01_CODEMP=:CODEMP '
                               +' and DW01_NOMREL=:NOMREL '
                               +' and DW01_NOMGRADE=:NOMGRADE ');
      Query_DWord01.ParamByName('CODEMP').AsInteger:=codemp;
      Query_DWord01.ParamByName('NOMREL').AsString :=pNomeRel;
      Query_DWord01.ParamByName('NOMGRADE').AsString :=query_grade_res.fieldbyName('DW02_NOMGRADE').asString;
      Query_DWord01.open;
      if query_dWord01.Fields[0].AsInteger<1 then
         begin
         fGerarEvento('1411 - grade nao encontrada '+query_grade_res.fieldbyName('DW02_NOMGRADE').asString);

         Query_Grade_Res.Next;
         Continue;
         end;

      mQtdcol:=query_dWord01.Fields[0].AsInteger;
      setlength(mTamcol_array, mQtdCol+1);
      mGrade:='';
         fGerarEvento('1415 - gerar grade');
      mem_grade.close;
      mem_grade.FieldDefs.Clear;
      for mCol:=0 to mQtdCol-1 do
         begin
         mem_grade.FieldDefs.Add('TIPOCAMPO_'+inttostr(mcol) ,ftstring,30,false); // dados imagem [00]
         mem_grade.FieldDefs.Add('TAMCOL_'+inttostr(mcol) ,ftinteger,0,false); // tamanho em pixes da coluna [01]
         mem_grade.FieldDefs.Add('COLUNA_'+inttostr(mcol) ,ftinteger,0,false); // numero da coluna [02]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_'+inttostr(mcol) ,ftinteger,0,false); // mesclar coluna até [03]
         mem_grade.FieldDefs.Add('COR_FONTE_'+inttostr(mcol) ,ftString,10,false); // cor da fonte [04]
         mem_grade.FieldDefs.Add('COR_FUNDO_'+inttostr(mcol) ,ftString,10,false); // cor do fundo [05]
         mem_grade.FieldDefs.Add('ALINHAMENTO_'+inttostr(mcol) ,ftinteger,0,false); // 0-direito 1-centro 2-esquerdo [06]
         mem_grade.FieldDefs.Add('VALOR_CAMPO_'+inttostr(mcol) ,ftstring,3000,false); // valor do campo [07]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_TAMGER_'+inttostr(mcol) ,ftInteger,0,false); // Mesclar até coluna inteiro [08]
         mem_grade.FieldDefs.Add('FONTE_TAMANHO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]
         mem_grade.FieldDefs.Add('FONTE_ITALICO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]
         mem_grade.FieldDefs.Add('FONTE_NEGRITO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]
         mem_grade.FieldDefs.Add('FONTE_SUBLINHADO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]


         end;





   fGerarEvento('1439 - gerar grade pos');

      Query_Grade_Pos.Close;
      Query_Grade_Pos.SQL.Clear;
      Query_Grade_Pos.SQL.Add('select  DW02_NOMGRADE,DW02_POSICAO,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' and DW02_NOMGRADE=:NOMGRADE '
                            +' group by DW02_NOMGRADE,DW02_POSICAO '
                            +' order by DW02_POSICAO ');
      Query_Grade_Pos.ParamByName('CODEMP').AsInteger:=codemp;
      Query_Grade_Pos.ParamByName('NOMREL').AsString :=pNomeRel;
      Query_Grade_Pos.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.fieldbyName('DW02_NOMGRADE').asstring;
      Query_Grade_Pos.open;
      mPrim:=true;
      mem_grade.open;
        fGerarEvento('1499 - vai testar');

      if Query_DWord01.FieldByName('DW01_TABELA').AsInteger=1 then    // 1-MATERIAS PRIMAS 2-MATERIAL DE EMBALAGEM
         begin
         fGerarEvento('1503 - no mp');
         fGerarGradeMateriasPrimas;
         end
      else if Query_DWord01.FieldByName('DW01_TABELA').AsInteger=2 then // 2-material de embalagem
         begin
//licencas
         fGerarGradeMaterialEmbalagem;
// termino licencas

         end
      else
         begin
        fGerarEvento('24711 - SEM DADOS PARA GERAR GRADE');

         end;
      mTextoSaida.Clear;
      fGerarEvento('2161 - gear grade');

      if fGerarTextoGrade(mem_grade, mTextoSaida) then
         begin
         fGerarEvento('2205 - QUANTIDADE DE resitros da grande '+IntToStr(mem_grade.RecordCount)+' numero de campos '+Inttostr(mem_grade.Fields.Count));


//         findtext   :='<w:t>%'+Query_Grade_pos.fieldbyname('DW02_NOMGRADE').asstring+'%</w:t>';
         findtext   :='<w:t>[%'+Query_Grade_pos.fieldbyname('DW02_NOMGRADE').asstring+'%]</w:t>';
         x_seq:=x_seq+1;
         mTextoSaida.Savetofile('c:\lll001_normal_'+inttostr(x_seq)+'.txt');
         replacetext:=mTextoSaida.Text;
             fGerarEvento('2214 - procurando '+findtext+' substituir '+replacetext);


         If Pos(uppercase(findText), uppercase(RE_relatorio.Lines.Text)) > 0 Then
            Begin
            RE_RELATORIO.Lines.Text:=fSubstituirtexto(RE_RELATORIO.Lines.Text,findtext,replacetext);
             fGerarEvento('2218 - substituiu procurando '+findtext+' substituir '+replacetext);

            end;
         end;

      Query_Grade_Res.Next;
      end;

   fGerarEvento('2106- nao endtrou em grades!');

   //ShowMessage('Quantidade de registros: '+IntToStr(mem_grade.RecordCount));

   freeandnil(query_grade_res);
   freeandnil(query_grade);
   freeandnil(mTextoSaida);
   end;
pfechartudo;


result:=true;
pArquivoSaida:=mnomearq;
// Showmessage('Novo arquivo' + mNomeArq);
deletefile(pchar(mnomearq));
RE_relatorio.Lines.SaveToFile(mnomearq);

except on e : exception do
   begin
   Messagedlg('Erro ao ler arquivo '+e.message,mterror,[mbOk],0);
   result:=false;
   exit;
   end;
   end;





end;


end.
