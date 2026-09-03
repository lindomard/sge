unit Func;

interface

uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,strUtils,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_Impres,WinSock,variants,
     Shellapi, filectrl,printers,Registry,S_Mensagem,RdPrint //declare estas das units!!!

     ,QuickRpt, QRCtrls, Grids, DBGrids, MaskUtils, Buttons, ToolEdit, CurrEdit,
     RlPrinters,
     jpeg,MMSystem,IdHTTP,ComObj, DBCtrls,RLRichText, TlHelp32, WinSvc, ADODB,zip,
     IdHashMessageDigest, idHash, FMTBcd, Provider,  DBClient, SqlExpr
     , ScktComp,S_Ocorrencias,dateutils;

type
    B_word = Array [0..1]  of string;

type
  tQtdCodPro = record
  qtde: real;
  codigo: real;
end;


//function getConteudoTAG(ArquivoXML, NomeTAG, pTAG: String): String;


type
  TDadosCaixa = record
  pldr_nombco: string;
  pldr_codbco: integer;

  pldr_descmov: string;
  pldr_coddep: string;
  pldr_nomdep: string;
  pldr_codccu: string;
  pldr_nomccu: string;
  pldr_natdc: string;
  end;



type TArrayCusto = array of Real;
type TArrayEstoque = array [0..2]of Real;
type TNivPro = array of String;
type TCST_IPI = array of String;
type TCQPedCompra = array of String;
type TCQPedVenda = array of String;
type TArrayCST = array of String;

const
fpag_sefaz_cartao_credito = 3;
fpag_sefaz_cartao_debito = 4;
 fdt2         ='dd/mm/yyyy';

const
situacaoLote :array[0..2] of string = (
 '0-Normal','1-Recall', '2-Outros');


const
   mCartaoCreditoTef = 23;
   mCartaoDebitoTef = 24;
   mPixTef = 34;


   mCartaoCreditoPos = 36;
   mCartaoDebitoPos = 37;
   mPixPos = 38;

{
36-Cartao POS Credito
37-Cartao POS Debito
38-PIX - POS
 }
//const


{
formapag_sge_igestao :array[0..23] of string = (
 '00;Dinheiro;01;0;00;00'
,'01;Cheque A Vista;02;0;12;01'
,'02;Cheque Rede;02;0;12;13'
,'03;Cartao Visa;03;1;01;03'
,'04;Cartao Amex;03;1;04;04'
,'05;Cartao RedeCard;03;1;02;05'
,'06;TecBan;03;1;05;06'
,'07;Devoluções;36;0;00;07'
,'08;Convênio;05;0;00;08'
,'09;Troco;99;0;0;09'
,'10;Dep.C/C;99;0;0;10'
,'11;Ordem Pgto;99;0;0;11'
,'12;Financeira;05;0;0;12'
,'13;Outros;99;0;0;13'
,'14;Cheque Pre-Datado;02;0;0;01'
,'15;Outros Cartoes;03;1;0;15'
,'16;Cob.Bancaria;99;0;0;16'
,'17;Cartões Hipercard;02;1;07;17'
,'18;Cheque Terceiros;02;0;12;18'
,'19;Nota de Crédito;6;0;0;19'
,'20;Cartao POS Credito;99;99;99;99 '
,'21;Cartao POS Debito;99;99;99;99 '
,'22;Cartao TEF Credito;03;03;03;03 '
,'23;Cartao TEF Debito;04;04;04;04'
);
 }
// inicio
{
formapag :array[0..35] of string = (
 '01;Dinheiro'
,'02;Cheque A Vista'
,'03;Cheque Rede'
,'04;Cartao Visa'
,'05;Cartao Amex'
,'06;Cartao RedeCard'
,'07;TecBan'
,'08;Devoluções'
,'00;Convênio'
,'10;Troco'
,'11;Dep.C/C'
,'12;Ordem Pgto'
,'13;Financeira'
,'14;Outros;99'
,'15;Cheque Pre-Datado'
,'16;Outros Cartoes'
,'17;Cob.Bancaria'
,'18;Cartões Hipercard'
,'19;Cheque Terceiros'
,'20;Nota de Crédito'
,'21;Cartao POS Credito '
,'22;Cartao POS Debito '
,'23;Cartao TEF Credito '
,'24;Cartao TEF Debito'
,'25-Credito Loja'
,'26-Vale Alimentacao'
,'27-Vale Refeicao'
,'28-Vale Presente'
,'29-Vale Combustivel'
,'30-Boleto Bancario'
,'31-PIX - Pagamento Instantaneo'
,'32-Transferencia Bancaria Carteira digital'
,'33-Programa Fidelidade, CashBack, Credito Virtual'
,'34-PIX - TEF/PINPAD'
,'90-Sem Pagamento'
,'99-Outros'
);
 }
// termino
{
const
tpagsefaz :array[0..10] of string = (
 '01-Dinheiro'
,'02-Cheque'
,'03-Cartão de Crédito'
,'04-Cartão de Débito'
,'05-Crédito Loja'
,'10-Vale Alimentação'
,'11-Vale Refeição'
,'12-Vale Presente'
,'13-Vale Combustível'
,'17-Pix'
,'99-Outros.');


 }

const
vinculo_sge = 1;
nome_vinculo = 2;
vinculo_igestao = 3;
bandeira_sefaz = 4;
vinculo_sefaz = 5;
vinculo_varejo = 6;
mQuebraLinha = #13;
mQuebraLinhaXml = '\n';



          c_caracter_word : array [0..70] of B_word = (
                     ('_','[UNDERLINE]')
                    ,('{','[ABRECHAVE]')
                    ,('|','[PAIPO]')
                    ,('~','[TIL]')
                    ,('ƒ','[EFE]')
                    ,('„','[VIRGDUPLA]')
                    ,('…','[RETICENCIA]')
                    ,('ˆ','[QUANSECIRCUNFLEXO]')
                    ,('©','[CORPORATION]')
                    ,('®','[REGISTRADO]')
                    ,('Á','[AAGUDO]')
                    ,('Â','[ACIRCUNFLEX]')
                    ,('Ã','[ATIL]')
                    ,('Ä','[ATREMA]')
                    ,('Å','[acombola]')
                    ,('Æ','[ETRACEJADO]')
                    ,('Ç','[CCEDILHA]')
                    ,('È','[ECRAZIADO]')
                    ,('É','[EAGUDO]')
                    ,('Ê','[ECIURCUNFLEX]')
                    ,('Ë','[ETREMA]')
                    ,('Ì','[ICRAZIADO]')
                    ,('Í','[IAGUDO]')
                    ,('Î','[ICURFUNFLEX]')
                    ,('Ï','[ITREMA]')
                    ,('Ð','[DCORTADO]')
                    ,('Ñ','[NTIL]')
                    ,('Ò','[OCRAZIADO]')
                    ,('Ó','[OAGUDO]')
                    ,('Ô','[OCIRCUNFLEX]')
                    ,('Õ','[OTIL]')
                    ,('Ö','[OTREMA]')
                    ,('Ø','[OCORTADO]')
                    ,('Ù','[UCRAZIADO]')
                    ,('Ú','[UAGUDO]')
                    ,('Û','[UCIRCUNFLEX]')
                    ,('Ü','[UTREMA]')
                    ,('Ý','[yagudo]')
                    ,('Þ','[THORN]')
                    ,('ß','[szlig]')
                    ,('à','[acraziado]')
                    ,('á','[aagudo]')
                    ,('â','[SIMBOL52]')
                    ,('ã','[atil]')
                    ,('ä','[atrema]')
                    ,('ç','[ccedilha]')
                    ,('è','[ecraziado]')
                    ,('é','[eagudo]')
                    ,('ê','[ecircunflex]')
                    ,('í','[iagudo]')
                    ,('î','[icirgunflexo]')
                    ,('ï','[itrema]')
                    ,('ð','[osobre]')
                    ,('ñ','[ntil]')
                    ,('ò','[ograziado]')
                    ,('ó','[oagudo]')
                    ,('ô','[ocircuflex]')
                    ,('õ','[otil]')
                    ,('ö','[otrema]')
                    ,('ø','[ocortado]')
                    ,('ù','[ucraziado]')
                    ,('ú','[uagudo]')
                    ,('û','[ucircunflex]')
                    ,('ü','[utrema]')
                    ,('ý','[yagudo]')
                    ,('þ','[thorn]')
                    ,('<','[menor]')
                    ,('>','[maior]')
                    ,('°','[BOL001]')
                    ,('§','[DOLARESQ]')
                    ,('º','[OEMCIMA]')

          );



function fStringToDateJson(pData: String): TDateTime;
function InsStr(Texto:String; Inserir:String; Qtd: Integer): String;
function Truncar(Valor:Real; Casas:Integer): Real;
function ENumero(Texto:String): Boolean;
function ValReal(Texto:String): String;
function ValFloat(Texto:String): Real;
function ValDouble(Texto:String): Extended;
function ValInt(Texto:String): Integer;
function ValInt2(Texto:String): Integer;
function Trans(Valor:Real): String;
//function Arredonda(Valor: Double; Dec: Integer): Double;

function Arredonda(Valor:Real; Casas: Integer): Real;
function Extenso(Valor:Currency): AnsiString;

function Extenso2(Valor:Integer): AnsiString;
function IIF(condicao:Boolean;SeVerdadeiro,SeFalso:variant): variant;
function DiaSemana(Dt:TDateTime): String;
function NMes(Dt:TDateTime): String;
function Data(Dt:TDateTime;Tipo:Integer): String;
function Zeros(Numero:Integer;Qtd:Integer): String;
function fRetZerosEsquerda(pvalor: String): String;

function Insere(Texto:String;Caracter:Char;Qtd:Integer): String;
function InsereEsquerda(Texto:String;Caracter:Char;Qtd:Integer): String;

function Insere_cortaesq(Texto:String;Caracter:Char;Qtd:Integer): String;
function Insere3(Texto:String;Caracter:Char;Qtd:Integer): String;
function Insere2(Texto:String;Caracter:Char;Qtd:Integer): String;
function Centra(Texto:String;Caracter:Char;Qtd:Integer): String;
function Crip(Texto:String;Criterio:Integer): String;
function Digito(Numero:Real): Real;
//function FCPF(var_temp:real): boolean;
function Fcpf(num: string): boolean;
function FCGC(fvt: real): boolean;
function modulo11(mvt:String): String;
function CalculaSenhaLib(codlib: string): string;
function CalculaCodLib(mcgc: string): string;
function NumPal(Numero: string): string;
function NumPal_Sis(Numero: string): string;
function PalNum(Palavra: string): string;
function PalNum_Sis(Palavra: string): string;
function fretespacos(Palavra: string): string;
function mudaVP(Texto: string): string;
function mudaPV(Texto: string): string;

function mudaSDC(Texto: string): string;
//function ConsisteInscricaoEstadual(inscricao,uf: string): integer; stdcall external 'DLLINSCE.DLl';
function MapeaRede(Drive,Caminho,Provedor:String): Integer;
function DesMapeaRede(Drive:String): Integer;
procedure Espera(Tempo:Integer);
procedure AvisoSonoro(piiTipo : Integer);
function Bar25i(pisCodigo: String):String;
// function NumeroDV(Numero: String; Indice: String; DMod : Integer): String;

function NumeroDV(Numero: String; DMod,num,pIndividual : Integer): String;
function NumeroDV_CodBarMod11237(Numero: String): String; // BRADESCO
function NumeroDV_NosNumMod11237(Numero: String): String; // BRADESCO
function NumeroDV_CodBarMod10237(Numero: String): String; // BRADESCO

function NumeroDV_CodBarMod399NN(Numero: String): String;// HSBC NOSSO NUMERO
function NumeroDV_CodBarMod399DC(Numero: String): String;// HSBC CAMPO 01 02 03
function NumeroDV_CodBarMod399BB(Numero: String): String;// HSBC BOLETO BANCARIO
function NumeroDV_NosNumMod3197(Numero: String): String; //SICOOB
function NumeroDV_Sicob756Mod11(codigobarras: String): String;

//function NumeroDV_Sicob756Mod11(Numero: String): String;

function FormataValores(pValor: Real; pTam,pQtdDec: Integer): String;

//function IniPortaStr(Porta:string):integer; stdcall; external 'Mp20fi32.dll';
//function FormataTX(BUFFER:string):integer; stdcall; external 'Mp20fi32.dll';
//function FechaPorta: integer; stdcall; external 'Mp20fi32.dll';
//function AbreCupom(mRede: String; Mlocal: String; mPorta: Integer): Integer;

function smaster(mcampop: String): Boolean;
function centratexto(texto: String; ptipo,cttamanho: Integer): String;
function FIRPERCond(PTCONDT1, PTCONDT2, PTCOND01, PTCOND02, PTCONDOP,
                    PTCOND_CONT,PTCOND_02_T1, PTCOND_02_T2, PTCOND_02_01, PTCOND_02_02, PTCOND_02_OP,
                    PTCOND_CONT03,PTCOND_03_T1, PTCOND_03_T2, PTCOND_03_01, PTCOND_03_02, PTCOND_03_OP: String): Boolean;
function firpertp(ptipo:Integer):Boolean;
function firpcalc(pvar: Integer; pvalor0,pvalor1,pvalor2,pvalor3: Real; pop0, pop1, pop2: String): Boolean;
function UserName : String;
function zeranegreal(pvalor: Real): Real;
function fperiodo(ptipo:Integer;pdt1,pdt2:String ):String;
function GetLocalIP : string;
function fexecprog(pnomprog : String; Estado : Integer) : Integer;
function fexecprog_espera(pnomprog : String; Estado : Integer) : Integer;

function fvertam(ptexto: String; pmaximo: Integer): Boolean;
function fsonumero(Texto:String): Real;
function fdeixanum(Texto:String): String;
function fRetNum(Texto:String): String;
function fIncremAlfa(Texto:String): String;


function fdeixanum2(Texto:String): String;
function fRetAspas(Texto:String): String;

function fTamanhoArq(const FileName: string): integer;
function fdatafinal(pqtdmes: Integer;pdata: TDateTime): TDateTime;
function DeleteFolder(FolderName: String; LeaveFolder: Boolean): Boolean;
function verteclado(ptipo: Integer): Boolean;
function verteclado_02(ptipo: Integer): Boolean;
function ftestapalavra(ptipo: Integer;ppalavra: String): Boolean;
function FTextoVal(texto:String): String;
Function NomeComputador : String;
function Impressora_Padrao(ptipo: Integer): String;
function fTestaTam(ptipo,ptam: Integer; pTexto,pCarac:String): Boolean;
function fultdiames(mdata: tDateTime): TdateTime;
function fPrimeirodiames(mdata: tDateTime): TdateTime;

function fStringtodatetime(mdata: String): TdateTime;

function fStringtodate(mdata: String): TdateTime;

function fStringtotime_string(mhora: String): string;

//Function Inscricao( Inscricao, Tipo : String ) : Boolean; Var

//Function fTestaInscricao( Inscricao, tipo : String ) : Boolean;
Function Mascara_Inscricao( Inscricao, Estado : String ) : String;
function DirExists(const S : String): Boolean;
function IsPrinter: Boolean;
function fTamanhoEntreDelimitadores(pInicio: Integer; pDelimitador,pTexto: String): Integer;
function fExtraiCodigoEntreChaves(pTexto: String): String;

function ftestaconfigantiga: boolean;
function fConfiguraBanco: boolean;
function fVerificarTabelas: boolean;
function fRetiraExtensao(pNomRec: String): String;
function fGravaStrings(pArquivo,pItem: String): Boolean;
function fLerStrings(pArquivo: String): TStrings;
//function fSetarEmpresaPadrao(PTipo: Integer; pNomCam: String): Boolean;
Function fEstanaNet : Boolean;
function WinVersion: string;
function Fnomearq_Pasta(ptipo: Integer; pNome: String): String;
//function fmensagem(pTexto:String; pTipo: Integer; pButoes: array of integer;pButaoDefault:Integer ): TModalResult;
function fmensagem(pTexto:String; pTipo: Integer; pButoes: array of String;pButaoDefault:Integer ): TModalResult;
function fmensagemSom(pTexto:String; pTipo: Integer; pButoes: array of String;pButaoDefault:Integer ): TModalResult;
function fmensagem_Barrar(pTexto:String; pTipo: Integer): TModalResult;

//function fmensagem(pTexto:String; pTipo: TMsgDlgType; pButoes: array of TMsgDlgBtn; pButaoDefault:Integer ): TModalResult;
function fPosCaractere(pCaracter,pTexto: String): Integer;
function fItensListBox(pTipo: Integer;pListBox: TListBox;pOmitir:TCheckBox): String;
function fItenstCheckListBox(pTipo: Integer;pCheckListBox: TCheckListBox): String;
function fItenstCheckListBox2(pTipo: Integer;pCheckListBox: TCheckListBox): String;
function fInstrucaoEstoque(pCheckBox: TcheckListBox; pCampo: String): String;



function fEnviarEmail(pArquivo: String; pTipo: Integer; pCliFor: String): Boolean;

function fSubstituirCaractere(Texto: String;pRetira,pSubst: String): String;

function fEmitido(ptipo: Integer): String;

function fQuebraString(pqtdcar: Integer; pTexto: String):  String;

function NumeroDecimais(pValor:Real): Integer;

{ptipo: 0-Por Nome Parcial
        1-Por Código}
{Para resolver o problema da data no ano 2000, digitar
no evento onCreate do formulário principal, o seguinte:
TwoDigitYearCenturyWindow:=2}

function QrpToImg(QR: TQuickRep; Nomearq: string; Tipo: Integer):Boolean;
Function EnDeCripta (Texto : String; Chave: Word) : String;
function ObterIPRealInternet(Const vUrl : String): String;
function fTravaTeclado(pTipo: Integer): Boolean;
Function BlockInput (fBlockInput: boolean): dword; stdcall; external 'user32.dll';
function fCentralizar(pTam: Integer; pTexto: String): String;
function fCalcularCusto(pAplicSob,pTipoformula,pTipo: Integer; pFator,pPerc,pVlrOri,pVlrAcum,pValmin,pValReal: Real): TArrayCusto;
function NumeroDV_BBMod11(Numero: String): String;
function NumeroDV_BBMod10(Numero: String): String;
function NumeroDV_ItauMod10(Numero: String): String;
function NumeroDV_ItauMod11(Numero: String): String;
function fCalcDigMun_IBGE(pCodmun: Real): String;
function fCodigoEstado(pUf:String): Real;
function FMontarMascFone(pString:String): String;
function fAjustarTipoPedido(pTipo: Integer): Boolean;
function fChecaMultiEmpresa(pCampo,pTabela: String): String;
Function MaskFone(pString:String) : String ;
// Function MaskFone2(Valor:String) : String ;

function LimpaString(pString: string): string;
function TiraCarac(vsSubString: string; vsString: string): string;
function AnsiToAscii(str: string): string;
function MaskCep(vfCep: string): string;
procedure StatusBtn(Sender: TObject; tipo : integer );
procedure LimpaEdits(Sender: TObject);
function MaskCPFCNPJ(Valor:String ):String;
function MaskCPFCNPJ2(Valor:String) : String ;
Function Word_InserirColunas(Doc : Variant; pTabela:TDataSet): Boolean;
function fPreencherVazio(Texto:String): String;
function ValidaTitulo(numero: String): Boolean;
function AllTrim(const S : string) : string;
function Empty(const s: String) : Boolean;
function IsNumero(const s: string) : boolean;
function CharToInt( ch: Char ): ShortInt;
function IntToChar ( int: ShortInt ): Char;

function ChkInscEstadual(const ie, uf : string) : Boolean; //Valida Inscrição Estadual por Estado
function fPegaValores(Path,Chave:String): String;

{---Função para Validação de Inscrição Estadual---}
function CHKIEMG(const iemg : string):boolean;    //Valida Estado de Minas Gerais
function ChkIEAC(const ie : string) : Boolean;    //Valida Estado do Acre
function ChkIEAL(const ie : string) : Boolean;    //Valida o Estado de Alagoas
function ChkIEAM(const ie : string) : Boolean;    //Valida o Estado do Amazonas
function ChkIEAP(const ie : string) : Boolean;    //Valida o Estado do Amapa
function ChkIEBA(const ie : string) : Boolean;    //Valida o Estado da Bahia
function ChkIECE(const ie : string) : Boolean;    //Valida o Estado do Ceara
function ChkIEDF(const ie : string) : Boolean;    //Valida Distrito Federal
function ChkIEES(const ie : string) : Boolean;    //Valida o Estado do Espirito Santo
function ChkIEGO(const ie : string) : Boolean;    //Valida o Estado do Goias
function ChkIEMA(const ie : string) : Boolean;    //Valida o Estado do Maranhao
function ChkIEMT(const ie : string) : Boolean;    //Valida o Estado do Mato Grosso
function ChkIEMS(const ie : string) : Boolean;    //Valida o Estado do Mato Grosso do Sul
function ChkIEPA(const ie : string) : Boolean;    //Valida o Estado do Para
function ChkIEPB(const ie : string) : Boolean;    //Valida o Estado da Paraiba
function ChkIEPR(const ie : string) : Boolean;    //Valida o Estado do Parana
function ChkIEPE(const ie : string) : Boolean;    //Calida o Estado do Pernambuco
function ChkIEPI(const ie : string) : Boolean;    //Valida o Estado do Piaui
function ChkIERJ(const ie : string) : Boolean;    //Valida o Estado do Rio de Janeiro
function ChkIERN(const ie : string) : Boolean;    //Valida o Estado do Rio Grande do Norte
function ChkIERS(const ie : string) : Boolean;    //Valida o Estado do Rio Grando do Sul
function ChkIERO(const ie : string) : Boolean;    //Valida o Estado de Rondonia
function ValidaInscRO(SIE :string): boolean;      //Valida o Estado de Rondonia Versão Nova
function ChkIERR(const ie : string) : Boolean;    //Valida o Estado de Roraima
function ChkIESC(const ie : string) : Boolean;    //Valida o Estado de Santa Catarina
function ChkIESP(const ie : string) : Boolean;    //Valida o Estado de São Paulo
function ChkIESE(const ie : string) : Boolean;    //Valida o Estado de Sergipe
function ChkIETO(const ie : string) : Boolean;    //Valida o Estado do Tocantins
function RetiraAcentos ( str: String ): String;

procedure AtualizaForm(Sender: TObject; AValue: Boolean);
function fTestaBDE: Boolean;
procedure ConectarBanco(Sender: TObject; Source: TDataSource);
function fSubstituirtexto(pTexto,pLocaliza,pSubstitui: String): String;

function fTextaNome( pTexto: String): String;
function fTextaNome2( pTexto: AnsiString): AnsiString;


function fcriarPastas(pNomePasta: String): Boolean;
function fPrimeiraMaiscula(pTexto: String): String;
function TodasPrimeirasMaiusculas(x:string):string;

//function Criptografar(pTexto:String):String;
//function Descriptografar(pTexto:String):String;


//luiz fernando
function troca_dados(a_trocar: String; a_inserir: String; frase: String): String;
function SALVA_NOME(pasta:string; nome: string):String;
function codemp2(CAMPO:string; Empresa: Integer):String;
function pega_codigo(Busca, Caracter: String):String;
function Coloca_ListBox(tabela,campo1,codigo1,campo2 : string; Box :TlistBox; Query_:TQuery):TListBox;
function funcao_OR_ListBox(Box: TListBox; Campo: String; Operacao: Integer):String;
function BUSCA_VALOR(tabela,campo1,codigo1,campo2 : string; Query_:TQuery): String;
function BUSCA_VALOR2(tabela,campo1,codigo1,campo2 : string; Query_:TQuery): String;
function Excel_Imp_StrGrid(St_Grid: TStringGrid; Arquivo: string): Boolean;
function Excel_Exp_DbGrid(Grid: TDBGrid; Query_Grid: TQuery; Cabecalho: String):Boolean;
function Campo_Calculado(Query_: TQuery; Campo,Tabela,Campo_Condicao,Valor_Codicao: String):String;
function Format_ValFloat(Valor: String):String;
function Instrucao_SQL(instrucao: String; Query_instrucao: TQuery):String;
function BAIXA_ESTOQUE(table: TQuery; tabela: string; campo_codpro: string; codpro: string; campo_grade: string; grade: string; campo_estoque: string; estoque: string; campo_prat: string; op: integer ) : Boolean;
function Ajusta_Casas(qtd_casas: Integer) : String;
function total_pedido(Query_temp: TQuery; chave_p, lotseq_p, ordem_p : Integer): Integer;
function COMPLETA_COM(Texto, Caracter: String; Qtd, Local: Integer): String;
function Pega_Componente(Formulario: TForm; Nome: String): TObject;
function MEmpresa(Tabela,Campo: String; Empresas: TCheckListBox): String;
// function CMovPro(pFilial: Integer;pCodpro: Real; pLote,pFormulario: String;pTipoMov,pSaldoA,pQtd: Real; pObserv:String): Boolean;
function todatechar(campo: String): String;
function CarregaNivel : TNivPro;
function CarregaCQPedCompra : TCQPedCompra;
function CarregaCQPedVenda : TCQPedVenda;
function CarregaCST_IPI : TCST_IPI;
function CarregaView(Nome: String): String;
function Verificar_Financeiro(Dia: TDate): Boolean;
function PrgRodando(Executavel: WideString): Boolean; Export; StdCall;
function ServiceGetList(sMachine : string;dwServiceType,dwServiceState : DWord;
                        slServicesList : TStrings) : boolean;
function PrgIniciacao(Nome, Executavel: WideString): Boolean; Export; StdCall;
function GetComputers(Modelo: Integer; Workgroup : String;Retorno:TListBox):Boolean;
Function GetIP(WebHostName:string):string;
Function Gerar_Caddar_Conf(pcodemp, plotseq, pordem, pvalor, pchave: Real): Boolean;
Function MacAddress: string;
//Function ModMatematico(Val1: Real): Real;
Function vThread(NomeThread: String): Boolean;
function MesExtenso( Mes:Word ) : string;
//function ValidaEan(CodigoEan : String) : Boolean;
function ValidaEan13(pValidarPrefixo: boolean; CodigoEan : String) : Boolean;


function EnviarEmailNFCEeBoleto(pCodemp, pLotseq, pChave: Integer;pModelo: string; pAnexarBoletos, pDireto: Boolean; out PMensagem: String): boolean;



function InserirEmAnalise(PF2L_CODEMP, PF2L_CODPRO, PF2L_LOTSEQ, PF2L_CHAVE, PF2L_ITEM,
       PF2L_LOTE, PF2L_DTFAB, PF2L_DTVCTO, PF2L_QTD, PF2L_LOTE_RE,
       PF2L_STATUS_ANALISE, PF2L_STATUS_ANALISE_MOTIVO: String):Boolean;
function SalvarGrid(Formulario: String; Grid: TDBGrid): Boolean;
function CarregarGrid(Formulario: String; Grid: TDBGrid): Boolean;
function DuplicarItem(Tabela, Chave, ValorChave, Condicao: String): Real;
function TamanhoArquivo(Arquivo: String): Integer;
function UploadFile(_SqlQuery: TSQLQuery; NomeArquivo: String; Arquivo: String) : Boolean;
function GerarArquivoGson(Query: TQuery; NomeArquivo: String): Boolean;
function killtask(ExeFileName: string): Integer;
//luiz fernando


function fSeparaQtdCodproNovo(pCampo: String): tQtdCodPro;

function fSeparaQtdCodpro(pCampo: String;pLeitor: Boolean): String;
function SetDecimalSeparator(Ch: Char):Boolean;
function fAtualizaForm(pTipo: Integer): boolean;

function tbKeyIsDown(const Key: integer): boolean;

function EstaoPressionadas(const Key:  array of integer): boolean;
function PrimeiroNome (Nome : String) : String;
function fLimparString(pValor: String): String;


procedure GetDirList(Directory: String; var Result: TStrings;
IsRecursive: Boolean);


procedure CORRIGE_HORADATA;

function fBuscarValor(pCampo: Integer;pTexto:String): String;
function fPartionarArquivo(pNomeArq: String): Integer;
function fJuntarArquivos(FileName: TFileName) : Boolean;
function fSalvarImagem(pImagem,pNomeSai: String): Boolean;
function fGravarImagemBanco(pImagem,pChave,pDescricao: String): Boolean;



function fZiparArquivos(pArqEntra: tStrings; pArqSai,pComentario: String): Boolean;

function fUnZiparArquivos(pArqEntra,pPastaSaida,pComentario: String): Boolean;

function fInserirQuebraLInha(pqtdcar: Integer; pTexto: String):  String;

function fBuscarValor_Del_PV(pCampo: Integer;pTexto:String): String;
function fBuscarValor_Del_Par(pDel: String; pCampo: Integer;pTexto:String): String;
function fQtd_Del_Par(pDel: String;pTexto:String): integer;


function fQtd_PV(pTexto:String): Integer;
function LocalizaArray(fArrayDinamicoString : array of String; fValor : String) : Boolean;

function fsoExtensao(pNomRec: String): String;
function fTransformaemDataAno4Mesdia(pData: String): tDateTime;
function fFormataReal2Dec(pValor: String): Real;
function fFormataReal3Dec(pValor: String): Real;
function fRetornoCNPJCPFcomMask(pValor: String): String;

function CombineFiles(FileName: TFileName) : Boolean;

function fDeletarTExistentes(pNomeArq: String): Boolean;


function fBuscarsonfe(pNomeXml: String): String;

function fCFOP_CST(pCfop: string): TArrayCST;
function fTipoIcms(pTipo_CST_CSOSN,pCST_CSOSN: String): String;

function ConvertImageparajpg(SrcName :string; DstPic :TGraphic) :boolean;


function fPosdoArray(pArray: Array of string; pTexto: String; out pIndex: Integer): Boolean;
function fPosdoArray_integer(pArray: Array of integer; pValor: integer; out pIndex: Integer): Boolean;



function GetDosOutput(CommandLine:string): string;

function fRetiraSujeiras(pTexto: String): String;


function fLerImagemGravaStream(pNomeImagem: String; out pImagemjpeg: TJPEGImage): Boolean;

function fEImagem(pNomeArq: String): Boolean;
function fEImagemNovo(pNomeArq: String): Boolean;


function fExecutarArquivo(pNomeArq: String): boolean;

function fAdicionarTempDel(pNomeArq: String): boolean;
function fDeletarTempDel: boolean;

 function DecToAlphal(Value: Cardinal): string;

function fEData(pDia,pMes,pAno: Integer): boolean;



Function Criptografa(ptexto:string;pchave:integer):String;
Function DesCriptografa(ptexto:string;pchave:integer):String;

function AsciiToInt(Caracter: Char): Integer;

function fExtrairDataHoraXml(pTipo, pDataXml: String): String;

function fFormatdatetimeParaConsulta(pNomeCampo: string;pInicial: Boolean; pData: TDateTime): String;
function fFormatdatetimeParaConsultaSemAnd(pNomeCampo: string;pInicial: Boolean; pData: TDateTime): String;
function fFormatdatetimeParaConsulta_unica(pNomeCampo: string; pData: TDateTime): String;
function fFormatdatetimeParaConsulta_semcondicao(pNomeCampo: string; pData: TDateTime): String;


function Get_Printerport(Printername: String): string;


function fRetDatHorXMLNFE(pDataHora: tdatetime): String;

function fCalcularPerdas(pQtdPrevista, pQtdReal: Real):String ;


function fLimparTextoRetorno(pTexto: String):String;
function fCorrigirAspasDuplasXML(pTexto: String):String;
function fCorrigirAspasSimplesParaSql(pTexto: String):String;



function getConteudoTAG(ArquivoXML, NomeTAG, pTAG01,pTag02,pTag03: String): String;

//function getConteudoTAG(ArquivoXML, NomeTAG: String;  pTags: tParamTags): String;
//function getConteudoTAG(ParamTags: tParamTags): String;


function fSairDataHoraXml(pTipo, pDataXml: String): tDatetime;
function fRetornaChaveAcessoFormatada(pChave: string): String;

function fOracleConvertStringtoDateTime(pDatHor: tDateTime): String;

function fFiltrosMultiEmpresa(pCampo,pChaveTabela: String; pCodemp: Integer): String;

function fBuscarValor_paipo(pCampo: Integer;pTexto:String): String;
Function ValidarChaveNFe(const ChaveNFe: string):boolean;

function Mascara_edit(edt: String;str:String):string;

function fImpressoraCompartilhamento(pTexto: String): String;


function fIncluirDadosnoBanco(pTabela,pcondicoes,pInsert,pUpdate: String; pLista: TStringList) : boolean;
function fIncluirDadosnoBanco_String(pTabela,pcondicoes,pInsert,pUpdate: String; pLista: String;pOrigemComando: String) : boolean;



function fTxtParaDateTime_Oracle(pDataTexto: String): String;
function fFloatPara_Oracle(pValor: Real): String;
function fIntegerPara_Oracle(pValor: Integer): String;




function ValorReal(Texto:String): Real;


function AnsiToAcentosXML(str: string): string;

function WordtoAnsi(str: string): string;
function AnsiToAcentosWord(str: string): string;
function fParametrizarCaracteres_word(pTexto: String):String;
function fValidarHora(pMens:boolean; pHora:String): boolean;

procedure fcriararquivofecharigestao(pNomearq: string);
function fqtdprogaberto(pnomprog: string): integer;
function QtdTask(ExeFileName: string): Integer;

function fBuscarValor_delpv(pCampo: Integer;pTexto:String): String;
function fDiferenciaEmPercentual(pValor01,pValor02: Real): Real;
function NumeroDV_Caixa104_semdig0(Numero: String): String;
function NumeroDV_104caixaMod10(Numero: String): String;

function NumeroDV_Caixa104_Comdig0(Numero: String): String;

function fPrimeiroNomeIgual(pNome01,pNome02: string): boolean;
function fQuebraStringTStringList(pqtdcar: Integer; pTexto: String):  tStringList;

function BmpToJpg(Bmp: TBitmap; Quality: Integer = 100): TJPEGImage;
function fcoincide(ptexto1,ptexto2:String): Real;

function NumeroDV_SafraMod10(Numero: String): String;

function NumeroDV_SafraMod11(Numero: String): String;
function fStringtodateTimeNovo(mdata,pHora: String): TdateTime;



function MemoryStreamToString(M: TMemoryStream): string;
function fRetirarEspacosDuplos(pTexto: String): String;


procedure fAtualizarTipoTef;

function ColunaParaLetraExcel(NumeroColuna: Integer): String;

//function KillTask(ExeFileName: string): Integer;

//function fRetornarMD5(pNomeArq: String): String;


// function MD5String(const Value: string): string;
// function MD5Arquivo(const Value: string): string;

/// function MD5File(pNomeArq: string): TMD5Digest;


//function MD5DigestToStr_teste(const nDigest:TMD5Digest): string;


var

{ Lotes de Sequencia de Documentos
}

 Myhint: THintWindow;

 form_ocorrencias_func: TFrm_Ocorrencias;

  mimportando_xml: boolean;

zip: TZip;


testeform: TForm;
marqTempDel: TStrings;
 mLibBloqueios: Boolean;
 form_ped_02_3: TForm;
 mNFEVersao: string='';
 mAbreCep: Boolean=true;
 mQtdPedBlq     :Integer=0;
 mPrestacao_servico: boolean;
// mFormstayontop  :boolean=false;
 mAguardando_processamento   :Boolean=false;
 pger_horario_verao: boolean=false;
 log_Aplicemendaconst87042015: boolean=false;
 log_gerar_tag_cbenef: boolean=false;


 mTipoTef: integer; // -1 nenhum 0-tef paygo 1-pos interligado
mDadosCaixa:  TDadosCaixa;

mendip_Servidor_nfe_ativo: string;
 pVerWindows_xp:Boolean=False;
 ls_os         :Integer=0; // Lote de Sequencia de Ordem de Serviço  OK
 ls_numped     :Integer=0; // Lote de Sequencia de Pedidos de Clientes   OK
 ls_trocas     :Integer=0; // Lote de Sequencia de trocas de mercadorias OK
 ls_numpf      :Integer=0; // Lote de Sequencia de Pedidos de Fornecedor
 ls_codldr     :Integer=0; // Lote de Sequencia do Fluxo de Caixa
 ls_codchqcli  :Integer=0; // lote de sequencia de Cheques de Clientes
 ls_codchqemi  :Integer=0; // lote de sequencia de Cheques de Propria Emissao
 ls_numlic     :Integer=0; // Lote de Sequencia da proxima licitação
 ls_lotbcp     :Integer=0; // Lote de Sequencia do lote da baixa dup. a pagar
 ls_lotbcr     :Integer=0; // Lote de Sequencia do lote da baixa dup. a Receber
 ls_lotfab     :Integer=0; // lote de sequencia de Fabricacão/Envase
 ls_cadaju     :Integer=0; // lote de sequencia do CADAJU
 ls_cadcac     :Integer=0; // lote de sequencia do CADCAC Controle de Acessos
 ls_comrec     :Integer=0; // Lote de Sequencia de Comissão de Recebimentos



 pp_locpedgrav :Integer=0; // localizar o pedido de venda ao gravar 0-Nao 1-Sim


// Variaveis que preenchidas alimenta o caixa
pldr_codccu : String;
pldr_coddep : String;
pldr_nombco : String;
pldr_nomdep : String;
pldr_nomccu : String;
pldr_nome   : String;
pldr_natdc  : String;
pldr_descmov: String;
pldr_codaces: Integer;
mNivel_Criptog: Integer=38;
mcodccu  : String;
mcoddep  : String;
mnombco  : String;
mnomdep  : String;
mnomccu  : String;
mnome    : String;
mnatdc   : String;
mdesc_mov: String;
//mtipo    : String;
mcodigo_ldr  : real=0;
mcod     : Real=0;
mpValorReal: Real=0;
mpDataReal : Real=0;
mGer_Emp_CNPJ: Real;
mGer_Emp_UF: String;
mGer_Emp_IcmsCred_SN: Real;
mGer_Emp_CRT: Integer;
mchaveped: Real=0;

mPedEle_Qtd: Integer=0;
mPedEle_Qtd_ant: Integer=-1;
// fim dos lotes de sequencia de documentos
 pcData        :String='date';
 pcDataHora    :String='date';
 pcInteger     :String='integer';
 pcFloat       :String='float';
 pcMemo        :String='long';
 pcMemoNovo    :String='CLOB';



 pcBlob        :String='long raw';
 pcString      :String='varchar';
 pcTime        :String='date';
 PCUpdDropEsq  :String='';
 PCUpdDropDir  :String='';
 Banco_usuario   :String ='SGE';
 Banco_ServerName:String ='SGE';
 Banco_senha     :String ='DEZENOVE';
 Banco_Caminho   :String ='\SGE';
 Banco_Servidor  :String ='\SGE';
 mthred_pend_bolemi: integer =0;
 mthred_pend_nfemi: integer =0;
 mthred_pend_email_fat: integer =0;

 mNFE_Usuario_Nome:string='wakri';
 mNFE_Database    :string='gw';
 mNFE_HostName    :string='187.115.66.177';
// mNFE_HostName    :string='10.1.1.2';
// mNFE_HostName    :string='www.gerentenet.com.br';
 mNFE_Senha       :String='1478';

 mCEP_Usuario_Nome:string='wakri';
 mCEP_Database    :string='gw';
 mCEP_HostName    :string='www.gerentenet.com.br';
 mCEP_Senha       :String='1478';

 Banco_alias     :String;
 pbanco          :Integer=0;
 pbanco_versao   :Integer=0;
 pthread         :String ='NAO';
 sisRedeExterna:Boolean;
 mcamtmp         :String ='C:\SGE\TEMP\';

 mpastadefault: String;
 mpastaaplicacao: String;
 mpastatemp: String;

// ce_codempati  : array of string;
// ce_nomcamemp  : array of string;
// ce_campoatual : string;
// ce_qtdemp     : integer=0;

// ce_empsel     : integer=0; // 0-Baixa 1-Alta 2-Ambas


 fdt           :String;
 fhr           :String='hh:nn:ss';
 fhr_hhmm        :String='hh:nn';
 fhr_oracle    :string='HH24:MI:SS';
 fdt3          :String='dd/mm/yy';
 fdathor       :String='dd/mm/yyyy hh:nn:ss';

 fdathor_oracle    :string='DD/MM/YYYY HH24:MI:SS';


 pMaskData :String='99/99/9999';

 pMaskHora_hh_mm :String='99:99';
 pmaskcpf      :string='999.999.999-99';
 pmaskcnpj     :string='99.999.999/9999-99';
 pmaskCEP      :String='99999-999';

 DirList: TStringList;
 mimpxml_qtdlid: integer;


// tabelas temporarias

 pTmpcData        :String='date';
 pTmpcDataHora    :String='TIMESTAMP';
 pTmpcHora        :String='TIME';
 pTmpcInteger     :String='integer';
 pTmpcFloat       :String='numeric';
 pTmpcMemo        :String='BLOB(10, 1)';
// pTmpcMemo        :String='FmtMemo';
 pTmpcBlob        :String='graphic';
 pTmpcString      :String='character';

 sys_decimal   :Char='.';
 sys_milhar    :Char=',';
 pvazio        :String='';
 mpcodace      :Integer=0;
 log_codven    :real=0;
 log_coddep_cx :string='';
 log_codsup    :real=0;
 codmac        :string;
 codusr        :integer=0;
 log_sessao    :integer=0;
 nomusr        :string;
 codemp        :Integer=0;
 log_filial_padrao     :Integer=1;
 log_filial_Qtd        :Integer=1;
 log_filial_padrao_nome     :string='';
 codemp_ant    :Integer=0;
 codped        :Real=0;

 codcai        :Integer=1;
 codecf        :Integer=0;
 lotmov        :Integer=0;
 serieecf      :String;
 moddocecf     :String;
 codcar        :integer=0;
 tipace        :integer=0;
// pTipoBusca    :Integer=0;
 pIPmaquina    :String;
 pNomTer       :String;
 mTab_CADLAUDO_cfg: string ='CADLAUDO_CFG';
 mTab_CADLAUDO_01: string ='CADLAUDO_01';
 mTab_CADLAUDO_02: string ='CADLAUDO_02';
 mTab_CADLAUDO_03: string ='CADLAUDO_03';


 mcasas        :String='#,##0.00';
 mcasas3Dec     :String='#,##0.000';
 mcasasPRedut  :String='#,##0.00000';
 mcasaspu      :String='#,##0.000';
 mcasqtd       :String='#,##0.000';
 mcasind       :String='#,##0.000';
 mcaspuind     :String='#,##0.000';
 mcasccus      :String='#,##0.000000';
 mcasqtdccus   :Integer=6;
 mcasas_pct    :String='#,##0.00%';
 mQtdCas_arredpu:Integer=5;

pMascDataHora :String='99/99/9999 99:99:99 ';
pMascHora :String='99:99:99 ';

 par_tpp       : Integer;
 par_acretodos :Real=0; // acrescimos em todos produtos
 par_acret0    :Real=0; // acrescimos em produtos do codigo do tipo 0
 par_acret1    :Real=0; // acrescimos em produtos do codigo do tipo 1
 par_acred01   :Real=0; // acrescimos em produtos do codigo do tipo diferente de 0 e 1

 par_aceitatrocamer  :Boolean=false; // Aceita trocar mercadorias no programa de digitação
 par_conspro_fman    :Boolean=true; // utilizar o mesmo formulario de manutencao produtos para consulta

 pEditMascCNPJ :String='';
 pDFCNPJ       :String='00"."000"."000"/"0000"-"00';
 pEditMascCNPF :String='';
 pDFCNPF       :String='000"."000"."000"-"00';
 pEditMascData :String='!99/99/9999;1; ';
 pEditMascHora  :String='00:00;1 ';
// pEditMascHora  :String='00:00:00;1 ';
 pEditMascCEP  :String='99999-999;1; ';
// pEditMascFone :String='(99)#9999-9999;1; ';
 pEditMascFone :String='';

 pEditMascChave_Acesso:String='9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;1; ';

// pEditMascChave_Acesso:String='0000"."0000"."0000"."0000"."0000"."0000"."0000"."0000"."0000"."0000"."0000";

 mboolean      :Boolean=false;
 mReal         :Real=0;
 mcinst        :String = '';
 mcinst2       :String = '';
 mcinst3       :String;
 mcinst4       :String;
 mcasger       :Integer=2;
 mlreg         :Integer=0;
 mtreg         :Integer=0;
// mlogomarcas   :String;
 // para backups
 mcaminho        :String ='C:\SGE';
                        
 // fim dos backups
 mreltab       :String;
 mlorigem      :Integer;

 ppconsemp     :Boolean=False;

 pconsemp      :Boolean=False;
// ppconsemp: Boolean=True;                
 pexec2        :Boolean=False;
 pexecutar     :Boolean=False;
 pversao       :String='2.5.434';
 pver_Trig     :String='1.4.131';
 pver_constraint    :String='1.0.16';
 pGrupo_Versao :String='1.0.0';
 pfuso_horario :string='-03:00';
// pfuso_horario :string='';


// pTipoVersao   :String='BETA';
 pTipoVersao   :String='';
 pValidaVersao :String;
 pimpg         :Boolean=True;
 pimpsg        :Boolean=True;
 pavptpi       :Boolean=True;
 pavpipf       :Boolean=True;
 pSfAtalho_me  : tshiftState;
 pTcAtalho_me  :Integer;
 pSfAtalho_ce  : tshiftState;
 pTcAtalho_ce  :Integer;

 pfonsup       :String='99653-7196';
 pBanner_Intersys : String ='©Intersys - Sistemas de Gestão Empresarial - (62) 99653 - 7196';


// pbanco  : 0='Oracle', 1-Interbase
 // bancos validos para o sistema interbase, Oracle
 pDataPesq     : String;

 pper      :String='';
 pldrcg1   :Integer=0;
 pldrrg1   :Integer=0;
 pspapco   :Integer=9;
 pspaqtd   :Integer=7;
 pspaper   :Integer=8;
 pdiversos :String;
 psini     :Real=0;
 pVdaPer         :Real=0;
 pVdaMesAtedia   :Real=0;
 pVdaPerAnt      :Real=0;
 pVdaMesAntAtedia:Real=0;
 pqtdeMesAntAtedia:Real=0;
 pqtdeMesAtedia:Real=0;


 Log_TipoLote :Integer=0;
 Log_TipoProdPad :Integer=0;

 Log_UsaDtVcto:Boolean=false;
 Log_TitLote  : String;
 mreltab2  :String;
 marq2     :String;
// mpseq: Integer=999;
 Res1      :String='';
 mtopper   :array[1..100] of Real;
 ptpdoc    :array[0..17] of string;
 tab_tped  :array of string;
 tab_tped_mov  :array[0..30,0..1] of string;

 mtamppal: Integer=800;
 error: String;
{
define o tipo de movimento
sendo o primeiro item+00 o nome do item exemplo
[00,00]:='Orcamento'
ja os tipos de movimentos  ficarao assim:
[01,00]:=Venda Normal;
[01,01]:='NNNNSNNN'
          ||||||||
          |||||||->(Saida Estoque de Terceiros) (N-Nao S-Sim)
          ||||||-->(Saida Remessa p/Venda) (N-Nao S-Sim)
          |||||--->(Saida Consignado) (N-Nao S-Sim)
          ||||---->(saida normal) (N-Nao S-Sim)
          ||||---->(entrada Estoque de Terceiros) (N-Nao S-Sim)
          ||------>(Entrada Remessa para Venda) (N-Nao S-Sim)
          |------->(Entrada Consignada) (N-Nao S-Sim)
          -------->(Entrada Normal) (N-Nao S-Sim)]

00-Nome do tipo de Movimento
01-Entrada Normal
02-Entrada Consignada
03-Entrada Remessa para Venda
04-entrada Estoque de Terceiros

05-saida normal
06-Saida Consignado
07-Saida Remessa p/Venda
08-Saida Estoque de Terceiros


}
 tipo_pro  :array[0..13] of string;

 rpqtdlp,rppag,rpqtdpagtot, rpncol, rpcolp,rplin,mrod: Integer;
 fnumcol,fintcol,ftpcol: Integer;
 fdetncol  :Integer=0;
 fdeticol  :Integer=0;
 fdettpcol :Integer=0;
 rpdetcolp :Integer=0;
 tabmes    :array[1..12] of string;
// mredirecionaFormPro: Boolean=false;
 mredirecionaFormCli: Boolean=false;

// mFormcliCriado: Boolean=true;
// mFormProCriado: Boolean=true;

// Verificar estes campos posteriormente par colocar em parametros lindomar
 pdatasis  :TDateTime; // data atual da execucão do sistema
 pdatanula :TDateTime;
 mpseg     :String='';
 mger_estanarede:boolean=true;

 mProcessando_Thred_pedele:Boolean=false;
 mProcessando_Thred_financ:Boolean=false;


{
Composicao do Codigo mpseg
00.00.00          D
|| || ||
|| || ||
|| || ||
|| || ||>> Prestacao de Servicos: 00-nao tem  01-Tem
|| ||
|| ||
|| ||>> Lotes/grades/cores: 00-nao tem, 01-Lote/Vcto, 02-grade/Tamanho
||
||
||>> Segmento: 00-Todos Possiveis;
               01-Distribuidoras;
               02-Farmacias;
               03-Industrias Quimicas/farmaceuticas;
               04-Aviamentos;
               05-Tecidos;
               06-Industrias Confeccoes
               07-Auto Pecas
               08-Deposito mat.Construção
               09-Loja Material eletricos
               10-Supermercados
               11-Panificadoras
               12-Açouque
               13-Lanchonetes
               14-Conveniencias
               15-Outros Comercios
               16-Prestadoras de Servicos
               17-Associaçoes no ramo Farmaceutico
               18-Oticas

}


// variaveis do formulario de pedido a serem retornadas quando for extinto o segundo formulario
// ate a ultima
  mTamBorda: Integer=3;
  mTopGrid: Integer=0;
  bbpalt_true : Boolean=True;
  bbpinc_true : Boolean=True;
  bbpexc_true : Boolean=True;
  bbprel_true : Boolean=True;
  bbpAdd_True : Boolean=True;
  mValidaPedServ: Boolean=True;
  mdtv: String;
  BlqEventoPed02: Boolean=False;
  BlqCalcula_101: Boolean=false;
  mdocs: array[1..4] of string;
  mqtdin  :Integer=0;
  mqtdis  :Integer=0;
  mprazo  : Integer=0;
  mdescVisivel: Boolean=False;
  mStatus :Real=0;
  mtemrom     : Boolean=false;
  mColPU_Serv: Integer=4;
  mColCom_Serv  : Integer=5;
  mColLote  : Integer=2;
  mColDtVcto: Integer=3;
  mColPU    : Integer=12;
  mColComis : Integer=13;
  mColDesconto: Integer=11;
  mdocOnLine:Boolean=false;
//  mlib_limcred : Boolean=True;
  mlcred       :Real=0;
  mFormace     :Integer=0;
  mItem        :Integer=0;
  mItemServ    :Integer=0;
  mFatur_Ped   :Boolean=False;
  moper_item   :Integer=0;
  moper_serv   :Integer=0;
  mpvddescf,mpvtc,mpvtdc,mpvtpd1,mpvtpd2,mpvtpd3,mpvtpdesf,mtpp, mpvdiasdescf: Integer;
  mpvcom, mpvcom02,mpvcom03,mpvcom04,mpvactd, mpvact00, mpvact01, mpvact99: Real;
  macredesreg,majcomis: Integer;
  mpvdes, mpvdes1, mpvdes2, mpvdes3: Real;
  mpvd1s0,mpvd1s1,mpvd1s2,mpvd1s3,mpvd1s4,mpvd1s5,mpvd1s6,mpvd1s7:Real;
  mpvd2s0,mpvd2s1,mpvd2s2,mpvd2s3,mpvd2s4,mpvd2s5,mpvd2s6,mpvd2s7:Real;
  mpvd3s0,mpvd3s1,mpvd3s2,mpvd3s3,mpvd3s4,mpvd3s5,mpvd3s6,mpvd3s7:Real;
  mpvdfs0,mpvdfs1,mpvdfs2,mpvdfs3,mpvdfs4,mpvdfs5,mpvdfs6,mpvdfs7:Real;
  mpvcms0,mpvcms1,mpvcms2,mpvcms3,mpvcms4,mpvcms5,mpvcms6,mpvcms7:Real;
  mpvcmv02s0,mpvcmv02s1,mpvcmv02s2,mpvcmv02s3,mpvcmv02s4,mpvcmv02s5,mpvcmv02s6,mpvcmv02s7:Real;


  mpvdf01a,mpvdf02a,mpvdf03a,mpvdf04a: Real;
  mpvdf01b,mpvdf02b,mpvdf03b,mpvdf04b: Real;
  mpvdf01 ,mpvdf02 ,mpvdf03 ,mpvdf04 : Real;


  mdifipi: Real;
  mpvdescf: Real;
  mpacreconv,mpacreger: Real;
  mpcomasse, mcomasse,mcomiss,mcomist,mcomis,mpund,submod_ant   :Real;
  mvlracre, mvaldes,mvalacre,mpavdes,mbcissqn, missqn: Real;
  mdtreaj: TDateTime;
  mpreco: Real=0;


  mdescant:Real=0;
  mpdesc  :Real=0;
  mTabTmp01 :String;
  mTabTmp02 :String;

  mtotund    :Real=0;
  mtotluc    :Real=0;
  mtotbru    :Real=0;
  mtotdes    :Real=0;
  mtotbru_101:Real=0;
  mtotdes_101:Real=0;
  mValdes_101:Real=0;
  mValAcre_101:Real=0;

  mtotacrecv :Real=0;
  mtotacreger:Real=0;
  mtoticmr   :Real=0;
  mtotipi    :Real=0;
  mtotrepas  :Real=0;
  mtoticmr_101   :Real=0;
  mAnt_totbru_101:Real=0;
  mAnt_Totdes_101:Real=0;
  mAnt_totund    :Real=0;
  mAnt_totbru    :Real=0;
  mAnt_totluc    :Real=0;
  mAnt_totdes    :Real=0;
  mAnt_totacrecv :Real=0;
  mAnt_totacreger:Real=0;
  mAnt_toticmr   :Real=0;
  mAnt_toticmr_101:Real=0;
  mAnt_totipi    :Real=0;
  mAnt_totrepas  :Real=0;
  mSaiNor        :Boolean=false;
  mSaiCons       :Boolean=false;
  mSaiTerc       :Boolean=false;
  mSaiRVenda     :Boolean=false;

  mEntraNor      :Boolean=false;
  mEntraCons     :Boolean=false;
  mEntraTerc     :Boolean=false;
  mEntraRVenda   :Boolean=false;

  // parametros para calculos de impostos
  mAliqIssqn    : Real=0;
  mAliqRepas    : Real=0;
  mCalcImp      : Boolean=True;
  mcalcimpServ  : Boolean=true;
  mIvaNeg       : Real=0;
  mIvaPos       : Real=0;
  mIvaIna       : Real=0;
  mRedutRA      : Real=0;
  mRedutRB      : Real=0;
  mRedutRC      : Real=0;
  mRedutRD      : Real=0;
  mRedutRE      : Real=0;
  mRedutRF      : Real=0;
  mRedutRG      : Real=0;
  mRedutRH      : Real=0;
  mRedutRI      : Real=0;

  mAliqDeb      : Real=0;
  mIcmsC        : Real=0;
  mRedutNA      : Real=0;
  mRedutNB      : Real=0;
  mRedutNC      : Real=0;
  mRedutND      : Real=0;
  mRedutNE      : Real=0;
  mRedutNF      : Real=0;
  mRedutNG      : Real=0;
  mRedutNH      : Real=0;
  mRedutNI      : Real=0;

  mCfo_Nor      : Real=0;
  mCfo_Serv     : Real=0;
  mCfo_Ret      : Real=0;

  mCfo_Nor_ecf  : Real=0;
  mCfo_Ret_ecf  : Real=0;

  mCfo_Nor_101_ecf: Real=0;
  mCfo_Ret_101_ecf: Real=0;

  mTipCal       : String='N';
  mCalcRet      : Real=0;



  mAliqIssqn_101: Real=0;
  mAliqRepas_101: Real=0;
  mCalcImp_101      : Boolean=True;
  mCalcImpServ_101  : Boolean=True;
  mIcmsRet_101      : Boolean=True;

  mIvaNeg_101   : Real=0;
  mIvaPos_101   : Real=0;
  mIvaIna_101   : Real=0;
  mRedutRA_101  : Real=0;
  mRedutRB_101  : Real=0;
  mRedutRC_101  : Real=0;
  mRedutRD_101  : Real=0;
  mRedutRE_101  : Real=0;
  mRedutRF_101  : Real=0;
  mRedutRG_101  : Real=0;
  mRedutRH_101  : Real=0;
  mRedutRI_101  : Real=0;

  mAliqDeb_101  : Real=0;
  mIcmsC_101    : Real=0;
  mRedutNA_101  : Real=0;
  mRedutNB_101  : Real=0;
  mRedutNC_101  : Real=0;
  mRedutND_101  : Real=0;
  mRedutNE_101  : Real=0;
  mRedutNF_101  : Real=0;
  mRedutNG_101  : Real=0;
  mRedutNH_101  : Real=0;
  mRedutNI_101  : Real=0;

  mCfo_Nor_101  : Real=0;
  mCfo_Ret_101  : Real=0;
  mTipCal_101   : String='N';
  mCalcRet_101  : Real=0;

  mAgrupaItems: Boolean=False;
  mQtdItemAgru: Integer=0;
  
  


  // termino dos parametros para calculo de impostos

  msql_ped01:  String;
  msql_ped01d: String;
  msql_ped02mp: String;
  msql_ped01v: String;
  msql_ped02:  String;
  msql_ped02d:  String;
  msql_ped02s:  String;
  msql_ped02_trocas: String;  
  msql_pedfp:  String;
  msql_ped01_orc:  String;
  mcupom  : Integer=0;
// retirar se possivel
   mitemad: Integer;
  mPromocao: String;
  ant_codpv: String;
  mop_origemd: Integer=0;
  mestlot: Real;
  mestrep: Real;
  mTamDim: Integer=0;
  mPrecoFixo: Real=0;
  mCal_Comis_Mer: Boolean=True;
  mCal_Comis_Serv: Boolean=True;

  mChaveTerc: Integer;
  mGravarCh_Terc: Boolean=false;
  mnormal: Tfonte=[normal];
  mreduz:  Tfonte=[comp17];
  m12ccp:  Tfonte=[Comp12];
  m20ccp:  Tfonte=[Comp20];
  mneg:    TFonte=[negrito];
  mexp:    TFonte=[expandido];

  mcampo_vlr: String;
  mcampo_semcom: String;
  mcampo_icmsr: String;
  mcampo_valfre: String;
  mcampo_qtd: String;

  mcampo_vlr_dev: String;
  mcampo_semcom_dev: String;
  mcampo_icmsr_dev: String;
  mcampo_valfre_dev: String;
  mcampo_qtd_dev: String;
  mhoraUltevento: TDateTime;
// constantes do word
wdAlignParagraphLeft :integer = 0;
wdAlignParagraphCenter :integer= 1;
wdAlignParagraphRight :integer= 2;
wdAlignParagraphJustify :integer= 3;
wdAdjustNone :integer= 0;
wdGray25 :integer= 16;
wdGray10 :integer= 10;
wdGoToLine :integer= 3;
wdGoToLast :integer= -1;
wdSendToNewDocument :integer= 0;

mdoc : Array[1..10] of string = ('NF        N.F.1a.Serie        '
                                ,'NF        N.F.2a.Serie        '
                                ,'NF        Orcamento           '
                                ,'NF        Lista de Separacao  '
                                ,'NF        Vale de Mercadorias '
                                ,'NF        Lista de Separacao2 '
                                ,'NF        Orcamento2          '
                                ,'NF        Espelho Pedido      '
                                ,'NF        Vale de Mercadorias2'
                                ,'NF        Contrato de Venda   '
                                );



mcfop_devolucao : Array[0..88] of string = ('1201'
                ,'1202','1203','1204','1208','1209','1410','1411'
                ,'1503','1504','1505','1506','1553','1660','1661'
                ,'1662','1903','1918','1919','1921','2201','2202'
                ,'2203','2204','2208','2209','2410','2411','2503'
                ,'2504','2505','2506','2553','2660','2661','2662'
                ,'2903','2918','2919','2921','3201','3202','3211'
                ,'3503','3553','5201','5202','5208','5209','5210'
                ,'5410','5411','5412','5413','5503','5553','5555'
                ,'5556','5660','5661','5662','5918','5919','5921'
                ,'6201','6202','6208','6209','6210','6410','6411'
                ,'6412','6413','6503','6553','6555','6556','6660'
                ,'6661','6662','6918','6919','6921','7201','7202'
                ,'7210','7211','7553','7556');


mcsosn_valido : Array[0..09] of string = ('101','102','103'
                                         ,'201','202','203'
                                         ,'300','400','500','900');

mcst_icms_valido : Array[0..10] of string = ('00','10','20'
                                         ,'30','40','41'
                                         ,'50','51','60'
                                         ,'70','90');

mcst_pis_valido : Array[0..32] of string = ('01','02','03','04','05',
                                            '06','07','08','09','49',
                                            '50','51','52','53','54',
                                            '55','56','60','61','62',
                                            '63','64','65','66','67',
                                            '70','71','72','73','74',
                                            '75','98','99');

mcfop_entrada_valido : Array[0..290] of string = ('1000','1100','1101','1102','1111'
                                                  ,'1113','1116','1117','1118','1120'
                                                  ,'1121','1122','1124','1125','1126'
                                                  ,'1128','1150','1151','1152','1153'
                                                  ,'1154','1200','1201','1202','1203'
                                                  ,'1204','1205','1206','1207','1208'
                                                  ,'1209','1250','1251','1252','1253'
                                                  ,'1254','1255','1256','1257','1300'
                                                  ,'1301','1302','1303','1304','1305'
                                                  ,'1306','1350','1351','1352','1353'
                                                  ,'1354','1355','1356','1360','1400'
                                                  ,'1401','1403','1406','1407','1408'
                                                  ,'1409','1410','1411','1414','1415'
                                                  ,'1450','1451','1452','1500','1501'
                                                  ,'1503','1504','1505','1506','1550'
                                                  ,'1551','1552','1553','1554','1555'
                                                  ,'1556','1557','1600','1601','1602'
                                                  ,'1603','1604','1605','1650','1651'
                                                  ,'1652','1653','1658','1659','1660'
                                                  ,'1661','1662','1663','1664','1900'
                                                  ,'1901','1902','1903','1904','1905'
                                                  ,'1906','1907','1908','1909','1910'
                                                  ,'1911','1912','1913','1914','1915'
                                                  ,'1916','1917','1918','1919','1920'
                                                  ,'1921','1922','1923','1924','1925'
                                                  ,'1926','1931','1932','1933','1934'
                                                  ,'1949','2000','2100','2101','2102'
                                                  ,'2111','2113','2116','2117','2118'
                                                  ,'2120','2121','2122','2124','2125'
                                                  ,'2126','2128','2150','2151','2152'
                                                  ,'2153','2154','2200','2201','2202'
                                                  ,'2203','2204','2205','2206','2207'
                                                  ,'2208','2209','2250','2251','2252'
                                                  ,'2253','2254','2255','2256','2257'
                                                  ,'2300','2301','2302','2303','2304'
                                                  ,'2305','2306','2350','2351','2352'
                                                  ,'2353','2354','2355','2356','2400'
                                                  ,'2401','2403','2406','2407','2408'
                                                  ,'2409','2410','2411','2414','2415'
                                                  ,'2500','2501','2503','2504','2505'
                                                  ,'2506','2550','2551','2552','2553'
                                                  ,'2554','2555','2556','2557','2600'
                                                  ,'2603','2650','2651','2652','2653'
                                                  ,'2658','2659','2660','2661','2662'
                                                  ,'2663','2664','2900','2901','2902'
                                                  ,'2903','2904','2905','2906','2907'
                                                  ,'2908','2909','2910','2911','2912'
                                                  ,'2913','2914','2915','2916','2917'
                                                  ,'2918','2919','2920','2921','2922'
                                                  ,'2923','2924','2925','2931','2932'
                                                  ,'2933','2934','2949'
                                                  ,'3000','3100','3101','3102','3126'
                                                  ,'3127','3128','3200','3201','3202'
                                                  ,'3205','3206','3207','3211','3250'
                                                  ,'3251','3250','3301','3350','3351'
                                                  ,'3352','3353','3354','3355','3356'
                                                  ,'3500','3503','3550','3551','3553'
                                                  ,'3556','3650','3651','3652','3653'
                                                  ,'3900','3930','3949');

mcfop_saida_valido : Array[0..335] of string = ('5000','5100','5101','5102','5103'
                                                ,'5104','5105','5106','5109','5110'
                                                ,'5111','5112','5113','5114','5115'
                                                ,'5116','5117','5118','5119','5120'
                                                ,'5122','5123','5124','5125','5150'
                                                ,'5151','5152','5153','5155','5156'
                                                ,'5200','5201','5202','5205','5206'
                                                ,'5207','5208','5209','5210','5250'
                                                ,'5251','5252','5253','5254','5255'
                                                ,'5256','5257','5258','5300','5301'
                                                ,'5302','5303','5304','5305','5306'
                                                ,'5307','5350','5351','5352','5353'
                                                ,'5354','5355','5356','5357','5359'
                                                ,'5360','5400','5401','5402','5403'
                                                ,'5405','5408','5409','5410','5411'
                                                ,'5412','5413','5414','5415','5450'
                                                ,'5451','5500','5501','5502','5503'
                                                ,'5504','5505','5550','5551','5552'
                                                ,'5553','5554','5555','5556','5557'
                                                ,'5600','5601','5602','5603','5605'
                                                ,'5606','5650','5651','5652','5653'
                                                ,'5654','5655','5656','5657','5658'
                                                ,'5659','5660','5661','5662','5663'
                                                ,'5664','5665','5666','5667','5900'
                                                ,'5901','5902','5903','5904','5905'
                                                ,'5906','5907','5908','5909','5910'
                                                ,'5911','5912','5913','5914','5915'
                                                ,'5916','5917','5918','5919','5920'
                                                ,'5921','5922','5923','5924','5925'
                                                ,'5926','5927','5928','5929','5931'
                                                ,'5932','5933','5934','5949','6927'
                                                ,'6000','6101','6102','6103','6104'
                                                ,'6105','6106','6107','6108','6109'
                                                ,'6110','6111','6112','6113','6114'
                                                ,'6115','6116','6117','6118','6119'
                                                ,'6120','6122','6123','6124','6125'
                                                ,'6150','6151','6152','6153','6155'
                                                ,'6156','6200','6201','6202','6205'
                                                ,'6206','6207','6208','6209','6210'
                                                ,'6250','6251','6252','6253','6254'
                                                ,'6255','6256','6257','6258','6300'
                                                ,'6301','6302','6303','6304','6305'
                                                ,'6306','6307','6350','6351','6352'
                                                ,'6353','6354','6355','6356','6357'
                                                ,'6359','6360','6400','6401','6402'
                                                ,'6403','6404','6408','6409','6410'
                                                ,'6411','6412','6413','6414','6415'
                                                ,'6500','6501','6502','6503','6504'
                                                ,'6505','6550','6551','6552','6553'
                                                ,'6554','6555','6556','6557','6600'
                                                ,'6603','6650','6651','6652','6653'
                                                ,'6654','6655','6656','6657','6658'
                                                ,'6659','6660','6661','6662','6663'
                                                ,'6664','6665','6666','6667','6900'
                                                ,'6901','6902','6903','6904','6905'
                                                ,'6906','6907','6908','6909','6910'
                                                ,'6911','6912','6913','6914','6915'
                                                ,'6916','6917','6918','6919','6920'
                                                ,'6921','6922','6923','6924','6925'
                                                ,'6929','6931','6932','6933','6934'
                                                ,'6949','6602'
                                                ,'7000','7100','7101','7102','7105'
                                                ,'7106','7127','7200','7201','7202'
                                                ,'7205','7206','7207','7210','7211'
                                                ,'7250','7251','7300','7301','7300'
                                                ,'7358','7500','7501','7550','7551'
                                                ,'7553','7556','7650','7651','7654'
                                                ,'7667','7900','7930','7949');

mModeloNF_valido : Array[0..30] of string = ('01','1B','02','2D','2E'
                                               ,'04','06','07','08','8B'
                                               ,'09','10','11','13','14'
                                               ,'15','17','16','18','20'
                                               ,'21','22','23','24','25'
                                               ,'26','27','28','29','30'
                                               ,'55');


                                               

  wrdSelection, wrdMailMerge, wrdMergeFields : Variant;


const
   mtipo_nfe = 'NFE';
  mnfe_comprotocolo='Com Protocolo';
  mnfe_semprotocolo='Sem Protocolo';
  mstatus_excluido='8';
  mstatus_denegado='9';
  mNomeProjettoJavaExterno = 'baixarCadastrosBasicosV03.jar';


implementation

uses S_DM1, func_ecf, lerarq, S_Agde, S_EnviarEmail, S_mensagemSom,
  S_Mensagem_Barrar, func_excecoes, S_DM2, func_bde, s_ultVen,
  S_Usr, S_Login_Usuario, S_DM4, S_ent, Math, S_SelEmp,
  RLReport, S_GerDup, S_DM1_ADO,  S_NFE_Impressao,
  S_DM_MYSQL, S_EBol,func2;

const
 OrdZero =  Ord('0');
 C1 = 33598875;
 C2 = 24219578;


function InsStr(Texto:String; Inserir:String; Qtd: Integer): String;
var
   nt: string;
   x: integer;
begin
   nt:=Texto;
   for x:=Length(Texto) to Qtd do
      nt:=Inserir+nt;
   result:=nt;
end;


function Truncar(Valor:Real; Casas:Integer): Real;
var
  svalor: string;
  stamanho: integer;
begin
svalor  :=FloatToStr(Valor);
stamanho:=Length(FloatToStr(trunc(Valor)))+1+Casas;
Result  :=StrToFloat(copy(svalor,1,stamanho));
end;



  
function ValReal(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
for x:=1 to Length(Texto) do
   if (Texto[x]='-') and (x=1) then
      maux:=maux+Texto[x]
   else If Texto[x] in ['0'..'9',DecimalSeparator] then
      maux:=maux+Texto[x];
Result:=maux;
end;

function ValFloat(Texto:String): Real;
var
  x: integer;
  maux: string;
  dec: boolean;
begin
maux:='';
Texto:=Trim(Texto);
dec:=false;
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x]
   else if (Texto[x]='-') and (x=1) then
      maux:=maux+Texto[x]
   else if Texto[x]=DecimalSeparator then
      begin
      if not dec then
         begin
         maux:=maux+Texto[x];
         dec:=true;
         end;
      end;
if (Trim(maux)='') or (Trim(maux)='-')  then
   maux:='0';
Result:=StrToFloat(maux);
end;

function ValDouble(Texto:String): Extended;
var
  x: integer;
  maux: string;
  dec: boolean;
begin
maux:='';
Texto:=Trim(Texto);
dec:=false;
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x]
   else if (Texto[x]='-') and (x=1) then
      maux:=maux+Texto[x]
   else if Texto[x]=DecimalSeparator then
      begin
      if not dec then
         begin
         maux:=maux+Texto[x];
         dec:=true;
         end;
      end;
if (Trim(maux)='') or (Trim(maux)='-')  then
   maux:='0';
Result:=StrToFloat(maux);
end;


function ValInt(Texto:String): Integer;
var
  x: integer;
  maux: string;
begin
maux:='0';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   begin
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
   end;
Result:=StrToInt(maux);
end;

function ValInt2(Texto:String): Integer;
var
  x: integer;
  maux: string;
begin
Texto:=Trim(Texto);
if Texto='' then
   maux:='0'
else if Texto[1]='-' then
   maux:='-'
else
   maux:='0';



for x:=1 to Length(Texto) do
   begin
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
   end;
Result:=StrToInt(maux);
end;

function fRetAspas(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   If not (Texto[x] in ['''','"']) then
      maux:=maux+Texto[x];

Result:=maux;
end;

function fdeixanum(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   if (x=1) and (Texto[x]='-') then
      maux:=maux+Texto[x]
   else If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];

if Trim(maux)='' then
   maux:='0';
Result:=maux;
end;

function fRetNum(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   If not (Texto[x] in ['0'..'9']) then
      maux:=maux+Texto[x];
if Trim(maux)='' then
   maux:='0';
Result:=maux;
end;


function fIncremAlfa(Texto:String): String;
{
incrementa 1 em um campo alfanumerico (onde existe letras e numeros)
}
var
  x: integer;
  maux: string;

  mTamMask: Integer;
begin
try
   mTammask:=length(fdeixanum2(texto));
except
   mTamMask:=1;
   end;
if mTamMask<>1 then
   begin
   for x := length(Texto) downto 1 do
      begin
      if texto[x] in ['0'..'9'] then
         maux:=texto[x]+maux
      else
         break;
      end;
   end
else
   maux:=texto;

if mTamMask=1 then
   mAux:=fRetNum(Texto)+FormatFloat(insere('0','0',mtamMask),fSonumero(texto)+1)
else
   maux:=copy(Texto,1,x)+
   FormatFloat(insere('0','0',length(texto)-x),fSonumero(maux)+1);

Result:=maux;
end;

function fdeixanum2(Texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   if (x=1) and (Texto[x]='-') then
      maux:=maux+Texto[x]
   else If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
if maux='-' then
   maux:='0';

Result:=maux;
end;


function fsonumero(Texto:String): Real;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   if (x=1) and ((Texto[x]='-') and (length(texto)>1)) then
      maux:=maux+Texto[x]
   else  If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];

if Trim(maux)='' then
   maux:='0';
Result:=StrToFloat(maux);
end;

function mudaVP(Texto: string): string;
var
  x: integer;
  t: string;
  mudou: Boolean;
begin
mudou:=false;
t := '';
for x:=length(texto) downto 1 do
  begin
  If (Texto[x] in ['.',',']) and (not mudou)then
     begin
     t:='.'+t;
     mudou:=true;
     end
  else if Texto[x] in ['0'..'9','-'] then
     t:=Texto[x]+t;
  end;
if trim(t)='' then
   t:='0';
if t='-' then
   t:='0';
result:=t;
end;


function mudaPV(Texto: string): string;
var
  x: integer;
  t: string;
  mudou: Boolean;

begin


mudou:=false;
t := '';
for x:=length(texto) downto 1 do
  begin
  If (Texto[x] in ['.',',']) and (not mudou)then
     begin
     t:=','+t;
     mudou:=true;
     end
  else if Texto[x] in ['0'..'9','-'] then
     t:=Texto[x]+t;
  end;
if trim(t)='' then
   t:='0';
if t='-' then
   t:='0';

result:=t;
end;

function mudaSDC(Texto: string): string;
var
  x: integer;
  t: string;
begin
t:='';
for x:=1 to Length(Texto) do
   If Texto[x]='.' then t:=t+DecimalSeparator
   else t:=t+Texto[x];
result:=t;
end;

function fretespacos(Palavra: string): string;
var
  mnovo: string;
  x: integer;
begin
palavra:=Trim(palavra);
mnovo:='';
for x:=1 to Length(Palavra) do
   begin
   if palavra[x]<>' ' then
      mnovo:=mnovo+palavra[x];
   end;
Result:=mnovo;
end;


function Numpal(Numero: string): string;
var
  mpalavra: string[10];
  mnovo: string;
  x: integer;
begin
if Trim(DM1.Tb_PargerPPALNUM.Value)='' then
   begin
   result:='';
   exit;
   end;

mpalavra:=DM1.Tb_PargerPPALNUM.Value;
mnovo:='';
for x:=1 to Length(Numero) do
   begin
   if Numero[x] in ['0'..'9'] then
      mnovo:=mnovo+mpalavra[StrToInt(Numero[x])+1];
   end;
Result:=mnovo;
end;

function NumPal_Sis(Numero: string): string;
var
  mpalavra: string[10];
  mnovo: string;
  x: integer;
begin
mpalavra:='SOGAVRETNI';

mnovo:='';
for x:=1 to Length(Numero) do
   mnovo:=mnovo+mpalavra[StrToInt(Numero[x])+1];
Result:=mnovo;
end;

function PalNum(Palavra: string): string;
var
  mnumero, mn: string;
  x: integer;
begin
if Trim(DM1.Tb_PargerPPALNUM.Value)='' then
   begin
   result:='';
   exit;
   end;
mnumero:='';
for x:=1 to Length(Palavra) do
   begin
   mn:='';
   if palavra[x]=DM1.Tb_PargerPPALNUM.Value[1] then mn:='0'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[2] then mn:='1'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[3] then mn:='2'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[4] then mn:='3'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[5] then mn:='4'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[6] then mn:='5'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[7] then mn:='6'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[8] then mn:='7'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[9] then mn:='8'
   else if palavra[x]=DM1.Tb_PargerPPALNUM.Value[10] then mn:='9';
   mnumero:=mnumero+mn;
   end;
Result:=mnumero;
end;

function PalNum_Sis(Palavra: string): string;
var
  mpalavra: string[10];
  mnumero, mn: string;
  x: integer;
begin
mpalavra:='SOGAVRETNI';
mnumero:='';
for x:=1 to Length(Palavra) do
   begin
   mn:='';
   case Palavra[x] of
      'S': mn:='0';
      'O': mn:='1';
      'G': mn:='2';
      'A': mn:='3';
      'V': mn:='4';
      'R': mn:='5';
      'E': mn:='6';
      'T': mn:='7';
      'N': mn:='8';
      'I': mn:='9';
      end;
   mnumero:=mnumero+mn;
   end;
Result:=mnumero;
end;

function CalculaCodLib(mcgc: string): string;
var
  maux1, mcodlib, mhora, mdata: string;
  mdia, mmes, mano: word;
  msoma: real;
  x: integer;
begin
//mhora:=TimeToStr(Time);
mhora:=FormatDateTime('hh:',time)+'00:00';
mhora:=Trim(Copy(mhora,1,2)+Copy(mhora,4,2)+Copy(mhora,7,2));
mdata:=FormatDateTime(fdt,Date);
DecodeDate(Date,mano,mmes,mdia);
mdata:=Trim(Copy(mdata,1,2)+Copy(mdata,4,2)+Copy(mdata,7,2));
mcodlib:=mcgc+mdata+mhora;
msoma:=1;
for x:=1 to Length(mcodlib) do
   msoma:=msoma+msoma*StrToInt('0'+Trim(Copy(mcodlib,x,1)));
maux1:=FormatFloat('0000000',msoma+1);
mcodlib:='';
for x:=1 to 5 do
   mcodlib:=mcodlib+CHR(StrToInt(Copy(maux1,x,1))+48);
If Length(IntToStr(mano))>=4 then mano:=mano-2000;
mcodlib:=Copy(mcodlib,1,5)+CHR(mdia+70)+CHR(mmes+70)+CHR(mano+70);
Result:=mcodlib;
end;

function CalculaSenhaLib(codlib: string): string;
var
  msenha, mcodlib, maux1: string;
  x, mmes: integer;
begin
maux1:=codlib;
mmes:=Integer(maux1[7])-70;
mcodlib:='';
for x:=1 to Length(maux1) do
   If (Copy(maux1,x,1)[1] in ['0'..'9']) then
      mcodlib:=mcodlib+Copy(maux1,x,1);
msenha:='';
for x:=1 to Length(mcodlib) do
    msenha:=msenha+CHR(StrToInt(Copy(mcodlib,x,1))+70+x-StrToInt(Copy(mcodlib,x-1,1)));
msenha:=msenha+CHR(mmes+70);
Result:=msenha;
end;

//Retorna String em formato Moeda
function Trans(Valor:Real): String;
var
  v1: String;
begin
v1:=FloatToStr(Valor);
If v1[Length(v1)-1]=',' then v1:=v1+'0';
If v1[Length(v1)-2]<>',' then v1:=v1+',00';
result:=v1;
end;

{
function Arredonda(Valor: Double; Dec: Integer): Double;
var
Valor1,
Numero1,
Numero2,
Numero3: Double;
begin
Valor1:=Exp(Ln(10) * (Dec + 1));
Numero1:=Int(Valor * Valor1);
Numero2:=(Numero1 / 10);
Numero3:=Round(Numero2);
Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;
}

//Arredonda valores para mais

function Arredonda(Valor:Real; casas: Integer): Real;
begin
{
if Valor<0 then
   Valor:=Valor*-1;
   }

try
   Valor:=Valor+0.000000001;
   result:=RoundTo(Valor, casas*-1);
Except
   result:=Valor;
   end;

{
RoundN(valor, casas);

if casas=0 then
   Valor:=StrToFloat(FormatFloat('0000000',Valor))
else if casas=1 then
   Valor:=StrToFloat(FormatFloat('000.0',valor))
else if casas=3 then
   Valor:=StrToFloat(FormatFloat('000.000',Valor))
else if casas=4 then
   Valor:=StrToFloat(FormatFloat('000.0000',Valor))
else if casas=5 then
   Valor:=StrToFloat(FormatFloat('000.00000',Valor))
else if casas=6 then
   Valor:=StrToFloat(FormatFloat('000.000000',Valor))
else if casas=7 then
   Valor:=StrToFloat(FormatFloat('000.0000000',Valor))
else if casas=8 then
   Valor:=StrToFloat(FormatFloat('000.00000000',Valor))
else if casas=9 then
   Valor:=StrToFloat(FormatFloat('000.000000000',Valor))
else
   Valor:=StrToFloat(FormatFloat('00.00',Valor));
Result:=valor;
}
end;

//Retorna extenso de valor moeda
function Extenso(Valor:Currency): AnsiString;
var
   uni: array[1..9] of string;
   ud : array[1..9] of string;
   dez: array[1..9] of string;
   cen: array[1..9] of string;
   r1, r2, r3, aux, aux1, aux2, v: string;
   c1, c2, c3, x: integer;
begin
r1:='';
r2:='';
r3:='';
aux:='';
aux1:='';
aux2:='';
uni[1]:='um ';
uni[2]:='dois ';
uni[3]:='tres ';
uni[4]:='quatro ';
uni[5]:='cinco ';
uni[6]:='seis ';
uni[7]:='sete ';
uni[8]:='oito ';
uni[9]:='nove ';
ud[1] :='onze ';
ud[2] :='doze ';
ud[3] :='treze ';
ud[4] :='quatorze ';
ud[5] :='quinze ';
ud[6] :='dezesseis ';
ud[7] :='dezessete ';
ud[8] :='dezoito ';
ud[9] :='dezenove ';
dez[1]:='dez ';
dez[2]:='vinte ';
dez[3]:='trinta ';
dez[4]:='quarenta ';
dez[5]:='cinquenta ';
dez[6]:='sessenta ';
dez[7]:='setenta ';
dez[8]:='oitenta ';
dez[9]:='noventa ';
cen[1]:='cento ';
cen[2]:='duzentos ';
cen[3]:='trezentos ';
cen[4]:='quatrocentos ';
cen[5]:='quinhentos ';
cen[6]:='seiscentos ';
cen[7]:='setecentos ';
cen[8]:='oitocentos ';
cen[9]:='novecentos ';
v:=FormatFloat('0.00',Valor);
aux:=Copy(v,length(v)-1,2);
if StrToInt(aux)=1 then
   r2:='um centavo'
else if (StrToInt(aux)>=11) and (StrToInt(aux)<=19) then
   r2:=ud[StrToInt(aux)-10]+'centavos'
else if StrToInt(aux)<>0 then
   begin
   c1:=StrToInt(aux[1]);
   c2:=StrToInt(aux[2]);
   if c1<>0 then
      begin
      r2:=dez[c1];
      if c2<>0 then
         r2:=r2+'e ';
      end;
   If c2<>0 then
      r2:=r2+uni[c2];
   r2:=r2+'centavos';
   end;
{não centavos}
aux:=FloatToStr(Int(StrToFloat(v)));
if fsonumero(aux)>=1 then
   begin
   for x:=1 to 12-length(aux) do aux1:=aux1+'A';
   aux1:=aux1+aux;
   c1:=0;
   c2:=0;
   c3:=StrToInt(aux1[length(aux1)]);
   if aux1[length(aux1)-1]<>'A' then
      c2:=StrToInt(aux1[length(aux1)-1]);
   if aux1[length(aux1)-2]<>'A' then
      c1:=StrToInt(aux1[length(aux1)-2]);
   If c1<>0 then
      begin
      r1:=cen[c1];
      if (c2=0) and (c3=0) and (c1=1) then
         r1:='cem ';
      end;
   If c2<>0 then
      begin
      if r1<>'' then r1:=r1+'e ';
      if (c2=1) and (c3<>0) then
         begin
         if c3<>0 then r1:=r1+ud[c3];
         end
      else
         begin
         r1:=r1+dez[c2];
         end;
      end;
   if (c3<>0) and (c2<>1) then
      begin
      if r1<>'' then r1:=r1+'e ';
      r1:=r1+uni[c3];
      end;
   {milhares}
   if fsonumero(aux)>999 then
     begin
     c1:=0;
     c2:=0;
     c3:=StrToInt(aux1[9]);
     if aux1[8]<>'A' then
        c2:=ValInt(aux1[8]);
     if aux1[7]<>'A' then
        c1:=ValInt(aux1[7]);
     If c1<>0 then
        begin
        r3:=cen[c1];
        if (c2=0) and (c3=0) and (c1=1) then
           r3:='cem ';
        end;
     If c2<>0 then
        begin
        if r3<>'' then r3:=r3+'e ';
        if (c2=1) and (c3<>0) then
           begin
           if c3<>0 then r3:=r3+ud[c3];
           end
        else
           begin
           r3:=r3+dez[c2];
           end;
        end;
     if (c3<>0) and (c2<>1) then
        begin
        if r3<>'' then r3:=r3+'e ';
        r3:=r3+uni[c3];
        end;
     if r3<>'' then
        begin
        if r1<>'' then r1:=r3+'mil e '+r1
        else r1:=r3+'mil '+r1;
        end;
     end;
   {fim dos milhares}
   {milhões}
   if fsonumero(aux)>999999 then
     begin
     r3:='';
     c1:=0;
     c2:=0;
     c3:=StrToInt(aux1[6]);
     if aux1[5]<>'A' then
        c2:=StrToInt(aux1[5]);
     if aux1[4]<>'A' then
        c1:=StrToInt(aux1[4]);
     If c1<>0 then
        begin
        r3:=cen[c1];
        if (c2=0) and (c3=0) and (c1=1) then
           r3:='cem ';
        end;
     If c2<>0 then
        begin
        if r3<>'' then r3:=r3+'e ';
        if (c2=1) and (c3<>0) then
           begin
           if c3<>0 then r3:=r3+ud[c3];
           end
        else
           begin
           r3:=r3+dez[c2];
           end;
        end;
     if (c3<>0) and (c2<>1) then
        begin
        if r3<>'' then r3:=r3+'e ';
        r3:=r3+uni[c3];
        end;
     if r3<>'' then
        begin
        if r1<>'' then r1:='e '+r1;
        if (c1=0) and (c2=0) and (c3=1) then
           r1:=r3+'milhao '+r1
        else
           r1:=r3+'milhoes '+r1;
        end;
     end;
   {fim dos milhões}
   end;
if fSonumero(aux)=1 then r1:=r1+'real'
else if fSonumero(aux)<>0 then r1:=r1+'reais';
if (r2<>'') and (r1<>'') then r1:=r1+' e ';
r1:=r1+r2;
if DM1.Tb_PargerPTIPOEXT.Value=1 then
   r1:= UpperCase(r1);

result:=r1;
end;

//Retorna extenso de valor Inteiro
function Extenso2(Valor:Integer): AnsiString;
var
  uni: array[1..9] of string;
  ud : array[1..9] of string;
  dez: array[1..9] of string;
  cen: array[1..9] of string;
  r1, r2, r3, aux, aux1, aux2, v: string;
  c1, c2, c3, x: integer;
begin
v:=FloatToStr(Valor);
r1:='';
r2:='';
r3:='';
aux:='';
aux1:='';
aux2:='';
uni[1]:='um ';
uni[2]:='dois ';
uni[3]:='tres ';
uni[4]:='quatro ';
uni[5]:='cinco ';
uni[6]:='seis ';
uni[7]:='sete ';
uni[8]:='oito ';
uni[9]:='nove ';
ud[1] :='onze ';
ud[2] :='doze ';
ud[3] :='treze ';
ud[4] :='quatorze ';
ud[5] :='quinze ';
ud[6] :='dezesseis ';
ud[7] :='dezessete ';
ud[8] :='dezoito ';
ud[9] :='dezenove ';
dez[1]:='dez ';
dez[2]:='vinte ';
dez[3]:='trinta ';
dez[4]:='quarenta ';
dez[5]:='cinquenta ';
dez[6]:='sessenta ';
dez[7]:='setenta ';
dez[8]:='oitenta ';
dez[9]:='noventa ';
cen[1]:='cento ';
cen[2]:='duzentos ';
cen[3]:='trezentos ';
cen[4]:='quatrocentos ';
cen[5]:='quinhentos ';
cen[6]:='seiscentos ';
cen[7]:='setecentos ';
cen[8]:='oitocentos ';
cen[9]:='novecentos ';
aux:=FloatToStr(Int(StrToFloat(v)));
if StrToInt(aux)>=1 then
   begin
   for x:=1 to 12-length(aux) do aux1:=aux1+'A';
   aux1:=aux1+aux;
   c1:=0;
   c2:=0;
   c3:=StrToInt(aux1[length(aux1)]);
   if aux1[length(aux1)-1]<>'A' then
      c2:=StrToInt(aux1[length(aux1)-1]);
   if aux1[length(aux1)-2]<>'A' then
      c1:=StrToInt(aux1[length(aux1)-2]);
   If c1<>0 then
      begin
      r1:=cen[c1];
      if (c2=0) and (c3=0) and (c1=1) then
         r1:='cem ';
      end;
   If c2<>0 then
      begin
      if r1<>'' then r1:=r1+'e ';
      if (c2=1) and (c3<>0) then
         begin
         if c3<>0 then r1:=r1+ud[c3];
         end
      else
         begin
         r1:=r1+dez[c2];
         end;
      end;
   if (c3<>0) and (c2<>1) then
      begin
      if r1<>'' then r1:=r1+'e ';
      r1:=r1+uni[c3];
      end;
   {milhares}
   if StrToInt(aux)>999 then
     begin
     c1:=0;
     c2:=0;
     c3:=StrToInt(aux1[9]);
     if aux1[8]<>'A' then
        c2:=StrToInt(aux1[8]);
     if aux1[7]<>'A' then
        c1:=StrToInt(aux1[7]);
     If c1<>0 then
        begin
        r3:=cen[c1];
        if (c2=0) and (c3=0) and (c1=1) then
           r3:='cem ';
        end;
     If c2<>0 then
        begin
        if r3<>'' then r3:=r3+'e ';
        if (c2=1) and (c3<>0) then
           begin
           if c3<>0 then r3:=r3+ud[c3];
           end
        else
           begin
           r3:=r3+dez[c2];
           end;
        end;
     if (c3<>0) and (c2<>1) then
        begin
        if r3<>'' then r3:=r3+'e ';
        r3:=r3+uni[c3];
        end;
     if r3<>'' then
        begin
        if r1<>'' then r1:=r3+'mil e '+r1
        else r1:=r3+'mil '+r1;
        end;
     end;
   {fim dos milhares}
   {milhões}
   if StrToInt(aux)>999999 then
     begin
     r3:='';
     c1:=0;
     c2:=0;
     c3:=StrToInt(aux1[6]);
     if aux1[5]<>'A' then
        c2:=StrToInt(aux1[5]);
     if aux1[4]<>'A' then
        c1:=StrToInt(aux1[4]);
     If c1<>0 then
        begin
        r3:=cen[c1];
        if (c2=0) and (c3=0) and (c1=1) then
           r3:='cem ';
        end;
     If c2<>0 then
        begin
        if r3<>'' then r3:=r3+'e ';
        if (c2=1) and (c3<>0) then
           begin
           if c3<>0 then r3:=r3+ud[c3];
           end
        else
           begin
           r3:=r3+dez[c2];
           end;
        end;
     if (c3<>0) and (c2<>1) then
        begin
        if r3<>'' then r3:=r3+'e ';
        r3:=r3+uni[c3];
        end;
     if r3<>'' then
        begin
        if r1<>'' then r1:='e '+r1;
        if (c1=0) and (c2=0) and (c3=1) then
           r1:=r3+'milhão '+r1
        else
           r1:=r3+'milhões '+r1;
        end;
     end;
   {fim dos milhões}
   end;
if DM1.Tb_PargerPTIPOEXT.Value=1 then
   r1:= UpperCase(r1);

result:=r1;
end;


//Retorna o nome do dia da semana
function DiaSemana(Dt:TDateTime): String;
var
  ds: string;
begin
Case DayOfWeek(Dt) of
   1: ds:='domingo';
   2: ds:='segunda-feira';
   3: ds:='terça-feira';
   4: ds:='quarta-feira';
   5: ds:='quinta-feira';
   6: ds:='sexta-feira';
   7: ds:='sabado';
end;
result:=ds;
end;

//Retorna nome da forma de Pagamento

function NMes(Dt:TDateTime): String;
var
  m: string;
  mano, mmes, mdia: word;
begin
DecodeDate(Dt,mano,mmes,mdia);
Case mmes of
   1: m:='JANEIRO';
   2: m:='FEVEREIRO';
   3: m:='MARCO';
   4: m:='ABRIL';
   5: m:='MAIO';
   6: m:='JUNHO';
   7: m:='JULHO';
   8: m:='AGOSTO';
   9: m:='SETEMBRO';
   10:m:='OUTUBRO';
   11:m:='NOVEMBRO';
   12:m:='DEZEMBRO';
end;
result:=m;
end;

//Retorna data por extenso
function Data(Dt:TDateTime;Tipo:Integer): String;
var
  e: string;
  dano, dmes, ddia: word;
begin
DecodeDate(Dt,dano,dmes,ddia);
Case Tipo of
   0: e:=Zeros(ddia,2)+' de '+NMes(Dt)+' de '+Zeros(dano,4);
   1: e:=DiaSemana(Dt)+', '+Zeros(ddia,2)+' de '+NMes(Dt)+' de '+Zeros(dano,4);
   2: e:=Extenso2(ddia)+'de '+NMes(Dt)+' de '+Extenso2(dano);
   3: e:=DiaSemana(Dt)+', '+Extenso2(ddia)+'de '+NMes(Dt)+' de '+Extenso2(dano);
   4: e:=Copy(NMes(Dt),1,3)+'/'+Zeros(dano,4);
end;
result:=e;
end;

//Insere qtd zeros à esquerda
function Zeros(Numero:Integer;Qtd:Integer): String;
var
  ns: string;
  x: Integer;
begin
ns:=IntToStr(Numero);
for x:=1 to Qtd-Length(ns) do
   ns:='0'+ns;
result:=ns;
end;

//Insere um Caracter qtd vezes em uma string
function Insere3(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x: Integer;
  nt: String;
begin
nt:=Texto;
for x:=1 to Qtd do
   nt:=nt+Caracter;
result:=Copy(nt,1,Qtd);
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

function InsereEsquerda(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x: Integer;
  nt: String;
begin
nt:=Texto;
for x:=1 to Qtd-Length(Texto) do
   nt:=Caracter+nt;
result:=Copy(nt,1,Qtd);
end;


//Insere um Caracter qtd vezes em uma string

function Insere_cortaesq(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x: Integer;
  nt: String;
begin
nt:=Texto;
for x:=1 to Qtd-Length(Texto) do
   nt:=Caracter+nt;
if length(nt)>Qtd then
   begin
   x:=length(nt)-Qtd;
   result:=Copy(nt,1+x,Qtd)
   end
else
   result:=nt;

end;



//Insere um Caracter qtd vezes em à direita
function Insere2(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x: Integer;
  nt: String;
begin
nt:=Texto;
for x:=1 to Qtd-Length(Texto) do
   nt:=nt+Caracter;
result:=Copy(nt,1,Qtd);
end;

//Centraliza um string
function Centra(Texto:String;Caracter:Char;Qtd:Integer): String;
var
  x,y: Integer;
  nt: String;
begin
nt:=Texto;
y :=(Qtd-Length(Texto)) div 2;
for x:=1 to y do nt:=Caracter+nt;
for x:=y+Length(Texto) to Qtd do
   nt:=nt+Caracter;
result:=Copy(nt,1,Qtd);                                                 
end;

//Criptografa uma string
function Crip(Texto: string;Criterio: integer): string;
var
  x, c: integer;
  s: string;
begin
if DM4.Tb_ParGer02PG2SENINTUSR.AsInteger<>1 then
   Criterio:=0;

s:=IntToStr(Criterio);
c:=0;
for x:=1 to Length(s) do
   c:=c+StrToInt(s[x]);
s:='';
for x:=1 to Length(Texto) do
   s:=s+chr(Integer(Texto[x])-10+c);
s:=copy(s,1,06);
for x:=1 to 06-Length(s) do
  s:=s+chr(60+x+c);
Result:=s;
end;
{function Crip(Texto:String;Criterio:Integer): String;
var
  tc, aux1: string;
  x: Integer;
begin
If Length(Texto)<6 then
   for x:=1 to 6-Length(Texto) do
      Texto:=Texto+Chr(StrToInt(Copy(FormatFloat('0',Criterio),1,1)));
aux1:='';
for x:=1 to 6 do
   aux1:=aux1+Chr((240-(Integer(Texto[7-x])+Criterio))*x);
tc:=Copy(aux1,1,6);
result:=tc;
end;}

//Retorna o dígito verificador para códigos até 9 digitos
function Digito(Numero:Real): Real;
var
  a: Real;
  dig,y,x,soma: Integer;
  nr: string;
begin
a:=100000000+Numero;
nr:=Copy(FloatToStr(a),2,8);
x:=2;
y:=Length(nr);
soma:=0;
While y>0 do
   begin
   soma:=soma+StrToInt(Copy(nr,y,1))*x;
   y:=y-1;
   x:=x+1;
   end;
soma:=soma*10;
dig:=soma mod 11;
If dig=10 then dig:=0;
Result:=StrToInt(nr+IntToStr(dig));
end;


//Digito verificador para CPF
{
function FCPF(var_temp:real): boolean;
var
  r: boolean;
  dig01, dig02, dig03, dig04, dig05, dig06, dig07, dig08, dig09,
  dig10, dig11, dv01, dv02, somat1, somat2: integer;
begin
r:=True;
If Length(FloatToStr(var_temp))>11 then r:=False;
dig01:=StrToInt('0'+Copy(FloatToStr(var_temp),01,1));
dig02:=StrToInt('0'+Copy(FloatToStr(var_temp),02,1));
dig03:=StrToInt('0'+Copy(FloatToStr(var_temp),03,1));
dig04:=StrToInt('0'+Copy(FloatToStr(var_temp),04,1));
dig05:=StrToInt('0'+Copy(FloatToStr(var_temp),05,1));
dig06:=StrToInt('0'+Copy(FloatToStr(var_temp),06,1));
dig07:=StrToInt('0'+Copy(FloatToStr(var_temp),07,1));
dig08:=StrToInt('0'+Copy(FloatToStr(var_temp),08,1));
dig09:=StrToInt('0'+Copy(FloatToStr(var_temp),09,1));
dig10:=StrToInt('0'+Copy(FloatToStr(var_temp),10,1));
dig11:=StrToInt('0'+Copy(FloatToStr(var_temp),11,1));
somat1:=dig01*10+dig02*9+dig03*8+dig04*7+dig05*6+dig06*5
        +dig07*4+dig08*3+dig09*2;
somat2:=somat1 mod 11;
dv01:=11-somat2;
If somat2<=1 then dv01:=0;
somat1:=dig01*11+dig02*10+dig03*9+dig04*8+dig05*7+dig06*6
        +dig07*5+dig08*4+dig09*3+dv01*2;
somat2:=somat1 mod 11;
dv02:=11-somat2;
If somat2<=1 then dv02:=0;
If (dig10<>dv01) or (dig11<>dv02) then r:=False;
If (var_temp=11111111111) or (var_temp=2222222222) or
   (var_temp=33333333333) or (var_temp=4444444444) or
   (var_temp=55555555555) or (var_temp=6666666666) or
   (var_temp=77777777777) or (var_temp=8888888888) or
   (var_temp=99999999999) then r:=False;
result:=r;
end;
}

function Fcpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
if fsonumero(num)=0 then
   begin
   result:=false;
   exit;
   end;
num:=insere(num,'0',11);

try
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1  :=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
    Fcpf:=true
  else
    Fcpf:=false;
except
  Fcpf:=false;
  end;
end;

//Digito verificador para CGC
function FCGC(fvt: real): boolean;
var
  cgcmf, digito: string;
  r: boolean;
  x: integer;
begin
if fvt=0 then
   begin
   result:=false;
   exit;
   end;
try
  r:=True;
  cgcmf:=FloatToStr(fvt);
  for x:=Length(cgcmf) to 13 do
     cgcmf:='0'+cgcmf;
  digito:=modulo11(Copy(cgcmf,1,12));
  If (digito<>cgcmf[13]) or
  (modulo11(Copy(cgcmf,1,13))<>cgcmf[14]) then
     r:=false;
  Result:=r;
except
  result:=false;
  end;
end;

//Cálculo do Módulo 11
function modulo11(mvt:string): string;
var
  numero, multiplic: string;
  n, soma: integer;
begin
numero:=Trim(mvt);
multiplic:='54329876543298765432';
multiplic:=Trim(Copy(multiplic,20-Length(numero),20));
soma:=0;
for n:=0 to Length(numero)-1 do
   soma:=soma+(StrToInt('0'+Copy(numero,Length(numero)-n,1))*
   StrToInt('0'+Copy(multiplic,Length(multiplic)-n,1)));
Result:=IIF(soma mod 11 = 0,'0',Copy(IntToStr(11-(soma mod 11)),Length(IntToStr(11-(soma mod 11))),1));
end;

{Desmapea um Drive}
function DesMapeaRede(Drive:String): Integer;
begin

   //result := WNetCancelConnection2(Pchar(Drive), 0,FALSE);
   result := WNetCancelConnection(Pchar(Drive), True);
end;

{Função que mapea um Drive}
function MapeaRede(Drive,Caminho,Provedor:String): Integer;
   var
      NRW: TNetResource;
begin
   with NRW do
   begin
      dwType := RESOURCETYPE_ANY;
      lpLocalName  := Pchar(Drive);
      lpRemoteName := PChar(Caminho);
      lpProvider   := Pchar(Provedor);
   end;
   //result := WNetAddConnection2(NRW,' ', ' ',0);
   result := WNetAddConnection(Pchar(Caminho),NIL, Pchar(Drive));
end;

//Procedimento que cria um sleep sonoro
procedure Espera(Tempo:Integer);
var
   NumSec :SmallInt;
   StartTime: TDateTime;
begin
   StartTime := now;
   NumSec    := Tempo;
   repeat
      Application.ProcessMessages;
      AvisoSonoro(0);
   until Now > StartTime + NumSec * (1/24/60/60);
end;


//========================================================================
// Função......: AvisoSonoro
// Descrição ..: Emite um sinal sonoro de erro.
// Desenv. por : Marcos Katsumi Kay             em 23/09/98
// Alterado por:                                em __/__/__ Follow Nº ____
//========================================================================
procedure AvisoSonoro(piiTipo : Integer);

   procedure SetPort(address, Value:Word);
   var
      bValue: byte;
   begin
      bValue := trunc(Value and 255);
      asm
         mov dx, address
         mov al, bValue
         out dx, al
      end;
   end;

   function GetPort(address:word):word;
   var
      bValue: byte;
   begin
      asm
         mov dx, address
         in al, dx
         mov bValue, al
      end;
      GetPort := bValue;
   end;

   procedure Sound(Freq : Word);
   var
      B : Byte;
   begin
      if Freq > 18 then
      begin
         Freq := Word(1193181 div LongInt(Freq));
         B := Byte(GetPort($61));

         if (B and 3) = 0 then
         begin
            SetPort($61, Word(B or 3));
            SetPort($43, $B6);
         end;

         SetPort($42, Freq);
         SetPort($42, Freq shr 8);
      end;
   end;

   procedure NoSound;
   var
     Value: Word;
   begin
       Value := GetPort($61) and $FC;
       SetPort($61, Value);
   end;

   procedure delay(millisecs : integer);   { delay for given milliseconds }
   var
      endtime   : integer;
   begin
      endtime := gettickcount + millisecs;
      while endtime - gettickcount > 0 do;
   //      Application.ProcessMessages;
   end;

var
   OSVersionInfo : TOSVersionInfo;
begin
   //Pega informações sobre o Sistema Operacional.
   OSVersionInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
   GetVersionEx(OSVersionInfo);
   //Se for o Windows NT então utiliza as funções da API
   If OSVersionInfo.dwPlatformId = VER_PLATFORM_WIN32_NT then
      begin
         beep(250,300);
         beep(150,180);
         beep(200,300);
      end
   //Se for o Windows 95 então utiliza as funções da CRT32 (baixo nível)
   else If piiTipo = 0 then
      begin
         sound(3000); delay(100);
         sound(2000); delay(200);
         sound(1000); delay(200);
         nosound;
      end
   else If piiTipo = 1 then
      begin
         sound(250); delay(300);
         sound(150); delay(180);
         sound(200); delay(300);
         nosound;
      end
   else If piiTipo = 2 then
      begin
         sound(280); delay(1000);
         sound(314); delay(1000);
         sound(250); delay(1000);
         sound(125); delay(1000);
         sound(187); delay(1000);
         nosound;
      end
   else If piiTipo = 3 Then
      begin
         sound(3000); delay(100);
         sound(2000); delay(200);
         sound(1000); delay(200);
         nosound;
      end;
end;

function Bar25i(pisCodigo: String):String;
const
   CA : Array[0..9] of String = (
                                    '00110',
                                    '10001',
                                    '01001',
                                    '11000',
                                    '00101',
                                    '10100',
                                    '01100',
                                    '00011',
                                    '10010',
                                    '01010'
                                    );
var
   viCount,viAux : Integer;
   vsCodigo      : String;
begin
   //Marcador de Início
   vsCodigo := #255#255#0#0#255#255#0#0;
   //Conteúdo
   for viCount := 1 to Length(pisCodigo) div 2 do
   begin
      //Pega digitos de 2 em dois e codifica intercalando-os.
      for viAux := 1 to 5 do
      begin
         If CA[StrToInt(pisCodigo[viCount*2-1]),viAux] = '1'
            Then vsCodigo := vsCodigo + #255#255#255#255
            Else vsCodigo := vsCodigo + #255#255;
         If CA[StrToInt(pisCodigo[viCount*2]),viAux] = '1'
            Then vsCodigo := vsCodigo + #0#0#0#0
            Else vsCodigo := vsCodigo + #0#0;
      end;
   end;
   //Marcador de Fim
   vsCodigo := vsCodigo + #255#255#255#255#0#0#255#255;
   //Retorna comandos para impressão no modo gráfico
   result := #27'L'+Chr(Length(vsCodigo) mod 256)+Chr(Length(vsCodigo) div 256)+vsCodigo;
end;

function NumeroDV(Numero: String; DMod,num,pIndividual : Integer): String;
{
num=0  colocando digito 0 quando o mesmo for 10
       e somando os valores dos produtos quando a multiplicacao do mesmo
       for maior que nove

num=1  colocando digito 0 quando o mesmo for 10
       e somando os valores dos produtos quando a multiplicacao do mesmo
       for maior que nove   (POSSUI UM CRITÉRITO ESPECIAL) diferente do anterior
num=2 modulo 11 usado para BB para calculo de digito veriricador de agencia
      de cedente e de nosso numero
num=3 modulo 11 usado para BB para calculo de digito veriricador do codigos de
     barras do banco do brasil

pIndividual=0-Nao
            1-Sim
Utilizado quando a soma do resultado for feita caractere por caracrete, ou o total
frequencia no BANCO ITAU

}
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
if dmod=10 then
   begin
   x:=2;
   for z:=1 to y do
      begin
      ind:=FormatFloat('0',x)+ind;
      x:=x+1;
      if x>2 then
         x:=1;
      end;
   end
else if num=3 then
   begin
   x:=2;
   for z:=1 to y do
      begin
      ind:=FormatFloat('0',x)+ind;
      x:=x+1;
      if x>9 then
         x:=2;
      end;
   end
else
   begin
   x:=9;
   for z:=1 to y do
      begin
      ind:=FormatFloat('0',x)+ind;
      x:=x-1;
      if x<2 then
         x:=9;
      end;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   if (num=1) and (z>9) then
      z:=StrToInt(copy(FormatFloat('00',z),1,1))+StrToInt(copy(FormatFloat('00',z),2,1));
   if pIndividual=1 then
      begin
      mcinst:=IntToStr(z);
      for i:=1 to length(mcinst) do
         begin
         soma:=soma+StrToInt(mcinst[i]);
         end
      end
   else
      begin
      soma:=soma+z;
      end;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod DMod;  //10 ou 11
if (num=2) or (num=0) then
   dv:=somat
else
   dv    :=DMod-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (num=2) and (dv=10) then
   dv2:='X'
else if (num=3) and (dv>9) then
   dv2:='1'
else if (num=1) and (Dv>9) then
   dv2:='0'
else if (num=0) and (dv=10) then
   dv2:='0'
else If (DMod=11) and (dv>9) then dv2:='1';
Result:=dv2;
end;



function NumeroDV_Caixa104_Comdig0(Numero: String): String;
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);


x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (dv>9) then
   dv2:='0';
Result:=dv2;
end;




function NumeroDV_104caixaMod10(Numero: String): String;
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>2 then
      x:=1;
   end;

soma:=0; x:=1;
While y>0 do
  begin
  z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
  mcinst:=IntToStr(z);
  for i:=1 to length(mcinst) do
    begin
    soma:=soma+StrToInt(mcinst[i]);
    end;
  y:=y-1;
  x:=x+1;
  end;
somat:=soma mod 10;  //10 ou 11
dv    :=10-somat;
If ((dv<0)  or (dv>9)) then dv:=0;
dv2:=FormatFloat('0',dv);

Result:=dv2;
end;




// INICIO
function NumeroDV_Caixa104_semdig0(Numero: String): String;
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);


x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (dv>9) then
   dv2:='1';
Result:=dv2;
end;


// INICIO
function NumeroDV_ItauMod11(Numero: String): String;
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);


x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (dv>9) then
   dv2:='1';
Result:=dv2;
end;


// termino
function NumeroDV_ItauMod10(Numero: String): String;
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>2 then
      x:=1;
   end;

soma:=0; x:=1;
While y>0 do
  begin
  z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
  mcinst:=IntToStr(z);
  for i:=1 to length(mcinst) do
    begin
    soma:=soma+StrToInt(mcinst[i]);
    end;
  y:=y-1;
  x:=x+1;
  end;
somat:=soma mod 10;  //10 ou 11
dv    :=10-somat;
If ((dv<0)  or (dv>9)) then dv:=0;
dv2:=FormatFloat('0',dv);

Result:=dv2;
end;


// termino

function NumeroDV_BBMod10(Numero: String): String;

var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
//   ind:=ind+FormatFloat('0',x);
   x:=x+1;
   if x>2 then
      x:=1;
   end;
soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   mcinst:=inttostr(z);
   for i:=1 to length(mcinst) do
      begin
      soma:=soma+StrToInt(mcinst[i]);
      end;
   y:=y-1;
   end;
somat:=soma mod 10;  //10 ou 11
//showmessage(inttostr(soma));
dv    :=10-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (Dv>9) then
   dv2:='0';
Result:=dv2;
end;




//TERMINO



function NumeroDV_BBMod11(Numero: String): String;

{
Exclusivo para o banco do brasil modulo 11
}
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;


soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If (dv<=0) or (dv>9) then
   dv2:='1'
else
  dv2:=FormatFloat('0',dv);
Result:=dv2;
end;

// inicio safra


function NumeroDV_SafraMod10(Numero: String): String;

var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
//   ind:=ind+FormatFloat('0',x);
   x:=x+1;
   if x>2 then
      x:=1;
   end;
soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   mcinst:=inttostr(z);
   for i:=1 to length(mcinst) do
      begin
      soma:=soma+StrToInt(mcinst[i]);
      end;
   y:=y-1;
   end;
somat:=soma mod 10;  //10 ou 11
//showmessage(inttostr(soma));
dv    :=10-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (Dv>9) then
   dv2:='0';
Result:=dv2;
end;




//TERMINO



function NumeroDV_SafraMod11(Numero: String): String;

{
Exclusivo para o banco do brasil modulo 11
}
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;


soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If (dv<=0) or (dv>9) then
   dv2:='1'
else
  dv2:=FormatFloat('0',dv);
Result:=dv2;
end;


// termino safra



function NumeroDV_Sicob756Mod11(codigobarras: String): String;
const
//  indice = '54329876543298765432987654329876543298765432';
  indice = '43290876543298765432987654329876543298765432';
var
soma, contador, digito: integer;
begin

soma :=0;
for contador :=1 to 44 do
  if contador<>5 then
     soma := soma + (Strtoint(codigobarras[contador]) * strtoint(indice[contador]));
digito := 11 - (soma mod 11);
if (digito<=1) or (digito > 9) then digito :=1;
// colocar digito no codigo de barras
codigobarras[5] := inttostr(digito)[1];

result := codigobarras;
// Showmessage(result+' tamanho '+inttostr(length(codigobarras)) );
end;



{

function NumeroDV_Sicob756Mod11(Numero: String): String;

var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;


soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If (dv<=1) or (dv>9) then
   dv2:='1'
else
  dv2:=FormatFloat('0',dv);
Result:=dv2;
end;
}

function NumeroDV_CodBarMod11237(Numero: String): String; // BRADESCO
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>9 then
      x:=2;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
dv    :=11-somat;
If (dv<=0) or (dv>9) then
   dv2:='1'
else
  dv2:=FormatFloat('0',dv);
Result:=dv2;
end;

function NumeroDV_NosNumMod3197(Numero: String): String; //SICOOB
var
  codigo: String;
  Nr : String;
  x,y: Integer;
  xTotal: Integer;
  rest : Integer;
begin
codigo := '3197';
y:=1;
nr:=Trim(Numero);
for x:=1 to length(nr) do
  begin
  xTotal:=xTotal+StrToInt(nr[x])*StrToInt(codigo[y]);
  y:=y+1;
  if y > 4 then
    y:=1;
  end;
rest := xTotal mod 11;
if (rest = 1) or (rest=0) then
  rest :=0
else
  rest := 11 - rest;
Result:=IntToStr(rest);
end;



function NumeroDV_NosNumMod11237(Numero: String): String; // BRADESCO
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>7 then
      x:=2;
   end;

soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   soma:=soma+z;
   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 11;  //10 ou 11
//If (dv<=0) or (dv>9) then
If (somat=1)  then
   dv2:='P'
else If (somat=0)  then
   dv2:='0'
else
  begin
  dv    :=11-somat;
  dv2:=FormatFloat('0',dv);
  end;
Result:=dv2;
end;


function NumeroDV_CodBarMod10237(Numero: String): String; // BRADESCO
var
  dv,z,x, y,i, soma, somat: Integer;
  dv2,nr, ind   : string;
begin
nr:=Trim(Numero);
ind:='';
y:=Length(nr);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>2 then
      x:=1;
   end;
soma:=0; x:=1;
While y>0 do
   begin
   z := StrToInt(Copy(nr,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   if z>9 then
      soma:=soma+StrToInt( copy(FormatFloat('00',z),1,1) )
                 +StrToInt( copy(FormatFloat('00',z),2,1) )
   else
      soma:=soma+z;

   y:=y-1;
   x:=x+1;
   end;
somat:=soma mod 10;  //10 ou 11
if somat=0 then
   dv:=0
else
   dv    :=10-somat;
dv2:=FormatFloat('0',dv);
Result:=dv2;
end;

function NumeroDV_CodBarMod399NN(Numero: String): String; //HSBC NOSSO NUMERO
var
  soma: Real;
  rest: Integer;
begin
soma:=ValFloat(Copy(Numero,1,1))*5+ValFloat(Copy(Numero,2,1))*4+ValFloat(Copy(Numero,3,1))*3+ValFloat(Copy(Numero,4,1))*2
     +ValFloat(Copy(Numero,5,1))*7+ValFloat(Copy(Numero,6,1))*6+ValFloat(Copy(Numero,7,1))*5+ValFloat(Copy(Numero,8,1))*4
     +ValFloat(Copy(Numero,9,1))*3+ValFloat(Copy(Numero,10,1))*2;

rest := ValInt(FloatToStr(soma)) mod 11;

if (rest=0) or (rest=1) then
  Result:='0'
else
  Result:=FloatToStr(11-rest);
end;

function NumeroDV_CodBarMod399DC(Numero: String): String; //HSBC CAMPOS 01 02 03
var
  soma: Real;
  temp, temp2: Real;
  rest: Integer;
  xCont,xCont2: Integer;
  xFator: Integer;
  Tam: Integer;
begin
soma:=0;
if (length(numero) mod 10)=0 then
  xFator:=1
else
  xFator:=2;
for xCont:=1 to length(numero) do
  begin
  temp:=ValFloat(Copy(Numero,xCont,1))*xFator;
  if temp>9 then
    begin
    temp2:=temp;
    temp:=0;
    Tam:=Length(FloatToStr(temp2));
    for xCont2:=1 to Tam do
      begin
      temp:=temp+ValFloat(Copy(FloatToStr(temp2),xCont2,1));
      end;
    end;

  soma:=soma+temp;
  if xFator=2 then
    xFator:=1
  else
    xFator:=2;
  end;
rest := ValInt(FloatToStr(soma)) mod 10;
if (rest=0) then
  Result:='0'
else
  Result:=FloatToStr(10-rest);
end;

function NumeroDV_CodBarMod399BB(Numero: String): String; // HSBC BOLETO BANCARIO
var
  soma: Real;
  rest: Real;
  xCont: Integer;
  xFator: Integer;
begin
soma:=0;
rest:=0;
xFator:=4;
for xCont:=1 to length(Numero) do
  begin
  soma:=soma+ValFloat(Numero[xCont])*xFator;
  xFator:=xFator-1;
  if xFator<2 then
    xFator:=9;
  end;
rest :=ValInt(FloatToStr(soma)) mod 11;
if (rest=0) or (rest=1) or (rest=10) then
  Result:='1'
else
  Result:=FloatToStr(11-rest);
end;


//Abertura do cupom fiscal
{
function AbreCupom(mRede: String; mlocal: String; mPorta: Integer): Integer;
var
  iRetorno, mRet, mnum: Integer;
  Buffer, marq: String;
  F: TextFile;
begin
mRet:=2;
Buffer:=#27+'|00|'+#27;
If mRede='S' then
   begin
   mnum:=0;
   while true do
      begin
      mnum:=mnum+1;
      marq:=mlocal+'\ARQ'+FormatFloat('00000',mnum)+'.CMD';
      If FileExists(marq) then Continue;
      Break;
      end;
   AssignFile(F,marq);
   ReWrite(F);
   WriteLn(F,Buffer);
   System.CloseFile(F);
   end
else
   begin
   //Abrindo Porta
   iRetorno := IniPortaStr(IIF(mPorta=0,'COM1','COM2'));
   if iRetorno=0 then
      begin

      fmensagem('Erro ao inicializar porta!',0,['0'],0);
      Result:=mRet;
      exit;
      end;
   iRetorno:=FormataTX(Buffer);
   If iRetorno=1 then
      begin
      '
      fmensagem('Não foi possível abrir o cupom!',0,['0'],0);
      mRet:=1;
      end
   else mRet:=0;
   end;
Result:=mRet;
end;
}
function smaster(mcampop: String): Boolean;
begin
//(Copy(TimeToStr(Time),1,2)+Copy(TimeToStr(Time),4,2)
//   +Copy(DateToStr(Date),1,2))) then

if DM1.Tb_PargerPFSM.Value=1 then
   begin
   if (mcampop=FormatFloat('00',DayOfWeek(date))+FormatDateTime('dd',date)+FormatDateTime('hhnn',time)+FormatDateTime('yyyy',date)) then
      result:=True
   else
      Result:=False;
   end
else
   begin
   If (mcampop=FormatFloat('00',DayOfWeek(date))+FormatDateTime('dd',date)+FormatDateTime('hh',time)+FormatDateTime('yy',date)) then
      result:=True
   else
      Result:=False;
   end;
end;

function centratexto(texto: String; ptipo,cttamanho: Integer): String;
var
mlinha,mtexton,mtextor: String;
mcol,mtam,mincr,mbloco: Integer;
mt: Boolean;
begin
mbloco:=cttamanho;
mtexton:='';
mtextor:=texto;
While Trim(mtextor)<>'' do
  begin
  mincr:=0;
  mlinha:=copy(mtextor,1,mbloco);
  mtextor:=copy(mtextor,mbloco+1,length(mtextor)-mbloco+1);
  if copy(mtextor,1,1)=' ' then
     begin
     mtexton:=mtexton+mlinha;
     mtextor:=Trim(mtextor);
     Continue;
     end
  else
     begin
     mincr:=0;
     While true do
        begin
        if (copy(mlinha,mbloco-mincr,1)=' ') or (copy(mlinha,mbloco-mincr,1)='')  then
           begin
           mincr:=mincr+1;
           break;
           end;
        mincr:=mincr+1;
        if mincr>cttamanho then
           begin
           mincr:=0;
           break;
           end;
       end;
     end;
  mcol:=1;
  mt:=False;
  While mcol<mbloco+1 do
     begin
     if copy(mlinha,mcol,1)=' ' then
        begin
        mt:=True;
        break;
        end;
     mcol:=mcol+1;
     end;
  if (mt) and (length(trim(mlinha))>=mbloco-2) then
     begin
     mcol:=1;
     while mincr>0 do
        begin
        if copy(mlinha,mcol,1)=' ' then
           begin
           mtam:=length(mlinha)-mcol;
           if ptipo=0 then
              mlinha:=copy(mlinha,1,mcol)+' '+copy(mlinha,mcol+1,mtam)
           else
              mlinha:=' '+mlinha;
           mincr:=mincr-1;
           While true do
              begin
              if copy(mlinha,mcol,1)=' ' then
                 begin
                 mcol:=mcol+1;
                 if mcol>=mbloco then
                    begin
                    mcol:=1;
                    break;
                    end;
                 end
              else
                 break;
              end;
           end
        else
           begin
           mcol:=mcol+1;
           if mcol>=mbloco then
              mcol:=1;
           end;
        end;
     end;
  mtam:=length(mlinha);
  if mtam>mbloco then
     begin
     mtam:=mtam-mbloco;
     mtextor:=Trim(copy(mlinha,mbloco+1,mtam))+mtextor;
     mlinha:=copy(mlinha,1,mbloco);
     end;
  mtexton:=mtexton+mlinha;
  end;
result:=mtexton;
end;


function FIRPERCond(PTCONDT1, PTCONDT2, PTCOND01, PTCOND02, PTCONDOP,
                    PTCOND_CONT,PTCOND_02_T1, PTCOND_02_T2, PTCOND_02_01, PTCOND_02_02, PTCOND_02_OP,
                    PTCOND_CONT03,PTCOND_03_T1, PTCOND_03_T2, PTCOND_03_01, PTCOND_03_02, PTCOND_03_OP: String): Boolean;


var
mcont: String;
mcont2: String;
mcont3: String;

begin
if (Trim(PTCONDT1)='D') and (Trim(PTCOND01)='') then
   PTCOND01:='01/01/1900';
if (Trim(PTCONDT2)='D') and (Trim(PTCOND02)='') then
   PTCOND02:='01/01/1900';
{if trim(PTCONDT1)='D' then
   mcont:='';
}
mcont :='N';
mcont2:='N';


PTCONDT1:=Trim(PTCONDT1);
PTCONDT2:=Trim(PTCONDT2);
PTCOND01:=Trim(PTCOND01);
PTCOND02:=Trim(PTCOND02);
PTCONDOP:=Trim(PTCONDOP);

if ptcond02='[Nulo/Branco]' then
   begin
   if PTCONDOP='=' then
      begin
      if trim(PTCOND01)='' then
          mcont:='S'
      else
          mcont:='N';
      end
   else if PTCONDOP='<>' then
      begin
      if trim(PTCOND01)<>'' then
          mcont:='S'
      else
          mcont:='N';
      end;
   end
else if PTCONDT1='N' then
   begin
   if PTCONDT2='V' then
      begin
      if PTCONDOP='=' then
         begin
         if valfloat(PTCOND01)=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if valfloat(PTCOND01)<valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if valfloat(PTCOND01)>valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if valfloat(PTCOND01)>=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if valfloat(PTCOND01)<=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
         if valfloat(PTCOND01)<>valfloat(PTCOND02) then
            mcont:='S'
         end;
      end
   else
      begin
      if PTCONDOP='=' then
         begin
         if valfloat(PTCOND01)=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if valfloat(PTCOND01)<valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if valfloat(PTCOND01)>valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if valfloat(PTCOND01)>=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if valfloat(PTCOND01)<=valfloat(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
         if valfloat(PTCOND01)<>valfloat(PTCOND02) then
            mcont:='S'
         end;
      end;
   end
else if PTCONDT1='D' then
   begin
   if PTCONDT2='V' then
      begin
      if PTCONDOP='=' then
         begin
         if StrToDateTime(PTCOND01)=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if StrToDateTime(PTCOND01)<StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if StrToDateTime(PTCOND01)>StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if StrToDateTime(PTCOND01)>=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if StrToDateTime(PTCOND01)<=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
         if StrToDateTime(PTCOND01)<>StrToDateTime(PTCOND02) then
            mcont:='S'
         end;
      end
   else
      begin
      if PTCONDOP='=' then
         begin
         if StrToDateTime(PTCOND01)=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if StrToDateTime(PTCOND01)<StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if StrToDateTime(PTCOND01)>StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if StrToDateTime(PTCOND01)>=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if StrToDateTime(PTCOND01)<=StrToDateTime(PTCOND02) then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
         if StrToDateTime(PTCOND01)<>StrToDateTime(PTCOND02) then
            mcont:='S'
         end;
      end;
   end
else
   begin
   if PTCONDT2='V' then
      begin
      if PTCONDOP='=' then
         begin
         if PTCOND01=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if PTCOND01<PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if PTCOND01>PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if PTCOND01>=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if PTCOND01<=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
        if PTCOND01<>PTCOND02 then
            mcont:='S'
         end;
      end
   else
      begin
      if PTCONDOP='=' then
         begin
         if PTCOND01=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<' then
         begin
         if PTCOND01<PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='>' then
         begin
         if PTCOND01>PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='>=' then
         begin
         if PTCOND01>=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<=' then
         begin
         if PTCOND01<=PTCOND02 then
            mcont:='S'
         end
      else if PTCONDOP='<>' then
         begin
         if PTCOND01<>PTCOND02 then
            mcont:='S'
         end;
      end;
   end;
// inicio das segundas funcoes

mcont2:='';
if trim(PTCOND_CONT)<>'' then
   begin
   if (Trim(PTCOND_02_T1)='D') and (Trim(PTCOND_02_01)='') then
      PTCOND_02_01:='01/01/1900';
   if (Trim(PTCOND_02_T2)='D') and (Trim(PTCOND_02_02)='') then
      PTCOND_02_02:='01/01/1900';
   if trim(PTCOND_02_T1)='D' then
      mcont2:='';
   PTCOND_02_T1:=Trim(PTCOND_02_T1);
   PTCOND_02_T2:=Trim(PTCOND_02_T2);
   PTCOND_02_01:=Trim(PTCOND_02_01);
   PTCOND_02_02:=Trim(PTCOND_02_02);
   PTCOND_02_OP:=Trim(PTCOND_02_OP);
   if PTCOND_02_02='[Nulo/Branco]' then
      begin
      if PTCOND_02_OP='=' then
         begin
         if trim(PTCOND_02_01)='' then
             mcont2:='S'
         else
             mcont2:='N';
         end
      else if PTCOND_02_OP='<>' then
         begin
         if trim(PTCOND_02_01)<>'' then
             mcont2:='S'
         else
             mcont2:='N';
         end;
      end
   else if PTCOND_02_T1='N' then
      begin
      if PTCOND_02_T2='V' then
         begin
         if PTCOND_02_OP='=' then
            begin
            if valfloat(PTCOND_02_01)=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if valfloat(PTCOND_02_01)<valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if valfloat(PTCOND_02_01)>valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if valfloat(PTCOND_02_01)>=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if valfloat(PTCOND_02_01)<=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if valfloat(PTCOND_02_01)<>valfloat(PTCOND_02_02) then
               mcont2:='S'
            end;
         end
      else
         begin
         if PTCOND_02_OP='=' then
            begin
            if valfloat(PTCOND_02_01)=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if valfloat(PTCOND_02_01)<valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if valfloat(PTCOND_02_01)>valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if valfloat(PTCOND_02_01)>=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if valfloat(PTCOND_02_01)<=valfloat(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if valfloat(PTCOND_02_01)<>valfloat(PTCOND_02_02) then
               mcont2:='S'
            end;
         end;
      end
   else if PTCOND_02_T1='D' then
      begin
      if PTCOND_02_T2='V' then
         begin
         if PTCOND_02_OP='=' then
            begin
            if StrToDateTime(PTCOND_02_01)=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if StrToDateTime(PTCOND_02_01)<StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if StrToDateTime(PTCOND_02_01)>StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if StrToDateTime(PTCOND_02_01)>=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if StrToDateTime(PTCOND_02_01)<=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if StrToDateTime(PTCOND_02_01)<>StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end;
         end
      else
         begin
         if PTCOND_02_OP='=' then
            begin
            if StrToDateTime(PTCOND_02_01)=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if StrToDateTime(PTCOND_02_01)<StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if StrToDateTime(PTCOND_02_01)>StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if StrToDateTime(PTCOND_02_01)>=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if StrToDateTime(PTCOND_02_01)<=StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if StrToDateTime(PTCOND_02_01)<>StrToDateTime(PTCOND_02_02) then
               mcont2:='S'
            end;
         end;
      end
   else
      begin
      if PTCOND_02_T2='V' then
         begin
         if PTCOND_02_OP='=' then
            begin
            if PTCOND_02_01=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if PTCOND_02_01<PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if PTCOND_02_01>PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if PTCOND_02_01>=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if PTCOND_02_01<=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if PTCOND_02_01<>PTCOND_02_02 then
               mcont2:='S'
            end;
         end
      else
         begin
         if PTCOND_02_OP='=' then
            begin
            if PTCOND_02_01=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<' then
            begin
            if PTCOND_02_01<PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>' then
            begin
            if PTCOND_02_01>PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='>=' then
            begin
            if PTCOND_02_01>=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<=' then
            begin
            if PTCOND_02_01<=PTCOND_02_02 then
               mcont2:='S'
            end
         else if PTCOND_02_OP='<>' then
            begin
            if PTCOND_02_01<>PTCOND_02_02 then
               mcont2:='S'
            end;
         end;
      end;
   end;
// inicio da terceira

mcont3:='';
if trim(PTCOND_CONT03)<>'' then
   begin
   if (Trim(PTCOND_03_T1)='D') and (Trim(PTCOND_03_01)='') then
      PTCOND_03_01:='01/01/1900';
   if (Trim(PTCOND_03_T2)='D') and (Trim(PTCOND_03_02)='') then
      PTCOND_03_02:='01/01/1900';
   if trim(PTCOND_03_T1)='D' then
      mcont3:='';
   PTCOND_03_T1:=Trim(PTCOND_03_T1);
   PTCOND_03_T2:=Trim(PTCOND_03_T2);
   PTCOND_03_01:=Trim(PTCOND_03_01);
   PTCOND_03_02:=Trim(PTCOND_03_02);
   PTCOND_03_OP:=Trim(PTCOND_03_OP);

   if PTCOND_03_02='[Nulo/Branco]' then
      begin
      if PTCOND_03_OP='=' then
         begin
         if trim(PTCOND_03_01)='' then
             mcont3:='S'
         else
             mcont3:='N';
         end
      else if PTCOND_03_OP='<>' then
         begin
         if trim(PTCOND_03_01)<>'' then
             mcont3:='S'
         else
             mcont3:='N';
         end;
      end
   else if PTCOND_03_T1='N' then
      begin
      if PTCOND_03_T2='V' then
         begin
         if PTCOND_03_OP='=' then
            begin
            if valfloat(PTCOND_03_01)=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if valfloat(PTCOND_03_01)<valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if valfloat(PTCOND_03_01)>valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if valfloat(PTCOND_03_01)>=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if valfloat(PTCOND_03_01)<=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if valfloat(PTCOND_03_01)<>valfloat(PTCOND_03_02) then
               mcont3:='S'
            end;
         end
      else
         begin
         if PTCOND_03_OP='=' then
            begin
            if valfloat(PTCOND_03_01)=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if valfloat(PTCOND_03_01)<valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if valfloat(PTCOND_03_01)>valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if valfloat(PTCOND_03_01)>=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if valfloat(PTCOND_03_01)<=valfloat(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if valfloat(PTCOND_03_01)<>valfloat(PTCOND_03_02) then
               mcont3:='S'
            end;
         end;
      end
   else if PTCOND_03_T1='D' then
      begin
      if PTCOND_03_T2='V' then
         begin
         if PTCOND_03_OP='=' then
            begin
            if StrToDateTime(PTCOND_03_01)=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if StrToDateTime(PTCOND_03_01)<StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if StrToDateTime(PTCOND_03_01)>StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if StrToDateTime(PTCOND_03_01)>=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if StrToDateTime(PTCOND_03_01)<=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if StrToDateTime(PTCOND_03_01)<>StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end;
         end
      else
         begin
         if PTCOND_03_OP='=' then
            begin
            if StrToDateTime(PTCOND_03_01)=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if StrToDateTime(PTCOND_03_01)<StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if StrToDateTime(PTCOND_03_01)>StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if StrToDateTime(PTCOND_03_01)>=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if StrToDateTime(PTCOND_03_01)<=StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if StrToDateTime(PTCOND_03_01)<>StrToDateTime(PTCOND_03_02) then
               mcont3:='S'
            end;
         end;
      end
   else
      begin
      if PTCOND_03_T2='V' then
         begin
         if PTCOND_03_OP='=' then
            begin
            if PTCOND_03_01=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if PTCOND_03_01<PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if PTCOND_03_01>PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if PTCOND_03_01>=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if PTCOND_03_01<=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if PTCOND_03_01<>PTCOND_03_02 then
               mcont3:='S'
            end;
         end
      else
         begin
         if PTCOND_03_OP='=' then
            begin
            if PTCOND_03_01=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<' then
            begin
            if PTCOND_03_01<PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>' then
            begin
            if PTCOND_03_01>PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='>=' then
            begin
            if PTCOND_03_01>=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<=' then
            begin
            if PTCOND_03_01<=PTCOND_03_02 then
               mcont3:='S'
            end
         else if PTCOND_03_OP='<>' then
            begin
            if PTCOND_03_01<>PTCOND_03_02 then
               mcont3:='S'
            end;
         end;
      end;
   end;

// termino da terceira


if (trim(PTCOND_CONT)='') and  (trim(PTCOND_CONT03)='') then
   begin
   if mcont='S' then
      Result:=True
   else
      Result:=False;
   end
else if trim(PTCOND_CONT)='' then
   begin
   if mcont='S' then
      Result:=True
   else
      Result:=False;
   end
else
   begin
   if (trim(PTCOND_CONT03)='') then
      begin
      if (trim(ptcond_cont)='e') then
         begin
         if (mcont='S') and (mcont2='S') then
            result:=true
         else
            result:=false;
         end
      else  if trim(ptcond_cont)='ou' then
         begin
         if (mcont='S') or (mcont2='S') then
            result:=true
         else
            result:=false;
         end;
      end
   else
      begin
      if (trim(PTCOND_CONT)='e') and
         (trim(PTCOND_CONT03)='e') then
         begin
         if (mcont='S') and (mcont2='S') and (mcont3='S')  then
            result:=true
         else
            result:=false;
         end
      else if (trim(PTCOND_CONT)='e') and
              (trim(PTCOND_CONT03)='ou') then
         begin
         if ((mcont='S') and (mcont2='S')) or (mcont3='S') then
            result:=true
         else
            result:=false;
         end
      else if (trim(PTCOND_CONT)='ou') and
              (trim(PTCOND_CONT03)='ou') then
         begin
         if (mcont='S') or (mcont2='S') or (mcont3='S') then
            result:=true
         else
            result:=false;
         end
      else if (trim(PTCOND_CONT)='ou') and
              (trim(PTCOND_CONT03)='e') then
         begin
         if ((mcont='S') or (mcont2='S')) and (mcont3='S') then
            result:=true
         else
            result:=false;
         end;
      end;
   end;
end;

function firpertp(ptipo:Integer):Boolean;
begin
rplin:=0;
if fnumcol<2 then
   begin
   Frm_Impres.Rdprint1.Novapagina;
   end
else if ftpcol=0 then
   begin
   rpncol:=rpncol+1;
   if rpncol>fnumcol then
      begin
      Frm_Impres.Rdprint1.Novapagina;
      rpncol:=1;
      end;
   if rpncol=1 then
      rpcolp:=0
   else
      rpcolp:=rpcolp+fintcol;
   end
else
   begin
   Frm_Impres.Rdprint1.Novapagina;
   rplin:=0;
   end;

result:=True;
end;


function firpcalc(pvar: Integer; pvalor0,pvalor1,pvalor2,pvalor3: Real; pop0, pop1, pop2: String): Boolean;
var
mvalRes: Real;
begin
if pvalor0>999999999999999 then
   pvalor0:=0;

if pvalor1>999999999999999 then
   pvalor1:=0;
if pvalor2>999999999999999 then
   pvalor2:=0;
if pvalor3>999999999999999 then
   pvalor3:=0;

if pvalor1<>0 then
   pvalor1:=Arredonda(pvalor1,3);
if pvalor2<>0 then
   pvalor2:=Arredonda(pvalor2,3);
if pvalor3<>0 then
   pvalor3:=Arredonda(pvalor3,3);
mvalRes:=0;



if pop0='' then
   mvalRes:=pvalor0
else if pop0='*' then
   begin
   try
      mvalRes:=pvalor0*pvalor1;
      mvalRes:=Arredonda(mvalRes,6);
   except
      mvalRes:=pvalor0*Arredonda(pvalor1,6);
      end;
   end
else if pop0='/' then
   begin
   try
      mvalRes:=pvalor0/pvalor1;
      mvalRes:=Arredonda(mvalRes,6);
   except
      mvalRes:=0;
//      ShowMessage('Divisao Inadequada! Favor Corrigir a Formula');
      end
   end
else if pop0='-' then
   begin
   mvalRes:=pvalor0-pvalor1;
   mvalRes:=Arredonda(mvalRes,6);
   end
else if pop0='P' then
   begin
   try
      mvalRes:=pvalor0*pvalor1/100;
      mvalRes:=Arredonda(mvalRes,6);
   except
      mvalRes:=pvalor0*Arredonda(pvalor1,6);
      end;
   end
else
   mvalRes:=pvalor0+pvalor1;
mvalRes:=Arredonda(mvalRes,6);

if (pop1='*') and (mvalRes<>0) then
   begin
   try
      mvalRes:=mvalRes*pvalor2;
   except
      mvalres:=0;
      end;
   end
else if pop1='/' then
   begin
   try
      mvalRes:=mvalRes/pvalor2;
   except
      mvalRes:=0;
//      ShowMessage('Divisao Inadequada! Corrigir a Formula');
      end;
   end
else if pop1='-' then
   mvalRes:=mvalRes-pvalor2
else if pop1='P' then
   begin
   try
      mvalRes:=mvalRes*pvalor2/100;
   except
      end;
   end
else if pop1='+' then
   mvalRes:=mvalRes+pvalor2;
if (pop2='*') and (mvalRes<>0) then
   begin
   try
      mvalRes:=mvalRes*pvalor3;
   except
      end;
   end
else if pop2='/'  then
   begin
   try
      mvalRes:=mvalRes/pvalor3;
      mvalRes:=Arredonda(mvalRes,DM1.Tb_PargerPCASAS.AsInteger);
   except
      mvalRes:=0;
//      ShowMessage('Divisao Inadequada! Corrigir Formula');
      end;
   end
else if pop2='-' then
   mvalRes:=mvalRes-pvalor3
else if pop2='P' then
   begin
   try
      mvalRes:=mvalRes*pvalor3/300;
      mvalRes:=Arredonda(mvalRes,DM1.Tb_PargerPCASAS.AsInteger);
   except
      end;
   end
else if pop2='+' then
   mvalRes:=mvalRes+pvalor3;
mvalRes:=Arredonda(mvalRes,6);

mtopper[pvar]:=mvalRes;
result:=True;
end;
function UserName : String;
var
lpBuffer : Array[0..20] of Char;
nSize    : dWord;
Achou    : boolean;
erro     : dWord;
begin
nSize      := 120;
Achou      := GetUserName(lpBuffer,nSize);
if (Achou) then
   begin
   result   := lpBuffer;
   end
else
   begin
   Erro   :=GetLastError();
   result :=IntToStr(Erro);
   end;
end;


function zeranegreal(pvalor: Real): Real;
begin
if pvalor<1 then
   Result:=0
else
   result:=pvalor;
end;


function fperiodo(ptipo:Integer;pdt1,pdt2:String ):String;
var
periodo: String;
begin

if (Trim(pdt1)='/  /') and (Trim(pdt2)='/  /') then
   begin
   if ptipo=0 then
      periodo:='Todas as datas.'
   else
      periodo:='';
   end
else if (Trim(pdt1)='/  /') and (Trim(pdt2)<>'/  /') then
   periodo:='Ate: '+pdt2
else if (Trim(pdt1)<>'/  /') and (Trim(pdt2)='/  /') then
   periodo:='A partir de '+PDT1
else
   periodo:='Periodo de '+PDT1+' a '+PDT2;
result:=periodo;
end;


{ Esta função retorna o endereço IP do Dial-Up. }

function GetLocalIP : string;
type
TaPInAddr = array [0..10] of PInAddr;
PaPInAddr = ^TaPInAddr;
var
phe : PHostEnt;
pptr : PaPInAddr;
Buffer : array [0..63] of char;
I : Integer;
GInitData : TWSADATA;
begin
WSAStartup($101, GInitData);
Result := '';
GetHostName(Buffer, SizeOf(Buffer));
phe :=GetHostByName(buffer);
if phe = nil then Exit;
pptr := PaPInAddr(Phe^.h_addr_list);
I := 0;
while pptr^[I] <> nil do begin
result:=StrPas(inet_ntoa(pptr^[I]^));
result := StrPas(inet_ntoa(pptr^[I]^));
Inc(I);
end;
WSACleanup;
end;


function fexecprog(pnomprog : String; Estado : Integer) : Integer;
//
// executa um programa e espera sua finalização
//
// Valores para Estdo: 4-SW_SHOWNORMAL   Janela em modo normal
//                     SW_MAXIMIZE     Janela maximizada
//                     SW_MINIMIZE     Janela minimizada
//                     0-SW_HIDE         Janela Escondida
//
var
Programa : array [0..512] of char;
CurDir   : array [0..255] of char;
WorkDir  : String;
StartupInfo : TStartupInfo;
ProcessInfo : TProcessInformation;
begin
StrPCopy (Programa, pnomprog);
GetDir (0, WorkDir);
StrPCopy (CurDir, WorkDir);
FillChar (StartupInfo, Sizeof (StartupInfo), #0);
StartupInfo.cb := sizeof (StartupInfo);
StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Estado;
if not CreateProcess (nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
   begin
   Result:=-1;
   end
else
   begin
   WaitForSingleObject (ProcessInfo.hProcess, Infinite);
   result:=0;
//   GetExitCodeProcess (ProcessInfo.hProcess, Result);
   end;
end;



function fexecprog_espera(pnomprog : String; Estado : Integer) : Integer;
//
// executa um programa e espera sua finalização
//
// Valores para Estdo: 4-SW_SHOWNORMAL   Janela em modo normal
//                     SW_MAXIMIZE     Janela maximizada
//                     SW_MINIMIZE     Janela minimizada
//                     0-SW_HIDE         Janela Escondida
//
var
Programa : array [0..51200] of char;
CurDir   : array [0..255] of char;
WorkDir  : String;
StartupInfo : TStartupInfo;
ProcessInfo : TProcessInformation;
begin
fSalvarTextoparaArquivo2(pnomprog);
StrPCopy (Programa, pnomprog);
GetDir (0, WorkDir);
StrPCopy (CurDir, WorkDir);
FillChar (StartupInfo, Sizeof (StartupInfo), #0);
StartupInfo.cb := sizeof (StartupInfo);
StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Estado;
if not CreateProcess (nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
   begin
   Result:=-1;
   end
else
   begin
   WaitForSingleObject (ProcessInfo.hProcess, Infinite);
   result:=0;
//   GetExitCodeProcess (ProcessInfo.hProcess, Result);
   end;
end;


{
function fexecprog(pnomprog:String ):Boolean;


//
// executa um programa e espera sua finalização
//
// Valores para Estdo: SW_SHOWNORMAL   Janela em modo normal
//                     SW_MAXIMIZE     Janela maximizada
//                     SW_MINIMIZE     Janela minimizada
//                     SW_HIDE         Janela Escondida
//
var
Programa : array [0..512] of char;
CurDir   : array [0..255] of char;
WorkDir  : String;
StartupInfo : TStartupInfo;
ProcessInfo : TProcessInformation;
begin
StrPCopy (Programa, Arquivo);
GetDir (0, WorkDir);
StrPCopy (CurDir, WorkDir);
FillChar (StartupInfo, Sizeof (StartupInfo), #0);
StartupInfo.cb := sizeof (StartupInfo);
StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Estado;
if not CreateProcess (nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
   begin
   Result := -1;
   end
else
   begin
   WaitForSingleObject (ProcessInfo.hProcess, Infinite);
   GetExitCodeProcess (ProcessInfo.hProcess, Result);
    end;

var
startupinfo: Tstartupinfo;
ProcessInfo: TprocessInformation;

begin
FillChar(startupinfo,sizeof(Tstartupinfo),0);
startupinfo.cb:=sizeof(Tstartupinfo);
StartupInfo.wShowWindow:=SW_HIDE;

if createProcess(nil, pchar(pnomprog),nil,nil,false,NORMAL_PRIORITY_CLASS,nil,0,startupinfo,processinfo) then
   begin
   waitforsingleobject(processinfo.hprocess,infinite);
   closehandle(processinfo.hprocess);
   Result:=True;
   end
else
   begin
   closehandle(processinfo.hprocess);
   Result:=False;
   end;

end;
}

function fvertam(ptexto: String; pmaximo: Integer): Boolean;
begin
if length(ptexto)>(pmaximo-1) then
   begin

   fmensagem('Este Campo não conter mais do que '+IntToStr(pmaximo)+' caractere(s)',0,['0'],0);

   result:=False;
   end
else
   result:=True;
end;
function fTamanhoArq(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR.Size);
  end;
end;

function fdatafinal(pqtdmes: Integer;pdata: TDateTime): TDateTime;
var
mdataf: TDateTime;
x: Integer;
dia,mes,ano: Word;
mdia: Integer;
begin
DecodeDate(pdata,ano,mes,dia);
if dia>27 then
   dia:=01;
mdataf:=StrToDate(FormatFloat('00',dia)+'/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano));
if pqtdmes>=0 then
   begin
   for x:=1 to (pqtdmes-1) do
      begin
      mes:=mes+1;
      if mes>12 then
         begin
         mes:=1;
         ano:=ano+1;
         end;
      mdataf:=StrToDate(FormatFloat('00',dia)+'/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano));
      end;
   end
else
   begin
   for x:=1 to ((pqtdmes*-1)) do
      begin
      mes:=mes-1;
      if mes<1 then
         begin
         mes:=12;
         ano:=ano-1;
         end;
      mdataf:=StrToDate(FormatFloat('00',dia)+'/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano));
      end;
   end;
While true do
   begin
   mdataf:=mdataf+1;
   if FormatDatetime('mm',mdataf)<>FormatFloat('00',mes) then
      begin
      mdataf:=mdataf-1;
      break;
      end;
   end;
result:=mdataf;
end;
function DeleteFolder(FolderName: String; LeaveFolder: Boolean): Boolean;
var
r: TshFileOpStruct;
begin
Result := False;
if not DirectoryExists(FolderName) then
Exit;
if LeaveFolder then
FolderName := FolderName + '*.*'
else
if FolderName[Length(FolderName)] = '\' then
   Delete(FolderName,Length(FolderName), 1);
FillChar(r, SizeOf(r), 0);
r.wFunc := FO_DELETE;
r.pFrom := PChar(FolderName);
r.fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION;
try
   Result := ((ShFileOperation(r) = 0) and (not r.fAnyOperationsAborted));
except
   result:=false;
   end;
end;

function verteclado(ptipo: Integer): Boolean;
begin

//Application.ProcessMessages;
result:=True;
{
if ptipo=0 then
   begin
   application.UpdateFormatSettings := false;
   if cancelar_proc then
      begin
      fmensagem('Operação Cancelada!',0,['0'],0);

      Result:=False;
      end;
  application.UpdateFormatSettings := true;
  application.RestoreTopMosts;
  end;
}
end;


function verteclado_02(ptipo: Integer): Boolean;
begin

Application.ProcessMessages;
result:=True;

if ptipo=0 then
   begin
   application.UpdateFormatSettings := false;
   if cancelar_proc then
      begin
      fmensagem('Operação Cancelada!',0,['0'],0);

      Result:=False;
      end;
  application.UpdateFormatSettings := true;
  application.RestoreTopMosts;
  end;

end;


function ftestapalavra(ptipo: Integer;ppalavra: String): Boolean;
var
// ptipo = 0 Espacos ptipo=1 se repete
y,x: Integer;
begin
result:=True;
if ptipo=0 then
   begin
   for y:=1 to length(ppalavra) do
      begin
      if Trim(ppalavra[y])='' then
         Result:=False;
      end;
   end
else if ptipo=1 then
   begin
   for y:=1 to length(ppalavra) do
      begin
      if y<>1 then
         begin
         if ppalavra[1]=ppalavra[y] then
            result:=False;
         end;
      if y<>2 then
         begin
         if ppalavra[2]=ppalavra[y] then
            result:=False;
         end;
      if y<>3 then
         begin
         if ppalavra[3]=ppalavra[y] then
            result:=False;
         end;
      if y<>4 then
         begin
         if ppalavra[4]=ppalavra[y] then
            result:=False;
         end;
      if y<>5 then
         begin
         if ppalavra[5]=ppalavra[y] then
            result:=False;
         end;
      if y<>6 then
         begin
         if ppalavra[6]=ppalavra[y] then
            result:=False;
         end;
      if y<>7 then
         begin
         if ppalavra[7]=ppalavra[y] then
            result:=False;
         end;
      if y<>8 then
         begin
         if ppalavra[8]=ppalavra[y] then
            result:=False;
         end;
      if y<>9 then
         begin
         if ppalavra[9]=ppalavra[y] then
           result:=False;
         end;
     if y<>10 then
        begin
        if ppalavra[10]=ppalavra[y] then
           result:=False;
         end;
      end;
   end
else if ptipo=2 then
   begin
   for y:=1 to Length(pPalavra) do
      begin
      if (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[1]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[2]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[3]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[4]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[5]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[6]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[7]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[8]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[9]) or
         (ppalavra[y]=DM1.Tb_PargerPPALNUM.Value[10]) then
      else
         result:=False;
      end;
   end;
end;
function FTextoVal(texto:String): String;
var
  x: integer;
  maux: string;
begin
maux:='';
Texto:=Trim(UpperCase(Texto));
for x:=1 to Length(Texto) do
   If Texto[x] in ['A'..'Z','0'..'9','_'] then
      maux:=maux+Texto[x]
   else if (Texto[x]=' ') or  (Texto[x]='-') then
      maux:=maux+'_';
Result:=maux;

end;

Function NomeComputador : String;
var
lpBuffer : PChar;
nSize : DWord;
const
Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
nSize := Buff_Size;
lpBuffer := StrAlloc(Buff_Size);
GetComputerName(lpBuffer,nSize);
Result := String(lpBuffer);
StrDispose(lpBuffer);
end;

function Impressora_Padrao(ptipo: Integer): String;
var
device: array [0..255] of char;
driver: array [0..255] of char;
port: array [0..255] of char;
hDmode: Thandle;
begin
Printer.GetPrinter(Device,Driver,Port,hdMode);
result:=device;
end;


function fTestaTam(ptipo,ptam: Integer; pTexto,pCarac:String ): Boolean;
{
ptipo=0 Testa Tamanho
     =1 Testa Tamanho on keypress - 1
     =2 Testa Tamanho e se é positivo
}
begin
result:=True;
if ptipo=0 then
   begin
   if Length(pTexto)>ptam then
      begin

      fmensagem('Campo não Pode ter mais que '+IntToStr(ptam)+' Invalido!',0,['0'],0);
      result:=False
      end;
   end
else if ptipo=1 then
   begin
   if pchar(pCarac)=#8 then
      result:=true
//   else if Length(pTexto)>(ptam-1) then
   else if Length(pTexto)>(ptam) then
      begin
      result:=False
      end;
   end
else if ptipo=2 then
   begin
   if Length(pTexto)>ptam then
      begin

      fmensagem('Campo não Pode ter mais que '+IntToStr(ptam)+' Invalido!',0,['0'],0);

      result:=False
      end
   else if ValFloat(pTexto)<0 then
      begin

      fmensagem('O Valor deste Campo não pode ser negativo, inválido!',0,['0'],0);

      result:=False
      end;
   end;

end;

function fPrimeirodiames(mdata: tDateTime): TdateTime;
begin
   result:=StrToDate('01/'+formatDateTime('mm/yyyy', mData));
end;


function fultdiames(mdata: tDateTime): TdateTime;
var
ano, mes, dia: Word;
mDtTemp: TDateTime;
begin
DecodeDate(mdata, ano, mes, dia);
mDtTemp:=(mdata - dia) + 33;
DecodeDate(mdtTemp,ano,mes,dia);
Result:=mDtTemp-dia;
end;




function DirExists(const S : String): Boolean;
//
// Verifica se um diretorio existe
//
var
  OldMode : Word;
  OldDir : String;
begin
  Result := True;
  GetDir(0, OldDir); {save old dir for return}
  OldMode := SetErrorMode(SEM_FAILCRITICALERRORS); {if drive empty, except}
  try
    try

      ChDir(S);
    except
      on EInOutError DO Result := False;
    end;
  finally
    ChDir(OldDir); {return to old dir}
    SetErrorMode(OldMode); {restore old error mode}
  end;
end;

function IsPrinter: Boolean;
{
Testa se a impressora esta ativa ou nao, retornando .t.
em caso de positivo
}
// Parametros   : Word = 0; { 0-para lpt1, 1 para lpt2, etc}

const
    PrnStInt  : Byte = $17;
    StRq      : Byte = $02;
    PrnNum    : Word = 0;
Var
   nResult : byte;
Begin
Asm
   mov ah,StRq;
   mov dx, PrnNum;
   int $17;
   mov nResult,ah;
end;
IsPrinter := (nResult and $80) = $80;
end;

function FormataValores(pValor: Real; pTam,pQtdDec: Integer): String;
var
mValor: String;
begin
if pQtdDec>0 then
   begin
   pValor:=pValor*(StrToFloat('1'+insere('','0',pQtdDec)));
   end;
if pvalor<0 then
   mvalor:='-'+insere(FormatFloat('0',pValor),'0',pTam-1)
else
   mvalor:=insere(FormatFloat('0',pValor),'0',pTam);
result := mvalor;
end;
function fTamanhoEntreDelimitadores(pInicio: Integer; pDelimitador,pTexto: String): Integer;
var
x: Integer;
mtamTexto: Integer;
mtamdelim: Integer;
begin
mtamdelim:=0;
mtamTexto:=length(pTexto);
for x:=pInicio to mtamtexto do
   begin
   if pTexto[x]=pDelimitador then
      break;
   mtamdelim:=mtamdelim+1;
   end;
result:=mtamdelim;
end;
function fExtraiCodigoEntreChaves(pTexto: String): String;
var
x: Integer;
mRetorno:String;
mInicio: Boolean;
begin
mRetorno:='';
mInicio :=false;
for x:=length(pTexto) downto 1 do
   begin
   if pTexto[x]=']' then
      begin
      mInicio:=true;
      Continue;
      end
   else if pTexto[x]='[' then
      break;
   if mInicio then
      mRetorno:=pTexto[x]+mRetorno;
   end;
result:=mRetorno;
end;

function ftestaconfigantiga: boolean;
var
nArq,f: TextFile;
mlinha: String;
mtexto: String;
mBanco: Integer;
begin
if not FileExists('\SGE\SGE.CF') then
   begin
   result:=false;
   exit;
   end;
result:=true;
AssignFile(f,'\SGE\SGE.CF');
Reset(F);
ReadLn(F,mlinha);
if (copy(mlinha,1,1)<>'0') and (copy(mlinha,1,1)<>'1') then
   begin
   closefile(f);
   exit;
   end;
mbanco:=valint(copy(mlinha,1,1));
assignfile(nArq,'\SGE\SGE.TMP');
Rewrite(nArq);
if mbanco=0 then
   Writeln(nArq,'BANCO=ORACLE')
else
   Writeln(nArq,'BANCO=INTERBASE');
mcinst2:=copy(mlinha,2,50);
mcinst2:=Trim(mcinst2);
if trim(mcinst2)='' then
   begin
   Writeln(nArq,'SERVIDOR=C:\SGE\');
   Writeln(nArq,'LOGOMARCAS=\SGE\');
   end
else
   begin
   Writeln(nArq,'SERVIDOR='+mcinst2);
   Writeln(nArq,'LOGOMARCAS='+mcinst2);
   end;
if eof(f) then
   Writeln(nArq,'REDE EXTERNA=NAO')
else
   begin
   ReadLn(F,mlinha);
   if copy(mlinha,1,1)='1' then
      Writeln(nArq,'REDE EXTERNA=SIM')
   else
      Writeln(nArq,'REDE EXTERNA=NAO')
   end;
if not eof(f) then
   begin
   ReadLn(F,mlinha);
   if Trim(mlinha)<>'' then
      Writeln(nArq,Trim(mlinha))
   else
      begin
      if mbanco=0 then
         Writeln(nArq,'ALIAS=SGE')
      else
         Writeln(nArq,'ALIAS=INTRBASE1')
      end;
   end
else
   begin
   if mbanco=0 then
      Writeln(nArq,'ALIAS=SGE')
   else
      Writeln(nArq,'ALIAS=INTRBASE1')
   end;

if not eof(f) then
   begin
   ReadLn(F,mlinha);
   if Trim(mlinha)<>''  then
      Writeln(nArq,Trim(mlinha))
   else
      begin
      if mbanco=0 then
         Writeln(nArq,'USUARIO=SGE')
      else
         Writeln(nArq,'USUARIO=SYSDBA')
      end;
   end
else
   begin
   if mbanco=0 then
      Writeln(nArq,'USUARIO=SGE')
   else
      Writeln(nArq,'USUARIO=SYSDBA')
   end;
if mbanco=0 then
   begin
   Writeln(nArq,'CAMINHO=');
   Writeln(nArq,'NOME SERVICO=SGE');
   end
else
   begin
   Writeln(nArq,'CAMINHO=C:\DADOS\BANCO.GDB');
   Writeln(nArq,'NOME SERVICO=DADOS');
   end;
Writeln(nArq,'MODO=NORMAL');
Writeln(nArq,'PINPAD=NAO');
CloseFile(nArq);
RenameFile('\SGE\SGE.TMP','\SGE\SGE.INI');
result:=true;
end;


function fconfigurabanco:Boolean;
begin
if pbanco=0 then
   begin
   DM1.SG_ASSOC.DriverName:='ORACLE';
   DM1.SG_ASSOC.Params.Clear;
   DM1.SG_ASSOC.Params.Add('BANCO=ORACLE');
   DM1.SG_ASSOC.Params.Add('USER NAME='+uppercase(trim(Banco_usuario)));
   DM1.SG_ASSOC.Params.Add('SERVER NAME='+uppercase(trim(Banco_ServerName)));
   DM1.SG_ASSOC.Params.Add('NET PROTOCOL=TNS');
   DM1.SG_ASSOC.Params.Add('OPEN MODE=READ/WRITE');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE SIZE=8');
   DM1.SG_ASSOC.Params.Add('LANGDRIVER=');
   DM1.SG_ASSOC.Params.Add('SQLQRYMODE=');
   DM1.SG_ASSOC.Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE TIME=-1');
   DM1.SG_ASSOC.Params.Add('MAX ROWS=-1');
   DM1.SG_ASSOC.Params.Add('BATCH COUNT=200');
   DM1.SG_ASSOC.Params.Add('ENABLE SCHEMA CACHE=FALSE');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE DIR=');
   DM1.SG_ASSOC.Params.Add('ENABLE BCD=FALSE');
   DM1.SG_ASSOC.Params.Add('ENABLE INTEGERS=FALSE');
   DM1.SG_ASSOC.Params.Add('LIST SYNONYMS=NONE');
   DM1.SG_ASSOC.Params.Add('ROWSET SIZE=20');
   DM1.SG_ASSOC.Params.Add('BLOBS TO CACHE=640');
   DM1.SG_ASSOC.Params.Add('BLOB SIZE=32');
   DM1.SG_ASSOC.Params.Add('OBJECT MODE=TRUE');
   DM1.SG_ASSOC.Params.Add('PASSWORD=DEZENOVE');
   fdt    :='dd/mm/yyyy';
   pcData        :='DATE';
   pcDataHora    :='DATE';
//   pcInteger     :='integer';
   pcInteger     :='NUMBER';
   pcFloat       :='NUMBER';
   pcMemo        :='LONG';
   pcBlob        :='LONG RAW';
   pcString      :='VARCHAR2';
   PCUpdDropEsq  :='(';
   PCUpdDropDir  :=')';
   end
else if pbanco=1 then
   begin
   DM1.SG_ASSOC.DriverName:='INTRBASE';
//   DM1.SG_ASSOC.AliasName:='';
   DM1.SG_ASSOC.Params.Clear;
   DM1.SG_ASSOC.Params.Add('DEFAULT DRIVER=INTRBASE');
   DM1.SG_ASSOC.Params.Add('SERVER NAME='+Banco_Caminho);
   DM1.SG_ASSOC.Params.Add('USER NAME='+Banco_usuario);

   DM1.SG_ASSOC.Params.Add('OPEN MODE=READ/WRITE');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE SIZE=8');
   DM1.SG_ASSOC.Params.Add('LANGDRIVER=');
   DM1.SG_ASSOC.Params.Add('SQLQRYMODE=');
   DM1.SG_ASSOC.Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE TIME=-1');
   DM1.SG_ASSOC.Params.Add('MAX ROWS=-1');
   DM1.SG_ASSOC.Params.Add('BATCH COUNT=200');
   DM1.SG_ASSOC.Params.Add('ENABLE SCHEMA CACHE=FALSE');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE DIR=');
   DM1.SG_ASSOC.Params.Add('ENABLE BCD=FALSE');
   DM1.SG_ASSOC.Params.Add('BLOBS TO CACHE=640');
   DM1.SG_ASSOC.Params.Add('BLOB SIZE=32');
   DM1.SG_ASSOC.Params.Add('WAIT ON LOCKS=FALSE');
   DM1.SG_ASSOC.Params.Add('COMMIT RETAIN=FALSE');
   DM1.SG_ASSOC.Params.Add('ROLE NAME=');
   DM1.SG_ASSOC.Params.Add('PASSWORD=masterkey');
   fdt    :='mm/dd/yyyy';
   pcData        :='timestamp';
   pcDataHora    :='timestamp';
//   pcInteger     :='integer';
   pcInteger     :='double precision';
   pcFloat       :='double precision';
   pcMemo        :='varchar';
   pcBlob        :='blob';
   pcString      :='varchar';
   PCUpdDropEsq  :='';
   PCUpdDropDir  :='';
   end
else if pbanco=2 then // firebird
   begin
   DM1.SG_ASSOC.DriverName:='Firebird/InterBase(r) driver';
//   DM1.SG_ASSOC.AliasName:='';
   DM1.SG_ASSOC.Params.Clear;
   DM1.SG_ASSOC.Params.Add('DATABASE NAME='+Banco_Caminho);
   DM1.SG_ASSOC.Params.Add('USER NAME='+Banco_usuario);
   DM1.SG_ASSOC.Params.Add('ODBC DSN=FIREBIRD');
   DM1.SG_ASSOC.Params.Add('OPEN MODE=READ/WRITE');
   DM1.SG_ASSOC.Params.Add('BATCH COUNT=200');
   DM1.SG_ASSOC.Params.Add('LANGDRIVER=');
   DM1.SG_ASSOC.Params.Add('MAX ROWS=-1');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE DIR=');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE SIZE=8');
   DM1.SG_ASSOC.Params.Add('SCHEMA CACHE TIME=-1');
   DM1.SG_ASSOC.Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
   DM1.SG_ASSOC.Params.Add('SQLQRYMODE=');
   DM1.SG_ASSOC.Params.Add('ENABLE BCD=FALSE');
   DM1.SG_ASSOC.Params.Add('ROWSET SIZE=20');
   DM1.SG_ASSOC.Params.Add('BLOBS TO CACHE=640');
   DM1.SG_ASSOC.Params.Add('BLOB SIZE=32');
   DM1.SG_ASSOC.Params.Add('PASSWORD=masterkey');
//   DM1.SG_ASSOC.Params.Add('WAIT ON LOCKS=FALSE');
//   DM1.SG_ASSOC.Params.Add('COMMIT RETAIN=FALSE');
//   DM1.SG_ASSOC.Params.Add('ROLE NAME=');
   fdt    :='mm/dd/yyyy';
   pcData        :='timestamp';
   pcDataHora    :='timestamp';
//   pcInteger     :='integer';
   pcInteger     :='double precision';
   pcFloat       :='double precision';
   pcMemo        :='varchar';
   pcBlob        :='blob';
   pcString      :='varchar';
   PCUpdDropEsq  :='';
   PCUpdDropDir  :='';

   end
else if pbanco=3 then // paradox
   begin
   fdt    :='mm/dd/yyyy';
   pcData        :='date';
   pcDataHora    :='date';
//   pcInteger     :='integer';
   pcInteger     :='float';
   pcFloat       :='float';
   pcMemo        :='memo';
   pcBlob        :='long raw';
   pcString      :='varchar';
   PCUpdDropEsq  :='';
   PCUpdDropDir  :='';
   DM1.SG_ASSOC.DriverName:='STANDARD';
   DM1.SG_ASSOC.Params.Clear;
   DM1.SG_ASSOC.Params.Add('DEFAULT DRIVER=PARADOX');
   DM1.SG_ASSOC.Params.Add('ENABLED BCD=FALSE');
   DM1.SG_ASSOC.Params.Add('PATH='+Banco_Caminho);
   if Banco_Caminho[Length(Banco_Caminho)]<>'\' then
      Banco_Caminho:=Banco_Caminho+'\';
   DM1.SG_ASSOC.TransIsolation:=tiDirtyRead;
   end;


end;

function fVerificarTabelas: boolean;
begin

end;
function fRetiraExtensao(pNomRec: String): String;

var
mPonto,mtam: Integer;
begin
mPonto:=0;
mtam   :=length(pnomrec);
for mPonto:=1 to mtam do
   begin
   if pnomrec[mPonto]='.' then break;
   end;
if mPonto>0 then
   Result:=copy(pnomrec, 1, mponto-1)
else
   Result:=pnomrec;
end;

function fGravaStrings(pArquivo,pItem: String): Boolean;
var
fNov,FAnt: TextFile;
begin
if FileExists('\SGE\'+pArquivo+'.STG') then
   begin
   AssignFile(fAnt,'\SGE\'+pArquivo+'.STG');
   Reset(fAnt);
   AssignFile(fNov,'\SGE\'+pArquivo+'.TMP');
   rewrite(fNov);
   While not Eof(FAnt) do
      begin
      Readln(fAnt,mcinst);
      writeLn(fNov,mcinst);
      end;
   closefile(fAnt);
   end
else
   begin
   AssignFile(fNov,'\SGE\'+pArquivo+'.TMP');
   rewrite(fNov);
   end;
writeLn(fNov,pItem);
Closefile(fNov);
if FileExists('\SGE\'+pArquivo+'.STG') then
   DeleteFile(pchar('\SGE\'+pArquivo+'.STG'));
RenameFile('\SGE\'+pArquivo+'.TMP','\SGE\'+pArquivo+'.STG');
result:=true;
end;
function fLerStrings(pArquivo: String): TStrings;
var
mItens: TStrings;
fAnt: TextFile;
begin
mItens:=TStringList.Create;
//  fFileSpecList := TStringList.create;

if FileExists('\SGE\'+pArquivo+'.STG') then
   begin
   AssignFile(fAnt,'\SGE\'+pArquivo+'.STG');
   Reset(fAnt);
   While not Eof(FAnt) do
      begin
      Readln(fAnt,mcinst);
      mItens.Append(mcinst);
      end;
   closefile(fAnt);
   end;
result:=mItens;

end;

{function fSetarEmpresaPadrao(PTipo: Integer; pNomCam: String): Boolean;
var
x: Integer;
begin
if DM1.Tb_PargerPMTE.AsInteger=2 then
   ptipo:=2;
if ptipo=3 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select CODEMP,RAZAO FROM CADEMP');
   DM1.query2.Open;

   setlength(ce_codempati,DM1.Query2.RecordCount);
   setlength(ce_nomcamemp,DM1.Query2.RecordCount);

   x:=0;
   While not DM1.Query2.Eof do
      begin
      ce_codempati[x]:=DM1.Query2.fieldbyName('CODEMP').AsString;
      ce_nomcamemp[x]:=pnomcam;
      DM1.query2.Next;
      x:=x+1;
      end;
   end
else if ptipo=2 then
   begin
   setlength(ce_codempati,2);
   setlength(ce_nomcamemp,2);
   ce_codempati[0]:=InttoStr(codemp);
   ce_nomcamemp[0]:=pnomcam;
   ce_qtdemp   :=2;
   ce_codempati[1]:=iif(codemp>100,InttoStr(codemp-100),InttoStr(codemp+100));
   ce_nomcamemp[1]:=pnomcam;
   ce_empsel    :=2;
   end
else if ptipo=1 then
   begin
   setlength(ce_codempati,1);
   setlength(ce_nomcamemp,1);
   ce_codempati[0]:=iif(codemp>100,InttoStr(codemp-100),InttoStr(codemp+100));
   ce_nomcamemp[0]:=pnomcam;
   ce_qtdemp   :=1;
   ce_empsel   :=1;
   end
else
   begin
   setlength(ce_codempati,1);
   setlength(ce_nomcamemp,1);
   ce_codempati[0]:=intToStr(codemp);
   ce_nomcamemp[0]:=pnomcam;
   ce_qtdemp   :=1;
   ce_empsel   :=0;
   end;
ce_campoatual:=pNomCam;
result:=true;
end;}



Function fEstanaNet : Boolean;
var
reg : TRegistry;
buff : dword;
begin
reg:= tregistry.Create ;
Reg.RootKey:=HKey_local_machine;
if reg.OpenKey('SystemCurrentControlSetServicesRemoteAccess',false)  then
   begin
   reg.ReadBinaryData('Remote Connection',buff,sizeof(buff));
   result := buff = 1;
   reg.CloseKey ;
   reg.Free ;
   end;
end;


function WinVersion: string;
var
  VersionInfo: TOSVersionInfo;
begin
  pVerWindows_xp:=false;

  VersionInfo.dwOSVersionInfoSize:=SizeOf(VersionInfo);
  GetVersionEx(VersionInfo);
  Result:='';
  with VersionInfo do
  begin
    case dwPlatformId of
      1:
        case dwMinorVersion of
   0: Result:='Windows 95';
          10: Result:='Windows 98';
          90: Result:='Windows Me';
        end;
      2:
        case dwMajorVersion of
          3: Result:='Windows NT 3.51';
          4: Result:='Windows NT 4.0';
          5:
            case dwMinorVersion of
              0: Result:='Windows 2000';
              1: begin
                 pVerWindows_xp:=true;
                 Result:='Windows XP';
                 end;
            end;
        end;
    end;
  end;
  if (Result='') then
    Result:='Sistema operacional desconhecido.';
end;

// EXEMPLO DE UTILIZAÃO


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

function fmensagem_Barrar(pTexto:String; pTipo: Integer): TModalResult;
var
x: Integer;
{
ptipo: 0-Atenção
       1-Informação
       2-Erro

}
begin

Application.CreateForm(TFrm_Mensagem_Barrar, Frm_Mensagem_Barrar);
Frm_Mensagem_Barrar.Caption:='Atenção!';
Frm_Mensagem_Barrar.lbl_mensagem.Caption:=pTexto;
result:=Frm_Mensagem_Barrar.ShowModal;
Frm_Mensagem_Barrar.free;
Frm_mensagem_Barrar:=nil;
end;



function fmensagem(pTexto:String; pTipo: Integer; pButoes: array of String;pButaoDefault:Integer ): TModalResult;
var
x: Integer;
{
ptipo: 0-Atenção
       1-Informação
       2-Erro

pButoes:
0 mbOk,
1 mbYes,
2 mbNo,
3 mbCancel
4 mbAbort
5 mbRetry
6 mbIgnore

}
begin

   Application.CreateForm(TFrm_Mensagem, Frm_Mensagem);
   if pTipo=0 then
      begin
      Frm_Mensagem.Caption:='Atenção!';
      Frm_Mensagem.image_atencao.Visible:=true;
      end
   else if pTipo=1 then
      begin
      Frm_Mensagem.Caption:='Informação!';
      Frm_Mensagem.image_info.Visible:=true;
      end
   else if pTipo=2 then
      begin
      Frm_Mensagem.Caption:='Erro!';
      Frm_Mensagem.image_erro.Visible:=true;
      end;

   for x:=0 to high(pbutoes) do
      begin
      if pButoes[x]='0' then
         begin
         Frm_Mensagem.bbOK.Visible:=true;
         if pButaoDefault=0 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbOK;
         end;
      if pButoes[x]='1' then
         begin
         Frm_Mensagem.bbYes.Visible:=true;
         if pButaoDefault=1 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbYes;
         end;
      if pButoes[x]='2' then
         begin
         Frm_Mensagem.bbNo.Visible:=true;
         if pButaoDefault=2 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbNo;
         end;
      if pButoes[x]='3' then
         begin
         Frm_Mensagem.bbCancel.Visible:=true;
         if pButaoDefault=1 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbCancel;
         end;
      if pButoes[x]='4' then
         begin
         Frm_Mensagem.bbAbort .Visible:=true;
         if pButaoDefault=4 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbAbort;
         end;
      if pButoes[x]='5' then
         begin
         Frm_Mensagem.bbRepetir.Visible:=true;
         if pButaoDefault=5 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbRepetir;
         end;
      if pButoes[x]='6' then
         begin
         Frm_Mensagem.bbIgnore.Visible:=true;
         if pButaoDefault=6 then
            Frm_Mensagem.ActiveControl:=Frm_Mensagem.bbIgnore;
         end;
      end;

   Frm_Mensagem.lbl_mensagem.Caption:=pTexto;
   result:=Frm_Mensagem.ShowModal;
   Frm_Mensagem.free;
   Frm_mensagem:=nil;
end;


function fmensagemSom(pTexto:String; pTipo: Integer; pButoes: array of String;pButaoDefault:Integer ): TModalResult;
var
x: Integer;
{
ptipo: 0-Atenção
       1-Informação
       2-Erro

pButoes:
0 mbOk,
1 mbYes,
2 mbNo,
3 mbCancel
4 mbAbort
5 mbRetry
6 mbIgnore

}
begin

   Application.CreateForm(TFrm_MensagemSom, Frm_MensagemSom);
   if FileExists('c:\SGE\CONFELE.WAV') then
      SndPlaySound('c:\SGE\CONFELE.wav',SND_ASYNC)
   else
      AvisoSonoro(0);

//AvisoSonoro(1);
//AvisoSonoro(2);
//AvisoSonoro(3);
   if pTipo=0 then
      begin
      Frm_MensagemSom.Caption:='Atenção!';
      Frm_MensagemSom.image_atencao.Visible:=true;
      end
   else if pTipo=1 then
      begin
      Frm_MensagemSom.Caption:='Informação!';
      Frm_MensagemSom.image_info.Visible:=true;
      end
   else if pTipo=2 then
      begin
      Frm_MensagemSom.Caption:='Erro!';
      Frm_MensagemSom.image_erro.Visible:=true;
      end;
   for x:=0 to high(pbutoes) do
      begin
      if pButoes[x]='0' then
         begin
         Frm_MensagemSom.bbOK.Visible:=true;
         if pButaoDefault=0 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbOK;
         end;
      if pButoes[x]='1' then
         begin
         Frm_MensagemSom.bbYes.Visible:=true;
         if pButaoDefault=1 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbYes;
         end;
      if pButoes[x]='2' then
         begin
         Frm_MensagemSom.bbNo.Visible:=true;
         if pButaoDefault=2 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbNo;
         end;
      if pButoes[x]='3' then
         begin
         Frm_MensagemSom.bbCancel.Visible:=true;
         if pButaoDefault=1 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbCancel;
         end;
      if pButoes[x]='4' then
         begin
         Frm_MensagemSom.bbAbort .Visible:=true;
         if pButaoDefault=4 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbAbort;
         end;
      if pButoes[x]='5' then
         begin
         Frm_MensagemSom.bbRepetir.Visible:=true;
         if pButaoDefault=5 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbRepetir;
         end;
      if pButoes[x]='6' then
         begin
         Frm_MensagemSom.bbIgnore.Visible:=true;
         if pButaoDefault=6 then
            Frm_MensagemSom.ActiveControl:=Frm_MensagemSom.bbIgnore;
         end;
      end;

   Frm_MensagemSom.lbl_mensagem.Caption:=pTexto;
   result:=Frm_MensagemSom.ShowModal;
   Frm_MensagemSom.free;
   Frm_mensagemSom:=nil;
end;

function fPosCaractere(pCaracter,pTexto: String): Integer;
var
x: Integer;
begin
result:=0;
for x:=1 to length(pTexto) do
   begin
   if pTexto[x]=pCaracter then
      begin
      result:=x;
      break;
      end;
   end;
end;


function fItensListBox(pTipo: Integer;pListBox: TListBox;pOmitir:TCheckBox): String;
// ptipo=0 Real 1-String;
var
mItens: String;
x: Integer;
begin
mItens:='';
if pListBox.Count > 0 then
   begin
   for x:=0 to pListBox.Count - 1 do
      begin
      if Trim(pListBox.Items[x])='' then
         Continue;
      if mItens<>'' then
         mItens:=mItens+',';
      if ptipo=1 then
         begin
         if fposCaractere('-',pListBox.items[x])=0 then
            mItens:=mItens+chr(39)+pListBox.Items[x]+chr(39)
         else
            mItens := Trim(mItens+chr(39)+trim(copy(pListBox.Items[x],1,fPosCaractere('-',pListBox.items[x])-1))+chr(39));
         end
      else
        mItens:=mItens+fdeixanum2( copy(pListBox.Items[x],1,fPosCaractere('-',pListBox.items[x])-1));
      end;
   if trim(mItens)<>'' then
      begin
      mItens:=' in ('+mItens+')';
      if pOmitir.Checked then
         mitens:=' not '+mItens;
      end;
   end;
Result:=mitens;
end;



function fItenstCheckListBox(pTipo: Integer;pCheckListBox: TCheckListBox): String;
// ptipo= valor incrementado para o tipo de index
var
x:integer;
tipo_ped: String;
begin
if pCheckListBox.Checked[pCheckListBox.Count-1] then
   tipo_ped := ''
else
   begin
   for x := 0 to pCheckListBox.Count -2 do
      begin
      if pCheckListBox.Checked[x] then
         begin
         tipo_ped := tipo_ped+inttostr(x+ptipo);
         tipo_ped := tipo_ped+',';
        end;
      end;
   end;
if trim(tipo_ped)<>'' then
   begin
   tipo_ped := copy(tipo_ped,1,length(tipo_ped)-1);
   tipo_ped := ' IN ('+ tipo_ped+')';
   end;
result:=tipo_ped;
end;

function fItenstCheckListBox2(pTipo: Integer;pCheckListBox: TCheckListBox): String;
// ptipo= valor incrementado para o tipo de index
var
  x:integer;
  tipo_ped: String;
begin
if pCheckListBox.Checked[pCheckListBox.Count-1] then
  tipo_ped := ''
else
  begin
  for x := 0 to pCheckListBox.Count -2 do
    begin
    if pCheckListBox.Checked[x] then
      begin
      if ptipo=1 then
        begin
        if fposCaractere('-',pCheckListBox.items[x])=0 then
          tipo_ped:=tipo_ped+chr(39)+pCheckListBox.Items[x]+chr(39)
        else
          tipo_ped := Trim(tipo_ped+chr(39)+copy(pCheckListBox.Items[x],1,fPosCaractere('-',pCheckListBox.items[x])))+chr(39);
        end
      else
        tipo_ped:=tipo_ped+chr(39)+fdeixanum2( copy(pCheckListBox.Items[x],1,fPosCaractere('-',pCheckListBox.items[x])))+chr(39);
      tipo_ped:=tipo_ped+',';
      end;
    end;
  end;

if trim(tipo_ped)<>'' then
   begin
   tipo_ped := copy(tipo_ped,1,length(tipo_ped)-1);
   tipo_ped := ' IN ('+ tipo_ped+')';
   end;

result:=tipo_ped;
end;


function fEnviarEmail(pArquivo: String; pTipo: Integer; pCliFor: String): Boolean;
begin
Application.Createform(TFrm_EnviarEmail, Frm_EnviarEmail);
Frm_EnviarEmail.Tipo:=pTipo;

Frm_EnviarEmail.Tipo:=pTipo;
Frm_EnviarEmail.CliFor:=pCliFor;


if length(Trim(pArquivo))>1 then
   Frm_EnviarEmail.lbxAnexos.Items.Add(pArquivo);
Frm_EnviarEmail.showModal;
Frm_EnviarEmail.Free;
Frm_EnviarEmail:=nil;
result:=true;
end;

function fSubstituirCaractere(Texto: String;pRetira,pSubst: String): String;
var
  y,x: integer;
  maux: string;
  mAchou: Boolean;
begin

maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   begin
   mAchou:=false;
   for y:=1 to length(pRetira) do
      begin
      If (Texto[x] in  [pRetira[y]]) then
         begin
         mAchou:=true;
         maux:=maux+pSubst[y];
         break
         end;
      end;
   if not mAchou then
      maux:=maux+Texto[x];
   end;

Result:=maux;
end;



function fEmitido(ptipo: Integer): String;
var
mEmitido: String;
begin
mEmitido:='Emitido em '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time);
result:=mEmitido;
end;




function fQuebraStringTStringList(pqtdcar: Integer; pTexto: String):  tStringList;
{
Esta funçao retorna o conteudo separada pela quantidade de caracteres
}

var
{y,x: Integer;
mPosEspaco: Integer;
S: string;
}
pTextoTemp: tStringlist;
x_texto: integer;
mLinha_nova: string;
begin
pTextoTemp:=tStringlist.Create;
pTextoTemp.Text:=fSubstituirtexto(pTexto,' ',#13);
Result:=TStringList.Create;
mLinha_nova:='';
for x_texto:=0 to pTextoTemp.Count-1 do
   begin
   if length((mLinha_nova+' '+pTextoTemp[x_texto]))>pQtdCar then
      begin
      if length(mLinha_nova)>pqtdCar then
         begin
         result.Add(copy(mLinha_nova,1,pqtdcar));
         mLinha_nova:=copy(mLinha_nova,pqtdcar+1,length(mLinha_nova)-pqtdcar);
         end
      else
         result.Add(mLinha_nova);
      mLinha_nova:='';
      end;
   mLinha_nova:=mLinha_nova+pTextoTemp[x_texto]+' ';
   end;

if trim(mLinha_nova)<>'' then
   begin
   if length(mLinha_nova)>pqtdCar then
       begin
       result.Add(copy(mLinha_nova,1,pqtdcar));
       mLinha_nova:=copy(mLinha_nova,pqtdcar+1,length(mLinha_nova)-pqtdcar);
       end;
   result.Add(mLinha_nova);
   end;
freeandnil(pTextoTemp);
end;



function fQuebraString(pqtdcar: Integer; pTexto: String):  String;
{
Esta funçao retorna o conteudo separada pela quantidade de caracteres
}

var
y,x: Integer;
mPosEspaco: Integer;
S: string;
begin

for x:=1 to (length(pTexto) div pqtdcar) do
   begin
   mPosEspaco:=0;
   for y:=1 to pqtdcar do
      begin
      if pTexto[(x*pqtdcar)-(pqtdcar)+y]=' ' then
         begin
//         ShowMessage(IntTostr( (x*mtamtexto)
//                              - (mtamtexto)+y));

         mPosEspaco:=(x*pqtdcar)-(pqtdcar)+y;
         end;
      end;
   if (mPosEspaco>0) and ((mPosEspaco)<>(pqtdcar*x)) then
      begin
//      ShowMessage(Inttostr(mposEspaco)+' mtamtexto '+IntToStr(mtamtexto)+'/'+IntToStr(x));
      S:=ptexto;
      insert( insere2(' ',' ',//mtamtexto-
                     ((pqtdcar*x)-mPosEspaco))
            ,S,mPosEspaco); //mPosEspaco);
      pTexto:=S;
      end;
   end;
result:=pTexto;
end;



function NumeroDecimais(pValor:Real): Integer;
var
  mQtdDec,x: integer;
  maux2: string;
  mAchou: Boolean;
begin
mAchou:=false;
maux2:=FloatToStr(pValor);
mQtdDec:=0;
for x:=1 to Length(maux2) do
   begin
   if mAchou then
      mQtdDec:=mQtdDec+1
   else If maux2[x]=DecimalSeparator then
      mAchou:=true;
   end;
Result:=mQtdDec;
end;

//-> CONVERTER QUICK REPORT PRA JPG E BMP

//Colocar a procedure na unit do QR
function QrpToImg(QR: TQuickRep; Nomearq: string; Tipo: Integer):Boolean;

//function QrpToImg(QR: TQuickRep; Path,Nome: string; Tipo: Integer):Boolean;
var
BMP: TBitmap;
JPG: TJPegImage;
aUnits: TQRUnit;
i: Integer;
begin
if uppercase(copy(Nomearq,length(Nomearq)-2,3))='BMP' then
   tipo:=0
else
   tipo:=1;

Nomearq:=fRetiraExtensao(Nomearq);
// Gera o relatório em memória.
QR.Prepare;
// Pega unidade de medida atual no QReport.
aUnits := QR.Units;
// Altera unidade de medida para Pixels.
QR.Units := Pixels;
try
   for i := 1 to QR.QRPrinter.PageCount do
   begin
// Cria Bitmap.
   BMP := TBitMap.Create;
// Cria JPeg.
   JPG := TJPegImage.Create;
   try
// Define tamanho do Bitmap de acordo com o tamanho da página do QReport.
      BMP.Width := Round(QR.Page.Width);
      BMP.Height := Round(QR.Page.Length);
// Pegar página a página.
      QR.QRPrinter.PageNumber := i;
// Atribui a página ao Bitmap.
       BMP.Canvas.Draw(0, 0, QR.QRPrinter.Page);
// Transfere também para JPeg.
      JPG.Assign(BMP);
// Salvar em disco.
   if Tipo = 0 then
      begin
      if i=1 then
         BMP.SaveToFile(NomeArq+ '.bmp')
      else
         BMP.SaveToFile(NomeArq+IntToStr(i) + '.bmp');
      end
   else if Tipo = 1 then
      begin
      if i=1 then
         JPG.SaveToFile(Nomearq + '.jpg')
      else
         JPG.SaveToFile(Nomearq+IntToStr(i) + '.jpg');
      end
      finally
// Libera objetos.
      BMP.Free;
      JPG.Free;
      end;
   end;
finally
// Volta unidade de medida.
   QR.Units := aUnits;
   end;
end;


function fInstrucaoEstoque(pCheckBox: TcheckListBox; pCampo: String): String;
{
0-c/Estoque
1-s/Estoque
2-Estoque Negativo                          -
3-Todos

c/Estoque
s/Estoque
Estoque Negativo
Todos

}
var
mComp,mRet: String;
begin
mRet:='';
mcomp:='';
if pCheckBox.Checked[3] then
   mret:=''
else
   begin
   if pCheckBox.checked[0] then
      begin
      mret:=mret+mcomp+' ('+pCampo+'>0 )';
      mcomp:=' or ';
      end;

   if pCheckBox.checked[1] then
      begin
      mret:=mret+mcomp+' ('+pCampo+'=0 )';
      mcomp:=' or ';
      end;

   if pCheckBox.checked[2] then
      begin
      mret:=mret+mcomp+' ('+pCampo+'<0 )';
      mcomp:=' or ';
      end;
   if trim(mRet)<>'' then
      mRet:='('+mRet+')';
   end;
result:=mret;
end;



{ Inscrições __________________________________ }
{
Function fTestaInscricao( Inscricao, tipo : String ) : Boolean;
var
Contador : ShortInt;
Casos : ShortInt;
Digitos : ShortInt;

Tabela_1 : String;
Tabela_2 : String;
Tabela_3 : String;

Base_1 : String;
Base_2 : String;
Base_3 : String;

Valor_1 : ShortInt;

Soma_1 : Integer;
Soma_2 : Integer;

Erro_1 : ShortInt;
Erro_2 : ShortInt;
Erro_3 : ShortInt;

Posicao_1 : string;
Posicao_2 : String;

Tabela : String;
Rotina : String;
Modulo : ShortInt;
Peso : String;

Digito : ShortInt;

Resultado : String;
Retorno : Boolean;

Begin

Try

Tabela_1 := ' ';
Tabela_2 := ' ';
Tabela_3 := ' ';

// Valores possiveis para os digitos (j)
// 0 a 9 = Somente o digito indicado.
// N = Numeros 0 1 2 3 4 5 6 7 8 ou 9
// A = Numeros 1 2 3 4 5 6 7 8 ou 9
// B = Numeros 0 3 5 7 ou 8
// C = Numeros 4 ou 7
// D = Numeros 3 ou 4
// E = Numeros 0 ou 8
// F = Numeros 0 1 ou 5
// G = Numeros 1 7 8 ou 9
// H = Numeros 0 1 2 ou 3
// I = Numeros 0 1 2 3 ou 4
// J = Numeros 0 ou 9
// K = Numeros 1 2 3 ou 9
// --------------------------------------------------------
// Valores possiveis para as rotinas (d) e (g)
// A a E = Somente a Letra indicada.
// 0 = B e D
// 1 = C e E
// 2 = A e E
//
// --------------------------------------------------------
// C T F R M P R M P
// A A A O O E O O E
// S M T T D S T D S

// a b c d e f g h i jjjjjjjjjjjjjj
// 0000000001111111111222222222233333333
// 1234567890123456789012345678901234567

IF Tipo = 'AC' Then Tabela_1 := '1.09.0.E.11.01. . . . 01NNNNNNX.14.00';
IF Tipo = 'AC' Then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
IF Tipo = 'AL' Then Tabela_1 := '1.09.0.0.11.01. . . . 24BNNNNNX.14.00';
IF Tipo = 'AP' Then Tabela_1 := '1.09.0.1.11.01. . . . 03NNNNNNX.14.00';
IF Tipo = 'AP' Then Tabela_2 := '2.09.1.1.11.01. . . . 03NNNNNNX.14.00';
IF Tipo = 'AP' Then Tabela_3 := '3.09.0.E.11.01. . . . 03NNNNNNX.14.00';
IF Tipo = 'AM' Then Tabela_1 := '1.09.0.E.11.01. . . . 0CNNNNNNX.14.00';
IF Tipo = 'BA' Then Tabela_1 := '1.08.0.E.10.02.E.10.03. NNNNNNYX.14.13';
IF Tipo = 'BA' Then Tabela_2 := '2.08.0.E.11.02.E.11.03. NNNNNNYX.14.13';
IF Tipo = 'CE' Then Tabela_1 := '1.09.0.E.11.01. . . . 0NNNNNNNX.14.13';
IF Tipo = 'DF' Then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
IF Tipo = 'ES' Then Tabela_1 := '1.09.0.E.11.01. . . . 0ENNNNNNX.14.00';
IF Tipo = 'GO' Then Tabela_1 := '1.09.1.E.11.01. . . . 1FNNNNNNX.14.00';
IF Tipo = 'GO' Then Tabela_2 := '2.09.0.E.11.01. . . . 1FNNNNNNX.14.00';
IF Tipo = 'MA' Then Tabela_1 := '1.09.0.E.11.01. . . . 12NNNNNNX.14.00';
IF Tipo = 'MT' Then Tabela_1 := '1.11.0.E.11.01. . . . NNNNNNNNNNX.14.00';
IF Tipo = 'MS' Then Tabela_1 := '1.09.0.E.11.01. . . . 28NNNNNNX.14.00';
IF Tipo = 'MG' Then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
IF Tipo = 'PA' Then Tabela_1 := '1.09.0.E.11.01. . . . 15NNNNNNX.14.00';
IF Tipo = 'PB' Then Tabela_1 := '1.09.0.E.11.01. . . . 16NNNNNNX.14.00';
IF Tipo = 'PR' Then Tabela_1 := '1.10.0.E.11.09.E.11.08. NNNNNNNNXY.13.14';
IF Tipo = 'PE' Then Tabela_1 := '1.14.1.E.11.07. . . .18ANNNNNNNNNNX.14.00';
IF Tipo = 'PI' Then Tabela_1 := '1.09.0.E.11.01. . . . 19NNNNNNX.14.00';
IF Tipo = 'RJ' Then Tabela_1 := '1.08.0.E.11.08. . . . GNNNNNNX.14.00';
IF Tipo = 'RN' Then Tabela_1 := '1.09.0.0.11.01. . . . 20HNNNNNX.14.00';
IF Tipo = 'RS' Then Tabela_1 := '1.10.0.E.11.01. . . . INNNNNNNNX.14.00';
IF Tipo = 'RO' Then Tabela_1 := '1.09.1.E.11.04. . . . ANNNNNNNX.14.00';
IF Tipo = 'RO' Then Tabela_2 := '2.14.0.E.11.01. . . .NNNNNNNNNNNNNX.14.00';
IF Tipo = 'RR' Then Tabela_1 := '1.09.0.D.09.05. . . . 24NNNNNNX.14.00';
IF Tipo = 'SC' Then Tabela_1 := '1.09.0.E.11.01. . . . NNNNNNNNX.14.00';
IF Tipo = 'SP' Then Tabela_1 := '1.12.0.D.11.12.D.11.13. NNNNNNNNXNNY.11.14';
IF Tipo = 'SP' Then Tabela_2 := '2.12.0.D.11.12. . . . NNNNNNNNXNNN.11.00';
IF Tipo = 'SE' Then Tabela_1 := '1.09.0.E.11.01. . . . NNNNNNNNX.14.00';
IF Tipo = 'TO' Then Tabela_1 := '1.11.0.E.11.06. . . . 29JKNNNNNNX.14.00';

IF Tipo = 'CNPJ' Then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
IF Tipo = 'CPF' Then Tabela_1 := '1.11.0.E.11.31.E.11.32. NNNNNNNNNXY.13.14';

// Deixa somente os numeros

Base_1 := '';

For Contador := 1 TO 30 Do IF Pos( Copy( Inscricao, Contador, 1 ), '0123456789' ) <> 0 Then Base_1 := Base_1 + Copy( Inscricao, Contador, 1 );

// Repete 3x - 1 para cada caso possivel

Casos := 0;

Erro_1 := 0;
Erro_2 := 0;
Erro_3 := 0;

While Casos < 3 Do Begin

Casos := Casos + 1;

IF Casos = 1 Then Tabela := Tabela_1;
IF Casos = 2 Then Erro_1 := Erro_3 ;
IF Casos = 2 Then Tabela := Tabela_2;
IF Casos = 3 Then Erro_2 := Erro_3 ;
IF Casos = 3 Then Tabela := Tabela_3;

Erro_3 := 0 ;

IF Copy( Tabela, 1, 1 ) <> ' ' Then Begin

// Verifica o Tamanho

IF Length( Trim( Base_1 ) ) <> ( StrToInt( Copy( Tabela, 3, 2 ) ) ) Then Erro_3 := 1;

IF Erro_3 = 0 Then Begin

// Ajusta o Tamanho

Base_2 := Copy( ' ' + Base_1, Length( ' ' + Base_1 ) - 13, 14 );

// Compara com valores possivel para cada uma da 14 posições

Contador := 0 ;

While ( Contador < 14 ) AND ( Erro_3 = 0 ) Do Begin

Contador := Contador + 1;

Posicao_1 := Copy( Copy( Tabela, 24, 14 ), Contador, 1 );
Posicao_2 := Copy( Base_2 , Contador, 1 );

IF ( Posicao_1 = ' ' ) AND ( Posicao_2 <> ' ' ) Then Erro_3 := 1;
IF ( Posicao_1 = 'N' ) AND ( Pos( Posicao_2, '0123456789' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'A' ) AND ( Pos( Posicao_2, '123456789' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'B' ) AND ( Pos( Posicao_2, '03578' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'C' ) AND ( Pos( Posicao_2, '47' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'D' ) AND ( Pos( Posicao_2, '34' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'E' ) AND ( Pos( Posicao_2, '08' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'F' ) AND ( Pos( Posicao_2, '015' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'G' ) AND ( Pos( Posicao_2, '1789' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'H' ) AND ( Pos( Posicao_2, '0123' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'I' ) AND ( Pos( Posicao_2, '01234' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'J' ) AND ( Pos( Posicao_2, '09' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 = 'K' ) AND ( Pos( Posicao_2, '1239' ) = 0 ) Then Erro_3 := 1;
IF ( Posicao_1 <> Posicao_2 ) AND ( Pos( Posicao_1, '0123456789' ) > 0 ) Then Erro_3 := 1;

End;

// Calcula os Digitos

Rotina := ' ';
Digitos := 000;
Digito := 000;

While ( Digitos < 2 ) AND ( Erro_3 = 0 ) Do Begin

Digitos := Digitos + 1;

// Carrega peso

Peso := Copy( Tabela, 5 + ( Digitos * 8 ), 2 );

IF Peso <> ' ' Then Begin

Rotina := Copy( Tabela, 0 + ( Digitos * 8 ), 1 ) ;
Modulo := StrToInt( Copy( Tabela, 2 + ( Digitos * 8 ), 2 ) );

IF Peso = '01' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
IF Peso = '02' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
IF Peso = '03' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
IF Peso = '04' Then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
IF Peso = '05' Then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
IF Peso = '06' Then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
IF Peso = '07' Then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
IF Peso = '08' Then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
IF Peso = '09' Then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
IF Peso = '10' Then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
IF Peso = '11' Then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
IF Peso = '12' Then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
IF Peso = '13' Then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
IF Peso = '21' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
IF Peso = '22' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
IF Peso = '31' Then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
IF Peso = '32' Then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';

//ultiplica

Base_3 := Copy( ( '0000000000000000' + Trim( Base_2 ) ), Length( ( '0000000000000000' + Trim( Base_2 ) ) ) - 13, 14 );

Soma_1 := 0;
Soma_2 := 0;

For Contador := 1 To 14 Do Begin

Valor_1 := ( StrToInt( Copy( Base_3, Contador, 01 ) ) * StrToInt( Copy( Peso, Contador * 3 - 2, 2 ) ) );

Soma_1 := Soma_1 + Valor_1;

IF Valor_1 > 9 Then Valor_1 := Valor_1 - 9;

Soma_2 := Soma_2 + Valor_1;

End;

// Ajusta valor da soma

IF Pos( Rotina, 'A2' ) > 0 Then Soma_1 := Soma_2;
IF Pos( Rotina, 'B0' ) > 0 Then Soma_1 := Soma_1 * 10;
IF Pos( Rotina, 'C1' ) > 0 Then Soma_1 := Soma_1 + ( 5 + 4 * StrToInt( Copy( Tabela, 6, 1 ) ) );

// Calcula o Digito

IF Pos( Rotina, 'D0' ) > 0 Then Digito := Soma_1 Mod Modulo;
IF Pos( Rotina, 'E12' ) > 0 Then Digito := Modulo - ( Soma_1 Mod Modulo);

IF Digito < 10 Then Resultado := IntToStr( Digito );
IF Digito = 10 Then Resultado := '0';
IF Digito = 11 Then Resultado := Copy( Tabela, 6, 1 );

// Verifica o Digito

IF ( Copy( Base_2, StrToInt( Copy( Tabela, 36 + ( Digitos * 3 ), 2 ) ), 1 ) <> Resultado ) Then Erro_3 := 1;

End;

End;

End;

End;

End;

// Retorna o resultado da Verificação

Retorno := FALSE;

IF ( Trim( Tabela_1 ) <> '' ) AND ( ERRO_1 = 0 ) Then Retorno := TRUE;
IF ( Trim( Tabela_2 ) <> '' ) AND ( ERRO_2 = 0 ) Then Retorno := TRUE;
IF ( Trim( Tabela_3 ) <> '' ) AND ( ERRO_3 = 0 ) Then Retorno := TRUE;

IF Trim( Inscricao ) = 'ISENTO' Then Retorno := TRUE;

Result := Retorno;

Except

Result := False;

End;

End;
}
{ Mascara_Inscricao __________________________________}

Function Mascara_Inscricao( Inscricao, Estado : String ) : String; Var

Mascara : String;

Contador_1 : Integer;
Contador_2 : Integer;

Begin

if copy(uppercase(inscricao),1,5)='ISENT' then
   begin
   result:=inscricao;
   exit;
   end
else
   inscricao:=fdeixanum2(inscricao);
Mascara:='';
IF Estado = 'AC' Then Mascara := '**.***.***/***-**' ;
IF Estado = 'AL' Then Mascara := '*********' ;
IF Estado = 'AP' Then Mascara := '*********' ;
IF Estado = 'AM' Then Mascara := '**.***.***-*' ;
IF Estado = 'BA' Then Mascara := '******-**' ;
IF Estado = 'CE' Then Mascara := '********-*' ;
IF Estado = 'DF' Then Mascara := '***********-**' ;
IF Estado = 'ES' Then Mascara := '*********' ;
IF Estado = 'GO' Then Mascara := '**.***.***-*' ;
IF Estado = 'MA' Then Mascara := '*********' ;
IF Estado = 'MT' Then Mascara := '**********-*' ;
IF Estado = 'MS' Then Mascara := '*********' ;
IF Estado = 'MG' Then Mascara := '***.***.***.**-**' ;
IF Estado = 'PA' Then Mascara := '**-******-*' ;
IF Estado = 'PB' Then Mascara := '********-*' ;
IF Estado = 'PR' Then Mascara := '********-**' ;
IF Estado = 'PE' Then
   begin
   if length(inscricao) = 14 then
      begin
      result := inscricao;
      exit;
      end
   else
      Mascara := '**.***.***-*';
   end;
//IF Estado = 'PE' Then Mascara := '**.*.***.*******-*';
IF Estado = 'PI' Then Mascara := '*********' ;
IF Estado = 'RJ' Then Mascara := '**.***.**-*' ;
IF Estado = 'RN' Then Mascara := '**.***.***-*' ;
IF Estado = 'RS' Then Mascara := '***/*******' ;
IF Estado = 'RO' Then
   begin
   if length(inscricao)=14 then
      begin
      result:=inscricao;
      exit;
      end
   else
      Mascara := '***.*****-*' ;
   end;

IF Estado = 'RR' Then Mascara := '********-*' ;
IF Estado = 'SC' Then Mascara := '***.***.***' ;
IF Estado = 'SP' Then Mascara := '***.***.***.***' ;
IF Estado = 'SE' Then Mascara := '**.***.***-*' ;
IF Estado = 'TO' Then Mascara := '***********' ;

Contador_2 := 1;

Result := '';

if trim(mascara)<>'' then
   begin
   Mascara := Mascara + '****';
   For Contador_1 := 1 To Length( Mascara ) Do
      Begin
      IF Copy( Mascara, Contador_1, 1 ) = '*' Then Result := Result + Copy( Inscricao, Contador_2, 1 );
      IF Copy( Mascara, Contador_1, 1 ) <> '*' Then Result := Result + Copy( Mascara , Contador_1, 1 );
      IF Copy( Mascara, Contador_1, 1 ) = '*' Then Contador_2 := Contador_2 + 1;
      End;
   end
else
   result:=Inscricao;

Result := Trim( Result );

End;

{ Fim __________________________________ }



Function EnDeCripta (Texto : String; Chave: Word) : String;
var I: Integer; Saida : String;
begin
//Saida := \'\';
Saida := '';
{ Atribuímos o valor inicial da variável como sendo uma String vazia}

For I := 1 to Length (Texto) do
{Aqui criamos laço “FOR DO“ indo de 1 ao tamanho em bytes da variável a ser criptografada, atribuindo o valor numérico à variável “I”}

Saida := Saida + Char ( Not ( Ord ( Texto[I] ) - Chave ) );
{Este é o ponto-chave da função, pois ele após percorrer cada letra da String(Texto) toma as seguintes medidas:

1 - Converte a Letra da posição “I” na String “Texto” em um número Ordinal, e subtraindo-lhe o valor também inteiro da chave que nesta função só pode ser um valor INTEGER .

2 – Após esta conversão e subtração, usamos o operador booleano Not, que inverte o valor de “I”.
Ex.Quando “I” tiver o valor 50 com o Not(I) teríamos –51.

3 – Usando a função Char() podemos transformar o número Ordinal trabalhado em forma de Caracter, segundo tabela ASCII.
Ex.O número ordinal 80, corresponde ao caracter “P“ na tabela ASCII.

4 – E, finalmente, concatenamos(unimos) à variável “Saida” seu valor anterior acrescido textualmente do novo caracter criptografado, trazendo após o último caracter da String, uma outra String desta vez totalmente criptografada, como sendo o conteúdo de “Saida”. }

//Result := Saida;
Result := Texto;

{ Result é o termo usado para receber o resultado da nossa função e lançá-la como resultado da própria função.}
end;

function ObterIPRealInternet(Const vUrl : String): String;
var
  IP : TIdHTTP;
  Temporario : String;
  Endereco   : String;
  X : Integer;
begin
  try
    IP := TIdHTTP.Create(nil);
    with IP do                         
    begin
//{DELPHI6}      Request.Location := vUrl;//'http://www.meuip.com.br/'; //Errei
 {DELPHI7}   Request.Host := vUrl;//'http://meuip.datahouse.com.br//'; //Errei
//{DELPHI7}anteriormente colando IoHandler.
      Temporario   := Get(vUrl);//'checkip.dyndns.org');      For X := 1 to Length(Temporario) do


       for X:=0 to length(Temporario) -1 do
        begin
        if (Temporario[X] in ['0'..'9']) or (Temporario[X] = '.') then
          Endereco := Endereco + Temporario[X];
        end;
    end;
    Result := Trim(Endereco);
    IP.Free;
  except
    Result := '';
    { Trata oque vai ocorrer quando falhar ... }
  end;
end;


function fTravaTeclado(pTipo: Integer): Boolean;
//ptipo=0-Trava
//      1-Destrava
begin

if ptipo=0 then
   begin
   BlockInput(true);
   end
else
   begin
   BlockInput(false);
   end;
Result:=true;
end;

function fCentralizar(pTam: Integer; pTexto: String): String;
{
ptipo=0 centraliza
}
var
mtexto: String;
mTamParagrafo, mTamFalta,mQtdFalta,x: Integer;
mTemEspaco: Boolean;
begin
if trim(pTexto)='' then
   begin
   result:='';
   exit;
   end;
mTamParagrafo:=0;
if pTexto[1]=' ' then
   begin
   x:=1;
   While pTexto[x]=' ' do
      begin
      x:=x+1;
      end;
   mTamParagrafo:=x-1;
   end;
mTexto:=trim(pTexto);
mTemEspaco:=false;
for x:=1 to length(mtexto) do
   begin
   if mtexto[x]=' ' then
      begin
      mTemEspaco:=true;
      break;
      end;
   end;
if not mTemEspaco then
   begin
   result:=pTexto;
   exit;
   end;

if length(mtexto)>(pTam-mTamParagrafo) then
   mtexto:=copy(mTexto,1,(pTam-mTamParagrafo));

mTamFalta:=(pTam-mTamParagrafo)-length(mtexto);
mQtdFalta:=mTamFalta;
While mQtdFalta>0 do
   begin
   for x:=((pTam-mTamParagrafo)-mTamFalta) downto 1 do
      begin
      if mtexto[x]=' ' then
         begin
         mtexto:=copy(mtexto,1,x)+' '+copy(mtexto,x+1,(pTam-mTamParagrafo)-(x+1));
         mQtdFalta:=mQtdFalta-1;
         if mQtdFalta<1 then
            break;
         end;
      end;
   mTamFalta:=(pTam-mTamParagrafo)-length(mtexto);
   end;
if mTamParagrafo>0 then
   begin
   for x:=1 to mTamParagrafo do
      begin
      mtexto:=' '+mtexto;
      end;
   end;
Result:=mTexto;
end;

function fCalcularCusto(pAplicSob,pTipoformula,pTipo: Integer; pFator,pPerc,pVlrOri,pVlrAcum,pValmin,pValReal: Real): TArrayCusto;
var
mvlMin,mValorEnc: Real;
begin
mValorEnc:=0;
mvlMin   :=0;
if pAplicSob=2 then
   pAplicSob:=1;
if (pTipo=0) then
  begin
  if (pPerc>100) or (pTipoformula=1) then
    mvlMin:=pValmin*pPerc/100
  else if pPerc=100 then
    mvlMin:=pValmin
  else
    mvlMin:=pValmin*( (100-pPerc) /100)-pValmin;
  mvlMin:=Arredonda(mvlMin,mcasqtdccus);
  if (pAplicSob=2) then
    begin
    if pFator=0 then
      mValorEnc:=0
    else
      begin
//      if (pPerc>100) or (pTipoformula=1) or (pTipoformula=0) then
      if (pTipoformula=1)  then
          mValorEnc:=pVlrOri*pPerc/100
      else
         begin
         pVlrOri:=(pVlrOri+pValReal)/pFator;
         mValorEnc:=pVlrOri*pPerc/100;
         end;
      end;
    end
  else if (pAplicSob=0) then
    begin
    if (pPerc>100) or (pTipoformula=1) or (pTipoformula=0) then
      mValorEnc:=pVlrOri*pPerc/100
    else if pPerc=100 then
      mValorEnc:=pVlrOri
    else
      mValorEnc := (pVlrOri/( (100-pPerc) / 100))-pVlrOri;
    end
  else
    begin
    if (pPerc>100) or (pTipoformula=1)then
      mValorEnc:=(pVlrOri+pVlrAcum)*pPerc/100
    else if pPerc=100 then
      mValorEnc:=(pVlrOri+pVlrAcum)
    else
      mValorEnc:=( (pVlrOri+pVlrAcum)/( (100-pPerc) / 100))-(pVlrOri+pVlrAcum);
    end;
  end
else
  begin
  mValorEnc:=pPerc;
  end;

mValorEnc:=Arredonda(mValorEnc,mcasqtdccus);

result:=vararrayof([mValorEnc,mVlMin]);
end;

function FDataSetTorTxtXml(pTxtXML: Integer;pDataSetEntra:TDataSet;pTabelaSaida:String): Boolean;
begin
end;

function fCalcDigMun_IBGE(pCodmun: Real): String;

var
mCodmun: String;
ind: String;
dv: Integer;
dv2: String;
somat,soma,x,y,z,i: Integer;
begin
mCodmun:=FormatFloat('000000',pCodmun);
if length(mCodmun)>6 then
   mCodmun:=copy(mcodmun,1,6);
//mcodmun:=copy(mcodmun,1,6);

ind:='';
y:=Length(mCodmun);
x:=2;
for z:=1 to y do
   begin
   ind:=FormatFloat('0',x)+ind;
   x:=x+1;
   if x>2 then
      x:=1;
   end;
soma:=0; x:=1;
While y>0 do
   begin
   z:=StrToInt(Copy(mCodmun,y,1))*StrToInt('0'+Copy(Trim(ind),y,1));
   mcinst:=inttostr(z);
   for i:=1 to length(mcinst) do
      begin
      soma:=soma+StrToInt(mcinst[i]);
      end;
   y:=y-1;
   end;
somat:=soma mod 10;  //10 ou 11
dv    :=10-somat;
If dv<0 then dv:=0;
dv2:=FormatFloat('0',dv);
if (Dv>9) then
   dv2:='0';
Result:=dv2;
end;


function fCodigoEstado(pUf:String): Real;
begin
if pUf='RO' then
   result:=11
else if pUf='AC' then
   result:=12
else if pUf='AM' then
   result:=13
else if pUf='RR' then
   result:=14
else if pUf='PA' then
   result:=15
else if pUf='AP' then
   result:=16
else if pUf='TO' then
   result:=17
else if pUf='MA' then
   result:=21
else if pUf='PI' then
   result:=22
else if pUf='CE' then
   result:=23
else if pUf='RN' then
   result:=24
else if pUf='PB' then
   result:=25
else if pUf='PE' then
   result:=26
else if pUf='AL' then
   result:=27
else if pUf='SE' then
   result:=28
else if pUf='BA' then
   result:=29
else if pUf='MG' then
   result:=31
else if pUf='ES' then
   result:=32
else if pUf='RJ' then
   result:=33
else if pUf='SP' then
   result:=35
else if pUf='PR' then
   result:=41
else if pUf='SC' then
   result:=42
else if pUf='RS' then
   result:=43
else if pUf='MS' then
   result:=50
else if pUf='MT' then
   result:=51
else if pUf='GO' then
   result:=52
else if pUf='DF' then
   result:=53
else if pUf='EX' then
   result:=99

else
   result:=00;

end;


function FMontarMascFone(pString:String): String;
var
mfonen: String;
mnovo: String;
begin
mfonen:=fdeixanum(pString);
if length(mfonen)>0 then
   begin
   if mfonen[1]='0' then
      mfonen:=copy(mfonen,2,length(mfonen)-1);
   end;

mnovo:='';
if length(mfonen)>8 then
   begin
   mNovo:='(  '+copy(mfonen,1,2)+')';
   mfonen:=copy(mfonen,3,length(mfonen)-2);
   end
else
   mNovo:='(    )';
mfonen:=insere(mfonen,' ',08);
mnovo :=mnovo+copy(mfonen,1,4)+'-'+copy(mfonen,5,4);
result:=mnovo;
// formato da mascara (9999)9999-9999;1;
end;



function fAjustarTipoPedido(pTipo: Integer): Boolean;
var
x: Integer;
Query_TipoPed: tQuery;
begin
SetLength(tab_tped,31);

tab_tped[00]:='Orcamento';
tab_tped_mov[00,00]:='Orcamento';
tab_tped_mov[00,01]:='NNNNNNNN';

tab_tped[01]       :='Venda Normal';
tab_tped_mov[01,00]:='Venda Normal';
tab_tped_mov[01,01]:='NNNNSNNN';
tab_tped[02]       :='Simples Remessa';
tab_tped_mov[02,00]:='Simples Remessa';
tab_tped_mov[02,01]:='NNNNSNNN';
tab_tped[03]       :='Devolucao a Fornecedor';
tab_tped_mov[03,00]:='Devolucao a Fornecedor';
tab_tped_mov[03,01]:='NNNNSNNN';
tab_tped[04]       :='Remessa p/Troca';
tab_tped_mov[04,00]:='Remessa p/Troca';
tab_tped_mov[04,01]:='NNNNSNNN';
tab_tped[05]       :='Transferencia de Mercadorias';
tab_tped_mov[05,00]:='Transferencia de Mercadorias';
tab_tped_mov[05,01]:='NNNNSNNN';

tab_tped[06]       :='Remessa p/Beneficiamento';
tab_tped_mov[06,00]:='Remessa p/Beneficiamento';
tab_tped_mov[06,01]:='NNNNSNNN';

tab_tped[07]       :='Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[07,00]:='Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[07,01]:='NNSNSNNN';

tab_tped[08]       :='Devolucao Cliente(Entrada) Normal';
tab_tped_mov[08,00]:='Devolucao Cliente(Entrada) Normal';
tab_tped_mov[08,01]:='SNNNNNNN';
tab_tped[09]       :='Emprestimo de Mercadorias';
tab_tped_mov[09,00]:='Emprestimo de Mercadorias';
tab_tped_mov[09,01]:='NNNNSNNN';

tab_tped[10]       :='Nota Complementar';
tab_tped_mov[10,00]:='Nota Complementar';
tab_tped_mov[10,01]:='NNNNNNNN';

tab_tped[11]       :='Remessa Para Consignacoes';
tab_tped_mov[11,00]:='Remessa Para Consignacoes';
tab_tped_mov[11,01]:='NSNNSNNN';

tab_tped[12]       :='Devolucao Mercadoria Consignacoes';
tab_tped_mov[12,00]:='Devolucao Mercadoria Consignacoes';
tab_tped_mov[12,01]:='SNNNNSNN';

tab_tped[13]       :='Devolucao Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[13,00]:='Devolucao Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[13,01]:='SNNNNNSN';

tab_tped[14]       :='Venda Mercadoria Consignada';
tab_tped_mov[14,00]:='Venda Mercadoria Consignada';
tab_tped_mov[14,01]:='NNNNNSNN';

tab_tped[15]       :='Venda Remessa p/Venda(Vda.Fora do Estabel.)';
tab_tped_mov[15,00]:='Venda Remessa p/Venda(Vda.Fora do Estabel.)';
tab_tped_mov[15,01]:='NNNNNNSN';

tab_tped[16]       :='Venda Normal(Troca de Mercadorias)';
tab_tped_mov[16,00]:='Venda Normal(Troca de Mercadorias)';
tab_tped_mov[16,01]:='NNNNSNNN';

tab_tped[17]       :='Devolucao de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,00]:='Devolucao de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,01]:='SNNNNNNN';

tab_tped[18]       :='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,00]:='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,01]:='SNNNNNNN';


tab_tped[19]       :='Devolucao de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,00]:='Devolucao de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,01]:='NNNNSNNS';

tab_tped[20]       :='Remessa p/Industrializacao';
tab_tped_mov[20,00]:='Remessa p/Industrializacao';
tab_tped_mov[20,01]:='NNNNSNNN';

tab_tped[21]       :='Remessa p/Brinde';
tab_tped_mov[21,00]:='Remessa p/Brinde';
tab_tped_mov[21,01]:='NNNNSNNN';

tab_tped[22]       :='Remessa Amostra Gratis';
tab_tped_mov[22,00]:='Remessa Amostra Gratis';
tab_tped_mov[22,01]:='NNNNSNNN';

tab_tped[23]       :='Remessa p/Demonstracao';
tab_tped_mov[23,00]:='Remessa p/Demonstracao';
tab_tped_mov[23,01]:='NNNNSNNN';

tab_tped[24]       :='Remessa p/Conserto';
tab_tped_mov[24,00]:='Remessa p/Conserto';
tab_tped_mov[24,01]:='NNNNSNNN';

tab_tped[25]       :='Remessa Comodato';
tab_tped_mov[25,00]:='Remessa Comodato';
tab_tped_mov[25,01]:='NNNNSNNN';

tab_tped[26]       :='Venda a Ordem';
tab_tped_mov[26,00]:='Venda a Ordem';
tab_tped_mov[26,01]:='NNNNNNNN';

tab_tped[27]       :='Remessa da Venda a Ordem';
tab_tped_mov[27,00]:='Remessa da Venda a Ordem';
tab_tped_mov[27,01]:='NNNNSNNN';

tab_tped[28]       :='Remessa P/Incineracao';
tab_tped_mov[28,00]:='Remessa P/Incineracao';
tab_tped_mov[28,01]:='NNNNSNNN';


tab_tped[29]       :='Remessa P/Sinistro';
tab_tped_mov[29,00]:='Remessa P/Sinistro';
tab_tped_mov[29,01]:='NNNNSNNN';

tab_tped[30]       :='Todos';


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
{
DM1.Query2.Params.CreateParam(ftstring,'TPCODIGO',ptinput);

DM1.Query2.Params.CreateParam(ftstring,'TPNOME',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPGERDUP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPATIVO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_NORMAL',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_CONSIGNADO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_REM_VENDA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_EST_TERC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_NORMAL',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_CONSIGNADO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_REM_VENDA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_EST_TERC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCODUSR_INC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDATHOR_INC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCODUSR_ALT',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDATHOR_ALT',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RV_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RVCP_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_CF_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RV_FORA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RVCP_FORA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_CF_FORA',ptinput);
}

DM1.Query2.SQL.Add('Insert into CADTIPPED ('
          +'TPCODIGO'
          +',TPNOME'
          +',TPGERDUP'
          +',TPATIVO'
          +',TPDENTRO_CFOP_RV_ST'
          +',TPDENTRO_CFOP_RV_TRIB'
          +',TPDENTRO_CFOP_RV_ISENTO'
          +',TPDENTRO_CFOP_RVCP_ST'
          +',TPDENTRO_CFOP_RVCP_TRIB'
          +',TPDENTRO_CFOP_RVCP_ISENTO'
          +',TPDENTRO_CFOP_CF_ST'
          +',TPDENTRO_CFOP_CF_TRIB'
          +',TPDENTRO_CFOP_CF_ISENTO'
          +',TPDENTRO_SUBST_CFOP_ST'
          +',TPDENTRO_SUBST_CFOP_TRIB'
          +',TPDENTRO_SUBST_CFOP_ISENTO'
          +',TPFORA_CFOP_RV_ST'
          +',TPFORA_CFOP_RV_TRIB'
          +',TPFORA_CFOP_RV_ISENTO'
          +',TPFORA_CFOP_RVCP_ST'
          +',TPFORA_CFOP_RVCP_TRIB'
          +',TPFORA_CFOP_RVCP_ISENTO'
          +',TPFORA_CFOP_CF_ST'
          +',TPFORA_CFOP_CF_TRIB'
          +',TPFORA_CFOP_CF_ISENTO'
          +',TPFORA_SUBST_CFOP_ST'
          +',TPFORA_SUBST_CFOP_TRIB'
          +',TPFORA_SUBST_CFOP_ISENTO'
          +',TPENTRADA_NORMAL'
          +',TPENTRADA_CONSIGNADO'
          +',TPENTRADA_REM_VENDA'
          +',TPENTRADA_EST_TERC'
          +',TPSAIDA_NORMAL'
          +',TPSAIDA_CONSIGNADO'
          +',TPSAIDA_REM_VENDA'
          +',TPSAIDA_EST_TERC'
          +',TPCODUSR_INC'
          +',TPDATHOR_INC'
          +',TPCODUSR_ALT'
          +',TPDATHOR_ALT'
          +',TPCALCIMP_RV_DENTRO'
          +',TPCALCIMP_RVCP_DENTRO'
          +',TPCALCIMP_CF_DENTRO'
          +',TPCALCIMP_RV_FORA'
          +',TPCALCIMP_RVCP_FORA'
          +',TPCALCIMP_CF_FORA'
          +') Values  ('
          +':TPCODIGO'
          +',:TPNOME'
          +',:TPGERDUP'
          +',:TPATIVO'
          +',:TPDENTRO_CFOP_RV_ST'
          +',:TPDENTRO_CFOP_RV_TRIB'
          +',:TPDENTRO_CFOP_RV_ISENTO'
          +',:TPDENTRO_CFOP_RVCP_ST'
          +',:TPDENTRO_CFOP_RVCP_TRIB'
          +',:TPDENTRO_CFOP_RVCP_ISENTO'
          +',:TPDENTRO_CFOP_CF_ST'
          +',:TPDENTRO_CFOP_CF_TRIB'
          +',:TPDENTRO_CFOP_CF_ISENTO'
          +',:TPDENTRO_SUBST_CFOP_ST'
          +',:TPDENTRO_SUBST_CFOP_TRIB'
          +',:TPDENTRO_SUBST_CFOP_ISENTO'
          +',:TPFORA_CFOP_RV_ST'
          +',:TPFORA_CFOP_RV_TRIB'
          +',:TPFORA_CFOP_RV_ISENTO'
          +',:TPFORA_CFOP_RVCP_ST'
          +',:TPFORA_CFOP_RVCP_TRIB'
          +',:TPFORA_CFOP_RVCP_ISENTO'
          +',:TPFORA_CFOP_CF_ST'
          +',:TPFORA_CFOP_CF_TRIB'
          +',:TPFORA_CFOP_CF_ISENTO'
          +',:TPFORA_SUBST_CFOP_ST'
          +',:TPFORA_SUBST_CFOP_TRIB'
          +',:TPFORA_SUBST_CFOP_ISENTO'
          +',:TPENTRADA_NORMAL'
          +',:TPENTRADA_CONSIGNADO'
          +',:TPENTRADA_REM_VENDA'
          +',:TPENTRADA_EST_TERC'
          +',:TPSAIDA_NORMAL'
          +',:TPSAIDA_CONSIGNADO'
          +',:TPSAIDA_REM_VENDA'
          +',:TPSAIDA_EST_TERC'
          +',:TPCODUSR_INC'
          +',:TPDATHOR_INC'
          +',:TPCODUSR_ALT'
          +',:TPDATHOR_ALT'
          +',:TPCALCIMP_RV_DENTRO'
          +',:TPCALCIMP_RVCP_DENTRO'
          +',:TPCALCIMP_CF_DENTRO'
          +',:TPCALCIMP_RV_FORA'
          +',:TPCALCIMP_RVCP_FORA'
          +',:TPCALCIMP_CF_FORA'
          +')'
          );

// query34 sera preenchido com dados estaduais
for x:=1 to 2 do
   begin
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.add('Select ');

   if x<2 then
      begin
      DM1.Query3.SQL.add(' PCFORVN  AS CFOTRIB_RV00 '
                     +',PCFORVN  AS CFOISEN_RV00 '
                     +',PCFORVR  AS CFORV_RV00 '
                     +',PCIMP_RV AS CALCICMS_RV00 '

                     +',PCFOCFN  AS CFOTRIB_CF00 '
                     +',PCFOCFN  AS CFOISEN_CF00 '
                     +',PCFOCFR  AS CFORV_CF00 '
                     +',PCIMP_CF AS CALCICMS_CF00 '


                     +',PCFORVN_CP  AS CFOTRIB_RVCP00 '
                     +',PCFORVN_CP  AS CFOISEN_RVCP00 '
                     +',PCFORVR_CP  AS CFORV_RVCP00 '
                     +',PCIMP_RV_CP AS CALCICMS_RVCP00 '

                     +',PCFORVN  AS CFOTRIB_RV01 '
                     +',PCFORVN  AS CFOISEN_RV01 '
                     +',PCFORVR  AS CFORV_RV01 '
                     +',PCIMP_RV AS CALCICMS_RV01 '

                     +',PCFOCFN  AS CFOTRIB_CF01 '
                     +',PCFOCFN  AS CFOISEN_CF01 '
                     +',PCFOCFR  AS CFORV_CF01 '
                     +',PCIMP_CF AS CALCICMS_CF01 '


                     +',PCFORVN_CP  AS CFOTRIB_RVCP01 '
                     +',PCFORVN_CP  AS CFOISEN_RVCP01 '
                     +',PCFORVR_CP  AS CFORV_RVCP01 '
                     +',PCIMP_RV_CP AS CALCICMS_RVCP01 '


                     +',PCFOSRN  AS CFOTRIB_RV02 '
                     +',PCFOSRN  AS CFOISEN_RV02 '
                     +',PCFOSRR  AS CFORV_RV02 '
                     +',PCIMP_SR AS CALCICMS_RV02 '

                     +',PCFOSRN  AS CFOTRIB_CF02 '
                     +',PCFOSRN  AS CFOISEN_CF02 '
                     +',PCFOSRR  AS CFORV_CF02 '
                     +',PCIMP_SR AS CALCICMS_CF02 '


                     +',PCFOSRN  AS CFOTRIB_RVCP02 '
                     +',PCFOSRN  AS CFOISEN_RVCP02 '
                     +',PCFOSRR  AS CFORV_RVCP02 '
                     +',PCIMP_SR AS CALCICMS_RVCP02 '




                     +',PCFODFN AS CFOTRIB_RV03 '
                     +',PCFODFN  AS CFOISEN_RV03 '
                     +',PCFODFR  AS CFORV_RV03 '
                     +',PCIMP_DF AS CALCICMS_RV03 '

                     +',PCFODFN  AS CFOTRIB_CF03 '
                     +',PCFODFN  AS CFOISEN_CF03 '
                     +',PCFODFR  AS CFORV_CF03 '
                     +',PCIMP_DF AS CALCICMS_CF03 '


                     +',PCFODFN  AS CFOTRIB_RVCP03 '
                     +',PCFODFN  AS CFOISEN_RVCP03 '
                     +',PCFOSRR  AS CFORV_RVCP03 '
                     +',PCIMP_DF AS CALCICMS_RVCP03 '


                     +',PCFOSRN AS CFOTRIB_RV04 '
                     +',PCFOSRN  AS CFOISEN_RV04 '
                     +',PCFOSRR  AS CFORV_RV04 '
                     +',PCIMP_SR AS CALCICMS_RV04 '

                     +',PCFOSRN  AS CFOTRIB_CF04 '
                     +',PCFOSRN  AS CFOISEN_CF04 '
                     +',PCFOSRR  AS CFORV_CF04 '
                     +',PCIMP_SR AS CALCICMS_CF04 '


                     +',PCFOSRN  AS CFOTRIB_RVCP04 '
                     +',PCFOSRN  AS CFOISEN_RVCP04 '
                     +',PCFOSRR  AS CFORV_RVCP04 '
                     +',PCIMP_SR AS CALCICMS_RVCP04 '


                     +',PCFOTRN AS CFOTRIB_RV05 '
                     +',PCFOTRN  AS CFOISEN_RV05 '
                     +',PCFOTRR  AS CFORV_RV05 '
                     +',PCIMP_TR AS CALCICMS_RV05 '

                     +',PCFOTRN  AS CFOTRIB_CF05 '
                     +',PCFOTRN  AS CFOISEN_CF05 '
                     +',PCFOTRR  AS CFORV_CF05 '
                     +',PCIMP_TR AS CALCICMS_CF05 '


                     +',PCFOTRN  AS CFOTRIB_RVCP05 '
                     +',PCFOTRN  AS CFOISEN_RVCP05 '
                     +',PCFOTRR  AS CFORV_RVCP05 '
                     +',PCIMP_TR AS CALCICMS_RVCP05 '

                     +',PCFOBEN AS CFOTRIB_RV06 '
                     +',PCFOBEN  AS CFOISEN_RV06 '
                     +',PCFOBER  AS CFORV_RV06 '
                     +',PCIMP_BE AS CALCICMS_RV06 '

                     +',PCFOBEN  AS CFOTRIB_CF06 '
                     +',PCFOBEN  AS CFOISEN_CF06 '
                     +',PCFOBER  AS CFORV_CF06 '
                     +',PCIMP_BE AS CALCICMS_CF06 '


                     +',PCFOBEN  AS CFOTRIB_RVCP06 '
                     +',PCFOBEN  AS CFOISEN_RVCP06 '
                     +',PCFOBER  AS CFORV_RVCP06 '
                     +',PCIMP_BE AS CALCICMS_RVCP06 '



                     +',PCFORVFEO AS CFOTRIB_RV07 '
                     +',PCFORVFEO  AS CFOISEN_RV07 '
                     +',PCFORVFER  AS CFORV_RV07 '
                     +',PCIMP_RVFE AS CALCICMS_RV07 '

                     +',PCFORVFEO  AS CFOTRIB_CF07 '
                     +',PCFORVFEO  AS CFOISEN_CF07 '
                     +',PCFORVFER  AS CFORV_CF07 '
                     +',PCIMP_RVFE AS CALCICMS_CF07 '


                     +',PCFORVFEO  AS CFOTRIB_RVCP07 '
                     +',PCFORVFEO  AS CFOISEN_RVCP07 '
                     +',PCFORVFER  AS CFORV_RVCP07 '
                     +',PCIMP_RVFE AS CALCICMS_RVCP07 '


                     +',PCFODCN AS CFOTRIB_RV08 '
                     +',PCFODCN  AS CFOISEN_RV08 '
                     +',PCFODCR  AS CFORV_RV08 '
                     +',PCIMP_DC AS CALCICMS_RV08 '

                     +',PCFODCN  AS CFOTRIB_CF08 '
                     +',PCFODCN  AS CFOISEN_CF08 '
                     +',PCFODCR  AS CFORV_CF08 '
                     +',PCIMP_DC AS CALCICMS_CF08 '


                     +',PCFODCN  AS CFOTRIB_RVCP08 '
                     +',PCFODCN  AS CFOISEN_RVCP08 '
                     +',PCFODCR  AS CFORV_RVCP08 '
                     +',PCIMP_DC AS CALCICMS_RVCP08 '



                     +',PCFORVN  AS CFOTRIB_RV09 '
                     +',PCFORVN  AS CFOISEN_RV09 '
                     +',PCFORVR  AS CFORV_RV09 '
                     +',PCIMP_RV AS CALCICMS_RV09 '

                     +',PCFOCFN  AS CFOTRIB_CF09 '
                     +',PCFOCFN  AS CFOISEN_CF09 '
                     +',PCFOCFR  AS CFORV_CF09 '
                     +',PCIMP_CF AS CALCICMS_CF09 '


                     +',PCFORVN_CP  AS CFOTRIB_RVCP09 '
                     +',PCFORVN_CP  AS CFOISEN_RVCP09 '
                     +',PCFORVR_CP  AS CFORV_RVCP09 '
                     +',PCIMP_RV_CP AS CALCICMS_RVCP09 '


                     +',PCFORVN  AS CFOTRIB_RV10 '
                     +',PCFORVN  AS CFOISEN_RV10 '
                     +',PCFORVR  AS CFORV_RV10 '
                     +',PCIMP_RV AS CALCICMS_RV10 '

                     +',PCFOCFN  AS CFOTRIB_CF10 '
                     +',PCFOCFN  AS CFOISEN_CF10 '
                     +',PCFOCFR  AS CFORV_CF10 '
                     +',PCIMP_CF AS CALCICMS_CF10 '


                     +',PCFORVN_CP  AS CFOTRIB_RVCP10 '
                     +',PCFORVN_CP  AS CFOISEN_RVCP10 '
                     +',PCFORVR_CP  AS CFORV_RVCP10 '
                     +',PCIMP_RV_CP AS CALCICMS_RVCP10 '


                     +',PCFORCON AS CFOTRIB_RV11 '
                     +',PCFORCON  AS CFOISEN_RV11 '
                     +',PCFORCOR  AS CFORV_RV11 '
                     +',PCIMP_RC AS CALCICMS_RV11 '

                     +',PCFORCON  AS CFOTRIB_CF11 '
                     +',PCFORCON  AS CFOISEN_CF11 '
                     +',PCFORCOR  AS CFORV_CF11 '
                     +',PCIMP_RC AS CALCICMS_CF11 '

                     +',PCFORCON  AS CFOTRIB_RVCP11 '
                     +',PCFORCON  AS CFOISEN_RVCP11 '
                     +',PCFORCOR  AS CFORV_RVCP11 '
                     +',PCIMP_RC AS CALCICMS_RVCP11 '



                     +',PCFODVCO AS CFOTRIB_RV12 '
                     +',PCFODVCO  AS CFOISEN_RV12 '
                     +',PCFODVCR  AS CFORV_RV12 '
                     +',PCIMP_DVC AS CALCICMS_RV12 '

                     +',PCFODVCO  AS CFOTRIB_CF12 '
                     +',PCFODVCO  AS CFOISEN_CF12 '
                     +',PCFODVCR  AS CFORV_CF12 '
                     +',PCIMP_DVC AS CALCICMS_CF12 '

                     +',PCFODVCO  AS CFOTRIB_RVCP12 '
                     +',PCFODVCO  AS CFOISEN_RVCP12 '
                     +',PCFODVCR  AS CFORV_RVCP12 '
                     +',PCIMP_DVC AS CALCICMS_RVCP12 '


                     +',PCFODVFEO AS CFOTRIB_RV13 '
                     +',PCFODVFEO  AS CFOISEN_RV13 '
                     +',PCFODVFER  AS CFORV_RV13 '
                     +',PCIMP_DVFE AS CALCICMS_RV13 '

                     +',PCFODVFEO  AS CFOTRIB_CF13 '
                     +',PCFODVFEO  AS CFOISEN_CF13 '
                     +',PCFODVFER  AS CFORV_CF13 '
                     +',PCIMP_DVFE AS CALCICMS_CF13 '

                     +',PCFODVFEO  AS CFOTRIB_RVCP13 '
                     +',PCFODVFEO  AS CFOISEN_RVCP13 '
                     +',PCFODVFER  AS CFORV_RVCP13 '
                     +',PCIMP_DVFE AS CALCICMS_RVCP13 '


                     +',PCFOVCON AS CFOTRIB_RV14 '
                     +',PCFOVCON  AS CFOISEN_RV14 '
                     +',PCFOVCOR  AS CFORV_RV14 '
                     +',PCIMP_VC AS CALCICMS_RV14 '

                     +',PCFOVCON  AS CFOTRIB_CF14 '
                     +',PCFOVCON  AS CFOISEN_CF14 '
                     +',PCFOVCOR  AS CFORV_CF14 '
                     +',PCIMP_VC AS CALCICMS_CF14 '

                     +',PCFOVCON  AS CFOTRIB_RVCP14 '
                     +',PCFOVCON  AS CFOISEN_RVCP14 '
                     +',PCFOVCOR  AS CFORV_RVCP14 '
                     +',PCIMP_VC AS CALCICMS_RVCP14 '

                     +',PCFOVFEO AS CFOTRIB_RV15 '
                     +',PCFOVFEO  AS CFOISEN_RV15 '
                     +',PCFOVFER  AS CFORV_RV15 '
                     +',PCIMP_VFE AS CALCICMS_RV15 '

                     +',PCFOVFEO  AS CFOTRIB_CF15 '
                     +',PCFOVFEO  AS CFOISEN_CF15 '
                     +',PCFOVFER  AS CFORV_CF15 '
                     +',PCIMP_VFE AS CALCICMS_CF15 '

                     +',PCFOVFEO  AS CFOTRIB_RVCP15 '
                     +',PCFOVFEO  AS CFOISEN_RVCP15 '
                     +',PCFOVFER  AS CFORV_RVCP15 '
                     +',PCIMP_VFE AS CALCICMS_RVCP15 '


                     +',PCFORVN  AS CFOTRIB_RV16 '
                     +',PCFORVN  AS CFOISEN_RV16 '
                     +',PCFORVR  AS CFORV_RV16 '
                     +',PCIMP_RV AS CALCICMS_RV16 '

                     +',PCFOCFN  AS CFOTRIB_CF16 '
                     +',PCFOCFN  AS CFOISEN_CF16 '
                     +',PCFOCFR  AS CFORV_CF16 '
                     +',PCIMP_CF AS CALCICMS_CF16 '


                     +',PCFORVN_CP  AS CFOTRIB_RVCP16 '
                     +',PCFORVN_CP  AS CFOISEN_RVCP16 '
                     +',PCFORVR_CP  AS CFORV_RVCP16 '
                     +',PCIMP_RV_CP AS CALCICMS_RVCP16 ');
      DM1.Query3.SQL.add(',PCFODCN AS CFOTRIB_RV17 '
                     +',PCFODCN  AS CFOISEN_RV17 '
                     +',PCFODCR  AS CFORV_RV17 '
                     +',PCIMP_DC AS CALCICMS_RV17 '

                     +',PCFODCN  AS CFOTRIB_CF17 '
                     +',PCFODCN  AS CFOISEN_CF17 '
                     +',PCFODCR  AS CFORV_CF17 '
                     +',PCIMP_DC AS CALCICMS_CF17 '

                     +',PCFODCN  AS CFOTRIB_RVCP17 '
                     +',PCFODCN  AS CFOISEN_RVCP17 '
                     +',PCFODCR  AS CFORV_RVCP17 '
                     +',PCIMP_DC AS CALCICMS_RVCP17 '



                     +',PCFOTREN AS CFOTRIB_RV18 '
                     +',PCFOTREN  AS CFOISEN_RV18 '
                     +',PCFOTRER  AS CFORV_RV18 '
                     +',PCIMP_TE AS CALCICMS_RV18 '

                     +',PCFOTREN  AS CFOTRIB_CF18 '
                     +',PCFOTREN  AS CFOISEN_CF18 '
                     +',PCFOTRER  AS CFORV_CF18 '
                     +',PCIMP_TE AS CALCICMS_CF18 '


                     +',PCFOTREN  AS CFOTRIB_RVCP18 '
                     +',PCFOTREN  AS CFOISEN_RVCP18 '
                     +',PCFOTRER  AS CFORV_RVCP18 '
                     +',PCIMP_TE AS CALCICMS_RVCP18 '

                     +',PCFODMTN AS CFOTRIB_RV19 '
                     +',PCFODMTN  AS CFOISEN_RV19 '
                     +',PCFODMTR  AS CFORV_RV19 '
                     +',PCIMP_DMT AS CALCICMS_RV19 '

                     +',PCFODMTN  AS CFOTRIB_CF19 '
                     +',PCFODMTN  AS CFOISEN_CF19 '
                     +',PCFODMTR  AS CFORV_CF19 '
                     +',PCIMP_DMT AS CALCICMS_CF19 '


                     +',PCFODMTN  AS CFOTRIB_RVCP19 '
                     +',PCFODMTN  AS CFOISEN_RVCP19 '
                     +',PCFODMTR  AS CFORV_RVCP19 '
                     +',PCIMP_DMT AS CALCICMS_RVCP19 '

                     +',PCFOREIND_T AS CFOTRIB_RV20 '
                     +',PCFOREIND_T  AS CFOISEN_RV20 '
                     +',PCFOREIND_R  AS CFORV_RV20 '
                     +',PCIMP_REIND AS CALCICMS_RV20 '

                     +',PCFOREIND_T  AS CFOTRIB_CF20 '
                     +',PCFOREIND_T  AS CFOISEN_CF20 '
                     +',PCFOREIND_R  AS CFORV_CF20 '
                     +',PCIMP_REIND AS CALCICMS_CF20 '

                     +',PCFOREIND_T  AS CFOTRIB_RVCP20 '
                     +',PCFOREIND_T  AS CFOISEN_RVCP20 '
                     +',PCFOREIND_R  AS CFORV_RVCP20 '
                     +',PCIMP_REIND AS CALCICMS_RVCP20 '

                     +',PCFOBRINDE_T AS CFOTRIB_RV21 '
                     +',PCFOBRINDE_T  AS CFOISEN_RV21 '
                     +',PCFOBRINDE_R  AS CFORV_RV21 '
                     +',PCIMP_BRINDE AS CALCICMS_RV21 '

                     +',PCFOBRINDE_T  AS CFOTRIB_CF21 '
                     +',PCFOBRINDE_T  AS CFOISEN_CF21 '
                     +',PCFOBRINDE_R  AS CFORV_CF21 '
                     +',PCIMP_BRINDE AS CALCICMS_CF21 '

                     +',PCFOBRINDE_T  AS CFOTRIB_RVCP21 '
                     +',PCFOBRINDE_T  AS CFOISEN_RVCP21 '
                     +',PCFOBRINDE_R  AS CFORV_RVCP21 '
                     +',PCIMP_BRINDE AS CALCICMS_RVCP21 '


                     +',PCFOAMOSTRA_T AS CFOTRIB_RV22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_RV22 '
                     +',PCFOAMOSTRA_R  AS CFORV_RV22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_RV22 '

                     +',PCFOAMOSTRA_T  AS CFOTRIB_CF22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_CF22 '
                     +',PCFOAMOSTRA_R  AS CFORV_CF22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_CF22 '

                     +',PCFOAMOSTRA_T  AS CFOTRIB_RVCP22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_RVCP22 '
                     +',PCFOAMOSTRA_R  AS CFORV_RVCP22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_RVCP22 '


                     +',PCFODEMO_T AS CFOTRIB_RV23 '
                     +',PCFODEMO_T  AS CFOISEN_RV23 '
                     +',PCFODEMO_R  AS CFORV_RV23 '
                     +',PCIMP_DEMO AS CALCICMS_RV23 '

                     +',PCFODEMO_T  AS CFOTRIB_CF23 '
                     +',PCFODEMO_T  AS CFOISEN_CF23 '
                     +',PCFODEMO_R  AS CFORV_CF23 '
                     +',PCIMP_DEMO AS CALCICMS_CF23 '

                     +',PCFODEMO_T  AS CFOTRIB_RVCP23 '
                     +',PCFODEMO_T  AS CFOISEN_RVCP23 '
                     +',PCFODEMO_R  AS CFORV_RVCP23 '
                     +',PCIMP_DEMO AS CALCICMS_RVCP23 '



                     +',PCFOCONS_T AS CFOTRIB_RV24 '
                     +',PCFOCONS_T  AS CFOISEN_RV24 '
                     +',PCFOCONS_R  AS CFORV_RV24 '
                     +',PCIMP_CONS AS CALCICMS_RV24 '

                     +',PCFOCONS_T  AS CFOTRIB_CF24 '
                     +',PCFOCONS_T  AS CFOISEN_CF24 '
                     +',PCFOCONS_R  AS CFORV_CF24 '
                     +',PCIMP_CONS AS CALCICMS_CF24 '

                     +',PCFOCONS_T  AS CFOTRIB_RVCP24 '
                     +',PCFOCONS_T  AS CFOISEN_RVCP24 '
                     +',PCFOCONS_R  AS CFORV_RVCP24 '
                     +',PCIMP_CONS AS CALCICMS_RVCP24 '



                     +',PCFOOUTSAI_T AS CFOTRIB_RV25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_RV25 '
                     +',PCFOOUTSAI_R  AS CFORV_RV25 '
                     +',PCIMP_OUTSAI AS CALCICMS_RV25 '

                     +',PCFOOUTSAI_T  AS CFOTRIB_CF25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_CF25 '
                     +',PCFOOUTSAI_R  AS CFORV_CF25 '
                     +',PCIMP_OUTSAI AS CALCICMS_CF25 '

                     +',PCFOOUTSAI_T  AS CFOTRIB_RVCP25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_RVCP25 '
                     +',PCFOOUTSAI_R  AS CFORV_RVCP25 '
                     +',PCIMP_OUTSAI AS CALCICMS_RVCP25 ');
      end
   else
      begin
      DM1.Query3.Sql.add(' 0 AS CFOTRIB_RV00 '
                  +',0 AS CFOISEN_RV00 '
                  +',0 AS CFORV_RV00 '
                  +',0 AS CALCICMS_RV00 '

                  +',0 AS CFOTRIB_CF00 '
                  +',0 AS CFOISEN_CF00 '
                  +',0 AS CFORV_CF00 '
                  +',0 AS CALCICMS_CF00 '


                  +',0 AS CFOTRIB_RVCP00 '
                  +',0 AS CFOISEN_RVCP00 '
                  +',0 AS CFORV_RVCP00 '
                  +',0 AS CALCICMS_RVCP00 '

                  +',0 AS CFOTRIB_RV01 '
                  +',0 AS CFOISEN_RV01 '
                  +',0 AS CFORV_RV01 '
                  +',0 AS CALCICMS_RV01 '

                  +',0 AS CFOTRIB_CF01 '
                  +',0 AS CFOISEN_CF01 '
                  +',0 AS CFORV_CF01 '
                  +',0 AS CALCICMS_CF01 '


                  +',0 AS CFOTRIB_RVCP01 '
                  +',0 AS CFOISEN_RVCP01 '
                  +',0 AS CFORV_RVCP01 '
                  +',0 AS CALCICMS_RVCP01 '


                  +',0 AS CFOTRIB_RV02 '
                  +',0 AS CFOISEN_RV02 '
                  +',0 AS CFORV_RV02 '
                  +',0 AS CALCICMS_RV02 '

                  +',0 AS CFOTRIB_CF02 '
                  +',0 AS CFOISEN_CF02 '
                  +',0 AS CFORV_CF02 '
                  +',0 AS CALCICMS_CF02 '


                  +',0 AS CFOTRIB_RVCP02 '
                  +',0 AS CFOISEN_RVCP02 '
                  +',0 AS CFORV_RVCP02 '
                  +',0 AS CALCICMS_RVCP02 '




                  +',0 AS CFOTRIB_RV03 '
                  +',0 AS CFOISEN_RV03 '
                  +',0 AS CFORV_RV03 '
                  +',0 AS CALCICMS_RV03 '

                  +',0 AS CFOTRIB_CF03 '
                  +',0 AS CFOISEN_CF03 '
                  +',0 AS CFORV_CF03 '
                  +',0 AS CALCICMS_CF03 '


                  +',0 AS CFOTRIB_RVCP03 '
                  +',0 AS CFOISEN_RVCP03 '
                  +',0 AS CFORV_RVCP03 '
                  +',0 AS CALCICMS_RVCP03 '


                  +',0 AS CFOTRIB_RV04 '
                  +',0 AS CFOISEN_RV04 '
                  +',0 AS CFORV_RV04 '
                  +',0 AS CALCICMS_RV04 '

                  +',0 AS CFOTRIB_CF04 '
                  +',0 AS CFOISEN_CF04 '
                  +',0 AS CFORV_CF04 '
                  +',0 AS CALCICMS_CF04 '


                  +',0 AS CFOTRIB_RVCP04 '
                  +',0 AS CFOISEN_RVCP04 '
                  +',0 AS CFORV_RVCP04 '
                  +',0 AS CALCICMS_RVCP04 '


                  +',0 AS CFOTRIB_RV05 '
                  +',0 AS CFOISEN_RV05 '
                  +',0 AS CFORV_RV05 '
                  +',0 AS CALCICMS_RV05 '

                  +',0 AS CFOTRIB_CF05 '
                  +',0 AS CFOISEN_CF05 '
                  +',0 AS CFORV_CF05 '
                  +',0 AS CALCICMS_CF05 '


                  +',0 AS CFOTRIB_RVCP05 '
                  +',0 AS CFOISEN_RVCP05 '
                  +',0 AS CFORV_RVCP05 '
                  +',0 AS CALCICMS_RVCP05 '

                  +',0 AS CFOTRIB_RV06 '
                  +',0 AS CFOISEN_RV06 '
                  +',0 AS CFORV_RV06 '
                  +',0 AS CALCICMS_RV06 '

                  +',0 AS CFOTRIB_CF06 '
                  +',0 AS CFOISEN_CF06 '
                  +',0 AS CFORV_CF06 '
                  +',0 AS CALCICMS_CF06 '


                  +',0 AS CFOTRIB_RVCP06 '
                  +',0 AS CFOISEN_RVCP06 '
                  +',0 AS CFORV_RVCP06 '
                  +',0 AS CALCICMS_RVCP06 '



                  +',0 AS CFOTRIB_RV07 '
                  +',0 AS CFOISEN_RV07 '
                  +',0 AS CFORV_RV07 '
                  +',0 AS CALCICMS_RV07 '

                  +',0 AS CFOTRIB_CF07 '
                  +',0 AS CFOISEN_CF07 '
                  +',0 AS CFORV_CF07 '
                  +',0 AS CALCICMS_CF07 '


                  +',0 AS CFOTRIB_RVCP07 '
                  +',0 AS CFOISEN_RVCP07 '
                  +',0 AS CFORV_RVCP07 '
                  +',0 AS CALCICMS_RVCP07 '


                  +',0 AS CFOTRIB_RV08 '
                  +',0 AS CFOISEN_RV08 '
                  +',0 AS CFORV_RV08 '
                  +',0 AS CALCICMS_RV08 '

                  +',0 AS CFOTRIB_CF08 '
                  +',0 AS CFOISEN_CF08 '
                  +',0 AS CFORV_CF08 '
                  +',0 AS CALCICMS_CF08 '


                  +',0 AS CFOTRIB_RVCP08 '
                  +',0 AS CFOISEN_RVCP08 '
                  +',0 AS CFORV_RVCP08 '
                  +',0 AS CALCICMS_RVCP08 '
                  +',0 AS CFOTRIB_RV09 '
                  +',0 AS CFOISEN_RV09 '
                  +',0 AS CFORV_RV09 '
                  +',0 AS CALCICMS_RV09 '

                  +',0 AS CFOTRIB_CF09 '
                  +',0 AS CFOISEN_CF09 '
                  +',0 AS CFORV_CF09 '
                  +',0 AS CALCICMS_CF09 '


                  +',0 AS CFOTRIB_RVCP09 '
                  +',0 AS CFOISEN_RVCP09 '
                  +',0 AS CFORV_RVCP09 '
                  +',0 AS CALCICMS_RVCP09 '


                  +',0 AS CFOTRIB_RV10 '
                  +',0 AS CFOISEN_RV10 '
                  +',0 AS CFORV_RV10 '
                  +',0 AS CALCICMS_RV10 '

                  +',0 AS CFOTRIB_CF10 '
                  +',0 AS CFOISEN_CF10 '
                  +',0 AS CFORV_CF10 '
                  +',0 AS CALCICMS_CF10 '


                  +',0 AS CFOTRIB_RVCP10 '
                  +',0 AS CFOISEN_RVCP10 '
                  +',0 AS CFORV_RVCP10 '
                  +',0 AS CALCICMS_RVCP10 '


                  +',0 AS CFOTRIB_RV11 '
                  +',0  AS CFOISEN_RV11 '
                  +',0  AS CFORV_RV11 '
                  +',0 AS CALCICMS_RV11 '

                  +',0  AS CFOTRIB_CF11 '
                  +',0  AS CFOISEN_CF11 '
                  +',0  AS CFORV_CF11 '
                  +',0 AS CALCICMS_CF11 '

                  +',0  AS CFOTRIB_RVCP11 '
                  +',0  AS CFOISEN_RVCP11 '
                  +',0  AS CFORV_RVCP11 '
                  +',0 AS CALCICMS_RVCP11 '



                  +',0 AS CFOTRIB_RV12 '
                  +',0 AS CFOISEN_RV12 '
                  +',0 AS CFORV_RV12 '
                  +',0 AS CALCICMS_RV12 '

                  +',0 AS CFOTRIB_CF12 '
                  +',0 AS CFOISEN_CF12 '
                  +',0 AS CFORV_CF12 '
                  +',0 AS CALCICMS_CF12 '

                  +',0 AS CFOTRIB_RVCP12 '
                  +',0 AS CFOISEN_RVCP12 '
                  +',0 AS CFORV_RVCP12 '
                  +',0 AS CALCICMS_RVCP12 '


                  +',0 AS CFOTRIB_RV13 '
                  +',0 AS CFOISEN_RV13 '
                  +',0 AS CFORV_RV13 '
                  +',0 AS CALCICMS_RV13 '

                  +',0 AS CFOTRIB_CF13 '
                  +',0 AS CFOISEN_CF13 '
                  +',0 AS CFORV_CF13 '
                  +',0 AS CALCICMS_CF13 '

                  +',0 AS CFOTRIB_RVCP13 '
                  +',0 AS CFOISEN_RVCP13 '
                  +',0 AS CFORV_RVCP13 '
                  +',0 AS CALCICMS_RVCP13 '


                  +',0 AS CFOTRIB_RV14 '
                  +',0  AS CFOISEN_RV14 '
                  +',0  AS CFORV_RV14 '
                  +',0 AS CALCICMS_RV14 '

                  +',0  AS CFOTRIB_CF14 '
                  +',0  AS CFOISEN_CF14 '
                  +',0  AS CFORV_CF14 '
                  +',0 AS CALCICMS_CF14 '

                  +',0  AS CFOTRIB_RVCP14 '
                  +',0  AS CFOISEN_RVCP14 '
                  +',0  AS CFORV_RVCP14 '
                  +',0 AS CALCICMS_RVCP14 '

                  +',0 AS CFOTRIB_RV15 '
                  +',0 AS CFOISEN_RV15 '
                  +',0 AS CFORV_RV15 '
                  +',0 AS CALCICMS_RV15 '

                  +',0 AS CFOTRIB_CF15 '
                  +',0 AS CFOISEN_CF15 '
                  +',0 AS CFORV_CF15 '
                  +',0 AS CALCICMS_CF15 '

                  +',0 AS CFOTRIB_RVCP15 '
                  +',0 AS CFOISEN_RVCP15 '
                  +',0 AS CFORV_RVCP15 '
                  +',0 AS CALCICMS_RVCP15 '


                  +',0 AS CFOTRIB_RV16 '
                  +',0 AS CFOISEN_RV16 '
                  +',0 AS CFORV_RV16 '
                  +',0 AS CALCICMS_RV16 '

                  +',0 AS CFOTRIB_CF16 '
                  +',0 AS CFOISEN_CF16 '
                  +',0 AS CFORV_CF16 '
                  +',0 AS CALCICMS_CF16 '


                  +',0 AS CFOTRIB_RVCP16 '
                  +',0 AS CFOISEN_RVCP16 '
                  +',0 AS CFORV_RVCP16 '
                  +',0 AS CALCICMS_RVCP16 ');
      DM1.Query3.SQL.add(',0 AS CFOTRIB_RV17 '
                     +',0  AS CFOISEN_RV17 '
                     +',0  AS CFORV_RV17 '
                     +',0 AS CALCICMS_RV17 '

                     +',0  AS CFOTRIB_CF17 '
                     +',0  AS CFOISEN_CF17 '
                     +',0  AS CFORV_CF17 '
                     +',0 AS CALCICMS_CF17 '

                     +',0  AS CFOTRIB_RVCP17 '
                     +',0  AS CFOISEN_RVCP17 '
                     +',0  AS CFORV_RVCP17 '
                     +',0 AS CALCICMS_RVCP17 '



                     +',0 AS CFOTRIB_RV18 '
                     +',0 AS CFOISEN_RV18 '
                     +',0 AS CFORV_RV18 '
                     +',0 AS CALCICMS_RV18 '

                     +',0 AS CFOTRIB_CF18 '
                     +',0 AS CFOISEN_CF18 '
                     +',0 AS CFORV_CF18 '
                     +',0 AS CALCICMS_CF18 '


                     +',0 AS CFOTRIB_RVCP18 '
                     +',0 AS CFOISEN_RVCP18 '
                     +',0 AS CFORV_RVCP18 '
                     +',0 AS CALCICMS_RVCP18 '

                     +',0 AS CFOTRIB_RV19 '
                     +',0 AS CFOISEN_RV19 '
                     +',0 AS CFORV_RV19 '
                     +',0 AS CALCICMS_RV19 '

                     +',0 AS CFOTRIB_CF19 '
                     +',0 AS CFOISEN_CF19 '
                     +',0 AS CFORV_CF19 '
                     +',0 AS CALCICMS_CF19 '


                     +',0  AS CFOTRIB_RVCP19 '
                     +',0  AS CFOISEN_RVCP19 '
                     +',0  AS CFORV_RVCP19 '
                     +',0 AS CALCICMS_RVCP19 '

                     +',0 AS CFOTRIB_RV20 '
                     +',0  AS CFOISEN_RV20 '
                     +',0  AS CFORV_RV20 '
                     +',0 AS CALCICMS_RV20 '

                     +',0  AS CFOTRIB_CF20 '
                     +',0  AS CFOISEN_CF20 '
                     +',0  AS CFORV_CF20 '
                     +',0 AS CALCICMS_CF20 '

                     +',0  AS CFOTRIB_RVCP20 '
                     +',0  AS CFOISEN_RVCP20 '
                     +',0  AS CFORV_RVCP20 '
                     +',0 AS CALCICMS_RVCP20 '

                     +',0 AS CFOTRIB_RV21 '
                     +',0  AS CFOISEN_RV21 '
                     +',0  AS CFORV_RV21 '
                     +',0 AS CALCICMS_RV21 '

                     +',0  AS CFOTRIB_CF21 '
                     +',0  AS CFOISEN_CF21 '
                     +',0  AS CFORV_CF21 '
                     +',0 AS CALCICMS_CF21 '

                     +',0  AS CFOTRIB_RVCP21 '
                     +',0  AS CFOISEN_RVCP21 '
                     +',0  AS CFORV_RVCP21 '
                     +',0 AS CALCICMS_RVCP21 '


                     +',0 AS CFOTRIB_RV22 '
                     +',0  AS CFOISEN_RV22 '
                     +',0  AS CFORV_RV22 '
                     +',0 AS CALCICMS_RV22 '

                     +',0  AS CFOTRIB_CF22 '
                     +',0  AS CFOISEN_CF22 '
                     +',0  AS CFORV_CF22 '
                     +',0 AS CALCICMS_CF22 '

                     +',0  AS CFOTRIB_RVCP22 '
                     +',0  AS CFOISEN_RVCP22 '
                     +',0  AS CFORV_RVCP22 '
                     +',0 AS CALCICMS_RVCP22 '


                     +',0 AS CFOTRIB_RV23 '
                     +',0 AS CFOISEN_RV23 '
                     +',0 AS CFORV_RV23 '
                     +',0 AS CALCICMS_RV23 '

                     +',0 AS CFOTRIB_CF23 '
                     +',0 AS CFOISEN_CF23 '
                     +',0 AS CFORV_CF23 '
                     +',0 AS CALCICMS_CF23 '

                     +',0 AS CFOTRIB_RVCP23 '
                     +',0 AS CFOISEN_RVCP23 '
                     +',0 AS CFORV_RVCP23 '
                     +',0 AS CALCICMS_RVCP23 '
                     +',0 AS CFOTRIB_RV24 '
                     +',0 AS CFOISEN_RV24 '
                     +',0 AS CFORV_RV24 '
                     +',0 AS CALCICMS_RV24 '
                     +',0 AS CFOTRIB_CF24 '
                     +',0 AS CFOISEN_CF24 '
                     +',0 AS CFORV_CF24 '
                     +',0 AS CALCICMS_CF24 '
                     +',0 AS CFOTRIB_RVCP24 '
                     +',0 AS CFOISEN_RVCP24 '
                     +',0 AS CFORV_RVCP24 '
                     +',0 AS CALCICMS_RVCP24 '
                     +',0 AS CFOTRIB_RV25 '
                     +',0 AS CFOISEN_RV25 '
                     +',0 AS CFORV_RV25 '
                     +',0 AS CALCICMS_RV25 '
                     +',0 AS CFOTRIB_CF25 '
                     +',0 AS CFOISEN_CF25 '
                     +',0 AS CFORV_CF25 '
                     +',0 AS CALCICMS_CF25 '
                     +',0 AS CFOTRIB_RVCP25 '
                     +',0 AS CFOISEN_RVCP25 '
                     +',0 AS CFORV_RVCP25 '
                     +',0 AS CALCICMS_RVCP25 ');
      end;


   DM1.Query3.SQL.add(' from CADPARCFO WHERE PLOCAL=0 ');

   //DM1.Query3.SQL.SaveToFile(mpastatemp + 'sqlpar.txt');

   try
      DM1.Query3.Open;
      break;
   except
      DM1.Query3.SQL.SaveToFile(mpastatemp + 'sqlpar.txt');
      end;
   // query 4 fora do estado
   end;
for x:=1 to 2 do
   begin
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
    DM1.Query4.SQL.add('Select ');
   if x<2 then
      begin
      DM1.Query4.SQL.add(' PCFORVN  AS CFOTRIB_RV00 '
                  +',PCFORVN  AS CFOISEN_RV00 '
                  +',PCFORVR  AS CFORV_RV00 '
                  +',PCIMP_RV AS CALCICMS_RV00 '

                  +',PCFOCFN  AS CFOTRIB_CF00 '
                  +',PCFOCFN  AS CFOISEN_CF00 '
                  +',PCFOCFR  AS CFORV_CF00 '
                  +',PCIMP_CF AS CALCICMS_CF00 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP00 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP00 '
                  +',PCFORVR_CP  AS CFORV_RVCP00 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP00 '

                  +',PCFORVN  AS CFOTRIB_RV01 '
                  +',PCFORVN  AS CFOISEN_RV01 '
                  +',PCFORVR  AS CFORV_RV01 '
                  +',PCIMP_RV AS CALCICMS_RV01 '

                  +',PCFOCFN  AS CFOTRIB_CF01 '
                  +',PCFOCFN  AS CFOISEN_CF01 '
                  +',PCFOCFR  AS CFORV_CF01 '
                  +',PCIMP_CF AS CALCICMS_CF01 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP01 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP01 '
                  +',PCFORVR_CP  AS CFORV_RVCP01 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP01 '


                  +',PCFOSRN  AS CFOTRIB_RV02 '
                  +',PCFOSRN  AS CFOISEN_RV02 '
                  +',PCFOSRR  AS CFORV_RV02 '
                  +',PCIMP_SR AS CALCICMS_RV02 '

                  +',PCFOSRN  AS CFOTRIB_CF02 '
                  +',PCFOSRN  AS CFOISEN_CF02 '
                  +',PCFOSRR  AS CFORV_CF02 '
                  +',PCIMP_SR AS CALCICMS_CF02 '


                  +',PCFOSRN  AS CFOTRIB_RVCP02 '
                  +',PCFOSRN  AS CFOISEN_RVCP02 '
                  +',PCFOSRR  AS CFORV_RVCP02 '
                  +',PCIMP_SR AS CALCICMS_RVCP02 '




                  +',PCFODFN AS CFOTRIB_RV03 '
                  +',PCFODFN  AS CFOISEN_RV03 '
                  +',PCFODFR  AS CFORV_RV03 '
                  +',PCIMP_DF AS CALCICMS_RV03 '

                  +',PCFODFN  AS CFOTRIB_CF03 '
                  +',PCFODFN  AS CFOISEN_CF03 '
                  +',PCFODFR  AS CFORV_CF03 '
                  +',PCIMP_DF AS CALCICMS_CF03 '


                  +',PCFODFN  AS CFOTRIB_RVCP03 '
                  +',PCFODFN  AS CFOISEN_RVCP03 '
                  +',PCFOSRR  AS CFORV_RVCP03 '
                  +',PCIMP_DF AS CALCICMS_RVCP03 '


                  +',PCFOSRN AS CFOTRIB_RV04 '
                  +',PCFOSRN  AS CFOISEN_RV04 '
                  +',PCFOSRR  AS CFORV_RV04 '
                  +',PCIMP_SR AS CALCICMS_RV04 '

                  +',PCFOSRN  AS CFOTRIB_CF04 '
                  +',PCFOSRN  AS CFOISEN_CF04 '
                  +',PCFOSRR  AS CFORV_CF04 '
                  +',PCIMP_SR AS CALCICMS_CF04 '


                  +',PCFOSRN  AS CFOTRIB_RVCP04 '
                  +',PCFOSRN  AS CFOISEN_RVCP04 '
                  +',PCFOSRR  AS CFORV_RVCP04 '
                  +',PCIMP_SR AS CALCICMS_RVCP04 '


                  +',PCFOTRN AS CFOTRIB_RV05 '
                  +',PCFOTRN  AS CFOISEN_RV05 '
                  +',PCFOTRR  AS CFORV_RV05 '
                  +',PCIMP_TR AS CALCICMS_RV05 '

                  +',PCFOTRN  AS CFOTRIB_CF05 '
                  +',PCFOTRN  AS CFOISEN_CF05 '
                  +',PCFOTRR  AS CFORV_CF05 '
                  +',PCIMP_TR AS CALCICMS_CF05 '


                  +',PCFOTRN  AS CFOTRIB_RVCP05 '
                  +',PCFOTRN  AS CFOISEN_RVCP05 '
                  +',PCFOTRR  AS CFORV_RVCP05 '
                  +',PCIMP_TR AS CALCICMS_RVCP05 '

                  +',PCFOBEN AS CFOTRIB_RV06 '
                  +',PCFOBEN  AS CFOISEN_RV06 '
                  +',PCFOBER  AS CFORV_RV06 '
                  +',PCIMP_BE AS CALCICMS_RV06 '

                  +',PCFOBEN  AS CFOTRIB_CF06 '
                  +',PCFOBEN  AS CFOISEN_CF06 '
                  +',PCFOBER  AS CFORV_CF06 '
                  +',PCIMP_BE AS CALCICMS_CF06 '


                  +',PCFOBEN  AS CFOTRIB_RVCP06 '
                  +',PCFOBEN  AS CFOISEN_RVCP06 '
                  +',PCFOBER  AS CFORV_RVCP06 '
                  +',PCIMP_BE AS CALCICMS_RVCP06 '



                  +',PCFORVFEO AS CFOTRIB_RV07 '
                  +',PCFORVFEO  AS CFOISEN_RV07 '
                  +',PCFORVFER  AS CFORV_RV07 '
                  +',PCIMP_RVFE AS CALCICMS_RV07 '

                  +',PCFORVFEO  AS CFOTRIB_CF07 '
                  +',PCFORVFEO  AS CFOISEN_CF07 '
                  +',PCFORVFER  AS CFORV_CF07 '
                  +',PCIMP_RVFE AS CALCICMS_CF07 '


                  +',PCFORVFEO  AS CFOTRIB_RVCP07 '
                  +',PCFORVFEO  AS CFOISEN_RVCP07 '
                  +',PCFORVFER  AS CFORV_RVCP07 '
                  +',PCIMP_RVFE AS CALCICMS_RVCP07 '


                  +',PCFODCN AS CFOTRIB_RV08 '
                  +',PCFODCN  AS CFOISEN_RV08 '
                  +',PCFODCR  AS CFORV_RV08 '
                  +',PCIMP_DC AS CALCICMS_RV08 '

                  +',PCFODCN  AS CFOTRIB_CF08 '
                  +',PCFODCN  AS CFOISEN_CF08 '
                  +',PCFODCR  AS CFORV_CF08 '
                  +',PCIMP_DC AS CALCICMS_CF08 '


                  +',PCFODCN  AS CFOTRIB_RVCP08 '
                  +',PCFODCN  AS CFOISEN_RVCP08 '
                  +',PCFODCR  AS CFORV_RVCP08 '
                  +',PCIMP_DC AS CALCICMS_RVCP08 '



                  +',PCFORVN  AS CFOTRIB_RV09 '
                  +',PCFORVN  AS CFOISEN_RV09 '
                  +',PCFORVR  AS CFORV_RV09 '
                  +',PCIMP_RV AS CALCICMS_RV09 '

                  +',PCFOCFN  AS CFOTRIB_CF09 '
                  +',PCFOCFN  AS CFOISEN_CF09 '
                  +',PCFOCFR  AS CFORV_CF09 '
                  +',PCIMP_CF AS CALCICMS_CF09 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP09 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP09 '
                  +',PCFORVR_CP  AS CFORV_RVCP09 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP09 '


                  +',PCFORVN  AS CFOTRIB_RV10 '
                  +',PCFORVN  AS CFOISEN_RV10 '
                  +',PCFORVR  AS CFORV_RV10 '
                  +',PCIMP_RV AS CALCICMS_RV10 '

                  +',PCFOCFN  AS CFOTRIB_CF10 '
                  +',PCFOCFN  AS CFOISEN_CF10 '
                  +',PCFOCFR  AS CFORV_CF10 '
                  +',PCIMP_CF AS CALCICMS_CF10 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP10 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP10 '
                  +',PCFORVR_CP  AS CFORV_RVCP10 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP10 '


                  +',PCFORCON AS CFOTRIB_RV11 '
                  +',PCFORCON  AS CFOISEN_RV11 '
                  +',PCFORCOR  AS CFORV_RV11 '
                  +',PCIMP_RC AS CALCICMS_RV11 '

                  +',PCFORCON  AS CFOTRIB_CF11 '
                  +',PCFORCON  AS CFOISEN_CF11 '
                  +',PCFORCOR  AS CFORV_CF11 '
                  +',PCIMP_RC AS CALCICMS_CF11 '

                  +',PCFORCON  AS CFOTRIB_RVCP11 '
                  +',PCFORCON  AS CFOISEN_RVCP11 '
                  +',PCFORCOR  AS CFORV_RVCP11 '
                  +',PCIMP_RC AS CALCICMS_RVCP11 '



                  +',PCFODVCO AS CFOTRIB_RV12 '
                  +',PCFODVCO  AS CFOISEN_RV12 '
                  +',PCFODVCR  AS CFORV_RV12 '
                  +',PCIMP_DVC AS CALCICMS_RV12 '

                  +',PCFODVCO  AS CFOTRIB_CF12 '
                  +',PCFODVCO  AS CFOISEN_CF12 '
                  +',PCFODVCR  AS CFORV_CF12 '
                  +',PCIMP_DVC AS CALCICMS_CF12 '

                  +',PCFODVCO  AS CFOTRIB_RVCP12 '
                  +',PCFODVCO  AS CFOISEN_RVCP12 '
                  +',PCFODVCR  AS CFORV_RVCP12 '
                  +',PCIMP_DVC AS CALCICMS_RVCP12 '


                  +',PCFODVFEO AS CFOTRIB_RV13 '
                  +',PCFODVFEO  AS CFOISEN_RV13 '
                  +',PCFODVFER  AS CFORV_RV13 '
                  +',PCIMP_DVFE AS CALCICMS_RV13 '

                  +',PCFODVFEO  AS CFOTRIB_CF13 '
                  +',PCFODVFEO  AS CFOISEN_CF13 '
                  +',PCFODVFER  AS CFORV_CF13 '
                  +',PCIMP_DVFE AS CALCICMS_CF13 '

                  +',PCFODVFEO  AS CFOTRIB_RVCP13 '
                  +',PCFODVFEO  AS CFOISEN_RVCP13 '
                  +',PCFODVFER  AS CFORV_RVCP13 '
                  +',PCIMP_DVFE AS CALCICMS_RVCP13 '


                  +',PCFOVCON AS CFOTRIB_RV14 '
                  +',PCFOVCON  AS CFOISEN_RV14 '
                  +',PCFOVCOR  AS CFORV_RV14 '
                  +',PCIMP_VC AS CALCICMS_RV14 '

                  +',PCFOVCON  AS CFOTRIB_CF14 '
                  +',PCFOVCON  AS CFOISEN_CF14 '
                  +',PCFOVCOR  AS CFORV_CF14 '
                  +',PCIMP_VC AS CALCICMS_CF14 '

                  +',PCFOVCON  AS CFOTRIB_RVCP14 '
                  +',PCFOVCON  AS CFOISEN_RVCP14 '
                  +',PCFOVCOR  AS CFORV_RVCP14 '
                  +',PCIMP_VC AS CALCICMS_RVCP14 '

                  +',PCFOVFEO AS CFOTRIB_RV15 '
                  +',PCFOVFEO  AS CFOISEN_RV15 '
                  +',PCFOVFER  AS CFORV_RV15 '
                  +',PCIMP_VFE AS CALCICMS_RV15 '

                  +',PCFOVFEO  AS CFOTRIB_CF15 '
                  +',PCFOVFEO  AS CFOISEN_CF15 '
                  +',PCFOVFER  AS CFORV_CF15 '
                  +',PCIMP_VFE AS CALCICMS_CF15 '

                  +',PCFOVFEO  AS CFOTRIB_RVCP15 '
                  +',PCFOVFEO  AS CFOISEN_RVCP15 '
                  +',PCFOVFER  AS CFORV_RVCP15 '
                  +',PCIMP_VFE AS CALCICMS_RVCP15 '


                  +',PCFORVN  AS CFOTRIB_RV16 '
                  +',PCFORVN  AS CFOISEN_RV16 '
                  +',PCFORVR  AS CFORV_RV16 '
                  +',PCIMP_RV AS CALCICMS_RV16 '

                  +',PCFOCFN  AS CFOTRIB_CF16 '
                  +',PCFOCFN  AS CFOISEN_CF16 '
                  +',PCFOCFR  AS CFORV_CF16 '
                  +',PCIMP_CF AS CALCICMS_CF16 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP16 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP16 '
                  +',PCFORVR_CP  AS CFORV_RVCP16 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP16 ');
      DM1.Query4.SQL.add(',PCFODCN AS CFOTRIB_RV17 '
                     +',PCFODCN  AS CFOISEN_RV17 '
                     +',PCFODCR  AS CFORV_RV17 '
                     +',PCIMP_DC AS CALCICMS_RV17 '

                     +',PCFODCN  AS CFOTRIB_CF17 '
                     +',PCFODCN  AS CFOISEN_CF17 '
                     +',PCFODCR  AS CFORV_CF17 '
                     +',PCIMP_DC AS CALCICMS_CF17 '

                     +',PCFODCN  AS CFOTRIB_RVCP17 '
                     +',PCFODCN  AS CFOISEN_RVCP17 '
                     +',PCFODCR  AS CFORV_RVCP17 '
                     +',PCIMP_DC AS CALCICMS_RVCP17 '



                     +',PCFOTREN AS CFOTRIB_RV18 '
                     +',PCFOTREN  AS CFOISEN_RV18 '
                     +',PCFOTRER  AS CFORV_RV18 '
                     +',PCIMP_TE AS CALCICMS_RV18 '

                     +',PCFOTREN  AS CFOTRIB_CF18 '
                     +',PCFOTREN  AS CFOISEN_CF18 '
                     +',PCFOTRER  AS CFORV_CF18 '
                     +',PCIMP_TE AS CALCICMS_CF18 '


                     +',PCFOTREN  AS CFOTRIB_RVCP18 '
                     +',PCFOTREN  AS CFOISEN_RVCP18 '
                     +',PCFOTRER  AS CFORV_RVCP18 '
                     +',PCIMP_TE AS CALCICMS_RVCP18 '

                     +',PCFODMTN AS CFOTRIB_RV19 '
                     +',PCFODMTN  AS CFOISEN_RV19 '
                     +',PCFODMTR  AS CFORV_RV19 '
                     +',PCIMP_DMT AS CALCICMS_RV19 '

                     +',PCFODMTN  AS CFOTRIB_CF19 '
                     +',PCFODMTN  AS CFOISEN_CF19 '
                     +',PCFODMTR  AS CFORV_CF19 '
                     +',PCIMP_DMT AS CALCICMS_CF19 '


                     +',PCFODMTN  AS CFOTRIB_RVCP19 '
                     +',PCFODMTN  AS CFOISEN_RVCP19 '
                     +',PCFODMTR  AS CFORV_RVCP19 '
                     +',PCIMP_DMT AS CALCICMS_RVCP19 '

                     +',PCFOREIND_T AS CFOTRIB_RV20 '
                     +',PCFOREIND_T  AS CFOISEN_RV20 '
                     +',PCFOREIND_R  AS CFORV_RV20 '
                     +',PCIMP_REIND AS CALCICMS_RV20 '

                     +',PCFOREIND_T  AS CFOTRIB_CF20 '
                     +',PCFOREIND_T  AS CFOISEN_CF20 '
                     +',PCFOREIND_R  AS CFORV_CF20 '
                     +',PCIMP_REIND AS CALCICMS_CF20 '

                     +',PCFOREIND_T  AS CFOTRIB_RVCP20 '
                     +',PCFOREIND_T  AS CFOISEN_RVCP20 '
                     +',PCFOREIND_R  AS CFORV_RVCP20 '
                     +',PCIMP_REIND AS CALCICMS_RVCP20 '

                     +',PCFOBRINDE_T AS CFOTRIB_RV21 '
                     +',PCFOBRINDE_T  AS CFOISEN_RV21 '
                     +',PCFOBRINDE_R  AS CFORV_RV21 '
                     +',PCIMP_BRINDE AS CALCICMS_RV21 '

                     +',PCFOBRINDE_T  AS CFOTRIB_CF21 '
                     +',PCFOBRINDE_T  AS CFOISEN_CF21 '
                     +',PCFOBRINDE_R  AS CFORV_CF21 '
                     +',PCIMP_BRINDE AS CALCICMS_CF21 '

                     +',PCFOBRINDE_T  AS CFOTRIB_RVCP21 '
                     +',PCFOBRINDE_T  AS CFOISEN_RVCP21 '
                     +',PCFOBRINDE_R  AS CFORV_RVCP21 '
                     +',PCIMP_BRINDE AS CALCICMS_RVCP21 '


                     +',PCFOAMOSTRA_T AS CFOTRIB_RV22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_RV22 '
                     +',PCFOAMOSTRA_R  AS CFORV_RV22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_RV22 '

                     +',PCFOAMOSTRA_T  AS CFOTRIB_CF22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_CF22 '
                     +',PCFOAMOSTRA_R  AS CFORV_CF22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_CF22 '

                     +',PCFOAMOSTRA_T  AS CFOTRIB_RVCP22 '
                     +',PCFOAMOSTRA_T  AS CFOISEN_RVCP22 '
                     +',PCFOAMOSTRA_R  AS CFORV_RVCP22 '
                     +',PCIMP_AMOSTRA AS CALCICMS_RVCP22 '


                     +',PCFODEMO_T AS CFOTRIB_RV23 '
                     +',PCFODEMO_T  AS CFOISEN_RV23 '
                     +',PCFODEMO_R  AS CFORV_RV23 '
                     +',PCIMP_DEMO AS CALCICMS_RV23 '

                     +',PCFODEMO_T  AS CFOTRIB_CF23 '
                     +',PCFODEMO_T  AS CFOISEN_CF23 '
                     +',PCFODEMO_R  AS CFORV_CF23 '
                     +',PCIMP_DEMO AS CALCICMS_CF23 '

                     +',PCFODEMO_T  AS CFOTRIB_RVCP23 '
                     +',PCFODEMO_T  AS CFOISEN_RVCP23 '
                     +',PCFODEMO_R  AS CFORV_RVCP23 '
                     +',PCIMP_DEMO AS CALCICMS_RVCP23 '



                     +',PCFOCONS_T AS CFOTRIB_RV24 '
                     +',PCFOCONS_T  AS CFOISEN_RV24 '
                     +',PCFOCONS_R  AS CFORV_RV24 '
                     +',PCIMP_CONS AS CALCICMS_RV24 '

                     +',PCFOCONS_T  AS CFOTRIB_CF24 '
                     +',PCFOCONS_T  AS CFOISEN_CF24 '
                     +',PCFOCONS_R  AS CFORV_CF24 '
                     +',PCIMP_CONS AS CALCICMS_CF24 '

                     +',PCFOCONS_T  AS CFOTRIB_RVCP24 '
                     +',PCFOCONS_T  AS CFOISEN_RVCP24 '
                     +',PCFOCONS_R  AS CFORV_RVCP24 '
                     +',PCIMP_CONS AS CALCICMS_RVCP24 '



                     +',PCFOOUTSAI_T AS CFOTRIB_RV25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_RV25 '
                     +',PCFOOUTSAI_R  AS CFORV_RV25 '
                     +',PCIMP_OUTSAI AS CALCICMS_RV25 '

                     +',PCFOOUTSAI_T  AS CFOTRIB_CF25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_CF25 '
                     +',PCFOOUTSAI_R  AS CFORV_CF25 '
                     +',PCIMP_OUTSAI AS CALCICMS_CF25 '

                     +',PCFOOUTSAI_T  AS CFOTRIB_RVCP25 '
                     +',PCFOOUTSAI_T  AS CFOISEN_RVCP25 '
                     +',PCFOOUTSAI_R  AS CFORV_RVCP25 '
                     +',PCIMP_OUTSAI AS CALCICMS_RVCP25 ');
      end
   else
      begin
      DM1.Query4.SQL.add(' 0 AS CFOTRIB_RV00 '
                  +',0 AS CFOISEN_RV00 '
                  +',0 AS CFORV_RV00 '
                  +',0 AS CALCICMS_RV00 '

                  +',0 AS CFOTRIB_CF00 '
                  +',0 AS CFOISEN_CF00 '
                  +',0 AS CFORV_CF00 '
                  +',0 AS CALCICMS_CF00 '


                  +',0 AS CFOTRIB_RVCP00 '
                  +',0 AS CFOISEN_RVCP00 '
                  +',0 AS CFORV_RVCP00 '
                  +',0 AS CALCICMS_RVCP00 '

                  +',0 AS CFOTRIB_RV01 '
                  +',0 AS CFOISEN_RV01 '
                  +',0 AS CFORV_RV01 '
                  +',0 AS CALCICMS_RV01 '

                  +',0 AS CFOTRIB_CF01 '
                  +',0 AS CFOISEN_CF01 '
                  +',0 AS CFORV_CF01 '
                  +',0 AS CALCICMS_CF01 '


                  +',0 AS CFOTRIB_RVCP01 '
                  +',0 AS CFOISEN_RVCP01 '
                  +',0 AS CFORV_RVCP01 '
                  +',0 AS CALCICMS_RVCP01 '


                  +',0 AS CFOTRIB_RV02 '
                  +',0 AS CFOISEN_RV02 '
                  +',0 AS CFORV_RV02 '
                  +',0 AS CALCICMS_RV02 '

                  +',0 AS CFOTRIB_CF02 '
                  +',0 AS CFOISEN_CF02 '
                  +',0 AS CFORV_CF02 '
                  +',0 AS CALCICMS_CF02 '


                  +',0 AS CFOTRIB_RVCP02 '
                  +',0 AS CFOISEN_RVCP02 '
                  +',0 AS CFORV_RVCP02 '
                  +',0 AS CALCICMS_RVCP02 '




                  +',0 AS CFOTRIB_RV03 '
                  +',0 AS CFOISEN_RV03 '
                  +',0 AS CFORV_RV03 '
                  +',0 AS CALCICMS_RV03 '

                  +',0 AS CFOTRIB_CF03 '
                  +',0 AS CFOISEN_CF03 '
                  +',0 AS CFORV_CF03 '
                  +',0 AS CALCICMS_CF03 '


                  +',0 AS CFOTRIB_RVCP03 '
                  +',0 AS CFOISEN_RVCP03 '
                  +',0 AS CFORV_RVCP03 '
                  +',0 AS CALCICMS_RVCP03 '


                  +',0 AS CFOTRIB_RV04 '
                  +',0 AS CFOISEN_RV04 '
                  +',0 AS CFORV_RV04 '
                  +',0 AS CALCICMS_RV04 '

                  +',0 AS CFOTRIB_CF04 '
                  +',0 AS CFOISEN_CF04 '
                  +',0 AS CFORV_CF04 '
                  +',0 AS CALCICMS_CF04 '


                  +',0 AS CFOTRIB_RVCP04 '
                  +',0 AS CFOISEN_RVCP04 '
                  +',0 AS CFORV_RVCP04 '
                  +',0 AS CALCICMS_RVCP04 '


                  +',0 AS CFOTRIB_RV05 '
                  +',0 AS CFOISEN_RV05 '
                  +',0 AS CFORV_RV05 '
                  +',0 AS CALCICMS_RV05 '

                  +',0 AS CFOTRIB_CF05 '
                  +',0 AS CFOISEN_CF05 '
                  +',0 AS CFORV_CF05 '
                  +',0 AS CALCICMS_CF05 '


                  +',0 AS CFOTRIB_RVCP05 '
                  +',0 AS CFOISEN_RVCP05 '
                  +',0 AS CFORV_RVCP05 '
                  +',0 AS CALCICMS_RVCP05 '

                  +',0 AS CFOTRIB_RV06 '
                  +',0 AS CFOISEN_RV06 '
                  +',0 AS CFORV_RV06 '
                  +',0 AS CALCICMS_RV06 '

                  +',0 AS CFOTRIB_CF06 '
                  +',0 AS CFOISEN_CF06 '
                  +',0 AS CFORV_CF06 '
                  +',0 AS CALCICMS_CF06 '


                  +',0 AS CFOTRIB_RVCP06 '
                  +',0 AS CFOISEN_RVCP06 '
                  +',0 AS CFORV_RVCP06 '
                  +',0 AS CALCICMS_RVCP06 '



                  +',0 AS CFOTRIB_RV07 '
                  +',0 AS CFOISEN_RV07 '
                  +',0 AS CFORV_RV07 '
                  +',0 AS CALCICMS_RV07 '

                  +',0 AS CFOTRIB_CF07 '
                  +',0 AS CFOISEN_CF07 '
                  +',0 AS CFORV_CF07 '
                  +',0 AS CALCICMS_CF07 '


                  +',0 AS CFOTRIB_RVCP07 '
                  +',0 AS CFOISEN_RVCP07 '
                  +',0 AS CFORV_RVCP07 '
                  +',0 AS CALCICMS_RVCP07 '


                  +',0 AS CFOTRIB_RV08 '
                  +',0 AS CFOISEN_RV08 '
                  +',0 AS CFORV_RV08 '
                  +',0 AS CALCICMS_RV08 '

                  +',0 AS CFOTRIB_CF08 '
                  +',0 AS CFOISEN_CF08 '
                  +',0 AS CFORV_CF08 '
                  +',0 AS CALCICMS_CF08 '


                  +',0 AS CFOTRIB_RVCP08 '
                  +',0 AS CFOISEN_RVCP08 '
                  +',0 AS CFORV_RVCP08 '
                  +',0 AS CALCICMS_RVCP08 '
                  +',0 AS CFOTRIB_RV09 '
                  +',0 AS CFOISEN_RV09 '
                  +',0 AS CFORV_RV09 '
                  +',0 AS CALCICMS_RV09 '

                  +',0 AS CFOTRIB_CF09 '
                  +',0 AS CFOISEN_CF09 '
                  +',0 AS CFORV_CF09 '
                  +',0 AS CALCICMS_CF09 '


                  +',0 AS CFOTRIB_RVCP09 '
                  +',0 AS CFOISEN_RVCP09 '
                  +',0 AS CFORV_RVCP09 '
                  +',0 AS CALCICMS_RVCP09 '


                  +',0 AS CFOTRIB_RV10 '
                  +',0 AS CFOISEN_RV10 '
                  +',0 AS CFORV_RV10 '
                  +',0 AS CALCICMS_RV10 '

                  +',0 AS CFOTRIB_CF10 '
                  +',0 AS CFOISEN_CF10 '
                  +',0 AS CFORV_CF10 '
                  +',0 AS CALCICMS_CF10 '


                  +',0 AS CFOTRIB_RVCP10 '
                  +',0 AS CFOISEN_RVCP10 '
                  +',0 AS CFORV_RVCP10 '
                  +',0 AS CALCICMS_RVCP10 '


                  +',0 AS CFOTRIB_RV11 '
                  +',0  AS CFOISEN_RV11 '
                  +',0  AS CFORV_RV11 '
                  +',0 AS CALCICMS_RV11 '

                  +',0  AS CFOTRIB_CF11 '
                  +',0  AS CFOISEN_CF11 '
                  +',0  AS CFORV_CF11 '
                  +',0 AS CALCICMS_CF11 '

                  +',0  AS CFOTRIB_RVCP11 '
                  +',0  AS CFOISEN_RVCP11 '
                  +',0  AS CFORV_RVCP11 '
                  +',0 AS CALCICMS_RVCP11 '



                  +',0 AS CFOTRIB_RV12 '
                  +',0 AS CFOISEN_RV12 '
                  +',0 AS CFORV_RV12 '
                  +',0 AS CALCICMS_RV12 '

                  +',0 AS CFOTRIB_CF12 '
                  +',0 AS CFOISEN_CF12 '
                  +',0 AS CFORV_CF12 '
                  +',0 AS CALCICMS_CF12 '

                  +',0 AS CFOTRIB_RVCP12 '
                  +',0 AS CFOISEN_RVCP12 '
                  +',0 AS CFORV_RVCP12 '
                  +',0 AS CALCICMS_RVCP12 '


                  +',0 AS CFOTRIB_RV13 '
                  +',0 AS CFOISEN_RV13 '
                  +',0 AS CFORV_RV13 '
                  +',0 AS CALCICMS_RV13 '

                  +',0 AS CFOTRIB_CF13 '
                  +',0 AS CFOISEN_CF13 '
                  +',0 AS CFORV_CF13 '
                  +',0 AS CALCICMS_CF13 '

                  +',0 AS CFOTRIB_RVCP13 '
                  +',0 AS CFOISEN_RVCP13 '
                  +',0 AS CFORV_RVCP13 '
                  +',0 AS CALCICMS_RVCP13 '


                  +',0 AS CFOTRIB_RV14 '
                  +',0  AS CFOISEN_RV14 '
                  +',0  AS CFORV_RV14 '
                  +',0 AS CALCICMS_RV14 '

                  +',0  AS CFOTRIB_CF14 '
                  +',0  AS CFOISEN_CF14 '
                  +',0  AS CFORV_CF14 '
                  +',0 AS CALCICMS_CF14 '

                  +',0  AS CFOTRIB_RVCP14 '
                  +',0  AS CFOISEN_RVCP14 '
                  +',0  AS CFORV_RVCP14 '
                  +',0 AS CALCICMS_RVCP14 '

                  +',0 AS CFOTRIB_RV15 '
                  +',0 AS CFOISEN_RV15 '
                  +',0 AS CFORV_RV15 '
                  +',0 AS CALCICMS_RV15 '

                  +',0 AS CFOTRIB_CF15 '
                  +',0 AS CFOISEN_CF15 '
                  +',0 AS CFORV_CF15 '
                  +',0 AS CALCICMS_CF15 '

                  +',0 AS CFOTRIB_RVCP15 '
                  +',0 AS CFOISEN_RVCP15 '
                  +',0 AS CFORV_RVCP15 '
                  +',0 AS CALCICMS_RVCP15 '


                  +',0 AS CFOTRIB_RV16 '
                  +',0 AS CFOISEN_RV16 '
                  +',0 AS CFORV_RV16 '
                  +',0 AS CALCICMS_RV16 '

                  +',0 AS CFOTRIB_CF16 '
                  +',0 AS CFOISEN_CF16 '
                  +',0 AS CFORV_CF16 '
                  +',0 AS CALCICMS_CF16 '


                  +',0 AS CFOTRIB_RVCP16 '
                  +',0 AS CFOISEN_RVCP16 '
                  +',0 AS CFORV_RVCP16 '
                  +',0 AS CALCICMS_RVCP16 ');

      DM1.Query4.SQL.add(',0 AS CFOTRIB_RV17 '
                     +',0  AS CFOISEN_RV17 '
                     +',0  AS CFORV_RV17 '
                     +',0 AS CALCICMS_RV17 '

                     +',0  AS CFOTRIB_CF17 '
                     +',0  AS CFOISEN_CF17 '
                     +',0  AS CFORV_CF17 '
                     +',0 AS CALCICMS_CF17 '

                     +',0  AS CFOTRIB_RVCP17 '
                     +',0  AS CFOISEN_RVCP17 '
                     +',0  AS CFORV_RVCP17 '
                     +',0 AS CALCICMS_RVCP17 '



                     +',0 AS CFOTRIB_RV18 '
                     +',0 AS CFOISEN_RV18 '
                     +',0 AS CFORV_RV18 '
                     +',0 AS CALCICMS_RV18 '

                     +',0 AS CFOTRIB_CF18 '
                     +',0 AS CFOISEN_CF18 '
                     +',0 AS CFORV_CF18 '
                     +',0 AS CALCICMS_CF18 '


                     +',0 AS CFOTRIB_RVCP18 '
                     +',0 AS CFOISEN_RVCP18 '
                     +',0 AS CFORV_RVCP18 '
                     +',0 AS CALCICMS_RVCP18 '

                     +',0 AS CFOTRIB_RV19 '
                     +',0 AS CFOISEN_RV19 '
                     +',0 AS CFORV_RV19 '
                     +',0 AS CALCICMS_RV19 '

                     +',0 AS CFOTRIB_CF19 '
                     +',0 AS CFOISEN_CF19 '
                     +',0 AS CFORV_CF19 '
                     +',0 AS CALCICMS_CF19 '


                     +',0  AS CFOTRIB_RVCP19 '
                     +',0  AS CFOISEN_RVCP19 '
                     +',0  AS CFORV_RVCP19 '
                     +',0 AS CALCICMS_RVCP19 '

                     +',0 AS CFOTRIB_RV20 '
                     +',0  AS CFOISEN_RV20 '
                     +',0  AS CFORV_RV20 '
                     +',0 AS CALCICMS_RV20 '

                     +',0  AS CFOTRIB_CF20 '
                     +',0  AS CFOISEN_CF20 '
                     +',0  AS CFORV_CF20 '
                     +',0 AS CALCICMS_CF20 '

                     +',0  AS CFOTRIB_RVCP20 '
                     +',0  AS CFOISEN_RVCP20 '
                     +',0  AS CFORV_RVCP20 '
                     +',0 AS CALCICMS_RVCP20 '

                     +',0 AS CFOTRIB_RV21 '
                     +',0  AS CFOISEN_RV21 '
                     +',0  AS CFORV_RV21 '
                     +',0 AS CALCICMS_RV21 '

                     +',0  AS CFOTRIB_CF21 '
                     +',0  AS CFOISEN_CF21 '
                     +',0  AS CFORV_CF21 '
                     +',0 AS CALCICMS_CF21 '

                     +',0  AS CFOTRIB_RVCP21 '
                     +',0  AS CFOISEN_RVCP21 '
                     +',0  AS CFORV_RVCP21 '
                     +',0 AS CALCICMS_RVCP21 '


                     +',0 AS CFOTRIB_RV22 '
                     +',0  AS CFOISEN_RV22 '
                     +',0  AS CFORV_RV22 '
                     +',0 AS CALCICMS_RV22 '

                     +',0  AS CFOTRIB_CF22 '
                     +',0  AS CFOISEN_CF22 '
                     +',0  AS CFORV_CF22 '
                     +',0 AS CALCICMS_CF22 '

                     +',0  AS CFOTRIB_RVCP22 '
                     +',0  AS CFOISEN_RVCP22 '
                     +',0  AS CFORV_RVCP22 '
                     +',0 AS CALCICMS_RVCP22 '


                     +',0 AS CFOTRIB_RV23 '
                     +',0 AS CFOISEN_RV23 '
                     +',0 AS CFORV_RV23 '
                     +',0 AS CALCICMS_RV23 '

                     +',0 AS CFOTRIB_CF23 '
                     +',0 AS CFOISEN_CF23 '
                     +',0 AS CFORV_CF23 '
                     +',0 AS CALCICMS_CF23 '

                     +',0 AS CFOTRIB_RVCP23 '
                     +',0 AS CFOISEN_RVCP23 '
                     +',0 AS CFORV_RVCP23 '
                     +',0 AS CALCICMS_RVCP23 '
                     +',0 AS CFOTRIB_RV24 '
                     +',0 AS CFOISEN_RV24 '
                     +',0 AS CFORV_RV24 '
                     +',0 AS CALCICMS_RV24 '
                     +',0 AS CFOTRIB_CF24 '
                     +',0 AS CFOISEN_CF24 '
                     +',0 AS CFORV_CF24 '
                     +',0 AS CALCICMS_CF24 '
                     +',0 AS CFOTRIB_RVCP24 '
                     +',0 AS CFOISEN_RVCP24 '
                     +',0 AS CFORV_RVCP24 '
                     +',0 AS CALCICMS_RVCP24 '
                     +',0 AS CFOTRIB_RV25 '
                     +',0 AS CFOISEN_RV25 '
                     +',0 AS CFORV_RV25 '
                     +',0 AS CALCICMS_RV25 '
                     +',0 AS CFOTRIB_CF25 '
                     +',0 AS CFOISEN_CF25 '
                     +',0 AS CFORV_CF25 '
                     +',0 AS CALCICMS_CF25 '
                     +',0 AS CFOTRIB_RVCP25 '
                     +',0 AS CFOISEN_RVCP25 '
                     +',0 AS CFORV_RVCP25 '
                     +',0 AS CALCICMS_RVCP25 ');
      end;
   DM1.Query4.SQL.ADD(' from CADPARCFO WHERE PLOCAL=1 ');
   try
      DM1.Query4.Open;
      break
   except
      DM1.Query4.SQL.SaveToFile(mpastatemp + 'sqlpar.txt');
      end;
   end;


for x:=1 to high(tab_tped)-1 do
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select count(*) as QTD from CADTIPPED '
                     +' where TPCODIGO=0'+IntToStr(x));
   DM1.Query1.Open;
   if DM1.Query1.FieldByName('QTD').AsInteger>0 then
      Continue;

   DM1.Query2.ParambyName('TPCODIGO').AsFloat                  :=x;
   DM1.Query2.ParambyName('TPNOME').AsString                   :=tab_tped[x];
   if x=0 then
      DM1.Query2.ParambyName('TPGERDUP').AsFloat               :=1
   else
      DM1.Query2.ParambyName('TPGERDUP').AsFloat               :=DM1.Tb_Parger.fieldbyName('PDUPTIP'+IntToStr(x)).AsFloat;
   DM1.Query2.ParambyName('TPATIVO').AsFloat                   :=DM1.Tb_Parger.fieldbyName('PDESTTIP'+IntToStr(x)).AsFloat;

   DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_ST').AsFloat       :=DM1.Query3.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_TRIB').AsFloat     :=DM1.Query3.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_ISENTO').AsFloat   :=DM1.Query3.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_RV_DENTRO').AsFloat       :=DM1.Query3.fieldbyname('CALCICMS_RV'+FormatFloat('00',x)).AsFloat;


   DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_ST').AsFloat     :=DM1.Query3.fieldbyname('CFORV_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_TRIB').AsFloat   :=DM1.Query3.fieldbyname('CFOTRIB_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_ISENTO').AsFloat :=DM1.Query3.fieldbyname('CFOISEN_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_RVCP_DENTRO').AsFloat     :=DM1.Query3.fieldbyname('CALCICMS_RVCP'+FormatFloat('00',x)).AsFloat;

   DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_ST').AsFloat       :=DM1.Query3.fieldbyname('CFORV_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_TRIB').AsFloat     :=DM1.Query3.fieldbyname('CFOTRIB_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_ISENTO').AsFloat   :=DM1.Query3.fieldbyname('CFOISEN_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_CF_DENTRO').AsFloat       :=DM1.Query3.fieldbyname('CALCICMS_CF'+FormatFloat('00',x)).AsFloat;

   DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_ST').AsFloat    :=DM1.Query3.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_TRIB').AsFloat  :=DM1.Query3.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_ISENTO').AsFloat:=DM1.Query3.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_RV_ST').AsFloat         :=DM1.Query4.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_RV_TRIB').AsFloat       :=DM1.Query4.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_RV_ISENTO').AsFloat     :=DM1.Query4.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_RV_FORA').AsFloat         :=DM1.Query4.fieldbyname('CALCICMS_RV'+FormatFloat('00',x)).AsFloat;

   DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_ST').AsFloat       :=DM1.Query4.fieldbyname('CFORV_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_TRIB').AsFloat     :=DM1.Query4.fieldbyname('CFOTRIB_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_ISENTO').AsFloat   :=DM1.Query4.fieldbyname('CFOISEN_RVCP'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_RVCP_FORA').AsFloat       :=DM1.Query4.fieldbyname('CALCICMS_RVCP'+FormatFloat('00',x)).AsFloat;

   DM1.Query2.ParambyName('TPFORA_CFOP_CF_ST').AsFloat         :=DM1.Query4.fieldbyname('CFORV_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_CF_TRIB').AsFloat       :=DM1.Query4.fieldbyname('CFOTRIB_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_CFOP_CF_ISENTO').AsFloat     :=DM1.Query4.fieldbyname('CFOISEN_CF'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPCALCIMP_CF_FORA').AsFloat         :=DM1.Query4.fieldbyname('CALCICMS_CF'+FormatFloat('00',x)).AsFloat;

   DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_ST').AsFloat      :=DM1.Query4.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_TRIB').AsFloat    :=DM1.Query4.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
   DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_ISENTO').AsFloat  :=DM1.Query4.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;


   if (tab_tped_mov[x,01][01])='S' then
      DM1.Query2.ParambyName('TPENTRADA_NORMAL').AsFloat          :=1
   else
      DM1.Query2.ParambyName('TPENTRADA_NORMAL').AsFloat          :=0;
   if (tab_tped_mov[x,01][02])='S' then
      DM1.Query2.ParambyName('TPENTRADA_CONSIGNADO').AsFloat      :=1
   else
      DM1.Query2.ParambyName('TPENTRADA_CONSIGNADO').AsFloat      :=0;
   if (tab_tped_mov[x,01][03])='S' then
      DM1.Query2.ParambyName('TPENTRADA_REM_VENDA').AsFloat       :=1
   else
      DM1.Query2.ParambyName('TPENTRADA_REM_VENDA').AsFloat       :=0;
   if (tab_tped_mov[x,01][04])='S' then
      DM1.Query2.ParambyName('TPENTRADA_EST_TERC').AsFloat        :=1
   else
      DM1.Query2.ParambyName('TPENTRADA_EST_TERC').AsFloat        :=0;
   if (tab_tped_mov[x,01][05])='S' then
      DM1.Query2.ParambyName('TPSAIDA_NORMAL').AsFloat            :=1
   else
      DM1.Query2.ParambyName('TPSAIDA_NORMAL').AsFloat            :=0;
   if (tab_tped_mov[x,01][06])='S' then
      DM1.Query2.ParambyName('TPSAIDA_CONSIGNADO').AsFloat        :=1
   else
      DM1.Query2.ParambyName('TPSAIDA_CONSIGNADO').AsFloat        :=0;
   if (tab_tped_mov[x,01][07])='S' then
      DM1.Query2.ParambyName('TPSAIDA_REM_VENDA').AsFloat         :=1
   else
      DM1.Query2.ParambyName('TPSAIDA_REM_VENDA').AsFloat         :=0;
   if (tab_tped_mov[x,01][08])='S' then
      DM1.Query2.ParambyName('TPSAIDA_EST_TERC').AsFloat          :=1
   else
      DM1.Query2.ParambyName('TPSAIDA_EST_TERC').AsFloat          :=0;
   DM1.Query2.ParambyName('TPCODUSR_INC').AsFloat              :=1111;
   DM1.Query2.ParambyName('TPDATHOR_INC').AsDateTime           :=now;
   DM1.Query2.ParambyName('TPCODUSR_ALT').AsFloat              :=1111;
   DM1.Query2.ParambyName('TPDATHOR_ALT').AsDateTime           :=now;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,1184,'func','CADPFP');
      exit;
      end;
   end;
// PREENCHER O CADUF_TPPED

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.add('Select '
                  +'  PUF '
                  +',PNOM '
                  +',PCODEMP '
                  +', PCFORVN  AS CFOTRIB_RV00 '
                  +',PCFORVN  AS CFOISEN_RV00 '
                  +',PCFORVR  AS CFORV_RV00 '
                  +',PCIMP_RV AS CALCICMS_RV00 '

                  +',PCFOCFN  AS CFOTRIB_CF00 '
                  +',PCFOCFN  AS CFOISEN_CF00 '
                  +',PCFOCFR  AS CFORV_CF00 '
                  +',PCIMP_CF AS CALCICMS_CF00 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP00 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP00 '
                  +',PCFORVR_CP  AS CFORV_RVCP00 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP00 '

                  +',PCFORVN  AS CFOTRIB_RV01 '
                  +',PCFORVN  AS CFOISEN_RV01 '
                  +',PCFORVR  AS CFORV_RV01 '
                  +',PCIMP_RV AS CALCICMS_RV01 '

                  +',PCFOCFN  AS CFOTRIB_CF01 '
                  +',PCFOCFN  AS CFOISEN_CF01 '
                  +',PCFOCFR  AS CFORV_CF01 '
                  +',PCIMP_CF AS CALCICMS_CF01 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP01 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP01 '
                  +',PCFORVR_CP  AS CFORV_RVCP01 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP01 '


                  +',PCFOSRN  AS CFOTRIB_RV02 '
                  +',PCFOSRN  AS CFOISEN_RV02 '
                  +',PCFOSRR  AS CFORV_RV02 '
                  +',PCIMP_SR AS CALCICMS_RV02 '

                  +',PCFOSRN  AS CFOTRIB_CF02 '
                  +',PCFOSRN  AS CFOISEN_CF02 '
                  +',PCFOSRR  AS CFORV_CF02 '
                  +',PCIMP_SR AS CALCICMS_CF02 '


                  +',PCFOSRN  AS CFOTRIB_RVCP02 '
                  +',PCFOSRN  AS CFOISEN_RVCP02 '
                  +',PCFOSRR  AS CFORV_RVCP02 '
                  +',PCIMP_SR AS CALCICMS_RVCP02 '




                  +',PCFODFN AS CFOTRIB_RV03 '
                  +',PCFODFN  AS CFOISEN_RV03 '
                  +',PCFODFR  AS CFORV_RV03 '
                  +',PCIMP_DF AS CALCICMS_RV03 '

                  +',PCFODFN  AS CFOTRIB_CF03 '
                  +',PCFODFN  AS CFOISEN_CF03 '
                  +',PCFODFR  AS CFORV_CF03 '
                  +',PCIMP_DF AS CALCICMS_CF03 '


                  +',PCFODFN  AS CFOTRIB_RVCP03 '
                  +',PCFODFN  AS CFOISEN_RVCP03 '
                  +',PCFOSRR  AS CFORV_RVCP03 '
                  +',PCIMP_DF AS CALCICMS_RVCP03 '


                  +',PCFOSRN AS CFOTRIB_RV04 '
                  +',PCFOSRN  AS CFOISEN_RV04 '
                  +',PCFOSRR  AS CFORV_RV04 '
                  +',PCIMP_SR AS CALCICMS_RV04 '

                  +',PCFOSRN  AS CFOTRIB_CF04 '
                  +',PCFOSRN  AS CFOISEN_CF04 '
                  +',PCFOSRR  AS CFORV_CF04 '
                  +',PCIMP_SR AS CALCICMS_CF04 '


                  +',PCFOSRN  AS CFOTRIB_RVCP04 '
                  +',PCFOSRN  AS CFOISEN_RVCP04 '
                  +',PCFOSRR  AS CFORV_RVCP04 '
                  +',PCIMP_SR AS CALCICMS_RVCP04 '


                  +',PCFOTRN AS CFOTRIB_RV05 '
                  +',PCFOTRN  AS CFOISEN_RV05 '
                  +',PCFOTRR  AS CFORV_RV05 '
                  +',PCIMP_TR AS CALCICMS_RV05 '

                  +',PCFOTRN  AS CFOTRIB_CF05 '
                  +',PCFOTRN  AS CFOISEN_CF05 '
                  +',PCFOTRR  AS CFORV_CF05 '
                  +',PCIMP_TR AS CALCICMS_CF05 '


                  +',PCFOTRN  AS CFOTRIB_RVCP05 '
                  +',PCFOTRN  AS CFOISEN_RVCP05 '
                  +',PCFOTRR  AS CFORV_RVCP05 '
                  +',PCIMP_TR AS CALCICMS_RVCP05 '

                  +',PCFOBEN AS CFOTRIB_RV06 '
                  +',PCFOBEN  AS CFOISEN_RV06 '
                  +',PCFOBER  AS CFORV_RV06 '
                  +',PCIMP_BE AS CALCICMS_RV06 '

                  +',PCFOBEN  AS CFOTRIB_CF06 '
                  +',PCFOBEN  AS CFOISEN_CF06 '
                  +',PCFOBER  AS CFORV_CF06 '
                  +',PCIMP_BE AS CALCICMS_CF06 '


                  +',PCFOBEN  AS CFOTRIB_RVCP06 '
                  +',PCFOBEN  AS CFOISEN_RVCP06 '
                  +',PCFOBER  AS CFORV_RVCP06 '
                  +',PCIMP_BE AS CALCICMS_RVCP06 '



                  +',PCFORVFEO AS CFOTRIB_RV07 '
                  +',PCFORVFEO  AS CFOISEN_RV07 '
                  +',PCFORVFER  AS CFORV_RV07 '
                  +',PCIMP_RVFE AS CALCICMS_RV07 '

                  +',PCFORVFEO  AS CFOTRIB_CF07 '
                  +',PCFORVFEO  AS CFOISEN_CF07 '
                  +',PCFORVFER  AS CFORV_CF07 '
                  +',PCIMP_RVFE AS CALCICMS_CF07 '


                  +',PCFORVFEO  AS CFOTRIB_RVCP07 '
                  +',PCFORVFEO  AS CFOISEN_RVCP07 '
                  +',PCFORVFER  AS CFORV_RVCP07 '
                  +',PCIMP_RVFE AS CALCICMS_RVCP07 '


                  +',PCFODCN AS CFOTRIB_RV08 '
                  +',PCFODCN  AS CFOISEN_RV08 '
                  +',PCFODCR  AS CFORV_RV08 '
                  +',PCIMP_DC AS CALCICMS_RV08 '

                  +',PCFODCN  AS CFOTRIB_CF08 '
                  +',PCFODCN  AS CFOISEN_CF08 '
                  +',PCFODCR  AS CFORV_CF08 '
                  +',PCIMP_DC AS CALCICMS_CF08 '


                  +',PCFODCN  AS CFOTRIB_RVCP08 '
                  +',PCFODCN  AS CFOISEN_RVCP08 '
                  +',PCFODCR  AS CFORV_RVCP08 '
                  +',PCIMP_DC AS CALCICMS_RVCP08 '



                  +',PCFORVN  AS CFOTRIB_RV09 '
                  +',PCFORVN  AS CFOISEN_RV09 '
                  +',PCFORVR  AS CFORV_RV09 '
                  +',PCIMP_RV AS CALCICMS_RV09 '

                  +',PCFOCFN  AS CFOTRIB_CF09 '
                  +',PCFOCFN  AS CFOISEN_CF09 '
                  +',PCFOCFR  AS CFORV_CF09 '
                  +',PCIMP_CF AS CALCICMS_CF09 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP09 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP09 '
                  +',PCFORVR_CP  AS CFORV_RVCP09 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP09 '


                  +',PCFORVN  AS CFOTRIB_RV10 '
                  +',PCFORVN  AS CFOISEN_RV10 '
                  +',PCFORVR  AS CFORV_RV10 '
                  +',PCIMP_RV AS CALCICMS_RV10 '

                  +',PCFOCFN  AS CFOTRIB_CF10 '
                  +',PCFOCFN  AS CFOISEN_CF10 '
                  +',PCFOCFR  AS CFORV_CF10 '
                  +',PCIMP_CF AS CALCICMS_CF10 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP10 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP10 '
                  +',PCFORVR_CP  AS CFORV_RVCP10 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP10 '


                  +',PCFORCON AS CFOTRIB_RV11 '
                  +',PCFORCON  AS CFOISEN_RV11 '
                  +',PCFORCOR  AS CFORV_RV11 '
                  +',PCIMP_RC AS CALCICMS_RV11 '

                  +',PCFORCON  AS CFOTRIB_CF11 '
                  +',PCFORCON  AS CFOISEN_CF11 '
                  +',PCFORCOR  AS CFORV_CF11 '
                  +',PCIMP_RC AS CALCICMS_CF11 '

                  +',PCFORCON  AS CFOTRIB_RVCP11 '
                  +',PCFORCON  AS CFOISEN_RVCP11 '
                  +',PCFORCOR  AS CFORV_RVCP11 '
                  +',PCIMP_RC AS CALCICMS_RVCP11 '



                  +',PCFODVCO AS CFOTRIB_RV12 '
                  +',PCFODVCO  AS CFOISEN_RV12 '
                  +',PCFODVCR  AS CFORV_RV12 '
                  +',PCIMP_DVC AS CALCICMS_RV12 '

                  +',PCFODVCO  AS CFOTRIB_CF12 '
                  +',PCFODVCO  AS CFOISEN_CF12 '
                  +',PCFODVCR  AS CFORV_CF12 '
                  +',PCIMP_DVC AS CALCICMS_CF12 '

                  +',PCFODVCO  AS CFOTRIB_RVCP12 '
                  +',PCFODVCO  AS CFOISEN_RVCP12 '
                  +',PCFODVCR  AS CFORV_RVCP12 '
                  +',PCIMP_DVC AS CALCICMS_RVCP12 '


                  +',PCFODVFEO AS CFOTRIB_RV13 '
                  +',PCFODVFEO  AS CFOISEN_RV13 '
                  +',PCFODVFER  AS CFORV_RV13 '
                  +',PCIMP_DVFE AS CALCICMS_RV13 '

                  +',PCFODVFEO  AS CFOTRIB_CF13 '
                  +',PCFODVFEO  AS CFOISEN_CF13 '
                  +',PCFODVFER  AS CFORV_CF13 '
                  +',PCIMP_DVFE AS CALCICMS_CF13 '

                  +',PCFODVFEO  AS CFOTRIB_RVCP13 '
                  +',PCFODVFEO  AS CFOISEN_RVCP13 '
                  +',PCFODVFER  AS CFORV_RVCP13 '
                  +',PCIMP_DVFE AS CALCICMS_RVCP13 '


                  +',PCFOVCON AS CFOTRIB_RV14 '
                  +',PCFOVCON  AS CFOISEN_RV14 '
                  +',PCFOVCOR  AS CFORV_RV14 '
                  +',PCIMP_VC AS CALCICMS_RV14 '

                  +',PCFOVCON  AS CFOTRIB_CF14 '
                  +',PCFOVCON  AS CFOISEN_CF14 '
                  +',PCFOVCOR  AS CFORV_CF14 '
                  +',PCIMP_VC AS CALCICMS_CF14 '

                  +',PCFOVCON  AS CFOTRIB_RVCP14 '
                  +',PCFOVCON  AS CFOISEN_RVCP14 '
                  +',PCFOVCOR  AS CFORV_RVCP14 '
                  +',PCIMP_VC AS CALCICMS_RVCP14 '

                  +',PCFOVFEO AS CFOTRIB_RV15 '
                  +',PCFOVFEO  AS CFOISEN_RV15 '
                  +',PCFOVFER  AS CFORV_RV15 '
                  +',PCIMP_VFE AS CALCICMS_RV15 '

                  +',PCFOVFEO  AS CFOTRIB_CF15 '
                  +',PCFOVFEO  AS CFOISEN_CF15 '
                  +',PCFOVFER  AS CFORV_CF15 '
                  +',PCIMP_VFE AS CALCICMS_CF15 '

                  +',PCFOVFEO  AS CFOTRIB_RVCP15 '
                  +',PCFOVFEO  AS CFOISEN_RVCP15 '
                  +',PCFOVFER  AS CFORV_RVCP15 '
                  +',PCIMP_VFE AS CALCICMS_RVCP15 '


                  +',PCFORVN  AS CFOTRIB_RV16 '
                  +',PCFORVN  AS CFOISEN_RV16 '
                  +',PCFORVR  AS CFORV_RV16 '
                  +',PCIMP_RV AS CALCICMS_RV16 '

                  +',PCFOCFN  AS CFOTRIB_CF16 '
                  +',PCFOCFN  AS CFOISEN_CF16 '
                  +',PCFOCFR  AS CFORV_CF16 '
                  +',PCIMP_CF AS CALCICMS_CF16 '


                  +',PCFORVN_CP  AS CFOTRIB_RVCP16 '
                  +',PCFORVN_CP  AS CFOISEN_RVCP16 '
                  +',PCFORVR_CP  AS CFORV_RVCP16 '
                  +',PCIMP_RV_CP AS CALCICMS_RVCP16 '


                  +',PCFODCN AS CFOTRIB_RV17 '
                  +',PCFODCN  AS CFOISEN_RV17 '
                  +',PCFODCR  AS CFORV_RV17 '
                  +',PCIMP_DC AS CALCICMS_RV17 '

                  +',PCFODCN  AS CFOTRIB_CF17 '
                  +',PCFODCN  AS CFOISEN_CF17 '
                  +',PCFODCR  AS CFORV_CF17 '
                  +',PCIMP_DC AS CALCICMS_CF17 '

                  +',PCFODCN  AS CFOTRIB_RVCP17 '
                  +',PCFODCN  AS CFOISEN_RVCP17 '
                  +',PCFODCR  AS CFORV_RVCP17 '
                  +',PCIMP_DC AS CALCICMS_RVCP17 '



                  +',PCFOTREN AS CFOTRIB_RV18 '
                  +',PCFOTREN  AS CFOISEN_RV18 '
                  +',PCFOTRER  AS CFORV_RV18 '
                  +',PCIMP_TE AS CALCICMS_RV18 '

                  +',PCFOTREN  AS CFOTRIB_CF18 '
                  +',PCFOTREN  AS CFOISEN_CF18 '
                  +',PCFOTRER  AS CFORV_CF18 '
                  +',PCIMP_TE AS CALCICMS_CF18 '


                  +',PCFOTREN  AS CFOTRIB_RVCP18 '
                  +',PCFOTREN  AS CFOISEN_RVCP18 '
                  +',PCFOTRER  AS CFORV_RVCP18 '
                  +',PCIMP_TE AS CALCICMS_RVCP18 '

                  +',PCFODMTN AS CFOTRIB_RV19 '
                  +',PCFODMTN  AS CFOISEN_RV19 '
                  +',PCFODMTR  AS CFORV_RV19 '
                  +',PCIMP_DMT AS CALCICMS_RV19 '

                  +',PCFODMTN  AS CFOTRIB_CF19 '
                  +',PCFODMTN  AS CFOISEN_CF19 '
                  +',PCFODMTR  AS CFORV_CF19 '
                  +',PCIMP_DMT AS CALCICMS_CF19 '


                  +',PCFODMTN  AS CFOTRIB_RVCP19 '
                  +',PCFODMTN  AS CFOISEN_RVCP19 '
                  +',PCFODMTR  AS CFORV_RVCP19 '
                  +',PCIMP_DMT AS CALCICMS_RVCP19 '

                  +',PCFOREIND_T AS CFOTRIB_RV20 '
                  +',PCFOREIND_T  AS CFOISEN_RV20 '
                  +',PCFOREIND_R  AS CFORV_RV20 '
                  +',PCIMP_REIND AS CALCICMS_RV20 '

                  +',PCFOREIND_T  AS CFOTRIB_CF20 '
                  +',PCFOREIND_T  AS CFOISEN_CF20 '
                  +',PCFOREIND_R  AS CFORV_CF20 '
                  +',PCIMP_REIND AS CALCICMS_CF20 '

                  +',PCFOREIND_T  AS CFOTRIB_RVCP20 '
                  +',PCFOREIND_T  AS CFOISEN_RVCP20 '
                  +',PCFOREIND_R  AS CFORV_RVCP20 '
                  +',PCIMP_REIND AS CALCICMS_RVCP20 '

                  +',PCFOBRINDE_T AS CFOTRIB_RV21 '
                  +',PCFOBRINDE_T  AS CFOISEN_RV21 '
                  +',PCFOBRINDE_R  AS CFORV_RV21 '
                  +',PCIMP_BRINDE AS CALCICMS_RV21 '

                  +',PCFOBRINDE_T  AS CFOTRIB_CF21 '
                  +',PCFOBRINDE_T  AS CFOISEN_CF21 '
                  +',PCFOBRINDE_R  AS CFORV_CF21 '
                  +',PCIMP_BRINDE AS CALCICMS_CF21 '

                  +',PCFOBRINDE_T  AS CFOTRIB_RVCP21 '
                  +',PCFOBRINDE_T  AS CFOISEN_RVCP21 '
                  +',PCFOBRINDE_R  AS CFORV_RVCP21 '
                  +',PCIMP_BRINDE AS CALCICMS_RVCP21 '


                  +',PCFOAMOSTRA_T AS CFOTRIB_RV22 '
                  +',PCFOAMOSTRA_T  AS CFOISEN_RV22 '
                  +',PCFOAMOSTRA_R  AS CFORV_RV22 '
                  +',PCIMP_AMOSTRA AS CALCICMS_RV22 '

                  +',PCFOAMOSTRA_T  AS CFOTRIB_CF22 '
                  +',PCFOAMOSTRA_T  AS CFOISEN_CF22 '
                  +',PCFOAMOSTRA_R  AS CFORV_CF22 '
                  +',PCIMP_AMOSTRA AS CALCICMS_CF22 '

                  +',PCFOAMOSTRA_T  AS CFOTRIB_RVCP22 '
                  +',PCFOAMOSTRA_T  AS CFOISEN_RVCP22 '
                  +',PCFOAMOSTRA_R  AS CFORV_RVCP22 '
                  +',PCIMP_AMOSTRA AS CALCICMS_RVCP22 '


                  +',PCFODEMO_T AS CFOTRIB_RV23 '
                  +',PCFODEMO_T  AS CFOISEN_RV23 '
                  +',PCFODEMO_R  AS CFORV_RV23 '
                  +',PCIMP_DEMO AS CALCICMS_RV23 '

                  +',PCFODEMO_T  AS CFOTRIB_CF23 '
                  +',PCFODEMO_T  AS CFOISEN_CF23 '
                  +',PCFODEMO_R  AS CFORV_CF23 '
                  +',PCIMP_DEMO AS CALCICMS_CF23 '

                  +',PCFODEMO_T  AS CFOTRIB_RVCP23 '
                  +',PCFODEMO_T  AS CFOISEN_RVCP23 '
                  +',PCFODEMO_R  AS CFORV_RVCP23 '
                  +',PCIMP_DEMO AS CALCICMS_RVCP23 '



                  +',PCFOCONS_T AS CFOTRIB_RV24 '
                  +',PCFOCONS_T  AS CFOISEN_RV24 '
                  +',PCFOCONS_R  AS CFORV_RV24 '
                  +',PCIMP_CONS AS CALCICMS_RV24 '

                  +',PCFOCONS_T  AS CFOTRIB_CF24 '
                  +',PCFOCONS_T  AS CFOISEN_CF24 '
                  +',PCFOCONS_R  AS CFORV_CF24 '
                  +',PCIMP_CONS AS CALCICMS_CF24 '

                  +',PCFOCONS_T  AS CFOTRIB_RVCP24 '
                  +',PCFOCONS_T  AS CFOISEN_RVCP24 '
                  +',PCFOCONS_R  AS CFORV_RVCP24 '
                  +',PCIMP_CONS AS CALCICMS_RVCP24 '



                  +',PCFOOUTSAI_T AS CFOTRIB_RV25 '
                  +',PCFOOUTSAI_T  AS CFOISEN_RV25 '
                  +',PCFOOUTSAI_R  AS CFORV_RV25 '
                  +',PCIMP_OUTSAI AS CALCICMS_RV25 '

                  +',PCFOOUTSAI_T  AS CFOTRIB_CF25 '
                  +',PCFOOUTSAI_T  AS CFOISEN_CF25 '
                  +',PCFOOUTSAI_R  AS CFORV_CF25 '
                  +',PCIMP_OUTSAI AS CALCICMS_CF25 '

                  +',PCFOOUTSAI_T  AS CFOTRIB_RVCP25 '
                  +',PCFOOUTSAI_T  AS CFOISEN_RVCP25 '
                  +',PCFOOUTSAI_R  AS CFORV_RVCP25 '
                  +',PCIMP_OUTSAI AS CALCICMS_RVCP25 ');
DM1.Query4.SQL.ADD(' from CADUF ');
try
   DM1.Query4.Open;
except
   DM1.Query4.SQL.SaveToFile(mpastatemp + 'sqlpar.txt');
   end;
if DM1.Query4.IsEmpty then
   begin
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.add('Select '
                  +'  PUF '
                  +',PNOM '
                  +',PCODEMP , 0 AS CFOTRIB_RV00 '
                  +',0 AS CFOISEN_RV00 '
                  +',0 AS CFORV_RV00 '
                  +',0 AS CALCICMS_RV00 '

                  +',0 AS CFOTRIB_CF00 '
                  +',0 AS CFOISEN_CF00 '
                  +',0 AS CFORV_CF00 '
                  +',0 AS CALCICMS_CF00 '


                  +',0 AS CFOTRIB_RVCP00 '
                  +',0 AS CFOISEN_RVCP00 '
                  +',0 AS CFORV_RVCP00 '
                  +',0 AS CALCICMS_RVCP00 '

                  +',0 AS CFOTRIB_RV01 '
                  +',0 AS CFOISEN_RV01 '
                  +',0 AS CFORV_RV01 '
                  +',0 AS CALCICMS_RV01 '

                  +',0 AS CFOTRIB_CF01 '
                  +',0 AS CFOISEN_CF01 '
                  +',0 AS CFORV_CF01 '
                  +',0 AS CALCICMS_CF01 '


                  +',0 AS CFOTRIB_RVCP01 '
                  +',0 AS CFOISEN_RVCP01 '
                  +',0 AS CFORV_RVCP01 '
                  +',0 AS CALCICMS_RVCP01 '


                  +',0 AS CFOTRIB_RV02 '
                  +',0 AS CFOISEN_RV02 '
                  +',0 AS CFORV_RV02 '
                  +',0 AS CALCICMS_RV02 '

                  +',0 AS CFOTRIB_CF02 '
                  +',0 AS CFOISEN_CF02 '
                  +',0 AS CFORV_CF02 '
                  +',0 AS CALCICMS_CF02 '


                  +',0 AS CFOTRIB_RVCP02 '
                  +',0 AS CFOISEN_RVCP02 '
                  +',0 AS CFORV_RVCP02 '
                  +',0 AS CALCICMS_RVCP02 '




                  +',0 AS CFOTRIB_RV03 '
                  +',0 AS CFOISEN_RV03 '
                  +',0 AS CFORV_RV03 '
                  +',0 AS CALCICMS_RV03 '

                  +',0 AS CFOTRIB_CF03 '
                  +',0 AS CFOISEN_CF03 '
                  +',0 AS CFORV_CF03 '
                  +',0 AS CALCICMS_CF03 '


                  +',0 AS CFOTRIB_RVCP03 '
                  +',0 AS CFOISEN_RVCP03 '
                  +',0 AS CFORV_RVCP03 '
                  +',0 AS CALCICMS_RVCP03 '


                  +',0 AS CFOTRIB_RV04 '
                  +',0 AS CFOISEN_RV04 '
                  +',0 AS CFORV_RV04 '
                  +',0 AS CALCICMS_RV04 '

                  +',0 AS CFOTRIB_CF04 '
                  +',0 AS CFOISEN_CF04 '
                  +',0 AS CFORV_CF04 '
                  +',0 AS CALCICMS_CF04 '


                  +',0 AS CFOTRIB_RVCP04 '
                  +',0 AS CFOISEN_RVCP04 '
                  +',0 AS CFORV_RVCP04 '
                  +',0 AS CALCICMS_RVCP04 '


                  +',0 AS CFOTRIB_RV05 '
                  +',0 AS CFOISEN_RV05 '
                  +',0 AS CFORV_RV05 '
                  +',0 AS CALCICMS_RV05 '

                  +',0 AS CFOTRIB_CF05 '
                  +',0 AS CFOISEN_CF05 '
                  +',0 AS CFORV_CF05 '
                  +',0 AS CALCICMS_CF05 '


                  +',0 AS CFOTRIB_RVCP05 '
                  +',0 AS CFOISEN_RVCP05 '
                  +',0 AS CFORV_RVCP05 '
                  +',0 AS CALCICMS_RVCP05 '

                  +',0 AS CFOTRIB_RV06 '
                  +',0 AS CFOISEN_RV06 '
                  +',0 AS CFORV_RV06 '
                  +',0 AS CALCICMS_RV06 '

                  +',0 AS CFOTRIB_CF06 '
                  +',0 AS CFOISEN_CF06 '
                  +',0 AS CFORV_CF06 '
                  +',0 AS CALCICMS_CF06 '


                  +',0 AS CFOTRIB_RVCP06 '
                  +',0 AS CFOISEN_RVCP06 '
                  +',0 AS CFORV_RVCP06 '
                  +',0 AS CALCICMS_RVCP06 '



                  +',0 AS CFOTRIB_RV07 '
                  +',0 AS CFOISEN_RV07 '
                  +',0 AS CFORV_RV07 '
                  +',0 AS CALCICMS_RV07 '

                  +',0 AS CFOTRIB_CF07 '
                  +',0 AS CFOISEN_CF07 '
                  +',0 AS CFORV_CF07 '
                  +',0 AS CALCICMS_CF07 '


                  +',0 AS CFOTRIB_RVCP07 '
                  +',0 AS CFOISEN_RVCP07 '
                  +',0 AS CFORV_RVCP07 '
                  +',0 AS CALCICMS_RVCP07 '


                  +',0 AS CFOTRIB_RV08 '
                  +',0 AS CFOISEN_RV08 '
                  +',0 AS CFORV_RV08 '
                  +',0 AS CALCICMS_RV08 '

                  +',0 AS CFOTRIB_CF08 '
                  +',0 AS CFOISEN_CF08 '
                  +',0 AS CFORV_CF08 '
                  +',0 AS CALCICMS_CF08 '


                  +',0 AS CFOTRIB_RVCP08 '
                  +',0 AS CFOISEN_RVCP08 '
                  +',0 AS CFORV_RVCP08 '
                  +',0 AS CALCICMS_RVCP08 '
                  +',0 AS CFOTRIB_RV09 '
                  +',0 AS CFOISEN_RV09 '
                  +',0 AS CFORV_RV09 '
                  +',0 AS CALCICMS_RV09 '

                  +',0 AS CFOTRIB_CF09 '
                  +',0 AS CFOISEN_CF09 '
                  +',0 AS CFORV_CF09 '
                  +',0 AS CALCICMS_CF09 '


                  +',0 AS CFOTRIB_RVCP09 '
                  +',0 AS CFOISEN_RVCP09 '
                  +',0 AS CFORV_RVCP09 '
                  +',0 AS CALCICMS_RVCP09 '


                  +',0 AS CFOTRIB_RV10 '
                  +',0 AS CFOISEN_RV10 '
                  +',0 AS CFORV_RV10 '
                  +',0 AS CALCICMS_RV10 '

                  +',0 AS CFOTRIB_CF10 '
                  +',0 AS CFOISEN_CF10 '
                  +',0 AS CFORV_CF10 '
                  +',0 AS CALCICMS_CF10 '


                  +',0 AS CFOTRIB_RVCP10 '
                  +',0 AS CFOISEN_RVCP10 '
                  +',0 AS CFORV_RVCP10 '
                  +',0 AS CALCICMS_RVCP10 '


                  +',0 AS CFOTRIB_RV11 '
                  +',0  AS CFOISEN_RV11 '
                  +',0  AS CFORV_RV11 '
                  +',0 AS CALCICMS_RV11 '

                  +',0  AS CFOTRIB_CF11 '
                  +',0  AS CFOISEN_CF11 '
                  +',0  AS CFORV_CF11 '
                  +',0 AS CALCICMS_CF11 '

                  +',0  AS CFOTRIB_RVCP11 '
                  +',0  AS CFOISEN_RVCP11 '
                  +',0  AS CFORV_RVCP11 '
                  +',0 AS CALCICMS_RVCP11 '



                  +',0 AS CFOTRIB_RV12 '
                  +',0 AS CFOISEN_RV12 '
                  +',0 AS CFORV_RV12 '
                  +',0 AS CALCICMS_RV12 '

                  +',0 AS CFOTRIB_CF12 '
                  +',0 AS CFOISEN_CF12 '
                  +',0 AS CFORV_CF12 '
                  +',0 AS CALCICMS_CF12 '

                  +',0 AS CFOTRIB_RVCP12 '
                  +',0 AS CFOISEN_RVCP12 '
                  +',0 AS CFORV_RVCP12 '
                  +',0 AS CALCICMS_RVCP12 '


                  +',0 AS CFOTRIB_RV13 '
                  +',0 AS CFOISEN_RV13 '
                  +',0 AS CFORV_RV13 '
                  +',0 AS CALCICMS_RV13 '

                  +',0 AS CFOTRIB_CF13 '
                  +',0 AS CFOISEN_CF13 '
                  +',0 AS CFORV_CF13 '
                  +',0 AS CALCICMS_CF13 '

                  +',0 AS CFOTRIB_RVCP13 '
                  +',0 AS CFOISEN_RVCP13 '
                  +',0 AS CFORV_RVCP13 '
                  +',0 AS CALCICMS_RVCP13 '


                  +',0 AS CFOTRIB_RV14 '
                  +',0  AS CFOISEN_RV14 '
                  +',0  AS CFORV_RV14 '
                  +',0 AS CALCICMS_RV14 '

                  +',0  AS CFOTRIB_CF14 '
                  +',0  AS CFOISEN_CF14 '
                  +',0  AS CFORV_CF14 '
                  +',0 AS CALCICMS_CF14 '

                  +',0  AS CFOTRIB_RVCP14 '
                  +',0  AS CFOISEN_RVCP14 '
                  +',0  AS CFORV_RVCP14 '
                  +',0 AS CALCICMS_RVCP14 '

                  +',0 AS CFOTRIB_RV15 '
                  +',0 AS CFOISEN_RV15 '
                  +',0 AS CFORV_RV15 '
                  +',0 AS CALCICMS_RV15 '

                  +',0 AS CFOTRIB_CF15 '
                  +',0 AS CFOISEN_CF15 '
                  +',0 AS CFORV_CF15 '
                  +',0 AS CALCICMS_CF15 '

                  +',0 AS CFOTRIB_RVCP15 '
                  +',0 AS CFOISEN_RVCP15 '
                  +',0 AS CFORV_RVCP15 '
                  +',0 AS CALCICMS_RVCP15 '


                  +',0 AS CFOTRIB_RV16 '
                  +',0 AS CFOISEN_RV16 '
                  +',0 AS CFORV_RV16 '
                  +',0 AS CALCICMS_RV16 '

                  +',0 AS CFOTRIB_CF16 '
                  +',0 AS CFOISEN_CF16 '
                  +',0 AS CFORV_CF16 '
                  +',0 AS CALCICMS_CF16 '


                  +',0 AS CFOTRIB_RVCP16 '
                  +',0 AS CFOISEN_RVCP16 '
                  +',0 AS CFORV_RVCP16 '
                  +',0 AS CALCICMS_RVCP16 ');

      DM1.Query4.SQL.add(',0 AS CFOTRIB_RV17 '
                     +',0  AS CFOISEN_RV17 '
                     +',0  AS CFORV_RV17 '
                     +',0 AS CALCICMS_RV17 '

                     +',0  AS CFOTRIB_CF17 '
                     +',0  AS CFOISEN_CF17 '
                     +',0  AS CFORV_CF17 '
                     +',0 AS CALCICMS_CF17 '

                     +',0  AS CFOTRIB_RVCP17 '
                     +',0  AS CFOISEN_RVCP17 '
                     +',0  AS CFORV_RVCP17 '
                     +',0 AS CALCICMS_RVCP17 '



                     +',0 AS CFOTRIB_RV18 '
                     +',0 AS CFOISEN_RV18 '
                     +',0 AS CFORV_RV18 '
                     +',0 AS CALCICMS_RV18 '

                     +',0 AS CFOTRIB_CF18 '
                     +',0 AS CFOISEN_CF18 '
                     +',0 AS CFORV_CF18 '
                     +',0 AS CALCICMS_CF18 '


                     +',0 AS CFOTRIB_RVCP18 '
                     +',0 AS CFOISEN_RVCP18 '
                     +',0 AS CFORV_RVCP18 '
                     +',0 AS CALCICMS_RVCP18 '

                     +',0 AS CFOTRIB_RV19 '
                     +',0 AS CFOISEN_RV19 '
                     +',0 AS CFORV_RV19 '
                     +',0 AS CALCICMS_RV19 '

                     +',0 AS CFOTRIB_CF19 '
                     +',0 AS CFOISEN_CF19 '
                     +',0 AS CFORV_CF19 '
                     +',0 AS CALCICMS_CF19 '


                     +',0  AS CFOTRIB_RVCP19 '
                     +',0  AS CFOISEN_RVCP19 '
                     +',0  AS CFORV_RVCP19 '
                     +',0 AS CALCICMS_RVCP19 '

                     +',0 AS CFOTRIB_RV20 '
                     +',0  AS CFOISEN_RV20 '
                     +',0  AS CFORV_RV20 '
                     +',0 AS CALCICMS_RV20 '

                     +',0  AS CFOTRIB_CF20 '
                     +',0  AS CFOISEN_CF20 '
                     +',0  AS CFORV_CF20 '
                     +',0 AS CALCICMS_CF20 '

                     +',0  AS CFOTRIB_RVCP20 '
                     +',0  AS CFOISEN_RVCP20 '
                     +',0  AS CFORV_RVCP20 '
                     +',0 AS CALCICMS_RVCP20 '

                     +',0 AS CFOTRIB_RV21 '
                     +',0  AS CFOISEN_RV21 '
                     +',0  AS CFORV_RV21 '
                     +',0 AS CALCICMS_RV21 '

                     +',0  AS CFOTRIB_CF21 '
                     +',0  AS CFOISEN_CF21 '
                     +',0  AS CFORV_CF21 '
                     +',0 AS CALCICMS_CF21 '

                     +',0  AS CFOTRIB_RVCP21 '
                     +',0  AS CFOISEN_RVCP21 '
                     +',0  AS CFORV_RVCP21 '
                     +',0 AS CALCICMS_RVCP21 '


                     +',0 AS CFOTRIB_RV22 '
                     +',0  AS CFOISEN_RV22 '
                     +',0  AS CFORV_RV22 '
                     +',0 AS CALCICMS_RV22 '

                     +',0  AS CFOTRIB_CF22 '
                     +',0  AS CFOISEN_CF22 '
                     +',0  AS CFORV_CF22 '
                     +',0 AS CALCICMS_CF22 '

                     +',0  AS CFOTRIB_RVCP22 '
                     +',0  AS CFOISEN_RVCP22 '
                     +',0  AS CFORV_RVCP22 '
                     +',0 AS CALCICMS_RVCP22 '


                     +',0 AS CFOTRIB_RV23 '
                     +',0 AS CFOISEN_RV23 '
                     +',0 AS CFORV_RV23 '
                     +',0 AS CALCICMS_RV23 '

                     +',0 AS CFOTRIB_CF23 '
                     +',0 AS CFOISEN_CF23 '
                     +',0 AS CFORV_CF23 '
                     +',0 AS CALCICMS_CF23 '

                     +',0 AS CFOTRIB_RVCP23 '
                     +',0 AS CFOISEN_RVCP23 '
                     +',0 AS CFORV_RVCP23 '
                     +',0 AS CALCICMS_RVCP23 '
                     +',0 AS CFOTRIB_RV24 '
                     +',0 AS CFOISEN_RV24 '
                     +',0 AS CFORV_RV24 '
                     +',0 AS CALCICMS_RV24 '
                     +',0 AS CFOTRIB_CF24 '
                     +',0 AS CFOISEN_CF24 '
                     +',0 AS CFORV_CF24 '
                     +',0 AS CALCICMS_CF24 '
                     +',0 AS CFOTRIB_RVCP24 '
                     +',0 AS CFOISEN_RVCP24 '
                     +',0 AS CFORV_RVCP24 '
                     +',0 AS CALCICMS_RVCP24 '
                     +',0 AS CFOTRIB_RV25 '
                     +',0 AS CFOISEN_RV25 '
                     +',0 AS CFORV_RV25 '
                     +',0 AS CALCICMS_RV25 '
                     +',0 AS CFOTRIB_CF25 '
                     +',0 AS CFOISEN_CF25 '
                     +',0 AS CFORV_CF25 '
                     +',0 AS CALCICMS_CF25 '
                     +',0 AS CFOTRIB_RVCP25 '
                     +',0 AS CFOISEN_RVCP25 '
                     +',0 AS CFORV_RVCP25 '
                     +',0 AS CALCICMS_RVCP25 ');
   DM1.Query4.SQL.ADD(' from CADUF ');
   try
      DM1.Query4.Open;
   except
      DM1.Query4.SQL.SaveToFile(mpastatemp + 'sqlpar.txt');
     end;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
{
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_UF',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CODTPPED',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_RV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_RVCP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_CF',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_ISENTO',ptinput);
}
DM1.Query2.SQL.Add('Insert into CADUF_TPPED ('
          +'UFTP_CODEMP'
          +',UFTP_UF'
          +',UFTP_CODTPPED'
          +',UFTP_CFOP_RV_ST'
          +',UFTP_CFOP_RV_TRIB'
          +',UFTP_CFOP_RV_ISENTO'
          +',UFTP_CALCIMP_RV'
          +',UFTP_CFOP_RVCP_ST'
          +',UFTP_CFOP_RVCP_TRIB'
          +',UFTP_CFOP_RVCP_ISENTO'
          +',UFTP_CALCIMP_RVCP'
          +',UFTP_CFOP_CF_ST'
          +',UFTP_CFOP_CF_TRIB'
          +',UFTP_CFOP_CF_ISENTO'
          +',UFTP_CALCIMP_CF'
          +',UFTP_SUBST_CFOP_ST'
          +',UFTP_SUBST_CFOP_TRIB'
          +',UFTP_SUBST_CFOP_ISENTO'
          +') Values  ('
          +':UFTP_CODEMP'
          +',:UFTP_UF'
          +',:UFTP_CODTPPED'
          +',:UFTP_CFOP_RV_ST'
          +',:UFTP_CFOP_RV_TRIB'
          +',:UFTP_CFOP_RV_ISENTO'
          +',:UFTP_CALCIMP_RV'
          +',:UFTP_CFOP_RVCP_ST'
          +',:UFTP_CFOP_RVCP_TRIB'
          +',:UFTP_CFOP_RVCP_ISENTO'
          +',:UFTP_CALCIMP_RVCP'
          +',:UFTP_CFOP_CF_ST'
          +',:UFTP_CFOP_CF_TRIB'
          +',:UFTP_CFOP_CF_ISENTO'
          +',:UFTP_CALCIMP_CF'
          +',:UFTP_SUBST_CFOP_ST'
          +',:UFTP_SUBST_CFOP_TRIB'
          +',:UFTP_SUBST_CFOP_ISENTO'
          +')'
          );

While not DM1.Query4.eof do
   begin
   for x:=1 to high(tab_tped)-1 do
      begin
      DM1.Query2.ParambyName('UFTP_CODEMP').AsFloat           :=DM1.Query4.fieldbyname('PCODEMP').asfloat;
      DM1.Query2.ParambyName('UFTP_UF').AsString              :=DM1.Query4.fieldbyname('PUF').asString;
      DM1.Query2.ParambyName('UFTP_CODTPPED').AsFloat         :=x;
      DM1.Query2.ParambyName('UFTP_CFOP_RV_ST').AsFloat       :=DM1.Query4.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_RV_TRIB').AsFloat     :=DM1.Query4.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_RV_ISENTO').AsFloat   :=DM1.Query4.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CALCIMP_RV').AsFloat       :=DM1.Query4.fieldbyname('CALCICMS_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_RVCP_ST').AsFloat     :=DM1.Query4.fieldbyname('CFORV_RVCP'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_RVCP_TRIB').AsFloat   :=DM1.Query4.fieldbyname('CFOTRIB_RVCP'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_RVCP_ISENTO').AsFloat :=DM1.Query4.fieldbyname('CFOISEN_RVCP'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CALCIMP_RVCP').AsFloat     :=DM1.Query4.fieldbyname('CALCICMS_RVCP'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_CF_ST').AsFloat       :=DM1.Query4.fieldbyname('CFORV_CF'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_CF_TRIB').AsFloat     :=DM1.Query4.fieldbyname('CFOTRIB_CF'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CFOP_CF_ISENTO').AsFloat   :=DM1.Query4.fieldbyname('CFOISEN_CF'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_CALCIMP_CF').AsFloat       :=DM1.Query4.fieldbyname('CALCICMS_CF'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_SUBST_CFOP_ST').AsFloat    :=DM1.Query4.fieldbyname('CFORV_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_SUBST_CFOP_TRIB').AsFloat  :=DM1.Query4.fieldbyname('CFOTRIB_RV'+FormatFloat('00',x)).AsFloat;
      DM1.Query2.ParambyName('UFTP_SUBST_CFOP_ISENTO').AsFloat:=DM1.Query4.fieldbyname('CFOISEN_RV'+FormatFloat('00',x)).AsFloat;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,1184,'func','CADPFP');
         exit;
         end;
      end;
   DM1.Query4.Next;
   end;
Query_TipoPed:=tquery.create(nil);
Query_TipoPed.DatabaseName:='SG_ASSOC';
Query_TipoPed.Close;
Query_TipoPed.SQL.Clear;
Query_TipoPed.SQL.Add('Select * from CADTIPPED order by TPCODIGO');
Query_TipoPed.Open;
While not Query_TipoPed.Eof do
   begin
   try
      tab_tped[Query_TipoPed.FieldByName('TPCODIGO').AsInteger]       :=Query_TipoPed.FieldByName('TPNOME').AsString;
      tab_tped_mov[Query_TipoPed.FieldByName('TPCODIGO').AsInteger,00]:=Query_TipoPed.FieldByName('TPNOME').AsString;
   except
      end;
   Query_TipoPed.Next;
   end;
FreeAndNil(Query_TipoPed);
result:=true;
end;




// termino


//termino

function fChecaMultiEmpresa(pCampo,pTabela: String): String;
begin
if DM1.Qr_Tid.Locate('TINOME',pTabela,[]) then
   result:=''
else
   result:=pCampo+'='+IntToStr(codemp)+' and ';
end;

Function MaskFone(pString:String) : String ;
var
  Resultado : String;
begin
pString:=FloatToStr(ValFloat(pString));
if (length(pString)<9) then
  Resultado := FormatMaskText('9999-9999;0;', pString)
else if (length(pString)<10) then
  Resultado := FormatMaskText('99999-9999;0;', pString)
else if (length(pString)=11)  then
  Resultado := FormatMaskText('(99)99999-9999;0;', pString)
else if (length(pString)=12) then
  Resultado := FormatMaskText('(99)99999-9999;0;', pString)
else
  Resultado := FormatMaskText('(99)9999-9999;0;',pString);

if ValFloat(Resultado) > 0 then
  Result:=Resultado
else
  Result := '';
end;


{
Function MaskFone2(Valor:String) : String ;
var
  Resultado : String;
begin
Valor:=fdeixanum2(Valor);
if (length(valor)=11) or (length(valor)=9) then
  Result := FormatMaskText('(99)99999-9999;0;',Insere2(LimpaString(Valor),' ',11))
else
  Result := FormatMaskText('(99)9999-9999;0;',insere2(LimpaString(Valor),' ',10));
if ValFloat(Resultado) > 0 then
  Result:=Resultado
else
  Result := '';
end;
}
function LimpaString(pString: string): string;
var
   vString: string;
begin
   vString := pString;
   while Pos('.', vString) <> 0 do
      vString := TiraCarac('.', vString);
   while Pos(',', vString) <> 0 do
      vString := TiraCarac(',', vString);
   while Pos('-', vString) <> 0 do
      vString := TiraCarac('-', vString);
   while Pos('=', vString) <> 0 do
      vString := TiraCarac('=', vString);
   while Pos('/', vString) <> 0 do
      vString := TiraCarac('/', vString);
   while Pos('\', vString) <> 0 do
      vString := TiraCarac('\', vString);
   while Pos(':', vString) <> 0 do
      vString := TiraCarac(':', vString);
   while Pos('(', vString) <> 0 do
      vString := TiraCarac('(', vString);
   while Pos(')', vString) <> 0 do
      vString := TiraCarac(')', vString);
   Result := AnsiUpperCase(Trim(AnsiToAscii(vString)));
end;

function TiraCarac(vsSubString: string; vsString: string): string;
begin
   if Pos(vsSubString, vsString) <> 0 then
      Delete(vsString, Pos(vsSubString, vsString), Length(vsSubString));
   TiraCarac := vsString;
end;

function AnsiToAscii(str: string): string;
var i: Integer;
begin
   for i := 1 to Length(str) do
      case str[i] of
         'á': str[i] := 'a';
         'é': str[i] := 'e';
         'í': str[i] := 'i';
         'ó': str[i] := 'o';
         'ú': str[i] := 'u';
         'à': str[i] := 'a';
         'è': str[i] := 'e';
         'ì': str[i] := 'i';
         'ò': str[i] := 'o';
         'ù': str[i] := 'u';
         'â': str[i] := 'a';
         'ê': str[i] := 'e';
         'î': str[i] := 'i';
         'ô': str[i] := 'o';
         'û': str[i] := 'u';
         'ä': str[i] := 'a';
         'ë': str[i] := 'e';
         'ï': str[i] := 'i';
         'ö': str[i] := 'o';
         'ü': str[i] := 'u';
         'ã': str[i] := 'a';
         'õ': str[i] := 'o';
         'ñ': str[i] := 'n';
         'ç': str[i] := 'c';
         'Á': str[i] := 'A';
         'É': str[i] := 'E';
         'Í': str[i] := 'I';
         'Ó': str[i] := 'O';
         'Ú': str[i] := 'U';
         'À': str[i] := 'A';
         'È': str[i] := 'E';
         'Ì': str[i] := 'I';
         'Ò': str[i] := 'O';
         'Ù': str[i] := 'U';
         'Â': str[i] := 'A';
         'Ê': str[i] := 'E';
         'Î': str[i] := 'I';
         'Ô': str[i] := 'O';
         'Û': str[i] := 'U';
         'Ä': str[i] := 'A';
         'Ë': str[i] := 'E';
         'Ï': str[i] := 'I';
         'Ö': str[i] := 'O';
         'Ü': str[i] := 'U';
         'Ã': str[i] := 'A';
         'Õ': str[i] := 'O';
         'Ñ': str[i] := 'N';
         'Ç': str[i] := 'C';
      else
        begin
        if Ord(str[i])>127 then
         str[i] := ' ';
        end;
      end;
   Result := str;
end;

function MaskCep(vfCep: string): string;
begin
   Result := FormatMaskText('99999-999;0;',LimpaString(vfCep));
end;

procedure StatusBtn(Sender: TObject; tipo: integer);
var
   Cont : integer;
begin
   { ========= TIPOS ==========
    0 - Incluir
    1 - Alterar
    2 - Desfazer, Confirmar
    3 - Primeiro
    4 - Anterior
    5 - Avançar
    6 - Ultimo
    7 - Consultar
    8 - Imprimir
    9 - Sair
    10 - Form Show}

   for Cont := 0 to TForm(Sender).ComponentCount - 1 do begin
         if TForm(Sender).Components[cont] is TBitBtn then begin
          // ======================== BOTÃO INCLUIR ========================= //
               if Tipo = 0 then begin
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_anterior') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_proximo') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_gravar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                  end;
          // ======================== BOTÃO ALTERAR ========================= //
               if Tipo = 1 then begin
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_anterior') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_proximo') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_gravar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                  end;
          // =============== BOTÕES DESFAZER/CONFIRMAR/EXCLUIR ============== //
               if Tipo = 2 then begin
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_anterior') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_proximo') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_gravar') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                  end;
          // =============== BOTÃO DO FORM SHOW ============== //
               if Tipo = 10 then begin
                     if (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TBitBtn(TForm(Sender).Components[Cont]).Name = 'btn_gravar') then begin
                           TBitBtn(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                  end;
            end;
      end;
end;

procedure LimpaEdits(Sender: TObject);
var
   Cont : integer;
begin
   for Cont := 0 to TForm(Sender).ComponentCount - 1 do begin
      if TForm(Sender).Components[cont] is TEdit then
         TEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TComboEdit then
         TComboEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TDateEdit then
         TDateEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TMaskEdit then
         TMaskEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TMemo then
         TMemo(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TDateEdit then
         TDateEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TCurrencyEdit then
         TCurrencyEdit(TForm(Sender).Components[Cont]).Text := '0.00';
   end;
end;

function MaskCPFCNPJ(Valor:String) : String ;
var
   vRes : String ;
begin
VRes:=floattostr(fsonumero(valor));
if length(vres)>11 then
   begin
   vres:=insere(vres,'0',14);
   Result := FormatMaskText('00.000.000/0000\-00;0;',vRes);

   end
else
   begin
   vres:=insere(vres,'0',11);
   Result := FormatMaskText('999.999.999-99;0;',vRes);
   end;
end;

function MaskCPFCNPJ2(Valor:String) : String ;
var
  x: Integer;
  Valor2: String;
begin
x:=length(valor);
if x>11 then
  begin
  Valor:=Insere2('0','0',14-length(valor))+Valor;
  for x:=0 to length(valor) -1 do
    begin
    if x = 2 then
      Valor2:='-'+Valor2;
    if x = 6 then
      Valor2:='/'+Valor2;
    if (x = 9)  or (x = 12) then
      Valor2:='.'+Valor2;
    Valor2:=Copy(Valor,length(valor)-x,1)+Valor2;
    end
  end
else
  begin
  Valor:=Insere2('0','0',11-length(valor))+Valor;
  for x:=0 to length(valor) -1 do
    begin
    if x = 2 then
      Valor2:='-'+Valor2;
    if (x = 5)  or (x = 8) then
      Valor2:='.'+Valor2;
    Valor2:=Copy(Valor,length(valor)-x,1)+Valor2;
    end
  end;
Result:=Valor2;
end;


Function Word_InserirColunas(Doc : Variant; pTabela:TDataSet): Boolean;
var
x: Integer;
NumCol: Integer;
NumRow: Integer;
begin
NumCol:=pTabela.fields.Count;
NumRow:=pTabela.RecordCount;

//Doc.Tables.Add(wrdSelection.Range,Numrow,Numcol);

   Doc.tableinserttable(NumColumns:=Numcol, NumRows:=NumRow); //Insere
   Doc.tableSelectTable; //seleciona a tabela inteira
   Doc.tableAutoFormat(Format:=20); //usa a auto formatacão
   Doc.startOfRow;//coloca o cursor piscando no começo


{
While not pTabela.eof do
   begin
   for x:=1 to pTabela.Fields.Count-1 do
      begin
      Doc.Insert(pTabela.Fields[x].AsString+#9);
      end;
   end;
}

{
Doc.editselectall;
Doc.TextToTable(ConvertFrom := , NumColumns := NumCol);
Doc.TableSelectTable;
Doc.TableSelectRow;
Doc.TableHeadings(1);
Doc.TableAutoFormat(Format:=16,HeadingRows:=1);



//   wrdSelection.tableinserttable(NumColumns:=6, NumRows:=mqtdreg); //Insere
//   wrdSelection.TableSelectTable; //seleciona a tabela inteira
//   wrdSelection.TableAutoFormat(Format:=20); //usa a auto formatacão
//   wrdSelection.startOfRow;//coloca o cursor piscando no começo


   Word_InserirCol06_Novo(wrdSelection
                    ,0
                    ,0
                    ,'Codigo'
                    ,'Nome'
                    ,'Form.Pad. (KG/L)'
                    ,'Lote'
                    ,'Quant. Util. (KG/L)'
                    ,'Lote (RE)');

   end;
While not Frm_IndEnv_Fab.Qr_Comp_MP.Eof do
   begin
   if (Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString='') or
      (Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString='_') then
      mcinst2:=Frm_IndEnv_Fab.Qr_Comp_MPPDNOME.AsString
   else
      mcinst2:=Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString;

   mcinst3:=FormatFloat(mcasas, Frm_IndEnv_Fab.Qr_Comp_MPCPPERCENT_REST.Value)+'%';

   mlin:=mlin+1;
   mlinha:=mlinha+1;
   Word_InserirCol06_Novo(wrdSelection
                    ,0
                    ,0
                    ,Frm_IndEnv_Fab.Qr_Comp_MPCPCODMAT.AsString
                    ,mcinst2
                    ,Formatfloat(mcasind, Frm_IndEnv_Fab.Qr_Comp_MPOP3_QTDPREV.Value)
                    ,Frm_IndEnv_Fab.Qr_Comp_MPOP3_LOTE.AsString
                    ,' '
                    ,' ');

   Frm_IndEnv_Fab.Qr_Comp_MP.Next;
   end;
if not Frm_IndEnv_Fab.Qr_Comp_MP.IsEmpty then
   begin
   wrdApp.Selection.GoTo(wdGotoLine,wdGoToLast);
   InsertLines(1);
   end;



Function Word_InserirCol07(Doc : Variant; Col,Row : Integer;
                 Text1,Text2,Text3,Text4,Text5,Text6,Text7  : String): Boolean;

begin
  Doc.Tables.Item(col).Cell(Row,1).Range.InsertAfter(Text1);
  Doc.Tables.Item(col).Cell(Row,2).Range.InsertAfter(Text2);
  Doc.Tables.Item(col).Cell(Row,3).Range.InsertAfter(Text3);
  Doc.Tables.Item(col).Cell(Row,4).Range.InsertAfter(Text4);
  Doc.Tables.Item(col).Cell(Row,5).Range.InsertAfter(Text5);
  Doc.Tables.Item(col).Cell(Row,6).Range.InsertAfter(Text6);
  Doc.Tables.Item(col).Cell(Row,7).Range.InsertAfter(Text7);
result:=true;
end;
}
result:=true;
end;

function fPreencherVazio(Texto:String): String;
var
  x: integer;
  maux: string;
begin
Texto:=uppercase(Texto);
if length(Texto)>0 then
   maux:='%'
else
   maux:='';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   If Texto[x] in [' '] then
      maux:=maux+'%'
   else
      maux:=maux+Texto[x];
maux:=maux+'%';
Result:=maux;
end;

function ValidaTitulo(numero: String): Boolean;
var
  intInd1,intInd2,intLimite    : Integer;
  intSoma,intDigito            : Integer;
  strDVc,strSequencial         : String;
  strUF,strDV1,strDV2          : String;
begin
  numero := Trim(numero);

  while (Length(numero) < 13) do
     numero := '0' + numero;

  intInd1 := 0;
  intInd2 := 0;
  strDVc  := '';

  strSequencial := Copy(numero,1,9);
  strUF         := Copy(numero,10,2);
  strDV1        := Copy(numero,12,1);
  strDV2        := Copy(numero,13,1);

  {Verifca se a UF estiver entre os código possíveis, de 1(SP) até 28(ZZ-Exterior)}
  if ((StrToInt(strUF) >  0) and (StrToInt(strUF) < 29)) then begin
     intLimite := 9;

     {Loop para calcular os 2 dígitos verificadores}
     for intInd1 := 1 to 2 do begin
        intSoma := 0;

       {Calcula a soma para submeter ao módulo 11}
        for intInd2 := 1 to intLimite do begin
           intSoma := intSoma + StrToInt(Copy(strSequencial,intInd2,1)) * (intLimite + 2 - intInd2);
        end;

       {Pega o resto da dívisão, o módulo, por 11}
       intDigito := intSoma mod 11;

       { Se a UF for SP ou MG}
       if  (StrToInt(strUF) in [1,2]) then  begin
          if (intDigito = 1) then
             intDigito := 0
          else if (intDigito = 0) then
             intDigito := 1
          else
             intDigito := 11 - intDigito;
       end else begin { Outros UF e Exterior}
          if ((intDigito = 1) or (intDigito = 0)) then
            intDigito := 0
          else
            intDigito := 11 - intDigito;
       end;

       {Atribui à variavel strDVc o dígito calculado}
        strDVc := strDVc + IntToStr(intDigito);

       {Muda o valor de intLimite para o cáculo do segundo dígito}
       intLimite:= 3;
       {O cálculo do segundo dígito será sobre o código da UF + primeiro dígito verificador}
       strSequencial:= strUF + IntToStr(intDigito);
   end;
  end;

  result := (strDV1+strDV2 = strDVc);
end;

function AllTrim(const S : string) : string;
var
 I, L: Integer;
begin
 L := Length(S);
 I := 1;
 while (I <= L) and (S[I] <= ' ') do Inc(I);
 if I > L then Result := '' else
 begin
   while S[L] <= ' ' do Dec(L);
   Result := Copy(S, I, L - I + 1);
 end;
end;

function Empty(const s: String) : Boolean;
var
 aux : string;
begin
 aux := alltrim(s);
 if Length(aux) = 0 then Result := true else Result := false;
end;

function IsNumero(const s: string) : boolean;
var
 i : byte;
begin
 Result := false;
 for i := 1 to length(s) do
   if not (s[i] in ['0'..'9']) then exit;
 Result := true;
end;

function CharToInt( ch: Char ): ShortInt;
begin
 Result := Ord ( ch ) - OrdZero;
end;

function IntToChar ( int: ShortInt ): Char;
begin
 Result := Chr ( int + OrdZero);
end;

{---Valida Inscrição do Estado de Minas Gerais---}
function CHKIEMG(const iemg : string):boolean;
var
 npos,i : byte;
 ptotal, psoma : Integer;
 dig1, dig2 : string[1];
 ie, insc : string;
 nresto : SmallInt;
begin
 //
 Result := true;
 ie := alltrim(iemg);
 if (empty(ie))  then exit;
 if copy(ie,1,2) = 'PR' then exit;
 if copy(ie,1,5) = 'ISENT' then exit;

 Result := false;
 If (Trim(iemg)='.') Then Exit;
 if (length(ie) <> 13) then Exit;
 if not IsNumero(ie) then Exit;

 dig1 := copy(ie,12,1);
 dig2 := copy(ie,13,1);
 insc := copy(ie,1,3) + '0' + copy(ie,4,8);
 //  CALCULA DIGITO 1
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   psoma := CharToInt(insc[npos]) * i;
   IF psoma >= 10 then psoma := psoma - 9;
   inc(ptotal,psoma);
   IF i = 2 then i := 0;
   dec(npos);
 end;
 nResto := ptotal mod 10;
 if NResto = 0 then  nResto := 10;
 nResto := 10 - nResto;
 if nResto <> CharToInt(dig1[1]) then exit;

 // CALCULA DIGITO 2
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   if i = 12 then i := 2;
   inc(ptotal, CharToInt(ie[npos]) * i);
   dec(npos);
 end;
 nResto := ptotal mod 11;
 if (nResto = 0) or (nResto = 1) then nResto := 11;
 nResto := 11 - nResto;
 if nResto <> CharToInt(dig2[1]) then exit;
 Result := true;
end;

function ChkIEAC(const ie : string) : Boolean;  // 99.999.999/999-99
{---Valida Inscricao Estadual do ACRE--}
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[13]);
end;

function ChkIEAL(const ie : string) : Boolean; // 24XNNNNND
{Valida Inscricao do Estado de Alagoas---}
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := soma - trunc(soma / 11) * 11;
 if dig = 10 then dig := 0;
 Result := (IntToChar(dig) = ie[09]);
end;

function ChkIEAM(const ie : string) : Boolean;  // 99.999.999-9
{---Inscricao do Estado do Amazonas---}
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 if soma < 11 then dig := 11 - soma else
 begin
   i := (soma mod 11);
   if i <= 1 then dig := 0 else dig := 11 - i;
 end;
 Result := (IntToChar(dig) = ie[09]);
end;

function ChkIEAP(const ie : string) : Boolean; // 999999999
{---Validação do Estado do Amapa---}
var
 p,d, b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 p := 0;
 d := 0;
 i := StrToInt(copy(ie,1,8));
 if (i >= 03000001) and (i <= 03017000) then
 begin
   p := 5;
   d := 0;
 end else
 if (i >= 03017001) and (i <= 03019022) then
 begin
   p := 9;
   d := 1;
 end;
 b := 9;
 soma := p;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig = 10 then dig := 0 else
 if dig = 11 then dig := d;
 Result := (IntToChar(dig) = ie[09]);
end;

function ChkIEBA(const ie : string) : Boolean; // 999999-99
{---Calcula Inscrição da Bahia---}
var
 b, i, soma : Integer;
 nro : array[1..8] of byte;
 NumMod : word;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) <> 8) then exit;
 die := copy(ie,1,8);
 if not IsNumero(die) then exit;
 for i := 1 to 8 do nro[i] := CharToInt(die[i]);
 if nro[1] in [0, 1, 2, 3, 4, 5, 8] then NumMod := 10 else NumMod := 11;
 // calculo segundo
 b := 7;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[8]);
 if not Result then exit;
 // calculo segundo
 b := 8;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 inc(soma, (nro[8] * 2));
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[7]);
end;

function ChkIECE(const ie : string) : Boolean; // 999999999
{---Valida Inscricao do Estado do Ceara---}
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) > 9) then exit;
 if not IsNumero(ie) then exit;
 die := ie;
 if length(ie) < 9 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 9;
 end;
 for i := 1 to 9 do nro[i] := CharToInt(die[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[9]);
end;

function ChkIEDF(const ie : string) : Boolean;  // 999.99999.999.99
{---Valida Inscricao do Estado Distrito Federal---}
var
 b, i, soma : Integer;
 nro : array[1..13] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 13 do nro[i] := CharToInt(ie[i]);
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[13]);
end;

function ChkIEES(const ie : string) : Boolean;  // 99999999-9
{---Valida Inscricao do Estado do Espirito Santo---}
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := soma mod 11;
 if i < 2 then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end;

function ChkIEGO(const ie : string) : Boolean; // 99.999.999.9
var
 n, b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,1,2);
 if (s = '10') or (s = '11') or (s = '15') then
 begin
   for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
   n := trunc(StrToFloat(ie) / 10);
   if n = 11094402 then
   begin
     if (nro[9] = 0) or (nro[9] = 1) then
     begin
       Result := true;
       exit;
     end;
   end;

   b := 9;
   soma := 0;
   for i := 1 to 08 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
   end;
   i := (soma mod 11);
   if i = 0 then dig := 0 else
   if i = 1 then
   begin
     if (n >= 10103105) and (n <= 10119997) then
       dig := 1
     else
       dig := 0;
   end else
   begin
     dig := 11 - i;
   end;
   Result := (dig = nro[9]);
 end;
end;

function ChkIEMA(const ie : string) : Boolean; // 999999999
{---Valida Inscricao do Maranhao---}
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end;

function ChkIEMT(const ie : string) : Boolean;  // 9999999999-9
{---Valida Inscricao do Estado do Mato Grosso---}
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) < 9) then exit;
 die := ie;
 if length(die) < 11 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 11;
 end;
 if not IsNumero(die) then exit;
 for i := 1 to 11 do nro[i] := CharToInt(die[i]);
 b := 3;
 soma := 0;
 for i := 1 to 10 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[11]);
end;

function ChkIEMS(const ie : string) : Boolean; // 999999999
{---Valida Inscricao do Mato Grosso do Sul---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '28' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end;

function ChkIEPA(const ie : string) : Boolean; // 99.999999-9
{---Valida Inscricao do Estado do Para---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '15' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end;

function ChkIEPB(const ie : string) : Boolean; // 99999999-9
{---Valida Inscricao do Estado da Paraiba---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end;

function ChkIEPR(const ie : string) : Boolean; //  99999999-99
{---Valida Inscricao do Estado do Parana---}
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
 b := 3;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
 if not result then exit;

 b := 4;
 soma := 0;
 for i := 1 to 09 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[10]);
end;

function ChkIEPE(const ie : string) : Boolean; // 99.9.999.9999999-9
{---Valida Inscricao do Estado de Pernambuco---}
var
 b, i, soma : Integer;
 nro : array[1..14] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 14) then exit;
{
 if (length(ie) =9) then
    begin
    result:=true;
    exit;
    end;
 }
 if not IsNumero(ie) then exit;
 for i := 1 to 14 do nro[i] := CharToInt(ie[i]);
 b := 5;
 soma := 0;
 for i := 1 to 13 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 0 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig > 9 then dig := dig - 10;
 Result := (dig = nro[14]);
end;

function ChkIEPI(const ie : string) : Boolean; // 999999999
{---Valida o Estado do PIAUI---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end;

function ChkIERJ(const ie : string) : Boolean; // 99.999.99-9
{---Valida Inscricao para o Estado do Rio de Janeiro---}
var
 b, i, soma : Integer;
 nro : array[1..08] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 08) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 08 do nro[i] := CharToInt(ie[i]);
 b := 2;
 soma := 0;
 for i := 1 to 07 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[08]);
end;

function ChkIERN(const ie : string) : Boolean; // 99.999.999-9
{Valida Inscricao para o Estado do Rio Grande do Norte---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := (soma mod 11);
 if (dig = 10) then dig := 0;
 Result := (dig = nro[09]);
end;

function ChkIERS(const ie : string) : Boolean;  // 999.999999-9
{---Valida Inscricao do Estado do Rio Grande do Sul---}
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 i := StrToInt(copy(ie,1,3));
 if (i >= 1) and (i <= 467) then
 begin
   for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
   b := 2;
   soma := 0;
   for i := 1 to 09 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
     if b = 1 then b := 9;
   end;
   dig := 11 - (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[10]);
 end;
end;


function ChkIERO(const ie : string) : Boolean; // 999.99999-9
// Rondônia - versão antiga
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 6;
 soma := 0;
 for i := 4 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b)
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := dig - 10;
 Result := (dig = nro[09]);
end;

function ValidaInscRO(SIE :string): boolean;
// Rondônia - versão nova
var i,x,y,z,j : integer;
  s : string;
begin
  i := 1;    y := 6;
  x := 0;    z := 0;
  j := 0;
  for j := 1 to length(trim(sie))do
      if sie[j] in
['0','1','2','3','4','5','6','7','8','9','0'] then
         s := s + sie[j];
  if not length(s)  <> 14 then begin
     for i := 1 to (14 - length(Trim(s))) do
             s := '0' + trim(s)
  end;
  for i := 1 to (length(s) - 1) do begin
      x := strtoint(s[i])* y;
      z := z + x;
      if y  > 2 then
         dec(y)
      else y := 9;
  end;
  x := z mod 11;
  y := 11 - x;
  if y>9 then
     y:=0;
  if inttostr(y) = s[14] then
     Result := true
  else Result := false;
end;

function ChkIERR(const ie : string) : Boolean; // 99.999999-9
{---Valida Inscrição do Estado de Roraima---}
var
 i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * i);
 end;
 dig := (soma mod 09);
 Result := (dig = nro[09]);
end;

function ChkIESC(const ie : string) : Boolean;  // 999.999.999
{---Valida Inscricao do Estado de Santa Catarina---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end;

function ChkIESP(const ie : string) : Boolean;
{---Valida Inscrição do Estado de São Paulo---}
var
 i, soma : Integer;
 nro : array[1..12] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if UpperCase(copy(ie,1,1)) = 'P' then
 begin
   s := copy(ie,2,9);
   if not IsNumero(s) then exit;
   for i := 1 to 8 do nro[i] := CharToInt(s[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
 end else
 begin
   if (length(ie) < 12) then exit;
   if not IsNumero(ie) then exit;
   for i := 1 to 12 do nro[i] := CharToInt(ie[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
   soma := (nro[1] * 3) + (nro[2] * 2) + (nro[3] * 10) + (nro[4] * 9) +
           (nro[5] * 8) + (nro[6] * 7) + (nro[7] * 6) + (nro[8] * 5) +
           (nro[9] * 4) + (nro[10] * 3) + (nro[11] * 2);

   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[12]);
 end;
end;

function ChkIESE(const ie : string) : Boolean; // 99999999-9
{---Valida Inscrição do Estado de Sergipe---}
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (dig = nro[09]);
end;

function ChkIETO(const ie : string) : Boolean; // 99.99.999999-9
{---Valida Inscrição do Estado do Tocantins---}
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) =9) then
    begin
    result:=true;
    exit;
    end;
 if (length(ie) <> 11) and (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,3,2);
 if (s = '01') or (s = '02') or (s = '03') or (s = '99')  then
 begin
   for i := 1 to 11 do nro[i] := CharToInt(ie[i]);
   b := 9;
   soma := 0;
   for i := 1 to 10 do
   begin
     if (i <> 3) and (i <> 4) then
     begin
       inc(soma, nro[i] * b);
       dec(b);
     end;
   end;
   i := (soma mod 11);
   if (i <= 1) then dig := 0 else dig := 11 - i;
   Result := (dig = nro[11]);
 end;
end;

function ChkInscEstadual(const ie, uf : string) : Boolean;
{---Valida a Inscrição Estadual por Estado---}
var
 duf, die : string;
 nIE      : String;
 I        : Integer;
 soma,
 mult,
 resto    : integer;
begin
  //
  // Result:=False;
  If (Trim(ie)='.') Then Exit;
  //
  duf := UpperCase(uf);
  die := UpperCase(alltrim(ie));
  die:=fdeixanum2(die);

  if (copy(die,1,5) = 'ISENT') or (die = '') then
  begin
    Result := true;
    exit;
  end;
 {
  result := false;

  for I := 1 to Length(IE) - 1 do    // Iterate
  begin
    if ((IE[I] <> '.') and (IE[I] <> '-')) then
       nIE := nIE + IE[I];
  end;    // for

  soma := strtoint(nIE[1]) * 9;
  soma := soma + strtoint(nIE[2]) * 8;
  soma := soma + strtoint(nIE[3]) * 7;
  soma := soma + strtoint(nIE[4]) * 6;
  soma := soma + strtoint(nIE[5]) * 5;
  soma := soma + strtoint(nIE[6]) * 4;
  soma := soma + strtoint(nIE[7]) * 3;
  if Length(IE) = 8 then
      soma := soma + strtoint('0') * 2
  else
     soma := soma + strtoint(nIE[8]) * 2;

  mult := soma * 10;

  resto := mult mod 11;

 if resto >= 1 then
   result := True
 else
   result := false;
}
 if duf = 'AC'  then Result := ChkIEAC(die) else
 if duf = 'AL'  then Result := ChkIEAL(die) else
 if duf = 'AP'  then Result := ChkIEAP(die) else
 if duf = 'AM'  then Result := ChkIEAM(die) else
 if duf = 'BA'  then Result := ChkIEBA(die) else
 if duf = 'CE'  then Result := ChkIECE(die) else
 if duf = 'DF'  then Result := ChkIEDF(die) else
 if duf = 'ES'  then Result := ChkIEES(die) else
 if duf = 'GO'  then Result := ChkIEGO(die) else
 if duf = 'MA'  then Result := ChkIEMA(die) else
 if duf = 'MG'  then Result := ChkIEMG(die) else
 if duf = 'MT'  then Result := ChkIEMT(die) else
 if duf = 'MS'  then Result := ChkIEMS(die) else
 if duf = 'PA'  then Result := ChkIEPA(die) else
 if duf = 'PB'  then Result := ChkIEPB(die) else
 if duf = 'PR'  then Result := ChkIEPR(die) else
 if duf = 'PE'  then Result := ChkIEPE(die) else
 if duf = 'PI'  then Result := ChkIEPI(die) else
 if duf = 'RJ'  then Result := ChkIERJ(die) else
 if duf = 'RN'  then Result := ChkIERN(die) else
 if duf = 'RS'  then Result := ChkIERS(die) else
 if duf = 'RO'  then
    begin
    if ChkIERO(die) then
       result:=true
    else if ValidaInscRO(die) then
       result:=true
    else
       result:=false;
    end
 else
 if duf = 'RR'  then Result := ChkIERR(die) else
 if duf = 'SC'  then Result := ChkIESC(die) else
 if duf = 'SP'  then Result := ChkIESP(die) else
 if duf = 'SE'  then Result := ChkIESE(die) else
 if duf = 'TO'  then Result := ChkIETO(die) else
 Result := false;
end;

procedure AtualizaForm(Sender: TObject; AValue: Boolean);
var
  Cont: Integer;
  VarHint: String;
  CorAzul_Claro: TColor;
  CorAzul_Escuro: TColor;
  CorVerde_Claro: TColor;
  CorVerde_Escuro: TColor;
  CorPreto_Claro: TColor;
  CorPreto_Escuro: TColor;
  CorLaranja_Claro: TColor;
  CorLaranja_Escuro: TColor;
  CorOcre_Claro: TColor;
  CorOcre_Escuro: TColor;
begin
  VarHint := 'Favor clicar no botão Incluir ou Editar';

  for Cont := 0 to TForm(Sender).ComponentCount - 1 do
    begin
      if TForm(Sender).Components[cont] is TDBEdit then
         begin
           TDBEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TDBEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TDBEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
         end;

      if TForm(Sender).Components[cont] is TComboBox then
         begin
           TComboBox(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TComboBox(TForm(Sender).Components[Cont]).ShowHint := not AValue;
         end;

      if TForm(Sender).Components[cont] is TDateEdit then
         begin
           TDateEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TDateEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TDateEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
         end;


      if TForm(Sender).Components[cont] is TDBMemo then
         begin
           TDBMemo(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TDBMemo(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TDBMemo(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
         end;

      if TForm(Sender).Components[cont] is TComboEdit then
         begin
           TComboEdit(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TComboEdit(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TComboEdit(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
         end;


      if TForm(Sender).Components[cont] is TDBRadioGroup then
         begin
           TDBRadioGroup(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TDBRadioGroup(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TDBRadioGroup(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
         end;

      if TForm(Sender).Components[cont] is TMemo then
         begin
           TMemo(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TMemo(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TMemo(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
         end;

      if TForm(Sender).Components[cont] is TEdit then
         begin
           TEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
         end;

      if TForm(Sender).Components[cont] is TCurrencyEdit then
         begin
           TCurrencyEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TCurrencyEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TCurrencyEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
         end;

      if TForm(Sender).Components[cont] is TBitBtn then
         begin
           TBitBtn(TForm(Sender).Components[Cont]).Cursor      := crHandPoint;
           TSpeedButton(TForm(Sender).Components[Cont]).Cursor := crHandPoint;
         end;
     end;
end;


function fPegaValores(Path,Chave:String): String;
var
Lista:TStringList;
i:Integer;
mRetorno:String;
mValorTemp: string;
begin
mRetorno:='';
Lista:=TStringList.Create;
//Recupera Lista de Configurações
Session.GetConfigParams(Path,'',Lista);
//Verifica na lista, onde a chave modificada se encontra
mvalortemp:='';
For i:=0 to Lista.Count-1 do
   BEGIN
   mValorTemp:=mValorTemp+Lista[i];

   END;


For i:=0 to Lista.Count-1 do
   begin
   If Pos(UpperCase(Chave),UpperCase(Lista[i]))<>0 Then
      begin
      mRetorno:=copy(Lista[i],fPosCaractere('=',Lista[i])+1,length(Lista[i])-fPosCaractere('=',Lista[i]));
      break;
      end;
   end;
result:=mRetorno;
end;

function fTestaBDE: Boolean;

//Check(DbiAddAlias(Nil, PChar(\'SGE\'), Nil, PChar(\' AliasPath\'), True));

{var
AParams: TStringList;
x: Integer;

begin
if Session.IsAlias('SGE') then
   begin
   AParams := TStringList.Create;
   try
      Session.GetAliasParams('SGE',AParams);
      begin
   //   AParams.Clear;
   //   AParams.Add(caminho);
   //   Session.ModifyAlias('SGE',AParams);
       mcinst:='';
      for x:=0 to AParams.Count-1 do
         begin
         mcinst:=mcinst+AParams[x]+ ' ';
         end;
      ShowMessage(mcinst);
      Session.SaveConfigFile;
      end;
   finally
      AParams.Free;
      end;
   end;
}
begin
mboolean:=true;
//if fPegaValores('\Drivers\Native\PARADOX','NET DIR')<>mpastadefault then
if fPegaValores('\Drivers\PARADOX\INIT','NET DIR')<>mpastadefault then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','LOW MEMORY USAGE LIMIT'))<>64 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','MAXBUFSIZE'))<>4096 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','MAXFILEHANDLES'))<>96 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','MEMSIZE'))<>32 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','MINBUFSIZE'))<>256 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','SHAREDMEMSIZE'))<>4096 then
   mboolean:=false
else if fsonumero(fPegaValores('\System\Init','BLOB TO CACHE'))<>128 then
   mboolean:=false;

if not mboolean then
   begin
   ModifyBDE('\System\Init','BLOB TO CACHE','128');
   ModifyBDE('\System\Init','LOW MEMORY USAGE LIMIT','64');
   ModifyBDE('\System\Init','MAXBUFSIZE','4096');
   ModifyBDE('\System\Init','MAXFILEHANDLES','96');
   ModifyBDE('\System\Init','MEMSIZE','32');
   ModifyBDE('\System\Init','MINBUFSIZE','256');
   ModifyBDE('\System\Init','SHAREDMEMSIZE','4096');
   ModifyBDE('\Drivers\PARADOX\INIT','NET DIR',mpastadefault);

   end;

result:=mboolean;

end;

procedure ConectarBanco(Sender: TObject; Source: TDataSource);
var
   Cont : integer;
begin
   for Cont := 0 to TForm(Sender).ComponentCount - 1 do begin
      if TForm(Sender).Components[cont] is TDBEdit then
         TDBEdit(TForm(Sender).Components[cont]).DataSource := Source;
      if TForm(Sender).Components[cont] is TDBRadioGroup then
         TDBRadioGroup(TForm(Sender).Components[cont]).DataSource := Source;
      if TForm(Sender).Components[cont] is TDBNavigator then
         TDBNavigator(TForm(Sender).Components[cont]).DataSource := Source;
   end;
end;


function RetiraAcentos ( str: String ): String;
var
i: Integer;
begin
  for i := 1 to Length ( str ) do
  case str[i] of
  'á': str[i] := 'a';
  'é': str[i] := 'e';
  'í': str[i] := 'i';
  'ó': str[i] := 'o';
  'ú': str[i] := 'u';
  'à': str[i] := 'a';
  'è': str[i] := 'e';
  'ì': str[i] := 'i';
  'ò': str[i] := 'o';
  'ù': str[i] := 'u';
  'â': str[i] := 'a';
  'ê': str[i] := 'e';
  'î': str[i] := 'i';
  'ô': str[i] := 'o';
  'û': str[i] := 'u';
  'ä': str[i] := 'a';
  'ë': str[i] := 'e';
  'ï': str[i] := 'i';
  'ö': str[i] := 'o';
  'ü': str[i] := 'u';
  'ã': str[i] := 'a';
  'õ': str[i] := 'o';
  'ñ': str[i] := 'n';
  'ç': str[i] := 'c';
  'Á': str[i] := 'A';
  'É': str[i] := 'E';
  'Í': str[i] := 'I';
  'Ó': str[i] := 'O';
  'Ú': str[i] := 'U';
  'À': str[i] := 'A';
  'È': str[i] := 'E';
  'Ì': str[i] := 'I';
  'Ò': str[i] := 'O';
  'Ù': str[i] := 'U';
  'Â': str[i] := 'A';
  'Ê': str[i] := 'E';
  'Î': str[i] := 'I';
  'Ô': str[i] := 'O';
  'Û': str[i] := 'U';
  'Ä': str[i] := 'A';
  'Ë': str[i] := 'E';
  'Ï': str[i] := 'I';
  'Ö': str[i] := 'O';
  'Ü': str[i] := 'U';
  'Ã': str[i] := 'A';
  'Õ': str[i] := 'O';
  'Ñ': str[i] := 'N';
  'Ç': str[i] := 'C';
end;
Result := str;
end;    

function fSubstituirtexto(pTexto,pLocaliza,pSubstitui: String): String;
{var
x: Integer;
}
begin
result  := StringReplace(ptexto, plocaliza, psubstitui, [rfReplaceAll, rfIgnoreCase]);

//pTexto:=UpperCase(ptexto);
//pLocaliza:=UpperCase(pLocaliza);
//pSubstitui:=UpperCase(pSubstitui);
{
if pos(plocaliza,pSubstitui)>0 then
   begin
   x:=Pos(pLocaliza, pTexto);
   pTexto:=copy(pTexto,1,x-1) +pSubstitui+
          copy(ptexto,x+length(plocaliza),length(ptexto)-x+length(plocaliza)-1);
   end
else
   begin
   While Pos(pLocaliza, pTexto)>0 do
      begin
      x:=Pos(pLocaliza, pTexto);
      pTexto:=copy(pTexto,1,x-1) +pSubstitui+
             copy(ptexto,x+length(plocaliza),length(ptexto)-x+length(plocaliza)-1);
      end;
   end;

result:=ptexto;
}
end;


function fTextaNome( pTexto: String): String;

//Insere um Caracter qtd vezes em uma string
var
  x: Integer;
  nt: String;
  tecla: Char;
  qtd: integer;
begin
nt:='';
qtd:=length(pTexto);
for x:=1 to Qtd do
   begin
   tecla:=ptexto[x];
   if (tecla in ['A'..'Z']) or (tecla in ['a'..'z']) or (tecla in ['0'..'9']) then
      nt:=nt+tecla
   else
      nt:=nt+'_';
   end;
if nt=pTexto then
   result:=''
else
   result:=nt;
end;


function fTextaNome2( pTexto: AnsiString): AnsiString;

//Insere um Caracter qtd vezes em uma string
var
  x: Integer;
  nt: AnsiString;
  tecla: Char;
  qtd: integer;
begin
nt:='';
qtd:=length(pTexto);
for x:=1 to Qtd do
   begin
   tecla:=ptexto[x];
   if (tecla in ['A'..'Z']) or (tecla in ['a'..'z']) or (tecla in ['0'..'9'] ) or (tecla in ['<','>','?','/','\','.',',','=','"',':','-','+','*','%',' '] )  then
      nt:=nt+tecla
   else
      nt:=nt+'_';
   end;
result:=nt;
end;


function fcriarPastas(pNomePasta: String): Boolean;
var
x: Integer;
y: Integer;
mAchou:Boolean;
begin
if (copy(pNomePasta,1,2)='\\') or (length(pNomePasta)<3) then
   begin
   result:=true;
   exit;
   end;
if pNomePasta[2]=':' then
   y:=4
else
   y:=1;
mAchou:=False;
for x:=y to length(pNomePasta) do
   begin
   if pNomePasta[x]='\' then
      begin
      if mAchou then
         begin
         if not DirectoryExists(copy(pNomePasta,1,x-1)) then
            CreateDir(copy(pNomePasta,1,x-1));
         end
      else
         mAchou:=true;
      end;
   end;
if mAchou then             
   CreateDir(pNomePasta);
result:=true;
end;

function TodasPrimeirasMaiusculas(x:string):string;
var
y:string;
i:integer;
begin
for i := 1 to length(x) do
   begin
   if (x[i-1] = ' ') and (x[i+1]<>' ') and (x[i+2]<>' ') then
      y:= y +uppercase(x[i])
   else
      y:=y+x[i];
   end;
y:=uppercase(copy(x,0,1)) + y;
delete(y,2,1);
result:=y;
end;


function fPrimeiraMaiscula(pTexto: String): String;
begin
pTexto:=LowerCase(pTexto);
pTexto:=UpperCase(copy(ptexto,1,1))+copy(pTexto,2,length(pTexto)-1);
Result:=pTexto;
end;

{
function Criptografar(pTexto:String):String;
var
 I        : Byte;
 Chave    : Word;
 Texto    : String;
begin
 Chave := 16854;
 for I := 1 to Length(pTexto) do begin
     Texto := Texto+char(Byte(pTexto[I]) xor (Chave shr 8));
     Chave := (Byte(Texto[I]) + Chave) * C1 + C2;
 end;
 Result := Texto;
end;


function Descriptografar(pTexto:String):String;
var
 I     : Byte;
 Chave : Word;
 Texto : String;
Begin
 Chave := 16854;
 for I := 1 to Length(pTexto) do begin
     Texto := Texto+char(Byte(pTexto[I]) xor (Chave shr 8));
     Chave := (Byte(Texto[I]) + Chave) * C1 + C2;
 end;
 Result := Texto;
End;
}

//luiz fernando
function troca_dados(a_trocar: String; a_inserir: String; frase: String): String;
var
  Count_Letra: Integer;
  Count_Char : Integer;
  txt        : String;
  retorno    : String;
begin
Count_Letra:=0;
Count_Char :=1;
txt:='';
retorno:='';
count_letra:=length(frase);
while (Count_Char < Count_Letra) or  (Count_Char < Count_Letra) do
  begin
  txt:=Copy(frase,Count_Char,1);
  if txt=a_trocar then
    begin
    retorno:=retorno+'+';
    end
  else
    begin
    retorno:=retorno+txt;
    end;
  Count_Char:=Count_Char+1;
  end;
Result:=retorno;
end;

function SALVA_NOME(pasta:string; nome: string):String;
var
  x: integer;
begin
x:=0;
//if not copy(pasta,Length(pasta),1)='\'then
//  pasta:=pasta+'\';
if not DirectoryExists(pasta) then
  begin
  CreateDirectory(pchar(pasta),0);
  end;
while FileExists(pasta+nome+inttostr(x)) do
  begin
  x:=x+1;
  end;

Result:=pasta+nome+inttostr(x);
end;

function codemp2(CAMPO:string; Empresa: Integer):String;
begin

if Empresa<100 then
  begin
  result:='and (('+CAMPO+'='+inttostr(Empresa)+') or ('+CAMPO+'=10'+inttostr(Empresa)+'))';
  end
else
  begin
  result:='and (('+CAMPO+'='+copy(inttostr(Empresa),2,1)+') or ('+CAMPO+'=10'+copy(inttostr(Empresa),2,1)+'))';
  end;

end;

function pega_codigo(Busca, Caracter: String):String;
var
  count: integer;
  caracter_: String;
  txt: String;
begin
caracter_:='';
txt:='';
count:=1;
while caracter_<>Caracter do
  begin
  txt:=trim(txt+caracter_);
  caracter_:=Copy(busca,count,1);
  count:=count+1;
  end;
Result:=txt;
end;

function Coloca_ListBox(tabela,campo1,codigo1,campo2 : string; Box :TlistBox; Query_:TQuery):TListBox;
var
  X,Y : Integer;
  RET : String;
  Box2 :TlistBox;
begin
Box2:=Box;
X:=Box.Items.Count;
Y:=0;
tabela :=trim(tabela);
campo1 :=trim(campo1);
codigo1:=trim(codigo1);
campo2 :=trim(campo2);
Query_.Close;
Query_.SQL.Clear;
Query_.SQL.Add(' select '+campo1+','+campo2+' from '+tabela+ ' where '+campo1+'='+chr(39)+codigo1+chr(39));
try
  Query_.Open;
  if Query_.IsEmpty then
    begin
    fmensagem('Registro Inexistente!!!!',0,['0'],0);
    Result:=Box2;
    Exit;
    end;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query_.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;
if X>0 then
  begin
  while X>(Y) do
    begin
    RET:=pega_codigo(Box.Items[Y],'-');
    if (Query_.FieldByName(campo1).AsString  = RET) then
      begin
//      ShowMessage('Ja Foi Preenchido!');
      Result:=Box2;
      Exit;
      end
    else
      begin
      if X>(Y+1) then
        begin
        Y:=Y+1;
        end
      else
        begin
        Box.Items.Add(Query_.FieldByName(campo1).AsString+' - '+Query_.FieldByName(campo2).AsString);
        Y:=Y+1;
        end;
      end;
    end;
  end
else
  begin
  Box.Items.Add(Query_.FieldByName(campo1).AsString+' - '+Query_.FieldByName(campo2).AsString);
  end;
Result:=Box;
end;

function funcao_OR_ListBox(Box: TListBox; Campo: String; Operacao: Integer):String;
var
 CONT: Integer;
 OP,SQL:   String;
begin
// 0 PARA IGUAL
// 1 PARA DIFERENTE
if Operacao=0 then
  begin
  OP:='=';
  end
else if Operacao=1 then
  begin
  OP:='<>';
  end;
CONT:=0;
SQL:='';
if Box.Items.Count=1 then
  begin
  SQL:=(' and '+Campo+OP+pega_codigo(Box.Items[CONT],'-'));
  end
else if Box.Items.Count>1 then
  begin
  SQL:=(' and ( '+Campo+OP+pega_codigo(Box.Items[CONT],'-'));
  CONT:=1;
  while CONT < Box.Items.Count do
    begin
    if Operacao=0 then
      begin
      SQL:=SQL+(' or '+Campo+OP+pega_codigo(Box.Items[CONT],'-'));
      end
    else
      begin
      SQL:=SQL+(' and '+Campo+OP+pega_codigo(Box.Items[CONT],'-'));
      end;
    CONT:=CONT+1;
    end;
    SQL:=SQL+(' ) ');
  end;
Result:=SQL;
end;

function BUSCA_VALOR(tabela,campo1,codigo1,campo2 : string; Query_:TQuery): String;
var
  RET : String;
begin
tabela :=trim(tabela);
campo1 :=trim(campo1);
codigo1:=trim(codigo1);
campo2 :=trim(campo2);
Query_.Close;
Query_.SQL.Clear;
Query_.SQL.Add(' select '+campo1+','+campo2+' from '+tabela+ ' where '+campo1+'='+chr(39)+codigo1+chr(39));
try
  Query_.Open;
  RET:=Query_.fieldbyName(campo1).AsString+' - '+Query_.fieldbyName(campo2).AsString;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query_.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;
Result:=RET;
end;

function BUSCA_VALOR2(tabela,campo1,codigo1,campo2 : string; Query_:TQuery): String;
var
  RET : String;
begin
tabela :=trim(tabela);
campo1 :=trim(campo1);
codigo1:=trim(codigo1);
campo2 :=trim(campo2);
Query_.Close;
Query_.SQL.Clear;
Query_.SQL.Add(' select '+campo1+','+campo2+' from '+tabela+ ' where '+campo1+'='+chr(39)+codigo1+chr(39));
try
  Query_.Open;
  RET:=Query_.fieldbyName(campo2).AsString;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query_.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;
Result:=RET;
end;
function Excel_Imp_StrGrid(St_Grid: TStringGrid; Arquivo: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  Planilha, Sheet: OLEVariant;
  Planilha_temp: Variant;
  linha, coluna, linha_temp, coluna_temp: Integer;
begin
Result:=False;
//Cria Excel- OLE Object
Planilha:=CreateOleObject('Excel.Application');
try
  //Esconde Excel
  Planilha.Visible:=False;
  //Abre o Workbook
  Planilha.Workbooks.Open(Arquivo);
  Sheet:=Planilha.Workbooks[ExtractFileName(Arquivo)].WorkSheets[1];
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
  //Pegar o número da última linha
  linha:=Planilha.ActiveCell.Row;
  //Pegar o número da última coluna
  coluna:=Planilha.ActiveCell.Column;
  //Seta Stringgrid linha e coluna
  St_Grid.RowCount:=linha;
  St_Grid.ColCount:=coluna;
  //Associaca a variant WorkSheet com a variant do Delphi
  Planilha_temp:=Planilha.Range['A1', Planilha.Cells.Item[linha, coluna]].Value;
  //Cria o loop para listar os registros no TStringGrid
  linha_temp:=1;
  repeat
    for coluna_temp:=1 to coluna do
      St_Grid.Cells[(coluna_temp - 1),(linha_temp - 1)]:=Planilha_temp[coluna_temp, linha_temp];
    Inc(linha_temp,1);
  until linha_temp > linha;
  Planilha_temp:=Unassigned;
finally
  //Fecha o Excel
  if not VarIsEmpty(Planilha) then
    begin
    Planilha.Quit;
    Planilha:=Unassigned;
    Sheet:=Unassigned;
    Result:=True;
    end;
  end;
end;

function Excel_Exp_DbGrid(Grid: TDBGrid; Query_Grid: TQuery; Cabecalho: String):Boolean;
var
  linha, coluna : integer;
  planilha : variant;
  valorcampo : string;
begin
Query_Grid.CachedUpdates := true;
planilha:= CreateoleObject('Excel.Application');
planilha.WorkBooks.add(1);
planilha.caption :=Cabecalho;
planilha.visible := true;
Query_Grid.ApplyUpdates;
Query_Grid.First;
for linha := 0 to Query_Grid.RecordCount - 1 do
  begin
  for coluna := 1 to Query_Grid.FieldCount do
    begin
    valorcampo := Query_Grid.Fields[coluna - 1].AsString;
    planilha.cells[linha + 2,coluna] := valorCampo;
    end;
  Query_Grid.Next;
  end;
for coluna := 1 to Query_Grid.FieldCount do
  begin
  valorcampo := Query_Grid.Fields[coluna - 1].DisplayLabel;
  planilha.cells[1,coluna] := valorcampo;
  end;
planilha.columns.Autofit;
end;

function Campo_Calculado(Query_: TQuery; Campo,Tabela,Campo_Condicao,Valor_Codicao: String):String;
begin
Query_.Close;
Query_.SQL.Clear;
Query_.SQL.Add(' select '+Campo+ ' from '+Tabela+' where '+Campo_Condicao+'='+chr(39)+Valor_Codicao+chr(39));
try
  Query_.Open;
  Result:=Query_.FieldByName(Campo).AsString;
  Exit;
except
  error:=SALVA_NOME('C:\SGE\ERROSQL\','EX');
  Query_.SQL.SaveToFile(error);
  fmensagem('Gerado Errosql '+error,0,['0'],0);
  end;
end;

function Format_ValFloat(Valor: String):String;
begin
Result:=FormatFloat(mcasaspu,ValFloat(Valor));
end;

function Instrucao_SQL(instrucao: String; Query_instrucao: TQuery):String;
begin
Query_instrucao.close;
Query_instrucao.SQL.Clear;
Query_instrucao.SQL.add(instrucao);
try
  Query_instrucao.ExecSQL;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query_instrucao.SQL.SaveToFile(error);
  fmensagem('Erro ao executar instrucao',0,['0'],0);
  end;
end;

function BAIXA_ESTOQUE(table: TQuery; tabela: string; campo_codpro: string; codpro: string; campo_grade: string; grade: string; campo_estoque: string; estoque: string; campo_prat: string; op: integer ) : Boolean;
var
  total_s: Integer;
  total_p: integer;
begin;
table.Close;
table.sql.Clear;
table.sql.Add(' select sum('+campo_estoque+'), sum('+campo_prat+') from '+tabela);
table.sql.add(' where '+campo_codpro+'='+codpro);
IF (campo_grade<>' ') or (campo_grade<>'') THEN
  BEGIN
  table.sql.add(' and '+campo_grade+'='+CHR(39)+grade+CHR(39));
  END;
try
  table.Open;
except
  table.SQL.SaveToFile(mpastatemp + 'errosql.txt');
  end;
if op=1 then
  begin
  total_s:=table.fieldbyname('sum('+campo_estoque+')').AsInteger+strtoint(estoque);
  total_p:=table.fieldbyname('sum('+campo_prat+')').AsInteger+strtoint(estoque);
  end
else
  begin
  total_s:=table.fieldbyname('sum('+campo_estoque+')').AsInteger-strtoint(estoque);
  total_p:=table.fieldbyname('sum('+campo_prat+')').AsInteger-strtoint(estoque);
  end;
table.Close;
table.SQL.Clear;
table.SQL.Add(' update '+tabela+' set '+campo_estoque+'='+inttostr(total_s));
table.SQL.Add(' ,'+campo_prat+'='+IntToStr(total_p));
table.SQL.Add(' where '+campo_codpro+'='+codpro);
if trim(campo_grade)<>'' then
  begin
  table.SQL.Add(' and '+campo_grade+'='+grade);
  end;
try
  table.ExecSQL;
except
  table.SQL.SaveToFile(mpastatemp + 'errosql.txt');
  end;
end;

function Ajusta_Casas(qtd_casas: Integer) : String;
begin
if qtd_casas=1 then
  begin
  Result:=mcasaspu;
  end
else if qtd_casas=2 then
  begin
  Result:='#,##0.00';
  end
else if qtd_casas=3 then
  begin
  Result:='#,###0.000';
  end
else if qtd_casas=4 then
  begin
  Result:='#,####0.0000';
  end
else if qtd_casas=5 then
  begin
  Result:='#,#####0.00000';
  end
else if qtd_casas=6 then
  begin
  Result:='#,######0.000000';
  end
else if qtd_casas=7 then
  begin
  Result:='#,#######0.0000000';
  end
else if qtd_casas=8 then
  begin
  Result:='#,########0.00000000';
  end;
end;


function total_pedido(Query_temp: TQuery; chave_p, lotseq_p, ordem_p : Integer): Integer;
begin
Query_temp.Close;
Query_temp.SQL.Clear;
Query_temp.SQL.Add(' select max(p1chave) as p1chave, max(p1numnf) as p1numnf, max(p1datanf) as p1datanf, '
                  +' sum(p1totall) as p1totall, max(p1codcli) as p1codcli, max(p1status) as p1status,    '
                  +' min(p1codemp) as p1codemp, max(p1lotseq) as p1lotseq, max(p1formace) as p1formace   '
                  +' from CADP01 where p1chave=0'+inttostr(chave_p)+' and p1lotseq=0'+IntToStr(lotseq_p)+''
                  +' and p1ordem=0'+IntToStr(ordem_p)+' and p1status < 9                                 ');
Query_temp.Open;
Result:=Query_temp.fieldbyname('P1FORMACE').AsInteger;
end;

function COMPLETA_COM(Texto, Caracter: String; Qtd, Local: Integer): String;
begin
while length(Texto)<Qtd do
  begin
  if local=0 then
    begin
    Texto:=Caracter+Texto;
    end
  else if local=1 then
    begin
    Texto:=Texto+Caracter;
    end;
  end;
Result:=Copy(Texto,1,Qtd);
end;

function Pega_Componente(Formulario: TForm; Nome: String): TObject;
var
  Count1: Integer;
  Count2: Integer;
begin
for Count1:=0 to Screen.FormCount - 1 do
  begin
  if UpperCase(Screen.Forms[Count1].Name)=UpperCase(Formulario.Name) then
    begin
    Count2:=0;
    while not Count2<=Screen.CustomForms[Count1].ComponentCount-1 do
      begin
      if UpperCase(Screen.CustomForms[Count1].Components[Count2].Name)=UpperCase(Nome) then
        begin
        Result:=Screen.CustomForms[Count1].Components[Count2];
        Exit;
        end;
      Count2:=Count2+1;
      end;
    end;
  end;
end;

function MEmpresa(Tabela,Campo: String; Empresas: TCheckListBox): String;
var
  Emps: Real;
begin
Result:='';
if DM1.Qr_TID.Locate('TINOME',Tabela,[]) then
  begin
  if DM1.Qr_TIDTIQTD.AsInteger=1 then
    begin
    Result:=fEmpresas_Selecionadas(Tabela,Campo,Empresas);
    end;
  end
else
  begin
  Result:='(';
  Empresas.ItemIndex:=0;
  while Empresas.ItemIndex < Empresas.Count -1 do
    begin
    if Empresas.Checked[Empresas.ItemIndex]=true then
      begin
      Emps:= ValFloat(copy(Empresas.items[Empresas.ItemIndex],1,7));
      if Emps>0 then
        begin
        if length(Result)>2 then
          Result:=Result+' or ';
        if Emps<100 then
          begin
          Result:=Result+'('+Campo+'='+FloatToStr(Emps);
          Result:=Result+' or '+Campo+'='+FloatToStr(Emps+100)+')';
          end
        else
          begin
          Result:=Result+'('+Campo+'='+FloatToStr(Emps);
          Result:=Result+' or '+Campo+'='+FloatToStr(Emps-100)+')';
          end;
        end;
      end;
    Empresas.ItemIndex:=Empresas.ItemIndex+1;
    end;
  Result:=Result+')';
  end;
//fRetInstMECadastro
//iif(,'and PDCODEMP=P2CODEMP ','')
//iif(fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and ')
//fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)
end;

{
function CMovPro(pFilial: Integer;pCodpro: Real;pLote,pFormulario: String;pTipoMov,pSaldoA,pQtd: Real; pObserv:String): Boolean;
begin
Result:=False;
DM1.Tb_MovPro.Active:=True;
DM1.Tb_MovPro.Insert;
DM1.Tb_MovProCMPCODPRO.AsFloat   :=pCodpro;
DM1.Tb_MovProCMPFILIAL.AsFloat   :=pFilial;
DM1.Tb_MovProCMPLOTE.AsString    :=pLote;
DM1.Tb_MovProCMPFORM.AsString    :=pFormulario;
DM1.Tb_MovProCMPTPMOV.AsFloat    :=pTipoMov;
DM1.Tb_MovProCMPESTANT.AsFloat   :=pSaldoA;
DM1.Tb_MovProCMPQTD.AsFloat      :=pQtd;
DM1.Tb_MovProCMPOBS.AsString     :=pObserv;
DM1.Tb_MovPro.Post;
Result:=True;
end;
}
function todatechar(campo: String): String;
begin
result:='to_date(to_char('+campo+','+chr(39)+fdt2+chr(39)+'))';
end;

function CarregaNivel : TNivPro;
var
  lstString: TStringList;
  IntCnt: Integer;
begin
lstString := TStringList.Create;
Assert(Assigned(lstString));

lstString.Clear;
lstString.Add('00 - Mercadoria para Revenda');
lstString.Add('01 - Matéria-Prima');
lstString.Add('02 - Embalagem');
lstString.Add('03 - Produto em Processo');
lstString.Add('04 - Produto Acabado');
lstString.Add('05 - Subproduto');
lstString.Add('06 - Produto Intermediario');
lstString.Add('07 - Matérial de Uso e Consumo');
lstString.Add('08 - Ativo Imobilizado');
lstString.Add('09 - Serviço');
lstString.Add('10 - Outros Insumos');
lstString.Add('99 - Outras');



SetLength(Result, lstString.Count);
for IntCnt := 0 to lstString.Count -1 do
  Result[IntCnt] := lstString.Strings[IntCnt];
end;

function CarregaCQPedCompra : TCQPedCompra;
var
  lstString: TStringList;
  IntCnt: Integer;
begin
lstString := TStringList.Create;
Assert(Assigned(lstString));
lstString.Clear;
lstString.Add('PRAZO ESTABELECIDO PARA ENTREGA?');
lstString.Add('QUANTIDADE DE MATERIAL CONFERE COM NFE?');
lstString.Add('LOTE DO MATERIAL CONFERE COM NFE?');
lstString.Add('VALIDADE SUPERIOR A 12 MESES?');
lstString.Add('EMBALAGEM POSSUI DANO?');
lstString.Add('EMPILHAMENTO MAXIMO?');
lstString.Add('PRODUTO DE GELADEIRA? T.ºC ADEQUADA?');
lstString.Add('ESPECIFICAÇÃO DO MATERIAL?');
lstString.Add('TEM CONDIÇÃO DE INTEGRAR O ESTOQUE?');
lstString.Add('POSSUI LAUDO?');
SetLength(Result, lstString.Count);
for IntCnt := 0 to lstString.Count -1 do
  Result[IntCnt] := lstString.Strings[IntCnt];
end;

function CarregaCQPedVenda : TCQPedVenda;
var
  lstString: TStringList;
  IntCnt: Integer;
begin
lstString := TStringList.Create;
Assert(Assigned(lstString));
lstString.Clear;
lstString.Add('PRODUTO DE GELADEIRA? T.ºC ADEQUADA?');
lstString.Add('EMBALAGEM POSSUI DANO?');
lstString.Add('VALIDADE SUPERIOR A 12 MESES?');
lstString.Add('LOTE DO MATERIAL CONFERE COM PEDIDO?');
lstString.Add('MEDICAMENTO CONTROLADO?');
lstString.Add('ETIQUETAÇÃO?');
lstString.Add('CAMINHAO COM FICHA DE INSPEÇÃO?');
lstString.Add('OBS?');
SetLength(Result, lstString.Count);
for IntCnt := 0 to lstString.Count -1 do
  Result[IntCnt] := lstString.Strings[IntCnt];
end;


function CarregaCST_IPI : TCST_IPI;
var
  lstString: TStringList;
  IntCnt: Integer;
begin
lstString := TStringList.Create;
Assert(Assigned(lstString));

lstString.Clear;
lstString.Add('00 - Entrada com recuperação de crédito');
lstString.Add('01 - Entrada tributada com alíquota zero');
lstString.Add('02 - Emtrada isenta');
lstString.Add('03 - Entrada não tributada');
lstString.Add('04 - Entrada imune');
lstString.Add('05 - Entrada com suspensão');
lstString.Add('49 - Outras entradas');
lstString.Add('50 - Saída tributada');
lstString.Add('51 - Saída tributada com alíquota zero');
lstString.Add('52 - Saída isenta');
lstString.Add('53 - Saída não tributada');
lstString.Add('54 - Saída imune');
lstString.Add('55 - Saída com suspensão');
lstString.Add('99 - Outras Saída');

SetLength(Result, lstString.Count);
for IntCnt := 0 to lstString.Count -1 do
  Result[IntCnt] := lstString.Strings[IntCnt];

end;

function CarregaView(Nome: String): String;
var
 RegX: Integer;
 RegNome: String;
begin
RegNome:='';;
DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select table_name from user_tables where table_name ');
DM1.Query1.SQL.Add(' like '+chr(39)+Nome+'%'+chr(39));
DM1.Query1.SQL.Add(' order by table_name ');
DM1.Query1.Open;
RegX:=DM1.Query1.RecordCount;
if RegX>=5 then
  begin
  DM1.Query1.First;
  while RegX>0 do
    begin
    DM1.Query5.Close;
    DM1.Query5.SQL.Clear;
    DM1.Query5.SQL.Add('drop table '+DM1.Query1.FieldByName('table_name').AsString);
    DM1.Query5.ExecSQL;
    DM1.Query1.Next;
    RegX:=RegX-1;
    end;
  end;
RegNome:=Nome+IntToStr(RegX+1);
Result:=RegNome;
end;

function Verificar_Financeiro(Dia: TDate): Boolean;
var
  Data: TDate;
  DtStr : String;
  TempView: String;
  xCodemp : String;
begin
Result:=False;
try
  if (Dia <> Null) or (Dia + 365 <= Now) then
    Data := Dia
  else
    Data := Now - 7;
except
  Data := Now - 7;
  end;
DtStr :=FormatDateTime('DD/MM/YYYY',Data);
TempView:=CarregaView('TEMP_FIN');

if codemp>100 then
  xCodemp:=IntToStr(codemp-100)
else
  xCodemp:=IntToStr(codemp);

DM1.Tb_GerFin.Close;
DM1.Tb_GerFin.SQL.Clear;
DM1.Tb_GerFin.SQL.Add(' CREATE OR REPLACE VIEW '+TempView+' AS              '
                  +'    SELECT P1CHAVE AS CHAVE1, P1LOTSEQ AS LOTSEQ,       '
                  +'           P1CODEMP AS CODEMP, SUM(P1TOTALL) AS VALOR1, '
                  +'           0 AS VALOR2                                  '
                  +'    FROM CADP01                                         '
                  +'    WHERE P1DATDOC>='+CHR(39)+DtStr+CHR(39)
                  +'          AND P1STATUS<'+mstatus_excluido
                  +'          AND P1EMIDOC=1 AND (P1NUMNF>0 OR P1NUMCF>0)   '
                  +'          AND (P1CODEMP='+IntToStr(CODEMP)
                  +'              or P1CODEMP='+IntToStr(CODEMP+100)+')     '
                  +'    GROUP BY P1CHAVE, P1LOTSEQ, P1CODEMP                '
                  +' UNION                                                  '
                  +'    SELECT CRNPED AS CHAVE1,CRLOTSEQ_CP AS LOTSEQ,      '
                  +'           CRCODEMP AS CODEMP, 0 AS VALOR1,             '
                  +'           SUM(CRVALOR) AS VALOR2           '
                  +'    FROM CADDAR                                         '
                  +'    WHERE CRDTEMIS>='+CHR(39)+DtStr+CHR(39)
                  +'          AND CRNPED>0                                  '
                  +'          AND (CRCODEMP='+IntToStr(CODEMP)
                  +'              or CRCODEMP='+IntToStr(CODEMP+100)+')     '
                  +'    GROUP BY CRNPED, CRLOTSEQ_CP, CRCODEMP              ');
Try
  DM1.Tb_GerFin.ExecSQL;
Except
  Exit;
  end;

DM1.Tb_GerFin.Close;
DM1.Tb_GerFin.SQL.Clear;
DM1.Tb_GerFin.SQL.Add(' SELECT CHAVE1, LOTSEQ, CODEMP, SUM(VALOR1) AS V1, SUM(VALOR2) AS V2');
DM1.Tb_GerFin.SQL.Add(' FROM '+TempView );
DM1.Tb_GerFin.SQL.Add(' GROUP BY CHAVE1, LOTSEQ, CODEMP   ');
DM1.Tb_GerFin.SQL.Add(' HAVING SUM(VALOR1)<>SUM(VALOR2) ');
DM1.Tb_GerFin.SQL.Add(' ORDER BY CHAVE1 ');
DM1.Tb_GerFin.Open;
While not DM1.Tb_GerFin.Eof do
  begin
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add('  select sum(crvalor) as valor              '
                    +'  from old_caddar                           '
                    +'  where crnped='+DM1.Tb_GerFin.FieldByName('CHAVE1').AsString
                    +'  and crlotseq_cp='+DM1.Tb_GerFin.FieldByName('LOTSEQ').AsString
                    +'  and crstatus=9                            '
                    +'  and (crcodemp='+IntToStr(CODEMP)
                    +'       or crcodemp='+IntToStr(CODEMP+100)+')');
  DM1.Query2.Open;
  if DM1.Tb_GerFin.FieldByName('V1').AsFloat-DM1.Query2.FieldByName('VALOR').AsFloat
     <>DM1.Tb_GerFin.FieldByName('V2').AsFloat then
    begin
    Application.CreateForm(TFrm_Gerdup, Frm_Gerdup);
    Frm_GerDup.edt_lotseq.Text :=DM1.Tb_GerFin.FieldByName('LOTSEQ').AsString;
    Frm_GerDup.CHAVEPED.Text:=DM1.Tb_GerFin.FieldByName('CHAVE1').AsString;
    Frm_GerDup.mAceitaPergunta:=false;
    Frm_GerDup.bbAjustar.Click;
    try
      Frm_GerDup.Free;
      Frm_GerDup:=nil;
    except
      end;
    end;
   DM1.Tb_GerFin.Next;
  end;
Result:=True;
end;

function PrgRodando(Executavel: WideString): Boolean; Export; StdCall;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(Executavel)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(Executavel))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function ServiceGetList(sMachine : string;dwServiceType,dwServiceState : DWord;
                        slServicesList : TStrings) : boolean;
const
cnMaxServices = 4096;
type
  TSvcA = array[0..cnMaxServices] of TEnumServiceStatus;
  PSvcA = ^TSvcA;
var
  j : integer;
  schm          : SC_Handle;
  nBytesNeeded,
  nServices,
  nResumeHandle : DWord;
  ssa : PSvcA;
begin
Result := false;
schm := OpenSCManager(PChar(sMachine),Nil,SC_MANAGER_ALL_ACCESS);
if(schm > 0)then
  begin
  nResumeHandle := 0;
  New(ssa);
  EnumServicesStatus(schm,dwServiceType,dwServiceState,ssa^[0],SizeOf(ssa^),
                     nBytesNeeded,nServices,nResumeHandle);
  for j := 0 to nServices-1 do
    begin
    slServicesList.Add(StrPas(ssa^[j].lpDisplayName));
    end;
  Result := true;
  Dispose(ssa);
  CloseServiceHandle(schm);
  end;
end;


function PrgIniciacao(Nome, Executavel: WideString): Boolean; Export; StdCall;
var
  Reg: TRegistry;
begin
try
  // Inicializa a variavel do tipo TRegistry
  Reg:= TRegistry.Create;
  // Define a hirearquia das pasta, a qual irá trabalhar.
  Reg.RootKey:= HKEY_LOCAL_MACHINE;
  // Cria/entra, dentro da pasta do registro no qual irá aguardar informação
  Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', False);
  // Escreve a informção na chave
  // NomeDaChave, pode ser qualquer nome que você queira
  Reg.WriteString(Nome,Executavel);
  // Fecha a chave do registro
  Reg.CloseKey;
finally
  Reg.Free;
  end;
end;

function GetComputers(Modelo: Integer; Workgroup : String;Retorno:TListBox):Boolean;
Var
  EnumHandle                : THandle;
  WorkgroupRS               : TNetResource;
  Buf                       : Array[1..500] of TNetResource;
  BufSize                   : cardinal;
  Entries                   : CARDINAL;
  Resultado                 : dword;
begin
if Modelo=0 then
  Retorno.Items.Clear;
Workgroup := Workgroup + #0;
FillChar(WorkgroupRS, SizeOf(WorkgroupRS) , 0);
With WorkgroupRS do
  begin
  dwScope := 2;
  dwType := 3;
  dwDisplayType := 1;
  dwUsage := 2;
  lpRemoteName := @Workgroup[1];
  end;

WNetOpenEnum( RESOURCE_GLOBALNET,
              RESOURCETYPE_ANY,
              0,
              @WorkgroupRS,
              EnumHandle );
Repeat
  Entries := 1;
  BufSize := SizeOf(Buf);
  Resultado := WNetEnumResource(EnumHandle,Entries,@Buf,BufSize);
  if (Resultado = NO_ERROR) and (Entries = 1) then
    begin
    Retorno.Items.Add(StrPas(Buf[1].lpRemoteName));
    end;
Until (Entries <> 1) or (Resultado <> NO_ERROR);
WNetCloseEnum(EnumHandle);
end;  { Find All computers }

Function GetIP(WebHostName:string):string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
begin
WSAStartup(2, WSAData);
HostEnt := gethostbyname(PChar(WebHostName));
with HostEnt^ do
  begin
  Result := Format('%d.%d.%d.%d',
  [Byte(h_addr^[0]),Byte(h_addr^[1]),
  Byte(h_addr^[2]),Byte(h_addr^[3])]);
  end;
WSACleanup;
end;


Function Gerar_Caddar_Conf(pcodemp, plotseq, pordem, pvalor, pchave: Real): Boolean;
var
  xTotal: Integer;
begin
Result:=False;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select max(CRCSEQ) as Max from CADDAR_CONF ');
DM1.Query1.Open;
xTotal:=DM1.Query1.FieldByName('Max').AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('  insert into CADDAR_CONF (           '
                  +'  crccodemp, crclotseq, crcordem,     '
                  +'  crcvalor, crcverificado, crcchave,  '
                  +'  crcseq ) VALUES ( :crccodemp,       '
                  +'  :crclotseq, :crcordem, :crcvalor,   '
                  +'  :crcverificado, :crcchave, :crcseq) ');
DM1.Query1.ParamByName('CRCCODEMP').AsFloat     :=pcodemp;
DM1.Query1.ParamByName('CRCLOTSEQ').AsFloat     :=plotseq;
DM1.Query1.ParamByName('CRCORDEM' ).AsFloat     :=pordem;
DM1.Query1.ParamByName('CRCVALOR' ).AsFloat     :=pvalor;
DM1.Query1.ParamByName('CRCVERIFICADO').AsString:='N';
DM1.Query1.ParamByName('CRCCHAVE' ).AsFloat     :=pchave;
DM1.Query1.ParamByName('CRCSEQ'   ).AsInteger   :=xTotal;
try
  DM1.Query1.ExecSQL;
  Result:=True;
except
  fmensagem('Erro ao criar CADDAR_CONF',0,['0'],0);
  end;
end;


Function MacAddress: string;
var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;
begin
Result := '';
Lib := LoadLibrary('rpcrt4.dll');
if Lib <> 0 then
  begin
  @Func := GetProcAddress(Lib, 'UuidCreateSequential');
  if Assigned(Func) then
    begin
    if (Func(@GUID1) = 0) and
       (Func(@GUID2) = 0) and
       (GUID1.D4[2] = GUID2.D4[2]) and
       (GUID1.D4[3] = GUID2.D4[3]) and
       (GUID1.D4[4] = GUID2.D4[4]) and
       (GUID1.D4[5] = GUID2.D4[5]) and
       (GUID1.D4[6] = GUID2.D4[6]) and
       (GUID1.D4[7] = GUID2.D4[7]) then
      begin
      Result :=
        IntToHex(GUID1.D4[2], 2) + '-' +
        IntToHex(GUID1.D4[3], 2) + '-' +
        IntToHex(GUID1.D4[4], 2) + '-' +
        IntToHex(GUID1.D4[5], 2) + '-' +
        IntToHex(GUID1.D4[6], 2) + '-' +
        IntToHex(GUID1.D4[7], 2);
      end;
    end;
  end;
end;

{Function ModMatematico(Val1: Real): Real;
begin
if Val1<0 then
  Val1:=Val1*(-1);
Result:=Val1;
end;}

function vThread(NomeThread: String): Boolean;
begin
try
  DM1.Tb_ExTh.Close;
  DM1.Tb_ExTh.SQL.Clear;
  DM1.Tb_ExTh.SQL.Add(' select * from CADEXTH where NOMETHREAD='+chr(39)+NomeThread+chr(39));
  DM1.Tb_ExTh.SQL.Add(' and (STATUS=0 or STATUS=1) ');
  DM1.Tb_ExTh.Open;
  if DM1.Tb_ExTh.IsEmpty then
    begin
    result:=True;
    end
  else
    begin
    if DM1.Tb_ExThHORAINICIO.AsDateTime+90> Now then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                        +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                        +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                        +' and ENDERMAC=:pENDERMAC ');
      DM1.Query1.ParamByName('pCODEMP').AsInteger:=codemp;
      DM1.Query1.ParamByName('pNOMETHREAD').AsString:=NomeThread;
      DM1.Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
      DM1.Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
      DM1.Query1.ParamByName('pHORAFIM').AsDateTime:=Now;
      DM1.Query1.ParamByName('pSTATUS').AsInteger:=3;
      DM1.Query1.ExecSQL;
      result:=True;
      end
    else
      begin
      result:=False;
      end;
    end;
except
  result:=False;
  end;
end;

function MesExtenso( Mes:Word ) : string;
const
meses : array[0..11] of PChar = ('Jan','Fev','Mar','Abr',
                                 'Mai','Jun','Jul','Ago',
                                 'Set','Out','Nov','Dez');
begin
result := meses[mes-1]; 
End;

{
function ValidaEan(CodigoEan : String) : Boolean;
var
  CheckSum, DigitoOrig : String;
  i, Digito, Longitud  : Integer;
begin
Longitud := Length(CodigoEan);
//if not ((Longitud <> 8) and (Longitud <> 13)) then
if (Longitud = 13) then
  begin
  DigitoOrig := Copy(CodigoEan, Longitud, 1);
  CodigoEan := Copy(CodigoEan, 1, Longitud - 1);
  CheckSum := '131313131313';
  Digito := 0;
  for i := 1 to Longitud - 1 do
    Digito := Digito + (StrToInt(Copy(CodigoEan, i, 1)) * StrToInt(Copy(CheckSum, i, 1)));
  Digito := StrToInt(Copy(IntToStr(Digito), Length(IntToStr(Digito)),1));
  if Digito > 0 then
    Digito := 10 - Digito;
  Result := (Digito = StrToInt(DigitoOrig));
  end
else
  Result := True;
end;
 }


{
function ValidaEan13(CodigoEan : String) : Boolean;
var
  CheckSum, DigitoOrig : String;
  i, Digito, Longitud  : Integer;
begin
Longitud := Length(CodigoEan);
//if not ((Longitud <> 8) and (Longitud <> 13)) then
if (Longitud = 13) then
  begin
  DigitoOrig := Copy(CodigoEan, Longitud, 1);
  CodigoEan := Copy(CodigoEan, 1, Longitud - 1);
  CheckSum := '131313131313';
  Digito := 0;
  for i := 1 to Longitud - 1 do
    Digito := Digito + (StrToInt(Copy(CodigoEan, i, 1)) * StrToInt(Copy(CheckSum, i, 1)));
  Digito := StrToInt(Copy(IntToStr(Digito), Length(IntToStr(Digito)),1));
  if Digito > 0 then
    Digito := 10 - Digito;
  Result := (Digito = StrToInt(DigitoOrig));
  end
else
  Result := false;
end;
}



function ValidaEan13(pValidarPrefixo: boolean; CodigoEan : String) : Boolean;
var
  i, soma, resultado, base10: integer;
     function fValidarPrefixo: boolean;
     var
     query_pref: tQuery;
     mprefixo: string;
     begin
     mprefixo:=copy(CodigoEan,1,3);

     query_pref:=tQuery.create(nil);
     query_pref.databasename:=DM1.SG_ASSOC.databasename;
     query_pref.SQL.add('select * from  CADPREFIXGTIN where CPPREFIXFIN>='+mprefixo
                       +' AND CPPREFIXINI<='+mprefixo);
     try
        query_pref.open;

     except on e : exception do
        begin
        ex_erroSql_Novo(query_pref,31545,'SGE','CADMOV_PROD_REPETIDO');
        end;
        end;
     Result:=query_pref.isempty=false;
     query_pref.close;
     freeandnil(query_pref);
     end;
begin
CodigoEan := Insere(CodigoEan,'0',13);
  //Verifica se todos os caracteres de AGTIN são números
  for i:= 1 to Length(CodigoEan) do
    if not (CodigoEan[i] in ['0'..'9']) then
    begin
      Result:= False;
      Exit;
    end;
  //Verifica se CodigoEan tem o tamanho necessário
  if Length(CodigoEan) in [8,12,13,14] then
  begin
    soma:= 0;
    for i:= 1 to (Length(CodigoEan) -1) do
    begin
      if Length(CodigoEan) = 13 then
      begin
        if Odd(i) then
          soma:= soma + (strtoint(CodigoEan[i]) * 1)
        else
          soma:= soma + (strtoint(CodigoEan[i]) * 3);
      end
      else
      begin
        if Odd(i) then
          soma:= soma + (strtoint(CodigoEan[i]) * 3)
        else
          soma:= soma + (strtoint(CodigoEan[i]) * 1);
      end;
    end;
    base10:= soma;
    //Verifica se base10 é múltiplo de 10
    if not (base10 mod 10 = 0) then
    begin
      while not (base10 mod 10 = 0) do
      begin
        base10:= base10 + 1;
      end;
    end;
    resultado:= base10 - soma;
    //Verifica se o resultado encontrado é igual ao caractere de controle
    if resultado = strtoint(CodigoEan[Length(CodigoEan)]) then
       begin
       if pValidarPrefixo=true then
          result:=fValidarPrefixo
       else
          Result:= True;
       end
    else
      Result:= False;
  end
  else
    Result:= False;
end;
function EnviarEmailNFCEeBoleto(pCodemp, pLotseq, pChave: Integer;pModelo: string; pAnexarBoletos, pDireto: Boolean; out PMensagem: String): boolean;

var
Query_Cons: TADOQuery;
mmensagem: string;
mArquivos: TStringList;
mNomeXml_NFE: String;

x_email: integer;
form_aguarde: tFrm_Agde;
form_enviaremail: TFrm_EnviarEmail;



   procedure pfechartudo;
   begin
   if query_cons<>nil then
      begin
      query_cons.Close;
      freeandnil(query_cons);
      end;
   if mArquivos<>nil then
      begin
      freeandnil(marquivos);
      end;
   end;


   function fSalvarBoletos(pNomeArquivo: String): Boolean;
   var
   form_ebol_dar: TFrm_EBol;
   x_print: integer;
   begin
   application.createform(TFrm_ebol,   form_ebol_dar);


   form_ebol_dar.Tb_Dup.Close;
   form_ebol_dar.Tb_Dup.Sql.Clear;
   form_ebol_dar.Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
                       +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE,CRCODBCO, '

                       +'       CRINST01,CRINST02,CRINST03,CRINST04, '
                       +'       CRVALOR,CRDESCF,CRDTDESCF,CRJURD,CRDESCD,'
                       +'       CRNFACUM,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV,CRID_NEW '
                       +' ,CRMULTA,CRQTDDM, CRCODFPGTO '
                       +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO '
                       +' from caddar where CRSTATUS<>9 ');
   if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      form_ebol_dar.Tb_Dup.SQl.add(' and  CRCODEMP=0'+Inttostr(pCodemp));
   form_ebol_dar.Tb_Dup.SQL.Add(' and CRNPED=0'+Inttostr(pChave)
                      +' and CRLOTSEQ_CP='+Inttostr(pLotseq));

   form_ebol_dar.Tb_Dup.sql.add(' and CRCODBCO>0 ');
   form_ebol_dar.Tb_Dup.sql.add(' and length(CRNOSNUM)>2 ');

   form_ebol_dar.Tb_Dup.SQL.add(' Order by CRDTVCTO');
   try
      form_ebol_dar.Tb_Dup.Open;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(form_ebol_dar.Tb_Dup,13450,'_stru '+e.message,'user');
      PMensagem:=PMensagem+e.Message+#13;
      pfechartudo;
      result:=false;
      end;
      end;


   if not form_ebol_dar.Tb_Dup.IsEmpty then
      begin
      form_ebol_dar.Tb_Dup.First;
      if not form_ebol_dar.Tb_Dup.Eof then
         begin
         if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
            begin
            form_ebol_dar.mDadosBoleto.pTipo  :=1;
            form_ebol_dar.mDadosBoleto.pCodEmp:=pCodemp;
            form_ebol_dar.mDadosBoleto.pCodBco:=form_ebol_dar.tb_dup.fieldbyname('CRCODBCO').AsInteger;
            form_ebol_dar.mDadosBoleto.pNumIni:=0;
            form_ebol_dar.mDadosBoleto.pNumFin:=0;
            form_ebol_dar.mDadosBoleto.pDtIni :=pdatanula;
            form_ebol_dar.mDadosBoleto.pDtFin :=pdatanula;
            form_ebol_dar.mDadosBoleto.pParc  :=form_ebol_dar.tb_dup.fieldbyname('CRDESD').Value;
            form_ebol_dar.mDadosBoleto.pPend  :=true;
            form_ebol_dar.mDadosBoleto.pChavePed  :=pChave;
            form_ebol_dar.mDadosBoleto.pLotSeqPed :=pLotseq;
            form_ebol_dar.femibol(form_ebol_dar.mDadosBoleto);
            end
         else
            begin
            if FileExists('\SGE\LOGBAN.JPG') then
               DeleteFile('\SGE\LOGBAN.JPG');
            form_ebol_dar.Tb_Dup.First;
            form_ebol_dar.fCarregardadosboletos(1);
            fGerarEvento('gerou o novo arquivo padrao do boleto '+DM4.Tb_Par01PBOL_PADRAO.asstring);
            if DM4.Tb_Par01PBOL_PADRAO.Value=2 then
               begin
               if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                  begin
                  DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  end;
               if flcadimp_sys(1,pCodemp,0,'BOLETAS_LA') then
                  begin
                  for x_print:=0 to Printer.printers.Count-1 do
                     begin
                     if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x_print] then
                        begin
                        RLPrinter.PrinterIndex:=x_print;
                        break;
                        end
                     end;
                  end;
               try
                 if pNomeArquivo<>'' then
                    begin
                    form_ebol_dar.RL_BOLETAS.SaveToFile(pNomeArquivo)
                    end
                 else
                    begin
                    fGerarEvento('2720 imprimindo direto '+pNomeArquivo);
                    form_ebol_dar.RL_BOLETAS.PreviewModal;
                    end
               except ON E: Exception do
                  PMensagem:=PMensagem+'Erro ao Tentar Imprimir a Boleta Grande!' + e.message +#13;
                  end;
               end
            else
               begin
               if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                  begin
                  DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  end;
               if flcadimp_sys(1,pCodemp,0,'BOLETAS_LA') then
                  begin
                  for x_print:=0 to Printer.printers.Count-1 do
                     begin
                     if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x_print] then
                        begin
                        RLPrinter.PrinterIndex:=x_print;
                        break;
                        end
                     end;
                  end;
               try
                 if pNomeArquivo<>'' then
                    form_ebol_dar.RL_BOLETAS.SaveToFile(pNomeArquivo)
                 else
                    begin
                     fGerarEvento('2742 no preview modal');
                    form_ebol_dar.RL_BOLETAS.PreviewModal;
                    END
               except
                  fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
                  end;
               end;
            end;
         end;
      end;
  end;


begin
if pDireto then
   begin
   Application.createform(TFrm_agde, form_aguarde);
   form_aguarde.Label1.Caption:='Aguarde enviando email!';
   form_aguarde.show;
   verteclado(0);
   end;

pMensagem:='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');

query_Cons:=TADOQuery.Create(nil);
query_Cons.Connection:=DM1_ADO.ADOConnection1;
query_Cons.Close;
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT,NSSTATUS '
                  +',NSCODCLI,NSNFE_XML_CLIENTE,CRAZAO,NSID_PED01_NEW from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +'  NSCODEMP='+IntToStr(pCodemp)
                  +'  and NSLOTSEQ_CP='+IntToStr(pLotseq)
                  +'  and NSCHAVEP='+IntToStr(pChave)
                  +'  and NSTIPO<2 '
                  );
try
   query_Cons.Open;
except ON E: Exception do
   begin
   ex_erroSql_ado(query_Cons,1668,'_stru '+e.message,'user');
   PMensagem:=PMensagem+e.Message+#13;
   pfechartudo;
   result:=false;
   end;
   end;
if query_cons.IsEmpty then
   begin
   PMensagem:=PMensagem+'Documento não Encontrado chave '+Inttostr(pChave)+'/'+IntToStr(pLotseq)+#13;
   pfechartudo;
   exit;
   end;
if Query_Cons.FieldByName('NSSTATUS').AsInteger=9 then
   begin
   PMensagem:=PMensagem+'Documento excluido Numero NF '+Query_Cons.FieldByName('NSNUMERO').AsString+' chave '+Inttostr(pChave)+'/'+IntToStr(pLotseq)+#13;
   pfechartudo;
   exit;
   end;

if not DirectoryExists('C:\SGE\DANFE') then
   CreateDir('C:\SGE\DANFE');
if Query_Cons.FieldByName('NSNFE_XML_CLIENTE').IsNull then
   begin
   PMensagem:=PMensagem+'XML não Encontrado chave '+Inttostr(pChave)+'/'+IntToStr(pLotseq)+#13;
   pfechartudo;
   exit;
   end;
mNomeXml_NFE:=fValidarArquivoParaSalvar('c:\sge\DANFE\'+Query_Cons.FieldByName('NSNUMERO').AsString+'-NFE','.XML');
(query_cons.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile(mNomeXml_NFE);

Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
mArquivos:=TStringList.Create;


mArquivos.Add(fValidarArquivoParaSalvar('C:\SGE\DANFE\'+Query_Cons.fieldbyname('NSNUMERO').AsString+'-NFE','.PDF'));
mArquivos.Add(mNomeXml_NFE);


Frm_NFE_Impressao.mLerDadosXml.pSalvarPDFPara:=mArquivos[0];
Frm_NFE_Impressao.mLerDadosXml.pSalvarXmlPara:='';
Frm_NFE_Impressao.mLerDadosXml.pNomeArq      :='';
Frm_NFE_Impressao.mLerDadosXml.pChave        :=pchave;
Frm_NFE_Impressao.mLerDadosXml.pChaveAno     :=pLotseq;
Frm_NFE_Impressao.mLerDadosXml.pCodEmp       :=pCodemp;
Frm_NFE_Impressao.mLerDadosXml.pCodBcoCob    :=0;
Frm_NFE_Impressao.mLerDadosXml.pModelo       :='';
Frm_NFE_Impressao.mLerDadosXml.pEnviar       :=false;
Frm_NFE_Impressao.mLerDadosXml.pId_new       :=query_cons.fieldbyname('NSID_PED01_NEW').AsInteger;

Frm_NFE_Impressao.fLerdadosXml(Frm_NFE_Impressao.mLerDadosXml,mmensagem);
FreeandNil(Frm_NFE_Impressao);

mArquivos.Add(fValidarArquivoParaSalvar('C:\SGE\DANFE\'+Query_Cons.fieldbyname('NSNUMERO').AsString+'-BOLETO','.PDF'));

fSalvarBoletos(mArquivos[mArquivos.count-1]);



Application.CreateForm(Tfrm_enviaremail,form_enviaremail);
form_enviaremail.EdtAssunto.Text:='NOTA FISCAL '+Query_Cons.FieldbyName('NSNUMERO').AsString;
form_enviaremail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
form_enviaremail.mmMensagem.Lines.Add(' NUMERO..:'+Query_Cons.FieldbyName('NSNUMERO').AsString);
form_enviaremail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+FormatDateTime(fdt, Query_Cons.fieldbyname('NSDTEMIS').AsDateTime));
form_enviaremail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Query_Cons.FieldbyName('NSNFE_CHAVEACESSO').AsString+Query_Cons.FieldbyName('NSNFE_CHAVEACESSO').AsString);
form_enviaremail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Query_Cons.FieldbyName('NSNFE_NUMPROT').AsString);
form_enviaremail.mmMensagem.Lines.Add(' ');
form_enviaremail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
for x_email:=0 to mArquivos.Count-1 do
   begin
   if FileExists(mArquivos[x_email]) then
      form_enviaremail.lbxAnexos.Items.Add(mArquivos[x_email]);
   end;
form_enviaremail.Tipo:=0;
form_enviaremail.CliFor:=Query_Cons.FieldbyName('NSCODCLI').AsString;
if pDireto then
   begin
   form_enviaremail.fAtualizardadosIniciais(true);
   if not form_enviaremail.fEnviarDireto(mmensagem) then
      begin
      freeandnil(form_aguarde);
      verteclado(0);
      MessageDlg(mmensagem,mtWarning,[mbOk],0);
      end
   else
      begin
      freeandnil(form_aguarde);
      verteclado(0);
      MessageDlg('E-mail enviado!',mtInformation,[mbOk],0);

      end;


   end
else
   form_enviaremail.ShowModal;
if form_enviaremail<>nil then
   begin
   try
      FreeandNil(form_enviaremail);
   except
      end;   
   end;
for x_email:=0 to mArquivos.Count-1 do
   begin
   if FileExists(mArquivos[x_email]) then
      DeleteFile(pchar(mArquivos[x_email]));
   end;
pfechartudo;


end;

function InserirEmAnalise(PF2L_CODEMP, PF2L_CODPRO, PF2L_LOTSEQ, PF2L_CHAVE, PF2L_ITEM,
       PF2L_LOTE, PF2L_DTFAB, PF2L_DTVCTO, PF2L_QTD, PF2L_LOTE_RE,
       PF2L_STATUS_ANALISE, PF2L_STATUS_ANALISE_MOTIVO: String):Boolean;
var
  Query_Analise: TQuery;
begin
Result:=False;

Query_Analise:=TQuery.Create(nil);
Query_Analise.DatabaseName:='SG_ASSOC';

Query_Analise.Close;
Query_Analise.SQL.Clear;
Query_Analise.SQL.Add(' select * from CADPF2_LOTES_ORC where PF2L_CHAVE='+QuotedStr(PF2L_CHAVE)
                     +' and PF2L_CODPRO='+QuotedStr(PF2L_CODPRO)+' and PF2L_LOTE='+QuotedStr(PF2L_LOTE)
                     +' and PF2L_LOTE_RE='+QuotedStr(PF2L_LOTE_RE));
Query_Analise.Open;
if Query_Analise.IsEmpty then
  begin
  Query_Analise.Close;
  Query_Analise.SQL.Clear;
  Query_Analise.SQL.Add(' insert into CADPF2_LOTES_ORC (PF2L_CODEMP, PF2L_CODPRO, '
                       +' PF2L_LOTSEQ, PF2L_CHAVE, PF2L_ITEM, PF2L_LOTE, '
                       +' PF2L_DTFAB, PF2L_DTVCTO, PF2L_QTD, PF2L_LOTE_RE, '
                       +' PF2L_STATUS_ANALISE, PF2L_STATUS_ANALISE_MOTIVO) '
                       +' values (:PF2L_CODEMP, :PF2L_CODPRO, :PF2L_LOTSEQ, '
                       +' :PF2L_CHAVE, :PF2L_ITEM, :PF2L_LOTE, :PF2L_DTFAB, '
                       +' :PF2L_DTVCTO, :PF2L_QTD, :PF2L_LOTE_RE, '
                       +' :PF2L_STATUS_ANALISE, :PF2L_STATUS_ANALISE_MOTIVO)');
  end
else
  begin
  Query_Analise.Close;
  Query_Analise.SQL.Clear;
  Query_Analise.SQL.Add(' update CADPF2_LOTES_ORC set PF2L_CODEMP=:PF2L_CODEMP, '
                       +' PF2L_CODPRO=:PF2L_CODPRO, PF2L_LOTSEQ=:PF2L_LOTSEQ, '
                       +' PF2L_CHAVE=:PF2L_CHAVE,PF2L_ITEM=:PF2L_ITEM,'
                       +' PF2L_LOTE=:PF2L_LOTE, PF2L_DTFAB=:PF2L_DTFAB, '
                       +' PF2L_DTVCTO=:PF2L_DTVCTO, PF2L_QTD=:PF2L_QTD, '
                       +' PF2L_LOTE_RE=:PF2L_LOTE_RE, PF2L_STATUS_ANALISE=:PF2L_STATUS_ANALISE, '
                       +' PF2L_STATUS_ANALISE_MOTIVO=:PF2L_STATUS_ANALISE_MOTIVO ');
  end;
Query_Analise.ParamByName('PF2L_CODEMP').AsString:= PF2L_CODEMP;
Query_Analise.ParamByName('PF2L_CODPRO').AsString:=PF2L_CODPRO;
Query_Analise.ParamByName('PF2L_LOTSEQ').AsString:=PF2L_LOTSEQ;
Query_Analise.ParamByName('PF2L_CHAVE').AsString:=PF2L_CHAVE;
Query_Analise.ParamByName('PF2L_ITEM').AsString:=PF2L_ITEM;
Query_Analise.ParamByName('PF2L_LOTE').AsString:=PF2L_LOTE;
Query_Analise.ParamByName('PF2L_DTFAB').AsString:=PF2L_DTFAB;
Query_Analise.ParamByName('PF2L_DTVCTO').AsString:=PF2L_DTVCTO;
Query_Analise.ParamByName('PF2L_QTD').AsString:=PF2L_QTD;
Query_Analise.ParamByName('PF2L_LOTE_RE').AsString:=PF2L_LOTE_RE;
Query_Analise.ParamByName('PF2L_STATUS_ANALISE').AsString:=PF2L_STATUS_ANALISE;
Query_Analise.ParamByName('PF2L_STATUS_ANALISE_MOTIVO').AsString:=PF2L_STATUS_ANALISE_MOTIVO;
try
  Query_Analise.ExecSQL;
  Result:=True;
except
  Result:=False;
  end;
FreeAndNil(Query_Analise);
end;

function SalvarGrid(Formulario: String; Grid: TDBGrid): Boolean;
var
  xcolumns: integer;
begin
Result:=False;
try
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from CADINFGRID where GFORMULARIO='+QuotedStr(Formulario));
  DM1.Query1.SQL.Add(' and GNOMEGRID = '+QuotedStr(Grid.Name));
  DM1.Query1.ExecSQL;

  DM1.Tb_InfGrid.Open;
  for xcolumns:=0 to Grid.Columns.Count -1 do
    begin
    DM1.Tb_InfGrid.Insert;
    DM1.Tb_InfGridGCODEMP.AsInteger   :=codemp;
    DM1.Tb_InfGridGCODUSR.AsInteger   :=codusr;
    DM1.Tb_InfGridGFORMULARIO.AsString:=Formulario;
    DM1.Tb_InfGridGNOMEGRID.AsString  :=Grid.Name;
    DM1.Tb_InfGridGCOLUMN.AsInteger   :=xcolumns;
    DM1.Tb_InfGridGFIELD.AsString     :=Grid.Columns[xColumns].FieldName;
    DM1.Tb_InfGridGTITLE.AsString     :=Grid.Columns[xColumns].Title.Caption;
    DM1.Tb_InfGridGWIDTH.AsInteger    :=Grid.Columns[xColumns].Width;
    DM1.Tb_InfGrid.Post;
    end;
  Result:=True;
except
  end;
end;

function CarregarGrid(Formulario: String; Grid: TDBGrid): Boolean;
begin
Result:=False;
try



  DM1.Tb_InfGrid.Close;
  DM1.Tb_InfGrid.SQL.Clear;
  DM1.Tb_InfGrid.SQL.Add(' select * from CADINFGRID where GFORMULARIO='+QuotedStr(Formulario));
//  DM1.Tb_InfGrid.SQL.Add(' and GCODUSR='+IntToStr(codusr)+' and GFORMULARIO='+QuotedStr(Formulario));
  DM1.Tb_InfGrid.SQL.Add(' and GNOMEGRID = '+QuotedStr(Grid.Name));
  DM1.Tb_InfGrid.Open;
  while not DM1.Tb_InfGrid.Eof do
    begin
    if ((DM1.Tb_InfGridGCOLUMN.AsInteger)<=(Grid.Columns.Count - 1)) then
      begin
      Grid.Columns[dm1.Tb_InfGridGCOLUMN.AsInteger].FieldName     :=dm1.Tb_InfGridGFIELD.AsString;
      Grid.Columns[dm1.Tb_InfGridGCOLUMN.AsInteger].Width         :=dm1.Tb_InfGridGWIDTH.AsInteger;
      Grid.Columns[dm1.Tb_InfGridGCOLUMN.AsInteger].Title.Caption :=dm1.Tb_InfGridGTITLE.AsString;
      end;
    DM1.Tb_InfGrid.Next;
    end;
  Result:=True;
except
  end;
end;

function DuplicarItem(Tabela, Chave, ValorChave, Condicao: String): Real;
var
  filds: String;
  SqlInsert: String;
  Cod: String;
  i : Integer;
query_exe: TQuery;
begin
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
Result:=-1;
try
  query_exe.Close;
  query_exe.SQL.Clear;
  query_exe.SQL.Add('select * from user_tab_columns ');
  query_exe.SQL.Add(' where table_name='+QuotedStr(Tabela));
  query_exe.SQL.Add(' and column_name<>'+QuotedStr(Chave));
  query_exe.SQL.Add(' and (data_type<>'+QuotedStr('LONG')+' and DATA_TYPE<>'+QuotedStr('LONG RAW')+')');
  if LowerCase(Tabela)='CADPRO' then
     begin
     query_exe.SQL.Add(' AND NOT COLUMN_NAME LIKE '+QuotedStr('%SALDO%'));
     end;


  query_exe.Open;
  while not query_exe.Eof do
    begin
    if filds='' then
      filds:=query_exe.FieldByName('COLUMN_NAME').AsString
    else
      filds:=filds+','+query_exe.FieldByName('COLUMN_NAME').AsString;
    query_exe.Next;
    end;

  if trim(ValorChave)='' then
     begin
     While true do
        begin

        Cod:=QuotedStr(FloatToStr(flBuscarCodigos(0,Tabela)));
        if Tabela='CADPRO' then
           begin
           if not fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+fdeixanum(Cod),query_consulta) then
              break
           else
              continue;
           end
        else
           break;
        end;
     end
  else
    Cod:=QuotedStr(ValorChave);
  SqlInsert:= ' insert into '+Tabela+' ('+Chave+','+filds+') '
             +' select '+COD+' as '+Chave+','+filds+' from '+Tabela+' where '+Condicao;
  query_exe.Close;
  query_exe.SQL.Clear;
  query_exe.SQL.Add(SqlInsert);
  query_exe.ExecSQL;
  Result:=ValFloat(COD);
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  query_exe.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;
freeandnil(query_exe);
end;

function ProcessoRodando(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TamanhoArquivo(Arquivo: String): Integer;
begin
with TFileStream.Create(Arquivo,fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
    Free;
  end;
end;

function UploadFile(_SqlQuery: TSQLQuery; NomeArquivo: String; Arquivo: String) : Boolean;
begin
try
  DM_MYSQL.SQLQuery1.Close;
  DM_MYSQL.SQLQuery1.SQL.Clear;
  DM_MYSQL.SQLQuery1.SQL.Add('delete from upload where NOME='+QuotedStr(Arquivo));
  DM_MYSQL.SQLQuery1.ExecSQL();

  DM_MYSQL.SQLQuery1.Close;
  DM_MYSQL.SQLQuery1.SQL.Clear;
  DM_MYSQL.SQLQuery1.SQL.Add('insert into upload (nome, tamanho, arquivo) '
                       +' values (:pnome, :ptamanho, :parquivo)');

  DM_MYSQL.SQLQuery1.ParamByName('pnome').AsString    :=UpperCase(NomeArquivo);
  DM_MYSQL.SQLQuery1.ParamByName('ptamanho').AsInteger:=TamanhoArquivo(Arquivo);
  DM_MYSQL.SQLQuery1.ParamByName('parquivo').LoadFromFile(Arquivo,ftBlob);
  DM_MYSQL.SQLQuery1.ExecSQL();
  Result := True;
except
  Result := False;
  end;
end;

function GerarArquivoGson(Query: TQuery; NomeArquivo: String): Boolean;
var
  f: TextFile;
  mlinha: String;
  mlinha2: String;
  x: integer;
begin
Result:=False;
if FileExists(NomeArquivo) then
  DeleteFile(pAnsiChar(NomeArquivo));
AssignFile(f,NomeArquivo);
Rewrite(f);
Query.First;
mlinha:='[';
while not Query.Eof do
  begin
  if mlinha<>'[' then
    mlinha:=mlinha+',';
  mlinha2:='{';
  for x:=0 to Query.FieldCount -1 do
    begin
    if mlinha2<>'{' then
      mlinha2:=mlinha2+',';
    mlinha2:=mlinha2+'"'+Query.Fields[x].FieldName+'":"'+Query.Fields[x].AsString+'"';
    end;
  mlinha2:=mlinha2+'}';
  mlinha:=mlinha+mlinha2;
  Query.next;
  end;
mlinha:=mlinha+']';
Writeln(f,mlinha);
closefile(f);
Result:=True;
end;

function killtask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then 
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;
//luiz fernando

function fSeparaQtdCodproNovo(pCampo: String): tQtdCodPro;

var
x: integer;
begin
result.qtde:=1;
result.codigo:=valfloat(pCampo);
for x:=1 to length(pCampo) do
   begin
   if pCampo[x]='*' then
      begin
      result.codigo:=ValFloat(copy(pcampo,1,x-1));
      result.qtde:=valfloat(copy(pcampo,x+1,length(pcampo)-x));
      break;
      end;
   end;

end;



function fSeparaQtdCodpro(pCampo: String;pLeitor: Boolean): String;
// se for pleitor se 0 retorna 1
var
  x: Integer;
  codpro: String;
begin
pRet_Qtd:=0;
codpro:=pCampo;
for x:=1 to length(pCampo) do
   begin
   if pCampo[x]='*' then
      begin
      pRet_Qtd:=ValFloat(copy(pcampo,1,x-1));
      codpro:=trim(copy(pcampo,x+1,length(pcampo)-x));
      break;
      end;
   end;

if (pRet_Qtd=0) and (pleitor) then
   pRet_Qtd:=1;

result:=codpro;

end;

function SetDecimalSeparator(Ch: Char):Boolean;
var
  DefLCID: LCID;
  Buffer: LPSTR;
begin
  Application.UpdateFormatSettings := True;
  StrPCopy(Buffer, Ch);
  DefLCID := GetThreadLocale;
  if SetLocaleInfo(DefLCID, LOCALE_SDecimal, Buffer) then
    DecimalSeparator := StrPas(Buffer)[1];
  Application.UpdateFormatSettings := False;
end;
function fAtualizaForm(pTipo: Integer): boolean;
var
  x: Integer;
begin
result:=true;
exit;
{
for x:=0 to Screen.FormCount-1 do
   begin
   if LowerCase(Screen.Forms[x].Name)='frm_ppal' then
      continue;
   SetWindowPos (Screen.Forms[x].Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
   end;
}
end;

function tbKeyIsDown(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

function EstaoPressionadas(const Key:  array of integer): boolean;
var
mResult:boolean;
x: Integer;
begin
mresult:=false;
for x:=0 to high(key) do
   begin
   mresult:=GetKeyState(Key[x]) and 128 > 0;
   if mresult=false then
      break;
   end;
result:=mresult;
end;



procedure CORRIGE_HORADATA;
Var
    DataBanco : TDateTime;
    DataHora: TSystemTime;
    Ano, Mes, Dia,
    H, M, S, Mil: word;
begin

     DM1.Query1.CLOSE;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.Add('Select sysdate from dual ');
     DM1.Query1.open;
     DataBanco := DM1.Query1.Fields[0].AsDateTime;
     DecodeDate(DataBanco, Ano, Mes, Dia);
     DecodeTime(DataBanco, H, M, S, Mil);
    with DataHora do
    begin
        wYear   := Ano;
        wMonth  := Mes;
        wDay    := Dia;
        wHour   := H;        wMinute := M;        wSecond := S;        wMilliseconds := Mil;        DM1.Query1.Close;
        SetLocalTime(DataHora);
    end;

end;

procedure GetDirList(Directory: String; var Result: TStrings;
IsRecursive: Boolean);
var
   Sr : TSearchRec;

   procedure Recursive(Dir : String); { Sub Procedure, Recursiva }
   var
      SrAux : TSearchRec;
   begin
     if SrAux.Name = EmptyStr then
        FindFirst(Directory + '\' + Dir + '\*.*', faDirectory, SrAux);
     while FindNext(SrAux) = 0 do
        if SrAux.Name <> '..' then
           if DirectoryExists(Directory + '\' + Dir + '\' + SrAux.Name) then
           begin
              Result.Add(Directory + '\' + Dir + '\' + SrAux.Name);
              Recursive(Dir + '\' + SrAux.Name);
           end;
   end;
begin
   FindFirst(Directory + '\*.*', faDirectory, Sr);
   while FindNext(Sr) = 0 do
   if Sr.Name <> '..' then
   if DirectoryExists(Directory + '\' + Sr.Name) then
   begin
      Result.Add(Directory+'\'+Sr.Name);

      if IsRecursive then
         Recursive(Sr.Name);
   end;

end;

function fBuscarValor(pCampo: Integer;pTexto:String): String;
var
mValorEnc: String;
mCampoAtivo: Integer;
x,mtam:Integer;
begin
mtam:=length(pTexto);
mCampoAtivo:=0;
mValorEnc:='';
for x:=1 to mtam do
   begin
   if pTexto[x]='|' then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;

// operacao: 0-Inclusao segue os padroes
// operacao: 1-Exclusao ao contrario


function fPartionarArquivo(pNomeArq: String): Integer;
const MaxFileSize = 50*1024; //50Kb

var
NomeArquivo, NomeArquivosFilhos: TFileName;
Arquivo: TStream;
I, FileSize: Integer;
Buffer: array[0..MaxFileSize -1] of Byte;
begin
NomeArquivo := pNomeArq;
NomeArquivosFilhos := ChangeFileExt(NomeArquivo, 'PARTE%d.DAT');
I := 1;
with
   TFileStream.Create(NomeArquivo, fmOpenRead or fmShareDenyWrite) do
   begin
  try
    while Position < Size do
      begin
      Arquivo := TFileStream.Create(Format(NomeArquivosFilhos, [I]), fmCreate);
      FileSize := MaxFileSize;
      if FileSize > Size - Position then
         FileSize := Size - Position;
      ReadBuffer(Buffer, FileSize);
      Arquivo.WriteBuffer(Buffer, FileSize);
      Arquivo.Free;
      Inc(I);
     end;
   finally
     Free;
     end;
   end;
result:=i-1;
end;


function fJuntarArquivos(FileName: TFileName) : Boolean;
var
  i: integer;
  fs, sStream: TFileStream;
  filenameOrg: String;

begin
if FileExists(filename) then
    DeleteFile(pchar(filename));

  i := 1;
  filenameOrg := fRetiraExtensao(FileName)+ 'PARTE'+ IntTostr(i)+'.DAT';

  fs := TFileStream.Create(FileName, fmCreate or fmShareExclusive);
  try
    while FileExists(filenameOrg) do
    begin
      sStream := TFileStream.Create(filenameOrg, fmOpenRead or fmShareDenyWrite);
      try
        fs.CopyFrom(sStream, 0);
      finally
        sStream.Free;
      end;
      Inc(i);
      filenameOrg := fRetiraExtensao(FileName)+ 'PARTE'+ IntTostr(i)+'.DAT';

//      filenameOrg := FileName+ '.'+ FormatFloat('000', i);
    end;
  finally
    fs.Free;
  end;
end;




function fGravarImagemBanco(pImagem,pChave,pDescricao: String): Boolean;
var
adoimagem: TADOQuery;

begin

adoimagem:=TADOQuery.Create(nil);
adoimagem.Connection:=DM1_ADO.ADOConnection1;

adoimagem.Close;
adoimagem.SQL.Clear;
adoimagem.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+pChave+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   adoimagem.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
adoimagem.Open;
if adoimagem.IsEmpty then
   begin
   adoimagem.Close;
   adoimagem.sql.clear;
   adoimagem.sql.Add('Insert into CADLOGSIS (');
   adoimagem.sql.Add(' LSCHAVE ');
   adoimagem.sql.Add(',LSDESCRICAO ');
   adoimagem.sql.Add(',LSCODEMP ');
   adoimagem.sql.Add(',LSLOGO ');
   adoimagem.sql.Add(' ) Values (');
   adoimagem.sql.Add(' :LSCHAVE ');
   adoimagem.sql.Add(',:LSDESCRICAO ');
   adoimagem.sql.Add(',:LSCODEMP ');
   adoimagem.sql.Add(',:LSLOGO ');
   adoimagem.sql.Add(' ) ');
   end
else
   begin
   adoimagem.Close;
   adoimagem.sql.clear;
   adoimagem.sql.Add('Update CADLOGSIS ');
   adoimagem.sql.Add(' set LSDESCRICAO=:LSDESCRICAO ');
   adoimagem.sql.Add(' ,   LSLOGO=:LSLOGO ');

   adoimagem.sql.Add(' where LSCHAVE=:LSCHAVE  and LSCODEMP=:LSCODEMP ');
   end;
adoimagem.Parameters.ParamByName('LSCHAVE').Value     :=pChave;
adoimagem.Parameters.ParamByName('LSDESCRICAO').Value:=pDescricao;
adoimagem.Parameters.ParamByName('LSCODEMP').Value    :=iif(codemp>100,codemp-100,codemp);
adoimagem.Parameters.ParamByName('LSLOGO').LoadFromFile(pImagem,ftblob);
try
   adoimagem.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   Messagedlg('Erro ao Atualizar os Logotipos '+e.message,mterror,[mbOk],0);
   result:=false;
   end;
   end;

freeandnil(adoimagem);
end;






function fLerImagemGravaStream(pNomeImagem: String; out pImagemjpeg: TJPEGImage): Boolean;
var
 query_fig : TADOQuery;
 mStream: TMemoryStream;

begin
query_fig := TAdoquery.Create(nil);
query_fig.Connection:=DM1_ADO.ADOConnection1;



query_fig.Close;
query_fig.SQL.Clear;
query_fig.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+pNomeImagem+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   query_fig.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
try
   query_fig.Open;
except on e : exception do
   begin
   Messagedlg('Erro ao ler imagem '+e.message,mterror,[mbOk],0);
   query_fig.sql.savetofile(mpastatemp + 'sql.txt');
   result:=false;
   end;
   end;


if query_fig.IsEmpty then
   result:=false
else
   begin
   try
       mStream:=TMemoryStream.Create;
      (query_fig.FieldByName('LSLOGO') as TBlobField).SaveToStream(mStream);
      mStream.Position := 0;

      pImagemjpeg.LoadFromStream(mStream);
      freeandnil(mStream);
      result:=true
   except
      result:=false;
      end;
   end;
freeandnil(query_fig);
end;





function fSalvarImagem(pImagem,pNomeSai: String): Boolean;
var
adoimagem: TADOQuery;

begin

adoimagem:=TADOQuery.Create(nil);
adoimagem.Connection:=DM1_ADO.ADOConnection1;

adoimagem.Close;
adoimagem.SQL.Clear;
adoimagem.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+pImagem+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   adoimagem.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
try
   adoimagem.Open;
except on e : exception do
   begin
   Messagedlg('Erro ao ler imagem '+e.message,mterror,[mbOk],0);
   adoimagem.sql.savetofile(mpastatemp + 'sql.txt');
   result:=false;
   end;
   end;
result:=false;

if not adoimagem.IsEmpty then
   begin
  if not (adoimagem.FieldByName('LSLOGO').IsNull)  and  (adoimagem.FieldByName('LSLOGO').Value<>'') then
     begin
     (adoimagem.FieldByName('LSLOGO') as TBlobField).SaveToFile(pNomeSai);
     result:=true;
     end;

   end
else
freeandnil(adoimagem);
end;


function PrimeiroNome(Nome : String) : String;
var
PNome : String;
mpos: integer;
begin
PNome := '';
mpos:=pos (' ', Nome);
if mpos <> 0 then
   PNome := copy (Nome, 1, mpos - 1)
else
   pNome:=Nome;
//Showmessage('pos '+inttostr(mpos)+' nome entra '+Nome+#13+'nome saida '+pNome);   
Result := PNome;
end;

function fZiparArquivos(pArqEntra: tStrings; pArqSai,pComentario: String): Boolean;
var
x: Integer;
begin
if zip=nil then
   zip := TZip.create(nil);

zip.filename := pArqSai;
for x:=0 to pArqEntra.count-1 do
   begin
//   ShowMessage(pArqEntra[x]);
   zip.FileSpecList.Add(pArqEntra[x]);
   end;
zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
zip.add;            //DO IT HERE!!!
if trim(pComentario)<>'' then
   zip.ZipComment := pComentario;
freeandnil(zip);
result:=true;

end;

function fUnZiparArquivos(pArqEntra,pPastaSaida,pComentario: String): Boolean;
begin
if zip=nil then
   zip := TZip.create(nil);
zip.filename := pArqEntra;
if trim(pComentario)<>'' then
   begin
   if zip.ZipComment <> pcomentario then
      begin
      verteclado(0);
      MessageDlg('Não é um arquivo do tipo esperado!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
try

   zip.FileSpecList.add('*.*');
   zip.ExtractOptions := [eoUpdate, eoWithPaths];
   if trim(pPastaSaida)<>'' then
      zip.ExtractPath := pPastaSaida;

   if zip.ExtractErrorCnt > 0 then
      begin
      Fmensagem('Erro: '+IntToStr(zip.ExtractErrorCnt)+' ao tentar extrair o arquivo: '+pArqEntra ,0,['0'],0);
      result:=false;
      exit;
      end;
   if zip.extract<1 then
      result:=false
   else
      result:=true;
except on e : exception do
   begin
   Messagedlg('Erro ao Descompactar arquivo '+e.message,mterror,[mbOk],0);
   result:=false;
   end;
   end;
end;




function fInserirQuebraLInha(pqtdcar: Integer; pTexto: String):  String;
{
Esta funçao coloca um enter quebrando a string em varias linhas
}

var
mRetorno: String;
mQtdbloco,mTam,mPos: Integer;

begin
mTam:=length(pTexto);
if mTam>pQtdCar then
   begin
   mQtdbloco:=mTam div pQtdCar;
   if (mQtdbloco*pQtdCar)<mTam then
      mQtdBloco:=mQtdBloco+1;
   mPos:=1;
   while mPos <= mQtdBloco do
      begin
      mRetorno:=mRetorno+copy(pTexto, (mpos*pQtdCar)-(pQtdCar-1), pQtdCar)+#13;
      mpos:=mPos+1;
      end;
   end
else
   mRetorno:=pTexto;
result:=mRetorno;
end;




function fBuscarValor_Del_Par(pDel: String; pCampo: Integer;pTexto:String): String;
var
  mDelim: String;
  mValorEnc: String;
  mCampoAtivo: Integer;
  x: Integer;
begin
mDelim := pDel;
mCampoAtivo:=1;
mValorEnc:='';
for X:=1 to length(pTexto) do
   begin
   if pTexto[x]=mDelim then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;


function fBuscarValor_Del_PV(pCampo: Integer;pTexto:String): String;

var
mDelim: String;
mValorEnc: String;
mCampoAtivo: Integer;
x,mtam:Integer;
begin
mDelim:=';';
mtam:=length(pTexto);
mCampoAtivo:=1;
mValorEnc:='';
for x:=1 to mtam do
   begin
   if pTexto[x]=mDelim then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;



function fQtd_Del_Par(pDel: String;pTexto:String): integer;
var
x: Integer;
mQtdAchado: Integer;
begin
mQtdAchado:=1;
for x:=1 to length(ptexto) do
   begin
   if ptexto[x]=pDel then
      mQtdAchado:=mQtdAchado+1;
   end;
result:=mQtdAchado;
end;

function fQtd_PV(pTexto:String): Integer;
var
x: Integer;
mQtdAchado: Integer;
begin
if length(ptexto)>0 then
   begin
   if pTexto[length(ptexto)]<>';' then
      pTexto:=pTexto+';';
   end;
mQtdAchado:=0;
for x:=1 to length(ptexto) do
   begin
   if ptexto[x]=';' then
      mQtdAchado:=mQtdAchado+1;
   end;
result:=mQtdAchado;
end;


function fLimparString(pValor: String): String;
var
mtam,x: Integer;
mTextoSai: String;
mpos: Integer;
begin

mtam:=length(pValor);
pvalor:=AnsiToAscii(pValor);

pvalor  := StringReplace(pvalor, #13, '\n', [rfReplaceAll, rfIgnoreCase]);
pvalor  := StringReplace(pvalor, #10, ' ', [rfReplaceAll, rfIgnoreCase]);
mTextoSai:='';
for x:=1 to mtam do
   begin
   if (x<mtam) and (pValor[x]=' ') and (pValor[x+1]=' ') then
   else
      begin
      if pValor[x]='&' then
         mTextoSai:=mTextoSai+'e'
      else if (pValor[x] in ['a'..'z']) or
         (pValor[x] in ['A'..'Z']) or
         (pValor[x] in ['0'..'9']) or
         (pValor[x] in ['?','[',']','-','_','*','%','$','@',' ','/','.',',','+',':','#','\']) then
          mTextoSai:=mTextoSai+pvalor[x]
      else
          mTextoSai:=mTextoSai+'_';
      end;
 mTextoSai:=fSubstituirtexto(mTextoSai,' / ','/');
 mTextoSai:=fSubstituirtexto(mTextoSai,' /','/');
 mTextoSai:=fSubstituirtexto(mTextoSai,')/',') ');
   end;

Result:=mTextoSai;
end;


function LocalizaArray(fArrayDinamicoString : array of String; fValor : String) : Boolean;
var
iCnt : Integer;
begin
Result := false;
iCnt := 0;
while (not Result) and (iCnt <= Length(fArrayDinamicoString) - 1) do
   begin
{   if (fArrayDinamicoString[iCnt] = fValor) then
      begin
      result:=true;
      break;
      end;
}
   Result := (fArrayDinamicoString[iCnt] = fValor);
   inc(iCnt);
   end;
end;

function fsoExtensao(pNomRec: String): String;

var
mPonto: Integer;
begin
mPonto:=pos('.',pNomRec);
if (mPonto=0) or (mPonto=length(pNomRec)) then
   result:=''
else
   result:=copy(pNomRec,mponto+1,length(pNomRec)-mPonto);
end;

function fTransformaemDataAno4Mesdia(pData: String): tDateTime;
begin

try
   result:=StrToDateTime(copy(pData,7,2)+'/'+copy(pData,5,2)+'/'+copy(pData,1,4));
except
   result:=pDatanula;
   end;

end;

function fFormataReal2Dec(pValor: String): Real;

begin
result:=ValFloat(fDeixanum(pValor))/100;

end;

function fFormataReal3Dec(pValor: String): Real;

begin
result:=ValFloat(fDeixanum(pValor))/1000;

end;


function fRetornoCNPJCPFcomMask(pValor: String): String;

begin
if fCPF(copy(fdeixanum(pvalor),1,11)) then
   result:=MaskCPFCNPJ2(copy(fdeixanum(pvalor),1,11))
else
   result:=MaskCPFCNPJ2(copy(fdeixanum(pvalor),1,14));


end;

function CombineFiles(FileName: TFileName) : Boolean;
var
  i: integer;
  fs, sStream: TFileStream;
  filenameOrg: String;
begin

  i := 1;
  filenameOrg := FileName+ '.'+ FormatFloat('000', i);

  fs := TFileStream.Create(FileName, fmCreate or fmShareExclusive);
  try
    while FileExists(filenameOrg) do
    begin
      sStream := TFileStream.Create(filenameOrg, fmOpenRead or fmShareDenyWrite);
      try
        fs.CopyFrom(sStream, 0);
      finally
        sStream.Free;
      end;
      Inc(i);
      filenameOrg := FileName+ '.'+ FormatFloat('000', i);
    end;
  finally
    fs.Free;
  end;
end;


function fDeletarTExistentes(pNomeArq: String): Boolean;
var
mSeq: Integer;
begin
mSeq:=0;
while True do
  begin
  mSeq:=mSeq+1;
  if FileExists(pNomeArq+'.'+FormatFloat('000',mSeq)) then
     DeleteFile(pchar(pNomeArq+'.'+FormatFloat('000',mSeq)))
  else
     break;
  end;
end;


function fBuscarsonfe(pNomeXml: String): String;
var
x_pos: Integer;
mRetorno:String;
begin
x_pos:= pos('<nfeProc',pNomeXml);

if pos('<nfeProc',pNomeXml)<=0 then
   result:=pNomeXML
else
   begin
   mRetorno:=copy(pNomeXml,x_pos,length(pNomeXml)-x_pos-1) ;
   x_pos:=pos('</nfeProc',mRetorno);
   mRetorno:=copy(mRetorno,1,x_pos+9);
   end;

result:=mRetorno;


end;


function fCFOP_CST(pCfop: string): TArrayCST;

begin
result:=vararrayof(['00','20','40','41','50','51','90']);
exit;


case AnsiIndexStr(pCfop,
   ['1000','2000','3000','1100','2100','3100'
   ,'1101','2101','3101','1102','2102','3102'
   ,'1111','2111','1113','2113','1551','1116','2116'
   ,'1117','2117','1118','2118','1120','2120','1116'
   ,'1121','2121','1122','2122']) of 0..29:
      begin
      result:=vararrayof(['00','20','40','41','50','51','90']);
      exit;
      end;
   end;
case AnsiIndexStr(pCfop,
   ['1124','2124','1551','1125','2125']) of 0..4:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop,
   ['1126','2126','1551','3126','1128','2128','3128','1150','2150']) of 0..8:
      begin
      result:=vararrayof(['00','20','40','41','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
 '1151','2151','1152','2152','1153','2153'
,'1154','2154','1200','2200','3200','1201'
,'2201','3201','1202','2202','3202','1203'
,'2203','1204','2204','1205','2205','3205'
,'1206','2206','3206','1207','2207','3207'
,'1208','2208','1209','2209','3211','1250'
,'2250','3250','1251','1551','2251','3251','1252'
,'2252'
     ]) of 0..43:
      begin
      result:=vararrayof(['00','20','40','41','90']);
      exit;
      end;
   end;



case AnsiIndexStr(pCfop, [
         '1252','2252','1551','1253','2253','1254'
        ,'2254','1255','2255','1256','2256'
        ,'1257','2257','1300','2300','3300'
        ,'1301','2301','3301','1302','2302'
        ,'1303','2303','1304','2304','1305'
        ,'2305','1306','2306','1350','2350'
        ,'3350','1351','2351','3351','1352'
        ,'2352','3352','1353','2353','3353'
        ,'1354','2354','3354','1355','2355'
        ,'3355','1356','2356','3356'
     ]) of 0..49:
      begin
      result:=vararrayof(['00','20','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '1360','1400','2400','1401','2401','1551'
        ,'1403','2403','1406','2406'
       ]) of 0..08:
      begin
      result:=vararrayof(['10','30','60','70','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '1407','2407','1551'
       ]) of 0..01:
      begin
      result:=vararrayof(['60','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '1408','2408','1409','2409','1410'
      ,'2410','1411','2411','1414','2414'
      ,'1415','2415','1551'
       ]) of 0..11:
      begin
      result:=vararrayof(['10','30','60','70','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '1450','1451','1452','1551'
       ]) of 0..02:
      begin
      result:=vararrayof(['40','41','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
        '1500','2500','3500','1501','2501'
       ,'1503','2503','3503','1504','2504'
       ,'1505','2505','1506','2506','1550'
       ,'2550','3550','1551'
       ]) of 0..16:
      begin
      result:=vararrayof(['00','20','40','41','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
       '1553','2553','3553','1554','2554'
      ,'1555','2555','1556','2556','3556'
      ,'1557','2557','1551'
        ]) of 0..11:
      begin
      result:=vararrayof(['40','41','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
       '1600','2600','1601','1602','1551'
        ]) of 0..03:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '1603','2603','1551'
        ]) of 0..02:
      begin
      result:=vararrayof(['60','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '1604','1551'
        ]) of 0..01:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
        '1605','1650','2650','3650','1651'
       ,'2651','3651','1652','2652','3652'
       ,'1653','2653','3653','1658','2658'
       ,'1659','2659','1660','2660','1661'
       ,'2661','1662','2662','1663','2663'
       ,'1664','2664','1551'
        ]) of 0..22:
      begin
      result:=vararrayof(['60','90']);
      exit;
      end;
   end;



case AnsiIndexStr(pCfop, [
                 '1900','2900','3900','1901','2901'
                ,'1902','2902','1903','2903','1904'
                ,'2904','1905','2905','1906','2906'
                ,'1907','2907','1908','2908','1909'
                ,'2909','1910','2910','1911','2911'
                ,'1912','2912','1913','2913','1914'
                ,'2914','1915','2915','1916','2916'
                ,'1917','2917','1918','2918','1919'
                ,'2919','1920','2920','1921','2921'
                ,'1922','2922','1923','2923','1924'
                ,'2924','1925','2925','1926','3930'
                ,'1931','2931','1932','2932','1933'
                ,'2933','1949','2949','3949','1551'

        ]) of 0..64:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
         '5000','6000','7000','5100','6100'
        ,'7100','5101','6101','7101','5102'
        ,'6102','7102','5103','6103','5104'
        ,'6104','5105','6105','7105','5106'
        ,'6106','7106','6107','6108','5109'
        ,'6109','5110','6110','5111','6111'
        ,'5112','6112','5113','6113','5114'
        ,'6114','5115','6115','5116','6116'
        ,'5117','6117','5118','6118','5119'
        ,'6119','5120','6120','5122','6122'
        ,'5123','6123'
         ]) of 0..51:
      begin
      result:=vararrayof(['00','20','40','41','50','51','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
       '5124','6124','5125','6125'
        ]) of 0..04:
      begin
      result:=vararrayof(['00','20','40','41','50','51','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '7127','5150','6150','5151','6151'
        ,'5152','6152','5153','6153','5155'
        ,'6155','5156','6156','5200','6200'
        ,'7200','5201','6201','7201','5202'
        ,'6202','7202','5205','6205','7205'
        ,'5206','6206','7206','5207','6207'
        ,'7207','5208','6208','5209','6209'
        ,'5210','6210','7210','7211','5250'
        ,'6250','7250','5251','6251','7251'
        ,'5252','6252','5253','6253','5254'
        ,'6254','5255','6255','5256','6256'
        ,'5257','6257'
        ]) of 0..56:
      begin
      result:=vararrayof(['00','40','20','41','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '5258','6258','5300','6300','7300'
      ,'5301','6301','7301','5302','6302'
      ,'5303','6303','5304','6304','5305'
      ,'6305','5306','6306','5307','6307'
      ,'5350','6350','7350','5351','6351'
      ,'5352','6352','5353','6353','5354'
      ,'6354','5355','6355','5356','6356'
      ,'5357','6357','7358','5359','6359'
        ]) of 0..39:
      begin
      result:=vararrayof(['00','20','40','41','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
       '5360','6360'
        ]) of 0..01:
      begin
      result:=vararrayof(['10','60','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5400','6400','5401','6401','5402'
        ,'6402','5403','6403','6404','5405'
        ,'5408','6408','5409','6409','5410'
        ,'6410','5411','6411','5412','6412'
        ,'5413','6413'
        ]) of 0..21:
      begin
      result:=vararrayof(['10','30','60','70','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5414','6414','5415','6415'
        ]) of 0..04:
      begin
      result:=vararrayof(['10','60','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
       '5450','5451','5500','6500','5501'
      ,'6501','5502','6502','5503','6503'
        ]) of 0..04:
      begin
      result:=vararrayof(['40','41','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5504','6504','5505','6505','7500'
        ,'7501'
        ]) of 0..05:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5550','6550','7550','5551','6551'
        ,'7551','5552','6552','5553','6553'
        ,'7553','5554','6554','5555','6555'
        ,'5556','6556','7556','5557','6557'
        ,'5600','6600'
        ]) of 0..21:
      begin
      result:=vararrayof(['00','20','40','41','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5601','5602'
        ]) of 0..1:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
         '5603','6603'
        ]) of 0..1:
      begin
      result:=vararrayof(['60','90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5605','5606'
        ]) of 0..1:
      begin
      result:=vararrayof(['90']);
      exit;
      end;
   end;

case AnsiIndexStr(pCfop, [
         '5650','6650','7650','5651','6651'
        ,'7651','5652','6652','5653','6653'
        ,'5654','6654','7654','5655','6655'
        ,'5656','6656','5657','6657','5658'
        ,'6658','5659','6659','5660','6660'
        ,'5661','6661','5662','6662','5663'
        ,'6663','5664','6664','5665','6665'
        ,'5666','6666','5667','6667','7667'
        ]) of 0..39:
      begin
      result:=vararrayof(['10','30','60','70','90']);
      exit;
      end;
   end;


case AnsiIndexStr(pCfop, [
           '5900','6900','7900','5901','6901'
          ,'5902','6902','5903','6903','5904'
          ,'6904','5905','6905','5906','6906'
          ,'5907','6907','5908','6908','5909'
          ,'6909','5910','6910','5911','6911'
          ,'5912','6912','5913','6913','5914'
          ,'6914','5915','6915','5916','6916'
          ,'5917','6917','5918','6918','5919'
          ,'6919','5920','6920','5921','6921'
          ,'5922','6922','5923','6923','5924'
          ,'6924','5925','6925','5926','5927','6927'
          ,'5928','5929','6929','7930','5931'
          ,'6931','5932','6932','5933','6933'
          ,'5949','6949','7949','7949','1551'
        ]) of 0..70:
      begin
      result:=vararrayof(['00','10','30','60','70','90','40','41']);
      exit;
      end;
   end;

end;


function fTipoIcms(pTipo_CST_CSOSN,pCST_CSOSN: String): String;
begin
result:='N';

if pTipo_CST_CSOSN='CSOSN' then // nao valida
   begin
   exit;
   end
else
   begin
   if (pCST_CSOSN='00') or (pCST_CSOSN='20') then
      result:='T'
   else if (pCST_CSOSN='10') or (pCST_CSOSN='30') or (pCST_CSOSN='60') then
      result:='R'
   else if (pCST_CSOSN='40') or (pCST_CSOSN='41') or (pCST_CSOSN='50') or (pCST_CSOSN='51')
        or (pCST_CSOSN='70') or (pCST_CSOSN='90') then
      result:='N'
   else
      result:='N';
   end;
end;


function ConvertImageparajpg(SrcName :string; DstPic :TGraphic) :boolean;
var
  Picture :TPicture;
  ImageBMP :TBitmap;
begin
  Result := False;
// Criamos um TPicture para ler "virtualmente" qualquer tipo de imagem
  Picture := TPicture.Create;
  try
   // Carregamos a imagem a partir do arquivo indicado em SrcName
    Picture.LoadFromFile(SrcName);
   // O tipo TBitmap, aparentemente, é intercambiável entre os diversos formatos.
   // Deste modo, conseguiremos, por exemplo carregar um WMF e gravá-lo em JPG - já
   // diretamente não seria possível (pelo menos não consegui rsrs)
    ImageBMP := TBitmap.Create;
    try
     // Ajustamos as dimensões do bitmap
      ImageBMP.Width := Picture.Width;
      ImageBMP.Height := Picture.Height;
     // Desenhamos no bitmap a imagem carregada
      ImageBMP.Canvas.Draw(0, 0, Picture.Graphic);
     // "Forçamos" a cópia da imagem no bitmap para o tipo de imagem passada
     // via parâmetro DstPic. A classe TGraphic é base para varias classes
     // que manipulam imagem - assim, teoricamente, qualquer que seja a classe de
     // imagem passada como parâmetro, esta receberá a imagem contida na origem
      DstPic.Assign(ImageBMP);
     // Indicamos que a conversão transcorreu sem problemas
      Result := True;
    finally
      ImageBMP.Free;
    end;
  finally
    Picture.Free;
  end;
end;
function fRetZerosEsquerda(pvalor: String): String;
var
mRetorno:String;
begin
mRetorno:=pValor;
While length(mRetorno)>0 do
   begin
   if mretorno[1]='0' then
      mRetorno:=copy(mRetorno,2,length(mretorno)-1)
   else
      break;
   end;
result:=mretorno;
end;


function fPosdoArray_integer(pArray: Array of integer; pValor: integer; out pIndex: Integer): Boolean;

var
x_array: Integer;

begin
x_array:=0;
result:=false;
While x_array <= high(pArray) do
   begin
   if pArray[x_array]=pValor then
      begin
      pIndex:=x_array;
      result:=true;
      break;
      end;
   inc(x_array);
   end;


end;


function fPosdoArray(pArray: Array of string; pTexto: String; out pIndex: Integer): Boolean;

var
x_array: Integer;

begin
x_array:=0;
result:=false;
While x_array <= high(pArray) do
   begin
   if pArray[x_array]=ptexto then
      begin
      pIndex:=x_array;
      result:=true;
      break;
      end;
   inc(x_array);
   end;


end;



//---------------------------------------------------------------------------
// Ejecuta y devuelve el resultado de un proceso por linea de comandoso de consola
// Necesita la ruta especifica del proceso
function GetDosOutput(CommandLine:string): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of Char;
  BytesRead: Cardinal;
  WorkDir, Line: String;
begin
  Application.ProcessMessages;
  with SA do
  begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  // create pipe for standard output redirection
  CreatePipe(StdOutPipeRead,  // read handle
             StdOutPipeWrite, // write handle
             @SA,             // security attributes
             0                // number of bytes reserved for pipe - 0 default
             );
  try
    // Make child process use StdOutPipeWrite as standard out,
    // and make sure it does not show on screen.
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect std input
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;

    // launch the command line compiler
    WorkDir := ExtractFilePath(CommandLine);
    WasOK := CreateProcess(nil, PChar(CommandLine), nil, nil, True, 0, nil, PChar(WorkDir), SI, PI);

    // Now that the handle has been inherited, close write to be safe.
    // We don't want to read or write to it accidentally.
    CloseHandle(StdOutPipeWrite);
    // if process could be created then handle its output
    if not WasOK then
      raise Exception.Create('Could not execute command line!')
    else
      try
        // get all output until dos app finishes
        Line := '';
        repeat
          // read block of characters (might contain carriage returns and line feeds)
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);

          // has anything been read?
          if BytesRead > 0 then
          begin
            // finish buffer to PChar
            Buffer[BytesRead] := #0;
            // combine the buffer with the rest of the last run
            Line := Line + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        // wait for console app to finish (should be already at this point)
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        // Close all remaining handles
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
      result:=Line;
      CloseHandle(StdOutPipeRead);
  end;
end;


function fRetiraSujeiras(pTexto: String): String;
var
mRetorno: String;
begin
mRetorno:=pTexto;
while Pos('<(>,<)>', mRetorno) <> 0 do
   mRetorno := TiraCarac('<(>,<)>', mRetorno);
result:=mRetorno;
end;

function fEImagem(pNomeArq: String): Boolean;
var
mExtensao: String;
begin
mExtensao:=ExtractFileExt(pNomeArq);
mExtensao:=UpperCase(mExtensao);
if (mExtensao='.BMP') or  (mExtensao='.JPG')  then
   result:=false
//   result:=true
else
   result:=false;


end;

function fEImagemNovo(pNomeArq: String): Boolean;
var
mExtensao: String;
begin
mExtensao:=ExtractFileExt(pNomeArq);
mExtensao:=UpperCase(mExtensao);
if (mExtensao='.BMP') or  (mExtensao='.JPG')  then
//   result:=false
   result:=true
else
   result:=false;


end;

function fExecutarArquivo(pNomeArq: String): boolean;
begin
  ShellExecute(Application.Handle,'Open',pchar(pNomeArq),nil,nil,SW_HIDE);
result:=true;

end;
function fAdicionarTempDel(pNomeArq: String): boolean;
begin
if marqtempdel=nil then
   marqtempdel:=tstringlist.create;

marqTempDel.add(pnomearq);
result:=true

end;

function fDeletarTempDel: boolean;
var
x_del: integer;
begin
if marqTempDel=nil then
   result:=true
else
   begin
   for x_del:=0 to marqtempdel.count-1 do
      begin
      if trim(marqtempdel[x_del])='' then
         continue;
      if not fileexists(marqtempdel[x_del]) then
         begin
//         marqtempdel.delete(x_del);
         marqtempdel[x_del]:='';
         end
      else
         begin
         try
            if deletefile(pchar(marqtempdel[x_del])) then
               begin
//               marqtempdel.delete(x_del);
               marqtempdel[x_del]:='';
               end
         except
            end;
         end;
       end;


    end;
result:=true;
end;

    function DecToAlphal(Value: Cardinal): string;
    begin
      if Value = 0 then exit; // test for end of recursion
      dec(Value);
      result := DecToAlphal(Value div 26) + chr((Value mod 26) + 65);
    end;

function fEData(pDia,pMes,pAno: Integer): boolean;
begin
if (pdia<1) or (pdia>31) or (pMes<1) or (pMes>12) or (pAno<1900) or (pAno>3000) then
   result:=false
else
   begin
   try
      StrtoDate(FormatFloat('00', pdia)+'/'+FormatFloat('00', pMes)+'/'+FormatFloat('0000',pAno));
      result:=true;
   except
      result:=false;
      end;
   end;   
end;



Function Criptografa(ptexto:string;pchave:integer):String;
var
  cont:integer;
  retorno:string;
begin
//result:=texto;

//if (trim(texto)=EmptyStr) or (chave=0) then
if (trim(ptexto)='') or (pchave=0) then
    begin
    result:=ptexto;
    end
else
    begin
    retorno:='';
    for cont:=1 to length(ptexto) do
       begin
       retorno:=retorno+chr(asciitoint(ptexto[cont])+pchave);
       end;
    result:=retorno;
    end;

end;

{Esta funcao é semelhante a funcao de Criptografia mais com o objetivo de descriptografar a string }

Function DesCriptografa(ptexto:string;pchave:integer):String;
var
  cont:integer;
  retorno:string;
begin
result:=ptexto;

//if (trim(ptexto)=EmptyStr) or (pchave=0) then
if (trim(ptexto)='') or (pchave=0) then
   begin
   result:=ptexto;
   end
else
   begin
   retorno:='';
   for cont:=1 to length(ptexto) do
      begin
      retorno:=retorno+chr( asciitoint(ptexto[cont])-pchave );
      end;
   result:=retorno;
   end;

end;

function AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;

// ptipo=A-Ambas data e hora D-Data H-Hora
function fExtrairDataHoraXml(pTipo, pDataXml: String): String;
var
mRetorno: String;
begin
if pTipo='D' then
   begin
   try
      mRetorno:=copy(pDataXml,09,02)+'/'+copy(pDataXml,6,2)+'/'+copy(pDataXml,1,4);
   except
      mRetorno:='';
      end;

   end
else if pTipo='H' then
   begin
   try
      mRetorno:= copy(pDataXml,12,08)
   except
      mRetorno:='';
      end;
   end
else if pTipo='A' then
   begin
   try
      mRetorno:=copy(pDataXml,09,02)+'/'+copy(pDataXml,6,2)+'/'+copy(pDataXml,1,4)+' '+copy(pDataXml,12,08);
   except
      mRetorno:='';
      end;
   end
else
   mRetorno:='';

result:=mRetorno;
end;




function fSairDataHoraXml(pTipo, pDataXml: String): tDatetime;
var
mRetorno: String;
begin
if fsonumero(pDataXml)=0 then
   mRetorno:=''
else
   begin
   if pTipo='D' then
      begin
      try
         mRetorno:=copy(pDataXml,09,02)+'/'+copy(pDataXml,6,2)+'/'+copy(pDataXml,1,4);
      except
         mRetorno:='';
         end;

      end
   else if pTipo='H' then
      begin
      try
         mRetorno:= copy(pDataXml,12,08)
      except
         mRetorno:='';
         end;
      end
   else if pTipo='A' then
      begin
      try
         mRetorno:=copy(pDataXml,09,02)+'/'+copy(pDataXml,6,2)+'/'+copy(pDataXml,1,4)+' '+copy(pDataXml,12,08);
      except
         mRetorno:='';
         end;
      end
   else
      mRetorno:='';
   end;
if mRetorno='' then
   result:=pdatanula
else
   begin
   try
      result:=Strtodatetime(mRetorno);
   except
      result:=pdatanula
      end;
   end;
end;

function fFormatdatetimeParaConsulta(pNomeCampo: string; pInicial: Boolean; pData: TDateTime): String;
begin

if pdata<=pDatanula then
    result:=''
else if pinicial=true then
   begin
   result:= ' and '+pNomeCampo+' > TO_DATE('+Quotedstr(Formatdatetime(fdathor, IncSecond(pData,-1)))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end
else
   begin
   result:= ' and '+pNomeCampo+' < TO_DATE('+Quotedstr(Formatdatetime(fdathor, pData+1))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';

//   result:=' and '+pNomeCampo+' <'+Quotedstr(Formatdatetime(fdt, pData+1));
   end;

// Messagedlg( 'Data En trou ' + DateToStr(pdata)+' '+#13+'Data SAIDA '+result,mtwarning,[mbOk],0);

// Messagedlg( 'Data En trou ' + DateToStr(pdata)+' '+#13+'Data SAIDA '+result,mtwarning,[mbOk],0);
end;




function fFormatdatetimeParaConsultaSemAnd(pNomeCampo: string; pInicial: Boolean; pData: TDateTime): String;
begin

if pdata<=pDatanula then
    result:=''
else if pinicial=true then
   begin
   result:= ' '+pNomeCampo+' > TO_DATE('+Quotedstr(Formatdatetime(fdathor, IncSecond(pData,-1)))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end
else
   begin
   result:= ' '+pNomeCampo+' < TO_DATE('+Quotedstr(Formatdatetime(fdathor, pData+1))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';

//   result:=' and '+pNomeCampo+' <'+Quotedstr(Formatdatetime(fdt, pData+1));
   end;

// Messagedlg( 'Data En trou ' + DateToStr(pdata)+' '+#13+'Data SAIDA '+result,mtwarning,[mbOk],0);

// Messagedlg( 'Data En trou ' + DateToStr(pdata)+' '+#13+'Data SAIDA '+result,mtwarning,[mbOk],0);
end;


function fFormatdatetimeParaConsulta_unica(pNomeCampo: string; pData: TDateTime): String;
begin

if pdata<=pDatanula then
    result:=''
else
   begin
   result:= ' and '+pNomeCampo+' > TO_DATE('+Quotedstr(Formatdatetime(fdathor, IncSecond(pData,-1)))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   result:= result+' and '+pNomeCampo+' < TO_DATE('+Quotedstr(Formatdatetime(fdathor, pData+1))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end

end;


function fFormatdatetimeParaConsulta_semcondicao(pNomeCampo: string; pData: TDateTime): String;
begin

if pdata<=pDatanula then
    result:=''
else
   begin
   result:= ' ( '+pNomeCampo+' > TO_DATE('+Quotedstr(Formatdatetime(fdathor, IncSecond(pData,-1)))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   result:= result+' and '+pNomeCampo+' < TO_DATE('+Quotedstr(Formatdatetime(fdathor, pData+1))+', '+Quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   result:= result+' ) ';
   end

end;


function fTxtParaDateTime_Oracle(pDataTexto: String): String;
begin
result:=' to_date('+quotedstr(pDataTexto)+', ' +quotedstr('DD/MM/YYYY HH24:MI:SS')+') ';
end;

function fFloatPara_Oracle(pValor: Real): String;
begin
result:=mudavp(floattostr(pvalor));

end;

function fIntegerPara_Oracle(pValor: Integer): String;
begin
result:=Inttostr(pvalor);

end;


function Get_printerport(printername: string): string;
var
Reg: tRegistry;

begin
Reg := tRegistry.create;
With Reg do
   begin
   rootkey := HKEY_LOCAL_MACHINE;
   if OpenKey('\\System\\CurrentControlSet\\Control\\Print\\printers\\' + Printername + '\\', True) then
      if ValueExists('port') then
   Result := Readstring('port');
   CloseKey;
   end;
freeandnil(reg);
end;

//Função IIF
function IIF(condicao:Boolean;SeVerdadeiro,SeFalso:variant): variant;
begin
If condicao then
 IIF:=SeVerdadeiro
else
 IIF:=SeFalso;
end;



function ENumero(Texto:String): Boolean;
var
  x: integer;
begin
if (texto='') or (texto='.') then
   texto:=' ';
for x:=1 to Length(Texto) do
  If not (Texto[x] in ['0'..'9','.',',']) then
     begin
     Result:=False;
     Exit;
     end;
Result:=True;
end;



function fStringtodatetime(mdata: String): TdateTime;
begin
if pos('/',mdata)<=0 then
   begin
   mdata:=copy(fdeixanum(mdata),1,2)+'/'+copy(fdeixanum(mdata),3,2)+'/'+copy(fdeixanum(mdata),5,4);
   end;
if fsonumero(mdata)=0 then
   result:=pdatanula
else
   begin
   try
      result:=strtodatetime(mdata);
   Except
     result:=pdatanula;
     end;
  end;
end;


function fStringtodate(mdata: String): TdateTime;
begin
if fsonumero(mdata)=0 then
   result:=pdatanula
else
   begin
   try
      result:=strtodatetime(mdata);
   Except
     result:=pdatanula;
     end;
  end;
end;

function fStringtodateTimeNovo(mdata,pHora: String): TdateTime;
begin
try
   result:=StrtoDateTime(mData+' '+pHora);
except
   result:=null;
   end;
end;



function fRetDatHorXMLNFE(pDataHora: tdatetime): String;
begin
result:=FormatDateTime('yyyy-mm-dd',pDataHora)+'T'+formatdatetime('hh:nn:ss',pDataHora)+'-03:00';
end;


function fCalcularPerdas(pQtdPrevista, pQtdReal: Real):String ;

begin
if  (pQtdPrevista=0) or (pQtdReal=0)  or  (pQtdPrevista=pQtdReal)  then
   result:=''
else
   result := FloatToStr( pQtdPrevista-pQtdReal*100 / pQtdPrevista) +'% de perdas ';

end;

function fLimparTextoRetorno(pTexto: String):String;
begin
result:=pTexto;
result  := StringReplace(result, '\\r\\n', '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\r\n', '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\r', '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\n', '%2Fn', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\', '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '%2Fn', '\n', [rfReplaceAll, rfIgnoreCase]);



result  := StringReplace(result, #13, '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, #10, '', [rfReplaceAll, rfIgnoreCase]);
fSalvarTextoparaArquivo2(result);
end;

function fCorrigirAspasDuplasXML(pTexto: String):String;
begin
result:=ptexto;
result  := StringReplace(result, '\r', '', [rfReplaceAll, rfIgnoreCase]);
//result  := StringReplace(result, '\n', '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\n', '%2Fn', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '\', '', [rfReplaceAll, rfIgnoreCase]);

result  := StringReplace(result, #13, '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, #10, '', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result, '"', '\"', [rfReplaceAll, rfIgnoreCase]);
// showmessage('resulado '+result);

end;


function fCorrigirAspasSimplesParaSql(pTexto: String):String;
begin
result:=ptexto;
result  := StringReplace(result, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
// showmessage('resulado '+result);

end;




function getConteudoTAG(ArquivoXML, NomeTAG, pTAG01,pTag02,pTag03: String): String;
var
   PosIni, PosfIn,PospTAG: Integer;
begin
//  fSalvarTextoparaArquivo2(ArquivoXML);
// showmessage('ptag ' + pTag);

 if Trim(pTAG01) <> '' then
     begin
        pTag01:=pTag01+'>';
        PospTAG := Pos('<'+ pTAG01, ArquivoXML);
        ArquivoXML := Copy(ArquivoXML, PospTAG, Pos('</'+ pTAG01, ArquivoXML) - PospTAG);
     end;
  PosIni := Pos('<'+ NomeTag, ArquivoXML) + Length(NomeTag) + 2;
  Posfin := Pos('</'+ NomeTag, ArquivoXML);

  Result := Copy(ArquivoXML, PosIni, Pos('</'+ NomeTag, ArquivoXML) - PosIni);
  end;



function fRetornaChaveAcessoFormatada(pChave: string): String;
begin
pChave:=fdeixanum(pChave);
pChave :=Copy(pChave,1,4)+'.'
                       +Copy(pChave,5,4)+'.'
                       +Copy(pChave,9,4)+'.'
                       +Copy(pChave,13,4)+'.'
                       +Copy(pChave,17,4)+'.'
                       +Copy(pChave,21,4)+'.'
                       +Copy(pChave,25,4)+'.'
                       +Copy(pChave,29,4)+'.'
                       +Copy(pChave,33,4)+'.'
                       +Copy(pChave,37,4)+'.'
                       +Copy(pChave,41,4);
result:=pchave;
end;


function fOracleConvertStringtoDateTime(pDatHor: tDateTime): String;
begin
result:='TO_DATE('+quotedstr( FormatdateTime('yyyy-mm-dd', pDatHor)+'T'+formatdatetime('hh:nn:SSS',pdatHor))+',  '+quotedstr('YYYY-MM-DD"T"HH24:MI:SS"Z"')+')';
end;



function fFiltrosMultiEmpresa(pCampo,pChaveTabela: String; pCodemp: Integer): String;
begin
result:='';
if DM1.Qr_Tid.Locate('TINOME',pChaveTabela ,[]) then
   begin
   if DM1.Qr_tidtiqtd.asinteger=1 then
      result:=' and '+pcampo+'='+Inttostr(pcodemp)
   else if DM1.Qr_tidtiqtd.asinteger=2 then
      result:=' and ('+pcampo+'='+Inttostr(pcodemp)+' or '+pcampo+'='+inttostr(iif(pcodemp>100,-100,100))+' )'
   else
      result:='';
   end
else
   result:=' and ('+pcampo+'='+Inttostr(pcodemp)+' or '+pcampo+'='+inttostr(iif(pcodemp>100,-100,100))+' )';


end;


function fBuscarValor_paipo(pCampo: Integer;pTexto:String): String;
var
mValorEnc: String;
mCampoAtivo: Integer;
x,mtam:Integer;
begin
mtam:=length(pTexto);
mCampoAtivo:=1;
if ptexto[1]='|' then
   mCampoAtivo:=0;


mValorEnc:='';
for x:=1 to mtam do
   begin
   if pTexto[x]='|' then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;




Function ValidarChaveNFe(const ChaveNFe: string):boolean;
const
  PESO : Array[0..43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno : boolean;
  aChave  : Array[0..43] of Char;
  Soma    : Integer;
  Verif   : Integer;
  I       : Integer;

begin
  Retorno := false;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');


      StrPCopy(aChave,StringReplace(ChaveNFe,' ', '',[rfReplaceAll]));

      Soma := 0;
      for I := Low(aChave) to High(aChave) do
         begin
//         mvalor_item:=valint(aChave[I]);
//        Soma := Soma + (mvalor_item * PESO);
        Soma := Soma + (StrToInt(aChave[i]) * PESO[i]);
        end;
      if Soma = 0 then
        raise Exception.Create('');

      Soma := Soma - (11 * (Trunc(Soma / 11)));
      if (Soma = 0) or (Soma = 1) then
        Verif := 0
      else
        Verif := 11 - Soma;


      Retorno := Verif = StrToInt(aChave[43]);
    except
      Retorno := false;
    end;
  finally
    Result := Retorno;
  end;
end;



function Mascara_edit(edt: String;str:String):string;
var
  i : integer;
begin
  for i := 1 to Length(edt) do
  begin
     if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt)=Length(str)+1) then
        delete(edt,i,1);
     if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
        insert(str[i],edt, i);
  end;
  result := edt;
end;



function fStringtotime_string(mhora: String): string;
begin
if fsonumero(mhora)=0 then
   result:='00:00:00'
else
   begin
   mhora:=insere2(fdeixanum(mhora) ,'0' ,6);
   mhora:=copy(mhora,1,2)+':'+copy(mhora,03,02)+':'+copy(mhora,05,02);
   try
      result:=timetostr( strtotime(mhora));
   Except
     result:='00:00:00'
     end;
  end;

end;



function fImpressoraCompartilhamento(pTexto: String): String;
begin
if pos('\\',pTexto)>0 then
   result:=ptexto
else
   result:='\\'+NomeComputador+'\'+pTexto;
end;




function fIncluirDadosnoBanco(pTabela,pcondicoes,pInsert,pUpdate: String; pLista: TStringList) : boolean;

var

query_exe: TQuery;
mSaida: String;
begin
mSaida:='';
query_exe:=TQuery.Create(nil);
query_exe.databasename:=DM1.SG_ASSOC.databasename;

query_exe.sql.add(' MERGE INTO '+pTabela+' t1 '
                +' USING ('
                +pLista.text
                +') ss '
                +' ON (' + pcondicoes + ') '
                +'  WHEN MATCHED THEN '
                +pUpdate

                +'  WHEN NOT MATCHED THEN '
                +pInsert

                 );



// query_exe.SQL.Text:= pLista.Text;
try
   query_exe.ExecSQL;
   result:=true;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exe,1668,'_stru'+e.message,'user');
   result:=false;
   end;
   end;
query_exe.Close;
freeandnil(query_exe);

end;


function fIncluirDadosnoBanco_String(pTabela,pcondicoes,pInsert,pUpdate: String; pLista: String;pOrigemComando: String) : boolean;

var
query_exe: TQuery;

begin

query_exe:=TQuery.Create(nil);
query_exe.databasename:=DM1.SG_ASSOC.databasename;

query_exe.sql.add(' MERGE INTO '+pTabela+' t1 '
                +' USING ('
                +pLista
                +') ss '
                +' ON (' + pcondicoes + ') ');
if trim(pUpdate)<>'' then
   query_exe.sql.add(' WHEN MATCHED THEN '
                +pUpdate);

if trim(pInsert)<>'' then
   query_exe.sql.add('  WHEN NOT MATCHED THEN '
                +pInsert);





// query_exe.SQL.Text:= pLista.Text;
try
   query_exe.ExecSQL;
   result:=true;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exe,1668,'_stru '+pOrigemComando+e.message,'user');
   result:=false;
   end;
   end;
query_exe.Close;
freeandnil(query_exe);

end;


function ValorReal(Texto:String): Real;
var
  x: integer;
  maux: string;
  dec: boolean;
begin
maux:='';
Texto:=Trim(Texto);
dec:=false;
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x]
   else if (Texto[x]='-') and (x=1) then
      maux:=maux+'0'+Texto[x]
   else if Texto[x] in ['.',','] then
      begin
      if not dec then
         begin
         maux:=maux+DecimalSeparator;
         dec:=true;
         end;
      end;
if Trim(maux)='' then
   maux:='0';
Result:=StrToFloat(maux);
end;


{
function fEventoChange(pPosicao,pMascara,pTexto: string): String;
begin

   if mposition>=Length(TEDIT(Sender).Text) then
      begin
      TEdit(Sender).Text := Mascara_edit(pTexto,pmascara);
      TEDIT(Sender).SelStart := Length(TEDIT(Sender).Text);
      end
   else
      begin
      TEDIT(Sender).SelStart := mposition;
      end;

}




function AnsiToAcentosXML(str: string): string;
var i: Integer;
begin
result:=str;

result  := StringReplace(result,'Á','&Aacute;', [rfReplaceAll, rfIgnoreCase]);




result  := StringReplace(result,'È','&Egrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ô','&ocirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ç','&Ccedil;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'á','&aacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'è','&egrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ò','&Ograve;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ç','&ccedil;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Â','&Acirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ë','&Euml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ò','&ograve;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'â','&acirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ë','&euml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ø','&Oslash;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ñ','&Ntilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ð','&ETH;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ø','&oslash;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ñ','&ntilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'à','&agrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ð','&eth;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Õ','&Otilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Á','&Aring;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'õ','&otilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ý','&Yacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'å','&aring;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Í','&Iacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ö','&Ouml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ý','&yacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ã','&Atilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'í','&iacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ö','&ouml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ã','&atilde;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Î','&Icirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'"','&quot;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ä','&Auml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'î','&icirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ú','&Uacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'<','&lt;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ä','&auml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ì','&Igrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ú','&uacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'>','&gt;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Æ','&AElig;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ì','&igrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Û','&Ucirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'&','&amp;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'æ','&aelig;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ï','&Iuml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'û','&ucirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ï','&iuml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ù','&Ugrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'®','&reg;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'É','&Eacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ù','&ugrave;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'©','&copy;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'é','&eacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ó','&Oacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ü','&Uuml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Þ','&THORN;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ê','&Ecirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ó','&oacute;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ü','&uuml;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'þ','&thorn;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ê','&ecirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ô','&Ocirc;', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ß','&szlig;', [rfReplaceAll, rfIgnoreCase]);
// result  := StringReplace(result,'\','&#92;', [rfReplaceAll, rfIgnoreCase]);




{





   for i := 1 to Length(str) do
      case str[i] of
result  := StringReplace(result,'Á': str[i] := '&Aacute;';
result  := StringReplace(result,'È': str[i] := '&Egrave;';
result  := StringReplace(result,'ô': str[i] := '&ocirc;';
result  := StringReplace(result,'Ç': str[i] := '&Ccedil;';
result  := StringReplace(result,'á': str[i] := '&aacute;';
result  := StringReplace(result,'è': str[i] := '&egrave;';
result  := StringReplace(result,'Ò': str[i] := '&Ograve;';
result  := StringReplace(result,'ç': str[i] := '&ccedil;';
result  := StringReplace(result,'Â': str[i] := '&Acirc;';
result  := StringReplace(result,'Ë': str[i] := '&Euml;';
result  := StringReplace(result,'ò': str[i] := '&ograve;';
result  := StringReplace(result,'â': str[i] := '&acirc;';
result  := StringReplace(result,'ë': str[i] := '&euml;';
result  := StringReplace(result,'Ø': str[i] := '&Oslash;';
result  := StringReplace(result,'Ñ': str[i] := '&Ntilde;';
result  := StringReplace(result,'Ð': str[i] := '&ETH;';
result  := StringReplace(result,'ø': str[i] := '&oslash;';
result  := StringReplace(result,'ñ': str[i] := '&ntilde;';
result  := StringReplace(result,'à': str[i] := '&agrave;';
result  := StringReplace(result,'ð': str[i] := '&eth;';
result  := StringReplace(result,'Õ': str[i] := '&Otilde;';
result  := StringReplace(result,'Á': str[i] := '&Aring;';
result  := StringReplace(result,'õ': str[i] := '&otilde;';
result  := StringReplace(result,'Ý': str[i] := '&Yacute;';
result  := StringReplace(result,'å': str[i] := '&aring;';
result  := StringReplace(result,'Í': str[i] := '&Iacute;';
result  := StringReplace(result,'Ö': str[i] := '&Ouml;';
result  := StringReplace(result,'ý': str[i] := '&yacute;';
result  := StringReplace(result,'Ã': str[i] := '&Atilde;';
result  := StringReplace(result,'í': str[i] := '&iacute;';
result  := StringReplace(result,'ö': str[i] := '&ouml;';
result  := StringReplace(result,'ã': str[i] := '&atilde;';
result  := StringReplace(result,'Î': str[i] := '&Icirc;';
result  := StringReplace(result,'"': str[i] := '&quot;';
result  := StringReplace(result,'Ä': str[i] := '&Auml;';
result  := StringReplace(result,'î': str[i] := '&icirc;';
result  := StringReplace(result,'Ú': str[i] := '&Uacute;';
result  := StringReplace(result,'<': str[i] := '&lt;';
result  := StringReplace(result,'ä': str[i] := '&auml;';
result  := StringReplace(result,'Ì': str[i] := '&Igrave;';
result  := StringReplace(result,'ú': str[i] := '&uacute;';
result  := StringReplace(result,'>': str[i] := '&gt;';
result  := StringReplace(result,'Æ': str[i] := '&AElig;';
result  := StringReplace(result,'ì': str[i] := '&igrave;';
result  := StringReplace(result,'Û': str[i] := '&Ucirc;';
result  := StringReplace(result,'&': str[i] := '&amp;';
result  := StringReplace(result,'æ': str[i] := '&aelig;';
result  := StringReplace(result,'Ï': str[i] := '&Iuml;';
result  := StringReplace(result,'û': str[i] := '&ucirc;';
result  := StringReplace(result,'ï': str[i] := '&iuml;';
result  := StringReplace(result,'Ù': str[i] := '&Ugrave;';
result  := StringReplace(result,'®': str[i] := '&reg;';
result  := StringReplace(result,'É': str[i] := '&Eacute;';
result  := StringReplace(result,'ù': str[i] := '&ugrave;';
result  := StringReplace(result,'©': str[i] := '&copy;';
result  := StringReplace(result,'é': str[i] := '&eacute;';
result  := StringReplace(result,'Ó': str[i] := '&Oacute;';
result  := StringReplace(result,'Ü': str[i] := '&Uuml;';
result  := StringReplace(result,'Þ': str[i] := '&THORN;';
result  := StringReplace(result,'Ê': str[i] := '&Ecirc;';
result  := StringReplace(result,'ó': str[i] := '&oacute;';
result  := StringReplace(result,'ü': str[i] := '&uuml;';
result  := StringReplace(result,'þ': str[i] := '&thorn;';
result  := StringReplace(result,'ê': str[i] := '&ecirc;';
result  := StringReplace(result,'Ô': str[i] := '&Ocirc;';
result  := StringReplace(result,'ß': str[i] := '&szlig;';
      else
        begin
        if Ord(str[i])>127 then
         str[i] := ' ';
        end;
      end;
   Result := str;
}
end;



function AnsiToAcentosWord(str: string): string;
var i: Integer;
begin
result:=str;

result  := StringReplace(result,'Á','[AAGUDO]', [rfReplaceAll, rfIgnoreCase]);


result  := StringReplace(result,'È','[ECRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ô','[ocircuflex]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ç','[CCEDILHA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'á','[aagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'è','[ecraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ò','[OCRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ç','[ccedilha]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Â','[ACIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ë','[ETREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ò','[ograziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'â','[acircunflex]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ë','[etrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ø','[OCORTADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ñ','[NTIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ð','[DCORTADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ø','ocortado', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ñ','ntil', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'à','[acraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ð','[osobre]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Õ','[OTIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Á','[AAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'õ','[otil]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ý','[yagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'å','[acombola]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Í','[IAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ö','[OTREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ý','[yagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ã','[ATIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'í','[iagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ö','[otrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ã','[atil]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Î','[ICURFUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'"','[ASPASDUPLAS]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ä','[ATREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'î','[icirgunflexo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ú','[UAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'<','[MAIOR]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ä','[atrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ì','[ICRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ú','[uagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'>','[MENOR]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Æ','[ETRACEJADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ì','[iagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Û','[UCIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'&','[ICOMERCIAL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'æ','[AELIQ]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ï','[ITREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'û','[ucircunflex];', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ï','[itrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ù','[UCRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'®','[REGISTRADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'É','[EAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ù','[ucraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'©','[CORPORATION]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'é','[eagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ó','[OAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ü','[UTREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Þ','[THORN]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ê','[ECIURCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ó','[oagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ü','[utrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'þ','[thorn]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ê','[ecircunflex];', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ô','[OCIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ß','[szlig]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'º','[GRAU]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ª','[AEMCIMA]', [rfReplaceAll, rfIgnoreCase]);


end;




function WordtoAnsi(str: string): string;
var i: Integer;
begin
result:=str;

result  := StringReplace(result,'Á','[AAGUDO]', [rfReplaceAll, rfIgnoreCase]);


result  := StringReplace(result,'È','[ECRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ô','[ocircuflex]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ç','[CCEDILHA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'á','[aagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'è','[ecraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ò','[OCRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ç','[ccedilha]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Â','[ACIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ë','[ETREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ò','[ograziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'â','[acircunflex]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ë','[etrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ø','[OCORTADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ñ','[NTIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ð','[DCORTADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ø','ocortado', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ñ','ntil', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'à','[acraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ð','[osobre]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Õ','[OTIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Á','[AAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'õ','[otil]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ý','[yagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'å','[acombola]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Í','[IAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ö','[OTREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ý','[yagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ã','[ATIL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'í','[iagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ö','[otrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ã','[atil]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Î','[ICURFUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'"','[ASPASDUPLAS]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ä','[ATREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'î','[icirgunflexo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ú','[UAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'<','[MAIOR]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ä','[atrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ì','[ICRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ú','[uagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'>','[MENOR]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Æ','[ETRACEJADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ì','[iagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Û','[UCIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'&','[ICOMERCIAL]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'æ','[AELIQ]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ï','[ITREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'û','[ucircunflex];', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ï','[itrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ù','[UCRAZIADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'®','[REGISTRADO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'É','[EAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ù','[ucraziado]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'©','[CORPORATION]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'é','[eagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ó','[OAGUDO]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ü','[UTREMA]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Þ','[THORN]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ê','[ECIURCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ó','[oagudo]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ü','[utrema]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'þ','[thorn]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ê','[ecircunflex];', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'Ô','[OCIRCUNFLEX]', [rfReplaceAll, rfIgnoreCase]);
result  := StringReplace(result,'ß','[szlig]', [rfReplaceAll, rfIgnoreCase]);


end;



function fParametrizarCaracteres_word(pTexto: String):String;
var
  Cont: Integer;
  Resp: String;
  mcar: string;
  x_car: integer;
  machou: boolean;
begin

pTexto:=RETIRaacentos(pTexto);

//result:=pTexto;
//exit;
//LINDOMAR06112025


resp:='';
for Cont := 1 to length(pTexto) do
   begin
   for x_car:=low(c_caracter_word) to high(c_caracter_word) do
      begin
      if pTexto[cont]=c_caracter_word[x_car][0] then
         begin
         resp:=resp+c_caracter_word[x_car][1];
         machou:=true;
         break;
         end;
      end;
   if machou=false then
      begin
      resp:=resp+pTexto[cont];
      end;
   end;
if pos(#13#10,resp)>0 then
   resp:=fsubstituirtexto(resp,#13#10,'<w:br/>');
Result:=Resp;
end;



{

function fParametrizarCaracteres_word(pTexto: String):String;
var
  Cont: Integer;
  Resp: String;
  mcar: string;

begin



resp:='';
for Cont := 1 to length(pTexto) do
  begin
    case pTexto [cont] of
    '&' : mcar := '[ICOMERCIAL]';
    '?' : mcar := '[INTERROGACAO]';
    '_' : mcar := '[UNDERLINE]';
    '`' : mcar := '[APOSTOFRO]';
    '{' : mcar := '[ABRECHAVE]';
    '~' : mcar := '[TIL]';
    'ƒ' : mcar := '[EFE]';
    '„' : mcar := '[VIRGDUPLA]';
    '…' : mcar := '[RETICENCIA]';
    '†' : mcar := '[CRUZ]';
    '‡' : mcar := '[CRUZDUPLA]';
    'ˆ' : mcar := '[QUANSECIRCUNFLEXO]';
    '‰' : mcar := '[SIMBOL01]';
    'Š' : mcar := '[SIMBOL02]';
    '‹' : mcar := '[SIMBOL03]';
    'Œ' : mcar := '[SIMBOL04]';
    '' : mcar := '[SIMBOL05';
    'Ž' : mcar := '[SIMBOL06]';
    '‘' : mcar := '[SIMBOL07]';
    '’' : mcar := '[SIMBOL08]';
    '“' : mcar := '[SIMBOL09]';
    '”' : mcar := '[SIMBOL10]';
    '•' : mcar := '[SIMBOL11]';
    '–' : mcar := '[SIMBOL12]';
    '—' : mcar := '[SIMBOL13]';
    '˜' : mcar := '[SIMBOL14]';
    '™' : mcar := '[SIMBOL15]';
    'š' : mcar := '[SIMBOL16]';
    '›' : mcar := '[SIMBOL17]';
    'œ' : mcar := '[SIMBOL18]';
    'ž' : mcar := '[SIMBOL19]';
    'Ÿ' : mcar := '[SIMBOL20]';
    '¡' : mcar := '[SIMBOL21]';
    '¢' : mcar := '[SIMBOL22]';
    '£' : mcar := '[SIMBOL23]';
    '¤' : mcar := '[SIMBOL24]';
    '¥' : mcar := '[SIMBOL25]';
    '¦' : mcar := '[SIMBOL26]';
    '§' : mcar := '[SIMBOL27]';
    '¨' : mcar := '[SIMBOL28]';
    '©' : mcar := '[CORPORATION]';
    'ª' : mcar := '[SIMBOL29]';
    '«' : mcar := '[SIMBOL30]';
    '¬' : mcar := '[SIMBOL31]';
    '­' : mcar := '[SIMBOL32]';
    '®' : mcar := '[REGISTRADO]';
    '¯' : mcar := '[SIMBOL33]';
    '°' : mcar := '[SIMBOL34]';
    '±' : mcar := '[SIMBOL35]';
    '²' : mcar := '[SIMBOL36]';
    '³' : mcar := '[SIMBOL37]';
    '´' : mcar := '[SIMBOL38]';
    'µ' : mcar := '[SIMBOL39]';
    '¶' : mcar := '[SIMBOL40]';
    '·' : mcar := '[SIMBOL41]';
    '¸' : mcar := '[SIMBOL42]';
    '¹' : mcar := '[SIMBOL43]';
    'º' : mcar := '[SIMBOL44]';
    '»' : mcar := '[SIMBOL45]';
    '¼' : mcar := '[SIMBOL46]';
    '½' : mcar := '[SIMBOL47]';
    '¾' : mcar := '[SIMBOL48]';
    '¿' : mcar := '[SIMBOL49]';
    'À' : mcar := '[SIMBOL50]';
    'Á' : mcar := '[AAGUDO]';
    'Â' : mcar := '[ACIRCUNFLEX]';
    'Ã' : mcar := '[ATIL]';
    'Ä' : mcar := '[ATREMA]';
    'Å' : mcar := '[acombola]';
    'Æ' : mcar := '[ETRACEJADO]';
    'Ç' : mcar := '[CCEDILHA]';
    'È' : mcar := '[ECRAZIADO]';
    'É' : mcar := '[EAGUDO]';
    'Ê' : mcar := '[ECIURCUNFLEX]';
    'Ë' : mcar := '[ETREMA]';
    'Ì' : mcar := '[ICRAZIADO]';
    'Í' : mcar := '[IAGUDO]';
    'Î' : mcar := '[ICURFUNFLEX]';
    'Ï' : mcar := '[ITREMA]';
    'Ð' : mcar := '[DCORTADO]';
    'Ñ' : mcar := '[NTIL]';
    'Ò' : mcar := '[OCRAZIADO]';
    'Ó' : mcar := '[OAGUDO]';
    'Ô' : mcar := '[OCIRCUNFLEX]';
    'Õ' : mcar := '[OTIL]';
    'Ö' : mcar := '[OTREMA]';
    '×' : mcar := '[SIMBOL51]';
    'Ø' : mcar := '[OCORTADO]';
    'Ù' : mcar := '[UCRAZIADO]';
    'Ú' : mcar := '[UAGUDO]';
    'Û' : mcar := '[UCIRCUNFLEX]';
    'Ü' : mcar := '[UTREMA]';
    'Ý' : mcar := '[yagudo]';
    'Þ' : mcar := '[THORN]';
    'ß' : mcar := '[szlig]';
    'à' : mcar := '[acraziado]';
    'á' : mcar := '[aagudo]';
    'â' : mcar := '[SIMBOL52]';
    'ã' : mcar := '[atil]';
    'ä' : mcar := '[atrema]';
    'å' : mcar := '[SIMBOL53]';
    'æ' : mcar := '[SIMBOL54]';
    'ç' : mcar := '[ccedilha]';
    'è' : mcar := '[ecraziado]';
    'é' : mcar := '[eagudo]';
    'ê' : mcar := '[ecircunflex]';
    'ë' : mcar := '[SIMBOL55]';
    'ì' : mcar := '[SIMBOL56]';
    'í' : mcar := '[iagudo]';
    'î' : mcar := '[icirgunflexo]';
    'ï' : mcar := '[itrema]';
    'ð' : mcar := '[osobre]';
    'ñ' : mcar := '[ntil]';
    'ò' : mcar := '[ograziado]';
    'ó' : mcar := '[oagudo]';
    'ô' : mcar := '[ocircuflex]';
    'õ' : mcar := '[otil]';
    'ö' : mcar := '[otrema]';
    '÷' : mcar := '[SIMBOL57]';
    'ø' : mcar := '[ocortado]';
    'ù' : mcar := '[ucraziado]';
    'ú' : mcar := '[uagudo]';
    'û' : mcar := '[ucircunflex]';
    'ü' : mcar := '[utrema]';
    'ý' : mcar := '[yagudo]';
    'þ' : mcar := '[thorn]';
    'ÿ' : mcar := '[SIMBOL58]';
   else
     mcar := pTexto [cont];
     end;
  resp:=resp+mcar;
  end;

if pos(#13#10,resp)>0 then
   resp:=fsubstituirtexto(resp,#13#10,'<w:br/>');
//  showmessage('achou');

Result:=Resp;
end;
}

function fValidarHora(pMens:boolean; pHora:String): boolean;
begin
try
   strtotime(pHora);
   result:=true;
except
   begin
   if pMens then
       messagedlg('Hora Invalida '+pHora,mtwarning,[mbok],0);
   result:=false;
   end;
   end;

end;


procedure fcriararquivofecharigestao(pNomearq: string);
var
marquivo: tstringlist;
begin
marquivo:=tstringlist.create;
marquivo.add('Solicitado em '+formatdatetime(fdathor, now()));
marquivo.savetofile(pnomearq);
//marquivo.savetofile(mpastaaplicacao+pnomearq);
//SHOWMESSAGE('GERADO '+pnomearq);
freeandnil(marquivo);
sleep(300);
end;


function fqtdprogaberto(pnomprog: string): integer;
var
form_agde: tfrm_Agde;
begin

Application.CreateForm(TFrm_Agde, Form_Agde);

result:=form_agde.fAgdeQtdProg(pnomprog);
freeandnil(form_agde);

end;


function QtdTask(ExeFileName: string): Integer;
    const
      PROCESS_TERMINATE = $0001;
    var
      ContinueLoop: BOOL;
      FSnapshotHandle: THandle;
      FProcessEntry32: TProcessEntry32;
    begin
      Result := 0;
      FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
      FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
      ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
      while Integer(ContinueLoop) <> 0 do
      begin
        if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
          UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
          UpperCase(ExeFileName))) then
          Result := result +1;
         ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
      end;
      CloseHandle(FSnapshotHandle);
    end;


function fBuscarValor_delpv(pCampo: Integer;pTexto:String): String;
var
mValorEnc: String;
mCampoAtivo: Integer;
x,mtam:Integer;
begin
mtam:=length(pTexto);
mCampoAtivo:=1;
mValorEnc:='';
for x:=1 to mtam do
   begin
   if pTexto[x]=';' then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;

function fDiferenciaEmPercentual(pValor01,pValor02: Real): Real;
var
mDifer: real;
begin
if (pValor01<>0) and (pValor02<>0) then
   begin
   mDifer:=100-(pValor02*100)/pValor01;
   result:=arredonda(mdifer,2);
   end
else
   result:=0;

end;



function fPrimeiroNomeIgual(pNome01,pNome02: string): boolean;
var
x_tam: integer;
begin
result:=false;

if (trim(pNome01)='') or (trim(pNome02)='')  then
   result:=false
else
   begin
   x_tam:=Pos(' ',pNome01)-1;
   if x_tam>0 then
      begin
      if uppercase(copy(pNome01,1,x_tam))=UpperCase(copy(pnome02,1,x_tam))  then
         result:=true;
      end;
   end;
end;



function BmpToJpg(Bmp: TBitmap; Quality: Integer = 100): TJPEGImage;
begin
  Result := TJPEGImage.Create;
  Result.CompressionQuality := Quality;

  Result.Assign(Bmp);
end;



function fcoincide(ptexto1,ptexto2:String): Real;
var
i, j: Integer;
IntContacoincidencias: Real;
bolcoincide1: array[1..100] of Boolean;
bolcoincide2: array[1..100] of Boolean;
StrNumero: String;
StrNumeros1: String;
StrNumeros2: String;
bolAchouNumero: Boolean;
intQtdNumeros1: Integer;
intQtdNumeros2: Integer;
IntResult: Real;
BolAchouTodas: Boolean;
IntPalavras1: Integer;
IntPalavras2: Integer;
begin
if (trim(pTexto1)='') or (trim(pTexto2)='') then
   begin
   result:=0;
   exit;
   end;

//    inicialização
intContaCoincidencias :=0;
intQtdNumeros1        :=0;
intQtdNumeros2        :=0;
strNumeros1           :='';
strNumeros2           :='';
bolAchouTodas:= False;
intPalavras1 :=length(ptexto1);
intPalavras2 :=length(ptexto2);

For i := 1 To intPalavras1 do
   begin
   bolCoincide1[i]:= False;
   end;
For j := 1 To intPalavras2 do
   begin
   bolCoincide2[j]:=False;
   end;

//    'processamento
For i := 1 To intPalavras1 do
   begin
   For j := 1 To intPalavras2 do
      begin
      If Not bolCoincide2[j] Then //'se ainda já não foi encontrada
         begin
         If ptexto1[i]=ptexto2[j] Then
            begin
            intContaCoincidencias := intContaCoincidencias + 1;
            bolCoincide1[i] := True;
            bolCoincide2[j] := True;
            break;
            end;
         end;
      end;
   end;
//   'procura palavras que não coincidiram , para ver se tem o mesmo
//   'padrao (se a palavra menor pode ser uma abreviatura da maior)

bolAchouTodas := (intContaCoincidencias = intPalavras1);

If bolAchouTodas Then
   begin
   If intPalavras1 = intPalavras2 Then
      intResult := 100 //'correspondencia exata
   Else
      intResult := 99;
   end
else
   begin
   For i :=1 To intPalavras1 do
      begin
      If Not bolCoincide1[i] Then
         begin
         For j := 1 To intPalavras2 do
            begin
            If Not bolCoincide2[j] Then
               begin
//              If MesmoPadrao(varPalavras1(i), varPalavras2(j)) Then
               if ptexto1[i]=ptexto2[j] then
                  begin
                  intContaCoincidencias := intContaCoincidencias + 1;
                  bolCoincide1[i]       := True;
                  bolCoincide2[j]       := True;
                  break;
                  end;
               end;
            end;
         end;
      end;
   end;
intResult := (intContaCoincidencias / intPalavras1) * 100;
If intResult = 100 Then
   intResult := 99; //'100% só coincidência exata
If (intResult < 99) And (intResult > 0) Then
   begin
//'se entre as não coincidentes da palavra 1, houver numero que não exista
//'nas não coincidentes da palavra 2, o resultado cai para zero
//'(devem ser considerados completamente diferentes)
   For i := 1 To intPalavras1 do
      begin
      If Not bolCoincide1[i] Then
         begin
         strNumero :=  FRetNum(ptexto1[i]);
         If Length(strNumero)>0 Then
            begin
            intQtdNumeros1 := intQtdNumeros1 + 1;
            StrNumeros1    := StrNumeros1+StrNumero;
            end;
         end;
      end;
    For j := 1 To intPalavras2 do
      begin
      If Not bolCoincide2[j] Then
         strNumero := FRetNum(ptexto2[j]);
      If Length(strNumero)>0 Then
         begin
         intQtdNumeros2 := intQtdNumeros2 + 1;
         StrNumeros2:=StrNumeros2+StrNumero;
         end;
      end;
   If intQtdNumeros1 > 0 Then
      begin
      For i := 1 To intQtdNumeros1 do
         begin
         bolAchouNumero := False;
         end;
      For j := 1 To intQtdNumeros2 do
         begin
         If strNumeros1[i] = strNumeros2[j] Then
            begin
            bolAchouNumero := True;
            break;
            end;
         end;
       If Not bolAchouNumero Then
         begin
         intResult := 0;
//         break;
         end;
      end;
   end;
result:=intResult;
end;

function MemoryStreamToString(M: TMemoryStream): string;
begin
  SetString(Result, PChar(M.Memory), M.Size div SizeOf(Char));
end;


//  "criacao": "2024-09-08T17:24:14.00-03:00",
function fStringToDateJson(pData: String): TDateTime;

var
mDataHora: String;

begin
//2024-09-08T17:24:14.00-03:00
mDataHora:=copy(pData,09,02)+'/'+copy(pData,06,02)+'/'+copy(pData,1,4)+' '+copy(pData,12,2)+':'+copy(pData,15,2)+':'+copy(pData,18,2);
try
   result:=StrTodateTime(mDataHora);
except
   result:=pdatanula;
   end;
end;

function fRetirarEspacosDuplos(pTexto: String): String;
begin
While true do
   begin   
   if pos('  ',pTexto)<1 then
      break;
   pTexto:=fSubstituirTexto(pTexto,'  ',' ');
   end;
result:=pTexto;
end;



procedure fAtualizarTipoTef;
var
mChaveFilpad: String;
begin
mTipoTef:=-1;


if DirectoryExists(pchar('C:\PAYGO')) then
   mTipoTef:=0;


mChaveFilpad :='TEFCIELO'+NomeComputador;
if flfilpad(-3,'_VENDA_PRE',mChaveFilpad) then
   begin
    if DM4.Tb_FilPad2FPVALOR.AsString='true' then
       mTipotef:=1;
   end;


end;


function ColunaParaLetraExcel(NumeroColuna: Integer): String;
begin
  Result := '';
  while NumeroColuna > 0 do
  begin
    Result := Chr(Ord('A') + (NumeroColuna - 1) mod 26) + Result;
    NumeroColuna := (NumeroColuna - 1) div 26;
  end;
end;
end.


