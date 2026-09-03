unit S_CobEle_Retorno;
{
legenda da acao
01 Entrada confirmada
02 Entrada Rejeitada
03 Entrada Rejeitada CEP
04 Efetuar baixa(titulo liquidado)
05 Efetuar baixa(titulo liquidado em cartorio)
06 Entrada em cartorio
07 Tarifa de Protesto
08 custas de Protesto
09 Liquidado com Cheque(Aguardar Aviso de Compensaçao)

}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids,func,S_DM1,lerarq,
  ExtCtrls,S_Bco, ComCtrls,func2, RLReport, jpeg, S_SelEmp, Mask, DBCtrls;

type
  TFrm_CobEle_Retorno = class(TForm)
    Src_Retorno: TDataSource;
    PageControl1: TPageControl;
    ts_Relatorio: TTabSheet;
    ts_Padrao: TTabSheet;
    panel_caixa: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    MCODCAI_PAD: TEdit;
    MNOMCAI_PAD: TEdit;
    MLOTMOV: TEdit;
    GroupBox1: TGroupBox;
    MARQORI: TEdit;
    bbProcurar: TBitBtn;
    bbAbrir: TBitBtn;
    bbSair: TBitBtn;
    DETARQORI: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbl_AGENCIA: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    CONTA: TEdit;
    DCONTA: TEdit;
    DAGENCIA: TEdit;
    AGENCIA: TEdit;
    NUMCON: TEdit;
    DATAARQ: TEdit;
    GB_PESQ: TGroupBox;
    Label15: TLabel;
    CB_PESQ: TComboBox;
    VALOR: TEdit;
    bbAchar: TBitBtn;
    RG_REGISTRO: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox4: TGroupBox;
    lbl_titliq: TLabel;
    lbl_entconf: TLabel;
    lbl_entrej: TLabel;
    lbl_entcart: TLabel;
    lbl_outras: TLabel;
    lbl_tarcart: TLabel;
    lbl_titliq_bai: TLabel;
    lbl_titbai: TLabel;
    lbl_pagochq: TLabel;
    Panel1: TPanel;
    bbEfetuar: TBitBtn;
    bbImprimir: TBitBtn;
    Tb_Retorno: TTable;
    Tb_RetornoTIPODEF: TIntegerField;
    Tb_RetornoTPCPFCNPJ: TIntegerField;
    Tb_RetornoCNPFCNPJ: TFloatField;
    Tb_RetornoCODAGE: TIntegerField;
    Tb_RetornoDIGAGE: TStringField;
    Tb_RetornoCODCED: TIntegerField;
    Tb_RetornoDIGCED: TStringField;
    Tb_RetornoNUMCON: TIntegerField;
    Tb_RetornoNUMDUP: TIntegerField;
    Tb_RetornoDESDDUP: TStringField;
    Tb_RetornoTIPCOB: TIntegerField;
    Tb_RetornoNOMTIPCOB: TStringField;
    Tb_RetornoTIPCOB_ANT: TIntegerField;
    Tb_RetornoNOMTIPCOB_ANT: TStringField;
    Tb_RetornoDIASCALC: TIntegerField;
    Tb_RetornoNATREC: TIntegerField;
    Tb_RetornoNOMNATREC: TStringField;
    Tb_RetornoPREFTIT: TStringField;
    Tb_RetornoVARCAR: TIntegerField;
    Tb_RetornoCTACAU: TIntegerField;
    Tb_RetornoCARTEIRA: TIntegerField;
    Tb_RetornoCOMANDO: TIntegerField;
    Tb_RetornoDATALIQ: TDateTimeField;
    Tb_RetornoDATAVENC: TDateTimeField;
    Tb_RetornoVALTIT: TFloatField;
    Tb_RetornoCODBCOREC: TIntegerField;
    Tb_RetornoAGENCIAREC: TIntegerField;
    Tb_RetornoDIGAGEREC: TStringField;
    Tb_RetornoESPTIT: TIntegerField;
    Tb_RetornoDATACRED: TDateTimeField;
    Tb_RetornoVALTAR: TFloatField;
    Tb_RetornoVALOUTD: TFloatField;
    Tb_RetornoVALJURD: TFloatField;
    Tb_RetornoVALIOFD: TFloatField;
    Tb_RetornoVALABAT: TFloatField;
    Tb_RetornoVALDESC: TFloatField;
    Tb_RetornoVALREC: TFloatField;
    Tb_RetornoVALJURMOR: TFloatField;
    Tb_RetornoVALOUTREC: TFloatField;
    Tb_RetornoVALABATNSAC: TFloatField;
    Tb_RetornoVALLANC: TFloatField;
    Tb_RetornoCREDEB: TIntegerField;
    Tb_RetornoINDVAL: TIntegerField;
    Tb_RetornoVALAJU: TFloatField;
    Tb_RetornoCOBCOMP: TStringField;
    Tb_RetornoCONVCOMP: TIntegerField;
    Tb_RetornoVALCOMP: TFloatField;
    Tb_RetornoNUMREG: TIntegerField;
    Tb_RetornoTAXDESC: TFloatField;
    Tb_RetornoTAXAIOF: TFloatField;
    Tb_RetornoNOMCLI: TStringField;
    Tb_RetornoCODACAO: TFloatField;
    Tb_RetornoCODEMP_DUP: TFloatField;
    Tb_RetornoDNOSNUM: TStringField;
    Tb_RetornoNOSNUM: TStringField;
    Tb_RetornoSTATUS_ANT: TFloatField;
    CB_CNAB240: TCheckBox;
    OpenDialog1: TOpenDialog;
    Tb_RetornoDATAPAG_ANT: TDateTimeField;
    Tb_RetornoNOMACAO: TStringField;
    Tb_RetornoTITPROT: TIntegerField;
    rl_cobeleret: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    rl_image: TRLImage;
    lbl_fone_fax: TRLLabel;
    lbl_city_est: TRLLabel;
    lbl_end_n: TRLLabel;
    edt_tarifa: TEdit;
    Label20: TLabel;
    tsOutroBanco: TTabSheet;
    Label21: TLabel;
    edt_nomusr: TEdit;
    bbSalvar: TBitBtn;
    Tb_RetornoNOME_RETORNO: TStringField;
    CB_REGBB: TCheckBox;
    Tb_RetornoDTEMIS: TDateField;
    Tb_RetornoCRCHAVE_ID: TFloatField;
    Tb_RetornoCRCHAVE_ID_ANO: TFloatField;
    lbl_baixado: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    lbl_baixadossemreceber: TLabel;
    Tb_RetornoCODRET: TIntegerField;
    Tb_RetornoNOMCLI_PERCPAR: TFloatField;
    Tb_RetornoVALOR_PERC_PAR: TFloatField;
    procedure bbProcurarClick(Sender: TObject);
    procedure bbAbrirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MARQORIExit(Sender: TObject);
    procedure bbEfetuarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CB_PESQExit(Sender: TObject);
    procedure bbAcharClick(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure MCODCAI_PADExit(Sender: TObject);
    procedure MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
    procedure MLOTMOVExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_tarifaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Tb_RetornoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

    mCodBcoCobranca: integer;
    mCodLdr_tarban: tChaveIdLdr;

    mCodLdr_local: tChaveIdLdr;


    function fGravarRetornos: boolean;

    procedure fZerarVariaveis;

    procedure fApresentarTotais;

    procedure fTotalizar;



    procedure fprocurarTituloDiscrepantes;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    function fRet001cnab4006_dig(pNomeArq: String): Boolean;
    function fprocurarTitulo(pNosNum: String; pNumero: Real; pDtVcto: tDateTime ): Boolean;

    function fInserirNovoTitulo(ptipo: Integer): Boolean;

    function fRet001Registro: Boolean;



    function fprocurarTitulo_Reg(pNosNum: String;pValor:Real): Boolean;

    function fRet756cnab240(pNomeArq: String): Boolean;

    procedure fCalcularDiferencas;

    function fRet033cnab240(pNomeArq: String): Boolean;

    function fRet422cnab400(pNomeArq: String): Boolean;


//    function FBuscartitulo(pNosNum: String): boolean;

  end;
function fRet237cnab400(pNomeArq: String): Boolean;
function fCobeleTestaExato(pTipo: Integer): boolean;
function fCobeleTestaAproximado(pTipo: Integer): boolean;
function fRet001cnab240(pNomeArq: String): Boolean;
function fRet341cnab400(pNomeArq: String): Boolean;
function fRet399cnab240(pNomeArq: String): Boolean;

var
  Frm_CobEle_Retorno: TFrm_CobEle_Retorno;
  mTabTemp: String='TMP1';
  vet_tipcob        : array of string;
  vet_natrec        : array of string;
  vet_natrec_entrada: array of string;
  vet_natrec_baixa  : array of string;
  vet_natrec_recusa : array of string;
  vet_natrec_altcob : array of string;
  vet_comando       : array of string;
  vet_acao_interna  : array of string;

  f: TextFile;
  mLinha: String;
  mQtdPagChq,mTotPagChq: Real;
  mQtdTitLiq,mTotTitLiq: Real;
  mQtdTitLiq_Bai,mTotTitLiq_Bai: Real;
  mQtdEntConf,mTotentConf: Real;
  mQtdEntRej,mTotentRej: Real;
  mQtdEntCart,mTotentCart: Real;
  mQtdOutras,mTotOutras: Real;
  mQtdBaixadosSemReceber,mTotBaixadosSemReceber: Real;
  mQtdTarCart,mTotTarCart: Real;
  mtotRec: Real;
  mQtdRec: Real;
  mCodCai_Cele: Integer;

  const mbb240_msacado: array [0..1] of integer =(325,50);


  const mitau400_valtit: array [0..1] of integer = (153,13);
  const mitau400_msacado: array [0..1] of integer = (325,50);

implementation

uses S_BDev, S_DM4, func_excecoes, S_Dar, CheckLst;

{$R *.dfm}

const mBancoSafra = 422;

procedure TFrm_CobEle_Retorno.bbProcurarClick(Sender: TObject);
begin
OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];
OpenDialog1.Filter := 'All Files (*.*)|*.*';
OpenDialog1.Title := 'Arquivos de Retorno';
if OpenDialog1.execute then
   begin
   MARQORI.Text := OpenDialog1.FileName;
   end;
MARQORIExit(self);
bbAbrirclick(self);
end;

function fRet0017dig(pNomeArq: String): Boolean;
var
mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;

mTabTemp:=fproctemp(15);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
   mTabTemp:=fproctemp(12);
   Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
   end;

