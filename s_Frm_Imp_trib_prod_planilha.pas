unit s_Frm_Imp_trib_prod_planilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,dbtables;

type
  TFrm_Imp_trib_prod_planilha = class(TForm)
    Panel1: TPanel;
    BBGerar: TBitBtn;
    GroupBox1: TGroupBox;
    src_planilha: TDataSource;
    cds_planilha: TClientDataSet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    gb_inconsistencias: TGroupBox;
    memo_inconsistencias: TMemo;
    opd1: TOpenDialog;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure BBGerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAtualizarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }

    mNomeTabelaTxtDados: string;
    mNomeTabelaCtlCab: string;

    procedure fConfigClientDataset;


    function fAtendeExigencias: boolean;

    procedure fCarregarCds;


    function fMontarSqlLdr: boolean;

    function fCriarCadproTemp(out mNomeSaida: String): boolean;

    function fTratarZerosEsquerda(pTexto: String; pQtdCar: integer): String;


  public
    { Public declarations }
  end;

var
  Frm_Imp_trib_prod_planilha: TFrm_Imp_trib_prod_planilha;

const
mCodigoProduto = 0;
nome_prodto = 1;
unidaqde = 2;
codigo_barras = 3;
codncm = 4;
cest = 5;
data_ult_saida = 6;
pdtabicm = 7;
aliq_icms = 8;
origem_produto = 9;
cst_revenda_dentro_estado=10;
cst_rev_dentro_est_consufinal = 11;
cst_revenda_fora_estado = 12;
cst_rev_fora_est_consfinal = 13;
piscofins_entrada = 14;
aliquota_pis_entrada = 15;
aliquota_cofins_entrada = 16;
aliquota_cofins_saida = 17;
piscofins_saida = 18;
aliquota_pis_saida = 19;
codbenef_rev_foraest = 20;
codbenef_cons_foraest = 21;
codbenef_rev_dentroest = 22;
codbenef_cons_dentroest = 23;


implementation

uses Func, funcoes_especificas, S_DM1, func_excecoes, lerarq, Func2;

{$R *.dfm}




procedure TFrm_Imp_trib_prod_planilha.fConfigClientDataset;
begin
cds_planilha.FieldDefs.Add('ORDEM',ftInteger,0,false);
cds_planilha.FieldDefs.Add('CODIGO_PRODUTO',ftFloat,0,false);
cds_planilha.FieldDefs.Add('NOME_PRODUTO',ftString,100,false);
cds_planilha.FieldDefs.Add('UNIDADE',ftString,3,false);
cds_planilha.FieldDefs.Add('CODIGO_BARRAS',ftFloat,0,false);
cds_planilha.FieldDefs.Add('CODNCM',ftString,10,false);
cds_planilha.FieldDefs.Add('CEST',ftString,10,false);
cds_planilha.FieldDefs.Add('DATA_ULT_SAIDA',ftDateTime,0,false);
cds_planilha.FieldDefs.Add('PDTABICM',ftString,1,false);
cds_planilha.FieldDefs.Add('ALIQ_ICMS',ftFloat,0,false);
cds_planilha.FieldDefs.Add('ORIGEM_PRODUTO',ftFloat,0,false);
cds_planilha.FieldDefs.Add('CST_REVENDA_DENTRO_ESTADO',ftString,2,false);
cds_planilha.FieldDefs.Add('CST_REV_DENTRO_EST_CONSUFINAL',ftString,2,false);
cds_planilha.FieldDefs.Add('CST_REVENDA_FORA_ESTADO',ftString,2,false);
cds_planilha.FieldDefs.Add('CST_REV_FORA_EST_CONSFINAL',ftString,2,false);
cds_planilha.FieldDefs.Add('PISCOFINS_ENTRADA',ftString,3,false);

cds_planilha.FieldDefs.Add('ALIQUOTA_PIS_ENTRADA',ftFloat,0,false);
cds_planilha.FieldDefs.Add('ALIQUOTA_COFINS_ENTRADA',ftFloat,0,false);
cds_planilha.FieldDefs.Add('ALIQUOTA_COFINS_SAIDA',ftFloat,0,false);
cds_planilha.FieldDefs.Add('PISCOFINS_SAIDA',ftString,3,false);
cds_planilha.FieldDefs.Add('ALIQUOTA_PIS_SAIDA',ftFloat,0,false);

