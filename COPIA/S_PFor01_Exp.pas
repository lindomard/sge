unit S_PFor01_Exp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,func, ExtCtrls, DB, Buttons, Grids, DBGrids,
  DBTables,lerarq, S_SelEmp;

type
  TFrm_PFor01_Exp = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    MCHAVEI: TEdit;
    Label4: TLabel;
    MCHAVEF: TEdit;
    Label5: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    RG_TIPOTXTXML: TRadioGroup;
    bbAplicar: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbExportar: TBitBtn;
    Label6: TLabel;
    MPASTA: TEdit;
    Label7: TLabel;
    NOMARQ: TEdit;
    sbnProc: TSpeedButton;
    Qr_PFor01: TQuery;
    Qr_PFor01PF1TOTLIQ: TFloatField;
    Qr_PFor01FRAZAO: TStringField;
    Qr_PFor01PF1LOTSEQ: TFloatField;
    Qr_PFor01PF1NUMNF: TFloatField;
    Src_Pfor01: TDataSource;
    DBGrid1: TDBGrid;
    Qr_Pfor02: TQuery;
    DBGrid2: TDBGrid;
    Src_PFor02: TDataSource;
    Qr_PFor01FCGC: TFloatField;
    Qr_Pfor02PF2CODEMP: TFloatField;
    Qr_Pfor02PF2LOTE: TStringField;
    Qr_Pfor02PF2DATAV: TDateTimeField;
    Qr_Pfor02PF2DESC01: TFloatField;
    Qr_Pfor02PF2DESC02: TFloatField;
    Qr_Pfor02PF2DESC03: TFloatField;
    Qr_Pfor02PF2PU: TFloatField;
    Qr_Pfor02PDMARCA: TStringField;
    Qr_Pfor02PDUND: TStringField;
    Qr_Pfor02PF2LOTSEQ: TFloatField;
    Qr_PFor01PF1CODEMP: TFloatField;
    Qr_PFor01FCIDADE: TStringField;
    Qr_PFor01FUF: TStringField;
    STG_LAYOUT: TStringGrid;
    Qr_PFor01PF1CODFOR: TFloatField;
    Qr_PFor01PF1SUBMOD: TStringField;
    Qr_Pfor02cnpj_cli: TStringField;
    Qr_PFor01cnpj_cli: TFloatField;
    Qr_PFor01TIPO_REG: TFloatField;
    Qr_PFor01NUMPED_ORI: TFloatField;
    Qr_PFor01DATAPED_ORI: TDateTimeField;
    Qr_Pfor02NUMPED_ORI: TFloatField;
    Qr_Pfor02ITEM: TFloatField;
    Qr_Pfor02CODPRO_ORI: TFloatField;
    Qr_Pfor02QUANTIDADE: TFloatField;
    Qr_Pfor02CODPRO_BARRAS: TFloatField;
    Table1: TTable;
    Table1P2CODEMP: TFloatField;
    Table1P2LOTSEQ: TFloatField;
    Table1P2CHAVE: TFloatField;
    Table1P2ORDEM: TFloatField;
    Table1P2ITEM: TFloatField;
    Table1P2CODPRO: TFloatField;
    Table1P2CODANT: TFloatField;
    Table1P2QTD: TFloatField;
    Table1P2QTDDEV: TFloatField;
    Table1P2LOTE: TStringField;
    Table1P2PROMOCAO: TStringField;
    Table1P2DTVCTO: TDateTimeField;
    Table1P2DESC1: TFloatField;
    Table1P2DESC2: TFloatField;
    Table1P2VALDES: TFloatField;
    Table1P2PRECO: TFloatField;
    Table1P2SIT: TStringField;
    Table1P2CODFAB: TFloatField;
    Table1P2BASEN: TFloatField;
    Table1P2ICMSN: TFloatField;
    Table1P2REPAS: TFloatField;
    Table1P2BASER: TFloatField;
    Table1P2ICMSR: TFloatField;
    Table1P2LISTA: TFloatField;
    Table1P2STATUS: TFloatField;
    Table1P2PCOTAB: TFloatField;
    Table1P2UCPR: TFloatField;
    Table1P2PCOCUS: TFloatField;
    Table1P2PCOMAX: TFloatField;
    Table1P2TOTDES: TFloatField;
    Table1P2DESCRAT: TFloatField;
    Table1P2TABELA: TStringField;
    Table1P2ALIPI: TFloatField;
    Table1P2VALIPI: TFloatField;
    Table1P2BCINR: TFloatField;
    Table1P2ICMSNR: TFloatField;
    Table1P2ISENTAS: TFloatField;
    Table1P2TOTOUT: TFloatField;
    Table1P2ALIQ: TFloatField;
    Table1P2ALIQNR: TFloatField;
    Table1P2PCOMIS: TFloatField;
    Table1P2VCOMIS: TFloatField;
    Table1P2VCOM02: TFloatField;
    Table1P2VCOM03: TFloatField;
    Table1P2DESCM: TFloatField;
    Table1P2CFO: TFloatField;
    Table1P2SEMCOM: TFloatField;
    Table1P2TOTLIQ: TFloatField;
    Table1P2PDESCF: TFloatField;
    Table1P2VDESCF: TFloatField;
    Table1P2ACRECONV: TFloatField;
    Table1P2ACREGER: TFloatField;
    Table1P2DESC3: TFloatField;
    Table1P2CODGRU: TFloatField;
    Table1P2VCOM04: TFloatField;
    Table1P2ACRERAT: TFloatField;
    Table1P2QTD_101: TFloatField;
    Table1P2QTDDEV_101: TFloatField;
    Table1P2LOTE_101: TStringField;
    Table1P2PROMOCAO_101: TStringField;
    Table1P2DTVCTO_101: TDateTimeField;
    Table1P2VALDES_101: TFloatField;
    Table1P2BASEN_101: TFloatField;
    Table1P2ICMSN_101: TFloatField;
    Table1P2REPAS_101: TFloatField;
    Table1P2BASER_101: TFloatField;
    Table1P2ICMSR_101: TFloatField;
    Table1P2TOTDES_101: TFloatField;
    Table1P2DESCRAT_101: TFloatField;
    Table1P2VALIPI_101: TFloatField;
    Table1P2BCINR_101: TFloatField;
    Table1P2ICMSNR_101: TFloatField;
    Table1P2ISENTAS_101: TFloatField;
    Table1P2TOTOUT_101: TFloatField;
    Table1P2ALIQ_101: TFloatField;
    Table1P2ALIQNR_101: TFloatField;
    Table1P2VCOMIS_101: TFloatField;
    Table1P2VCOM02_101: TFloatField;
    Table1P2VCOM03_101: TFloatField;
    Table1P2DESCM_101: TFloatField;
    Table1P2SEMCOM_101: TFloatField;
    Table1P2TOTLIQ_101: TFloatField;
    Table1P2VDESCF_101: TFloatField;
    Table1P2ACRECONV_101: TFloatField;
    Table1P2ACREGER_101: TFloatField;
    Table1P2VCOM04_101: TFloatField;
    Table1P2ACRERAT_101: TFloatField;
    Table1P2PRECO_101: TFloatField;
    Table1NOMEPRO: TStringField;
    Table1NOMEPRO2: TStringField;
    Table1MARCAPRO: TStringField;
    Table1SECAOPRO: TStringField;
    Table1DESCALTER: TMemoField;
    Table1BAIXADO: TIntegerField;
    Table1UNDPRO: TStringField;
    Table1P2CFO_101: TFloatField;
    Table1P2AMBIENTE: TStringField;
    Table1P2QTD_ENTREGUE: TFloatField;
    Table1P2QTD_ENTREGANDO: TFloatField;
    Table1P2VCOMIS_EXTRA: TFloatField;
    Table1P2QTD_ENTREGUE_101: TFloatField;
    Table1P2QTD_ENTREGANDO_101: TFloatField;
    Table1P2PCOMIS_EXTRA: TFloatField;
    Table1P2PCOFPG: TFloatField;
    Table1P2VCOMIS_EXTRA_101: TFloatField;
    Table1P2CFOSUBECF: TFloatField;
    Table1P2CFOSUBECF_101: TFloatField;
    Table1P2CONSIG: TFloatField;
    Table1P2CODAGRU: TFloatField;
    Table1P2PCOM02: TFloatField;
    Table1P2ST_IVA: TFloatField;
    Table1P2ST_REDUT: TFloatField;
    Table1P2ST_ICMCRED: TFloatField;
    Table1P2ST_ICMDEB: TFloatField;
    Table1P2REDUTICM: TFloatField;
    Table1P2ST_IVA_101: TFloatField;
    Table1P2ST_REDUT_101: TFloatField;
    Table1P2ST_ICMCRED_101: TFloatField;
    Table1P2ST_ICMDEB_101: TFloatField;
    Table1P2REDUTICM_101: TFloatField;
    Table1P2PRAZO: TFloatField;
    Qr_PFor01PF1OBS: TMemoField;
    Qr_Pfor02CODPRO_FOR: TStringField;
    Qr_Pfor02PF2NOMPRO: TStringField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MCHAVEIExit(Sender: TObject);
    procedure MCHAVEFExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Src_Pfor01DataChange(Sender: TObject; Field: TField);
    procedure sbnProcClick(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    function fLerPF2(ptipo: Integer; pCodEmp,pLotSeq,pChave,pcodfor: Real): Boolean;
    function FMontaLayout(ptipo: Integer): Boolean;

  end;
function FGerarTxtXml(pTxtXML: Integer;pTabela:TDataSet): Boolean;
procedure WriteRowStart(Stream: TFileStream; IsAddedTitle: Boolean);
procedure WriteData(Stream: TFileStream; pNomeCampo: String; AsString: ShortString);

procedure WriteRowEnd(Stream: TFileStream; IsAddedTitle: Boolean);
procedure WriteFileEnd(Stream: TFileStream);

type TArrayNovo = array of array of string;

procedure WriteFileBegin(Stream: TFileStream; ArrayDataset: TArrayNovo);

var
  Frm_PFor01_Exp: TFrm_PFor01_Exp;

  mcol_nomcpo    : Integer=0;
  mcol_tipdados  : Integer=1;
  mcol_tamanho   : Integer=2;
  mcol_decimais  : Integer=3;
  mcol_inicio    : Integer=4;
  mcol_termino   : Integer=5;
  mcol_obs       : Integer=6;
  mcol_opc       : Integer=7;
  mcol_NomeXML   : Integer=8;
  mcol_NomeQuery : Integer=9;
  f_ExpTxt: TextFile;
  SourceBuffer: PChar;
  array_cab: TArrayNovo;
  mNomeArq: String;

implementation

uses S_For, S_DM1, S_DefBac;

{$R *.dfm}

procedure TFrm_PFor01_Exp.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_PFor01_Exp.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_PFor01_Exp.MCHAVEIExit(Sender: TObject);
begin
MCHAVEI.Text:=fdeixanum2(MCHAVEI.Text);

end;

procedure TFrm_PFor01_Exp.MCHAVEFExit(Sender: TObject);
begin
MCHAVEF.Text:=fdeixanum2(MCHAVEF.Text);
end;

procedure TFrm_PFor01_Exp.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      BEGIN
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
      END
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_PFor01_Exp.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_PFor01_Exp',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;


end;

procedure TFrm_PFor01_Exp.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PFor01_Exp.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_PFor01_Exp.bbAplicarClick(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Pfor01.Close;
Qr_Pfor01.SQl.Clear;
Qr_Pfor01.SQl.Add('Select 005 AS TIPO_REG,PF1CODEMP,PF1CODFOR,PF1LOTSEQ,'
                 +' PF1CHAVE as NUMPED_ORI,'
                 +' PF1DATA as DATAPED_ORI,'
                 +'  PF1TOTLIQ,PF1NUMNF,FRAZAO,FCGC,FCIDADE,FUF,PF1SUBMOD,PF1OBS from '
              +'CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PF1STATUS<2 ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Pfor01.SQl.add(' and PF1DATA>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Pfor01.SQl.add(' and PF1DATA<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

if fsonumero(MCHAVEI.Text)<>0  then
   Qr_Pfor01.Sql.Add(' and PF1CHAVE>=0'+MCHAVEI.Text);

if fsonumero(MCHAVEF.Text)<>0  then
   Qr_Pfor01.Sql.Add(' and PF1CHAVE<=0'+MCHAVEF.Text);
if Trim(CODFOR.Text)<>'' then
   Qr_Pfor01.Sql.add(' and PF1CODFOR=0'+CODFOR.Text);
Qr_Pfor01.Sql.Add(' Order by PF1DATA,PF1CHAVE');
Qr_Pfor01.Open;

end;

function TFrm_Pfor01_Exp.fLerPF2(ptipo: Integer; pCodEmp,pLotSeq,pChave,pcodfor: Real): Boolean;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');
if pbanco=0 then
   begin
   la_instrucao:=la_instrucao+' and ';
   la_instrucao:=la_instrucao+' PFCODFOR(+)=0'+FloatToStr(pcodfor);
   end;


if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);


Qr_PFor02.Close;
Qr_PFor02.Sql.Clear;
Qr_PFor02.Sql.Add('Select 010 as TIPO_REG,PF2CODEMP, '
               +'       PF2LOTSEQ, '
               +'       PF2CHAVE AS NUMPED_ORI, '
               +'       PF2ITEM AS ITEM, '
               +'       PF2CODPRO AS CODPRO_ORI, '
               +'       PF2LOTE, '
               +'       PF2DATAV, '
               +'       PF2QTDP AS QUANTIDADE, '
               +'       PF2DESC01, '
               +'       PF2DESC02, '
               +'       PF2DESC03, '
               +'       PF2PU '
               +'       , NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO,PDMARCA '
               +'       ,PDUND '
               +'       ,PDCODBAR AS CODPRO_BARRAS'
               +'      ,PFCODPFORN AS CODPRO_FOR'
               );
Qr_PFor02.Sql.Add(' from CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PF2LOTSEQ=0'+FloatToStr(pLotseq));
Qr_PFor02.Sql.Add(' and PF2CHAVE=0'+floatToStr(pChave)
               +' order by PF2CODEMP,PF2ITEM');
try
   Qr_PFor02.Open;
except
   Qr_PFor02.Sql.SaveToFile('C:\SQL.TXT');
   end;

if Qr_PFor02.Eof then
   result:=false
else
   result:=true;
end;


procedure TFrm_PFor01_Exp.Src_Pfor01DataChange(Sender: TObject;
  Field: TField);
begin
if (not Qr_Pfor02.Active) or (
   (Qr_PFor01PF1LOTSEQ.AsFloat<>Qr_Pfor02PF2LOTSEQ.AsFloat)
   or (Qr_PFor01PF1LOTSEQ.AsFloat<>Qr_Pfor02PF2LOTSEQ.AsFloat) ) then
   fLerPF2(0,Qr_PFor01PF1CODEMP.AsFloat,Qr_PFor01PF1LOTSEQ.AsFloat,Qr_PFor01NUMPED_ORI.AsFloat,Qr_PFor01PF1CODFOR.AsFloat);

end;


function TFrm_PFor01_Exp.FMontaLayout(ptipo: Integer): Boolean;
{
ptipo=005 - cabecalho do pedido
      010 - Detalhes
}

var
mlin: Integer;
begin

mlin:=0;
{
STG_LAYOUT.ColWidths[mcol_nomcpo]   :=180;
STG_LAYOUT.ColWidths[mcol_tipdados] :=70;
STG_LAYOUT.ColWidths[mcol_tamanho]  :=45;
STG_LAYOUT.ColWidths[mcol_decimais] :=45;
STG_LAYOUT.ColWidths[mcol_inicio]   :=45;
STG_LAYOUT.ColWidths[mcol_termino]  :=45;
STG_LAYOUT.ColWidths[mcol_obs]      :=230;
STG_LAYOUT.ColWidths[mcol_opc]      :=30;
STG_LAYOUT.ColWidths[mcol_NomeXML]  :=60;
STG_LAYOUT.ColWidths[mcol_NomeQuery]:=60;

STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Nome do Campo';
STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Tido de Dados';
STG_LAYOUT.Cells[mcol_tamanho,mlin] :='Tamanho';
STG_LAYOUT.Cells[mcol_decimais,mlin]:='Decimais';
STG_LAYOUT.Cells[mcol_inicio,mlin]  :='Inicio';
STG_LAYOUT.Cells[mcol_termino,mlin] :='Termino';
STG_LAYOUT.Cells[mcol_obs,mlin]     :='Observacoes';
STG_LAYOUT.Cells[mcol_opc,mlin]     :='Opcional';
STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='Nome Tabela/Campo para XML';

mlin:=mlin+1;
}
if ptipo=5 then
   begin
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]   :='Tipo Fixo: 005';
   STG_LAYOUT.Cells[mcol_tipdados,mlin] :='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin]  :='03';
   STG_LAYOUT.Cells[mcol_decimais,mlin] :='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]   :='001';
   STG_LAYOUT.Cells[mcol_termino,mlin]  :='003';
   STG_LAYOUT.Cells[mcol_obs,mlin]      :='Valor Fixo: 005';
   STG_LAYOUT.Cells[mcol_opc,mlin]      :='M';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin]  :='CAPA_PEDIDO';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='';


   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]   :='CNPJ/CNPF do Cliente';
   STG_LAYOUT.Cells[mcol_tipdados,mlin] :='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin]  :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin] :='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]   :='004';
   STG_LAYOUT.Cells[mcol_termino,mlin]  :='023';
   STG_LAYOUT.Cells[mcol_obs,mlin]      :='CNPJ ou CPF do Cliente(Obrigatorio)';
   STG_LAYOUT.Cells[mcol_opc,mlin]      :='M';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin]  :='CNPJ_CLI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='CNPJEMP';


   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Numero do Pedido de Origem';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='024';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='043';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Numero do Pedido do Cliente(Opcional)';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='NUMPED_ORI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1CHAVE';


   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]   :='Data do Pedido';
   STG_LAYOUT.Cells[mcol_tipdados,mlin] :='Numerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin]  :='08';
   STG_LAYOUT.Cells[mcol_decimais,mlin] :='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]   :='044';
   STG_LAYOUT.Cells[mcol_termino,mlin]  :='051';
   STG_LAYOUT.Cells[mcol_obs,mlin]      :='Data do Pedido Formato AAAAMMDD(Opcional)';
   STG_LAYOUT.Cells[mcol_opc,mlin]      :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin]  :='DATAPED_ORI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1DATA';



   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Urgencia';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Numerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='03';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='052';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='054';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Urgencia do Pedido';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='CODURG';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1SUBMOD';
   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Observacoes';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='60';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='055';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='114';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Observaçoes';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='OBS01';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1OBS';

   STG_LAYOUT.RowCount:=mlin+1;
   end