Frm_CobEle_Retorno.Tb_Retorno.CreateTable;

Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,01)<>'7' then  //0-Cabecalho 7-detalhe 5-det.opcional 9-trailer
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
//   lindomar
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[1]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(copy(mlinha,2,2));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,4,14));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,4));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGE').AsString        :=copy(mlinha,22,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,23,8));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,31,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMCON').AsInteger       :=valint(copy(mlinha,32,07));
   mcinst:=copy(mlinha,39,25);
   mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
   mcinst3:=copy(mcinst,
                 length(mcinst2)+2,
                 length(mcinst)-length(mcinst2)+2);
   mcinst3:=trim(mcinst3);
   if length(mcinst3)>2 then
      mcinst3:=copy(mcinst3,1,2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat    :=codemp;
   mcinst:=trim(mcinst);
   if length(mcinst)>1 then
      begin
      if ValInt(mcinst[length(mcinst)])=1 then
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
         end
       else
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
         end;
      end;
//   mcinst:=copy(mlinha,127,20);
   mcinst:=copy(mlinha,064,17);
//   mcinst:=copy(mlinha,135,11);
   mcinst2:=copy(mcinst,1,length(mcinst)-1);
   mcinst3:=copy(mcinst,length(mcinst),1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=fdeixanum(mcinst2)+mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :='';
//   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat           :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString          :='Nao Encontrado!';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,241,13))/100;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,189,13))/100;

   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
   except
      end;
//   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,189,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,202,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,215,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,228,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat  :=fsonumero(copy(mlinha,267,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,280,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))]
      +'/'+vet_natrec_recusa[valint(copy(mlinha,87,2))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;

   mcinst:=copy(mlinha,176,02)+'/'+copy(mlinha,176+2,02)+'/'+copy(mlinha,176+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,07));

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))]
      +'/'+vet_natrec_recusa[valint(copy(mlinha,87,2))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;


   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      begin
      Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
      , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat   :=0;
   if valint(copy(mlinha,109,2))=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if ( (valint(copy(mlinha,109,2))=06) or
           (valint(copy(mlinha,109,2))=07) or
           (valint(copy(mlinha,109,2))=08) ) then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if valint(copy(mlinha,109,2))=46 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=05 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString:='Efetuar baixa(titulo liquidado)';

      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=96 then // Debito de Tarifas Cartorarias
      begin

      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;

   mcinst:=copy(mlinha,176,02)+'/'+copy(mlinha,176+2,02)+'/'+copy(mlinha,176+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,07));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));





   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))]
      +'/'+vet_natrec_recusa[valint(copy(mlinha,87,2))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;
//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;
   end;



try
   closefile(f);
except
  end;
end;

procedure TFrm_CobEle_Retorno.bbAbrirClick(Sender: TObject);
var
x: Integer;
x_vet: integer;
begin

if not FileExists(MARQORI.Text) then
   begin
   fmensagem('Arquivo não Encontrado!',0,['0'],0);
   exit;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
vet_tipcob:=nil;
SetLength(vet_tipcob,31);
vet_tipcob[00]:='Sem Alteração';
vet_tipcob[01]:='Simples';
vet_tipcob[02]:='Vinculada';
vet_tipcob[03]:='Inexistente';
vet_tipcob[04]:='Inexistente';
vet_tipcob[05]:='Inexistente';
vet_tipcob[06]:='Inexistente';
vet_tipcob[07]:='Direta';
vet_tipcob[08]:='Vendor';
for x:=9 to 30 do
   begin
   vet_tipcob[x]:='Inexistente';
   end;

vet_natrec_entrada:=nil;
SetLength(vet_natrec_entrada,19);
vet_natrec_baixa:=nil;
SetLength(vet_natrec_baixa,100);
vet_natrec_recusa:=nil;
SetLength(vet_natrec_recusa,100);
vet_natrec_altcob:=nil;
SetLength(vet_natrec_altcob,100);

vet_natrec:=nil;
SetLength(vet_natrec,100);

if valint(CODBCO.Text)=237 then
   begin
   vet_natrec[01]:='Não Definido';
   vet_natrec[02]:='Entrada Confirmada';
   vet_natrec[03]:='Entrada Rejeitada';
   vet_natrec[04]:='Não Definido';
   vet_natrec[05]:='Não Definido';
   vet_natrec[06]:='liquidacao normal';
   vet_natrec[07]:='Não Definido';
   vet_natrec[08]:='Não Definido';
   vet_natrec[09]:='Baixado Automat.via Arquivo';
   vet_natrec[10]:='Baixado Conforme Instrucoes da Agencia';
   vet_natrec[11]:='Em Ser - Arquivo de Titulos Pendentes';
   vet_natrec[12]:='Abatimento Concedido';
   vet_natrec[13]:='Abatimento Cancelado';
   vet_natrec[14]:='Vencimento Alterado';
   vet_natrec[15]:='Liquidado em Cartorio';
   vet_natrec[16]:='Titulo Pago em Cheque - Vinculado';
   vet_natrec[17]:='Liquidacao apos baixa ou Titulo nao Registrado';
   vet_natrec[18]:='Acerto de Depositario';
   vet_natrec[19]:='Confirmacao de Instrucao de Protesto';
   vet_natrec[20]:='Confirm. receb.Instru;cao sustacao de Protesto';
   vet_natrec[21]:='Acerto do Controle do Participante';
   vet_natrec[23]:='Entrada de Titulo em Cartorio';
   vet_natrec[24]:='Entrada Rejeitada por CEP irregular';
   vet_natrec[25]:='Não Definido';
   vet_natrec[26]:='Não Definido';
   vet_natrec[27]:='Baixa Rejeitada';
   vet_natrec[28]:='Debito de Tarifas/Custas';
   vet_natrec[29]:='Não Definido';
   vet_natrec[30]:='Alteracao de Outros dados Rejeitado';
   vet_natrec[31]:='Não Definido';
   vet_natrec[32]:='Não Definido';
   vet_natrec[33]:='Confirmacao Pedido alteracao outros dados';
   vet_natrec[34]:='Retirado de Cartorio e Manutencao Carteira';
   vet_natrec[35]:='Desagendamento do debito automatico';
   for x:=36 to 67 do
      begin
      vet_natrec[x]:='Não Definido';
      end;
   vet_natrec[68]:='Acerto dos dados do rateio de credito';
   vet_natrec[69]:='Cancelamento dos dados do rateio';
   end
else if ValInt(codbco.Text)=001 then
   begin
   vet_natrec[01]:='Não Definido';
   vet_natrec[02]:='Entrada confirmada';
   vet_natrec[03]:='Entrada Rejeitada.';
   vet_natrec[04]:='Transferencia de carteira/entrada.';
   vet_natrec[05]:='Transferencia de carteira/baixa.';
   vet_natrec[06]:='Baixa.';
   vet_natrec[07]:='liquidacao na apresentacao';
   vet_natrec[08]:='Não Definido';
   vet_natrec[09]:='Baixa.';
   vet_natrec[10]:='Não Definido';
   vet_natrec[11]:='Titulos em carteira /em ser/.';
   vet_natrec[12]:='Confirmacao recebimento instrucao de abatimento. ';
   vet_natrec[13]:='Confirmacao recebimento instrucao de cancelamento abatimento.';
   vet_natrec[14]:='Confirmacao recebimento instrucao alteracao de vencimento.';
   vet_natrec[15]:='Franco de pagamento.';
   vet_natrec[16]:='Nao Definido';
   vet_natrec[17]:='Liquidacao apos baixa ou liquidacao titulo nao registrado.';
   vet_natrec[18]:='Nao Definido';
   vet_natrec[19]:='Confirmacao recebimento instrucao de protesto. ';
   vet_natrec[20]:='Confirmacao recebimento instrucao de sustacao/cancelamento de protesto.';
   vet_natrec[21]:='Nao Definido';
   vet_natrec[22]:='Nao Definido';
   vet_natrec[23]:='Remessa a cartorio /aponte em cartorio/.';
   vet_natrec[24]:='Retirada de cartorio e manutencao em carteira.';
   vet_natrec[25]:='Protestado e baixado /baixa por ter sido protestado/.';
   vet_natrec[26]:='Instrucao rejeitada.';
   vet_natrec[27]:='Confirmacao do pedido de alteracao de outros dados.';
   vet_natrec[28]:='Debito de tarifas/custas.';
   vet_natrec[29]:='Ocorrencias do sacado.';
   vet_natrec[30]:='Alteracao de dados rejeitada.';
   vet_natrec[33]:='Confirmação da Alteração dos Dados do Rateio de Crédito.';
   vet_natrec[34]:='Confirmação do Cancelamento dos Dados do Rateio de Crédito.';
   vet_natrec[35]:='Confirmação do Desagendamento do Débito Automático.';
   vet_natrec[36]:='Confirmação de envio de e-mail/SMS.';
   vet_natrec[37]:='Envio de e-mail/SMS rejeitado.';
   vet_natrec[38]:='Confirmação de alteração do Prazo Limite de Recebimento (a data deve ser informada no campo 28.3.p).';
   vet_natrec[39]:='Confirmação de Dispensa de Prazo Limite de Recebimento.';
   vet_natrec[40]:='Confirmação da alteração do número do título dado pelo cedente.';
   vet_natrec[41]:='Confirmação da alteração do número controle do Participante.';
   vet_natrec[42]:='Confirmação da alteração dos dados do Sacado.';
   vet_natrec[43]:='Confirmação da alteração dos dados do Sacador/Avalista.';
   vet_natrec[44]:='Título pago com cheque devolvido.';
   vet_natrec[45]:='Título pago com cheque compensado.';
   vet_natrec[46]:='Instrução para cancelar protesto confirmada;';
   vet_natrec[47]:='Instrução para protesto para fins falimentares confirmada.';
   vet_natrec[48]:='Confirmação de instrução de transferência de carteira/modalidade de cobrança.';
   vet_natrec[49]:='Alteração de contrato de cobrança.';
   vet_natrec[50]:='Título pago com cheque pendente de liquidação.';
   end
else if valint(CODBCO.Text)=341 then
   begin
   vet_natrec[01]:='Não Definido';
   vet_natrec[02]:='Entrada Confirmada';
   vet_natrec[03]:='Entrada Rejeitada (nota 20 - Tabela 1)';
   vet_natrec[04]:='Alteração de dados - Nova Entrada';
   vet_natrec[05]:='Alteração de Dados - Baixa';
   vet_natrec[06]:='liquidação normal';
   vet_natrec[07]:='liquidação parcial - cobrança inteligente(B2B)';
   vet_natrec[08]:='liquidação em cartorio';
   vet_natrec[09]:='Baixa simples';
   vet_natrec[10]:='Baixa por ter sido liquidado';
   vet_natrec[11]:='Em Ser (só no retorno mensal)';
   vet_natrec[12]:='Abatimento Concedido';
   vet_natrec[13]:='Abatimento Cancelado';
   vet_natrec[14]:='Vencimento Alterado';
   vet_natrec[15]:='Baixa Rejeitadas(nota 20 Tabela 4)';
   vet_natrec[16]:='Instuções Rejeitadas(nota 20 - tabela 3)';
   vet_natrec[17]:='Alteração de dados Refeitados(nota 20 - tabela 2)';
   vet_natrec[18]:='Cobrança contratual - Abatimento e Baixa bloqueados (nota 20 - tabela 5)';
   vet_natrec[19]:='Confirma recebimento de instrucao de Protesto';
   vet_natrec[20]:='Confirma receb.Instrução sustacao de Protesto/tarifa';
   vet_natrec[21]:='confirma receb.Instrução de não protestar';
   vet_natrec[23]:='Titulo enviado a cartório/tarifa';
   vet_natrec[24]:='Instrução de Protesto rejeitada / Sustada /Pendente(nota 20 - tabela 7)';
   vet_natrec[25]:='Alegações do sacado (nota 20 - tabela 6)';
   vet_natrec[26]:='Tarifa de Aviso de Cobrança';
   vet_natrec[27]:='Tarifa de Extrato Posição (B40X)';
   vet_natrec[28]:='Tarifa de relação das liquidações';
   vet_natrec[29]:='Tarifa de Manutenção de Títulos Vencidos';
   vet_natrec[30]:='Débito Mensal de Tarifas(para entradas e Baixas)';
   vet_natrec[31]:='Não Definido';
   vet_natrec[32]:='Baixa por ter sido protestado';
   vet_natrec[33]:='Custas de protesto';
   vet_natrec[34]:='Custas de Sustação';
   vet_natrec[35]:='Custas de Cartório Distribuidor';
   vet_natrec[36]:='Custas de Edital';
   vet_natrec[37]:='Tarifa de Emissão de Bloqueto/Tarifa de envio de duplicata';
   vet_natrec[38]:='Não Definido';
   vet_natrec[39]:='Não Definido';
   vet_natrec[40]:='Não Definido';
   vet_natrec[41]:='Não Definido';
   vet_natrec[42]:='Débito Mensal de Tarifas - Outras Instruções';
   vet_natrec[43]:='Não Definido';
   vet_natrec[44]:='Não Definido';
   vet_natrec[45]:='Não Definido';
   vet_natrec[46]:='Não Definido';
   vet_natrec[47]:='Não Definido';
   vet_natrec[48]:='Não Definido';
   vet_natrec[49]:='Não Definido';
   vet_natrec[50]:='Não Definido';
   vet_natrec[51]:='Não Definido';
   vet_natrec[52]:='Tarifa Mensal Baixas na Carteira';
   vet_natrec[53]:='Tarifa Mensal Baixas em Bancos Correspondentes na Carteira';
   vet_natrec[54]:='Tarifa Mensal de Liquidações na carteira';
   vet_natrec[55]:='Tarifa Mensal de Liquidações em Bancos Correspodentes na Carteira';
   vet_natrec[56]:='Custas de Irregularidade';
   vet_natrec[57]:='Instrução Cancelada (nota 20 -Tabela 8)';
   vet_natrec[58]:='Não Definido';
   vet_natrec[59]:='Não Definido';
   vet_natrec[60]:='Entrada Rejeitada Carnê(nota 20 - tabela 1)';
   vet_natrec[61]:='Tarifa emissão aviso de movimento de títulos(2154)';
   vet_natrec[62]:='Débito Mensalde tarifa - aviso de movimentação de títulos (2154)';
   vet_natrec[63]:='Título sustado judicialmente';
   vet_natrec[64]:='entrada confirmada com rateio de crédito';
   vet_natrec[65]:='Taxa Invalida Vendor';
   vet_natrec[66]:='Invalida/Fora de prazo de operação (minimo ou maximo)';
   vet_natrec[67]:='Valor Titulo/Quantidade de Moeda Invalido';
   vet_natrec[68]:='Carteira Invalida';
   vet_natrec[69]:='Carteira Invalida para titulos com rateio de credito';
   vet_natrec[70]:='Cedente não cadastrado para fazer rateio de credito';
   for x:=71 to 78 do
      begin
      vet_natrec[x]:='Não Definido';
      end;
   vet_natrec[81]:='Conta para rateio de crédito invalido nao pertencente ao itau';
   vet_natrec[82]:='Desconto/Abatimento nao permitido para titulos com rateio de Credito';
   vet_natrec[83]:='Valor do titulo menor que a soma dos valores estipulados para rateio';
   vet_natrec[84]:='Agencia/Conta Beneficiária do rateio é a centralizadora de credito do cedente';
   vet_natrec[85]:='Agencia/Conta Cedente e contratual / Rateio  de credito nao permitido';
   vet_natrec[86]:='Codigo do Tipo de Valor invalido / nao previsto para titulos com rateio de credito';
   vet_natrec[87]:='Registro tipo 4 sem informação de agencias/contas beneficiarias do rateio';
   vet_natrec[88]:='Não Definido';
   vet_natrec[89]:='Não Definido';
   vet_natrec[90]:='Cobrança mensagem - Numero da linha da mensagem invalido';
   vet_natrec[91]:='DAC Agencia / Conta Corrente invalido';
   vet_natrec[92]:='DAC Agencia /Conta/Carteira/Nosso Numero Invalido';
   vet_natrec[93]:='Sigla Estado Invalido';
   vet_natrec[94]:='Sigla Estado Incompativel com o CEP do sacado';
   vet_natrec[95]:='CEP do sacado não numérico ou invalido';
   vet_natrec[96]:='Endereço/Nome/Cidade Sacado Invalido';
   vet_natrec[97]:='Cobrança Mensagem Sem Mensagem (só de campos fixos), porem com registro do tipo 7 ou 8';
   vet_natrec[98]:='Registro mensagem sem flash cadastrado ou flash informado diferente do cadastro';
   vet_natrec[99]:='Registro mensagem com flash cadastrado e sem registro de mensagem correspondente';
   end
else if valint(CODBCO.Text)=756 then // sicob
// sicoob
   begin
   vet_natrec[01]:='Não Definido';
   vet_natrec[02]:='Entrada confirmada';
   vet_natrec[03]:='Entrada Rejeitada.';
   vet_natrec[04]:='Transferencia de carteira/entrada.';
   vet_natrec[05]:='Transferencia de carteira/baixa.';
   vet_natrec[06]:='Liquidacao normal';
   vet_natrec[07]:='liquidacao na apresentacao';
   vet_natrec[08]:='Não Definido';
   vet_natrec[09]:='Baixado automaticamente via arquivos';
   vet_natrec[10]:='Baixado Conforme Instruções da Agência';
   vet_natrec[11]:='Em Ser – Arquivo de Títulos Pendentes';
   vet_natrec[12]:='Abatimento Concedido';
   vet_natrec[13]:='Abatimento Cancelado';
   vet_natrec[14]:='Vencimento Alterado';
   vet_natrec[15]:='Liquidação em Cartório';
   vet_natrec[16]:='Título pago em cheque – vinculado';
   vet_natrec[17]:='Liquidação após baixa ou título não registrado';
   vet_natrec[18]:='Acerto de Depositária';
   vet_natrec[19]:='Confirmação de Recebimento Instrução de Protesto';
   vet_natrec[20]:='Confirmação de Recebimento Instrução de Sustação de Protesto';
   vet_natrec[21]:='Acerto do Controle do Participante';
   vet_natrec[22]:='Título com pagamento cancelado';
   vet_natrec[23]:='Entrada do Título em Cartório';
   vet_natrec[24]:='Entrada Rejeitada por CEP irregular';
   vet_natrec[25]:='Nao definido';
   vet_natrec[26]:='Nao definido';
   vet_natrec[27]:='Baixa Rejeitada';
   vet_natrec[28]:='Baixa Rejeitada';
   vet_natrec[29]:='Nao definido';
   vet_natrec[30]:='Alteração de Outros Dados Rejeitados';
   vet_natrec[31]:='Nao definido';
   vet_natrec[32]:='Instrução Rejeitada';
   vet_natrec[33]:='Confirmação de Pedido de Alteração de Outros Dados';
   vet_natrec[34]:='Retirado de Cartório e Manutenção de Carteira';
   vet_natrec[35]:='Desagendamento do débito automático';
   for x_vet:=36 to 67 do
      begin
      vet_natrec[x_vet]:='Nao definido';
      end;

   vet_natrec[68]:='Acerto do dados de rateio de crédito';
   vet_natrec[69]:='Cancelamento dos dados do rateio';
   end


// sicoob termino
// inicio safra
else if valint(CODBCO.Text)=mBancoSafra then // sicob
// sicoob
   begin
   vet_natrec[01]:='Não Definido';
   vet_natrec[02]:='Entrada confirmada';
   vet_natrec[03]:='Entrada Rejeitada.';
   vet_natrec[04]:='Transferencia de carteira/entrada.';
   vet_natrec[05]:='Transferencia de carteira/baixa.';
   vet_natrec[06]:='Liquidacao normal';
   vet_natrec[07]:='liquidacao na apresentacao';
   vet_natrec[08]:='Não Definido';
   vet_natrec[09]:='Baixado automaticamente via arquivos';
   vet_natrec[10]:='Baixado Conforme Instruções da Agência';
   vet_natrec[11]:='Em Ser – Arquivo de Títulos Pendentes';
   vet_natrec[12]:='Abatimento Concedido';
   vet_natrec[13]:='Abatimento Cancelado';
   vet_natrec[14]:='Vencimento Alterado';
   vet_natrec[15]:='Liquidação em Cartório';
   vet_natrec[16]:='Título pago em cheque – vinculado';
   vet_natrec[17]:='Liquidação após baixa ou título não registrado';
   vet_natrec[18]:='Acerto de Depositária';
   vet_natrec[19]:='Confirmação de Recebimento Instrução de Protesto';
   vet_natrec[20]:='Confirmação de Recebimento Instrução de Sustação de Protesto';
   vet_natrec[21]:='Acerto do Controle do Participante';
   vet_natrec[22]:='Título com pagamento cancelado';
   vet_natrec[23]:='Entrada do Título em Cartório';
   vet_natrec[24]:='Entrada Rejeitada por CEP irregular';
   vet_natrec[25]:='Nao definido';
   vet_natrec[26]:='Nao definido';
   vet_natrec[27]:='Baixa Rejeitada';
   vet_natrec[28]:='Baixa Rejeitada';
   vet_natrec[29]:='Nao definido';
   vet_natrec[30]:='Alteração de Outros Dados Rejeitados';
   vet_natrec[31]:='Nao definido';
   vet_natrec[32]:='Instrução Rejeitada';
   vet_natrec[33]:='Confirmação de Pedido de Alteração de Outros Dados';
   vet_natrec[34]:='Retirado de Cartório e Manutenção de Carteira';
   vet_natrec[35]:='Desagendamento do débito automático';




   for x_vet:=36 to 67 do
      begin
      vet_natrec[x_vet]:='Nao definido';
      end;

   vet_natrec[68]:='Acerto do dados de rateio de crédito';
   vet_natrec[69]:='Cancelamento dos dados do rateio';
   end



else
   begin
   vet_natrec[01]:='liquidacao normal';
   vet_natrec[02]:='por conta';
   vet_natrec[03]:='liquidacao por saldo';
   vet_natrec[04]:='liquidacao com cheque a compensar';
   vet_natrec[05]:='liquidacao de titulo sem registro/cart.17, tipo 4/';
   vet_natrec[06]:='Não Definido';
   vet_natrec[07]:='liquidacao na apresentacao';
   vet_natrec[08]:='Não Definido';
   vet_natrec[09]:='liquidacao em cartorio';
   end;

vet_natrec_entrada[00]:='Por meio magnetico';
vet_natrec_entrada[01]:='Não Definido';
vet_natrec_entrada[02]:='Não Definido';
vet_natrec_entrada[03]:='Não Definido';
vet_natrec_entrada[04]:='Não Definido';
vet_natrec_entrada[05]:='Não Definido';
vet_natrec_entrada[06]:='Não Definido';
vet_natrec_entrada[07]:='Não Definido';
vet_natrec_entrada[08]:='Não Definido';
vet_natrec_entrada[09]:='Não Definido';
vet_natrec_entrada[11]:='Por via convencional';
vet_natrec_entrada[12]:='Não Definido';
vet_natrec_entrada[13]:='Não Definido';
vet_natrec_entrada[14]:='Não Definido';
vet_natrec_entrada[15]:='Protestado';
vet_natrec_entrada[16]:='Por alteracao do codigo do cedente';
vet_natrec_entrada[17]:='Por alteracao da variacao';
vet_natrec_entrada[18]:='por alteracao da carteira';

vet_natrec_baixa[00]:='Solicitada pelo cliente';
vet_natrec_baixa[01]:='Não Definido';
vet_natrec_baixa[02]:='Não Definido';
vet_natrec_baixa[03]:='Não Definido';
vet_natrec_baixa[04]:='Não Definido';
vet_natrec_baixa[05]:='Não Definido';
vet_natrec_baixa[06]:='Não Definido';
vet_natrec_baixa[07]:='Não Definido';
vet_natrec_baixa[08]:='Não Definido';
vet_natrec_baixa[09]:='Não Definido';
for x:=10 to 14 do
   begin
   vet_natrec_baixa[x]:='Não Definido';
   end;
vet_natrec_baixa[15]:='Protestado';
vet_natrec_baixa[16]:='Não Definido';
vet_natrec_baixa[17]:='Não Definido';
vet_natrec_baixa[18]:='Por alteracao da carteira';
vet_natrec_baixa[19]:='Debito automatico';
for x:=20 to 30 do
   begin
   vet_natrec_baixa[x]:='Não Definido';
   end;

vet_natrec_baixa[31]:='Liquidado anteriormente';
vet_natrec_baixa[32]:='Habilitado em processo';
vet_natrec_baixa[33]:='Incobravel por nosso intermedio';
vet_natrec_baixa[34]:='Transferido para creditos em liquidação';
for x:=35 to 45 do
   begin
   vet_natrec_baixa[x]:='Não Definido';
   end;
vet_natrec_baixa[46]:='Por alteracao do codigo do cedente';
vet_natrec_baixa[47]:='Por alteracao da variacao';
vet_natrec_baixa[48]:='Não Definido';
vet_natrec_baixa[49]:='Não Definido';
vet_natrec_baixa[50]:='Não Definido';
vet_natrec_baixa[51]:='Acerto';
for x:=52 to 89 do
   begin
   vet_natrec_baixa[x]:='Não Definido';
   end;
vet_natrec_baixa[90]:='Baixa automatica';

vet_natrec_recusa[01]:='Identificacao invalida';
vet_natrec_recusa[02]:='Variacao da carteira invalida';
vet_natrec_recusa[03]:='Valor dos juros por um dia inválido';
vet_natrec_recusa[04]:='Valor do desconto invalido';
vet_natrec_recusa[05]:='Especie de titulo invalida para'+#13
                      +'carteira/variação';
vet_natrec_recusa[06]:='Especie de valor variavel inválido';
vet_natrec_recusa[07]:='Prefixo da agencia usuaria inválido';
vet_natrec_recusa[08]:='Valor do titulo/apolice invalido';
vet_natrec_recusa[09]:='Data de vencimento invalida';
vet_natrec_recusa[10]:='Fora do prazo /Soh admissivel na carteira 11/';
vet_natrec_recusa[11]:='Inexistencia de margem para desconto';
vet_natrec_recusa[12]:='O Banco nao tem agencia na praça do sacado';
vet_natrec_recusa[13]:='Razoes cadastrais';
vet_natrec_recusa[14]:='Sacado interligado com o sacador/Só'+#13
                      +'admissível em cobranca simples- cart. 11 e 17/';
vet_natrec_recusa[15]:='Titulo sacado contra orgao do Poder Público'+#13
                      +'/Soh admissivel na cart.11 e sem ordem de'+#13
                      +'protesto/';
vet_natrec_recusa[16]:='Titulo preenchido de forma irregular';
vet_natrec_recusa[17]:='Titulo rasurado';
vet_natrec_recusa[18]:='Ender.do sacado não localizado ou incompleto';
vet_natrec_recusa[19]:='Codigo do cedente invalido';
vet_natrec_recusa[20]:='Nome/endereco do cliente não informado/ECT/';
vet_natrec_recusa[21]:='Carteira invalida';
vet_natrec_recusa[22]:='Quantidade de valor variavel inválida';
vet_natrec_recusa[23]:='Faixa nosso-numero excedida';
vet_natrec_recusa[24]:='Valor do abatimento invalido';
vet_natrec_recusa[25]:='Novo numero do tit. dado pelo cedente'+#13
                      +'inválido';
vet_natrec_recusa[26]:='Valor do IOF de seguro invalido';
vet_natrec_recusa[27]:='Nome do sacado/cedente invalido ou não'+#13
                      +'informado';
vet_natrec_recusa[28]:='Data do novo vencimento invalida';
vet_natrec_recusa[29]:='Endereco nao informado';
vet_natrec_recusa[30]:='Registro de titulo jah liquidado/cart.17-tipo 4/';
vet_natrec_recusa[31]:='Numero do bordero invalido';
vet_natrec_recusa[32]:='Nome da pessoa autorizada inválido';
vet_natrec_recusa[33]:='Nosso numero jah existente';
vet_natrec_recusa[34]:='Numero da prestacao do contrato inválido';
vet_natrec_recusa[35]:='percentual de desconto invalido';
vet_natrec_recusa[36]:='Dias para fichamento de protesto inválido';
vet_natrec_recusa[37]:='Data de emissao do titulo inválida';
vet_natrec_recusa[38]:='Data do vencimento anterior aa data da'+#13
                      +'emissao do titulo';
vet_natrec_recusa[39]:='Comando de alteracao indevido para a carteira';
vet_natrec_recusa[40]:='Tipo de moeda invalido';
vet_natrec_recusa[41]:='Abatimento nao permitido';
vet_natrec_recusa[42]:='CEP/UF invalido/nao compativeis /ECT/';
vet_natrec_recusa[43]:='Codigo de unidade variavel incompatível com a'+#13
                      +'data de emissão do título';
vet_natrec_recusa[44]:='Dados para debito ao sacado inválidos';
vet_natrec_recusa[45]:='Carteira/variacao encerrada';
vet_natrec_recusa[46]:='Convenio encerrado';
vet_natrec_recusa[47]:='Titulo tem valor diverso do informado';
vet_natrec_recusa[48]:='Motivo de baixa invalido para a carteira';
vet_natrec_recusa[49]:='Abatimento a cancelar nao consta do título';
vet_natrec_recusa[50]:='Comando incompativel com a carteira';
vet_natrec_recusa[51]:='Codigo do convenente invalido';
vet_natrec_recusa[52]:='Abatimento igual ou maior que o valor do título';
vet_natrec_recusa[53]:='Titulo jah se encontra na situação pretendida';
vet_natrec_recusa[54]:='Titulo fora do prazo admitido para a conta 1';
vet_natrec_recusa[55]:='Novo vencimento fora dos limites da carteira';
vet_natrec_recusa[56]:='Titulo nao pertence ao convenente';
vet_natrec_recusa[57]:='Variacao incompativel com a carteira';
vet_natrec_recusa[58]:='Impossivel a transferencia para a cart.indicada';
vet_natrec_recusa[59]:='Titulo vencido em transferência para a cart.51';
vet_natrec_recusa[60]:='Titulo com prazo superior a 179 dias em '+#13
                      +'transferencia para carteira 51';
vet_natrec_recusa[61]:='Titulo jah foi fichado para protesto';
vet_natrec_recusa[62]:='Alteracao da situacao de debito inválida para'+#13
                      +'o código de responsabilidade';
vet_natrec_recusa[63]:='DV do nosso numero invalido';
vet_natrec_recusa[64]:='Titulo nao passivel de débito/baixa-situação anormal';
vet_natrec_recusa[65]:='Titulo com ordem de não protestar-não pode'+#13
                      +'ser encaminhado a cartório';
vet_natrec_recusa[66]:='Não Definido';
vet_natrec_recusa[67]:='Titulo/carne rejeitado';
vet_natrec_recusa[68]:='Não Definido';
vet_natrec_recusa[69]:='Valor/Percentual de Juros Inválido';
vet_natrec_recusa[70]:='Título já se encontra isento de juros';
vet_natrec_recusa[71]:='Código de Juros Inválido';
vet_natrec_recusa[72]:='Pedido de Protesto Recusado - Cidade do'+#13
                      +'Sacado Não Protesta Títulos. do sacado. ';
for x:=73 to 79 do
   begin
   vet_natrec_recusa[x]:='Não Definido';
   end;
vet_natrec_recusa[80]:='Nosso numero invalido';
vet_natrec_recusa[81]:='Data para concessao do desconto inválida.'+#13
                      +'Gerada nos seguintes casos..'+#13
                      +'a/ erro na data do desconto., '+#13
                      +'b/ data do desconto anterior aa data de emissão ';
vet_natrec_recusa[82]:='CEP do sacado invalido';
vet_natrec_recusa[83]:='Carteira/variacao nao localizada no cedente';
vet_natrec_recusa[84]:='Titulo nao localizado na existência';
for x:=85 to 98 do
   begin
   vet_natrec_recusa[x]:='Não Definido';
   end;
vet_natrec_recusa[99]:='Outros motivos';

for x:=0 to 99 do
   begin
   vet_natrec_altcob[x]:='Não Definido';
   end;
vet_natrec_altcob[00]:='Transferencia de titulo de Cobrança Simples'+#13
                      +'para Descontada';
vet_natrec_altcob[52]:='Reembolso de titulo Vendor ou Descontado';
vet_comando:=nil;
SetLength(vet_comando,100);
vet_comando[00]:='Não Definido';
vet_comando[01]:='Não Definido';
vet_comando[02]:='Confirmacao de Entrada de Título';
vet_comando[03]:='Comando recusado /ver posicao 081/082/';
vet_comando[04]:='Liquidado sem registro /carteira 17-tipo4 /';
vet_comando[05]:='Não Definido';
vet_comando[06]:='Liquidacao Normal';
vet_comando[07]:='Liquidacao por Conta';
vet_comando[08]:='Liquidacao por Saldo';
vet_comando[09]:='Baixa de Titulo';
vet_comando[10]:='Baixa Solicitada';
vet_comando[11]:='Titulos em Ser /constara somente do arquivo'+#13
                +'de existência de cobranca, fornecido mediante'+#13
                +'solicita~]ao do cliente/';
vet_comando[12]:='Abatimento Concedido';
vet_comando[13]:='Abatimento Cancelado';
vet_comando[14]:='Alteracao de Vencimento do título';
vet_comando[15]:='Liquidacao em Cartorio';
vet_comando[16]:='Confirmação de altyeração de juros de ora';
vet_comando[17]:='Não Definido';
vet_comando[18]:='Não Definido';
vet_comando[19]:='Confirmacao de recebimento de instruções para protesto';
vet_comando[20]:='Debito em Conta';
vet_comando[21]:='Alteracao do Nome do Sacado';
vet_comando[22]:='Alteracao do Endereco do Sacado';
vet_comando[23]:='Indicacao de encaminhamento a cartório';
vet_comando[24]:='Sustar Protesto';
vet_comando[25]:='Dispensar Juros de mora';
vet_comando[26]:='Não Definido';
vet_comando[27]:='Não Definido';
vet_comando[28]:='Manutencao de titulo vencido';
vet_comando[29]:='Não Definido';
vet_comando[30]:='Não Definido';
vet_comando[31]:='Conceder desconto';
vet_comando[32]:='Nao conceder desconto';
vet_comando[33]:='Retificar desconto';
vet_comando[34]:='Alterar data para desconto';
vet_comando[35]:='Cobrar Multa';
vet_comando[36]:='Dispensar Multa';
vet_comando[37]:='Dispensar Indexador';
vet_comando[38]:='Dispensar prazo limite para recebimento';
vet_comando[39]:='Alterar prazo limite para recebimento';
for x:=40 to 71 do
   begin
   vet_comando[x]:='Não Definido';
   end;
vet_comando[72]:='Alteracao de tipo de cobranca/específico para'+#13
                +'títulos das carteiras 11 e 17/.';
for x:=73 to 95 do
   begin
   vet_comando[x]:='Não Definido';
   end;
vet_comando[96]:='Despesas de Protesto';
vet_comando[97]:='Despesas de Sustacao de Protesto';
vet_comando[98]:='Debito de Custas Antecipadas';


if ValInt(codbco.Text)=1 then
  begin
  vet_natrec_recusa:=nil;
  SetLength(vet_natrec_recusa,100);
  vet_natrec_recusa[01] :='Código do Banco Inválido.';
  vet_natrec_recusa[02] := 'Código do Registro Detalhe Inválido.';
  vet_natrec_recusa[03] := 'Código do Segmento Inválido.';
  vet_natrec_recusa[04] := 'Código de Movimento Não Permitido para Carteira.';
  vet_natrec_recusa[05] := 'Código de Movimento Inválido.';
  vet_natrec_recusa[06] := 'Tipo/Número de Inscrição do Cedente Inválidos.';
  vet_natrec_recusa[07] := 'Agência/ContaDV Inválido.';
  vet_natrec_recusa[08] := 'Nosso Número Inválido.';
  vet_natrec_recusa[09] := 'Nosso Número Duplicado.';
  vet_natrec_recusa[10] := 'Carteira Inválida.';
  vet_natrec_recusa[11] := 'Forma de Cadastramento do Título Inválido.';
  vet_natrec_recusa[12] := 'Tipo de Documento Inválido.';
  vet_natrec_recusa[13] := 'Identificação da Emissão do Bloqueto Inválida.';
  vet_natrec_recusa[14] := 'Identificação da Distribuição do Bloqueto Inválida.';
  vet_natrec_recusa[15] := 'Características da Cobrança Incompatíveis.';
  vet_natrec_recusa[16] := 'Data de Vencimento Inválida.';
  vet_natrec_recusa[17] := 'Data de Vencimento Anterior a Data de Emissão.';
  vet_natrec_recusa[18] := 'Vencimento Fora do Prazo de Operação.';
  vet_natrec_recusa[19] := 'Título a Cargo de Bancos Correspondentes com Vencimento Inferior a XX Dias.';
  vet_natrec_recusa[20] := 'Valor do Título Inválido.';
  vet_natrec_recusa[21] := 'Espécie do Título Inválida.';
  vet_natrec_recusa[22] := 'Espécie do Título Não Permitida para a Carteira.';
  vet_natrec_recusa[23] := 'Aceite Inválido.';
  vet_natrec_recusa[24] := 'Data da Emissão Inválida.';
  vet_natrec_recusa[25] := 'Data da Emissão Posterior a Data de Entrada.';
  vet_natrec_recusa[26] := 'Código de Juros de Mora Inválido.';
  vet_natrec_recusa[27] := 'Valor/Taxa de Juros de Mora Inválido.';
  vet_natrec_recusa[28] := 'Código do Desconto Inválido.';
  vet_natrec_recusa[29] := 'Valor do Desconto Maior ou Igual ao Valor do Título.';
  vet_natrec_recusa[30] := 'Desconto a Conceder Não Confere.';
  vet_natrec_recusa[31] := 'Concessão de Desconto - Já Existe Desconto Anterior.';
  vet_natrec_recusa[32] := 'Valor do IOF Inválido.';
  vet_natrec_recusa[33] := 'Valor do Abatimento Inválido.';
  vet_natrec_recusa[34] := 'Valor do Abatimento Maior ou Igual ao Valor do Título.';
  vet_natrec_recusa[35] := 'Valor a Conceder Não Confere.';
  vet_natrec_recusa[36] := 'Concessão de Abatimento - Já Existe Abatimento Anterior.';
  vet_natrec_recusa[37] := 'Código para Protesto Inválido.';
  vet_natrec_recusa[38] := 'Prazo para Protesto Inválido.';
  vet_natrec_recusa[39] := 'Pedido de Protesto Não Permitido para o Título.';
  vet_natrec_recusa[40] := 'Título com Ordem de Protesto Emitida.';
  vet_natrec_recusa[41] := 'Pedido de Cancelamento/Sustação para Títulos sem Instrução de Protesto.';
  vet_natrec_recusa[42] := 'Código para Baixa/Devolução Inválido.';
  vet_natrec_recusa[43] := 'Prazo para Baixa/Devolução Inválido.';
  vet_natrec_recusa[44] := 'Código da Moeda Inválido.';
  vet_natrec_recusa[45] := 'Nome do Sacado Não Informado.';
  vet_natrec_recusa[46] := 'Tipo/Número de Inscrição do Sacado Inválidos.';
  vet_natrec_recusa[47] := 'Endereço do Sacado Não Informado.';
  vet_natrec_recusa[48] := 'CEP Inválido.';
  vet_natrec_recusa[49] := 'CEP Sem Praça de Cobrança (Não Localizado).';
  vet_natrec_recusa[50] := 'CEP Referente a um Banco Correspondente.';
  vet_natrec_recusa[51] := 'CEP incompatível com a Unidade da Federação.';
  vet_natrec_recusa[52] := 'Unidade da Federação Inválida.';
  vet_natrec_recusa[53] := 'Tipo/Número de Inscrição do Sacador/Avalista Inválidos.';
  vet_natrec_recusa[54] := 'Sacador/Avalista Não Informado.';
  vet_natrec_recusa[55] := 'Nosso número no Banco Correspondente Não Informado.';
  vet_natrec_recusa[56] := 'Código do Banco Correspondente Não Informado.';
  vet_natrec_recusa[57] := 'Código da Multa Inválido.';
  vet_natrec_recusa[58] := 'Data da Multa Inválida.';
  vet_natrec_recusa[59] := 'Valor/Percentual da Multa Inválido.';
  vet_natrec_recusa[60] := 'Movimento para Título Não Cadastrado.';
  vet_natrec_recusa[61] := 'Alteração da Agência Cobradora/DV Inválida.';
  vet_natrec_recusa[62] := 'Tipo de Impressão Inválido.';
  vet_natrec_recusa[63] := 'Entrada para Título já Cadastrado.';
  vet_natrec_recusa[64] := 'Número da Linha Inválido.';
  vet_natrec_recusa[65] := 'Código do Banco para Débito Inválido.';
  vet_natrec_recusa[66] := 'Agência/Conta/DV para Débito Inválido.';
  vet_natrec_recusa[67] := 'Dados para Débito incompatível com a Identificação da Emissão do Bloqueto.';
  vet_natrec_recusa[68] := 'Débito Automático Agendado.';
  vet_natrec_recusa[69] := 'Débito Não Agendado - Erro nos Dados da Remessa.';
  vet_natrec_recusa[70] := 'Débito Não Agendado - Sacado Não Consta do Cadastro de Autorizante.';
  vet_natrec_recusa[71] := 'Débito Não Agendado - Cedente Não Autorizado pelo Sacado.';
  vet_natrec_recusa[72] := 'Débito Não Agendado - Cedente Não Participa da Modalidade Débito Automático.';
  vet_natrec_recusa[73] := 'Débito Não Agendado - Código de Moeda Diferente de Real (R$).';
  vet_natrec_recusa[74] := 'Débito Não Agendado - Data Vencimento Inválida.';
  vet_natrec_recusa[75] := 'Débito Não Agendado, Conforme seu Pedido, Título Não Registrado.';
  vet_natrec_recusa[76] := 'Débito Não Agendado, Tipo/Num. Inscrição do Debitado, Inválido.';
  vet_natrec_recusa[77] := 'Transferência para Desconto Não Permitida para a Carteira do Título.';
  vet_natrec_recusa[78] := 'Data Inferior ou Igual ao Vencimento para Débito Automático.';
  vet_natrec_recusa[79] := 'Data Juros de Mora Inválido.';
  vet_natrec_recusa[80] := 'Data do Desconto Inválida.';
  vet_natrec_recusa[81] := 'Tentativas de Débito Esgotadas - Baixado.';
  vet_natrec_recusa[82] := 'Tentativas de Débito Esgotadas - Pendente.';
  vet_natrec_recusa[83] := 'Limite Excedido.';
  vet_natrec_recusa[84] := 'Número Autorização Inexistente.';
  vet_natrec_recusa[85] := 'Título com Pagamento Vinculado.';
  vet_natrec_recusa[86] := 'Seu Número Inválido.';
  vet_natrec_recusa[87] := 'e-mail/SMS enviado.';
  vet_natrec_recusa[88] := 'e-mail Lido.';
  vet_natrec_recusa[89] := 'e-mail/SMS devolvido - endereço de e-mail ou número do celular incorreto.';
  vet_natrec_recusa[90] := 'baixa automática';
  vet_natrec_recusa[91] := 'e-mail/número do celular do sacado não informado.';
  vet_natrec_recusa[92] := 'Sacado optante por Bloqueto Eletrônico - e-mail não enviado.';
  vet_natrec_recusa[93] := 'Código para emissão de bloqueto não permite envio de e-mail.';
  vet_natrec_recusa[94] := 'Código da Carteira inválido para envio e-mail.';
  vet_natrec_recusa[95] := 'Contrato não permite o envio de e-mailIdentificacao invalida.';
  end;

mQtdTitLiq :=0;
mTotTitLiq :=0;
mQtdTitLiq_bai :=0;
mTotTitLiq_bai :=0;
mQtdPagChq     :=0;
mTotPagChq     :=0;

mtotRec        :=0;
mQtdRec        :=0;


mQtdEntConf:=0;
mTotentConf:=0;
mQtdEntRej :=0;
mTotentRej :=0;
mQtdEntCart:=0;
mTotentCart:=0;
mQtdOutras :=0;
mTotOutras :=0;
mQtdTarCart:=0;
mTotTarCart:=0;

if valint(CODBCO.Text)=1 then
   begin
   if CB_REGBB.Checked then
      fRet001Registro
   else if CB_CNAB240.Checked then
      fRet001cnab240(MARQORI.Text)
   else if length(NUMCON.Text)=6 then
      fRet001cnab4006_dig(MARQORI.Text)
   else
      fRet0017dig(MARQORI.Text);
   end
else if valint(CODBCO.Text)=756 then
   begin
   if CB_CNAB240.Checked then
      fRet756cnab240(MARQORI.Text)
   end

else if valint(CODBCO.Text)=033 then
   begin
   if CB_CNAB240.Checked then
      fRet033cnab240(MARQORI.Text)
   else
      MessageDlg('Não Esta Configurado este tipo de Retorno!',mtWarning,[mbOk],0);   
   end

else if valint(CODBCO.Text)=237 then
   begin
   fRet237cnab400(MARQORI.Text);
   end
else if valint(CODBCO.Text)=341 then
   begin
   fRet341cnab400(MARQORI.Text);
   end
else if valint(CODBCO.Text)=399 then
   begin
   fRet399cnab240(MARQORI.Text);
   end
else if valint(CODBCO.Text)=422 then
   begin
   fRet422cnab400(MARQORI.Text);
   end;

fprocurarTituloDiscrepantes;

fApresentarTotais;
fmensagem('Tabela Criada! ',0,['0'],0);



end;

procedure TFrm_CobEle_Retorno.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CobEle_Retorno.FormCreate(Sender: TObject);
begin
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').DisplayLabel:='Tipo';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').DisplayLabel:='01-CNPF/02-CNPJ';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').DisplayLabel:='CNPJ ou CNPF';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').DisplayLabel:='Agência';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGE').DisplayLabel:='dv';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').DisplayLabel:='No.Conta';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').DisplayLabel:='dv';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMCON').DisplayLabel:='No.Convênio';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').DisplayLabel:='No.Título';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').DisplayLabel:='Desd';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').DisplayLabel:='Nosso Número';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').DisplayLabel:='Dig N.Núm';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPCOB').DisplayLabel:='Tp.Cob';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMTIPCOB').DisplayLabel:='Tipo Cobrança';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPCOB_ANT').DisplayLabel:='Tp.cob.Ant';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMTIPCOB_ANT').DisplayLabel:='Tipo Cobrança Ant.';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIASCALC').DisplayLabel:='dd p/Calc';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').DisplayLabel:='Nat/Mot';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').DisplayLabel:='Natureza / Motivo';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('PREFTIT').DisplayLabel:='Pref.Tit';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VARCAR').DisplayLabel:='Var.Cart.';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CTACAU').DisplayLabel:='Cta.Caução';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TAXDESC').DisplayLabel:='Taxa Desconto';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TAXDESC') as TFloatField).DisplayFormat:=mCasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TAXAIOF').DisplayLabel:='Taxa I.O.F.';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TAXAIOF') as TFloatField).DisplayFormat:=mCasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').DisplayLabel:='Carteira';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('COMANDO').DisplayLabel:='Carteira';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').DisplayLabel:='Data Liquidação';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ') as TDateTimeField).DisplayFormat:=fdt2;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').DisplayLabel:='Dt.Vcto';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC') as TDateTimeField).DisplayFormat:=fdt2;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').DisplayLabel:='Valor Título';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').DisplayLabel:='Bco.Receb';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').DisplayLabel:='Agencia Receb';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').DisplayLabel:='Dig.Ag.Rec';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('ESPTIT').DisplayLabel:='Especie Tit';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').DisplayLabel:='Dt.Credito';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED') as TDateTimeField).DisplayFormat:=fdt2;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTAR').DisplayLabel:='Valor Tarifa';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTAR') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').DisplayLabel:='Valor Outras Desp';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').DisplayLabel:='Valor Juros Desc.';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').DisplayLabel:='Valor IOF desc';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').DisplayLabel:='Valor Abatimento';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').DisplayLabel:='Valor Desc.Conc';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').DisplayLabel:='Valor Recebido';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').DisplayLabel:='Juros de Mora';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').DisplayLabel:='Valor Outros Recbto';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABATNSAC').DisplayLabel:='Vlr.Abat.Não Aprov.Sacado';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABATNSAC') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALLANC').DisplayLabel:='Valor Lancto.';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALLANC') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CREDEB').DisplayLabel:='0-Sem Lcto 1-Deb. 2-Cred';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('INDVAL').DisplayLabel:='1-Aj.Déb 2-Aj.Cred';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALAJU').DisplayLabel:='Valor do Ajuste';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALAJU') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('COBCOMP').DisplayLabel:='Cobrança Compart 2-Conv.Compartilhador 3-Compartilhado ';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CONVCOMP').DisplayLabel:='No.Convênio Compartilhado';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALCOMP').DisplayLabel:='Valor Compartilhado';
(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALCOMP') as TFloatField).DisplayFormat:=mcasas;
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').DisplayLabel:='Número Registro';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').DisplayLabel:='Razão Social';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').DisplayLabel:='Cod.Acão';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').DisplayLabel:='Nome da Acão';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').DisplayLabel:='Emp';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DTEMIS').DisplayLabel:='Data Emissao';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAPAG_ANT').DisplayLabel:='Dt.Pgto.Ant.';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID').DisplayLabel:='Chave ID';
Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID_ANO').DisplayLabel:='Ano Chave ID';