cds_planilha.FieldDefs.Add('CODBENEF_REV_FORAEST',ftString,8,false);
cds_planilha.FieldDefs.Add('CODBENEF_CONSF_FORAEST',ftString,8,false);
cds_planilha.FieldDefs.Add('CODBENEF_REV_DENTROEST',ftString,8,false);
cds_planilha.FieldDefs.Add('CODBENEF_CONSF_DENTROEST',ftString,8,false);

cds_planilha.CreateDataSet;

cds_planilha.FieldByName('Ordem').DisplayLabel:='Ordem';
cds_planilha.FieldByName('CODIGO_PRODUTO').DisplayLabel:='Código';
cds_planilha.FieldByName('NOME_PRODUTO').DisplayLabel:='Descrição';
cds_planilha.FieldByName('UNIDADE').DisplayLabel:='Und';
cds_planilha.FieldByName('CODIGO_BARRAS').DisplayLabel:='Código de Barras';
cds_planilha.FieldByName('CODNCM').DisplayLabel:='Código Ncm';
cds_planilha.FieldByName('CEST').DisplayLabel:='Cest';
cds_planilha.FieldByName('DATA_ULT_SAIDA').DisplayLabel:='Data da Última Saida';
cds_planilha.FieldByName('PDTABICM').DisplayLabel:='Tab Icms';
cds_planilha.FieldByName('ALIQ_ICMS').DisplayLabel:='Aliq Icms';
cds_planilha.FieldByName('ORIGEM_PRODUTO').DisplayLabel:='Origem Produto';
cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').DisplayLabel:='CST P/Rev Dentro Estado';
cds_planilha.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').DisplayLabel:='Cst Cons Final Dentro do Estado';
cds_planilha.FieldByName('CST_REVENDA_FORA_ESTADO').DisplayLabel:='CST Revenda Fora do Estado';
cds_planilha.FieldByName('CST_REV_FORA_EST_CONSFINAL').DisplayLabel:='CST Cons Final Fora do Estado';
cds_planilha.FieldByName('PISCOFINS_ENTRADA').DisplayLabel:='Cst Pis/Cofins Entrada';
cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').DisplayLabel:='Aliquota Pis Entrada';
cds_planilha.FieldByName('ALIQUOTA_COFINS_ENTRADA').DisplayLabel:='Aliquota Cofins Entrada';
cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').DisplayLabel:='Aliquota Cofins Saida';
cds_planilha.FieldByName('PISCOFINS_SAIDA').DisplayLabel:='Cst Pis/Cofins Saida';
cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').DisplayLabel:='Aliquota Pis Saida';
cds_planilha.FieldByName('CODBENEF_REV_FORAEST').DisplayLabel:='Código Beneficio Revenda Fora Estado';
cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').DisplayLabel:='Código Beneficio Cons Final ';
cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').DisplayLabel:='Código Beneficio Revenda Dentro Estado ';
cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').DisplayLabel:='Código Beneficio Cons Final Dentro Estado';



end;
procedure TFrm_Imp_trib_prod_planilha.FormCreate(Sender: TObject);
begin
fConfigClientDataset;

end;

procedure TFrm_Imp_trib_prod_planilha.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp_trib_prod_planilha.BBGerarClick(Sender: TObject);
var
mNomeArq: string;
begin
if not fAtendeExigencias then
   begin
   exit;
   end;

if opd1.Execute then
   begin
   mNomeArq:=opd1.FileName;
   if (uppercase(ExtractFileExt(mNomeArq))<>'.XLS') and
      (uppercase(ExtractFileExt(mNomeArq))<>'.XLSX') and
      (uppercase(ExtractFileExt(mNomeArq))<>'.CSV') then
      begin
      fmensagem('o Arquivo tem que ser do tipo Xls(Planilha do Excel)',0,['0'],0);
      exit;
      end;
   if not Xls_To_StringGrid(StringGrid1, mNomeArq,0) then
      begin
      MessageDlg('O Arquivo '+mNomeArq+' não é válido!',mtError,[mbOk],0);
      exit;
      end;
   fCarregarCds;


   end;


end;

function TFrm_Imp_trib_prod_planilha.fAtendeExigencias: boolean;
var
query_temp: tQuery;
begin
result:=true;
query_temp:=tQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.SQL.add('Select CRAZAO,CCODCLI,CALIQA,CUF from CADCLI where CCODCLI=1');
try
   query_temp.open;
   if (query_temp.IsEmpty) or (query_temp.fieldbyName('CUF').AsString<>DM1.Tb_EmpUF.AsString) then
      begin
      MessageDlg('Para Fazer a Exportação é necessario que tenha cadastrado o cliente 1 no Estado de '+DM1.Tb_EmpUF.AsString,mtWarning,[mbOk],0);
      result:=false;
      end;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,157,'SGE','CADCLI');
   result:=false;
   end;
   end;