else if ptipo=10 then
   begin
// detalhes tipo 010
   mlin:=0;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Tipo Fixo: 010';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='03';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='001';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='003';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Valor Fixo: 010';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='M';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='ITENS_PEDIDO';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='';

   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='CNPJ/CNPF do Cliente';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='004';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='023';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='CNPJ ou CPF do Cliente(Obrigatorio)';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='M';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='CNPJ_CLI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='CNPJEMP';


   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Numero do Pedido de Origem';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='024';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='043';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Numero do Pedido do Cliente(Opcional)';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='NUMPED_ORI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin] :='PF2CHAVE';

   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Codigo Produto(Fornecedor)';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='044';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='063';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Codigo do Produto no Fornecedor';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='CODPRO_FOR';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin] :='CODPFOR';



   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Codigo de Barras do Produto';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='064';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='083';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Codigo de barras do Produto';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='CODPRO_BARRAS';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin] :='PDCODBAR';


   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]   :='Codigo de Origem(do Cliente)';
   STG_LAYOUT.Cells[mcol_tipdados,mlin] :='Alfanumerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin]  :='20';
   STG_LAYOUT.Cells[mcol_decimais,mlin] :='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]   :='084';
   STG_LAYOUT.Cells[mcol_termino,mlin]  :='103';
   STG_LAYOUT.Cells[mcol_obs,mlin]      :='Codigo do Produto no Cliente';
   STG_LAYOUT.Cells[mcol_opc,mlin]      :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin]  :='CODPRO_ORI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF2CODPRO';



   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Quantidade Pedida';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Numerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='15';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='3';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='104';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='118';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Quantidade Pedida. P/arquivos TXT nao separar( sem ("." , "," ... etc)';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='QUANTIDADE';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF2QTDP';
   STG_LAYOUT.RowCount:=mlin+1;
   end;