vet_tipcob:=nil;
SetLength(vet_acao_interna,10);

vet_acao_interna[00]:='            ';
vet_acao_interna[01]:='Confirmacao de Entrada';
vet_acao_interna[02]:='Rejeicao de Entrada';
vet_acao_interna[03]:='Problemas no CEP';
vet_acao_interna[04]:='Recebido';
vet_acao_interna[05]:='Recebido em Cartorio';
vet_acao_interna[06]:='Titulo Prostestado(Entrada em Cartorio)';
vet_acao_interna[07]:='Debito Tarifas(Taxas Cartorio)';
vet_acao_interna[08]:='Debito Tarifas(Taxas Cartorio)';
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
mCodCai_Cele :=codcai;
MCODCAI_PAD.Text:=IntToStr(mCodCai_Cele);
MLOTMOV.Text:=IntToStr(lotmov);
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI_PAD.Text) then
   MNOMCAI_PAD.Text:=DM1.Query1.Fields[0].AsString;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if flfilpad(1111,'_CODELE_RETORNO','EDT_NOMUSR') then
   edt_nomusr.Text:=DM4.Tb_FilPad2FPVALOR.Value;

if codusr<>1111 then
   tsOutroBanco.TabVisible:=false;


end;

procedure TFrm_CobEle_Retorno.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then
   Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
   Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
end;

procedure TFrm_CobEle_Retorno.MARQORIExit(Sender: TObject);
var
mString_Retorno: String;
begin
CODBCO.Text :='';
NOMBCO.Text :='';
DATAARQ.Text:='';
CB_REGBB.Checked:=false;

if Trim(MARQORI.Text)<>'' then
   begin
   if FileExists(MARQORI.Text) then
      begin
      DETARQORI.Text:=' Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(MARQORI.Text)))
                                   +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(MARQORI.Text)))+' horas ';
      AssignFile(f,MARQORI.Text);
      reset(f);
      mboolean:=false;
      While not eof(f) do
         begin
         readln(f,mlinha);
//         if copy(mlinha,1,1)<>'0' then
//            continue;
         CB_CNAB240.Checked:=false;

         if valint(copy(mlinha,77,3))=237 then
            begin
            CODBCO.Text :=copy(mlinha,77,3);
            NOMBCO.Text :=copy(mlinha,80,15);
            DATAARQ.Text:=copy(mlinha,095,02)+'/'+copy(mlinha,097,02)+'/'+copy(mlinha,099,02);
            mboolean    :=true;
            break;
            end
         else if length(mLinha)=240 then
            begin
            CB_CNAB240.Checked:=True;
            if valint(copy(mlinha,01,03))=001 then
               begin
               if mlinha[143]<>'2' then
                  begin
                  fmensagem('Não é um arquivo de Retorno Valido!',0,['0'],0);
                  mboolean:=false;
                  CODBCO.Text:='';
                  NOMBCO.Text:='';
                  DATAARQ.Text:='';
                  CONTA.Text   :='';
                  DCONTA.Text  :='';
                  AGENCIA.Text :='';
                  DAGENCIA.Text:='';
                  NUMCON.Text  :='';
                  break;
                  end
               else
                  begin
                  CODBCO.Text  :=copy(mlinha,01,3);
                  NOMBCO.Text  :=copy(mlinha,103,30);
                  DATAARQ.Text :=copy(mlinha,144,02)+'/'+copy(mlinha,146,02)+'/'+copy(mlinha,148,04);
                  CONTA.Text   :=copy(mlinha,59,12);
                  DCONTA.Text  :=copy(mlinha,71,01);
                  AGENCIA.Text :=copy(mlinha,53,05);
                  DAGENCIA.Text:=copy(mlinha,58,01);
                  NUMCON.Text  :=copy(mlinha,33,20);
                  break;
                  end;
               end
// 033 -SANTANDER INICIO

            else if valint(copy(mlinha,01,03))=033 then
               begin
               if mlinha[143]<>'2' then
                  begin
                  fmensagem('Não é um arquivo de Retorno Valido!',0,['0'],0);
                  mboolean:=false;
                  CODBCO.Text:='';
                  NOMBCO.Text:='';
                  DATAARQ.Text:='';
                  CONTA.Text   :='';
                  DCONTA.Text  :='';
                  AGENCIA.Text :='';
                  DAGENCIA.Text:='';
                  NUMCON.Text  :='';
                  break;
                  end
               else
                  begin
                  CODBCO.Text  :=copy(mlinha,01,3);
                  NOMBCO.Text  :=copy(mlinha,103,30);
                  DATAARQ.Text :=copy(mlinha,144,02)+'/'+copy(mlinha,146,02)+'/'+copy(mlinha,148,04);
                  CONTA.Text   :=copy(mlinha,59,12);
                  DCONTA.Text  :=copy(mlinha,71,01);
                  AGENCIA.Text :=copy(mlinha,53,05);
                  DAGENCIA.Text:=copy(mlinha,58,01);
                  NUMCON.Text  :=copy(mlinha,33,20);
                  break;
                  end;
               end

// 033-SANTANDER TERMINO


            else if valint(copy(mlinha,01,03))=399 then
               begin
               if mlinha[143]<>'2' then
                  begin
                  fmensagem('Não é um arquivo de Retorno Valido!',0,['0'],0);
                  mboolean:=false;
                  CODBCO.Text:='';
                  NOMBCO.Text:='';
                  DATAARQ.Text:='';
                  CONTA.Text   :='';
                  DCONTA.Text  :='';
                  AGENCIA.Text :='';
                  DAGENCIA.Text:='';
                  NUMCON.Text  :='';
                  break;
                  end
               else
                  begin
                  CODBCO.Text  :=copy(mlinha,01,3);
                  NOMBCO.Text  :=copy(mlinha,103,30);
                  DATAARQ.Text :=copy(mlinha,144,02)+'/'+copy(mlinha,146,02)+'/'+copy(mlinha,148,04);
                  CONTA.Text   :=copy(mlinha,59,12);
                  DCONTA.Text  :=copy(mlinha,71,01);
                  AGENCIA.Text :=copy(mlinha,53,05);
                  DAGENCIA.Text:=copy(mlinha,58,01);
                  NUMCON.Text  :=copy(mlinha,33,20);
                  break;
                  end;
               end
            else if valint(copy(mlinha,01,03))=756 then
               begin
               if mlinha[143]<>'2' then
                  begin
                  fmensagem('Não é um arquivo de Retorno Valido!',0,['0'],0);
                  mboolean:=false;
                  CODBCO.Text:='';
                  NOMBCO.Text:='';
                  DATAARQ.Text:='';
                  CONTA.Text   :='';
                  DCONTA.Text  :='';
                  AGENCIA.Text :='';
                  DAGENCIA.Text:='';
                  NUMCON.Text  :='';
                  break;
                  end
               else
                  begin
                  CODBCO.Text  :=copy(mlinha,01,3);
                  NOMBCO.Text  :=copy(mlinha,103,30);
                  DATAARQ.Text :=copy(mlinha,144,02)+'/'+copy(mlinha,146,02)+'/'+copy(mlinha,148,04);
                  CONTA.Text   :=copy(mlinha,59,12);
                  DCONTA.Text  :=copy(mlinha,71,01);
                  AGENCIA.Text :=copy(mlinha,53,05);
                  DAGENCIA.Text:=copy(mlinha,58,01);
                  NUMCON.Text  :=copy(mlinha,33,20);
                  break;
                  end;
               end;

            end
         else if length(mLinha)=400 then
            begin
            CB_CNAB240.Checked:=False;
            if valint(copy(mlinha,01,02))=02 then // Verifica se e o cabeçalho de arquivo de retorno
               begin
               if valint(copy(mlinha,77,03))=341 then
                  begin
                  CODBCO.Text  :=copy(mlinha,77,3);
                  NOMBCO.Text  :=copy(mlinha,80,15);
                  DATAARQ.Text :=copy(mlinha,95,02)+'/'+copy(mlinha,97,02)+'/'+copy(mlinha,99,02);
                  CONTA.Text   :=copy(mlinha,33,05);
                  DCONTA.Text  :=copy(mlinha,38,01);
                  AGENCIA.Text :=copy(mlinha,27,04);
                  break;
                  end
               else if valint(copy(mlinha,77,03))=001 then
                  begin
                  CODBCO.Text  :=copy(mlinha,77,3);
                  NOMBCO.Text  :=copy(mlinha,80,15);
                  DATAARQ.Text :=copy(mlinha,95,02)+'/'+copy(mlinha,97,02)+'/'+copy(mlinha,99,02);
                  CONTA.Text   :=copy(mlinha,32,08);
                  DCONTA.Text  :=copy(mlinha,40,01);
                  AGENCIA.Text :=copy(mlinha,27,04);
                  break;
                  end
               else
                  begin
                  fmensagem('Não é um arquivo de Retorno Valido!',0,['0'],0);
                  mboolean:=false;
                  CODBCO.Text:='';
                  NOMBCO.Text:='';
                  DATAARQ.Text:='';
                  CONTA.Text   :='';
                  DCONTA.Text  :='';
                  AGENCIA.Text :='';
                  DAGENCIA.Text:='';
                  NUMCON.Text  :='';
                  break;
                  end;
               end;
            end
         else
            begin
            if fQtd_PV(mlinha)=16 then
               begin
               CB_REGBB.Checked:=true;
               CODBCO.Text  :='001';
               NOMBCO.Text  :='BANCO DO BRASIL';
               mcinst:=fBuscarValor_Del_PV(09,mLinha);
               DATAARQ.Text :=copy(mcinst,1,2)+'/'+copy(mcinst,1+2,2)+'/'+copy(mcinst,1+4,4);
               CONTA.Text   :=Floattostr(Fsonumero( fBuscarValor_Del_PV(02,mLinha)));
               DCONTA.Text  :='';
               AGENCIA.Text :=Floattostr(Fsonumero( fBuscarValor_Del_PV(01,mLinha)));
               DAGENCIA.Text:='';
               NUMCON.Text  :='';
               break;
               end;
            end;
         end;
      closefile(f);
      end;
   end;

if fLerGenerico01_campos('CADBCO','BCNUMCON','BCCODCED='+QuotedStr(CONTA.Text)+' AND BCDIGCED='+QuotedStr(DCONTA.Text),mString_Retorno) then
  NUMCON.Text:=mString_Retorno