query_temp.close;
freeandnil(query_temp);

if not fExistePreRequisitoUsarSqlLdrSemJava then
   exit;


end;


procedure TFrm_Imp_trib_prod_planilha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree

end;

function TFrm_Imp_trib_prod_planilha.fTratarZerosEsquerda(pTexto: String; pQtdCar: integer): String;
begin
result:=copy(Formatfloat(insere('0','0',pQtdcar+1), valint(pTexto)),2,pQtdCar);


end;
procedure TFrm_Imp_trib_prod_planilha.fCarregarCds;
var
x_trib: integer;

    procedure fAdicionarMensagem(pLinha: integer; pMensagem: string);
    begin
    memo_inconsistencias.Lines.add('Linha: '+inttostr(pLinha));
    memo_inconsistencias.Lines.add(pMensagem);
    memo_inconsistencias.Lines.add(insere('*','*',100));

    end;

begin
memo_inconsistencias.Lines.clear;
cds_planilha.EmptyDataSet;
for x_trib := 2 to StringGrid1.RowCount-1 do
   begin
   if fsonumero(StringGrid1.Cells[mCodigoProduto,x_trib])=0 then
      continue;
   cds_planilha.append;


   cds_planilha.FieldByName('ORDEM').value := x_trib-1;
   cds_planilha.FieldByName('CODIGO_PRODUTO').value := fsonumero(StringGrid1.Cells[mCodigoProduto,x_trib]);
   cds_planilha.FieldByName('NOME_PRODUTO').value := StringGrid1.Cells[nome_prodto,x_trib];
   cds_planilha.FieldByName('UNIDADE').value := StringGrid1.Cells[unidaqde,x_trib];
   cds_planilha.FieldByName('CODIGO_BARRAS').value := fSonumero(StringGrid1.Cells[codigo_barras,x_trib]);
   cds_planilha.FieldByName('CODNCM').value := StringGrid1.Cells[codncm,x_trib];
   cds_planilha.FieldByName('CEST').value := StringGrid1.Cells[cest,x_trib];
   cds_planilha.FieldByName('DATA_ULT_SAIDA').value := fStringtodatetime(StringGrid1.Cells[data_ult_saida,x_trib]);
   cds_planilha.FieldByName('PDTABICM').value := StringGrid1.Cells[pdtabicm,x_trib];
   cds_planilha.FieldByName('ALIQ_ICMS').value := valfloat(StringGrid1.Cells[aliq_icms,x_trib]);
   cds_planilha.FieldByName('ORIGEM_PRODUTO').value := valint(StringGrid1.Cells[origem_produto,x_trib]);
   cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').value := fTratarZerosEsquerda(StringGrid1.Cells[cst_revenda_dentro_estado,x_trib],2);
   cds_planilha.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').value := fTratarZerosEsquerda(StringGrid1.Cells[cst_rev_dentro_est_consufinal,x_trib],2);
   cds_planilha.FieldByName('CST_REVENDA_FORA_ESTADO').value := fTratarZerosEsquerda(StringGrid1.Cells[cst_revenda_fora_estado,x_trib],2);
   cds_planilha.FieldByName('CST_REV_FORA_EST_CONSFINAL').value := fTratarZerosEsquerda(StringGrid1.Cells[cst_rev_fora_est_consfinal,x_trib],2);
   cds_planilha.FieldByName('PISCOFINS_ENTRADA').value := fTratarZerosEsquerda(StringGrid1.Cells[piscofins_entrada,x_trib],2);
   cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').value := valfloat(StringGrid1.Cells[aliquota_pis_entrada,x_trib]);
   cds_planilha.FieldByName('ALIQUOTA_COFINS_ENTRADA').value := valfloat(StringGrid1.Cells[aliquota_cofins_entrada,x_trib]);
   cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').value := valfloat(StringGrid1.Cells[aliquota_cofins_saida,x_trib]);
   cds_planilha.FieldByName('PISCOFINS_SAIDA').value := fTratarZerosEsquerda(StringGrid1.Cells[piscofins_saida,x_trib],2);
   cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').value := valfloat(StringGrid1.Cells[aliquota_pis_saida,x_trib]);
   cds_planilha.FieldByName('CODBENEF_REV_FORAEST').value := StringGrid1.Cells[codbenef_rev_foraest,x_trib];
   cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').value := StringGrid1.Cells[codbenef_cons_foraest,x_trib];
   cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').value := StringGrid1.Cells[codbenef_rev_dentroest,x_trib];
   cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').value := StringGrid1.Cells[codbenef_cons_dentroest,x_trib];
   cds_planilha.post;


   // VALIDAR


   {
   if (  (length(cds_planilha.FieldByName('NOME_PRODUTO').AsString)<1)
       or (length(cds_planilha.FieldByName('NOME_PRODUTO').AsString)<1)) then
     fAdicionarMensagem(x_trib-1,'Tamanho do Nome do Produto valido de 1 a 100 letras '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Este Produto tem '+intToStr(length(cds_planilha.FieldByName('NOME_PRODUTO').asstring)));


   if (  (length(cds_planilha.FieldByName('UNIDADE').AsString)<1)
       or (length(cds_planilha.FieldByName('UNIDADE').AsString)<1)) then
     fAdicionarMensagem(x_trib-1,'Tamanho do Nome do Produto valido de 1 a 100 letras '+
       cds_planilha.FieldByName('UNIDADE').asstring
       +' Este Produto tem '+intToStr(length(cds_planilha.FieldByName('NOME_PRODUTO').asstring)));
}



   if (  (length(cds_planilha.FieldByName('CODNCM').AsString)>1)
       and (length(cds_planilha.FieldByName('CODNCM').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Codigo NCM '+ cds_planilha.FieldByName('CODNCM').AsString+' é invalido!');





// 96190000



   if (  (length(cds_planilha.FieldByName('CODNCM').AsString)>1)
       and (length(cds_planilha.FieldByName('CODNCM').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Codigo NCM '+ cds_planilha.FieldByName('CODNCM').AsString+' é invalido!');


   if (  (length(cds_planilha.FieldByName('CEST').AsString)>1)
       and (length(cds_planilha.FieldByName('CEST').AsString)<>7)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Codigo CEST '+ cds_planilha.FieldByName('CEST').AsString+' é invalido!');




   if  ( (cds_planilha.FieldByName('ORIGEM_PRODUTO').AsInteger<0) OR
   (cds_planilha.FieldByName('ORIGEM_PRODUTO').AsInteger>8) ) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Origem do Produto'+ cds_planilha.FieldByName('PDTABICM').AsString+' é invalido!');


    if length(cds_planilha.FieldByName('PDTABICM').AsString)<1 then
       begin
       cds_planilha.edit;
       cds_planilha.FieldByName('PDTABICM').AsString:='A';
       cds_planilha.post;
       end;
   if not  ( cds_planilha.FieldByName('PDTABICM').AsString[1] in ['A','B','C','D','E','F','G','H','I'] ) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' Tab ICMS '+ cds_planilha.FieldByName('PDTABICM').AsString+' é invalido!');


  if not LocalizaArray(mcst_icms_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CST_REVENDA_DENTRO_ESTADO '+ cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').AsString+' é invalido!');



  if not LocalizaArray(mcst_icms_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CST_REVENDA_DENTRO_ESTADO '+ cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').AsString+' é invalido!');

  if not LocalizaArray(mcst_icms_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CST_REV_DENTRO_EST_CONSUFINAL '+ cds_planilha.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').AsString+' é invalido!');


  if not LocalizaArray(mcst_icms_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('CST_REVENDA_FORA_ESTADO').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CST_REVENDA_FORA_ESTADO '+ cds_planilha.FieldByName('CST_REVENDA_FORA_ESTADO').AsString+' é invalido!');


  if not LocalizaArray(mcst_icms_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('CST_REV_FORA_EST_CONSFINAL').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CST_REV_FORA_EST_CONSFINAL '+ cds_planilha.FieldByName('CST_REV_FORA_EST_CONSFINAL').AsString+' é invalido!');



  if not LocalizaArray(mcst_pis_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('PISCOFINS_ENTRADA').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' PISCOFINS_ENTRADA '+ cds_planilha.FieldByName('PISCOFINS_ENTRADA').AsString+' é invalido!');



   if ( (cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').Asfloat<0) or
        (cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').Asfloat>50)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' ALIQUOTA_PIS_ENTRADA '+ cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').AsString+' é invalido!');

   if ( (cds_planilha.FieldByName('ALIQUOTA_COFINS_ENTRADA').Asfloat<0) or
        (cds_planilha.FieldByName('ALIQUOTA_COFINS_ENTRADA').Asfloat>50)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' ALIQUOTA_COFINS_ENTRADA '+ cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').AsString+' é invalido!');


   if ( (cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').Asfloat<0) or
        (cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').Asfloat>50)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' ALIQUOTA_COFINS_SAIDA '+ cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').AsString+' é invalido!');


   if ( (cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').Asfloat<0) or
        (cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').Asfloat>50)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' ALIQUOTA_PIS_SAIDA '+ cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').AsString+' é invalido!');


  if not LocalizaArray(mcst_pis_valido, copy(Formatfloat('000', valint(cds_planilha.FieldByName('PISCOFINS_SAIDA').AsString)),2,2)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' PISCOFINS_SAIDA '+ cds_planilha.FieldByName('PISCOFINS_SAIDA').AsString+' é invalido!');


   if (  (length(cds_planilha.FieldByName('CODBENEF_REV_FORAEST').AsString)>1)
       and (length(cds_planilha.FieldByName('CODBENEF_REV_FORAEST').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CODBENEF_REV_FORAEST '+ cds_planilha.FieldByName('CODBENEF_REV_FORAEST').AsString+' é invalido!');

   if (  (length(cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').AsString)>1)
       and (length(cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CODBENEF_CONSF_FORAEST '+ cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').AsString+' é invalido!');


   if (  (length(cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').AsString)>1)
       and (length(cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CODBENEF_REV_DENTROEST '+ cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').AsString+' é invalido!');



   if (  (length(cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').AsString)>1)
       and (length(cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').AsString)<>8)) then
     fAdicionarMensagem(x_trib-1,'Produto '+
       cds_planilha.FieldByName('NOME_PRODUTO').asstring
       +' CODBENEF_CONSF_DENTROEST '+ cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').AsString+' é invalido!');




// TERMINO VALIDACAO


   end;
bbAtualizar.Enabled := memo_inconsistencias.Lines.Count=0;
gb_inconsistencias.visible := memo_inconsistencias.Lines.Count>0;


end;






function TFrm_Imp_trib_prod_planilha.fMontarSqlLdr: boolean;
var
mDadosTxt: TStringList;
mDadosCab: TStringList;
mLinha: String;
mNomeTabelaTmp: string;
mComandoExec: string;
mcomandoMerge: string;
mMotivo: String;

mFields: TStringList;
const
   mDelSqlLdr = '|';


   procedure fAdicionarFields(pNomeCampo,pTipo: String; pDefinicao: string; pTamanho: Integer);
   // 999999999999999D99
   var
   mRetorno: string;
   begin
   mRetorno := pNomeCampo ;
   if ptipo='double' then
      begin
       mRetorno := mRetorno + ' " decode(:'
      +pNomeCampo
      +',null,0,to_number(:'
      +pNomeCampo
      +', '
      +  pDefinicao + '))"';
      end
   else if ptipo='date' then
      begin
      mRetorno := mRetorno + ' date '+QuotedStr('dd/mm/yyyy hh24:mi:ss');
      end
   else if ptipo='clob' then
      begin
      mRetorno := mRetorno + ' FILLER ';
      end
   else if pTamanho>250 then
      mRetorno := mRetorno + ' char(' + inttostr(pTamanho) + ')';
   if mFields.Count<1 then
      mFields.Add(mRetorno)
   else
      mFields.Add(','+mRetorno);


   end;


begin

if not fCriarCadproTemp(mNomeTabelaTmp) then
   begin
   result:=false;
   exit;
   end;

result:=true;

if (not cds_planilha.IsEmpty) then
   begin
   mDadosTxt := TStringList.create;
   mDadosCab := TStringList.create;
   mFields := TStringList.Create;

   cds_planilha.First;


   fAdicionarFields('CODIGO_PRODUTO','integer','',0);
   fAdicionarFields('NOME_PRODUTO','string','',100);
   fAdicionarFields('UNIDADE','string','',3);
   fAdicionarFields('CODIGO_BARRAS','integer','',0);
   fAdicionarFields('CODNCM','string','',10);
   fAdicionarFields('CEST','string','',10);

   fAdicionarFields('DATA_ULT_SAIDA','date','',0);
   fAdicionarFields('PDTABICM','string','',10);
   fAdicionarFields('ALIQ_ICMS','double',quotedstr('999999999D99'),18);
   fAdicionarFields('ORIGEM_PRODUTO','integer','',0);

   fAdicionarFields('CST_REVENDA_DENTRO_ESTADO','string','',2);
   fAdicionarFields('CST_REV_DENTRO_EST_CONSUFINAL','string','',2);
   fAdicionarFields('CST_REVENDA_FORA_ESTADO','string','',2);
   fAdicionarFields('CST_REV_FORA_EST_CONSFINAL','string','',2);
   fAdicionarFields('PISCOFINS_ENTRADA','string','',2);
   fAdicionarFields('PISCOFINS_SAIDA','string','',2);
   fAdicionarFields('ALIQUOTA_PIS_ENTRADA','double',quotedstr('999999999D99'),18);
   fAdicionarFields('ALIQUOTA_COFINS_ENTRADA','double',quotedstr('999999999D99'),18);
   fAdicionarFields('ALIQUOTA_COFINS_SAIDA','double',quotedstr('999999999D99'),18);
   fAdicionarFields('ALIQUOTA_PIS_SAIDA','double',quotedstr('999999999D99'),18);
   fAdicionarFields('CODBENEF_REV_FORAEST','string','',10);
   fAdicionarFields('CODBENEF_CONSF_FORAEST','string','',10);
   fAdicionarFields('CODBENEF_REV_DENTROEST','string','',10);
   fAdicionarFields('CODBENEF_CONSF_DENTROEST','string','',10);




   While not cds_planilha.Eof do
      begin
      mLinha:=fValorIntegerSqlLdr(cds_planilha.FieldByName('CODIGO_PRODUTO').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('NOME_PRODUTO').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('UNIDADE').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorIntegerSqlLdr(cds_planilha.FieldByName('CODIGO_BARRAS').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CODNCM').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CEST').AsString);

      mLinha:=mLinha+ mDelSqlLdr +fValorDateSqlLdr(cds_planilha.FieldByName('DATA_ULT_SAIDA').AsDateTime);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('PDTABICM').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorDoubleSqlLdr(cds_planilha.FieldByName('ALIQ_ICMS').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorIntegerSqlLdr(cds_planilha.FieldByName('ORIGEM_PRODUTO').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CST_REVENDA_DENTRO_ESTADO').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CST_REVENDA_FORA_ESTADO').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CST_REV_FORA_EST_CONSFINAL').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('PISCOFINS_ENTRADA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('PISCOFINS_SAIDA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorDoubleSqlLdr(cds_planilha.FieldByName('ALIQUOTA_PIS_ENTRADA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorDoubleSqlLdr(cds_planilha.FieldByName('ALIQUOTA_COFINS_ENTRADA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorDoubleSqlLdr(cds_planilha.FieldByName('ALIQUOTA_COFINS_SAIDA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorDoubleSqlLdr(cds_planilha.FieldByName('ALIQUOTA_PIS_SAIDA').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CODBENEF_REV_FORAEST').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CODBENEF_CONSF_FORAEST').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CODBENEF_REV_DENTROEST').AsString);
      mLinha:=mLinha+ mDelSqlLdr +fValorStringSqlLdr(cds_planilha.FieldByName('CODBENEF_CONSF_DENTROEST').AsString);

      mDadosTxt.Add(mLinha);
      cds_planilha.next;
      end;
   mNomeTabelaTxtDados:=mpastatemp+mNomeTabelaTmp+'.txt';
   mNomeTabelaCtlCab:=mpastatemp+mNomeTabelaTmp+'.ctl';

   mNomeTabelaTxtDados:=fSalvarTextoparaArquivoComNome(mNomeTabelaTxtDados,mDadosTxt);
   if trim(mNomeTabelaTxtDados)='' then
      begin
      MessageDlg('Não Foi Possivel salvar o arquivo temporario',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   mDadosCab.add('options (errors=9999999, 20000  ) ');
   mDadosCab.add('                load data ');
   mDadosCab.add('                 characterset UTF8 ');
   mDadosCab.add('                 infile '+QuotedStr(mNomeTabelaTxtDados));
   mDadosCab.add('                 badfile '+QuotedStr(fRetiraExtensao(mNomeTabelaTxtDados)+'.BAD'));
   mDadosCab.add('                 discardfile '+QuotedStr(fRetiraExtensao(mNomeTabelaTxtDados)+'.DSK'));
   mDadosCab.add('                 append into table '+mNomeTabelaTmp);
   mDadosCab.add('                 fields terminated by "'+mDelSqlLdr+'"');
   mDadosCab.add('                 TRAILING NULLCOLS ');
   mDadosCab.add('                 ( ' + mFields.Text+ ')');


   mNomeTabelaCtlCab :=fSalvarTextoparaArquivoComNome(mNomeTabelaCtlCab,mDadosCAb,);
   if trim(mNomeTabelaCtlCab)='' then
      begin
      MessageDlg('Não Foi Possivel salvar o arquivo temporario',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;


    mComandoExec :='sqlldr ' +Banco_usuario+'@'  + Banco_ServerName
                + '/' + 'DEZENOVE' + ' '
                + mNomeTabelaCtlCab + ' ' +   fRetiraExtensao(mNomeTabelaTxtDados)+' silent=all ';

    fexecprog_espera(mComandoExec,0);



{
executar o merge
}

   mComandoMerge := 'MERGE INTO CADPRO t1 USING '+mQuebraLinha
                 +' (SELECT * FROM '+mNomeTabelaTmp+' ) ss '+mQuebraLinha
                 +' ON (t1.PDCODPRO = ss.CODIGO_PRODUTO) '+mQuebraLinha
                 +' when matched then '+mQuebraLinha
                 +'  update set t1.PDCODNCM = ss.CODNCM '+mQuebraLinha
                 +'            ,t1.PDCEST = ss.CEST '+mQuebraLinha
                 +'            ,t1.PDTABICM = ss.PDTABICM '+mQuebraLinha
                 +'            ,t1.PDFIS_ORIGEM = ss.ORIGEM_PRODUTO '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_ICMS_EST_REV = ss.CST_REVENDA_DENTRO_ESTADO '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_ICMS_EST_CF = ss.CST_REV_DENTRO_EST_CONSUFINAL '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_ICMS_INT_REV = ss.CST_REVENDA_FORA_ESTADO '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_ICMS_INT_CF = ss.CST_REV_FORA_EST_CONSFINAL '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_PISCOF_ENTRADA = ss.PISCOFINS_ENTRADA '+mQuebraLinha
                 +'            ,t1.PDFIS_PIS_ALIQ_ENTRADA = ss.ALIQUOTA_PIS_ENTRADA '+mQuebraLinha
                 +'            ,t1.PDFIS_COFINS_ALIQ_ENTRADA = ss.ALIQUOTA_COFINS_ENTRADA '+mQuebraLinha
                 +'            ,t1.PDFIS_COFINS_ALIQ_SAIDA = ss.ALIQUOTA_COFINS_SAIDA '+mQuebraLinha
                 +'            ,t1.PDFIS_PIS_ALIQ_SAIDA = ss.ALIQUOTA_PIS_SAIDA '+mQuebraLinha
                 +'            ,t1.PDFIS_CST_PISCOF_SAIDA = ss.PISCOFINS_SAIDA '+mQuebraLinha
                 +'            ,t1.PDCBENEF_CST_FORAE_REV = ss.CODBENEF_REV_FORAEST '+mQuebraLinha
                 +'            ,t1.PDCBENEF_CST_FORAE_CONSFIN = ss.CODBENEF_CONSF_FORAEST '+mQuebraLinha
                 +'            ,t1.PDCBENEF_CST_DENTROE_REV = ss.CODBENEF_REV_DENTROEST '+mQuebraLinha
                 +'            ,t1.PDCBENEF_CST_DENTROE_CONSFIN = ss.CODBENEF_CONSF_DENTROEST '+mQuebraLinha;


   if not fExecutarComandoSQL(true,mComandoMerge,mMotivo,662) then
      begin
      MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
      result:=false;
      exit;
      end;




   fDropTableIfExist(mNomeTabelaTmp);


   freeandNil(mDadosTxt);
   freeandNil(mDadosCab);
   freeandNil(mFields);


   if FileExists(mNomeTabelaTmp) then
       DeleteFile(mNomeTabelaTmp);


   if FileExists(mNomeTabelaTxtDados) then
       DeleteFile(mNomeTabelaTxtDados);




   if FileExists(mNomeTabelaCtlCab) then
       DeleteFile(mNomeTabelaCtlCab);


   if FileExists(fRetiraExtensao(mNomeTabelaTxtDados)+'.BAD') then
       DeleteFile(fRetiraExtensao(mNomeTabelaTxtDados)+'.BAD');


   if FileExists(fRetiraExtensao(mNomeTabelaTxtDados)+'.DSK') then
       DeleteFile(fRetiraExtensao(mNomeTabelaTxtDados)+'.DSK');
   end;




end;



function TFrm_Imp_trib_prod_planilha.fCriarCadproTemp(out mNomeSaida: String): boolean;
var
mComandoSql: String;
x_tent: integer;
mMotivo: string;
mVirg: string;
    procedure pAdicionar(pTexto: String);
    begin
    mComandoSql := mComandoSql +pTexto;

    end;
begin
result:=true;
x_tent:=0;

while true do
   begin
   mNomeSaida:='CADPRO_TEMP'+inttostr(x_tent);
   if fExisteTabela(0,mNomeSaida) then
      begin
      x_tent := x_tent + 1;
      end
   else
      break;
   end;
mComandoSql:='';
pAdicionar('Create table '+mNomeSaida +'(');
pAdicionar('  CODIGO_PRODUTO number default 0 not null ');
pAdicionar(', NOME_PRODUTO varchar2(100) ');
pAdicionar(', UNIDADE varchar2(3) ');
pAdicionar(', CODIGO_BARRAS number default 0 not null ');
pAdicionar(', CODNCM varchar2(10) ');
pAdicionar(', CEST varchar2(10) ');
pAdicionar(', DATA_ULT_SAIDA DATE ');
pAdicionar(', PDTABICM varchar2(1) ');
pAdicionar(', ALIQ_ICMS number default 0 not null ');
pAdicionar(', ORIGEM_PRODUTO number default 0 not null ');
pAdicionar(', CST_REVENDA_DENTRO_ESTADO varchar2(3) ');
pAdicionar(', CST_REV_DENTRO_EST_CONSUFINAL varchar2(3) ');
pAdicionar(', CST_REVENDA_FORA_ESTADO varchar2(3) ');
pAdicionar(', CST_REV_FORA_EST_CONSFINAL varchar2(3) ');
pAdicionar(', PISCOFINS_ENTRADA varchar2(2) ');
pAdicionar(', ALIQUOTA_PIS_ENTRADA number default 0 not null ');
pAdicionar(', ALIQUOTA_COFINS_ENTRADA number default 0 not null ');
pAdicionar(', ALIQUOTA_COFINS_SAIDA number default 0 not null ');
pAdicionar(', ALIQUOTA_PIS_SAIDA number default 0 not null ');
pAdicionar(', PISCOFINS_SAIDA varchar2(2) ');
pAdicionar(', CODBENEF_REV_FORAEST varchar2(8) ');

pAdicionar(', CODBENEF_CONSF_FORAEST varchar2(8) ');
pAdicionar(', CODBENEF_REV_DENTROEST varchar2(8) ');
pAdicionar(', CODBENEF_CONSF_DENTROEST varchar2(8) ');
pAdicionar(' ) ');


if not fExecutarComandoSQL(true,mComandoSql,mMotivo,540) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   result:=false;
   exit;
   end;
mComandoSql := 'ALTER TABLE '+mNomeSaida+' add constraint '+mNomeSaida+'_PK primary key (CODIGO_PRODUTO) ';


if not fExecutarComandoSQL(true,mComandoSql,mMotivo,552) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   result:=false;
   exit;
   end;



end;

procedure TFrm_Imp_trib_prod_planilha.bbAtualizarClick(Sender: TObject);
begin
if fMontarSqlLdr then
   MessageDlg('Importação Feita com Sucesso!',mtInformation,[mbOk],0)
else
   MessageDlg('Erro Ao Importar a planinha!',mtError,[mbOk],0)

end;

procedure TFrm_Imp_trib_prod_planilha.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Column.Field.FieldName='CODNCM') or
   (Column.Field.FieldName='CEST') or
   (Column.Field.FieldName='PDTABICM') or
   (Column.Field.FieldName='ORIGEM_PRODUTO') or
   (Column.Field.FieldName='CST_REVENDA_DENTRO_ESTADO') or
   (Column.Field.FieldName='CST_REV_DENTRO_EST_CONSUFINAL') or
   (Column.Field.FieldName='CST_REVENDA_FORA_ESTADO') or
   (Column.Field.FieldName='CST_REV_FORA_EST_CONSFINAL') or
   (Column.Field.FieldName='PISCOFINS_ENTRADA') or
   (Column.Field.FieldName='ALIQUOTA_PIS_ENTRADA') or
   (Column.Field.FieldName='ALIQUOTA_COFINS_ENTRADA') or
   (Column.Field.FieldName='ALIQUOTA_COFINS_SAIDA') or
   (Column.Field.FieldName='ALIQUOTA_PIS_SAIDA') or
   (Column.Field.FieldName='PISCOFINS_SAIDA') or
   (Column.Field.FieldName='CODBENEF_REV_FORAEST') or
   (Column.Field.FieldName='CODBENEF_CONSF_FORAEST') or
   (Column.Field.FieldName='CODBENEF_REV_DENTROEST') or
   (Column.Field.FieldName='CODBENEF_CONSF_DENTROEST') then
   begin
   DBGrid1.Canvas.Brush.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end

end;

end.