end;

procedure TFrm_PFor01_Exp.sbnProcClick(Sender: TObject);
begin
if Frm_DefBac=nil then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definir Caminho onde sera gerado o arquivo';
frm_DefBac.DirectoryListBox1.Directory:=MPASTA.Text;
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   MPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

function FGerarTxtXml(pTxtXML: Integer;pTabela:TDataSet): Boolean;
var
{
 pTipo =005 Cabecalho
        010 Corpo do relatorio
pTxtXML=0 TXT
        1 XML
p
}
Stream: TFileStream;


mlin: Integer;
mColTab,mColArray: Integer;
mlinha: String;
begin




SetLength(array_cab,03);
For mlin:= Low(array_cab) to High(array_cab) do
   begin
   setlength(array_cab[mlin],10);
   end;
mlin:=0;

array_cab[mlin,mcol_nomcpo]  :='Tipo Fixo: 005';
array_cab[mlin,mcol_tipdados]:='Alfanumerico';
array_cab[mlin,mcol_tamanho] :='03';
array_cab[mlin,mcol_decimais]:='';
array_cab[mlin,mcol_inicio]  :='001';
array_cab[mlin,mcol_termino] :='003';
array_cab[mlin,mcol_obs]     :='Valor Fixo: 005';
array_cab[mlin,mcol_opc]     :='M';
array_cab[mlin,mcol_NomeXML] :='CAPA_PEDIDO';
mlin:=mlin+1;
array_cab[mlin,mcol_nomcpo]   :='CNPJ/CNPF do Cliente';
array_cab[mlin,mcol_tipdados] :='Alfanumerico';
array_cab[mlin,mcol_tamanho]  :='20';
array_cab[mlin,mcol_decimais] :='';
array_cab[mlin,mcol_inicio]   :='004';
array_cab[mlin,mcol_termino]  :='023';
array_cab[mlin,mcol_obs]      :='CNPJ ou CPF do Cliente(Obrigatorio)';
array_cab[mlin,mcol_opc]      :='M';
array_cab[mlin,mcol_NomeXML]  :='CNPJ_CLI';
array_cab[mlin,mcol_NomeQuery]:='CNPJEMP';
mlin:=mlin+1;
array_cab[mlin,mcol_nomcpo]   :='Numero do Pedido de Origem';
array_cab[mlin,mcol_tipdados] :='Alfanumerico';
array_cab[mlin,mcol_tamanho]  :='20';
array_cab[mlin,mcol_decimais] :='';
array_cab[mlin,mcol_inicio]   :='024';
array_cab[mlin,mcol_termino]  :='043';
array_cab[mlin,mcol_obs]      :='Numero do Pedido do Cliente(Opcional)';
array_cab[mlin,mcol_opc]      :='O';
array_cab[mlin,mcol_NomeXML]  :='NUMPED_ORI';
array_cab[mlin,mcol_NomeQuery]:='NUMPED_ORI';
mlin:=mlin+1;
pTabela.First;
if pTxtXML=0 then // se texto
   begin