else if fLerGenerico01_campos('CADBCO','BCNUMCON','BCCODCED='+QuotedStr(inttostr(valint(CONTA.Text)))+' AND BCDIGCED='+QuotedStr(DCONTA.Text),mString_Retorno) then
  NUMCON.Text:=mString_Retorno;



end;




function fRet001cnab240(pNomeArq: String): Boolean;
var
  mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then
  Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
  mTabTemp:=fproctemp(12);
  Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
  end;
Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,8,01)<>'3' then
      continue;
   if mlinha[14]='T' then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.Append;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[8]);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=valint(copy(mlinha,16,2));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,5));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,12));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,36,1);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=copy(mlinha,38,20);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :='0';
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsString      :=mlinha[58];
      mcinst:=copy(mlinha,59,15);
      mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
      mcinst3:=copy(mcinst,length(mcinst2)+2,length(mcinst)-length(mcinst2)+2);
      mcinst3:=trim(mcinst3);
      if length(mcinst3)>2 then
         mcinst3:=copy(mcinst3,1,2);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
      mcinst:=copy(mlinha,74,02)+'/'+copy(mlinha,74+2,02)+'/'+copy(mlinha,74+4,04) ;
      if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
         begin
         try
            mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
         except
            end;
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,82,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsFloat      :=fsonumero(copy(mlinha,97,3));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger   :=valint(copy(mlinha,100,05));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').AsInteger    :=valint(copy(mlinha,105,01));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(mlinha[133]);;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,134,15));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString        :=copy(mlinha,149,40);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsFloat         :=0;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
      mcinst:=trim(mcinst);
      if length(mcinst)>1 then
         begin
         if ValInt(mcinst[length(mcinst)])=1 then
            begin
            if codemp>100 then
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
            else
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
            end
         else
            begin
            if codemp>100 then
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
            else
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
            end;
         end;
      continue; // NOVO LUIZ
      end
   else if mlinha[14]='U' then
      begin
      if not (Frm_CobEle_Retorno.Tb_Retorno.state in [dsEdit,dsInsert]) then
         Frm_CobEle_Retorno.Tb_Retorno.Edit;

      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat=0 then
         begin
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat:=fsonumero(copy(mlinha,78,15))/100;
         end;

      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,18,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,33,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,48,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,63,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,78,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,108,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,123,15))/100;
      mcinst:=copy(mlinha,138,02)+'/'+copy(mlinha,138+2,02)+'/'+copy(mlinha,138+4,04) ;
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger:=valint(copy(mlinha,211,03));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;



       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
       mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
       if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
          begin
          try
             mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
           except
             end;
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     := vet_natrec[valint(Frm_CobEle_Retorno.Tb_RetornoCODACAO.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     :='erro.';
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec_recusa[valint(Frm_CobEle_Retorno.Tb_RetornoNATREC.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro.';
          end;


//  Verificando se encontra o titulo
      if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
         Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
       , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );



   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
   mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
   if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
       except
         end;
      end;

//      Frm_CobEle_Retorno.fCalcularDiferencas;
      Frm_CobEle_Retorno.Tb_Retorno.Post;
      end;

   end;
try
   closefile(f);
except
   end;
end;






function TFrm_CobEle_Retorno.fRet756cnab240(pNomeArq: String): Boolean;
var
  mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then
  Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
  mTabTemp:=fproctemp(12);
  Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
  end;
Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,8,01)<>'3' then
      continue;
   if mlinha[14]='T' then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.Append;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[8]);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=valint(copy(mlinha,16,2));
      Tb_RetornoCODRET.AsInteger                                          :=valint(copy(mlinha,16,2));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,5));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,12));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,36,1);
//      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=copy(mlinha,38,20);
//      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :='0';

      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=copy(mlinha,40,07);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :=copy(mlinha,47,01);


      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsString      :=mlinha[58];


      mcinst:=copy(mlinha,63,15);


//  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',15);  // 063-077

      mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
      mcinst3:=copy(mcinst,length(mcinst2)+2,length(mcinst)-length(mcinst2)+2);
      mcinst3:=trim(mcinst3);
      if length(mcinst3)>2 then
         mcinst3:=copy(mcinst3,1,2);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
      if fdeixanum(mcinst3)=mcinst3 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3
      else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3[1];


      mcinst:=copy(mlinha,74,02)+'/'+copy(mlinha,74+2,02)+'/'+copy(mlinha,74+4,04) ;
      if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
         begin
         try
            mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
         except
            end;
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,82,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsFloat      :=fsonumero(copy(mlinha,97,3));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger   :=valint(copy(mlinha,100,05));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').AsInteger    :=valint(copy(mlinha,105,01));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(mlinha[133]);;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,134,15));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString        :=copy(mlinha,149,40);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsFloat         :=0;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
      mcinst:=trim(mcinst);
      if length(mcinst)>1 then
         begin
         if ValInt(mcinst[length(mcinst)])=1 then
            begin
            if codemp>100 then
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
            else
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
            end
         else
            begin
            if codemp>100 then
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
            else
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
            end;
         end;
      continue; // NOVO LUIZ
      end
   else if mlinha[14]='U' then
      begin
      if not (Frm_CobEle_Retorno.Tb_Retorno.state in [dsEdit,dsInsert]) then
         Frm_CobEle_Retorno.Tb_Retorno.Edit;

      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat=0 then
         begin
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat:=fsonumero(copy(mlinha,78,15))/100;
         end;

      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,18,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,33,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,48,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,63,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,78,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,108,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,123,15))/100;
      mcinst:=copy(mlinha,138,02)+'/'+copy(mlinha,138+2,02)+'/'+copy(mlinha,138+4,04) ;
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger:=valint(copy(mlinha,211,03));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;



       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
       mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
       if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
          begin
          try
             mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
           except
             end;
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     := vet_natrec[valint(Frm_CobEle_Retorno.Tb_RetornoCODACAO.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     :='erro.';
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec_recusa[valint(Frm_CobEle_Retorno.Tb_RetornoNATREC.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro.';
          end;


//  Verificando se encontra o titulo
      if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
         Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
       , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );



   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
   mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
   if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
       except
         end;
      end;
      // ENTRAR COM AS ACOES


      fTotalizar;

      // TERMINO DAS ACOES



//      Frm_CobEle_Retorno.fCalcularDiferencas;
      Frm_CobEle_Retorno.Tb_Retorno.Post;
      end;

   end;
try
   closefile(f);
except
   end;
end;

procedure TFrm_CobEle_Retorno.bbEfetuarClick(Sender: TObject);
var
mLocalDadosCaddar: tDadosCadDar;

begin

if not DM1.Qr_FP.Locate('FPVINCULO',16,[]) then
   begin
   fmensagem('Não Foi possível encontrar a Forma de Pagamento(16-Cobranca Bancaria)',0,['0'],0);
   exit;
   end;
if mCodCai_Cele=0 then
   begin
   fmensagem('Favor digitar um caixa padrão para efetuar os lancamentos',0,['0'],0);
   exit
   end;
DM1.Query1.close;
DM1.query1.Sql.Clear;
DM1.Query1.Sql.add('Select max(BCNUMBCO) from CADBCO '
                  +' where BCCODBCO=0'+IntToStr(mCodCai_Cele));
DM1.Query1.Open;
if DM1.query1.Eof then
   begin
   fmensagem('Favor digitar um caixa padrão valido para efetuar os lancamentos',0,['0'],0);
   exit
   end;
if dm1.query1.Fields[0].AsInteger<>Valint(CODBCO.Text) then
   begin
   fmensagem('o Caixa Aberto nao possui relacionamento com o banco que efetuou o recebimento!',0,['0'],0);
   exit

   end;
if Frm_BDev=nil then
   Application.CreateForm(TFrm_bDev, Frm_BDev);
Tb_Retorno.First;
DM1.Qr_FP.Locate('FPVINCULO',16,[]);
mtotRec:=0;
mQtdRec:=0;

While not Tb_Retorno.Eof do
   begin
   if (Tb_Retorno.FieldByName('CODACAO').AsInteger<4) or
      (Tb_Retorno.FieldByName('CODACAO').AsInteger>8) then
      begin
      Tb_Retorno.Next;
      Continue;
      end;
   if Tb_Retorno.FieldByName('VALTIT').Asfloat=0 then
      begin
      Tb_Retorno.Next;
      Continue;
      end;

//   if (Tb_Retorno.FieldByName('CODACAO').AsInteger<>4) and
//      (Tb_Retorno.FieldByName('CODACAO').AsInteger<>5) then
   fGerarEvento('2628-Vai ler caddar data de emissao ');
   fGerarEvento('2629-Vai ler caddar data de emissao '+Tb_Retorno.fieldbyName('DTEMIS').AsString );



   mLocalDadosCaddar.pCodemp:=Tb_Retorno.fieldbyName('CODEMP_DUP').AsString;
   mLocalDadosCaddar.pNumDup:=Tb_Retorno.fieldbyName('NUMDUP').AsInteger;
   mLocalDadosCaddar.pDtemis:=Tb_Retorno.fieldbyName('DTEMIS').AsDateTime;
   mLocalDadosCaddar.pChaveId:=Tb_RetornoCRCHAVE_ID.AsInteger;
   mLocalDadosCaddar.pChaveIdAno:=Tb_RetornoCRCHAVE_ID_ANO.AsString;



   if not flcaddar_novo(mLocalDadosCaddar) then

      begin
      fmensagem('Titulo nao encontrado: '+Tb_Retorno.fieldbyName('NUMDUP').AsString
                                        +'/'
                                        +Tb_Retorno.fieldbyName('DESDDUP').AsString
                                        ,0,['0'],0);
      Tb_Retorno.Next;
      Continue;
      end;

   if (Tb_Retorno.FieldByName('TITPROT').AsInteger=1) then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('Update CADDAR SET CRTITPROT=1 where '+
                        iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ')
                        +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                        +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                        +' and CRDESD='+chr(39)+DM1.Tb_DarCRDESD.AsString+chr(39)
                        +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                        +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, DM1.Tb_DarCRDTEMIS.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fmensagem('Erro ao atualizar o caddar!',0,['0'],0);
         end;
      end;


   if (Tb_Retorno.FieldByName('CODACAO').AsInteger=23) then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('Update CADDAR SET CRTCB=2 where '+
                        iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ')
                        +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                        +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                        +' and CRDESD='+chr(39)+DM1.Tb_DarCRDESD.AsString+chr(39)
                        +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                        +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, DM1.Tb_DarCRDTEMIS.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

         fmensagem('Erro ao atualizar o caddar!',0,['0'],0);
         end;
      Tb_Retorno.Next;
      Continue;
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsInteger=7) then
      begin

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
 //     DM1.Query1.Sql.Add('Update CADDAR SET CRTCB=2, '+
      DM1.Query1.Sql.Add('Update CADDAR SET  '+
                         ' CRTARPROT=0'+mudavp(Tb_Retorno.FieldByName('VALOUTD').Asstring));
      if valint(DATAARQ.Text)=0 then
         DM1.Query1.Sql.Add(',CRTARPROT_DATA='+chr(39)+FormatDateTime(fdt, date)+chr(39))
      else
         DM1.Query1.Sql.Add(',CRTARPROT_DATA='+chr(39)+FormatDateTime(fdt, StrToDate(DATAARQ.Text))+chr(39));
      DM1.Query1.Sql.Add(' where ');
      DM1.Query1.Sql.Add(+iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ')
                        +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                        +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                        +' and CRDESD='+chr(39)+DM1.Tb_DarCRDESD.AsString+chr(39)
                        +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                        +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, DM1.Tb_DarCRDTEMIS.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fmensagem('Erro ao atualizar o caddar!',0,['0'],0);
         end;

      Tb_Retorno.Next;
      Continue;
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsInteger=8) then
      begin

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
//      DM1.Query1.Sql.Add('Update CADDAR SET CRTCB=3, '+
      DM1.Query1.Sql.Add('Update CADDAR SET  '+
                         ' CRCUSPROT=0'+mudavp(Tb_Retorno.FieldByName('VALOUTD').Asstring));
      if valint(DATAARQ.Text)=0 then
         DM1.Query1.Sql.Add(',CRCUSPROT_DATA='+chr(39)+FormatDateTime(fdt, date)+chr(39))
      else
         DM1.Query1.Sql.Add(',CRCUSPROT_DATA='+chr(39)+FormatDateTime(fdt, StrToDate(DATAARQ.Text))+chr(39));
      DM1.Query1.Sql.Add(' where ');
      DM1.Query1.Sql.Add(+iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ')
                        +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                        +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                        +' and CRDESD='+chr(39)+DM1.Tb_DarCRDESD.AsString+chr(39)
                        +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                        +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, DM1.Tb_DarCRDTEMIS.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fmensagem('Erro ao atualizar o caddar!',0,['0'],0);
         end;
      Tb_Retorno.Next;
      Continue;
      end;

   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat>1 then
      begin
      Tb_Retorno.Next;
      Continue;
      end;

   if not flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString) then
      begin
      fmensagem('Cliente nao encontrado: '+DM1.Tb_DarCRCODCLI.AsString
                                        +' Titulo: '+Tb_Retorno.fieldbyName('NUMDUP').AsString
                                        +'/'
                                        +Tb_Retorno.fieldbyName('DESDDUP').AsString
                                        ,0,['0'],0);
      Tb_Retorno.Next;
      Continue;
      end;
   pldr_nome:=DM1.Tb_CliCRAZAO.AsString;
   if DM1.Tb_DarCRSTATUS.Value>1 then
      begin
      fmensagem('Titulo Baixado Anteriormente: '+DM1.Tb_DarCRCODCLI.AsString
                                        +' Titulo: '+Tb_Retorno.fieldbyName('NUMDUP').AsString
                                        +'/'
                                        +Tb_Retorno.fieldbyName('DESDDUP').AsString
                                        ,0,['0'],0);
      Tb_Retorno.Next;
      Continue;
      end;

   if not fBaixarDevolucao_bdev(Tb_Retorno.fieldbyName('VALDESC').AsFloat,
                              Tb_Retorno.fieldbyName('VALJURMOR').AsFloat,
                           Tb_Retorno.fieldbyName('VALREC').AsFloat+ Tb_Retorno.fieldbyName('VALTAR').AsFloat,
                           mCodCai_Cele,
                           Tb_Retorno.fieldbyName('DATALIQ').AsDateTime,
                           date,
                           Tb_Retorno.fieldbyName('DATACRED').AsDateTime
                           ,Tb_Retorno.fieldbyName('VALTAR').AsFloat
                           ,mCodLdr_tarban,mCodLdr_local) then
      fmensagem('Titulo nao Baixado: '+DM1.Tb_DarCRCODCLI.AsString
                                        +' Titulo: '+Tb_Retorno.fieldbyName('NUMDUP').AsString
                                        +'/'
                                        +Tb_Retorno.fieldbyName('DESDDUP').AsString
                                        ,0,['0'],0)
   else
      begin
      fGravarRetornos;
      mtotRec:=mtotRec+Tb_Retorno.fieldbyName('VALREC').AsFloat;
      mQtdRec:=mQtdRec+1;
      Frm_CobEle_Retorno.lbl_titbai.Caption :='Tot.Tit. Baixados.Qtd: ['+insere(FormatFloat('###0',mQtdRec)    ,' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotRec)    ,' ',11)+']';
      end;
   Tb_Retorno.Next;
   end;


Frm_BDev.Free;
Frm_BDev:=nil;
ShowMessage('Baixas Concluidas!!!');
end;

procedure TFrm_CobEle_Retorno.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not Tb_Retorno.FieldByName('DATAPAG_ANT').IsNull) and
   (not Tb_Retorno.FieldByName('DATALIQ').IsNull) then
   begin
   if Tb_Retorno.FieldByName('DATAPAG_ANT').AsDateTime<>Tb_Retorno.FieldByName('DATALIQ').AsDateTime then
      DBGrid1.Canvas.Font.Style:=[fsStrikeOut];
   end;

if CB_CNAB240.Checked then
   begin
   if Tb_Retorno.FieldByName('CODACAO').AsFloat=1 then
     begin
     DBGrid1.Canvas.Font.Color   :=clGreen;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=3) then
     begin
     DBGrid1.Canvas.Font.Color   :=clRed;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=4)
        or (Tb_Retorno.FieldByName('CODACAO').AsFloat=5)
        or (Tb_Retorno.FieldByName('CODACAO').AsFloat=6) then
     begin
     if Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
        DBGrid1.Canvas.Brush.Color := $0080FFFF;
     DBGrid1.Canvas.Font.Color   :=clWindowText;
     Canvas. Font.Color   :=clWindowText;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
  else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=45) then //  Liquidado em ccom cheque
     begin
     DBGrid1.Canvas.Brush.Color := $00FFFF8C;
     DBGrid1.Canvas.Font.Color   :=clWindowText;
     Canvas. Font.Color   :=clWindowText;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
  else if Tb_Retorno.FieldByName('CODACAO').AsFloat=23 then //  entrada em cartorio
     begin
     DBGrid1.Canvas.Font.Color   :=clPurple;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
  else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=28) then //  custas
     begin
     DBGrid1.Canvas.Font.Color   :=clblue;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
   else if Tb_RetornoCODRET.AsInteger = 9  then   //  baixado sem pagar
     begin
     DBGrid1.Canvas.Font.Color   :=lbl_baixado.font.Color;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
  else if Tb_Retorno.FieldByName('CODACAO').AsFloat=1 then // entrada confirmada
     begin
     DBGrid1.Canvas.Font.Color   :=clGreen;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end
  else  //  entrada rejeitada
     begin
     DBGrid1.Canvas.Font.Color   :=clRed;
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
   end
else
   begin
   if Tb_Retorno.FieldByName('CODACAO').AsFloat=1 then // entrada confirmada
      begin
      DBGrid1.Canvas.Font.Color   :=clGreen;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=2)  //  entrada rejeitada
      or (Tb_Retorno.FieldByName('CODACAO').AsFloat=3) then //  entrada rejeitada
      begin
      DBGrid1.Canvas.Font.Color   :=clRed;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=4)  // Liquiddado
      or (Tb_Retorno.FieldByName('CODACAO').AsFloat=5) then //  Liquidado em cartorio
  //     or (Tb_Retorno.FieldByName('CODACAO').AsFloat=16) then //  Liquidado em ccom cheque
      begin
      if Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
          DBGrid1.Canvas.Brush.Color := $0080FFFF;
      DBGrid1.Canvas.Font.Color   :=clWindowText;
      Canvas. Font.Color   :=clWindowText;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=16) then //  Liquidado em ccom cheque
      begin
      DBGrid1.Canvas.Brush.Color := $00FFFF8C;
      DBGrid1.Canvas.Font.Color   :=clWindowText;
      Canvas. Font.Color   :=clWindowText;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if Tb_Retorno.FieldByName('CODACAO').AsFloat=6 then //  entrada em cartorio
      begin
      DBGrid1.Canvas.Font.Color   :=clPurple;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=7) or //  taxas cartorarias
          (Tb_Retorno.FieldByName('CODACAO').AsFloat=8) then //  taxas cartorarias
      begin
      DBGrid1.Canvas.Font.Color   :=clblue;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if (Tb_Retorno.FieldByName('CODACAO').AsFloat=9) or //  taxas cartorarias
          (Tb_Retorno.FieldByName('CODACAO').AsFloat=9) then //  taxas cartorarias
      begin
      DBGrid1.Canvas.Font.Color   :=$00400080;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else if Tb_RetornoCODRET.AsInteger = 9  then   //  baixado sem pagar
      begin
      DBGrid1.Canvas.Font.Color   :=lbl_baixado.font.Color;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   else  //  entrada rejeitada
      begin
      DBGrid1.Canvas.Font.Color   :=clRed;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;
end;

procedure TFrm_CobEle_Retorno.CB_PESQExit(Sender: TObject);
begin
with CB_PESQ do ItemIndex:=Items.IndexOf(CB_PESQ.Text);
if trim(CB_PESQ.Text)='' then
   CB_PESQ.ItemIndex:=0;


end;

procedure TFrm_CobEle_Retorno.bbAcharClick(Sender: TObject);

begin
if trim(VALOR.Text)='' then
   exit;
if CB_PESQ.ItemIndex=0 then
   Tb_Retorno.Locate('NUMDUP',ValFloat(VALOR.Text),[])
else if CB_PESQ.ItemIndex=1 then
   Tb_Retorno.Locate('NOSNUM',copy(VALOR.Text,1,length(VALOR.Text)-1),[lopartialkey])
else if CB_PESQ.ItemIndex=2 then
   Tb_Retorno.Locate('NOMCLI',VALOR.Text,[LoPartialKey,LoCaseInsensitive])
else if CB_PESQ.ItemIndex=3 then
   Tb_Retorno.Locate('VALTIT',ValFloat(VALOR.Text),[])
else if CB_PESQ.ItemIndex=4 then
   Tb_Retorno.Locate('DATAVENC',StrtoDate(VALOR.Text),[])
else if CB_PESQ.ItemIndex=5 then
   Tb_Retorno.Locate('DTEMIS',StrtoDate(VALOR.Text),[])

end;

procedure TFrm_CobEle_Retorno.VALORExit(Sender: TObject);
begin
if CB_PESQ.ItemIndex=0 then
   VALOR.Text:=fdeixanum2(VALOR.Text)
else if CB_PESQ.ItemIndex=2 then
   VALOR.Text:=Formatfloat(mcasas, ValFloat(VALOR.Text))
else if CB_PESQ.ItemIndex>3 then
   begin
   mcinst2:=fdeixanum2(VALOR.Text);
   if length(mcinst2)=6 then
      VALOR.Text:=copy(VALOR.Text,1,2)+'/'+copy(VALOR.Text,3,2)+'/'+copy(VALOR.Text,5,2)
   else if length(mcinst2)=8 then
      VALOR.Text:=copy(VALOR.Text,1,2)+'/'+copy(VALOR.Text,3,2)+'/'+copy(VALOR.Text,5,4);
   try
      VALOR.Text:=FormatDateTime(fdt2, StrtoDate(VALOR.Text));
   except
      fmensagem('Favor Digitar uma Data válida!',0,['0'],0);
      VALOR.SetFocus;
      end;
   end

end;

procedure TFrm_CobEle_Retorno.MCODCAI_PADExit(Sender: TObject);
begin
MCODCAI_PAD.Text:=fdeixanum(MCODCAI_PAD.Text);
if fsonumero(MCODCAI_PAD.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Caixa/Banco válido',0,['0'],0);
   MCODCAI_PAD.Text:='1';
   MCODCAI_PAD.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,MCODCAI_PAD.Text) then
   begin
   fmensagem('Banco Não Cadastrado!',0,['0'],0);
   MCODCAI_PAD.SetFocus;
   end
else
   begin
   MNOMCAI_PAD.Text:=DM1.Tb_BcoBCBANCO.Value;
   if fsonumero(MLOTMOV.Text)=0 then
      begin
      MLOTMOV.Text:=FloatToStr(DM1.Tb_BcoBCLOTMOV.Value+1);
      MLOTMOV.Update;
      end;
   mCodCai_Cele:=ValInt(MCODCAI_PAD.Text);
   lotmov:=Valint(MLOTMOV.Text);
   pldr_nombco:=DM1.Tb_BcoBCBANCO.Value;
   end;


end;

procedure TFrm_CobEle_Retorno.MCODCAI_PADKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI_PAD.Text:=fChamaBco(0,'frm_CobEle_Retorno',Key);
   if trim(MCODCAI_PAD.Text)<>'' then
      MCODCAI_PADExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CobEle_Retorno.MLOTMOVExit(Sender: TObject);
begin
mCodCai_Cele:=ValInt(MCODCAI_PAD.Text);
lotmov:=Valint(MLOTMOV.Text);
pldr_nombco:=DM1.Tb_BcoBCBANCO.Value;

end;

function fCobeleTestaExato(pTipo: Integer): boolean;
var
mValDes: Real;
begin
if ptipo=0 then
   mvaldes:=0
else
   mValDes:=DM1.Query2.FieldByName('CRDESCF').AsFloat;


if   arredonda(DM1.Query2.FieldByName('CRVALOR').AsFloat-mValDes ,2) <>

     Arredonda( ( (  Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat-
                     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat)
    +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)

               ,2)
     then
   result:=false
else if  (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString
         =DM1.Query2.FieldByName('CRNOSNUM').AsString+DM1.Query2.FieldByName('CRDNOSNUM').AsString) then
   result:=true
else
   result:=false;
end;


function fCobeleTestaAproximado(pTipo: Integer): boolean;
var
mMaiorValor: Real;

begin
result:=true;
if (DM1.Query2.FieldByName('CRVALOR').AsFloat<>Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat) then
   begin
   if (DM1.Query2.FieldByName('CRVALOR').AsFloat>
      (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
      -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
      +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)  ) then
      mMaiorValor:=(
                   (DM1.Query2.FieldByName('CRVALOR').AsFloat
                  -
                   (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
                  -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
                  +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)
                  )
                  *100)
                  /DM1.Query2.FieldByName('CRVALOR').AsFloat
   else
      mMaiorValor:=((
      (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
       -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
       +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)
                -DM1.Query2.FieldByName('CRVALOR').AsFloat)*100) /
                 Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   end;
if mMaiorValor>pTipo then
   begin
   mMaiorValor:=0;
   if ((DM1.Query2.FieldByName('CRVALOR').AsFloat-DM1.Query2.FieldByName('CRDESCF').AsFloat) <>Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat) then
      begin
      if ((DM1.Query2.FieldByName('CRVALOR').AsFloat-DM1.Query2.FieldByName('CRDESCF').AsFloat)>
         (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
         -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
         +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat) ) then
         mMaiorValor:=(
                  ((DM1.Query2.FieldByName('CRVALOR').AsFloat
                    -DM1.Query2.FieldByName('CRDESCF').AsFloat)                                   -
                  (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
                 -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
                 +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)
                 )
                 *100)
                 /(DM1.Query2.FieldByName('CRVALOR').AsFloat
                   -DM1.Query2.FieldByName('CRDESCF').AsFloat)
      else
         mMaiorValor:=
                   (Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat
                    -Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat
                    +Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat)
                -(
                (DM1.Query2.FieldByName('CRVALOR').AsFloat-DM1.Query2.FieldByName('CRDESCF').AsFloat)
                *100) /   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end;
   if mMaiorValor>pTipo then
      result:=false
   else
      result:=true;
   end;

end;


function fRet237cnab400(pNomeArq: String): Boolean;
var
mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;

mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
   mTabTemp:=fproctemp(12);
   Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
   end;

Frm_CobEle_Retorno.Tb_Retorno.CreateTable;

Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,01)<>'1' then
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[1]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(copy(mlinha,2,2));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,4,14));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,25,5));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,30,7));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,37,1);
   mcinst:=copy(mlinha,38,25);
   mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
   mcinst3:=copy(mcinst,
                 length(mcinst2)+2,
                 length(mcinst)-length(mcinst2)+2);
   mcinst3:=trim(mcinst3);
   if length(mcinst3)>2 then
      mcinst3:=copy(mcinst3,1,2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat    :=codemp;
   mcinst:=trim(mcinst);
   if length(mcinst)>1 then
      begin
      if ValInt(mcinst[length(mcinst)])=1 then
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
         end
       else
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
         end;
      end;
   mcinst:=copy(mlinha,135,12);
   mcinst2:=copy(mcinst,1,length(mcinst)-1);
   mcinst3:=copy(mcinst,length(mcinst),1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=Fdeixanum(mcinst2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat           :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString          :='Nao Encontrado!';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,241,13))/100;
   if valfloat(copy(mlinha,176,13))>0 then
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,176,13))/100
   else
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,189,13))/100;

   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
   except
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,202,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,215,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,228,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat  :=fsonumero(copy(mlinha,267,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,280,13))/100;



// Verificando se encontra o titulo
   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      begin
      mcinst:=copy(mlinha,135,12);
      mcinst2:=copy(mcinst,1,length(mcinst)-1);
      mcinst3:=copy(mcinst,length(mcinst),1);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=mcinst3;
      Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
      , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );

      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat   :=0;
   if valint(copy(mlinha,109,2))=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=24 then // entrada rejeitada cep
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=03;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=06 then // liquidado
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=14 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if valint(copy(mlinha,109,2))=16 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=17 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString:='Efetuar baixa(titulo liquidado)';

      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=28 then // Debito de Tarifas Cartorarias
      begin

      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=valint(copy(mlinha,395,06));

   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));




   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;

//   Frm_CobEle_Retorno.fCalcularDiferencas;

   Frm_CobEle_Retorno.Tb_Retorno.Post;
   end;
try
   closefile(f);
except
  end;




end;

procedure TFrm_CobEle_Retorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

procedure TFrm_CobEle_Retorno.FormActivate(Sender: TObject);
begin
ftestacaixa(0);
flparldr(0,'CADDAR0');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;

end;


function fRet341cnab400(pNomeArq: String): Boolean;
var
mEncontrou:Boolean;
codret: integer;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;


mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
   mTabTemp:=fproctemp(12);
   Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
   end;

Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,01)<>'1' then
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
//   lindomar
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat     :=9;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[1]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(copy(mlinha,2,2));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsString      :=copy(mlinha,4,14);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,4));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGE').AsString        :=copy(mlinha,22,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,5));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,29,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMCON').AsInteger       :=valint(copy(mlinha,30,04));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat         :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,mitau400_valtit[0],mitau400_valtit[1]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOME_RETORNO').AsString  :=copy(mlinha,mitau400_msacado[0],mitau400_msacado[1]);

   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
   except
      end;



//  const mitau400_msacado: array [0..1] of integer = (325,60);

   mcinst:=copy(mlinha,38,25);
   mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
   mcinst3:=copy(mcinst,
                 length(mcinst2)+2,
                 length(mcinst)-length(mcinst2)+2);
   mcinst3:=trim(mcinst3);
   if length(mcinst3)>2 then
      mcinst3:=copy(mcinst3,1,2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(copy(mLinha,117,06));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
   mcinst:=trim(mcinst);
   if length(mcinst)>1 then
      begin
      if ValInt(mcinst[length(mcinst)])=1 then
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
         end
       else
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
         end;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=copy(mlinha,63,08);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsFloat         :=fsonumero(copy(mLinha,83,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsFloat          :=fsonumero(copy(mlinha,94,01));
   // codigo da carteira
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat          :=fsonumero(copy(mLinha,109,02));
   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTAR').AsFloat           :=fsonumero(copy(mlinha,176,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat          :=fsonumero(copy(mlinha,215,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat          :=fsonumero(copy(mlinha,228,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat          :=fsonumero(copy(mlinha,241,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALLANC').AsFloat          :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat        :=fsonumero(copy(mlinha,267,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat        :=fsonumero(copy(mlinha,280,13))/100;
   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
    if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=valint(copy(mlinha,395,06));
   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
        mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
        Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;


// Verificando se encontra o titulo
   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=copy(mlinha,86,08);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=copy(mlinha,94,01);
      if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
         begin
         Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
         , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );
         end;
      end;
   codret:=valint(copy(mlinha,109,2));

   if codret=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=24 then // entrada rejeitada cep
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=03;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if (codret=06) then // liquidado
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;
      end
   else if codret=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if codret=14 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if codret=16 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if codret=17 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if codret=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=28 then // Debito de Tarifas Cartorarias
      begin

      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=valint(copy(mlinha,395,06));

   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));



   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;



//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;

   end;
try
   closefile(f);
except
  end;

end;

// inicio safra

function TFrm_CobEle_Retorno.fRet422cnab400(pNomeArq: String): Boolean;
var
mEncontrou:Boolean;
codret: integer;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;


mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
   mTabTemp:=fproctemp(12);
   Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
   end;

Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,01)<>'1' then
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
//   lindomar
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat     :=9;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[1]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(copy(mlinha,2,2));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsString      :=copy(mlinha,4,14);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,4));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGE').AsString        :=copy(mlinha,22,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,5));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,29,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMCON').AsInteger       :=valint(copy(mlinha,30,04));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat         :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,mitau400_valtit[0],mitau400_valtit[1]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOME_RETORNO').AsString  :=copy(mlinha,mitau400_msacado[0],mitau400_msacado[1]);

   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
   except
      end;



//  const mitau400_msacado: array [0..1] of integer = (325,60);

   mcinst:=copy(mlinha,38,25);
   mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
   mcinst3:=copy(mcinst,
                 length(mcinst2)+2,
                 length(mcinst)-length(mcinst2)+2);
   mcinst3:=trim(mcinst3);
   if length(mcinst3)>2 then
      mcinst3:=copy(mcinst3,1,2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(copy(mLinha,117,06));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
   mcinst:=trim(mcinst);
   if length(mcinst)>1 then
      begin
      if ValInt(mcinst[length(mcinst)])=1 then
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
         end
       else
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
         end;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=copy(mlinha,63,08);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsFloat         :=fsonumero(copy(mLinha,83,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsFloat          :=fsonumero(copy(mlinha,94,01));
   // codigo da carteira
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat          :=fsonumero(copy(mLinha,109,02));
   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTAR').AsFloat           :=fsonumero(copy(mlinha,176,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat          :=fsonumero(copy(mlinha,215,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat          :=fsonumero(copy(mlinha,228,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat          :=fsonumero(copy(mlinha,241,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALLANC').AsFloat          :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat        :=fsonumero(copy(mlinha,267,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat        :=fsonumero(copy(mlinha,280,13))/100;
   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
    if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=valint(copy(mlinha,395,06));
   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
        mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
        Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;


// Verificando se encontra o titulo
   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=copy(mlinha,86,08);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=copy(mlinha,94,01);
      if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
         begin
         Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
         , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );
         end;
      end;
   codret:=valint(copy(mlinha,109,2));

   if codret=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=24 then // entrada rejeitada cep
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=03;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if (codret=06) then // liquidado
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;
      end
   else if codret=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if codret=14 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if codret=16 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if codret=17 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if codret=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if codret=28 then // Debito de Tarifas Cartorarias
      begin

      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=valint(copy(mlinha,395,06));

   mcinst:=copy(mlinha,296,02)+'/'+copy(mlinha,296+2,02)+'/'+copy(mlinha,296+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,03));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));



   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;



//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;

   end;
try
   closefile(f);
except
  end;

end;

// termino safra




function fRet399cnab240(pNomeArq: String): Boolean;
var
  mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then
  Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
  mTabTemp:=fproctemp(12);
  Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
  end;
Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
  begin
  Readln(f,mlinha);
  if copy(mlinha,8,01)<>'3' then
    continue;
  if mlinha[14]<>'U' then
//  if mlinha[14]='T' then
     begin
     Frm_CobEle_Retorno.Tb_Retorno.Append;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[8]);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=valint(copy(mlinha,16,2));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,5));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,12));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,36,1);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=copy(mlinha,38,20);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :='0';
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsString      :=mlinha[58];
     mcinst:=copy(mlinha,59,15);
     mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
     mcinst3:=copy(mcinst,length(mcinst2)+2,length(mcinst)-length(mcinst2)+2);
     mcinst3:=trim(mcinst3);
     if length(mcinst3)>2 then
        mcinst3:=copy(mcinst3,1,2);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
     mcinst:=copy(mlinha,74,02)+'/'+copy(mlinha,74+2,02)+'/'+copy(mlinha,74+4,04) ;
     if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
        begin
        try
           mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
           Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
        except
           end;
        end;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,82,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsFloat      :=fsonumero(copy(mlinha,97,3));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger   :=valint(copy(mlinha,100,05));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').AsInteger    :=valint(copy(mlinha,105,01));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(mlinha[133]);;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,134,15));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString        :=copy(mlinha,149,40);
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsFloat         :=valint(copy(mlinha,214,10));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
     mcinst:=trim(mcinst);
     if length(mcinst)>1 then
        begin
        if ValInt(mcinst[length(mcinst)])=1 then
           begin
           if codemp>100 then
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
           else
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
           end
        else
           begin
           if codemp>100 then
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
           else
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
           end;
        end;
     end
  else
     begin
     if not (Frm_CobEle_Retorno.Tb_Retorno.state in [dsEdit,dsInsert]) then
        Frm_CobEle_Retorno.Tb_Retorno.Edit;

     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,18,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,33,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,48,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,63,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,78,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,108,15))/100;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,123,15))/100;
     mcinst:=copy(mlinha,138,02)+'/'+copy(mlinha,138+2,02)+'/'+copy(mlinha,138+4,04) ;
     try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
     except
        end;
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger:=valint(copy(mlinha,211,03));
     Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;
//  Verificando se encontra o titulo
     if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
        begin
        Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
        , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );
         end;
      end;


   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat>0 then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
        begin
        mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
        mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
        end;
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
   mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
   if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
       except
         end;
      end;
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     := vet_natrec[valint(Frm_CobEle_Retorno.Tb_RetornoCODACAO.AsString)];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     :='erro.';
      end;
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec_recusa[valint(Frm_CobEle_Retorno.Tb_RetornoNATREC.AsString)];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro.';
      end;



//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;
   end;
try
   closefile(f);
except
  end;

end;


procedure TFrm_CobEle_Retorno.bbImprimirClick(Sender: TObject);
begin
if FileExists('c:\sge\logo0.jpg') then
  begin
  rl_image.Picture.LoadFromFile('c:\sge\logo0.jpg');
  end;
lbl_end_n.Caption    :=DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpBAIRRO.AsString;
lbl_city_est.Caption :=DM1.Tb_EmpCIDADE.AsString+' - '+dm1.Tb_UFPUF.AsString;
lbl_fone_fax.Caption :=DM1.Tb_EmpFONE.AsString+' / '+DM1.Tb_EmpFAX.AsString;
rl_cobeleret.PreviewModal;

end;

procedure TFrm_CobEle_Retorno.FormShow(Sender: TObject);
begin
PageControl1.TabIndex:=0;
end;

procedure TFrm_CobEle_Retorno.edt_tarifaExit(Sender: TObject);
begin
edt_tarifa.text:=floattostr(ValFloat(edt_tarifa.Text));
end;


// INICIO BANCO DO BRASIL 400
function TFrm_CobEle_Retorno.fRet001cnab4006_dig(pNomeArq: String): Boolean;
var
mEncontrou:Boolean;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;

mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
   mTabTemp:=fproctemp(12);
   Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
   Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
   end;

Frm_CobEle_Retorno.Tb_Retorno.CreateTable;

Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,1,01)<>'7' then  //0-Cabecalho 7-detalhe 5-det.opcional 9-trailer
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
//   lindomar
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[1]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(copy(mlinha,2,2));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,4,14));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,4));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGE').AsString        :=copy(mlinha,22,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,23,8));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,31,1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMCON').AsInteger       :=valint(copy(mlinha,32,07));
   mcinst:=copy(mlinha,39,25);
   mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
   mcinst3:=copy(mcinst,
                 length(mcinst2)+2,
                 length(mcinst)-length(mcinst2)+2);
   mcinst3:=trim(mcinst3);
   if length(mcinst3)>2 then
      mcinst3:=copy(mcinst3,1,2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat    :=codemp;
   mcinst:=trim(mcinst);
   if length(mcinst)>1 then
      begin
      if ValInt(mcinst[length(mcinst)])=1 then
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
         end
       else
         begin
         if codemp>100 then
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
         else
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
         end;
      end;
//   mcinst:=copy(mlinha,127,20);
   mcinst:=copy(mlinha,064,17);
//   mcinst:=copy(mlinha,135,11);
   mcinst2:=copy(mcinst,1,length(mcinst)-1);
   mcinst3:=copy(mcinst,length(mcinst),1);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString          :=Fdeixanum(mcinst2);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString         :=mcinst3;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat           :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString          :='Nao Encontrado!';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,254,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,241,13))/100;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,189,13))/100;

   mcinst:=copy(mlinha,111,02)+'/'+copy(mlinha,111+2,02)+'/'+copy(mlinha,111+4,02) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
   except
      end;
//   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,189,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,202,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,215,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,228,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURMOR').AsFloat  :=fsonumero(copy(mlinha,267,13))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,280,13))/100;
   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      begin
      Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
      , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat   :=0;
   if valint(copy(mlinha,109,2))=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if ( (valint(copy(mlinha,109,2))=06) or
           (valint(copy(mlinha,109,2))=07) or
           (valint(copy(mlinha,109,2))=08) ) then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if valint(copy(mlinha,109,2))=46 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=05 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString:='Efetuar baixa(titulo liquidado)';

      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=96 then // Debito de Tarifas Cartorarias
      begin
//      aqui
//      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07;

      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;

   mcinst:=copy(mlinha,176,02)+'/'+copy(mlinha,176+2,02)+'/'+copy(mlinha,176+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,07));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));





   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))]
      +'/'+vet_natrec_recusa[valint(copy(mlinha,87,2))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat   :=0;
   if valint(copy(mlinha,109,2))=02 then // entrada confirmada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=01;
      mQtdEntConf :=mQtdEntConf+1;
      mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=03 then // entrada rejeitada
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=02;
      mQtdEntRej :=mQtdEntRej+1;
      mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if ( (valint(copy(mlinha,109,2))=06) or
           (valint(copy(mlinha,109,2))=07) or
           (valint(copy(mlinha,109,2))=08) ) then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=15 then // liquidado em cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=05;
      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Encaminhado ao cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
      end
   else if valint(copy(mlinha,109,2))=46 then // liquidado com cheque
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=09;
      mQtdPagChq :=mQtdPagChq+1;
      mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=05 then // liquidado sem registro
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=04;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString:='Efetuar baixa(titulo liquidado)';

      mQtdTitLiq :=mQtdTitLiq+1;
      mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
         begin
         mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
         mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
         end;

      end
   else if valint(copy(mlinha,109,2))=23 then // Entrada em Cartorio
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=06;
      mQtdEntCart :=mQtdEntCart+1;
      mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end
   else if valint(copy(mlinha,109,2))=96 then // Debito de Tarifas Cartorarias
      begin
      if valfloat(copy(mlinha,176,13))>0 then
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=07 // tarifa de protesto
     else
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat :=08; // custa de protesto

      mQtdTarCart :=mQtdTarCart+1;
      mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
      vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
      end
   else
      begin
      mQtdOutras  :=mQtdOutras+1;
      mTotOutras  :=mTotOutras+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
      end;

   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;

   mcinst:=copy(mlinha,176,02)+'/'+copy(mlinha,176+2,02)+'/'+copy(mlinha,176+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;

   mcinst:=copy(mlinha,147,02)+'/'+copy(mlinha,147+2,02)+'/'+copy(mlinha,147+4,02) ;
   if (trim(mcinst)<>'00/00/00') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      end;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger     :=valint(copy(mlinha,169,07));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger      :=valint(copy(mlinha,166,03));


   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsInteger       :=valint(copy(mlinha,109,2));
   try
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec[valint(copy(mlinha,109,02))]
      +'/'+vet_natrec_recusa[valint(copy(mlinha,87,2))];
   except
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro '
      end;



//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;
   end;

try
   closefile(f);
except
  end;

end;

procedure TFrm_CobEle_Retorno.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CobEle_Retorno.bbSalvarClick(Sender: TObject);
begin
fGravaPadroes(1111,'EDT_NOMUSR'    ,'text'   ,'_CODELE_RETORNO',edt_nomusr.Text);

end;






//function Tfrm_cobele_retorno.fprocurarTitulo(pNosNum: String;pValor:Real;pDatVen: TDateTime): Boolean;
function Tfrm_cobele_retorno.fprocurarTitulo(pNosNum: String; pNumero: Real; pDtVcto: tDateTime ): Boolean;

    procedure fbuscarpeloNumeroeVencimento;
    begin
    if (pNumero>0) and (pDtVcto>pdatanula) then
       begin
       DM1.Query2.Close;
       DM1.Query2.Sql.Clear;
       DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                      +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP,CRCHAVE_ID_ANO,CRCHAVE_ID FROM CADDAR where CRSTATUS<9 '
                      +' and CRNUMERO = :NUMERO '
                      +' and CRDTVCTO = :DTVCTO '
                      );
       DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
       DM1.Query2.ParamByName('NUMERO').AsFloat:=pNumero;
       DM1.Query2.ParamByName('DTVCTO').AsDateTime:=pDtVcto;
       try
          DM1.Query2.Open;
       except on e : exception do
          begin
          ex_erroSql_Novo(DM1.Query2,4539,'SGE '+e.Message ,'CADDAR');
          result:=false;
          exit;
          end;
          end;
       end;

    end;



    procedure buscarnatabela_old;
    begin
    DM1.Query2.Close;
    DM1.Query2.Sql.Clear;
    DM1.Query2.Sql.add('select CADDAR.CRNUMERO ,CADDAR.CRDTVCTO,CADDAR.CRCODCLI,CADDAR.CRCODEMP,CADDAR.CRVALOR,CADDAR.CRDESCF,CADDAR.CRSTATUS,CADDAR.CRCODEMP,'
                  +' CADDAR.CRDTPAG,CADDAR.CRLOTE,CADDAR.CRDTBX,CADDAR.CRDTEMIS,CADDAR.CRDESD,CADDAR.CRDNOSNUM ,CADDAR.CRNOSNUM,CADDAR.CRDUP '
                  +', CADDAR.CRCHAVE_ID_ANO,CADDAR.CRCHAVE_ID '
                  +' FROM OLD_CADDAR OLD_CADDAR , CADDAR CADDAR where CADDAR.CRSTATUS<9 '
                  +' and OLD_CADDAR.CRNOSNUM = :PNOSNUM '
                  +' AND CADDAR.CRNUMERO=OLD_CADDAR.CRNUMERO '
                  +' AND CADDAR.CRDESD=OLD_CADDAR.CRDESD '
                  +' AND CADDAR.CRDUP=OLD_CADDAR.CRDUP '
                  +' AND CADDAR.CRCODEMP=OLD_CADDAR.CRCODEMP '
                  +' AND CADDAR.CRCODECF=OLD_CADDAR.CRCODECF '
                  +' AND CADDAR.CRDTEMIS=OLD_CADDAR.CRDTEMIS '
                  );
    DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
    DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
    try
       DM1.query2.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(DM1.Query2,4521,'SGE '+e.Message ,'CADDAR');
      result:=false;
      exit;
      end;
      end;
    end;

    procedure fSetarDadosCaddar;
    begin
    if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat=0 then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=DM1.Query2.FieldByName('CRNUMERO').AsFloat;
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=DM1.Query2.FieldByName('CRDESD').AsString;
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=DM1.Query2.FieldByName('CRCODEMP').AsFloat;
       end;
    if DM1.Query2.FieldByName('CRSTATUS').AsFloat=2 then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString+'/Recebido Anteriormente. Lote BX: '
                           +DM1.Query2.fieldbyName('CRLOTE').Asstring
                           +' Data Baixa: '+FormatDatetime(fdt2,DM1.Query2.fieldbyName('CRDTBX').AsDateTime)
                           +' Data Pgto: '+FormatDatetime(fdt2,DM1.Query2.fieldbyName('CRDTPAG').AsDateTime);
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAPAG_ANT').AsDateTime  :=DM1.Query2.fieldbyName('CRDTPAG').AsDateTime;
       end;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=DM1.Query2.FieldByName('CRSTATUS').AsFloat;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat           :=DM1.Query2.fieldbyname('CRVALOR').AsFloat;
    if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Query2.FieldbyName('CRCODCLI').AsString) then
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString:=DM1.Query1.FieldByName('CRAZAO').AsString;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DTEMIS').AsDateTime      :=DM1.Query2.fieldbyname('CRDTEMIS').AsDateTime;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=DM1.Query2.FieldByName('CRCODEMP').AsFloat;
    if ((Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALTIT').AsFloat)>
       (Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALREC').AsFloat) ) and
      (Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALDESC').AsFloat=0) then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALDESC').AsFloat:=DM1.Query2.fieldbyname('CRDESCF').AsFloat;
       end;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').asstring := DM1.Query2.fieldbyname('CRNOSNUM').asstring;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID').AsFloat     :=DM1.Query2.FieldByName('CRCHAVE_ID').AsFloat;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID_ANO').AsFloat     :=DM1.Query2.FieldByName('CRCHAVE_ID_ANO').AsFloat;

    end;



begin


//LINDOMAR

DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                  +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP '
                  +' ,CRCHAVE_ID_ANO,CRCHAVE_ID '
                  +' FROM CADDAR where CRSTATUS<9 '
                  +' and CRNOSNUM = :PNOSNUM ');
DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;

try
   DM1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.Query2,4539,'SGE '+e.Message ,'CADDAR');
   result:=false;
   exit;
   end;
   end;