//   mNomeArq:='C:\PEDFOR.TXT';
   AssignFile(f_ExpTxt,mNomeArq);
   Rewrite(f_ExpTxt);

   mlinha:='';
   While not pTabela.Eof do
      begin
      for mColArray:=0 to high(array_cab) do
         begin
         if mColArray=0 then
            mlinha:=mlinha+'005'
         else
            begin
            if pTabela.fieldbyName(array_cab[mcolArray,mcol_nomeQuery]).DataType in [ftDate,ftDateTime] then
               begin
               mlinha:=mlinha+  insere(FormatDatetime('AAAAMMDD', pTabela.fieldbyName(array_cab[mColArray,mcol_nomeQuery]).Asdatetime)
                       ,'0',valint(array_cab[mcolarray,mcol_tamanho]))
               end
            else if lowercase(array_cab[mColArray,mcol_tipdados])='alfanumerico' then
               mlinha:=mlinha+insere2(pTabela.fieldbyName(array_cab[mColArray,mcol_nomeQuery]).AsString,' ',valint(array_cab[mColArray,mcol_tamanho]))
            else if lowercase(array_cab[mColArray,mcol_tipdados])='numerico' then
               begin
               if valint(array_cab[mColArray,mcol_decimais])>0 then
                  begin
                  mcinst:='1'+insere('0','0',valint(array_cab[mColArray,mcol_decimais]));
                  mlinha:=mlinha+insere(FormatFloat('0',pTabela.fieldbyName(array_cab[mColArray,mcol_nomeQuery]).AsFloat*valint(mcinst))
                  ,'0',valint(array_cab[mColArray,mcol_tamanho]))
                  end
               else
                  mlinha:=mlinha+insere(FormatFloat('0',pTabela.fieldbyName(array_cab[mColArray,mcol_nomeQuery]).AsFloat),' ',valint(array_cab[mColArray,mcol_tamanho]));
               end
            else
               begin
               fmensagemSom('Campo Desconhecido: '+array_cab[mColArray,mcol_tipdados]
                           +' '+array_cab[mColArray,mcol_nomequery],0,['0'],0);
               result:=false;
               end
            end;
         end;
      if trim(mlinha)<>'' then
         begin
         writeln(f_ExpTxt,mlinha);
         mlinha:='';
         end;
      pTabela.next;
      end;
   CloseFile(f_ExpTxt);
   end
else
   begin
   mNomeArq:='C:\PEDFOR01.XML';
   Stream := TFileStream.Create(mNomeArq, fmCreate);
   SourceBuffer := StrAlloc(1024);
   WriteFileBegin(Stream, array_cab);
//   WriteRowStart(Stream, True);
{
   for mColArray:=0 to high(array_cab) do
      WriteData(Stream, '', array_cab[mcolarray,mcol_NomeXml]);
}
   {write the end of row}
//   WriteRowEnd(Stream, True);


   While not pTabela.Eof do
      begin
      for mColArray:=0 to high(array_cab) do
         begin
         if mColArray=0 then
            Continue
         else
            begin
            WriteRowStart(Stream, False);
            WriteData(Stream, array_cab[mcolArray,mcol_NomeXML],
            pTabela.fieldbyName(array_cab[mcolArray,mcol_NomeQuery]).AsString);
            {write the end of row}
            WriteRowEnd(Stream, False);
            end;
         end;
      pTabela.next;
      end;
   WriteFileEnd(Stream);
   Stream.Free;
   end

{


DM1.Query5.Close;
DM1.Query5.SQl.Clear;
DM1.Query5.SQl.Add(' PF1CHAVE as NUMPED_ORI'
                  +' ,PF1DATA as DATAPED_ORI'
                  +' ,000     as CODURG '
                  +' ,PF2ITEM AS ITEM '
                  +' ,PF2CODPRO AS CODPRO_ORI '
                  +' ,PF2QTDP AS QUANTIDADE '
                  +' ,PDCODBAR AS CODPRO_BARRAS'
                  +' ,PFCODPFORN AS CODPRO_FOR'
                  +' from '
                  +'CADPF1 '+iif(la_tabelas='','',',')+la_tabelas

{



   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]   :='Data do Pedido';
   STG_LAYOUT.Cells[mcol_tipdados,mlin] :='Numerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin]  :='08';
   STG_LAYOUT.Cells[mcol_decimais,mlin] :='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]   :='044';
   STG_LAYOUT.Cells[mcol_termino,mlin]  :='051';
   STG_LAYOUT.Cells[mcol_obs,mlin]      :='Data do Pedido Formato AAAAMMDD(Opcional)';
   STG_LAYOUT.Cells[mcol_opc,mlin]      :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin]  :='DATAPED_ORI';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1DATA';



   mlin:=mlin+1;
   STG_LAYOUT.Cells[mcol_nomcpo,mlin]  :='Urgencia';
   STG_LAYOUT.Cells[mcol_tipdados,mlin]:='Numerico';
   STG_LAYOUT.Cells[mcol_tamanho,mlin] :='03';
   STG_LAYOUT.Cells[mcol_decimais,mlin]:='';
   STG_LAYOUT.Cells[mcol_inicio,mlin]  :='052';
   STG_LAYOUT.Cells[mcol_termino,mlin] :='054';
   STG_LAYOUT.Cells[mcol_obs,mlin]     :='Urgencia do Pedido';
   STG_LAYOUT.Cells[mcol_opc,mlin]     :='O';
   STG_LAYOUT.Cells[mcol_NomeXML,mlin] :='CODURG';
   STG_LAYOUT.Cells[mcol_NomeQuery,mlin]:='PF1SUBMOD';
   STG_LAYOUT.RowCount:=mlin+1;

mcinst:='';
for x:=0 to pGrid.RowCount-1 do
   begin

   end;
}
end;