if DM1.Query2.isempty=true then
   buscarnatabela_old;
if DM1.Query2.IsEmpty=true then
   fbuscarpeloNumeroeVencimento;
if DM1.Query2.IsEmpty then
   result:=false
else
   begin
   fSetarDadosCaddar;
   result:=true;
   end
end;
{

try
   DM1.Query2.Open;
except
   end;
if DM1.Query2.IsEmpty then
   begin
//   showmessage('nao achou nosso numero '+pnosnum+' valor '+formatfloat(mcasas, pvalor));
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                     +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                     +iif(la_Empresas='','',' and ')
                     +la_Empresas
                     +' and CRNOSNUM = :PNOSNUM ');
   DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
   DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
   try
      DM1.Query2.Open;
   except
      end;
   end;

// tentar achar mesmo valor  mesma data de vencimento
if DM1.Query2.IsEmpty then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                     +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRCODBCO,CRDUP FROM OLD_CADDAR where CRSTATUS<19 '
                     +iif(la_Empresas='','',' and ')
                     +la_Empresas
                     +' and CRNOSNUM = :PNOSNUM '
                     +' and CRSTATUS<19 ' );
   DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
   DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
   try
      DM1.Query2.Open;
   except
      end;
   end;   
if not DM1.Query2.IsEmpty then
   begin
   result:=true;
   exit;
   end
else
   result:=false;
}
//end;





{
function Tfrm_cobele_retorno.fprocurarTitulo(pNosNum: String;pValor:Real;pDatVen: TDateTime): Boolean;
begin


//LINDOMAR

DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                  +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                  +iif(la_Empresas='','',' and ')
                  +la_Empresas
                  +' and CRNOSNUM = :PNOSNUM ');
//                     +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat>0 then
   begin
   DM1.Query2.Sql.Add(' and CRVALOR = :PVALOR ');
   DM1.Query2.ParamByName('PVALOR').AsFloat := Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   end;
DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
try
   DM1.Query2.Open;
except
   end;
// tentar achar mesmo valor  mesma data de vencimento
if DM1.Query2.IsEmpty then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                     +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                     +iif(la_Empresas='','',' and ')
                     +la_Empresas
                     +' and CRDTVCTO = :PDATVEN');
   DM1.Query2.Sql.Add(' and CRVALOR = :PVALOR ');
   DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
   DM1.Query2.ParamByName('PDATVEN').AsDateTime :=pDatVen;
   DM1.Query2.ParamByName('PVALOR').AsFloat := Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
//   DM1.Query2.SQL.SAVETOFILE('C:\ARQ001.TXT');
   try
      DM1.Query2.Open;
   except
      end;
   if not DM1.Query2.IsEmpty then
      begin
      DM1.Query1.close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('uPDATE caddar set CRNOSNUM=:NOSNUM where CRSTATUS<9 '
                           +iif(la_Empresas='','',' and ')
                           +la_Empresas
                           +' and CRNUMERO = :PNUMERO '
                           +' and CRDESD = :PDESD '
                           +' and CRDTEMIS = :PDTEMIS '
                           +' and CRCODCLI = :PCODCLI '
                           +' and CRDUP = :PDUP ');
      DM1.Query1.ParambyName('NOSNUM').AsString:=pNosNum;
      DM1.Query1.ParamByName('PNUMERO').AsInteger:=DM1.Query2.fieldbyName('CRNUMERO').AsInteger;
      DM1.Query1.ParamByName('PDESD').AsString:=DM1.Query2.fieldbyName('CRDESD').AsString;
      DM1.Query1.ParamByName('PDTEMIS').AsDateTime:=DM1.Query2.fieldbyName('CRDTEMIS').AsDateTime;
      DM1.Query1.ParamByName('PCODCLI').AsInteger:=DM1.Query2.fieldbyName('CRCODCLI').AsInteger;
      DM1.Query1.ParamByName('PDUP').AsInteger:=DM1.Query2.fieldbyName('CRDUP').AsInteger;
//      ex_erroSql_Novo(DM1.Query1,4852,'frm_codele_retorno','CADDAR');

      DM1.Query1.ExecSQL;
      fdm1StartCommit;


      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                        +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                        +iif(la_Empresas='','',' and ')
                        +la_Empresas
                        +' and CRNOSNUM = :PNOSNUM ');
      //                     +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
      DM1.Query2.Sql.Add(' and CRVALOR = :PVALOR ');
      DM1.Query2.ParamByName('PVALOR').AsFloat := pValor;
      DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
      DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
      end;
   end;


if DM1.Query2.IsEmpty then
   begin
   if trim(edt_nomusr.text)<>'' then
      begin
      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                        +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM '+edt_nomusr.Text+'.CADDAR where CRSTATUS<9 '
                        +iif(la_Empresas='','',' and ')
                        +la_Empresas
                        +' and CRNOSNUM = :PNOSNUM ');
//                        +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text
//                        +' and CRSTATUS<2 ' );
      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat>0 then
         begin
         DM1.Query2.Sql.Add(' and CRVALOR = :PVALOR ');
         DM1.Query2.ParamByName('PVALOR').AsFloat := Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
         end;

      DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
      DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
      try
         DM1.Query2.Open;
      except
         end;
      if not DM1.Query2.IsEmpty then
         begin
         fInserirNovoTitulo(0);
         DM1.Query2.Close;
         DM1.Query2.Sql.Clear;
         DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                           +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                           +iif(la_Empresas='','',' and ')
                           +la_Empresas
                           +' and CRNOSNUM = :PNOSNUM ');
//                           +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
         DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
         DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
         try
            DM1.Query2.Open;
         except
            end;

         end
      else
         begin
//tenda no old
        DM1.Query2.Close;
        DM1.Query2.Sql.Clear;
        DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                          +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRCODBCO,CRDUP FROM OLD_CADDAR where CRSTATUS<19 '
                          +iif(la_Empresas='','',' and ')
                          +la_Empresas
                          +' and CRNOSNUM = :PNOSNUM '
                          +' and CRSTATUS<19 ' );
        DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
        DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
        try
           DM1.Query2.Open;
        except
           end;
        if not DM1.Query2.IsEmpty then
           begin

           fInserirNovoTitulo(1);
           DM1.Query2.Close;
           DM1.Query2.Sql.Clear;
           DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                             +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                             +iif(la_Empresas='','',' and ')
                             +la_Empresas
                             +' and CRNOSNUM = :PNOSNUM '
                             +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
           DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
           DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
           try
              DM1.Query2.Open;
           except
              end;

// termino da tentativa do old
         end;
         DM1.Query2.Close;
         DM1.Query2.Sql.Clear;
         DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                           +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                           +iif(la_Empresas='','',' and ')
                           +la_Empresas
                           +' and CRNOSNUM = :PNOSNUM '
                           +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
         DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
         DM1.Query2.ParamByName('PNOSNUM').AsString:=pNosNum;
         try
            DM1.Query2.Open;
         except
            end;
         end;

      end;
   end;
if not DM1.Query2.IsEmpty then
   begin
   result:=true;
   exit;
   end;

DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                  +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                  +iif(la_Empresas='','',' and ')
                  +la_Empresas
                  +' and CRNOSNUM  like :PNOSNUM '
                  +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text);
DM1.Query2.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
DM1.Query2.ParamByName('PNOSNUM').AsString:='%'+pNosNum+'%';
try
   DM1.Query2.Open;
except
   end;


if not DM1.Query2.IsEmpty then
   begin
   result:=true;
   exit;
   end
else
   result:=false;
end;
}


function Tfrm_cobele_retorno.fInserirNovoTitulo(ptipo: Integer): Boolean;
var
mSeq: Integer;
begin

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,'
                      +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP FROM CADDAR where CRSTATUS<9 '
                        +iif(la_Empresas='','',' and ')
                        +la_Empresas
                        +' and CRNUMERO = :PNUMERO '
                        +' and CRDESD = :PDESD '
                        +' and CRDTEMIS = :PDTEMIS '
                        +' and CRCODCLI = :PCODCLI '
                        +' and CRDUP = :PDUP ');
DM1.Query1.ParamByName('PNUMERO').AsInteger:=DM1.Query2.Fieldbyname('CRNUMERO').AsInteger;
DM1.Query1.ParamByName('PDESD').AsString:=DM1.Query2.Fieldbyname('CRDESD').AsString;
DM1.Query1.ParamByName('PDTEMIS').AsDateTime:=DM1.Query2.Fieldbyname('CRDTEMIS').AsDateTime;
DM1.Query1.ParamByName('PCODCLI').AsInteger:=DM1.Query2.Fieldbyname('CRCODCLI').AsInteger;
DM1.Query1.ParamByName('PDUP').AsInteger:=DM1.Query2.Fieldbyname('CRDUP').AsInteger;
DM1.Query1.Open;
if not (DM1.query1.isempty) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('uPDATE caddar set CRNOSNUM=:NOSNUM where CRSTATUS<9 '
                           +iif(la_Empresas='','',' and ')
                           +la_Empresas
                           +' and CRNUMERO = :PNUMERO '
                           +' and CRDESD = :PDESD '
                           +' and CRDTEMIS = :PDTEMIS '
                           +' and CRCODCLI = :PCODCLI '
                           +' and CRDUP = :PDUP ');
   DM1.Query1.ParambyName('NOSNUM').AsString:=DM1.Query2.fieldbyName('CRNOSNUM').AsString;
   DM1.Query1.ParamByName('PNUMERO').AsInteger:=DM1.Query2.fieldbyName('CRNUMERO').AsInteger;
   DM1.Query1.ParamByName('PDESD').AsString:=DM1.Query2.fieldbyName('CRDESD').AsString;
   DM1.Query1.ParamByName('PDTEMIS').AsDateTime:=DM1.Query2.fieldbyName('CRDTEMIS').AsDateTime;
   DM1.Query1.ParamByName('PCODCLI').AsInteger:=DM1.Query2.fieldbyName('CRCODCLI').AsInteger;
   DM1.Query1.ParamByName('PDUP').AsInteger:=DM1.Query2.fieldbyName('CRDUP').AsInteger;
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   result:=true;
   exit
   end;






DM1.Query1.close;
DM1.Query1.sql.clear;
DM1.Query1.sql.add('Select max(CRSEQ) from CADDAR ');
DM1.Query1.Open;
mSeq:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Insert into CADDAR ('
  +'CRID_NEW,'
  +'CRID_PED01_NEW,'
  +'CRID_LDR_NEW,'
  +'CRCODEMP,'
  +'CRNUMERO, '
  +'CRDESD,    '
  +'CRDUP,'
  +'CRCODCLI,'
  +'CRNUMCUP,'
  +'CRDATCUP,'
  +'CRVALOR,'
  +'CRDTEMIS,'
  +'CRDTVCTO,'
  +'CRDTPAG,'
  +'CRDTBX,'
  +'CRNPED,'
  +'CRORDEM,'
  +'CRVALPAG,'
  +'CRCODVEN,'
  +'CRCODTLV,'
  +'CRSTATUS,'
  +'CROBS,'
  +'CRDESC,'
  +'CRDEVOL,'
  +'CRJUROS,'
  +'CRCODBCO,'
  +'CRLOTE,'
  +'CRICMSR,'
  +'CRDESCF,'
  +'CRDTDESCF,'
  +'CRJURD,'
  +'CRDESCD,'
  +'CRMULTA,'
  +'CRQTDDM,'
  +'CREMIDUP,'
  +'CREMIBLQ,'
  +'CRVALFRE,'
  +'CRNOSNUM,'
  +'CRTIPCOB,'
  +'CRDTALT,'
  +'CRUSRALT,'
  +'CRUSRBX,'
  +'CRCOMVEN,'
  +'CRCOMTEL,'
  +'CRCOMSUP,'
  +'CRSEMCOM,'
  +'CRCODLDR,'
  +'CRLOTCV,'
  +'CRLOTCS,'
  +'CRCODORI,'
  +'CRLOTCT,'
  +'CRCODUSR,'
  +'CRHRALT,'
  +'CRNFACUM,'
  +'CRTOTNF,'
  +'CRLOTSEQ_CP,'
  +'CRCODV02,'
  +'CRCODV03,'
  +'CRCODCV,'
  +'CRCOMV02,'
  +'CRCOMV03,'
  +'CRLOTCV02,'
  +'CRLOTCV03,'
  +'CRCODECF,'
  +'CRLOTSEQ_LB,'
  +'CRLOTSEQ_FC,'
  +'CRLOTSEQ_CV,'
  +'CRLOTSEQ_CV02,'
  +'CRLOTSEQ_CV03,'
  +'CRLOTSEQ_CS,'
  +'CRLOTSEQ_CT,'
  +'CRTOTDI01,'
  +'CRTOTDI02,'
  +'CRTOTDI03,'
  +'CRTOTDIVL,'
  +'CRVALDES01,'
  +'CRVALDES02,'
  +'CRVLRDES,'
  +'CRTARBAN,'
  +'CRDNOSNUM,'
  +'CRACEITE,'
  +'CRESPECIE,'
  +'CRCODBAR,'
  +'CRCODDIG,'
  +'CRLEMAT,'
  +'CRCODASSE,'
  +'CRCOMASSE,'
  +'CRLOTSEQ_CASSE,'
  +'CRLOTCASSE,'
  +'CRINST01,'
  +'CRINST02,'
  +'CRINST03,'
  +'CRINST04,'
  +'CRQTDPARC,'
  +'CRNUMPARC,'
  +'CRVALSEG,'
  +'CRCODV04,'
  +'CRNR,'
  +'CRCUSBCO,'
  +'CRTBCOCOB,'
  +'CRCOMV04,'
  +'CRLOTSEQ_CV04,'
  +'CRLOTCV04,'
  +'CRTOTCGRU,'
  +'CRTOTSGRU,'
  +'CRTOTIPI,'
  +'CREMIBOR,'
  +'CRCHD_BANCO,'
  +'CRCHD_AGENCIA,'
  +'CRCHD_CC,'
  +'CRCHD_NUMERO,'
  +'CRTCB,'
  +'CRCAUCAO,'
  +'CRBCOCAU,'
  +'CRDTCAU,'
  +'CRSPC_DTPEN,'
  +'CRSPC_DTNEG,'
  +'CRSERASA_DTNEG,'
  +'CRCODCTA,'
  +'CRNOMCTA,'
  +'CRCODCC,'
  +'CRNOMCC,'
  +'CRNATDC,'
  +'CRCODDEP,'
  +'CRNOMDEP,'
  +'CRDESCMV,'
  +'CRSEQ,'
  +'CRCOMIS_EXTRA,'
  +'CRPFPGTO,'
  +'CRTABPV,'
  +'CRCODPV,'
  +'CRVINC02,'
  +'CRCODFPGTO,'
  +'CRNOMFPGTO,'
  +'CRFIN_CODFIN,'
  +'CRLANCFIN,'
  +'CRRECFRENTE,'
  +'CRDATPED,'
  +'CRCX_CODCAI,'
  +'CRCX_LOTMOV,'
  +'CRJURDEB,'
  +'CRJURDEB_SAC,'
  +'CRCHD_EMITENTE,'
  +'CRTARPROT,'
  +'CRTARPROT_DATA,'
  +'CRCUSPROT,'
  +'CRCUSPROT_DATA,'
  +'CRCODCAR,'
  +'CRLOTSEQ_EC,'
  +'CRLOTE_EC,'
  +'CRTITPROT,'
  +'CRDATHOR_REP,'
  +'CRNPED_NIVEL'
  +') select '
  +'CRID_NEW,'
  +'CRID_PED01_NEW,'
  +'CRID_LDR_NEW,'
  +'CRCODEMP,'
  +'CRNUMERO, '
  +'CRDESD,    '
  +'CRDUP,'
  +'CRCODCLI,'
  +'CRNUMCUP,'
  +'CRDATCUP,'
  +'CRVALOR,'
  +'CRDTEMIS,'
  +'CRDTVCTO,'
  +'CRDTPAG,'
  +'CRDTBX,'
  +'CRNPED,'
  +'CRORDEM,'
  +'CRVALPAG,'
  +'CRCODVEN,'
  +'CRCODTLV,');
if ptipo=0 then
   DM1.Query1.SQL.add('CRSTATUS,')
else
   DM1.Query1.SQL.add('0 AS CRSTATUS,');
DM1.Query1.SQL.add('CROBS,'
  +'CRDESC,'
  +'CRDEVOL,'
  +'CRJUROS,'
  +'CRCODBCO,'
  +'CRLOTE,'
  +'CRICMSR,'
  +'CRDESCF,'
  +'CRDTDESCF,'
  +'CRJURD,'
  +'CRDESCD,'
  +'CRMULTA,'
  +'CRQTDDM,'
  +'CREMIDUP,'
  +'CREMIBLQ,'
  +'CRVALFRE,'
  +'CRNOSNUM,'
  +'CRTIPCOB,'
  +'CRDTALT,'
  +'CRUSRALT,'
  +'CRUSRBX,'
  +'CRCOMVEN,'
  +'CRCOMTEL,'
  +'CRCOMSUP,'
  +'CRSEMCOM,'
  +'CRCODLDR,'
  +'CRLOTCV,'
  +'CRLOTCS,'
  +'CRCODORI,'
  +'CRLOTCT,'
  +'CRCODUSR,'
  +'CRHRALT,'
  +'CRNFACUM,'
  +'CRTOTNF,'
  +'CRLOTSEQ_CP,'
  +'CRCODV02,'
  +'CRCODV03,'
  +'CRCODCV,'
  +'CRCOMV02,'
  +'CRCOMV03,'
  +'CRLOTCV02,'
  +'CRLOTCV03,'
  +'CRCODECF,'
  +'CRLOTSEQ_LB,'
  +'CRLOTSEQ_FC,'
  +'CRLOTSEQ_CV,'
  +'CRLOTSEQ_CV02,'
  +'CRLOTSEQ_CV03,'
  +'CRLOTSEQ_CS,'
  +'CRLOTSEQ_CT,'
  +'CRTOTDI01,'
  +'CRTOTDI02,'
  +'CRTOTDI03,'
  +'CRTOTDIVL,'
  +'CRVALDES01,'
  +'CRVALDES02,'
  +'CRVLRDES,'
  +'CRTARBAN,'
  +'CRDNOSNUM,'
  +'CRACEITE,'
  +'CRESPECIE,'
  +'CRCODBAR,'
  +'CRCODDIG,'
  +'CRLEMAT,'
  +'CRCODASSE,'
  +'CRCOMASSE,'
  +'CRLOTSEQ_CASSE,'
  +'CRLOTCASSE,'
  +'CRINST01,'
  +'CRINST02,'
  +'CRINST03,'
  +'CRINST04,'
  +'CRQTDPARC,'
  +'CRNUMPARC,'
  +'CRVALSEG,'
  +'CRCODV04,'
  +'CRNR,'
  +'CRCUSBCO,'
  +'CRTBCOCOB,'
  +'CRCOMV04,'
  +'CRLOTSEQ_CV04,'
  +'CRLOTCV04,'
  +'CRTOTCGRU,'
  +'CRTOTSGRU,'
  +'CRTOTIPI,'
  +'CREMIBOR,'
  +'CRCHD_BANCO,'
  +'CRCHD_AGENCIA,'
  +'CRCHD_CC,'
  +'CRCHD_NUMERO,'
  +'CRTCB,'
  +'CRCAUCAO,'
  +'CRBCOCAU,'
  +'CRDTCAU,'
  +'CRSPC_DTPEN,'
  +'CRSPC_DTNEG,'
  +'CRSERASA_DTNEG,'
  +'CRCODCTA,'
  +'CRNOMCTA,'
  +'CRCODCC,'
  +'CRNOMCC,'
  +'CRNATDC,'
  +'CRCODDEP,'
  +'CRNOMDEP,'
  +'CRDESCMV,'
  +InttoStr(mSeq)+' as CRSEQ,'
  +'CRCOMIS_EXTRA,'
  +'CRPFPGTO,'
  +'CRTABPV,'
  +'CRCODPV,'
  +'CRVINC02,'
  +'CRCODFPGTO,'
  +'CRNOMFPGTO,'
  +'CRFIN_CODFIN,'
  +'CRLANCFIN,'
  +'CRRECFRENTE,'
  +'CRDATPED,'
  +'CRCX_CODCAI,'
  +'CRCX_LOTMOV,'
  +'CRJURDEB,'
  +'CRJURDEB_SAC,'
  +'CRCHD_EMITENTE,'
  +'CRTARPROT,'
  +'CRTARPROT_DATA,'
  +'CRCUSPROT,'
  +'CRCUSPROT_DATA,'
  +'CRCODCAR,'
  +'CRLOTSEQ_EC,'
  +'CRLOTE_EC,'
  +'CRTITPROT,'
  +'CRDATHOR_REP,'
  +'CRNPED_NIVEL');
if ptipo=0 then
   DM1.Query1.SQL.add(' from '+edt_nomusr.Text +'.CADDAR where ')
else
   DM1.Query1.SQL.add(' from OLD_CADDAR where ');
DM1.Query1.SQL.add(la_Empresas
  +iif(la_Empresas='','',' and ')
  +' CRNOSNUM = :PNOSNUM '
//  +' and CRCODBCO='+Frm_CobEle_Retorno.MCODCAI_PAD.Text
  +' and CRNUMERO=:NUMERO ');
DM1.Query1.ParamByName('PNOSNUM').AsString:=DM1.Query2.fieldbyName('CRNOSNUM').AsString;
DM1.Query1.ParamByName('NUMERO').AsInteger:=DM1.Query2.fieldbyName('CRNUMERO').AsInteger;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   result:=true;
except
   result:=false;
   ex_erroSql_Novo(DM1.Query1,5256,'frm_cobele_retorno','CADDAR');
   end;