procedure TFrm_PFor01_Exp.bbExportarClick(Sender: TObject);
var
mTotReg: Integer;
mLinha: String;
mCnpj: String;
begin
mTotreg:=0;
if RG_TIPOTXTXML.ItemIndex=0 then
   begin
   if not DirectoryExists(MPASTA.Text) then
      begin
      fmensagem('Favor Selecionar um Pasta válida!',0,['0'],0);
      MPASTA.SetFocus;
      exit;
      end;
   if trim(NOMARQ.Text)='' then
      begin
      fmensagem('Favor Digitar um nome de Arquivo Válido!',0,['0'],0);
      NOMARQ.SetFocus;
      exit;
      end;
   if MPASTA.Text[Length(MPASTA.Text)]<>'\' then
      MPASTA.Text:=MPASTA.Text+'\';
   end;
mNomeArq:=MPASTA.Text+NOMARQ.Text;
if not (Qr_PFor01.Active) or (Qr_PFor01.IsEmpty) then
   begin
   fmensagem('Favor Selecionar um pedido valido!',0,['0'],0);
   exit;
   end;
Qr_PFor01.First;
{
AssignFile(f_ExpTxt,mNomeArq);
Rewrite(f_ExpTxt);
While not Qr_PFor01.Eof do
   begin
   mcnpj:=Qr_PFor01FCGC.AsString;
   mlinha:='005';
   mlinha:=mlinha+insere(mcnpj,'0',20);
   mlinha:=mlinha+insere(Qr_PFor01NUMPED_ORI.AsString,'0',20);
   mlinha:=mlinha+FormatDatetime('YYYYMMDD',Qr_PFor01DATAPED_ORI.AsDateTime);
   mlinha:=mlinha+'000';
   mlinha:=mlinha+insere2(' ',' ',10); // plano de vendas
   mlinha:=mlinha+insere2(' ',' ',10); // Apontador de Promocao
   mlinha:=mlinha+insere2(Qr_PFor01PF1OBS.AsString,' ',60);
   Writeln(f_ExpTxt,mlinha);
   mTotReg:=mTotReg+1;
   Qr_Pfor02.First;
   While not Qr_Pfor02.Eof do
      begin
      mlinha:='010';
      mlinha:=mlinha+insere(mcnpj,'0',20);
      mlinha:=mlinha+insere(Qr_PFor01NUMPED_ORI.AsString,'0',20);
      mlinha:=mlinha+insere(Qr_Pfor02CODPRO_FOR.AsString,'0',20);
      mlinha:=mlinha+insere(Qr_Pfor02CODPRO_BARRAS.AsString,'0',20);
      mlinha:=mlinha+insere(Qr_Pfor02CODPRO_ORI.AsString,'0',20);
      mlinha:=mlinha+insere(FormatFloat('000',Qr_Pfor02QUANTIDADE.AsFloat*1000),'0',15);
      Writeln(f_ExpTxt,mlinha);
      mTotReg:=mTotReg+1;
      Qr_PFor02.Next;
      end;
   Qr_PFor01.Next;
   end;

mtotreg:=mtotreg+1;
mcinst4:='100'+insere(IntToStr(mTotReg),'0',10);
WriteLn(f_ExpTxt,mcinst4);
closefile(f_ExpTxt);
}