end;


function TFrm_CobEle_Retorno.fRet001Registro: Boolean;
var
mEncontrou:Boolean;
mArquivo: TStrings;
x_Lid: Integer;
begin
if not FileExists(MARQORI.Text) then
   begin
   result:=false;
   exit;
   end;
mArquivo:=TStringList.Create;
mArquivo.LoadFromFile(MARQORI.Text);
if fQtd_PV(mArquivo[0])<>16 then
   begin
   freeandnil(marquivo);
   result:=false;
   exit;
   end;

// inicio

if Frm_CobEle_Retorno.Tb_Retorno.Active then
  Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
  mTabTemp:=fproctemp(12);
  Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
  end;
Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;

for x_lid:=0 to mArquivo.Count-1 do
   begin
   if fQtd_PV(mArquivo[x_lid])<>16 then
      continue;
   Frm_CobEle_Retorno.Tb_Retorno.Append;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fSonumero(fBuscarValor_Del_PV(12,mArquivo[x_lid]))/100
                                                                    +fSonumero(fBuscarValor_Del_PV(15,mArquivo[x_lid]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(fBuscarValor_Del_PV(01,mArquivo[x_lid]));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(fBuscarValor_Del_PV(02,mArquivo[x_lid]));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :='';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=fRetZerosEsquerda(fBuscarValor_Del_PV(05,mArquivo[x_lid]));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString        := fBuscarValor_Del_PV(07,mArquivo[x_lid]);;

   if length(Tb_Retorno.FieldByName('NOSNUM').AsString)>1 then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString     :=Tb_Retorno.FieldByName('NOSNUM').AsString[length(Tb_Retorno.FieldByName('NOSNUM').AsString)];
      Tb_Retorno.FieldByName('NOSNUM').AsString:=copy(Tb_Retorno.FieldByName('NOSNUM').AsString,1,length(Tb_Retorno.FieldByName('NOSNUM').AsString)-1);
      end
   else
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :='0';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsString      :=fBuscarValor_Del_PV(03,mArquivo[x_lid]);
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :='';
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fSonumero(fBuscarValor_Del_PV(11,mArquivo[x_lid]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsFloat      :=19;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger   :=valint(fBuscarValor_Del_PV(17,mArquivo[x_lid]));
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').AsInteger    :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsFloat         :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fSonumero(fBuscarValor_Del_PV(16,mArquivo[x_lid]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fSonumero(fBuscarValor_Del_PV(14,mArquivo[x_lid]))/100;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=0;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=0;

   mcinst:=fBuscarValor_Del_PV(10,mArquivo[x_lid]);
   mcinst:=copy(mcinst,1,02)+'/'+copy(mcinst,1+2,02)+'/'+copy(mcinst,1+4,04) ;
   try
      mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
    except
      end;
   if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
      fprocurarTitulo_Reg(Tb_Retorno.FieldByName('NOSNUM').AsString,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat);


   mcinst:=fBuscarValor_Del_PV(10,mArquivo[x_lid]);
   if mcinst='BXS' then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOME_RETORNO').AsString:='Titulo baixado no banco sem receber';
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=9;
      end
   else if mcinst='RG' then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=4;

      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOME_RETORNO').AsString:='Entrada do Registro do Titulo';
      end;




//   Frm_CobEle_Retorno.fCalcularDiferencas;
   Frm_CobEle_Retorno.Tb_Retorno.Post;
   end;
freeandnil(marquivo);

result:=true;
end;



function Tfrm_cobele_retorno.fprocurarTitulo_Reg(pNosNum: String;pValor:Real): Boolean;
var
query_tit: tQuery;
begin


//LINDOMAR
query_tit:=tQuery.Create(nil);
query_tit.DatabaseName:='SG_ASSOC';

query_tit.Close;
query_tit.Sql.Clear;
query_tit.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRCODEMP,CRAZAO,CCNPJ,CCPF,'
                  +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDTVCTO,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP,CRSTATUS FROM CADDAR,CADCLI '
                  +' where CCODCLI=CRCODCLI and CRSTATUS<9 '
                  +' and CRNOSNUM = :PNOSNUM ');
query_tit.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
query_tit.ParamByName('PNOSNUM').AsString:=pNosNum;
try
   query_tit.Open;
except
   query_tit.SQL.SAVETOFILE(mpastatemp + 'sql.TXT');
   end;
if not query_tit.IsEmpty then
   begin
   if query_tit.fieldbyName('CCNPJ').asfloat=0 then
      begin
      if query_tit.fieldbyName('CCPF').asfloat<>0 then
         begin
         Tb_Retorno.FieldByName('TPCPFCNPJ').Value:=01;
         Tb_Retorno.FieldByName('CNPFCNPJ').Value :=query_tit.fieldbyName('CCPF').asfloat;
         end
      end
   else
      begin
      Tb_Retorno.FieldByName('TPCPFCNPJ').Value:=02;
      Tb_Retorno.FieldByName('CNPFCNPJ').Value :=query_tit.fieldbyName('CCNPJ').asfloat;
      end;
   Tb_Retorno.FieldByName('NUMDUP').Value      :=query_tit.fieldbyName('CRNUMERO').asfloat;
   Tb_Retorno.FieldByName('DESDDUP').Value     :=query_tit.fieldbyName('CRDESD').AsString;
   Tb_Retorno.FieldByName('NOSNUM').Value      :=query_tit.fieldbyName('CRNOSNUM').AsString;
   Tb_Retorno.FieldByName('DNOSNUM').Value     :=query_tit.fieldbyName('CRDNOSNUM').AsString;
   Tb_Retorno.FieldByName('DATAVENC').Value    :=query_tit.fieldbyName('CRDTVCTO').AsDateTime;
   Tb_Retorno.FieldByName('VALTIT').Value      :=query_tit.fieldbyName('CRVALOR').AsFloat;

   Tb_Retorno.FieldByName('NOMCLI').Value      :=query_tit.fieldbyName('CRAZAO').AsString;

   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat=0 then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=01;
      Tb_Retorno.FieldByName('NOMACAO').Value     :='entrada confirmada';
      end
   else
      begin
      Tb_Retorno.FieldByName('NOMACAO').Value     :='Titulo Liquidado';
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=04;
      if query_tit.fieldbyName('CRSTATUS').AsInteger=2 then
         begin
         Tb_Retorno.FieldByName('NOMACAO').AsString       :=Tb_Retorno.FieldByName('NOMACAO').AsString+'/Recebido Anteriormente. Lote BX: '
                                                                                 +query_tit.fieldbyName('CRLOTE').Asstring
                                                                                 +' Data Baixa: '+FormatDatetime(fdt2,query_tit.fieldbyName('CRDTBX').AsDateTime)
                                                                                 +' Data Pgto: '+FormatDatetime(fdt2,query_tit.fieldbyName('CRDTPAG').AsDateTime);
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=query_tit.FieldByName('CRSTATUS').AsFloat;
         Tb_Retorno.FieldByName('DATAPAG_ANT').Value :=query_tit.fieldbyName('CRDTPAG').AsDateTime;
         end;
      end;


//   Tb_Retorno.FieldByName('CODACAO').Value     :=04;
//   Tb_Retorno.FieldByName('NOMACAO').Value     :='Titulo Liquidado';
   Tb_Retorno.FieldByName('CODEMP_DUP').Value  :=query_tit.fieldbyName('CRCODEMP').AsInteger;
   Tb_Retorno.FieldByName('DTEMIS').Value      :=query_tit.fieldbyName('CRDTEMIS').AsDateTime;


   mQtdTitLiq :=mQtdTitLiq+1;
   mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
      begin
      mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
      mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end;


   end;

result:=true;
end;

{
function tFrm_CobEle_Retorno.FBuscartitulo(pNosNum: String): boolean;
begin
if fsonumero(pnosNum)=0 then
   result:=false
else
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                     +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRNOSNUM,CRDNOSNUM,CRDUP FROM CADDAR where CRSTATUS<>9 '
                      +iif(la_Empresas='','',' and ')
                      +la_Empresas
                      +' and CRNOSNUM = :NOSNUM'
                      +' and CRSTATUS<9');
   DM1.Query2.Sql.Add(' Order by CRDTVCTO,CRSTATUS');
   DM1.Query2.ParamByName('NOSNUM').AsString:=Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString;
   try
      DM1.Query2.Open;
      if DM1.Query2..isempty=true then
         result:=false
      else
        result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_temp,7183'SGE '+e.Message ,'CADDAR');
      pfechartudo;
      result:=false;
      exit;
      end;
      end;
   end;
end;

}

function TFrm_CobEle_Retorno.fGravarRetornos: boolean;
var
query_exe: TQuery;
mdathorarq: tdatetime;
mchaveid: Integer;
begin
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


{


Query_exe.SQL.add('Insert into CADDAR_RET ('
                 +' RET_NOMEARQ'
                 +',RET_PASTAARQ'
                 +',RET_COMPUTADOR'
                 +',RET_DATHORARQ'
                 +',RET_ID_SEQ'
                 +',RET_CHAVETIT_ID_ANO'
                 +',RET_CHAVETIT_ID'
                 +',RET_CODEMP_TIT'
                 +',RET_CODACAO'
                 +',RET_DATALIQ'
                 +',RET_DATACRED'
                 +',RET_VALTAR'
                 +',RET_VALIOF'
                 +',RET_VALABAT'
                 +',RET_VALDESC'
                 +',RET_VALLANC'
                 +',RET_VALJURMOR'
                 +',RET_VALOUTREC'
                 +',RET_AGENCIAREC'
                 +',RET_CODBCOREC'
                 +',RET_NOMNATREC'
                 +',RET_NATREC'
                 +',RET_NOMACAO'
                 +',RET_CODBCO_COB'
                 +',RET_CODLDR'
                 +',RET_DTVCTO_TIT'
                 +',RET_VALOR_TIT '
                 +') values ('
                 +' :RET_NOMEARQ'
                 +',:RET_PASTAARQ'
                 +',:RET_COMPUTADOR'
                 +',:RET_DATHORARQ'
                 +',:RET_ID_SEQ'
                 +',:RET_CHAVETIT_ID_ANO'
                 +',:RET_CHAVETIT_ID'
                 +',:RET_CODEMP_TIT'
                 +',:RET_CODACAO'
                 +',:RET_DATALIQ'
                 +',:RET_DATACRED'
                 +',:RET_VALTAR'
                 +',:RET_VALIOF'
                 +',:RET_VALABAT'
                 +',:RET_VALDESC'
                 +',:RET_VALLANC'
                 +',:RET_VALJURMOR'
                 +',:RET_VALOUTREC'
                 +',:RET_AGENCIAREC'
                 +',:RET_CODBCOREC'
                 +',:RET_NOMNATREC'
                 +',:RET_NATREC'
                 +',:RET_NOMACAO'
                 +',:RET_CODBCO_COB'
                 +',:RET_CODLDR'
                 +',:RET_DTVCTO_TIT'
                 +',:RET_VALOR_TIT '
                 +' )');

 }

// TERMINO

mdathorarq:=FileDateToDateTime(FileAge(MARQORI.Text));

//showmessage(DateTimeToStr(FileDateToDateTime(FileAge(arquivo))));
//Showmessage(DatetimetoStr(mdathorarq));
result:=true;
if Tb_RetornoCRCHAVE_ID.AsInteger>0 then
   begin
{   query_exe.close;
   query_exe.Params.Clear;
   Query_exe.SQL.Clear;
   Query_exe.SQL.Add('MERGE INTO CADDAR_RET t1 '
                 +'  USING (SELECT             '
                 +' :RET_NOMEARQ as RET_NOMEARQ'
                 +',:RET_PASTAARQ as RET_PASTAARQ'
                 +',:RET_COMPUTADOR as RET_COMPUTADOR'
                 +',:RET_DATHORARQ as RET_DATHORARQ'
                 +',:RET_ID_SEQ as RET_ID_SEQ'
                 +',:RET_CHAVETITIDANO as RET_CHAVETITIDANO '
                 +',:RET_CHAVETIT_ID as RET_CHAVETIT_ID'
                 +',:RET_CODEMP_TIT as RET_CODEMP_TIT'
                 +',:RET_CODACAO as RET_CODACAO'
                 +',:RET_DATALIQ as RET_DATALIQ'
                 +',:RET_DATACRED as RET_DATACRED'
                 +',:RET_VALTAR as RET_VALTAR'
                 +',:RET_VALIOF as RET_VALIOF'
                 +',:RET_VALABAT as RET_VALABAT'
                 +',:RET_VALDESC as RET_VALDESC'
                 +',:RET_VALLANC as RET_VALLANC'
                 +',:RET_VALJURMOR as RET_VALJURMOR'
                 +',:RET_VALOUTREC as RET_VALOUTREC'
                 +',:RET_AGENCIAREC as RET_AGENCIAREC'
                 +',:RET_CODBCOREC as RET_CODBCOREC'
                 +',:RET_NOMNATREC as RET_NOMNATREC'
                 +',:RET_NATREC as RET_NATREC'
                 +',:RET_NOMACAO as RET_NOMACAO'
                 +',:RET_CODBCO_COB as RET_CODBCO_COB'
                 +',:RET_CODLDR as RET_CODLDR'
                 +',:RET_DTVCTO_TIT as RET_DTVCTO_TIT'
                 +',:RET_VALOR_TIT  as RET_VALOR_TIT'
                 +' from DUAL) ss '
                 +' ON (t1.RET_CHAVETIT_ID = ss.RET_CHAVETIT_ID'
                 +' and T1.RET_CHAVETIT_ID_ANO = ss.RET_CHAVETITIDANO '
                 +' and T1.RET_CODEMP_TIT = ss.RET_CODEMP_TIT '
                 +')  '
                 +' WHEN NOT MATCHED THEN '
                 +' INSERT( '
                 +' t1.RET_NOMEARQ'
                 +',t1.RET_PASTAARQ'
                 +',t1.RET_COMPUTADOR'
                 +',t1.RET_DATHORARQ'
                 +',t1.RET_ID_SEQ'
                 +',t1.RET_CHAVETIT_ID_ANO'
           +',t1.RET_CHAVETIT_ID'
                 +',t1.RET_CODEMP_TIT'
                 +',t1.RET_CODACAO'
                 +',t1.RET_DATALIQ'
                 +',t1.RET_DATACRED'
                 +',t1.RET_VALTAR'
                 +',t1.RET_VALIOF'
                 +',t1.RET_VALABAT'
                 +',t1.RET_VALDESC'
                 +',t1.RET_VALLANC'
                 +',t1.RET_VALJURMOR'
                 +',t1.RET_VALOUTREC'
                 +',t1.RET_AGENCIAREC'
                 +',t1.RET_CODBCOREC'
                 +',t1.RET_NOMNATREC'
                 +',t1.RET_NATREC'
                 +',t1.RET_NOMACAO'
                 +',t1.RET_CODBCO_COB'
                 +',t1.RET_CODLDR'
                 +',t1.RET_DTVCTO_TIT'
                 +',t1.RET_VALOR_TIT'
                 +' ) '
                 +' VALUES( '
                 +' ss.RET_NOMEARQ'
                 +',ss.RET_PASTAARQ'
                 +',ss.RET_COMPUTADOR'
                 +',ss.RET_DATHORARQ'
                 +',ss.RET_ID_SEQ'
                 +',ss.RET_CHAVETITIDANO'
                 +',ss.RET_CHAVETIT_ID'
                 +',ss.RET_CODEMP_TIT'
                 +',ss.RET_CODACAO'
                 +',ss.RET_DATALIQ'
                 +',ss.RET_DATACRED'
                 +',ss.RET_VALTAR'
                 +',ss.RET_VALIOF'
                 +',ss.RET_VALABAT'
                 +',ss.RET_VALDESC'
                 +',ss.RET_VALLANC'
                 +',ss.RET_VALJURMOR'
                 +',ss.RET_VALOUTREC'
                 +',ss.RET_AGENCIAREC'
                 +',ss.RET_CODBCOREC'
                 +',ss.RET_NOMNATREC'
                 +',ss.RET_NATREC'
                 +',ss.RET_NOMACAO'
                 +',ss.RET_CODBCO_COB'
                 +',ss.RET_CODLDR'
                 +',ss.RET_DTVCTO_TIT'
                 +',ss.RET_VALOR_TIT'
                 +') ');



   mchaveid:=fBuscareTestarID('CADDAR_RET_'+formatdatetime('yyyy', Now));
   query_exe.ParamByName('RET_NOMEARQ').AsString              := Fnomearq_Pasta(0,MARQORI.Text);
   query_exe.ParamByName('RET_PASTAARQ').AsString             := Fnomearq_Pasta(1,MARQORI.Text);
   query_exe.ParamByName('RET_COMPUTADOR').AsString           := NomeComputador;
   query_exe.ParamByName('RET_DATHORARQ').AsDateTime          := mdathorarq;

   query_exe.ParamByName('RET_ID_SEQ').AsInteger              := mchaveid;
   query_exe.ParamByName('RET_CHAVETITIDANO').AsInteger     := Tb_RetornoCRCHAVE_ID_ANO.AsInteger;
   query_exe.ParamByName('RET_CHAVETIT_ID').AsInteger         := Tb_RetornoCRCHAVE_ID.AsInteger;
   query_exe.ParamByName('RET_CODEMP_TIT').AsInteger          := Tb_RetornoCODEMP_DUP.AsInteger;
   query_exe.ParamByName('RET_CODACAO').AsInteger             := Tb_RetornoCODACAO.AsInteger;
   query_exe.ParamByName('RET_DATALIQ').AsDateTime            := Tb_RetornoDATALIQ.AsDateTime;
   query_exe.ParamByName('RET_DATACRED').AsDateTime           := Tb_RetornoDATACRED.AsDateTime;
   query_exe.ParamByName('RET_VALTAR').AsFloat                := Tb_RetornoVALTAR.AsFloat;
   query_exe.ParamByName('RET_VALIOF').AsFloat                := Tb_RetornoVALIOFD.AsFloat;
   query_exe.ParamByName('RET_VALABAT').AsFloat               := Tb_RetornoVALABAT.AsFloat;
   query_exe.ParamByName('RET_VALDESC').AsFloat               := Tb_RetornoVALDESC.AsFloat;
   query_exe.ParamByName('RET_VALLANC').AsFloat               := Tb_RetornoVALLANC.AsFloat;
   query_exe.ParamByName('RET_VALJURMOR').AsFloat             := Tb_RetornoVALJURMOR.AsFloat;
   query_exe.ParamByName('RET_VALOUTREC').AsFloat             := Tb_RetornoVALOUTREC.AsFloat;
   query_exe.ParamByName('RET_AGENCIAREC').AsFloat            := Tb_RetornoAGENCIAREC.AsFloat;
   query_exe.ParamByName('RET_CODBCOREC').AsFloat             := Tb_RetornoCODBCOREC.AsFloat;
   query_exe.ParamByName('RET_NOMNATREC').AsString            := Tb_RetornoNOMNATREC.AsString;
   query_exe.ParamByName('RET_NATREC').AsFloat                := Tb_RetornoNATREC.AsFloat;
   query_exe.ParamByName('RET_NOMACAO').AsString              := Tb_RetornoNOMACAO.AsString;
   query_exe.ParamByName('RET_CODBCO_COB').AsFloat            := mCodCai_Cele;
   query_exe.ParamByName('RET_CODLDR').AsFloat                := mCodLdr_local;
   query_exe.ParamByName('RET_DTVCTO_TIT').AsDateTime         := Tb_RetornoDATAVENC.AsDateTime;
   query_exe.ParamByName('RET_VALOR_TIT').AsFloat             := Tb_RetornoVALTIT.AsFloat;


   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,4490,'SGE'+ e.message,'CADVER');
      result:=false;
      exit;
      end;
      end;

}

// inicio

   query_exe.close;
   query_exe.Params.Clear;
   Query_exe.SQL.Clear;
   mchaveid:=fBuscareTestarID('CADDAR_RET_'+formatdatetime('yyyy', Now));

   Query_exe.SQL.Add('MERGE INTO CADDAR_RET t1 '
                 +'  USING (SELECT             '
                 +' '+QuotedStr(Fnomearq_Pasta(0,MARQORI.Text))+' as RET_NOMEARQ'
                 +','+QuotedStr(Fnomearq_Pasta(1,MARQORI.Text))+' as RET_PASTAARQ'
                 +','+QuotedStr(NomeComputador)+' as RET_COMPUTADOR'
                 +',TO_DATE('+QuotedStr(formatdatetime(fdt, mdathorarq))+', '+QuotedStr(fdathor_oracle)+') as RET_DATHORARQ'
                 +','+inttostr(mchaveid)+' as RET_ID_SEQ'
                 +','+Tb_RetornoCRCHAVE_ID_ANO.AsString+' as RET_CHAVETITIDANO '
                 +','+Tb_RetornoCRCHAVE_ID.AsString+' as RET_CHAVETIT_ID'
                 +','+Tb_RetornoCODEMP_DUP.AsString+' as RET_CODEMP_TIT'
                 +','+Tb_RetornoCODACAO.AsString+' as RET_CODACAO'
                 +',TO_DATE('+QuotedStr(formatdatetime(fdt, Tb_RetornoDATALIQ.AsDateTime))+', '+QuotedStr(fdathor_oracle)+') as RET_DATALIQ'
                 +',TO_DATE('+QuotedStr(formatdatetime(fdt, Tb_RetornoDATACRED.AsDateTime))+', '+QuotedStr(fdathor_oracle)+') as  RET_DATACRED'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALTAR.AsFloat))+' as RET_VALTAR'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALIOFD.AsFloat))+' as RET_VALIOF'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALABAT.AsFloat))+' as RET_VALABAT'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALDESC.AsFloat))+' as RET_VALDESC'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALLANC.AsFloat))+' as RET_VALLANC'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALJURMOR.AsFloat))+' as RET_VALJURMOR'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALOUTREC.AsFloat))+' as RET_VALOUTREC'
                 +','+Tb_RetornoAGENCIAREC.AsString+' as RET_AGENCIAREC'
                 +','+Tb_RetornoCODBCOREC.AsString+' as RET_CODBCOREC'
                 +','+QuotedStr(Tb_RetornoNOMNATREC.AsString)+' as RET_NOMNATREC'
                 +','+Tb_RetornoNATREC.AsString+' as RET_NATREC'
                 +','+QuotedStr(Tb_RetornoNOMACAO.AsString)+' as RET_NOMACAO'
                 +','+inttostr(mCodCai_Cele)+' as RET_CODBCO_COB'
                 +','+floattostr(mCodLdr_local.codldr)+' as RET_CODLDR'
                 +',TO_DATE('+QuotedStr(formatdatetime(fdt, Tb_RetornoDATAVENC.AsDateTime))+', '+QuotedStr(fdathor_oracle)+') as RET_DTVCTO_TIT'
                 +','+mudavp(FormatFloat(mcasas, Tb_RetornoVALTIT.AsFloat))+' as  RET_VALOR_TIT '
                 +' from DUAL) ss '
                 +' ON (t1.RET_CHAVETIT_ID = ss.RET_CHAVETIT_ID'
                 +' and T1.RET_CHAVETIT_ID_ANO = ss.RET_CHAVETITIDANO '
                 +' and T1.RET_CODEMP_TIT = ss.RET_CODEMP_TIT '
                 +')  '
                 +' WHEN MATCHED THEN '
                 +' UPDATE SET t1.RET_CODLDR = ss.RET_CODLDR'
                 +' WHEN NOT MATCHED THEN '
                 +' INSERT( '
                 +' t1.RET_NOMEARQ'
                 +',t1.RET_PASTAARQ'
                 +',t1.RET_COMPUTADOR'
                 +',t1.RET_DATHORARQ'
                 +',t1.RET_ID_SEQ'
                 +',t1.RET_CHAVETIT_ID_ANO'
                 +',t1.RET_CHAVETIT_ID'
                 +',t1.RET_CODEMP_TIT'
                 +',t1.RET_CODACAO'
                 +',t1.RET_DATALIQ'
                 +',t1.RET_DATACRED'
                 +',t1.RET_VALTAR'
                 +',t1.RET_VALIOF'
                 +',t1.RET_VALABAT'
                 +',t1.RET_VALDESC'
                 +',t1.RET_VALLANC'
                 +',t1.RET_VALJURMOR'
                 +',t1.RET_VALOUTREC'
                 +',t1.RET_AGENCIAREC'
                 +',t1.RET_CODBCOREC'
                 +',t1.RET_NOMNATREC'
                 +',t1.RET_NATREC'
                 +',t1.RET_NOMACAO'
                 +',t1.RET_CODBCO_COB'
                 +',t1.RET_CODLDR'
                 +',t1.RET_DTVCTO_TIT'
                 +',t1.RET_VALOR_TIT'
                 +' ) '
                 +' VALUES( '
                 +' ss.RET_NOMEARQ'
                 +',ss.RET_PASTAARQ'
                 +',ss.RET_COMPUTADOR'
                 +',ss.RET_DATHORARQ'
                 +',ss.RET_ID_SEQ'
                 +',ss.RET_CHAVETITIDANO'
                 +',ss.RET_CHAVETIT_ID'
                 +',ss.RET_CODEMP_TIT'
                 +',ss.RET_CODACAO'
                 +',ss.RET_DATALIQ'
                 +',ss.RET_DATACRED'
                 +',ss.RET_VALTAR'
                 +',ss.RET_VALIOF'
                 +',ss.RET_VALABAT'
                 +',ss.RET_VALDESC'
                 +',ss.RET_VALLANC'
                 +',ss.RET_VALJURMOR'
                 +',ss.RET_VALOUTREC'
                 +',ss.RET_AGENCIAREC'
                 +',ss.RET_CODBCOREC'
                 +',ss.RET_NOMNATREC'
                 +',ss.RET_NATREC'
                 +',ss.RET_NOMACAO'
                 +',ss.RET_CODBCO_COB'
                 +',ss.RET_CODLDR'
                 +',ss.RET_DTVCTO_TIT'
                 +',ss.RET_VALOR_TIT'
                 +') ');




   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,4490,'SGE'+ e.message,'CADVER');
      result:=false;
      exit;
      end;
      end;