la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';

fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';


fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');
if pbanco=0 then
   begin
   la_instrucao:=la_instrucao+' and ';
   la_instrucao:=la_instrucao+' (PFCODFOR=PF1CODFOR or PFCODFOR is null) ';
   end;



DM1.Query5.Close;
DM1.Query5.SQl.Clear;
DM1.Query5.SQl.Add(' Select ');
DM1.Query5.SQl.Add(' PF1CHAVE as NUMPED_ORI'
                  +','+DM1.Tb_EmpCGC.AsString+ ' as CNPJEMP '
                  +' ,PF1DATA as DATAPED_ORI'
                  +' ,000     as CODURG '
                  +' ,PF2ITEM AS ITEM '
                  +' ,PF2CODPRO AS CODPRO_ORI '
                  +' ,PF2QTDP AS QUANTIDADE '
                  +' ,PDCODBAR AS CODPRO_BARRAS'
                  +' ,PFCODPFORN AS CODPRO_FOR'
                  +' from '
                  +'CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' PF1STATUS<2 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query5.SQl.add(' and PF1DATA>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query5.SQl.add(' and PF1DATA<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

if fsonumero(MCHAVEI.Text)<>0  then
   DM1.Query5.Sql.Add(' and PF1CHAVE>=0'+MCHAVEI.Text);

if fsonumero(MCHAVEF.Text)<>0  then
   DM1.Query5.Sql.Add(' and PF1CHAVE<=0'+MCHAVEF.Text);
if Trim(CODFOR.Text)<>'' then
   DM1.Query5.Sql.add(' and PF1CODFOR=0'+CODFOR.Text);
DM1.Query5.Sql.Add(' Order by PF1DATA,PF1CHAVE,PF2ITEM');
try
   DM1.Query5.Open;
except
   DM1.Query5.sql.savetofile('c:\sql.txt');
   end;


FGerarTxtXml(RG_TIPOTXTXML.ItemIndex,DM1.Query5);

//      FGerarTxtXml(005,STG_LAYOUT,Qr_PFor01);





{
   AssignFile(f_ExpTxt,MPASTA.Text+NOMARQ.Text);



   Rewrite(f_ExpTxt);

   Qr_PFor01.First;
   While not Qr_PFor01.Eof do
      begin
      FMontaLayout(005);
      mtotreg:=mtotreg+1;
      FGerarTxtXml(005,STG_LAYOUT,Qr_PFor01);

      Qr_Pfor02.First;
      FMontaLayout(010);
      While not Qr_Pfor02.Eof do
         begin
         mtotreg:=mtotreg+1;


         FGerarTxt(010,STG_LAYOUT);
         Qr_Pfor02.Next;
         end;
      Qr_PFor01.Next;
      end;
   mtotreg:=mtotreg+1;
   mcinst4:='100'+insere(IntToStr(mTotReg),'0',10);
   WriteLn(f_ExpTxt,mcinst4);
   closefile(f_ExpTxt);
   end;
}
end;

procedure WriteString(Stream: TFileStream; s: string);
begin
  StrPCopy(SourceBuffer, s);
  Stream.Write(SourceBuffer[0], StrLen(SourceBuffer));
end;

procedure WriteFileBegin(Stream: TFileStream; ArrayDataset: TArrayNovo);

//procedure WriteFileBegin(Stream: TFileStream; ArrayDataset: array of string);

  function XMLFieldType(pArrayField: array of string): string;
  var
  mtipocampo: String;
  begin
//  mtipocampo :=uppercase(pArrayField[plin,mcol_tipdados]);
  mtipocampo :=lowercase(pArrayField[mcol_tipdados]);

{
nao testado
ftSmallint: Result := '"i4"'; //??
ftWord: Result := '"i4"'; //??
ftAutoInc: Result := '"i4" SUBTYPE="Autoinc"';
ftCurrency: Result := '"r8" SUBTYPE="Money"';
ftBCD: Result := '"r8"'; //??
//    if fld.Required then
//      Result := Result + ' required="true"';
//    if fld.Readonly then
//      Result := Result + ' readonly="true"';

}
  if mtipocampo='alfanumerico' then
     Result := '"string" WIDTH="' + parrayfield[mcol_tamanho] + '"'
  else if mtipoCampo='inteiro' then
     Result := '"i4"'
  else if mtipoCampo='boolean' then
     Result := '"boolean"'
  else if mtipoCampo='numerico' then
     Result := '"r8"'
  else if mtipoCampo='data' then
     Result := '"date"'
  else if mtipoCampo='hora' then
     Result := '"time"' //??
  else if mtipoCampo='datahora' then
     Result := '"datetime"';
  end;

var
  i: Integer;
  mColArray: Integer;
  mFieldtype: TFieldType;
//  mtipofield: String;
begin
WriteString(Stream, '<?xml version="1.0" standalone="yes"?><!-- Generated by SMExport -->  ' +
                    '<DATAPACKET Version="2.0">');
WriteString(Stream, '<METADATA><FIELDS>');

{write th metadata}

//ShowMessage(IntTostr(high(ArrayDataset)));

for mColArray:=0 to high(ArrayDataset) do
  begin
  if mcolArray=0 then
     continue;
  WriteString(Stream, '<FIELD attrname="' +
                        array_cab[mColArray,mcol_nomexml] +
                        '" fieldtype=' +
                        XMLFieldType(ArrayDataset[mcolArray]) +
                        '/>');
  end;
WriteString(Stream, '</FIELDS>');
WriteString(Stream, '<PARAMS DEFAULT_ORDER="1" PRIMARY_KEY="1" LCID="1033"/>');
WriteString(Stream, '</METADATA><ROWDATA>');
end;


procedure WriteData(Stream: TFileStream; pNomeCampo: String; AsString: ShortString);
begin
  if (ASstring <> '') then
     WriteString(Stream, ' ' + pNomeCampo + '="' + ASstring + '"');
end;


procedure WriteRowStart(Stream: TFileStream; IsAddedTitle: Boolean);
begin
  if not IsAddedTitle then
    WriteString(Stream, '<ROW');
end;

procedure WriteRowEnd(Stream: TFileStream; IsAddedTitle: Boolean);
begin
  if not IsAddedTitle then
    WriteString(Stream, '/>');
end;

procedure WriteFileEnd(Stream: TFileStream);
begin
  WriteString(Stream, '</ROWDATA></DATAPACKET>');
end;


procedure TFrm_PFor01_Exp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PFor01_Exp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