// termino

   end;
query_exe.close;
freeandnil(query_exe);
end;



procedure TFrm_CobEle_Retorno.DBGrid1DblClick(Sender: TObject);
var
Form_Dar: TFrm_Dar;
x_clb: integer;
begin
if fsonumero(Tb_RetornoNOSNUM.Value)>0 then
   begin
   Application.CreateForm(TFrm_Dar, Form_Dar);

   for x_clb:=0 to Form_Dar.Form_SelEmp.CLB_EMPRESAS.Items.Count-1 do
      begin
      Form_Dar.Form_SelEmp.CLB_EMPRESAS.Checked[x_clb]:=true;
      end;
   Form_Dar.FormStyle:=fsNormal;
   Form_Dar.Visible:=False;
   dar_ori:='frm_rcrec';
   Form_Dar.Edit1.Text:=Tb_RetornoNOSNUM.AsString;
   if Form_Dar.flcaddar_form(10,0,0,0,0,Tb_RetornoNOSNUM.AsString,
                     '',
                     '',
                     pdatanula,'') then
      begin
      Form_Dar.ShowModal;
      end;
   freeandnil(Form_Dar);
   end;
end;


procedure TFrm_CobEle_Retorno.fZerarVariaveis;
begin
mQtdEntConf :=0;
mTotentConf :=0;
mQtdEntRej  :=0;
mTotentRej  :=0;
mQtdTitLiq  :=0;
mTotTitLiq  :=0;
mQtdTitLiq_Bai:=0;
mTotTitLiq_Bai:=0;
mQtdPagChq    :=0;
mTotPagChq    :=0;
mQtdEntCart   :=0;
mTotentCart   :=0;
mQtdOutras    :=0;
mTotOutras    :=0;
mQtdBaixadosSemReceber:=0;
mTotBaixadosSemReceber :=0;

end;
procedure TFrm_CobEle_Retorno.fTotalizar;
begin
if (Tb_RetornoCODRET.AsInteger=2) then
   begin
   mQtdEntConf :=mQtdEntConf+1;
   mTotentConf :=mTotentConf+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   Tb_RetornoCODACAO.AsInteger :=01;
   end
else if Tb_RetornoCODRET.AsInteger=03 then // entrada rejeitada
   begin
   Tb_RetornoCODACAO.AsInteger :=02;
   mQtdEntRej :=mQtdEntRej+1;
   mTotentRej :=mTotentRej+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   end
else if ( (Tb_RetornoCODRET.AsInteger=06) or
        (Tb_RetornoCODRET.AsInteger=07) or
        (Tb_RetornoCODRET.AsInteger=08) ) then
   begin
   Tb_RetornoCODACAO.AsInteger :=04;
   mQtdTitLiq :=mQtdTitLiq+1;
   mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
      begin
      mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
      mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end;
   end
else if Tb_RetornoCODRET.AsInteger=15 then // liquidado em cartorio
   begin
   Tb_RetornoCODACAO.AsInteger :=05;
   mQtdTitLiq :=mQtdTitLiq+1;
   mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
      begin
      mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
      mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end;

   end
else if Tb_RetornoCODRET.AsInteger=23 then // Encaminhado ao cartorio
   begin
   Tb_RetornoCODACAO.AsInteger :=06;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TITPROT').AsFloat   :=1;
   end
else if Tb_RetornoCODRET.AsInteger=46 then // liquidado com cheque
   begin
   Tb_RetornoCODACAO.AsInteger :=09;
   mQtdPagChq :=mQtdPagChq+1;
   mTotPagChq :=mTotPagChq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   end
else if Tb_RetornoCODRET.AsInteger=05 then // liquidado sem registro
   begin
   Tb_RetornoCODACAO.AsInteger :=04;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString:='Efetuar baixa(titulo liquidado)';
   mQtdTitLiq :=mQtdTitLiq+1;
   mTotTitLiq :=mTotTitLiq+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
   if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat<2 then
      begin
      mQtdTitLiq_Bai :=mQtdTitLiq_Bai+1;
      mTotTitLiq_Bai :=mTotTitLiq_Bai+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat;
      end;

   end
else if Tb_RetornoCODRET.AsInteger=23 then // Entrada em Cartorio
   begin
   Tb_RetornoCODACAO.AsInteger :=06;
   mQtdEntCart :=mQtdEntCart+1;
   mTotentCart :=mTotentCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   end
else if Tb_RetornoCODRET.AsInteger=96 then // Debito de Tarifas Cartorarias
   begin

   if valfloat(copy(mlinha,176,13))>0 then

      Tb_RetornoCODACAO.AsInteger :=07 // tarifa de protesto
  else
     Tb_RetornoCODACAO.AsInteger :=08; // custa de protesto

   mQtdTarCart :=mQtdTarCart+1;
   mTotTarCart :=mTotTarCart+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
   vet_acao_interna[Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsInteger];
   end
else  If Tb_RetornoCODRET.AsInteger=09 then // Debito de Tarifas Cartorarias
   begin
   mQtdBaixadosSemReceber  :=mQtdBaixadosSemReceber+1;
   mTotBaixadosSemReceber  :=mTotBaixadosSemReceber+Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat;
   end;


end;


procedure TFrm_CobEle_Retorno.fApresentarTotais;
begin


lbl_titliq.Caption     :='Titulo Liquidado.... Qtd['+insere(FormatFloat('###0', mQtdTitLiq),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotTitLiq) ,' ',11)+']';
lbl_pagochq.Caption    :='Pagos c/Cheques..... Qtd['+insere(FormatFloat('###0', mQtdPagChq),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotPagChq) ,' ',11)+']';
lbl_titliq_bai.Caption :='Titulo p/Baixar..... Qtd['+insere(FormatFloat('###0', mQtdTitLiq_Bai),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotTitLiq_Bai) ,' ',11)+']';
lbl_entconf.Caption    :='Entrada Confirmada.. Qtd['+insere(FormatFloat('###0',mQtdEntConf),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotentConf),' ',11)+']';
lbl_entrej.Caption     :='Entrada Rejeitada... Qtd['+insere(FormatFloat('###0', mQtdEntRej),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotentRej) ,' ',11)+']';
lbl_entcart.Caption    :='Encam. ao Cartório.. Qtd['+insere(FormatFloat('###0',mQtdEntCart),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotentCart),' ',11)+']';
lbl_tarcart.Caption    :='Tarifas Cartorarias. Qtd['+insere(FormatFloat('###0',mQtdTarCart),' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotTarCart),' ',11)+']';
lbl_outras.Caption     :='Outras Nao Identifi. Qtd['+insere(FormatFloat('###0',mQtdOutras) ,' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotOutras) ,' ',11)+']';

lbl_outras.Caption     :='Outras Nao Identifi. Qtd['+insere(FormatFloat('###0',mQtdOutras) ,' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotOutras) ,' ',11)+']';

lbl_titbai.Caption     :='Total Tit. Baixados. Qtd['+insere(FormatFloat('###0',mQtdRec)    ,' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotRec)    ,' ',11)+']';
lbl_baixadossemreceber.Caption     :='Baixados Sem Receber.Qtd:['+insere(FormatFloat('###0',mQtdBaixadosSemReceber) ,' ',4)+']Reg-Totais:['+insere(FormatFloat(mcasas, mTotBaixadosSemReceber)    ,' ',11)+']';
end;

procedure TFrm_CobEle_Retorno.fCalcularDiferencas;
var
mValTitCalc: real;
begin
Tb_RetornoNOMCLI_PERCPAR.Value:=fcoincide(Tb_RetornoNOMCLI.asstring, Tb_RetornoNOME_RETORNO.AsString);

mValTitCalc:=(Tb_RetornoVALREC.AsFloat+Tb_RetornoVALDESC.AsFloat)-Tb_RetornoVALJURMOR.AsFloat;
Tb_RetornoVALOR_PERC_PAR.AsFloat := 0;

if (mValTitCalc>0) and ((mValTitCalc-Tb_RetornoVALTIT.AsFloat)<>0) then
   begin
   try
      Tb_RetornoVALOR_PERC_PAR.AsFloat := ((mValTitCalc-Tb_RetornoVALTIT.AsFloat) * 100)  / mValTitCalc;
   except
   end;
   end;

end;

procedure TFrm_CobEle_Retorno.Tb_RetornoBeforePost(DataSet: TDataSet);
begin
fCalcularDiferencas;

end;

// INICIO


procedure Tfrm_cobele_retorno.fprocurarTituloDiscrepantes;
var
query_vcto: TQuery;
mValTitCalc: real;



    function fbuscarpeloNumeroeVencimento(pnumero: real; pDtVcto: TDatetime): boolean;
    begin
    result:=false;
    if (pNumero>0) and (pDtVcto>pdatanula) then
       begin
       query_vcto.Close;
       query_vcto.Sql.Clear;
       query_vcto.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                      +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP,CRCHAVE_ID_ANO,CRCHAVE_ID FROM CADDAR where CRSTATUS<9 '
                      +' and CRNUMERO = :NUMERO '
                      +' and CRDTVCTO = :DTVCTO '
                      );
       query_vcto.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
       query_vcto.ParamByName('NUMERO').AsFloat:=pNumero;
       query_vcto.ParamByName('DTVCTO').AsDateTime:=pDtVcto;
       try
          query_vcto.Open;
          if query_vcto.IsEmpty=false then
             result:=true;
       except on e : exception do
          begin
          ex_erroSql_Novo(query_vcto,4539,'SGE '+e.Message ,'CADDAR');
          result:=false;
          exit;
          end;
          end;
       end;

    end;


    function fbuscarpeloNumeroeValorAproximado(pnumero: real; pValor: Real): boolean;
    var
    mDifMin: Real;
    mDifMax: Real;
    begin
    result:=false;

    if (pNumero>0) and (pValor>0) then
       begin
       mDifMin:=pValor * 0.80;
       mDifMax:=pValor * 1.20;

       query_vcto.Close;
       query_vcto.Sql.Clear;
       query_vcto.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP,CRVALOR,CRDESCF,CRSTATUS,CRCODEMP,'
                      +' CRDTPAG,CRLOTE,CRDTBX,CRDTEMIS,CRDESD,CRDNOSNUM ,CRNOSNUM,CRDUP,CRCHAVE_ID_ANO,CRCHAVE_ID FROM CADDAR where CRSTATUS<9 '
                      +' and CRNUMERO = :NUMERO '
                      +' and (CRVALOR > :VALMIN AND CRVALOR < :VALMAX )'
                      );
       query_vcto.Sql.Add(' Order by CRSTATUS,CRDTVCTO');
       query_vcto.ParamByName('NUMERO').AsFloat:=pNumero;
       query_vcto.ParamByName('VALMIN').AsFloat:=mDifMin;
       query_vcto.ParamByName('VALMAX').AsFloat:=mDifMax;
       try
          query_vcto.Open;
          if query_vcto.IsEmpty=false then
             result:=true;
       except on e : exception do
          begin
          ex_erroSql_Novo(query_vcto,4539,'SGE '+e.Message ,'CADDAR');
          result:=false;
          exit;
          end;
          end;
       end;

    end;




    procedure fSetarDadosCaddar;
    begin
    if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat=0 then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=query_vcto.FieldByName('CRNUMERO').AsFloat;
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=query_vcto.FieldByName('CRDESD').AsString;
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=query_vcto.FieldByName('CRCODEMP').AsFloat;
       end;
    if query_vcto.FieldByName('CRSTATUS').AsFloat=2 then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString  :=
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString+'/Recebido Anteriormente. Lote BX: '
                           +query_vcto.fieldbyName('CRLOTE').Asstring
                           +' Data Baixa: '+FormatDatetime(fdt2,query_vcto.fieldbyName('CRDTBX').AsDateTime)
                           +' Data Pgto: '+FormatDatetime(fdt2,query_vcto.fieldbyName('CRDTPAG').AsDateTime);
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAPAG_ANT').AsDateTime  :=query_vcto.fieldbyName('CRDTPAG').AsDateTime;
       end;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=query_vcto.FieldByName('CRSTATUS').AsFloat;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat           :=query_vcto.fieldbyname('CRVALOR').AsFloat;
    if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',query_vcto.FieldbyName('CRCODCLI').AsString) then
       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString:=DM1.Query1.FieldByName('CRAZAO').AsString;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DTEMIS').AsDateTime      :=query_vcto.fieldbyname('CRDTEMIS').AsDateTime;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=query_vcto.FieldByName('CRCODEMP').AsFloat;
    if ((Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALTIT').AsFloat)>
       (Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALREC').AsFloat) ) and
      (Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALDESC').AsFloat=0) then
       begin
       Frm_CobEle_Retorno.Tb_Retorno.fieldbyName('VALDESC').AsFloat:=query_vcto.fieldbyname('CRDESCF').AsFloat;
       end;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').asstring := query_vcto.fieldbyname('CRNOSNUM').asstring;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID').AsFloat     :=query_vcto.FieldByName('CRCHAVE_ID').AsFloat;
    Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CRCHAVE_ID_ANO').AsFloat     :=query_vcto.FieldByName('CRCHAVE_ID_ANO').AsFloat;

    end;



begin
query_vcto:=TQuery.create(nil);
query_vcto.databasename:=DM1.SG_ASSOC.DatabaseName;

//LINDOMAR
Tb_Retorno.First;
While not Tb_Retorno.Eof do
   begin
   mValTitCalc:=(Tb_RetornoVALREC.AsFloat+Tb_RetornoVALDESC.AsFloat)-Tb_RetornoVALJURMOR.AsFloat;

   if ((Tb_RetornoVALOR_PERC_PAR.AsFloat * iif(Tb_RetornoVALOR_PERC_PAR.AsFloat<0,-1,1))>10) then
      begin
      if (Tb_RetornoNOMCLI_PERCPAR.AsFloat* iif(Tb_RetornoNOMCLI_PERCPAR.asfloat<0,-1,1)<70) then
         begin
         if fbuscarpeloNumeroeVencimento(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat,
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime) then
            begin
            Tb_Retorno.Edit;
            fSetarDadosCaddar;
            Tb_Retorno.post;
            end
         else if fbuscarpeloNumeroeValorAproximado(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat,
            mValTitCalc) then
            begin
            Tb_Retorno.Edit;
            fSetarDadosCaddar;
            Tb_Retorno.post;
            end

         end;
      end;
   tb_retorno.next;
   end;

query_vcto.Close;
freeandnil(query_vcto);
end;

// TERMINO


// 033 - santander
function TFrm_CobEle_Retorno.fRet033cnab240(pNomeArq: String): Boolean;
var
  mEncontrou:Boolean;
  mDataString: string;
begin
if Frm_CobEle_Retorno.Tb_Retorno.Active then
  Frm_CobEle_Retorno.Tb_Retorno.Close;
if Frm_CobEle_Retorno.Tb_Retorno.Exists then
  Frm_CobEle_Retorno.Tb_Retorno.DeleteTable;
mTabTemp:=fproctemp(11);
Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
try
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
except
  mTabTemp:=fproctemp(12);
  Frm_CobEle_Retorno.Tb_Retorno.TableName:=mTabTemp;
  Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
  end;
Frm_CobEle_Retorno.Tb_Retorno.CreateTable;
Frm_CobEle_Retorno.Tb_Retorno.Open;
AssignFile(f,pNomeArq);
reset(f);
While not eof(f) do
   begin
   Readln(f,mlinha);
   if copy(mlinha,8,01)<>'3' then
      continue;
   if mlinha[14]='T' then
      begin
      Frm_CobEle_Retorno.Tb_Retorno.Append;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TIPODEF').AsInteger      :=valint(mlinha[8]);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODACAO').AsFloat        :=valint(copy(mlinha,16,2));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODAGE').Asinteger       :=valint(copy(mlinha,18,5));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODCED').Asinteger       :=valint(copy(mlinha,24,12));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGCED').AsString        :=copy(mlinha,36,1);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString        :=copy(mlinha,41,12);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DNOSNUM').AsString       :=copy(mlinha,54,1);;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CARTEIRA').AsString      :=mlinha[58];
      mcinst:=copy(mlinha,55,15);
      mcinst2:=copy(mcinst,1,fPosCaractere('/',mcinst)-1);
      mcinst3:=copy(mcinst,length(mcinst2)+2,length(mcinst)-length(mcinst2)+2);
      mcinst3:=trim(mcinst3);
      if length(mcinst3)>2 then
         mcinst3:=copy(mcinst3,1,2);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat         :=fsonumero(mcinst2);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DESDDUP').AsString       :=mcinst3;

      mDataString:=copy(mlinha,70,02)+'/'+copy(mlinha,70+2,02)+'/'+copy(mlinha,70+4,04) ;
      if (trim(mDataString)<>'00/00/0000') and (trim(mDataString)<>'/  /') then
         begin
         try
            mDataString:=Formatdatetime(fdt2, StrToDate(mDataString));
            Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime:=StrtoDate(mDataString);
         except
            end;
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat         :=fsonumero(copy(mlinha,78,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsFloat      :=fsonumero(copy(mlinha,93,3));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('AGENCIAREC').AsInteger   :=valint(copy(mlinha,96,4));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DIGAGEREC').AsInteger    :=valint(copy(mlinha,100,01));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('TPCPFCNPJ').AsInteger    :=valint(mlinha[128]);;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CNPFCNPJ').AsFloat       :=fsonumero(copy(mlinha,129,15));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMCLI').AsString        :=copy(mlinha,144,40);
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NATREC').AsFloat         :=0;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
      mcinst:=trim(mcinst);
      if length(mcinst)>1 then
         begin
         if ValInt(mcinst[length(mcinst)])=1 then
            begin
            if codemp>100 then
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp
            else
               Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp+100;
            end
         else
            begin
            if codemp>100 then
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp-100
            else
              Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODEMP_DUP').AsFloat     :=codemp;
            end;
         end;
      continue; // NOVO LUIZ
      end
   else if mlinha[14]='U' then
      begin
      if not (Frm_CobEle_Retorno.Tb_Retorno.state in [dsEdit,dsInsert]) then
         Frm_CobEle_Retorno.Tb_Retorno.Edit;

      if Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat=0 then
         begin
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALTIT').AsFloat:=fsonumero(copy(mlinha,78,15))/100;
         end;

      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALJURD').AsFloat    :=fsonumero(copy(mlinha,18,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALDESC').AsFloat    :=fsonumero(copy(mlinha,33,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALABAT').AsFloat    :=fsonumero(copy(mlinha,48,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALIOFD').AsFloat    :=fsonumero(copy(mlinha,63,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALREC').AsFloat     :=fsonumero(copy(mlinha,78,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTD').AsFloat    :=fsonumero(copy(mlinha,108,15))/100;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('VALOUTREC').AsFloat  :=fsonumero(copy(mlinha,123,15))/100;
      mcinst:=copy(mlinha,138,02)+'/'+copy(mlinha,138+2,02)+'/'+copy(mlinha,138+4,04) ;
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATALIQ').AsDateTime:=StrtoDate(mcinst);
      except
         end;
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('CODBCOREC').AsInteger:=valint(copy(mlinha,211,03));
      Frm_CobEle_Retorno.Tb_Retorno.FieldByName('STATUS_ANT').AsFloat :=9;



       Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
       mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
       if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
          begin
          try
             mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
             Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
           except
             end;
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     := vet_natrec[valint(Frm_CobEle_Retorno.Tb_RetornoCODACAO.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMACAO').AsString     :='erro.';
          end;
       try
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :=vet_natrec_recusa[valint(Frm_CobEle_Retorno.Tb_RetornoNATREC.AsString)];
       except
          Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOMNATREC').AsString     :='erro.';
          end;


//  Verificando se encontra o titulo
      if fsonumero(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString)>0 then
         Frm_CobEle_Retorno.fprocurarTitulo(Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NOSNUM').AsString
       , Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATAVENC').AsDateTime,Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMDUP').AsFloat );



   Frm_CobEle_Retorno.Tb_Retorno.FieldByName('NUMREG').AsInteger   :=0;
   mcinst:=copy(mlinha,146,02)+'/'+copy(mlinha,146+2,02)+'/'+copy(mlinha,146+4,04) ;
   if (trim(mcinst)<>'00/00/0000') and (trim(mcinst)<>'/  /') then
      begin
      try
         mcinst:=Formatdatetime(fdt2, StrToDate(mcinst));
         Frm_CobEle_Retorno.Tb_Retorno.FieldByName('DATACRED').AsDateTime:=StrtoDate(mcinst);
       except
         end;
      end;

//      Frm_CobEle_Retorno.fCalcularDiferencas;
      Frm_CobEle_Retorno.Tb_Retorno.Post;
      end;

   end;
try
   closefile(f);
except
   end;
end;



end.
