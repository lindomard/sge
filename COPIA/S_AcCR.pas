unit S_AcCR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, S_SelEmp,
  S_DM1, func, Buttons, Mask, variants,lerarq,S_LOptica,func2,S_PedCli,S_Dar,
  DBClient;


type
  TDadosDup = record
  pvalpago : real;
  pjuros: real;
  pdevol: real;
  pdesc: real;
  pcusbco: real;
  pcodcta: real;
  pusrbx: real;
  plotseq_lb: real;
  plote: real;
  pnr: real;
  pstatus: real;
  pcodldr: real;
  precfrente: real;
  pChaveId: real;
  pChaveIdAno: real;

  pnomcta: string;
  pnomcc: string;
  pcodcc: string;
  pnatdc: string;
  pnomdep: string;
  pcoddep: string;

  pdtbx: tdatetime;
  pdtpag: tdatetime;

  pnumero: real;
  pdesd: string;
  pdup: integer;
  pdtemis: tdatetime;
  pnped: real;
  pcodecf: real;

  end;







type
  TFrm_AcCR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    HeaderControl1: THeaderControl;
    Label2: TLabel;
    NUMDUP: TEdit;
    bbLancar: TBitBtn;
    HC_DUPLIC: THeaderControl;
    Panel5: TPanel;
    rg_forma: TRadioGroup;
    NUMCHQ: TEdit;
    lbl_numchq: TLabel;
    lbl_bco: TLabel;
    BANCO: TEdit;
    Label5: TLabel;
    SERIE: TEdit;
    Label6: TLabel;
    VALOR: TEdit;
    Label7: TLabel;
    EMITENTE: TEdit;
    Label8: TLabel;
    CPF: TEdit;
    Label9: TLabel;
    RG: TEdit;
    Label10: TLabel;
    CONTA: TEdit;
    Label11: TLabel;
    DTNAS: TMaskEdit;
    Label12: TLabel;
    DTDEP: TMaskEdit;
    Label13: TLabel;
    AGENCIA: TEdit;
    bbLancar_chq: TBitBtn;
    bbRemover: TBitBtn;
    bbRemover_chq: TBitBtn;
    HeaderControl3: THeaderControl;
    Panel6: TPanel;
    HC_cheques: THeaderControl;
    Panel7: TPanel;
    bbBaixar: TBitBtn;
    BBCancelar: TBitBtn;
    BBSair: TBitBtn;
    Label14: TLabel;
    DESD: TEdit;
    NOMCLI: TEdit;
    STG_DA: TStringGrid;
    Label15: TLabel;
    TIPOD: TEdit;
    Label16: TLabel;
    VALPAG: TEdit;
    Label17: TLabel;
    DESC: TEdit;
    Label18: TLabel;
    JUROS: TEdit;
    STG_DS: TStringGrid;
    STG_CHQ: TStringGrid;
    Label19: TLabel;
    DATAP: TMaskEdit;
    LComp: TLabel;
    COMP: TEdit;
    st_leitor: TStaticText;
    lbl_caixa: TLabel;
    DATACX: TMaskEdit;
    DTEMIS: TMaskEdit;
    Label20: TLabel;
    Label21: TLabel;
    MCODECF: TEdit;
    Label22: TLabel;
    NR: TEdit;
    Label23: TLabel;
    MCODEMP: TEdit;
    Label24: TLabel;
    NOSNUM: TEdit;
    DEVOL: TEdit;
    Label25: TLabel;
    CUSBCO: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    VALCGRU: TStaticText;
    VALSGRU: TStaticText;
    PDESCSGRU: TEdit;
    Label29: TLabel;
    label30: TLabel;
    VDESSGRU: TEdit;
    label31: TLabel;
    VALDUP: TStaticText;
    CB_FORMAPGTO: TComboBox;
    ST_FORMAPGTO: TStaticText;
    bbMedPgVcto: TBitBtn;
    panel_caixa: TPanel;
    Label3: TLabel;
    MCODCAI_PAD: TEdit;
    MNOMCAI_PAD: TEdit;
    Label4: TLabel;
    MLOTMOV: TEdit;
    lbl_codcai: TLabel;
    MCODCAI: TEdit;
    MNOMCAI: TEdit;
    spn_mandup: TSpeedButton;
    CB_JUROS: TCheckBox;
    Label32: TLabel;
    DTVCTO: TMaskEdit;
    PCTDESC: TEdit;
    Label33: TLabel;
    SBnAjustarCol: TSpeedButton;
    lbl_dtbx: TLabel;
    DATABX: TMaskEdit;
    cb_bancai: TCheckBox;
    cds_da: TClientDataSet;
    cds_ds: TClientDataSet;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure bbLancarClick(Sender: TObject);
    procedure bbRemoverClick(Sender: TObject);
    procedure rg_formaExit(Sender: TObject);
    procedure bbRemover_chqClick(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure NUMCHQKeyPress(Sender: TObject; var Key: Char);
    procedure NUMCHQExit(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure VALORExit(Sender: TObject);
    procedure DTDEPExit(Sender: TObject);
    procedure DTNASExit(Sender: TObject);
    procedure BBSairClick(Sender: TObject);
    procedure bbLancar_chqClick(Sender: TObject);
    procedure BANCOExit(Sender: TObject);
    procedure BBCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG_DADblClick(Sender: TObject);
    procedure DESCKeyPress(Sender: TObject; var Key: Char);
    procedure TIPODExit(Sender: TObject);
    procedure DESCExit(Sender: TObject);
    procedure JUROSExit(Sender: TObject);
    procedure VALPAGExit(Sender: TObject);
    procedure STG_DAExit(Sender: TObject);
    procedure STG_DADrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DATAPExit(Sender: TObject);
    procedure BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure SERIEKeyPress(Sender: TObject; var Key: Char);
    procedure AGENCIAKeyPress(Sender: TObject; var Key: Char);
    procedure CONTAKeyPress(Sender: TObject; var Key: Char);
    procedure EMITENTEKeyPress(Sender: TObject; var Key: Char);
    procedure RGKeyPress(Sender: TObject; var Key: Char);
    procedure CPFKeyPress(Sender: TObject; var Key: Char);
    procedure CPFExit(Sender: TObject);
    procedure NUMCHQEnter(Sender: TObject);
    procedure NUMCHQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DATACXExit(Sender: TObject);
    procedure SERIEExit(Sender: TObject);
    procedure AGENCIAExit(Sender: TObject);
    procedure CONTAExit(Sender: TObject);
    procedure COMPKeyPress(Sender: TObject; var Key: Char);
    procedure COMPExit(Sender: TObject);
    procedure EMITENTEExit(Sender: TObject);
    procedure RGExit(Sender: TObject);
    procedure MCODECFExit(Sender: TObject);
    procedure NUMDUPExit(Sender: TObject);
    procedure DESDExit(Sender: TObject);
    procedure CODCLIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NRExit(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure NOSNUMExit(Sender: TObject);
    procedure STG_DSDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_CHQDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CUSBCOExit(Sender: TObject);
    procedure PDESCSGRUExit(Sender: TObject);
    procedure VDESSGRUExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_FORMAPGTOExit(Sender: TObject);
    procedure bbMedPgVctoClick(Sender: TObject);
    procedure MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
    procedure MCODCAI_PADExit(Sender: TObject);
    procedure MLOTMOVExit(Sender: TObject);
    procedure MCODCAIExit(Sender: TObject);
    procedure MCODCAIKeyPress(Sender: TObject; var Key: Char);
    procedure spn_mandupClick(Sender: TObject);
    procedure CB_JUROSEnter(Sender: TObject);
    procedure CB_JUROSExit(Sender: TObject);
    procedure PCTDESCExit(Sender: TObject);
    procedure CPFEnter(Sender: TObject);
    procedure VALOREnter(Sender: TObject);
    procedure SBnAjustarColClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DATABXExit(Sender: TObject);
    procedure cb_bancaiExit(Sender: TObject);
  private
     function fcarregadup(ptipo: Integer): Boolean;
     function fAcCrTotaldup(ptipo: Integer): Real;
     function fAcCrTotalFP(ptipo: Integer): Real;
     function fLerAtualiza(pTipo: Integer;pValor: String): Boolean;
     function fJaselecionada(pTipo: Integer): Boolean;
     function fJurosDesc(pTipo: Integer): Boolean;
     function fTestaConta(pTipo: Integer): Real;
     function fTestaDadosCheques(pCodCli,pConta: Real): Boolean;
     function fAccrRestPadrao(pTipo: Integer): Boolean;
     function fSalvarPadrao(pTipo: Integer): Boolean;


//     function fLerContas(out pQuery_Dup: tQuery; pCodEmp: Integer; pCodecf,pDup: String; pCodcli,pNumero: real; pDesd: String; pDtemis: tDateTime): boolean;
     function fLerContas(out pQuery_Dup: tQuery; pChaveId_ano,pChave_id: integer): boolean;


     function fAtualizarDup(pDadosDup: tdadosDup): Boolean;

     function fValorParcial(pChaveid_ano, pChaveId, pCodEmp: Integer): real;


    { Private declarations }
  public
    { Public declarations }
    Form_PedCli_AcCr: TFrm_Pedcli;
    form_dar_accr: TFrm_Dar;
    Form_SelEmp: TFrm_SelEmp;
    mcodven: Real;
    mdar_codcai_ant: Integer;
    mqtd: Integer;
    mvenda: Boolean;
    mnumDup: String;
    mcod_fpgto: Real;
    mdev_Codemp: Real;
    mDev_Codecf: Real;
    mDev_Desd: String;
    mDev_Dtemis: TDateTime;
    mDev_Dup: Real;

    mDev_chave_id: Real;
    mDev_chave_id_ano: Real;

    mCodBco_Dup: Real;
    mPassouFpgto: Boolean;

    mloteBx: Real;
    mColNumdup  : Integer;
    mColParc    : Integer;
    mColDup     : Integer;
    mColDtemis  : Integer;
    mColValor   : Integer;
    mColDtVcto  : Integer;
    mColValRec  : Integer;
    mColValDesc : Integer;
    mColDtDesc  : Integer;
    mColArec    : Integer;
    mColNomBco  : Integer;
    mColVend    : Integer;
    mColCaixa   : Integer;
    mColCodEmp  : Integer;
    mColJurdia  : Integer;
    mColAtraso  : Integer;
    mColDescDia : Integer;
    mColDevol   : Integer;
    mColCusBco  : Integer;
    mColTotCGru : Integer;
    mColTotSGru : Integer;
    mColCodFpgto: Integer;
    mColNomFpgto: Integer;
    mColChave   : Integer;
    mColCodBco  : Integer;
    mColObs     : Integer;
    mColnfAcum  : Integer;
    mColBloqueioPDV : Integer;

    mColchave_id  : Integer;
    mColchave_id_ano  : Integer;

    function fCreditaNC(pGrid: Integer): Real;

  end;

var
  Frm_AcCR: TFrm_AcCR;

  mDadosDup: TDadosDup;

  mds_nomcli: Integer=00;
  mds_numdup: Integer=01;
  mds_desd:Integer=02;
  mds_tipod:integer=03;
  mds_valdup:Integer=04;
  mds_valpag:integer=05;
  mds_desc:Integer=06;
  mds_juros:integer=07;
  mds_codcli:integer=08;
  mds_datae:integer=09;
  mds_datap:integer=10;
  mds_codecf:integer=11;
  mds_codemp:integer=12;
  mds_devol:integer=13;
  mds_cusbco:integer=14;
  mds_dtvcto:integer=15;
  mds_parcial:integer=16;
  mds_codbco_dup:integer=17;
  mds_obs:integer=18;
  mds_chave_id:integer=19;
  mds_chave_id_ano:integer=20;

  mchq_nomfp:integer=0;
  mchq_numchq:integer=1;
  mchq_banco:integer=02;
  mchq_serie:integer=03;
  mchq_agencia:integer=04;
  mchq_emitente:integer=05;
  mchq_valor:integer=06;
  mchq_cpf:integer=07;
  mchq_rg:integer=08;
  mchq_conta:integer=09;
  mchq_dtnas:integer=10;
  mchq_codcli:integer=11;
  mchq_databx:integer=12;
  mchq_dtdep:integer=13;
  mchq_codfp:integer=14;
  mchq_datacx:integer=15;
  mchq_comp:integer=16;
  mchq_dev_codemp:integer=17;
  mchq_dev_codecf:integer=18;
  mchq_dev_desd:integer=19;
  mchq_dev_dtemis:integer=20;
  mchq_dev_dup:integer=21;
  mchq_codcai:integer=22;
  mchq_nomcai:integer=23;
  mchq_dev_chave_id:integer=24;
  mchq_dev_chave_id_ano:integer=25;


  implementation

uses func_excecoes, S_DM4, S_DM2, S_BDev, S_MedVenPgt, S_Bco,
  S_Accr_AjustaColunas, Math;

{$R *.DFM}

procedure TFrm_AcCR.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_AcCR',key);
   key:=#0;
   end;

end;

procedure TFrm_AcCR.CODCLIExit(Sender: TObject);
begin
if BBSair.Focused then
   exit;

if Trim(STG_DS.Cells[mds_nomcli,1])='' then
   NR.Enabled:=true
else
   NR.Enabled:=false;


CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fMensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      end;
   pldr_nome:=DM1.Tb_CliCRAZAO.Value;
   IF not fLerAtualiza(0,CODCLI.Text) then
      begin
      fMensagem('Cliente não tem duplicata em aberta!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_AcCR.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_AcCR.bbLancarClick(Sender: TObject);
var
achou: Boolean;
y,mqtdd: Integer;
mvalor: Real;
mdatae: String;
mvaldev, mtotal: Real;
mqtd,mParcial: Integer;
mDesdNovo: String;
mChaveId_nova: Integer;
mChaveId_Ano_nova: Integer;

mens: String;
begin
if Trim(NUMDUP.Text)='' then
   begin
   fMensagem('Numero Invalido!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
if (ValInt(TIPOD.Text)=5) then
//   (ValInt(TIPOD.Text)=12) or
//   (ValInt(TIPOD.Text)=13) or
//   (ValInt(TIPOD.Text)=17) then
   begin
   fMensagem('Documento de Crédito, utilizar baixa de devoluções de clientes!',0,['0'],0);
   exit;
   end;
mParcial:=0;
achou:=False;
for mqtdd:=1 to STG_DA.RowCount do
   begin
   if (valfloat(NUMDUP.Text)=ValFloat(STG_DA.Cells[mColNumdup,mqtdd])) and
      (Trim(DESD.Text)      =Trim(STG_DA.Cells[mColParc,mqtdd]))     and
      (ValInt(TIPOD.Text)   =ValInt(STG_DA.Cells[mColDup,mqtdd]))   and
      (Trim(DTEMIS.Text)    =Trim(STG_DA.Cells[mColDtemis,mqtdd]))      and
      (ValInt(MCODECF.Text) =ValInt(STG_DA.Cells[mColCaixa,mqtdd]))    and
      (ValInt(MCODEMP.Text) =ValInt(STG_DA.Cells[mColCodEmp,mqtdd]))    then
      begin
      achou:=True;
      break;
      end;
   end;
if valFloat(STG_DA.Cells[mColVend,mqtdd])>0 then
   mvenda:=True
else
   mvenda:=False;
mvalor:=ValFloat(STG_DA.Cells[mColValor,mqtdd]);
mdatae:=STG_DA.Cells[mColDtemis,mqtdd];
if not achou then
   begin
   fMensagem('Número de Duplicata Inválido!',0,['0'],0);
{
   fMensagem('DADOS '+NUMDUP.Text+'/'+STG_DA.Cells[mColNumdup,mqtdd]+#13
                     +DESD.Text+'/'+STG_DA.Cells[mColParc,mqtdd]+#13
                     +TIPOD.Text+'/'+STG_DA.Cells[mColDup,mqtdd]   +#13
                     +DTEMIS.Text+'/'+STG_DA.Cells[mColDtemis,mqtdd]      +#13
                     +MCODECF.Text+'/'+STG_DA.Cells[mColCaixa,mqtdd]         +#13
                     +MCODEMP.Text+'/'+STG_DA.Cells[mColCodEmp,mqtdd]+#13,0,['0'],0);
}   NUMDUP.SetFocus;
   exit;
   end;
{
achou:=False;
for mqtd:=1 to STG_DS.RowCount do
   begin
   if (fsonumero(NUMDUP.Text) =fsonumero(STG_DS.Cells[mds_numdup,mqtd])) and
      (Trim(DESD.Text)     =Trim(STG_DS.Cells[mds_desd,mqtd])) and
      (Valint(TIPOD.Text)  =ValInt(STG_DS.Cells[mds_tipod,mqtd])) and
      (Trim(DTEMIS.Text)   =Trim(STG_DS.Cells[mds_datae,mqtd])) and
      (ValInt(MCODECF.Text) =ValInt(STG_DS.Cells[mds_codecf,mqtd])) and
      (ValInt(MCODEMP.Text) =ValInt(STG_DS.Cells[mds_codemp,mqtd])) then
      begin
      achou:=True;
      break;
      end;
   end;
if achou then
   begin
   fMensagem('Duplicata já Selecionada. Selecione uma Válida!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
}
//mtotal:=ValFloat(VALPAG.Text);
mtotal:=ValFloat(VALPAG.Text)+ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text) -ValFloat(JUROS.Text);

mtotal:=Arredonda(mtotal,2);
mvaldev:=ValFloat(STG_DA.Cells[mColArec,mqtdd]);
mvaldev:=Arredonda(mvaldev,2);

if mtotal>mvaldev then
   begin
   fMensagem('Valor devido: '+Trim(STG_DA.Cells[mColArec,mqtdd])+' Valor pago: '+FormatFloat('##0.00',mtotal)
              +#13+'Invalido!',0,['0'],0);
   exit;
   end
else if mtotal<mvaldev then
   begin
   mens:='Valor devido: '+Trim(STG_DA.Cells[mColArec,mqtdd])+' Valor pago: '+FormatFloat('##0.00',mtotal)
              +#13+'é pagamento parcial?';

   if fmensagem(pchar(mens),0,['1','2'],2)<>mrYes then
      exit;
   mParcial:=1;

   end;

mqtd:=STG_DS.RowCount;
STG_DS.Cells[mds_nomcli,mqtd-1]:=NOMCLI.Text;
STG_DS.Cells[mds_numdup,mqtd-1]:=NUMDUP.Text;
STG_DS.Cells[mds_desd,mqtd-1]:=DESD.Text;
STG_DS.Cells[mds_tipod,mqtd-1]:=TIPOD.Text;
STG_DS.Cells[mds_valdup,mqtd-1]:=Formatfloat(mcasas,mvalor);
STG_DS.Cells[mds_valpag,mqtd-1]:=VALPAG.Text;
STG_DS.Cells[mds_desc,mqtd-1]:=FormatFloat(mcasas, ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text));
STG_DS.Cells[mds_juros,mqtd-1]:=JUROS.Text;
STG_DS.Cells[mds_codcli,mqtd-1]:=CODCLI.Text;
STG_DS.Cells[mds_datae,mqtd-1]:=mdatae;
STG_DS.Cells[mds_datap,mqtd-1]:=DATAP.Text;
STG_DS.Cells[mds_codecf,mqtd-1]:=MCODECF.Text;
STG_DS.Cells[mds_codemp,mqtd-1]:=MCODEMP.Text;
STG_DS.Cells[mds_devol,mqtd-1]:=DEVOL.Text;
STG_DS.Cells[mds_cusbco,mqtd-1]:=CUSBCO.Text;
STG_DS.Cells[mds_dtvcto,mqtd-1]:=DTVCTO.Text;
STG_DS.Cells[mds_parcial,mqtd-1]:=IntToStr(mParcial);
STG_DS.Cells[mds_codbco_dup,mqtd-1]:=FloatToStr(mCodBco_Dup);
STG_DS.Cells[mds_obs,mqtd-1]:=STG_DA.Cells[mColObs,mqtdd];

STG_DS.Cells[mds_chave_id,mqtd-1]:=STG_DA.Cells[mColchave_id,mqtdd];
STG_DS.Cells[mds_chave_id_ano,mqtd-1]:=STG_DA.Cells[mColchave_id_ano,mqtdd];



STG_DS.RowCount:=mqtd+1;
STG_DS.Rows[mqtd].Clear;
STG_DS.Rows[mqtd+1].Clear;
STG_DS.Rows[mqtd+2].Clear;
HC_DUPLIC.Sections.Items[2].Text:=FormatFloat(mcasas, faccrTotaldup(0));
//NR.Enabled:=False;
if fsonumero(NOSNUM.Text)>0 then
   CODCLI.Text:='';
fLerAtualiza(0,CODCLI.Text);

MCODEMP.Text   :='';
NUMDUP.Text    :='';
DESD.Text      :='';
TIPOD.Text     :='';
DTEMIS.Text    :='';
DTVCTO.Text    :='';
MCODECF.Text   :='';
DEVOL.Text     :='';
VALSGRU.Caption:='';
VALCGRU.Caption:='';
PDESCSGRU.Text :='';
VDESSGRU.Text  :='';
//DATAP.Text  :=FormatDateTime(fdt2, Date);
DESC.Text      :='';
JUROS.Text     :='';
CUSBCO.Text    :='';
VALPAG.Text    :='';
VALOR.Text:=FormatFloat(mcasas,ValFloat(STG_DS.Cells[mds_valpag,mqtd-1]));

if CB_FORMAPGTO.Visible then
   begin
   DM1.Qr_FP.First;
   DM1.Qr_FP.Locate('FPCODIGO',mcod_fpgto,[]);
   CB_FORMAPGTO.Text:=DM1.Qr_FPFPDESC.Value+'['+DM1.Qr_FPFPCODIGO.AsString+']';
   with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(CB_FORMAPGTO.Text);
//   VALOR.Text:=FormatFloat('#####0.00',ValFloat(VALOR.Text)+ValFloat(STG_DA.Cells[mColDtVcto,mqtd-1]);
   end
else
   begin
   DM1.Qr_FP.First;
   y:=0;
   While not DM1.Qr_FP.Eof do
      begin
      y:=y+1;
      if DM1.Qr_FPFPCODIGO.Value=valFloat(STG_DA.Cells[mColCodFpgto,mqtd]) then
         break
      else
         DM1.Qr_FP.Next;
      end;
   rg_forma.ItemIndex:=y;
   end;
NUMDUP.SetFocus;
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCR.bbRemoverClick(Sender: TObject);
var
mens: String;
mqtd: Integer;
begin
mqtd:=STG_DS.Row;
if Trim(STG_DS.Cells[mds_nomcli,mqtd])='' then
   exit;
mens:='Quer realmente excluir a duplicata: '+STG_DS.Cells[mds_numdup,mqtd]+chr(13)
     +'Cliente: '+STG_DS.Cells[mds_nomcli,mqtd];

if fmensagem(pchar(mens),0,['1','2'],2)=mryes then
   begin
   if STG_DS.RowCount=2 then
      STG_DS.Rows[1].Clear
   else
      begin
      for mqtd:=STG_DS.Row to STG_DS.RowCount do
         begin
         STG_DS.Cells[mds_nomcli,mqtd]:=STG_DS.Cells[mds_nomcli,mqtd+1];
         STG_DS.Cells[mds_numdup,mqtd]:=STG_DS.Cells[mds_numdup,mqtd+1];
         STG_DS.Cells[mds_desd,mqtd]:=STG_DS.Cells[mds_desd,mqtd+1];
         STG_DS.Cells[mds_tipod,mqtd]:=STG_DS.Cells[mds_tipod,mqtd+1];
         STG_DS.Cells[mds_valdup,mqtd]:=STG_DS.Cells[mds_valdup,mqtd+1];
         STG_DS.Cells[mds_valpag,mqtd]:=STG_DS.Cells[mds_valpag,mqtd+1];
         STG_DS.Cells[mds_desc,mqtd]:=STG_DS.Cells[mds_desc,mqtd+1];
         STG_DS.Cells[mds_juros,mqtd]:=STG_DS.Cells[mds_juros,mqtd+1];
         STG_DS.Cells[mds_codcli,mqtd]:=STG_DS.Cells[mds_codcli,mqtd+1];
         STG_DS.Cells[mds_datae,mqtd]:=STG_DS.Cells[mds_datae,mqtd+1];
         STG_DS.Cells[mds_datap,mqtd]:=STG_DS.Cells[mds_datap,mqtd+1];
         STG_DS.Cells[mds_codecf,mqtd]:=STG_DS.Cells[mds_codecf,mqtd+1];
         STG_DS.Cells[mds_codemp,mqtd]:=STG_DS.Cells[mds_codemp,mqtd+1];
         STG_DS.Cells[mds_devol,mqtd]:=STG_DS.Cells[mds_devol,mqtd+1];
         STG_DS.Cells[mds_cusbco,mqtd]:=STG_DS.Cells[mds_cusbco,mqtd+1];
         STG_DS.Cells[mds_dtvcto,mqtd]:=STG_DS.Cells[mds_dtvcto,mqtd+1];
         STG_DS.Cells[mds_parcial,mqtd]:=STG_DS.Cells[mds_parcial,mqtd+1];
         STG_DS.Cells[mds_codbco_dup,mqtd]:=STG_DS.Cells[mds_codbco_dup,mqtd+1];

         STG_DS.Cells[mds_chave_id,mqtd]:=STG_DS.Cells[mds_chave_id,mqtd+1];
         STG_DS.Cells[mds_chave_id_ano,mqtd]:=STG_DS.Cells[mds_chave_id_ano,mqtd+1];
         end;
      end;
   STG_DS.RowCount:=STG_DS.RowCount-1;
   end;
HC_DUPLIC.Sections.Items[2].Text:=FormatFloat(mcasas, faccrTotaldup(0));

if Trim(STG_DS.Cells[mds_nomcli,1])='' then
   NR.Enabled:=true
else
   NR.Enabled:=false;

fLerAtualiza(0,CODCLI.Text);
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));


end;

procedure TFrm_AcCR.rg_formaExit(Sender: TObject);
var
mvalor: Real;
mqtd: Integer;
begin
if (NUMCHQ.Focused) or (VALOR.Focused) then
   begin
   mPassouFpgto:=true;
   mvalor:=0;
   for mqtd:=1 to STG_DS.RowCount-1 do
      begin
      if Trim(STG_DS.Cells[mds_nomcli,mqtd])='' then
         continue;
      if STG_DS.Cells[mds_tipod,mqtd]='5' then
         mvalor:=mvalor-valFloat(STG_DS.Cells[mds_valpag,mqtd])
      else
         mvalor:=mvalor+valfloat(STG_DS.Cells[mds_valpag,mqtd]);
      end;
   for mqtd:=1 to STG_CHQ.RowCount-1 do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',valFloat(STG_CHQ.Cells[mchq_codfp,mqtd]),[]);
      if DM1.Qr_FPFPTIPO.Value=1 then
         mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end;
   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(copy(rg_forma.Items[rg_forma.Itemindex],1,2)),[]);
//   if DM1.Qr_FPFPTIPO.Value=1 then
//      begin
      if mvalor<0 then
         mvalor:=mvalor*-1;
//      end;

   VALOR.Text:=FormatFloat('#####0.00',mvalor);

   if DM1.Qr_FPFPCODBCO.AsFloat>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
         begin
         MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
         MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         mCodBco_Dup:=fTestaConta(mqtd);
         if (mCodBco_Dup>0) and (mCodBco_Dup<>ValFloat(MCODCAI_PAD.Text)) then
            begin
            MCODCAI.Text:=FloatToStr(mCodBco_Dup);
            if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI.Text) then
               MNOMCAI.Text:=DM1.Query1.Fields[0].AsString
            else
               MNOMCAI.Text:=MNOMCAI_PAD.Text;
            end
         else
            begin
            MCODCAI.Text:=MCODCAI_PAD.Text;
            MNOMCAI.Text:=MNOMCAI_PAD.Text;
            end;
         end;
      end
   else
      begin
      mCodBco_Dup:=fTestaConta(mqtd);
      if (mCodBco_Dup>0) and (mCodBco_Dup<>valint(MCODCAI_PAD.Text)) and (not cb_bancai.Checked) then
         begin
         MCODCAI.Text:=Floattostr(mCodBco_Dup);
         if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI.Text) then
            MNOMCAI.Text:=DM1.Query1.Fields[0].AsString
         else
            MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end
      else
         begin
         MCODCAI.Text:=MCODCAI_PAD.Text;
         MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end;
      end;
   if (DM1.Qr_FPFPNUM.Value=1) or (DM1.Qr_FPFPNUM.Value=2) then
      begin
      lbl_numchq.Enabled:=True;
      lbl_bco.Enabled:=True;
      Label5.Enabled:=True;
      Label13.Enabled:=True;
      Label10.Enabled:=True;
      Label12.Enabled:=True;
      Label7.Enabled :=True;
      Label8.Enabled :=True;
      Label9.Enabled :=True;
      Label11.Enabled:=True;
      NUMCHQ.Enabled :=True;
      BANCO.Enabled  :=True;
      SERIE.Enabled  :=True;
      AGENCIA.Enabled:=True;
      CONTA.Enabled  :=True;
      DTDEP.Enabled  :=True;
      LComp.Enabled  :=True;
      COMP.Enabled   :=True;
      EMITENTE.Enabled:=True;
      CPF.Enabled    :=True;
      RG.Enabled     :=True;
      DTNAS.Enabled  :=True;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      COMP.Text      :='';
      DTDEP.Text     :=FormatDateTime(fdt2,date);
      EMITENTE.Text  :=DM1.Tb_CliCRAZAO.Value;
      CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_CliCCPF.Value);
      RG.Text        :=DM1.Tb_CliCRG.Value;
      if Not conta.Focused then
         NUMCHQ.SetFocus;
      end
   else
      begin
      lbl_numchq.Enabled:=False;
      lbl_bco.Enabled:=False;
      Label5.Enabled:=False;
      Label13.Enabled:=False;
      Label10.Enabled:=False;
      Label12.Enabled:=False;
      Label7.Enabled :=False;
      Label8.Enabled :=False;
      Label9.Enabled :=False;
      Label11.Enabled:=False;
      NUMCHQ.Enabled :=False;
      BANCO.Enabled  :=False;
      SERIE.Enabled  :=False;
      AGENCIA.Enabled:=False;
      CONTA.Enabled  :=False;
      DTDEP.Enabled  :=False;
      EMITENTE.Enabled:=False;
      CPF.Enabled    :=False;
      RG.Enabled     :=False;
      DTNAS.Enabled  :=False;
      LComp.Enabled  :=False;
      Comp.Enabled   :=False;


      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :='';
      EMITENTE.Text  :='';
      CPF.Text       :='';
      RG.Text        :='';
      DTNAS.Text     :='';
      COMP.Text      :='';
      VALOR.SetFocus;
      end;
   end;
{
BAIXA PARCIAL DE NOTA DE CREDITO
if DM1.Qr_FPFPVINCULO.AsInteger=7 then
  VALOR.ReadOnly:=True
else
  VALOR.ReadOnly:=False;   }
end;

procedure TFrm_AcCR.bbRemover_chqClick(Sender: TObject);
var
mens: String;
mqtd: Integer;
begin

mqtd:=STG_CHQ.Row;
if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
   exit;
mens:='Quer realmente excluir a a forma de pagamento: '+STG_CHQ.Cells[mchq_nomfp,mqtd]+chr(13)
     +' Valor: '+STG_CHQ.Cells[mchq_valor,mqtd];

if fmensagem(pchar(mens),0,['1','2'],2)=mryes then
   begin
   if STG_CHQ.RowCount=2 then
      STG_CHQ.Rows[1].Clear
   else
      begin
      for mqtd:=STG_CHQ.Row to STG_CHQ.RowCount do
         begin
         STG_CHQ.Cells[mchq_nomfp,mqtd]:=STG_CHQ.Cells[mchq_nomfp,mqtd+1];
         STG_CHQ.Cells[mchq_numchq,mqtd]:=STG_CHQ.Cells[mchq_numchq,mqtd+1];
         STG_CHQ.Cells[mchq_banco,mqtd]:=STG_CHQ.Cells[mchq_banco,mqtd+1];
         STG_CHQ.Cells[mchq_serie,mqtd]:=STG_CHQ.Cells[mchq_serie,mqtd+1];
         STG_CHQ.Cells[mchq_agencia,mqtd]:=STG_CHQ.Cells[mchq_agencia,mqtd+1];
         STG_CHQ.Cells[mchq_emitente,mqtd]:=STG_CHQ.Cells[mchq_emitente,mqtd+1];
         STG_CHQ.Cells[mchq_valor,mqtd]:=STG_CHQ.Cells[mchq_valor,mqtd+1];
         STG_CHQ.Cells[mchq_cpf,mqtd]:=STG_CHQ.Cells[mchq_cpf,mqtd+1];
         STG_CHQ.Cells[mchq_rg,mqtd]:=STG_CHQ.Cells[mchq_rg,mqtd+1];
         STG_CHQ.Cells[mchq_conta,mqtd]:=STG_CHQ.Cells[mchq_conta,mqtd+1];
         STG_CHQ.Cells[mchq_dtnas,mqtd]:=STG_CHQ.Cells[mchq_dtnas,mqtd+1];
         STG_CHQ.Cells[mchq_codcli,mqtd]:=STG_CHQ.Cells[mchq_codcli,mqtd+1];
         STG_CHQ.Cells[mchq_databx,mqtd]:=STG_CHQ.Cells[mchq_databx,mqtd+1];
         STG_CHQ.Cells[mchq_dtdep,mqtd]:=STG_CHQ.Cells[mchq_dtdep,mqtd+1];
         STG_CHQ.Cells[mchq_codfp,mqtd]:=STG_CHQ.Cells[mchq_codfp,mqtd+1];
         STG_CHQ.Cells[mchq_datacx,mqtd]:=STG_CHQ.Cells[mchq_datacx,mqtd+1];
         STG_CHQ.Cells[mchq_comp,mqtd]:=STG_CHQ.Cells[mchq_comp,mqtd+1];
         STG_CHQ.Cells[mchq_dev_codemp,mqtd]:=STG_CHQ.Cells[mchq_dev_codemp,mqtd+1];
         STG_CHQ.Cells[mchq_dev_codecf,mqtd]:=STG_CHQ.Cells[mchq_dev_codecf,mqtd+1];
         STG_CHQ.Cells[mchq_dev_desd,mqtd]:=STG_CHQ.Cells[mchq_dev_desd,mqtd+1];
         STG_CHQ.Cells[mchq_dev_dtemis,mqtd]:=STG_CHQ.Cells[mchq_dev_dtemis,mqtd+1];
         STG_CHQ.Cells[mchq_dev_dup,mqtd]:=STG_CHQ.Cells[mchq_dev_dup,mqtd+1];
         STG_CHQ.Cells[mchq_codcai,mqtd]:=STG_CHQ.Cells[mchq_codcai,mqtd+1];
         STG_CHQ.Cells[mchq_nomcai,mqtd]:=STG_CHQ.Cells[mchq_nomcai,mqtd+1];

         STG_CHQ.Cells[mchq_dev_chave_id,mqtd]:=STG_CHQ.Cells[mchq_dev_chave_id,mqtd+1];
         STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd]:=STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd+1];


         end;
      end;
   STG_CHQ.RowCount:=STG_CHQ.RowCount-1;
   end;
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCR.bbBaixarClick(Sender: TObject);
var
mqtd,mqtdchq: Integer;
mtotdup, mtotpag: Real;
mvaldev,mtotdev,mcodldr, mseq: Real;
mdup: String;
mExisteEmAberto: Boolean;
Query_AtuPed: tQuery;
query_dup: tQuery;
mDados_fpcrdup: TDados_fpcrdup;
   function fVerificaParcial(pIndex,pChaveId_Ano,pChaveId,pCodEmp: Integer): boolean;
   var
   mDesdNovo: String;
   mChaveid_ano_nova: integer;
   mChaveId_nova: Integer;
   begin
   if valint(STG_DS.Cells[mds_parcial,pIndex])=1 then
      begin
      if fDesmembrarTitulo(pChaveId_ano,pChaveId,pCodEmp
                                  ,valfloat(STG_DS.Cells[mds_valpag,pindex])
                                  ,mDesdNovo
                                  ,mChaveid_Ano_nova,mChaveid_nova) then

           begin
           STG_DS.Cells[mds_chave_id,pIndex]       :=IntToStr(mChaveId_nova);
           STG_DS.Cells[mds_chave_id_ano,pIndex]   :=IntToStr(mChaveId_Ano_nova);
           STG_DS.Cells[mds_desd,pIndex]           :=mDesdNovo;
           STG_DS.Cells[mds_parcial,pIndex]        :='0';
           end;
      end;

   end;
begin
{
if NUMCHQ.Enabled then
   begin
   if ValFloat(NUMCHQ.Text)<=0 then
      begin
      fMensagem('Numero do Cheque Campo Obrigatorio!',0,['0'],0);
      NUMCHQ.SetFocus;
      exit;
      end;
   if ValInt(BANCO.Text)<=0 then
      begin
      fMensagem('Código do Banco Campo Obrigatório!',0,['0'],0);
      BANCO.SetFocus;
      exit;
      end;
   end;
}
mtotdup:=0;
mtotpag:=0;
mtotdev:=0;
if Trim(STG_DS.Cells[mds_nomcli,01])='' then
   begin
   fMensagem('Não ha Duplicatas Selecionada para Baixa!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
for mqtd:=1 to STG_DS.RowCount do
   begin
   if STG_DS.Cells[mds_tipod,mqtd]='5' then
      mtotdup:=mtotdup+ValFloat(STG_DS.Cells[mds_valpag,mqtd])
   else
      mtotdup:=mtotdup+ValFloat(STG_DS.Cells[mds_valpag,mqtd]);
   end;

for mqtd:=1 to STG_CHQ.RowCount do
   begin
   DM1.Qr_Fp.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_codfp,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      begin
      if DM1.Qr_FPFPVINCULO.Value=7 then
         mtotdev:=mtotdev-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mtotpag:=mtotpag-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end
   else
      begin
      if DM1.Qr_FPFPVINCULO.Value=7 then
         mtotdev:=mtotdev+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mtotpag:=mtotpag+Valfloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end;

   end;
mtotpag:=Arredonda(mtotpag,2);
mtotdev:=Arredonda(mtotdev,2);
mtotdup:=Arredonda(mtotdup,2);

if mtotdup<> Arredonda( (mtotpag+mtotdev), 2) then
   begin
   fmensagem('Total da(s) Duplicata(s).. '+FormatFloat(mcasas,mtotdup)+#13
              +'Total do(s) Pagamento(s).. '+FormatFloat(mcasas,(mtotpag+mtotdev))+#13
              +'Favor Corrigir!',0,['0'],0);
   abort;
   end;

if fmensagem('Confirma a Baixa da(s) Duplicata(s) Acima?',0,['1','2'],0)=mrYes then
   begin
// inicio dos teste

   for mqtd:=1 to STG_DS.RowCount DO
      begin
      if (STG_DS.Cells[mds_nomcli,mqtd])='' then
         continue;

         if not fLerContas(Query_Dup,valint(STG_DS.cells[mds_chave_id_ano,mqtd]), valint(STG_DS.cells[mds_chave_Id,mqtd])) then
{
         if not fLerContas(query_dup,valint(STG_DS.Cells[mds_codemp,mqtd])
                          ,STG_DS.Cells[mds_codecf,mqtd]
                          ,trim(STG_DS.Cells[mds_tipod,mqtd])
                          ,fsonumero(STG_DS.cells[mds_codcli,mqtd])
                          ,fsonumero(STG_DS.Cells[mds_numdup,mqtd])
                          ,STG_DS.Cells[mds_desd,mqtd]
                          ,StrToDate(STG_DS.Cells[mds_datae,mqtd])
                          ) then
}

         begin
         fMensagem('No Decorrer da Baixa foi Excluido um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
         exit;
         end
      else
         begin
         if (query_dup.fieldbyname('CRSTATUS').AsInteger=8) or (Arredonda(query_dup.fieldbyname('CRVALOR').Asfloat,2)<>Arredonda(valfloat(STG_DS.cells[mds_valdup,mqtd]),2)) then
            begin
            if query_dup.RecordCount=1 then
               begin
               fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_desd,mqtd])+#13

                   +'Valor Dup: '+query_dup.fieldbyname('CRVALOR').AsString+#13
                   +'Valor Dup: '+trim(STG_DS.Cells[mds_valdup,mqtd])+#13

                   +'Baixa não Concluida!',0,['0'],0);
               exit;

               end
            else
               begin
               mExisteEmAberto:=false;
               While not query_dup.Eof do
                  begin
                  if (Arredonda(query_dup.fieldbyname('CRVALOR').AsFloat,2)=Arredonda(valfloat(STG_DS.Cells[mds_valdup,mqtd]),2))
                     and (query_dup.fieldbyname('CRSTATUS').AsInteger<>8) then
                     begin
                     mExisteEmAberto:=true;
                     break;

                     end
                  else
                     begin
                     query_dup.Next;
                     Continue;
                     end;
                  end;
               end;

            if not mExisteEmAberto then
               begin
               fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
               exit;
               end;
            end;

         if Arredonda( (
                         query_dup.fieldbyname('CRVALPAG').AsFloat+ValFloat(STG_DS.Cells[mds_valpag,mqtd])
                        +query_dup.fieldbyname('CRDESC').AsFloat+ValFloat(STG_DS.Cells[mds_desc,mqtd])
                        +query_dup.fieldbyname('CRDEVOL').AsFloat
                        -(query_dup.fieldbyname('CRJUROS').AsFloat+ValFloat(STG_DS.Cells[mds_juros,mqtd]))
                        ),2)>Arredonda(query_dup.fieldbyname('CRVALOR').AsFloat,2) then
            begin
            fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
            exit;
            end;
         end;
      end;

// termino dos testes




// inicio das devoluçoes

   for mqtd:=1 to STG_CHQ.RowCount DO
      begin
      if (STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      if fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtd])=0 then
         continue;
{

         STG_CHQ.Cells[mchq_dev_chave_id,mqtd]:=STG_CHQ.Cells[mchq_dev_chave_id,mqtd+1];
         STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd]:=STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd+1];


      if not fLerContas(query_dup,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtd])
                       ,STG_CHQ.Cells[mchq_dev_codecf,mqtd]      // codecf
                       ,STG_CHQ.Cells[mchq_dev_dup,mqtd] //:=FloatToStr(mDev_Dup
                       ,fsonumero(STG_DS.cells[mds_codcli,mqtd])

                       ,fsonumero(STG_CHQ.Cells[mchq_numchq,mqtd]) // crnumero
                       ,STG_CHQ.Cells[mchq_dev_desd,mqtd] // mDev_Desd;
                       ,StrTodate( STG_CHQ.Cells[mchq_dev_dtemis,mqtd] )
                       ) then
 }
//function TFrm_AcCR.fLerContas(pQuery_Dup: tQuery; pCodEmp: Integer; pCodecf,pDup: String; pNumero: real; pDesd: String; pDtemis: tDateTime): boolean;

{

        pQuery_Dup: tQuery; pCodecf,pDup: String; pNumero: real; pDesd: String; pDtemis: tDateTime): boolean;

         lindomar
         
      if not flcaddar(8,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtd]), //] mdev_codemp,
                       0, // ppre
                      valint(STG_CHQ.Cells[mchq_dev_codecf,mqtd]), //mDev_Codecf
                      0,
                      STG_CHQ.Cells[mchq_numchq,mqtd], // :=NUMCHQ.Text;
                      STG_CHQ.Cells[mchq_dev_desd,mqtd], // mDev_Desd;
                      STG_CHQ.Cells[mchq_dev_dup,mqtd], //:=FloatToStr(mDev_Dup
                      StrTodate(STG_CHQ.Cells[mchq_dev_dtemis,mqtd]),'') then  //  mDev_Dtemis
 }



      if not fLerContas(query_dup,valint(STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd]),valint(STG_CHQ.Cells[mchq_dev_chave_id,mqtd])) then


         begin
         fMensagem('No Decorrer da Baixa foi Excluido um titulo de Devolução .'+#13
                   +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
         exit;
         end
      else
         begin
         if query_dup.fieldbyname('CRSTATUS').AsFloat=8 then
            begin
            fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                      +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
            exit;
            end;
         if Arredonda( (
                         query_dup.fieldbyname('CRVALPAG').AsFloat+
                         valfloat(STG_CHQ.Cells[mchq_valor,mqtd])
                        -(query_dup.fieldbyname('CRJUROS').AsFloat+query_dup.fieldbyname('CRDESC').AsFloat)
                        ),2)>Arredonda(query_dup.fieldbyname('CRVALOR').AsFloat,2) then
            begin
            fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                      +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
            exit;
            end;
         end;
      end;

// testa devoluções


   mdup:='';
   mloteBx:=fbuscaLoteBaixaCR(0);
   for mqtd:=1 to STG_DS.RowCount DO
      begin
      if (STG_DS.Cells[mds_nomcli,mqtd])='' then
         continue;

      fVerificaParcial(mqtd,valint(STG_DS.Cells[mds_chave_id_ano,mqtd])
                      ,valint(STG_DS.Cells[mds_chave_id,mqtd])
                      ,valint(STG_DS.Cells[mds_codemp,mqtd]));


{
      if fLerContas(query_dup,valint(STG_DS.Cells[mds_codemp,mqtd]) //01
                       ,STG_DS.Cells[mds_codecf,mqtd]      // codecf 02
                       ,STG_DS.Cells[mds_tipod,mqtd] //:=FloatToStr(mDev_Dup 03
                        ,fsonumero(STG_DS.cells[mds_codcli,mqtd])
                       ,fsonumero(STG_DS.Cells[mds_numdup,mqtd]) // crnumero   04
                       ,STG_DS.Cells[mds_desd,mqtd] // mDev_Desd;  5
                       ,StrTodate( STG_DS.Cells[mds_datae,mqtd] )            // 6
                       ) then
}
      if fLerContas(query_dup,valint(STG_DS.Cells[mds_chave_id_ano,mqtd]),valint(STG_DS.Cells[mds_chave_id,mqtd])) then

         begin
         mDadosDup.pRECFRENTE:=0;
         mDadosDup.pnumero   :=query_dup.fieldbyname('CRNUMERO').AsFloat;
         mDadosDup.pdesd     :=query_dup.fieldbyname('CRDESD').AsString;
         mDadosDup.pdup      :=query_dup.fieldbyname('CRDUP').AsInteger;
         mDadosDup.pdtemis   :=query_dup.fieldbyname('CRDTEMIS').AsDatetime;
         mDadosDup.pnped     :=query_dup.fieldbyname('CRNPED').AsFloat;
         mDadosDup.pcodecf   :=query_dup.fieldbyname('CRCODECF').AsFLOAT;
         mDadosDup.pChaveId   :=query_dup.fieldbyname('CRCHAVE_ID').AsFLOAT;
         mDadosDup.pChaveIdAno   :=query_dup.fieldbyname('CRCHAVE_ID_ANO').AsFLOAT;

//  pChaveId: real;
//  pChaveIdAno: real;

         if DM4.Tb_Par01PCXAUTO.AsInteger<>1 then
            begin


            mdesc_mov:=pldr_descmov;
            mcodccu  :=pldr_codccu;
            mcoddep  :=pldr_coddep;
            mnatdc   :=pldr_natdc;
            mnomccu  :=pldr_nomccu;
            mnomdep  :=pldr_nomdep;


            if DM1.Tb_CliCCODCLI.AsFloat<>query_dup.fieldbyname('CRCODCLI').AsFloat then
               flcadcli(1,0,query_dup.fieldbyname('CRCODCLI').AsString);
            if query_dup.fieldbyname('CRDUP').AsInteger=5 then
               begin
               if query_dup.fieldbyname('CRNPED').AsFloat>0 then
                  fTestarParCaixaCliDar(query_dup,1,1,'CADDARD')
               else
                  fTestarParCaixaCliDar(query_dup,1,1,'CADDARN');
               end
            else
               fTestarParCaixaCliDar(query_dup,0,0,'CADDAR0');
            end;

         if mtotdev>0 then
            begin
            if Arredonda( ValFloat(STG_DS.Cells[mds_valpag,mqtd]) , DM1.Tb_PargerPCASAS.AsInteger)
               <Arredonda(mtotdev, DM1.Tb_PargerPCASAS.AsInteger) then
               begin
               mvaldev:=ValFloat(STG_DS.Cells[mds_valpag,mqtd]);
               mtotdev:=mtotdev-mvaldev;
               end
            else
               begin
               mvaldev:=mtotdev;
               mtotdev:=0;
               end;
            mDadosDup.pvalpago:=(ValFloat(STG_DS.Cells[mds_valpag,mqtd])-mvaldev);
            mDadosDup.pJUROS  :=ValFloat(STG_DS.Cells[mds_juros,mqtd]);
            mDadosDup.pDEVOL  :=mvaldev;
            mDadosDup.pDESC   :=ValFloat(STG_DS.Cells[mds_desc,mqtd]);
            end
         else
            begin
            mDadosDup.pvalpago:=ValFloat(STG_DS.Cells[mds_valpag,mqtd]);
            mDadosDup.pJUROS  :=ValFloat(STG_DS.Cells[mds_juros,mqtd]);
            mDadosDup.pDESC   :=ValFloat(STG_DS.Cells[mds_desc,mqtd]);
            mDadosDup.pDEVOL  :=0;
            end;

         mDadosDup.pCUSBCO   :=ValFloat(STG_DS.Cells[mds_cusbco,mqtd]);

         mDadosDup.pCODCTA   :=ValFloat(STG_CHQ.Cells[mchq_codcai,01]);
         mDadosDup.pNOMCTA   :=STG_CHQ.Cells[mchq_nomcai,01];
         mDadosDup.pNOMCC    :=mnomccu;
         mDadosDup.pCODCC    :=mcodccu;
         mDadosDup.pNATDC    :=mnatdc;
         mDadosDup.pNOMDEP   :=mnomdep;
         mDadosDup.pCODDEP   :=mcoddep;




         mDadosDup.pDTBX      :=StrToDate(DATABX.Text);
         mDadosDup.pUSRBX     :=codusr;
         mDadosDup.pLOTSEQ_LB :=ls_lotbcr;
         mDadosDup.pLOTE      :=mloteBx;
         mDadosDup.pNR        :=ValFloat(NR.Text);
         mDadosDup.pDTPAG     :=StrToDate(STG_DS.Cells[mds_datap,mqtd]);
         if mdup='' then
            begin
{            if DM1.Tb_PargerPCRDOC.AsInteger=1 then
               mdup:=FormatFloat('000000',mDadosDup.pNPED)
            else
}
               mdup:=FormatFloat('000000',mDadosDup.pNUMERO);
            end
         else if mqtd<3 then
            begin
 {           if DM1.Tb_PargerPCRDOC.AsInteger=1 then
               mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',mDadosDup.pNPED),4,3)
            else
}
               mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',mDadosDup.pNUMERO),4,3);
            end
         else
            begin
{            if DM1.Tb_PargerPCRDOC.AsInteger=1 then
               mdup:=mdup+'/'+copy(FormatFloat('000000',mDadosDup.pNPED),4,3)
            else
}
               mdup:=mdup+'/'+copy(FormatFloat('000000',mDadosDup.pNUMERO),4,3);
            end;

         if Arredonda(((query_dup.fieldbyname('CRVALPAG').AsFloat+query_dup.fieldbyname('CRDESC').AsFloat+query_dup.fieldbyname('CRDEVOL').AsFloat)
           -query_dup.fieldbyname('CRJUROS').AsFloat),2)
           + ( (mDadosDup.pvalpago+mDadosDup.pDESC+mDadosDup.pDEVOL) - mDadosDup.pJUROS)
           >=Arredonda(query_dup.fieldbyname('CRVALOR').AsFloat,2) then
            begin
            mDadosDup.pSTATUS:=2;
            if query_dup.fieldbyname('CRCODLDR').AsFloat>0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQl.Add('Delete from CADLDR ');
               if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                  begin
                  DM1.Query1.Sql.add(' where LOTSEQ=0'+query_dup.fieldbyname('CRLOTSEQ_FC').AsString
                                    +' and   CODLDR=0'+query_dup.fieldbyname('CRCODLDR').AsString);
                  end
               else
                  begin
                  DM1.Query1.Sql.add(' where CODEMP=0'+query_dup.fieldbyname('CRCODEMP').AsString
                                    +' and LOTSEQ=0'+query_dup.fieldbyname('CRLOTSEQ_FC').AsString
                                    +' and CODLDR=0'+query_dup.fieldbyname('CRCODLDR').AsString);
                  end;
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  fMensagem('Erro 705 ao Excluir Conta Prevista!',0,['0'],0);
                  end;
               end;
            mDadosDup.pcodldr:=0;
            end
         else
            begin
            mDadosDup.pstatus:=1;
            if query_dup.fieldbyname('CRCODLDR').AsFloat>0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
//               DM1.Query1.SQl.Add('Update CADLDR set VALORR=VALORR+'+mudavp(FloatTostr(query_dup.fieldbyname('CRVALOR').asfloat-query_dup.fieldbyname('CRVALPAG').asfloat))
//                                 +' ,VALORP=VALORP-'+mudavp(FloatTostr(query_dup.fieldbyname('CRVALOR').asfloat-query_dup.fieldbyname('CRVALPAG').asfloat)));

               DM1.Query1.SQl.Add('Update CADLDR set VALORR=0'
                                 +' ,VALORP='+mudavp(FloatTostr(query_dup.fieldbyname('CRVALOR').asfloat-mDadosDup.pvalpago)));

               if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                  begin
                  DM1.Query1.Sql.add(' where LOTSEQ=0'+query_dup.fieldbyname('CRLOTSEQ_FC').AsString
                                    +' and   CODLDR=0'+query_dup.fieldbyname('CRCODLDR').AsString)
                  end
               else
                  begin
                  DM1.Query1.Sql.add(' where CODEMP=0'+query_dup.fieldbyname('CRCODEMP').AsString
                                    +' and LOTSEQ=0'+query_dup.fieldbyname('CRLOTSEQ_FC').AsString
                                    +' and CODLDR=0'+query_dup.fieldbyname('CRCODLDR').AsString);
                  end;
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  fMensagem('Erro 705 ao Excluir Conta Prevista!',0,['0'],0);
                  end;
               end;
            end;


         fAtualizarDup(mDadosDup);
         end
      else
         begin
         fMensagem('Ha erros duplicata nao encontrada: '+STG_DS.Cells[mds_numdup,mqtd]+'!',0,['0'],0);
         Continue;
         end;
      mcodven:=query_dup.fieldbyname('CRCODVEN').AsFloat;
      if (FsoNumero(STG_CHQ.Cells[mchq_codcai,01])>0) and (query_dup.fieldbyname('CRNPED').AsFloat>0) then
         begin
         Query_AtuPed:=tQuery.Create(nil);
         Query_AtuPed.DatabaseName:='SG_ASSOC';
         Query_AtuPed.Close;
         Query_AtuPed.SQL.Clear;
         Query_AtuPed.SQL.Add('Update CADP01 set P1CX_CODCAI=:CODCAI '
                             +' where P1CODEMP=:CODEMP '
                             +' and P1CHAVE=:CHAVE '
                             +' and P1ORDEM=:ORDEM '
                             +' and P1LOTSEQ=:LOTSEQ '
                             +' and P1CX_CODCAI<>:CODCAI ');
         Query_AtuPed.ParamByName('CODCAI').asfloat:=FsoNumero(STG_CHQ.Cells[mchq_codcai,01]);
         Query_AtuPed.ParamByName('CODEMP').asfloat:=query_dup.fieldbyname('CRCODEMP').AsInteger;
         Query_AtuPed.ParamByName('CHAVE').asfloat :=query_dup.fieldbyname('CRNPED').AsFloat;
         Query_AtuPed.ParamByName('ORDEM').asfloat :=query_dup.fieldbyname('CRORDEM').AsInteger;
         Query_AtuPed.ParamByName('LOTSEQ').asfloat:=query_dup.fieldbyname('CRLOTSEQ_CP').AsInteger;
         try
            Query_AtuPed.ExecSQL;
            fdm1StartCommit;
         except
            end;
         FreeAndNil(Query_AtuPed);
         end;



      mDados_fpcrdup.pcodemp    :=codemp;
      mDados_fpcrdup.pLote      :=trunc(mlotebx);
      mDados_fpcrdup.pnr        :=fsonumero(NR.Text);
      mDados_fpcrdup.pdup_codemp:=valint(STG_DS.Cells[mds_codemp,mqtd]);
      mDados_fpcrdup.pnumero    :=FsoNumero(STG_DS.Cells[mds_numdup,mqtd]);
      mDados_fpcrdup.ptipo      :=valint(STG_DS.Cells[mds_tipod,mqtd]);
      mDados_fpcrdup.pcodecf    :=valint(STG_DS.Cells[mds_codecf,mqtd]);
      mDados_fpcrdup.pcodcli    :=Fsonumero(STG_DS.Cells[mds_codcli,mqtd]);
      mDados_fpcrdup.pCodVen    :=query_dup.fieldbyname('CRCODVEN').AsInteger;
      mDados_fpcrdup.pcaixa     :=valint(STG_CHQ.Cells[mchq_codcai,01]);
      mDados_fpcrdup.pcodusr    :=codusr;
      mDados_fpcrdup.pvalor     :=(valfloat(STG_DS.Cells[mds_valpag,mqtd])-mvaldev);
      mDados_fpcrdup.pjuros     :=ValFloat(STG_DS.Cells[mds_juros,mqtd]);
      mDados_fpcrdup.pdesc      :=ValFloat(STG_DS.Cells[mds_desc,mqtd]);
      mDados_fpcrdup.pVlrSt     :=query_dup.fieldbyname('CRICMSR').asfloat;
      mDados_fpcrdup.pVlrIPI    :=query_dup.fieldbyname('CRTOTIPI').asfloat;
      mDados_fpcrdup.pValDup    :=query_dup.fieldbyname('CRVALOR').asfloat;
      mDados_fpcrdup.pDevol     :=mvaldev;
      mDados_fpcrdup.pParcial   :=ValFloat(STG_DS.Cells[mds_parcial,mqtd]);
      mDados_fpcrdup.pdtemis    :=StrTodate(STG_DS.Cells[mds_datae,mqtd]);
      mDados_fpcrdup.pdtBx      :=StrToDate(DATABX.Text);
      mDados_fpcrdup.pDtPag     :=StrTodate(STG_DS.Cells[mds_datap,mqtd]);
      mDados_fpcrdup.pDtVcto    :=query_dup.fieldbyname('CRDTVCTO').AsDateTime;
      mDados_fpcrdup.pdesd      :=STG_DS.Cells[mds_desd,mqtd];
      mDados_fpcrdup.pchave_id  :=query_dup.fieldbyname('CRCHAVE_ID').AsInteger;
      mDados_fpcrdup.pchave_id_ano  :=query_dup.fieldbyname('CRCHAVE_ID_ANO').AsInteger;
      fCriarFPCRDUP(mDados_fpcrdup);

{
         lindomar
      fCriarFPCRDUP(codemp,mloteBx,
                    fsonumero(NR.Text), // numero da nr
                    valint(STG_DS.Cells[mds_codemp,mqtd]), // codigo da empresa da duplicata
                    FsoNumero(STG_DS.Cells[mds_numdup,mqtd]), // numero duplicata
                    fsonumero(STG_DS.Cells[mds_tipod,mqtd]), // tipo duplicata
                    valint(STG_DS.Cells[mds_codecf,mqtd]),    // codigo do ecf
                    Fsonumero(STG_DS.Cells[mds_codcli,mqtd]), // Codigo Cliente
                    query_dup.fieldbyname('CRCODVEN').AsInteger, // Codigo do Vendedor
                    FsoNumero(STG_CHQ.Cells[mchq_codcai,01]), // Codigo do Banco/Caixa
                    codusr,
                    (valfloat(STG_DS.Cells[mds_valpag,mqtd])-mvaldev), // valor recebidot
                    ValFloat(STG_DS.Cells[mds_juros,mqtd]), // juros
                    ValFloat(STG_DS.Cells[mds_desc,mqtd]), // desconto
                    query_dup.fieldbyname('CRICMSR').asfloat,
                    query_dup.fieldbyname('CRTOTIPI').asfloat,
                    query_dup.fieldbyname('CRVALOR').asfloat,
                    mvaldev,
                    ValFloat(STG_DS.Cells[mds_parcial,mqtd]), // Valor Parcial 0-Nao 1-Sim
                    StrTodate(STG_DS.Cells[mds_datae,mqtd]), // Data Emissao
                    StrToDate(DATABX.Text), // data da baixa
                    StrTodate(STG_DS.Cells[mds_datap,mqtd]), // Data de Pagamento
                    query_dup.fieldbyname('CRDTVCTO').asfloat,
                    STG_DS.Cells[mds_desd,mqtd]); // desdobramento
}
      end;

   flcadcli(1,0,STG_DS.Cells[mds_codcli,1]);

   // formas de pgto
   for mqtdchq:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtdchq])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_codfp,mqtdchq]),[]);
//      if DM1.Qr_FPFPVINCULO.AsInteger=19 then
//         fCreditaNC(mqtdchq);

      flcaddar(8,valint(STG_DS.Cells[mds_codemp,1]),0,ValInt(STG_DS.Cells[mds_codecf,1]),0
                      ,trim(STG_DS.Cells[mds_numdup,1]),STG_DS.Cells[mds_desd,1]
                      ,trim(STG_DS.Cells[mds_tipod,1]),StrToDate(STG_DS.Cells[mds_datae,1]),'' );

      if DM1.Qr_FPFPTIPO.asfloat=1 then
         fTestarParCaixaCliDar(query_dup,1,1,'CADDART')
      else
         fTestarParCaixaCliDar(query_dup,0,0,'CADDAR0');


      if length(mdup)>12 then
         mdup:=copy(mdup,1,12);
      if DM1.Qr_FPFPVINCULO.AsInteger=19 then
        mcodldr:=fCreditaNC(mqtdchq)
//         mcodldr:=0
      else if (DM1.Qr_FPFPVINCULO.AsInteger=7)
            and flcaddar(8,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq])//codemp
                        ,0, // ppre
                        valint(STG_CHQ.Cells[mchq_dev_codecf,mqtdchq]), // codecf
                        0,
                        STG_CHQ.Cells[mchq_numchq,mqtdchq], // numero
                        STG_CHQ.Cells[mchq_dev_desd,mqtdchq], // desd
                        STG_CHQ.Cells[mchq_dev_dup,mqtdchq], // dup
                        StrtoDAte(STG_CHQ.Cells[mchq_dev_dtemis,mqtdchq]),'')then
        begin

        {DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add(' DELETE FROM CADLDR WHERE CODLDR='+query_dup.fieldbyname('CRCODLDR.AsString);
        DM1.Query1.SQL.Add(' AND CODEMP='+query_dup.fieldbyname('CRCODEMP.AsString);
        DM1.Query1.Execsql;}
        mcodldr:=fCriarLDR(codemp
                  ,ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]) // Valor previsto
                  ,ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]) // Valor Real
                  ,valFloat(STG_DS.Cells[mds_codcli,1])        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.asfloat
                  ,StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]) // data prevista
                  ,StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]) // data real
                  ,StrtoDate(STG_DS.Cells[mds_datae,1]) // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,DM1.Tb_PargerPCRDOCSIG.AsString+mdup
                  ,DM1.Qr_FPFPDESC.AsString
                  ,'CL'
                  ,STG_CHQ.Cells[mchq_nomcai,mqtdchq] // data real ,pldr_nombco
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,'PAGAMENTO DA NC'+query_dup.fieldbyname('CRNUMERO').AsString+query_dup.fieldbyname('CRDESD').AsString       // OBSERVACOES CADDAR
                  ,iif(mvenda,3,4)
                  ,valint(STG_CHQ.Cells[mchq_codcai,mqtdchq]) // ,codcai
                  ,lotmov
                  ,0 // status
                  ,03); // origem
        end
      else
         begin
         mcodldr:=fCriarLDR(codemp
                  ,ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]) // Valor previsto
                  ,ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]) // Valor Real
                  ,valFloat(STG_DS.Cells[mds_codcli,1])        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.asfloat
                  ,StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]) // data prevista
                  ,StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]) // data real
                  ,StrtoDate(STG_DS.Cells[mds_datae,1]) // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,DM1.Tb_PargerPCRDOCSIG.AsString+mdup
                  ,DM1.Qr_FPFPDESC.AsString
                  ,'CL'
                  ,STG_CHQ.Cells[mchq_nomcai,mqtdchq] // data real ,pldr_nombco
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,STG_DS.Cells[mds_obs,1]        // OBSERVACOES CADDAR
                  ,iif(mvenda,3,4)
                  ,valint(STG_CHQ.Cells[mchq_codcai,mqtdchq]) // ,codcai
                  ,lotmov
                  ,0 // status
                  ,03); // origem
         end;
      if (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])='/  /') or
         (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])='')  then
         mcinst:=FormatDateTime(fdt2, pdatanula)
      else
         mcinst:=STG_CHQ.Cells[mchq_dtdep,mqtdchq];

      if fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq])=0 then
         mDev_Codecf:=0
      else
         mDev_Codecf:=fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq]);
      mseq:=fCriarFPCR(codemp,fsonumero(STG_CHQ.Cells[mchq_codfp,mqtdchq]), // forma
                       fsonumero(STG_CHQ.Cells[mchq_numchq,mqtdchq]), // numero
                       FSonumero(STG_CHQ.Cells[mchq_banco,mqtdchq]), // Banco
                       ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]), // Valor
                       0, // Tipo
                       ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]), //  codcai,
                       mcodldr,
                       mloteBx,
                       DM1.Qr_FPFPVINCULO.asfloat,
                       DM1.Qr_FPFPTIPO.asfloat,
                       fsonumero(NR.Text),
                       fsonumero(STG_CHQ.Cells[mchq_codcli,mqtdchq]),
                       fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq]),      // codemp
                       fsonumero(STG_CHQ.Cells[mchq_dev_codecf,mqtdchq]),  // codecf
                       fsonumero(STG_CHQ.Cells[mchq_numchq,mqtdchq]), // numero da duplicata
                       fsonumero(STG_CHQ.Cells[mchq_dev_dup,mqtdchq]),  // dup/tipo
//                       StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]), // data da baixa
                       StrToDate(DATABX.Text), // data da baixa
                       StrtoDate(mcinst), // data deposito
                       StrToDate(STG_CHQ.Cells[mchq_dev_dtemis,mqtdchq]), // date de em,issao
                       STG_CHQ.Cells[mchq_conta,mqtdchq], // conta corrente
                       STG_CHQ.Cells[mchq_serie,mqtdchq] // serie
                       ,STG_CHQ.Cells[mchq_dev_desd,mqtdchq] // desdobramento
                       ,0
                       ,0
                        ); // serie



     if (DM1.Qr_FPFPNUM.asfloat=1) and ((DM1.Qr_FPFPVINCULO.AsInteger=1)
          or (DM1.Qr_FPFPVINCULO.AsInteger=2) or (DM1.Qr_FPFPVINCULO.AsInteger=14) ) then
         begin
         if (Trim(STG_CHQ.Cells[mchq_dtnas,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtnas,mqtdchq])<>'/  /') then
            STG_CHQ.Cells[mchq_dtnas,mqtdchq]:=FormatDatetime(fdt2, StrtoDate(STG_CHQ.Cells[mchq_dtnas,mqtdchq]))
         else
            STG_CHQ.Cells[mchq_dtnas,mqtdchq]:=FormatDatetime(fdt2, pdatanula);

         if (Trim(STG_CHQ.Cells[mchq_databx,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_databx,mqtdchq])<>'/  /') then
             STG_CHQ.Cells[mchq_databx,mqtdchq]:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_databx,mqtdchq]))
         else
             STG_CHQ.Cells[mchq_databx,mqtdchq]:=FormatDatetime(fdt2, pdatanula);

         if (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'/  /') then
             STG_CHQ.Cells[mchq_dtdep,mqtdchq]:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]))
         else
             STG_CHQ.Cells[mchq_dtdep,mqtdchq]:=FormatDatetime(fdt2, pdatanula);

         if (Trim(STG_CHQ.Cells[mchq_datacx,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_datacx,mqtdchq])<>'/  /') then
             STG_CHQ.Cells[mchq_datacx,mqtdchq]:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_datacx,mqtdchq]))
         else
             STG_CHQ.Cells[mchq_datacx,mqtdchq]:=FormatDatetime(fdt2, pdatanula);


        fCriarChqCli(codemp,fsonumero(STG_CHQ.Cells[mchq_numchq,mqtdchq]), // numero
                     fsonumero(STG_CHQ.Cells[mchq_banco,mqtdchq]), // Banco
                     fsonumero(STG_CHQ.Cells[mchq_codcli,mqtdchq]), // codcli
                     fsonumero(STG_CHQ.Cells[mchq_cpf,mqtdchq]), // cnpj/cpf
                     ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]), // Valor
                     mloteBx,
                     ls_lotbcr, // lote seq lote
                     0, // tipo
                     0, // status
                     codusr,
                     ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]), //   codcai,
                     codusr,
                     mcodldr,

                     ls_codldr,
                     0, // quantidade de prorrogacoes
                     0, // codigo da forma de pagamento
                     ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]), // codcai, // codigo do caixa
                     0, // deposito 0-sim 1-nao


                     STG_CHQ.Cells[mchq_serie,mqtdchq], // serie
                     STG_CHQ.Cells[mchq_comp,mqtdchq], // compensacao
                     STG_CHQ.Cells[mchq_emitente,mqtdchq], // emitente
                     STG_CHQ.Cells[mchq_agencia,mqtdchq], // aGENCIA
                     STG_CHQ.Cells[mchq_conta,mqtdchq], // cc
                     STG_CHQ.Cells[mchq_rg,mqtdchq], // rg
                     ' ',


                     mcodccu,
                     mcoddep,
                     mdesc_mov,
                     ' ', // obs linha 01
                     ' ', // obs linha 02

                     STG_CHQ.Cells[mchq_nomcai,mqtdchq],
                     StrToDate(STG_CHQ.Cells[mchq_dtnas,mqtdchq]), // data de Nascimento
                     StrToDate(STG_CHQ.Cells[mchq_databx,mqtdchq]), // data de Emissao
                     StrToDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]), // data de Deposito
                     pdatanula,                // data de alteração
                     pdatanula, // data da baixa
                     pdatanula ); // data do ultimo deposito

//                     StrToDate(STG_CHQ.Cells[mchq_datacx,mqtdchq])); // data de Deposito

         end;
      end;

   for mqtdchq:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtdchq])='' then
         continue;
      if fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq])=0 then
         continue;
      if flcaddar(8,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq])//codemp
                        ,0, // ppre
                        valint(STG_CHQ.Cells[mchq_dev_codecf,mqtdchq]), // codecf
                        0,
                        STG_CHQ.Cells[mchq_numchq,mqtdchq], // numero
                        STG_CHQ.Cells[mchq_dev_desd,mqtdchq], // desd
                        STG_CHQ.Cells[mchq_dev_dup,mqtdchq], // dup
                        StrtoDAte(STG_CHQ.Cells[mchq_dev_dtemis,mqtdchq]),'') then
         begin
         if Frm_BDev=nil then
            Application.CreateForm(TFrm_BDev, Frm_BDev)
         else
            begin
            Frm_BDev.Free;
            Frm_BDev:=nil;
            Application.CreateForm(TFrm_BDev, Frm_BDev);
            end;
         fBaixarDevolucao_bdev(0,0,ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]),
         ValInt(STG_CHQ.Cells[mchq_codcai,mqtdchq]),
         StrToDate(STG_CHQ.Cells[mchq_dataCx,mqtdchq])//DATA REAL
//         StrToDate(STG_CHQ.Cells[mchq_databx,mqtdchq])//DATA REAL
         ,StrToDate(STG_CHQ.Cells[mchq_databx,mqtdchq])
         ,0);
         Frm_BDev.Free;
         Frm_BDev:=nil;
         end;
      end;
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   fMensagem('Duplicata(s) Baixado(s)!, Número do Lote: '+FloatTostr(mloteBx),0,['0'],0);
   NR.Enabled:=true;
   BBCancelar.Click;
   end;
if query_dup<>nil then
   begin
   query_dup.close;
   freeandnil(query_dup);
   end;
end;

procedure TFrm_AcCR.NUMCHQKeyPress(Sender: TObject; var Key: Char);
begin
if (length(NUMCHQ.Text)>9) and (key<>#8) then
   key:=#0
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_AcCR.NUMCHQExit(Sender: TObject);
var
  x: integer;
begin
if (BBSair.Focused) OR (BBCancelar.Focused) OR (MCODCAI.Focused) then
   EXIT;

NUMCHQ.Text:=fdeixanum2(NUMCHQ.Text);
if fsonumero(NUMCHQ.Text)=0 then
   exit;
if Length(NUMCHQ.Text)>10 then
   NUMCHQ.Text:=copy(NUMCHQ.Text,1,10);
if not (BBSair.Focused) and not (BBCancelar.Focused) then
   st_leitor.Visible:=false
else
   st_leitor.Visible:=false;
if (DM1.Qr_FPFPVINCULO.AsInteger=7) and (ValFloat(NUMCHQ.Text)<>0)  then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('Select CRCODEMP,CRNPED,CRORDEM,CRLOTSEQ_CP,CRCODCLI,CRCODVEN,CRCODECF,CRVALOR,CRVALPAG, '
                     +'          CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRDATHORBLOQ_BAIXA'
                     +',CRCHAVE_ID,CRCHAVE_ID_ANO '
                     +' from CADDAR where '
                     +la_empresas
                     +iif(la_empresas='','',' and ')
                     +' CRSTATUS < 2 '
                     +' AND CRDUP=5 '
                     +' AND CRCODCLI=0'+fdeixanum2(CODCLI.Text));
   DM1.Query2.Open;
   mboolean:=false;
   While not DM1.Query2.Eof do
      begin
      if DM1.Query2.FieldByName('CRNUMERO').AsFloat=fsonumero(NUMCHQ.Text) then
         begin
         mboolean:=true;
         break;
         end;
      DM1.Query2.Next;
      end;
   if mboolean then
      begin
      for x:=0 to STG_CHQ.RowCount -1 do
        begin
        if (STG_CHQ.Cells[mchq_numchq,x]=DM1.Query2.FieldByName('CRNUMERO').AsString)
          and (STG_CHQ.Cells[mchq_dev_dup,x]=DM1.Query2.FieldByName('CRDUP').AsString)
          and (ValFloat(STG_CHQ.Cells[mchq_valor,x])=DM1.Query2.FieldByName('CRVALOR').AsFloat) then
            begin
            fmensagem('Esta nota de credito já está sendo utilizada!'+chr(13)+' favor utilize outra opção!',0,['0'],0);
            NUMCHQ.SetFocus;
            Exit;
            end;
        end;
      if DM1.query2.fieldbyname('CRDATHORBLOQ_BAIXA').Asdatetime>pdatanula then
         begin
         MessageDlg('Nota de Credito sendo usada pelo PDV '+Formatdatetime(fdathor,DM1.query2.fieldbyname('CRDATHORBLOQ_BAIXA').Asdatetime ),mtInformation,[mbOk],0);
         NUMCHQ.SetFocus;
         Exit;
         end;
      mdev_Codemp:=DM1.Query2.fieldbyName('CRCODEMP').AsFloat;
      mDev_Codecf:=DM1.Query2.fieldbyName('CRCODECF').AsFloat;
      mDev_Desd  :=DM1.Query2.fieldbyName('CRDESD').AsString;
      mDev_Dtemis:=DM1.Query2.fieldbyName('CRDTEMIS').AsDateTime;
      mDev_Dup     :=DM1.Query2.fieldbyName('CRDUP').AsFloat;
      mDev_chave_id    :=DM1.Query2.fieldbyName('CRCHAVE_ID').AsFloat;
      mDev_chave_id_ano:=DM1.Query2.fieldbyName('CRCHAVE_ID_ANO').AsFloat;


{      if (DM1.Query2.fieldbyName('CRVALOR').AsFloat-DM1.Query2.fieldbyName('CRVALPAG').AsFloat) >
         (ValFloat(HC_cheques.Sections.Items[4].Text)) then
         VALOR.Text:=HC_cheques.Sections.Items[4].Text
      else}
      VALOR.Text :=FormatFloat(mcasas,DM1.Query2.fieldbyName('CRVALOR').AsFloat-DM1.Query2.fieldbyName('CRVALPAG').AsFloat);
      VALOR.Update;
      end
   else
      begin
      fMensagem('Devolução não Encontrada!',0,['0'],0);
      VALOR.Text :=FormatFloat(mcasas,0);
      end;
   end;


end;

procedure TFrm_AcCR.VALORKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;
end;

procedure TFrm_AcCR.VALORExit(Sender: TObject);
begin
if fsonumero(VALOR.Text)<>0 then
   begin
   if not fTestaTam(2,10,VALOR.Text,'') then
      begin
      VALOR.SelectAll;
      VALOR.SetFocus;
      end;
   end;
valor.Text:=FormatFloat('#####0.00',ValFloat(VALOR.Text));
end;

procedure TFrm_AcCR.DTDEPExit(Sender: TObject);
begin
if Trim(DTDEP.Text)='/  /' then
   begin
   fMensagem('Preenchimento Obrigatório!',0,['0'],0);
   DTDEP.SetFocus;
   end
else
   begin
   try
      DTDEP.Text:=FormatDateTime(fdt2,StrToDate(DTDEP.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      exit;
      end;
   end;

end;

procedure TFrm_AcCR.DTNASExit(Sender: TObject);
begin
if Trim(DTNAS.Text)<>'/  /' then
   DTNAS.Text:=FormatDateTime(fdt2,StrToDate(DTNAS.Text));
end;

procedure TFrm_AcCR.BBSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AcCR.bbLancar_chqClick(Sender: TObject);
begin
if ValFloat(VALOR.Text)<=0 then
   begin
   fMensagem('Campo com Preenchimento Obrigatório!',0,['0'],0);
   VALOR.Setfocus;
   exit;
   end;

if ValFloat(VALOR.Text)<=0 then
   begin
   fMensagem('Valor Invalido!',0,['0'],0);
   abort;
   end;
if ValInt(MCODCAI.Text)=0 then
   begin
   MCODCAI.Text    :=MCODCAI_PAD.Text;
   MNOMCAI_PAD.Text:=MNOMCAI_PAD.Text;
   end;
if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
   begin
   if StrToDate(DATACX.Text)<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
      begin
      fmensagem('Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
       exit;
       end;
   end;

if (DM1.Qr_FPFPVINCULO.AsInteger=1) or (DM1.Qr_FPFPVINCULO.AsInteger=2) or (DM1.Qr_FPFPVINCULO.AsInteger=14) then
   begin
   if (ValFloat(NUMCHQ.Text)=0) then
      begin
      fMensagem('Número do Cheque Campo Obrigatorio!',0,['0'],0);
      NUMCHQ.SetFocus;
      exit;
      end;
   if (ValFloat(BANCO.Text)=0) then
      begin
      fMensagem('Banco do Cheque Campo Obrigatorio!',0,['0'],0);
      BANCO.SetFocus;
      exit;
      end;
   if (ValFloat(AGENCIA.Text)=0) then
      begin
      fMensagem('Agencia do Cheque Campo Obrigatorio!',0,['0'],0);
      AGENCIA.SetFocus;
      exit;
      end;
   if (ValFloat(CONTA.Text)=0) then
      begin
      fMensagem('Número da Conta Campo Obrigatorio!',0,['0'],0);
      CONTA.SetFocus;
      exit;
      end;

   end;

if (DM1.Qr_FPFPVINCULO.AsInteger=7) then
   begin
   if (ValFloat(NUMCHQ.Text)=0) then
      begin
      fMensagem('Número da Devolução Campo Obrigatorio!',0,['0'],0);
      NUMCHQ.SetFocus;
      exit;
      end;

   la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('Select CRCODEMP,CRNPED,CRORDEM,CRLOTSEQ_CP,CRCODCLI,CRCODVEN,CRCODECF,CRVALOR,CRVALPAG, '
                     +'          CRDTEMIS,CRNUMERO,CRDESD,CRDUP '
                     +',CRCHAVE_ID,CRCHAVE_ID_ANO '

                     +' from CADDAR where '
                     +la_empresas
                     +iif(la_empresas='','',' and ')
                     +' CRSTATUS < 2 '
                     +' and CRDUP=5 '
                     +' AND CRCODCLI=0'+fdeixanum2(CODCLI.Text));
   DM1.Query2.Open;
   mboolean:=false;
   While not DM1.Query2.Eof do
      begin
      if DM1.Query2.FieldByName('CRNUMERO').AsFloat=fsonumero(NUMCHQ.Text) then
         begin
         mboolean:=true;
         break;
         end;
      DM1.Query2.Next;
      end;
   if mboolean then
//      begin
{      if ValFloat(VALOR.Text)>(DM1.Query2.fieldbyName('CRVALOR').AsFloat
                               -DM1.Query2.fieldbyName('CRVALPAG').AsFloat) then
         begin
         fMensagem('Cliente com Credito insuficiente,!',0,['0'],0);
         exit;
         end

      else if Arredonda(ValFloat(VALOR.Text),2)<>
          Arredonda( (DM1.Query2.fieldbyName('CRVALOR').AsFloat
                     -DM1.Query2.fieldbyName('CRVALPAG').AsFloat),2)  then
         begin
         fMensagem('Valor da devolução maior que o debito, baixa d : '+FormatFloat(mcasas, DM1.Query2.fieldbyName('CRVALOR').AsFloat)+#13
                   +'Não Confere com o valor digitado!',0,['0'],0);
         end

      else
}     begin
      mdev_Codemp:=DM1.Query2.fieldbyName('CRCODEMP').AsFloat;
      mDev_Codecf:=DM1.Query2.fieldbyName('CRCODECF').AsFloat;
      mDev_Desd  :=DM1.Query2.fieldbyName('CRDESD').AsString;
      mDev_Dtemis:=DM1.Query2.fieldbyName('CRDTEMIS').AsDateTime;
      mDev_Dup   :=DM1.Query2.fieldbyName('CRDUP').AsFloat;

      mDev_chave_id    :=DM1.Query2.fieldbyName('CRCHAVE_ID').AsFloat;
      mDev_chave_id_ano:=DM1.Query2.fieldbyName('CRCHAVE_ID_ANO').AsFloat;

//      VALOR.Text :=FormatFloat(mcasas,DM1.Query2.fieldbyName('CRVALOR').AsFloat);
//      VALOR.Text :=FormatFloat(mcasas,DM1.Query2.fieldbyName('CRVALOR').AsFloat);
      end
   else
      begin
      fMensagem('Devolução não Encontrada!',0,['0'],0);
      VALOR.Text :=FormatFloat(mcasas,0);
      end;
   end;

mqtd:=STG_CHQ.RowCount;
STG_CHQ.Cells[mchq_nomfp,mqtd-1]:=DM1.Qr_FPFPDESC.AsString;
STG_CHQ.Cells[mchq_numchq,mqtd-1]:=NUMCHQ.Text;
STG_CHQ.Cells[mchq_banco,mqtd-1]:=BANCO.Text;
STG_CHQ.Cells[mchq_serie,mqtd-1]:=SERIE.Text;
STG_CHQ.Cells[mchq_agencia,mqtd-1]:=AGENCIA.Text;
STG_CHQ.Cells[mchq_emitente,mqtd-1]:=EMITENTE.Text;
STG_CHQ.Cells[mchq_valor,mqtd-1]:=VALOR.Text;
STG_CHQ.Cells[mchq_cpf,mqtd-1]:=CPF.Text;
STG_CHQ.Cells[mchq_rg,mqtd-1]:=RG.Text;
STG_CHQ.Cells[mchq_conta,mqtd-1]:=CONTA.Text;
STG_CHQ.Cells[mchq_dtnas,mqtd-1]:=DTNAS.Text;
STG_CHQ.Cells[mchq_codcli,mqtd-1]:=STG_DS.Cells[mds_codcli,1];
STG_CHQ.Cells[mchq_databx,mqtd-1]:=DATABX.Text;
STG_CHQ.Cells[mchq_dtdep,mqtd-1]:=DTDEP.Text;
STG_CHQ.Cells[mchq_codfp,mqtd-1]:=DM1.Qr_FPFPCODIGO.AsString;
STG_CHQ.Cells[mchq_datacx,mqtd-1]:=DATACX.Text;
STG_CHQ.Cells[mchq_comp,mqtd-1]:=COMP.Text;
STG_CHQ.Cells[mchq_dev_codemp,mqtd-1]:=FloatToStr(mdev_Codemp);
STG_CHQ.Cells[mchq_dev_codecf,mqtd-1]:=FloatToStr(mDev_Codecf);
STG_CHQ.Cells[mchq_dev_desd,mqtd-1]:=mDev_Desd;
STG_CHQ.Cells[mchq_dev_dtemis,mqtd-1]:=FormatDatetime(fdt2, mDev_Dtemis);
STG_CHQ.Cells[mchq_dev_dup,mqtd-1]:=FloatToStr(mDev_Dup);
STG_CHQ.Cells[mchq_codcai,mqtd-1]:=MCODCAI.Text;
STG_CHQ.Cells[mchq_nomcai,mqtd-1]:=MNOMCAI.Text;
STG_CHQ.Cells[mchq_dev_chave_id,mqtd-1]:=FloatToStr(mDev_chave_id);
STG_CHQ.Cells[mchq_dev_chave_id_ano,mqtd-1]:=FloatToStr(mDev_chave_id_ano);




STG_CHQ.Rows[mqtd].Clear;
STG_CHQ.RowCount:=mqtd+1;
STG_CHQ.Rows[mqtd+1].Clear;
STG_CHQ.Rows[mqtd+2].Clear;

   lbl_numchq.Enabled:=False;
   lbl_bco.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   COMP.Enabled   :=False;
   LComp.Enabled  :=False;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.Text     :='';
   COMP.Text      :='';
   mdev_Codemp    :=0;
   mDev_Codecf    :=0;
   mDev_Desd      :='';
   mDev_Dtemis    :=pdatanula;
   mDev_Dup       :=0;

if rg_forma.Visible then
   rg_forma.SetFocus
else
   CB_FORMAPGTO.SetFocus;
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));

HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCR.BANCOExit(Sender: TObject);
begin
if Length(BANCO.Text)>5 then
   BANCO.Text:=copy(BANCO.Text,1,5);

end;

procedure TFrm_AcCR.BBCancelarClick(Sender: TObject);
begin
   lbl_numchq.Enabled:=False;
   lbl_bco.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   COMP.Enabled   :=False;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.Text     :='';
   VALDUP.Caption :='';
   CODCLI.Text    :='';
   COMP.Text      :='';
   mdev_Codemp:=0;
   mDev_Codecf:=0;
   mDev_Desd  :='';
   mDev_Dtemis:=pDataNula;
   mDev_Dup   :=0;
   CODCLI.SetFocus;
   NOMCLI.Text    :='';
   STG_DA.RowCount:=2;
   STG_DA.Rows[1].Clear;
   STG_DS.RowCount:=2;
   STG_DS.Rows[1].Clear;
   STG_CHQ.RowCount:=2;
   STG_CHQ.Rows[1].Clear;
HC_DUPLIC.Sections.Items[2].Text:=mcasas;
HC_cheques.Sections.Items[2].Text:=mcasas;
mCodBco_Dup    :=0;
mPassouFpgto:=false;


end;

procedure TFrm_AcCR.FormCreate(Sender: TObject);
begin
mdar_codcai_ant:=codcai;
NR.Text:=FormatDateTime('ddmmyyyy',date);
DATACX.Text:=FormatDateTime(fdt2, pdatasis);
DATAP.Text:=FormatDateTime(fdt2, pdatasis);
DATABX.Text:=FormatDateTime(fdt2, pdatasis);
if codusr=1111 then
   begin
   DATABX.Visible  :=true;
   lbl_dtbx.Visible:=true;
   end
else
   begin
   DATABX.Visible:=false;
   lbl_dtbx.Visible:=false;
   end;
if DM1.Tb_PargerPMANDATCXBX.asfloat=1 then
   begin
   lbl_caixa.Visible:=True;
   DATACX.Visible   :=true;
   end
else
   begin
   lbl_caixa.Visible:=false;
   DATACX.Visible   :=false;
   end;
fAccrRestPadrao(0);


mColNumdup  :=00;
mColParc    :=01;
mColDup     :=02;
mColDtemis  :=03;
mColValor   :=04;
mColDtVcto  :=05;
mColValRec  :=06;
mColValDesc :=07;
mColDtDesc  :=08;
mColArec    :=09;
mColNomBco  :=10;
mColVend    :=11;
mColCaixa   :=12;
mColCodEmp  :=13;
mColJurdia  :=14;
mColAtraso  :=15;
mColDescDia :=16;
mColDevol   :=17;
mColCusBco  :=18;
mColTotCGru :=19;
mColTotSGru :=20;
mColCodFpgto:=21;
mColNomFpgto:=22;
mColChave   :=23;
mColCodBco  :=24;
mColObs     :=25;
mColnfAcum  :=26;
mColBloqueioPDV :=27;
mColchave_id      :=28;
mColchave_id_ano  :=29;




fAccrRestPadrao(0);


STG_DS.RowCount:=2;
STG_DS.Cells[mds_nomcli,00]:='Cliente';
STG_DS.Cells[mds_numdup,00]:='Número';
STG_DS.Cells[mds_desd,00]:='Parc';
STG_DS.Cells[mds_tipod,00]:='Tp';
STG_DS.Cells[mds_valdup,00]:='Valor';
STG_DS.Cells[mds_valpag,00]:='Recebido';
STG_DS.Cells[mds_desc,00]:='Desconto';
STG_DS.Cells[mds_juros,00]:='Juros';
STG_DS.Cells[mds_codcli,00]:='Cód.Cli';
STG_DS.Cells[mds_datae,00]:='Dt.Emis';
STG_DS.Cells[mds_datap,00]:='Dt.Pgto';
STG_DS.Cells[mds_codecf,00]:='Caixa/ECF';
STG_DS.Cells[mds_codemp,00]:='Empresa';
STG_DS.Cells[mds_devol,00]:='Devoluçoes';
STG_DS.Cells[mds_cusbco,00]:='Custo Bancario';
STG_DS.Cells[mds_dtvcto,00]:='Dt.Vcto.';
STG_DS.Cells[mds_parcial,00]:='Parcial';
STG_DS.Cells[mds_codbco_dup,00]:='Cód.Cta';
STG_DS.Cells[mds_chave_id,00]:='Chave ID';
STG_DS.Cells[mds_chave_id_ano,00]:='Ano';



STG_CHQ.RowCount:=2;
STG_CHQ.Cells[mchq_nomfp,00]:='Forma Pagamento';
STG_CHQ.Cells[mchq_numchq,00]:='Número Chq';
STG_CHQ.Cells[mchq_banco,00]:='Banco';
STG_CHQ.Cells[mchq_serie,00]:='Série';
STG_CHQ.Cells[mchq_agencia,00]:='Agencia';
STG_CHQ.Cells[mchq_emitente,00]:='Emitente';
STG_CHQ.Cells[mchq_valor,00]:='Valor';
STG_CHQ.Cells[mchq_cpf,00]:='CPF';
STG_CHQ.Cells[mchq_rg,00]:='RG';
STG_CHQ.Cells[mchq_conta,00]:='Conta Corrente';
STG_CHQ.Cells[mchq_dtnas,00]:='Dt.Nasc';
STG_CHQ.Cells[mchq_codcli,00]:='Cód.Cliente';
STG_CHQ.Cells[mchq_databx,00]:='Dt.Emissão';
STG_CHQ.Cells[mchq_dtdep,00]:='Dt.Depósito';
STG_CHQ.Cells[mchq_codfp,00]:='Forma Pgto';
STG_CHQ.Cells[mchq_datacx,00]:='Data Caixa';
STG_CHQ.Cells[mchq_comp,00]:='Forma';
STG_CHQ.Cells[mchq_dev_codemp,00]:='Dev.Empresa';
STG_CHQ.Cells[mchq_dev_codecf,00]:='Dev.Cod.Ecf';
STG_CHQ.Cells[mchq_dev_desd,00]:='Dev.Desd';
STG_CHQ.Cells[mchq_dev_dtemis,00]:='Dev.Dt.Emissão';
STG_CHQ.Cells[mchq_dev_dup,00]:='Dev.Tipo';

STG_CHQ.Cells[mchq_codcai,00]:='Banco/Caixa';
STG_CHQ.Cells[mchq_nomcai,00]:='Nome do Banco/Caixa';
STG_CHQ.Cells[mchq_dev_chave_id,00]:='Dev Chave';
STG_CHQ.Cells[mchq_dev_chave_id_ano,00]:='Ano';

flcadldr(0,0,0,'0');
DATAP.Text:=FormatDateTime(fdt2, pdatasis);

DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
mcinst4:='';
if DM1.Qr_FP.RecordCount>10 then
   begin
   CB_FORMAPGTO.Items.Clear;
   while not DM1.Qr_FP.Eof do
      begin
      if DM1.Qr_FPFPVINCULO.AsInteger=18 then
         begin
         DM1.Qr_FP.Next;
         Continue;
         end;

      if mcinst4='' then
         begin
         if DM1.Qr_FPFPVINCULO.AsInteger=0 then
            mcinst4:=DM1.Qr_FPFPDESC.AsString+'['+DM1.Qr_FPFPCODIGO.AsString+']';
         end;
      CB_FORMAPGTO.Items.Add(DM1.Qr_FPFPDESC.AsString+'['+DM1.Qr_FPFPCODIGO.AsString+']');
      DM1.Qr_FP.Next;
      end;
   if mcinst<>'' then
      begin
      with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(mcinst4);
      end;
   rg_forma.Visible:=false;
   CB_FORMAPGTO.Visible:=true;
   ST_FORMAPGTO.Visible:=true;

   end
else
   begin
   while not DM1.Qr_FP.Eof do
      begin
      if DM1.Qr_FPFPVINCULO.AsInteger=18 then
         begin
         DM1.Qr_FP.Next;
         Continue;
         end;
      rg_forma.Items.Add(Formatfloat('00',DM1.Qr_FPFPCODIGO.asfloat)+'-'+DM1.Qr_FPFPDESC.AsString);
      DM1.Qr_FP.Next;
      end;
   rg_forma.ItemIndex:=0;
   rg_forma.Visible:=true;
   CB_FORMAPGTO.Visible:=false;
   ST_FORMAPGTO.Visible:=false;
   DM1.Qr_FP.Locate('FPCODIGO',rg_forma.ItemIndex,[]);
   end;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

fCarregaDadosCaixa('CADDAR0');
MLOTMOV.Text:=IntToStr(lotmov);

if flfilpad(-1,'_ACCR','mcodcai_pad_'+inttostr(codemp)) then
   MCODCAI_PAD.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   MCODCAI_PAD.Text:=IntToStr(codcai);

if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI_PAD.Text) then
   MNOMCAI_PAD.Text:=DM1.Query1.Fields[0].AsString;
MCODCAI.Text:=MCODCAI_PAD.Text;
MNOMCAI.Text:=MNOMCAI_PAD.Text;

mdev_Codemp:=0;
mDev_Codecf:=0;
mDev_Desd  :='';
mDev_Dtemis:=pDataNula;
mDev_Dup   :=0;

if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_AcCr.Caption:=Frm_AcCr.Caption+'. Manipulação no Caixa Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';


end;

procedure TFrm_AcCR.STG_DADblClick(Sender: TObject);
begin
NUMDUP.setfocus;
end;


procedure TFrm_AcCR.DESCKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.TIPODExit(Sender: TObject);
begin
fcarregadup(0);

end;

procedure TFrm_AcCR.DESCExit(Sender: TObject);
begin
DESC.Text:=Formatfloat(mcasas,ValFloat(DESC.Text));
VALPAG.Text:=FormatFloat(mcasas,ValFloat(STG_DA.Cells[mColArec,STG_DA.Row])
//            -(ValFloat(DESC.Text)+valfloat(DEVOL.Text)+ValFloat(VDESSGRU.Text))
            -(ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text))
            +ValFloat(JUROS.Text));

end;

procedure TFrm_AcCR.JUROSExit(Sender: TObject);
begin
JUROS.Text:=Formatfloat(mcasas,ValFloat(JUROS.Text));

VALPAG.Text:=FormatFloat(mcasas,ValFloat(STG_DA.Cells[mColArec,STG_DA.Row])
            -(ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text))
//            -(ValFloat(DESC.Text)+valfloat(DEVOL.Text)+ValFloat(VDESSGRU.Text))
            +ValFloat(JUROS.Text));


end;

procedure TFrm_AcCR.VALPAGExit(Sender: TObject);
begin
VALPAG.Text:=Formatfloat(mcasas,ValFloat(VALPAG.Text));

end;

procedure TFrm_AcCR.STG_DAExit(Sender: TObject);
begin
NUMDUP.Text    :=STG_DA.Cells[mColNumdup,STG_DA.Row];
DESD.Text      :=STG_DA.Cells[mColParc,STG_DA.Row];
TIPOD.Text     :=STG_DA.Cells[mColDup,STG_DA.Row];
DTEMIS.Text    :=STG_DA.Cells[mColDtemis,STG_DA.Row];
DTVCTO.Text    :=STG_DA.Cells[mColDtVcto,STG_DA.Row];
VALDUP.Caption :=STG_DA.Cells[mColValor,STG_DA.Row];
MCODECF.Text   :=STG_DA.Cells[mColCaixa,STG_DA.Row];
MCODEMP.Text   :=STG_DA.Cells[mColCodEmp,STG_DA.Row];
VALPAG.Text    :=STG_DA.Cells[mColArec,STG_DA.Row];
DEVOL.Text     :=STG_DA.Cells[mColDevol,STG_DA.Row];
CUSBCO.Text    :=STG_DA.Cells[mColCusBco,STG_DA.Row];
VALCGRU.Caption:=STG_DA.Cells[mColTotCGru,STG_DA.Row];
VALSGRU.Caption:=STG_DA.Cells[mColTotSGru,STG_DA.Row];
mCodBco_Dup    :=ValFloat(STG_DA.Cells[mColCodBco,STG_DA.Row]);
mcod_fpgto     :=valfloat(STG_DA.Cells[mColCodFpgto,STG_DA.Row]);
PDESCSGRU.Text :='';
VDESSGRU.Text  :='';


fJurosDesc(0);

end;

procedure TFrm_AcCR.STG_DADrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>2) and (acol<>3)  then
//Pega o texto da célula
  begin
  Texto := STG_DA.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_DA.Canvas.TextWidth(Texto);
  AlturaTexto := STG_DA.Canvas.TextHeight(Texto);
  if ValFloat(STG_DA.Cells[mColValRec,arow])>0 then
     STG_DA.Canvas.Font.Color:=$00004000;
  if (Valint(STG_DA.Cells[mColdup,arow])=5) and (UpperCase(copy(STG_DA.Cells[mColObs,arow],1,6))<>'CHEQUE') then
     STG_DA.Canvas.Brush.Color:=clGreen
  else if (Valint(STG_DA.Cells[mColdup,arow])=5) and (UpperCase(copy(STG_DA.Cells[mColObs,arow],1,6))='CHEQUE') then
     STG_DA.Canvas.Brush.Color:=clYellow;


// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_DA.Canvas.TextRect(Rect, X, Y, Texto);
  end;
{
if arow>0 then
   begin
   if ValFloat(STG_DA.Cells[mColValRec,arow])>0 then
      begin
      STG_DA.Canvas.Brush.Color:=clBlue;
      end;
   STG_DA.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_DA.Cells[acol,arow]);
   end;
}
end;

procedure TFrm_AcCR.DATAPExit(Sender: TObject);
begin
Try
   DATAP.Text:=FormatDatetime(fdt2,StrtoDate(DATAP.Text));
except
   fMensagem('Data invalida!',0,['0'],0);
   DATAP.SetFocus;
   exit;
   end;
//fcarregadup(0);
fJurosDesc(0);
end;

procedure TFrm_AcCR.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
if (length(BANCO.Text)>2) and (key<>#8) then
   key:=#0
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.SERIEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SERIE.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.AGENCIAKeyPress(Sender: TObject; var Key: Char);
begin
if (length(AGENCIA.Text)>9) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.CONTAKeyPress(Sender: TObject; var Key: Char);
begin
if (length(CONTA.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.EMITENTEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(EMITENTE.Text)>39) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.RGKeyPress(Sender: TObject; var Key: Char);
begin
if (length(RG.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCR.CPFKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(CPF.Text)>59) and (key<>#8) then
   key:=#0;

//if (length(CPF.Text)>13) and (key<>#8) or not (key in ['0'..'9']) then
//   key:=#0;

end;

procedure TFrm_AcCR.CPFExit(Sender: TObject);
begin
if not fTestaTam(0,14,CPF.Text,'') then
   CPF.SetFocus;


if length(CPF.Text)>11 then
   CPF.Text:=FormatFloat('00"."000"."000"/"0000"-"00', ValFloat(CPF.Text))
else
   CPF.Text:=FormatFloat('000"."000"."000"-"00', ValFloat(CPF.Text));
end;

procedure TFrm_AcCR.NUMCHQEnter(Sender: TObject);
begin
st_leitor.Visible:=True;

end;

procedure TFrm_AcCR.NUMCHQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   DM4.Tb_Leitor.Close;
   DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
   DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;
   DM4.Tb_Leitor.Open;
   if DM4.Tb_Leitor.Eof then
      begin
      fMensagem('Leitor Optico não configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if not flposdoc(0,0,'') then
      begin
      fMensagem('Campos do Leitor não Configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if Frm_LOptica=nil then
      Application.CreateForm(TFrm_LOptica, Frm_LOptica)
   else
      begin
      Frm_LOptica.Free;
      Frm_LOptica:=nil;
      Application.CreateForm(TFrm_LOptica, Frm_LOptica);
      end;


   Frm_LOptica.ShowModal;

   if lo_banco>0 then
      begin
      BANCO.Text:=FloatToStr(lo_banco);
      if Length(BANCO.Text)>5 then
         BANCO.Text:=copy(BANCO.Text,1,5);
      end;
   if lo_agencia>0 then
      begin
      AGENCIA.Text:=FloatToStr(lo_agencia);
      if Length(AGENCIA.Text)>10 then
         begin
         AGENCIA.Text:=copy(AGENCIA.Text,1,10);
         end;
      end;
   if lo_compens>0 then
      begin
      COMP.Text:=FloatToStr(lo_compens);
      if Length(COMP.Text)>4 then
         begin
         COMP.Text:=copy(COMP.Text,1,4);
         end;
      end;
   if lo_numchq>0 then
      begin
      NUMCHQ.Text:=FloatToStr(lo_numchq);
      if Length(NUMCHQ.Text)>10 then
         NUMCHQ.Text:=copy(NUMCHQ.Text,1,10);
      end;
   if lo_conta>0 then
      begin
      CONTA.Text:=FloatToStr(lo_conta);
      if Length(CONTA.Text)>20 then
         CONTA.Text:=copy(CONTA.Text,1,20);
      CONTAExit(self);
      end;
   valor.SetFocus;
   Frm_LOptica.Free;
   Frm_LOptica:=nil;
   end;
end;

procedure TFrm_AcCR.DATACXExit(Sender: TObject);
begin
if Trim(DATACX.Text)='/  /' then
   DATACX.Text:=DATABX.Text
else
   begin
   try
      DATACX.Text:=FormatDateTime(fdt2,StrToDate(DATACX.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      DATACX.SetFocus;
      exit;
      end;
   end;

if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
   begin
   if StrToDate(DATACX.Text)<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
      begin
      fmensagem('Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
       exit;
       end;
   end;


end;

procedure TFrm_AcCR.SERIEExit(Sender: TObject);
begin
if Length(SERIE.Text)>19 then
   SERIE.Text:=copy(SERIE.Text,1,20);


end;

procedure TFrm_AcCR.AGENCIAExit(Sender: TObject);
begin
if Length(AGENCIA.Text)>9 then
   SERIE.Text:=copy(SERIE.Text,1,10);

end;

procedure TFrm_AcCR.CONTAExit(Sender: TObject);
begin
if Length(CONTA.Text)>19 then
   CONTA.Text:=copy(CONTA.Text,1,20);
if (DM1.Qr_FPFPVINCULO.AsInteger<>7) and (ValFloat(NUMCHQ.Text)<>0)  then
   fTestaDadosCheques(valfloat(STG_DS.Cells[mds_codcli,1]),fsonumero(CONTA.Text));

end;

procedure TFrm_AcCR.COMPKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,4,COMP.Text,key) then
   key:=#0;

end;

procedure TFrm_AcCR.COMPExit(Sender: TObject);
begin
if not fTestaTam(0,4,COMP.Text,'') then
   COMP.SetFocus;

end;

procedure TFrm_AcCR.EMITENTEExit(Sender: TObject);
begin
if not fTestaTam(0,60,EMITENTE.Text,'') then
   EMITENTE.SetFocus;

end;

procedure TFrm_AcCR.RGExit(Sender: TObject);
begin
if not fTestaTam(0,40,RG.Text,'') then
   RG.SetFocus;

end;
function TFrm_ACCR.fcarregadup(ptipo: Integer): Boolean;
var
machou: Boolean;
mqtd: Integer;
begin
machou:=False;
for mqtd:=1 to STG_DA.RowCount-1 do
   begin
   if (fsonumero(NUMDUP.Text)=fsonumero(STG_DA.Cells[mColNumdup,mqtd])) and
      (Trim(DESD.Text)  =Trim(STG_DA.Cells[mColParc,mqtd])) and
      (valint(TIPOD.Text) =valint(STG_DA.Cells[mColDup,mqtd])) and
      (Trim(DTEMIS.Text)=Trim(STG_DA.Cells[mColDtemis,mqtd])) and
      (valint(MCODECF.Text)=valint(STG_DA.Cells[mColCaixa,mqtd])) then
      begin
      STG_DA.row:=mqtd;
      machou:=true;
      break;
      end;
   end;
if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount-1 do
      begin
      if (fsonumero(NUMDUP.Text)=fsonumero(STG_DA.Cells[mColNumdup,mqtd])) and
         (Trim(DESD.Text)  =Trim(STG_DA.Cells[mColParc,mqtd])) and
         (valint(TIPOD.Text) =valint(STG_DA.Cells[mColDup,mqtd])) and
         (Trim(DTEMIS.Text)=Trim(STG_DA.Cells[mColDtemis,mqtd])) then
         begin
         STG_DA.row:=mqtd;
         machou:=true;
         break;
         end;
      end;
   end;
if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount-1 do
      begin
      if (fsonumero(NUMDUP.Text)=fsonumero(STG_DA.Cells[mColNumdup,mqtd])) and
         (Trim(DESD.Text)  =Trim(STG_DA.Cells[mColParc,mqtd])) and
         (valint(TIPOD.Text) =valint(STG_DA.Cells[mColDup,mqtd])) then
         begin
         STG_DA.row:=mqtd;
         machou:=true;
         break;
         end;
      end;
   end;
if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount-1 do
      begin
      if (fsonumero(NUMDUP.Text)=fsonumero(STG_DA.Cells[mColNumdup,mqtd])) and
         (Trim(DESD.Text)  =Trim(STG_DA.Cells[mColParc,mqtd]))  then
         begin
         machou:=true;
         STG_DA.row:=mqtd;
         break;
         end;
      end;
   end;

if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount-1 do
      begin
      if (fsonumero(NUMDUP.Text)=fsonumero(STG_DA.Cells[mColNumdup,mqtd])) then
         begin
         machou:=true;
         STG_DA.row:=mqtd;
         break;
         end;
      end;
   end;
if machou then
   begin
   NUMDUP.Text    :=STG_DA.Cells[mColNumdup,mqtd];
   DESD.Text      :=STG_DA.Cells[mColParc,mqtd];
   TIPOD.Text     :=STG_DA.Cells[mColDup,mqtd];
   DTEMIS.Text    :=STG_DA.Cells[mColDtemis,mqtd];
   DTVCTO.Text    :=STG_DA.Cells[mColDtVcto,mqtd];
   MCODECF.Text   :=STG_DA.Cells[mColCaixa,mqtd];
   VALPAG.Text    :=STG_DA.Cells[mColArec,mqtd];
   VALCGRU.Caption:=STG_DA.Cells[mColTotCGru,mqtd];
   VALSGRU.Caption:=STG_DA.Cells[mColTotSGru,mqtd];
   VALDUP.Caption :=STG_DA.Cells[mColValor,mqtd];
   DEVOL.Text     :=STG_DA.Cells[mColDevol,mqtd];
   CUSBCO.Text    :=STG_DA.Cells[mColCusBco,mqtd];
   MCODEMP.Text   :=STG_DA.Cells[mColCodEmp,mqtd];
   DEVOL.Text     :=STG_DA.Cells[mColDevol,mqtd];
   CUSBCO.Text    :=STG_DA.Cells[mColCusBco,mqtd];
   mCodBco_Dup    :=ValFloat(STG_DA.Cells[mColCodBco,mqtd]);
   mcod_fpgto     :=valfloat(STG_DA.Cells[mColCodFpgto,mqtd]);
   PDESCSGRU.Text :='';
   VDESSGRU.Text  :='';
   fJurosDesc(0);
   end;


result:=True;
end;
procedure TFrm_AcCR.MCODECFExit(Sender: TObject);
begin
fcarregadup(0);

end;

procedure TFrm_AcCR.NUMDUPExit(Sender: TObject);
begin
fcarregadup(0);

end;

procedure TFrm_AcCR.DESDExit(Sender: TObject);
begin
fcarregadup(0);

end;

function TFrm_AcCR.fAcCrTotaldup(ptipo: Integer): Real;
var
i: Integer;
mtotal: Real;
begin
mtotal:=0;
for i:=1 to STG_DS.RowCount-1 do
   begin
   if Trim(STG_DS.Cells[mds_nomcli,i])='' then
      continue;
   if STG_DS.Cells[mds_tipod,i]='5' then
      mtotal:=mtotal-valFloat(STG_DS.Cells[mds_valpag,i])
   else
      mtotal:=mtotal+valfloat(STG_DS.Cells[mds_valpag,i]);
   end;
result:=mtotal;

end;

function TFrm_ACCr.fAcCrTotalFP(ptipo: Integer): Real;
var
i: Integer;
mtotal: Real;
begin
mtotal:=0;
for i:=1 to STG_CHQ.RowCount do
   begin
   if Trim(STG_CHQ.Cells[mchq_nomfp,i])='' then
      continue;
   DM1.Qr_FP.Locate('FPCODIGO',valFloat(STG_CHQ.Cells[mchq_codfp,i]),[]);
   if DM1.Qr_FPFPTIPO.asfloat=0 then
      mtotal:=mtotal+ValFloat(STG_CHQ.Cells[mchq_valor,i])
   else
      mtotal:=mtotal-ValFloat(STG_CHQ.Cells[mchq_valor,i]);
   end;
result:=mtotal;

end;

procedure TFrm_AcCR.CODCLIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mnumDup:='';
if key=114 then
   begin

   if Form_PedCli_AcCr=nil then
      Application.CreateForm(TFrm_PedCli, Form_PedCli_AcCr)
   else
      begin
      Form_PedCli_AcCr.Free;
      Form_PedCli_AcCr:=nil;
      Application.CreateForm(TFrm_PedCli, Form_PedCli_AcCr);
      end;

   Form_PedCli_AcCr.ori_pedcli:='Frm_AcCr';
   Form_PedCli_AcCr.ShowModal;
   if not Form_PedCli_AcCr.Tb_PedP1CHAVE.IsNull then
      begin
      CODCLI.Text:=Form_PedCli_AcCr.Tb_PedP1CODCLI.AsString;
      mnumDup    :=Form_PedCli_AcCr.Tb_PedP1NUMNF.AsString;
      end;
   Form_PedCli_AcCr.Free;
   Form_PedCli_AcCr:=nil;
   end;
end;

procedure TFrm_AcCR.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_AcCR.NRExit(Sender: TObject);
begin
NR.Text:=fdeixanum(NR.Text);
if (BBCancelar.Focused) or (BBSair.Focused) then
   exit;
if fsonumero(NR.Text)=0 then
   begin
   fMensagem('Número Obrigatório!',0,['0'],0);
   NR.SetFocus;
   exit;
   end;

end;

procedure TFrm_AcCR.MCODEMPExit(Sender: TObject);
begin
MCODEMP.Text:=fdeixanum(MCODEMP.Text);
fcarregadup(0);

end;

procedure TFrm_AcCR.NOSNUMExit(Sender: TObject);
var
mnosnum: String;
begin

if BBSair.Focused then
   exit;
if trim(NOSNUM.Text)='' then
   exit;
mnosnum:=copy(nosnum.Text,1,length(NOSNUM.Text)-1);

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('select CRNUMERO,CRCODCLI,CRCODEMP FROM CADDAR where CRSTATUS<>9 '
                  +iif(la_Empresas='','',' and ')
                  +la_Empresas
                  +' and CRNOSNUM='+chr(39)+mnosnum+chr(39)
                  +' and CRSTATUS<>2');
try
   DM1.Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.Query1,2973,'s_mcodp','CADDAR');
   end;
   end;


if not DM1.Query1.Eof then
   begin
{
   if Trim(STG_DS.Cells[mds_nomcli,1])='' then
      NR.Enabled:=true
   else
      NR.Enabled:=false;
}
   mnumDup:=DM1.Query1.FieldbyName('CRNUMERO').AsString;
   CODCLI.Text:=DM1.Query1.FieldbyName('CRCODCLI').AsString;
   if Trim(CODCLI.Text)<>'' then
      begin
      if not flcadcli(1,0,CODCLI.Text) then
         NOMCLI.Text:='Cliente não cadastrado!'
      else
         NOMCLI.Text:=DM1.Tb_CliCRAZAO.AsString;
      end;
   pldr_nome:=DM1.Tb_CliCRAZAO.AsString;
   fLerAtualiza(1,mnosnum);
   end
else
   begin
   fMensagem('Nosso número não encontrado:'+copy(nosnum.Text,1,length(NOSNUM.Text)-1)
   +' Digito: '+copy(nosnum.Text,length(NOSNUM.Text)-1,1),0,['0'],0);
   end;

end;

procedure TFrm_AcCR.STG_DSDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>0) and (acol<>2) and (acol<>9) and (acol<>10) then
//Pega o texto da célula
  begin
  Texto := STG_DS.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_DS.Canvas.TextWidth(Texto);
  AlturaTexto := STG_DS.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_DS.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_AcCR.STG_CHQDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>3) and (aCol<>0) and (acol<>4) and (acol<>5) and (acol<>8)
   and (acol<>9) and (acol<>10) and (acol<12)
 then
//Pega o texto da célula
  begin
  Texto := STG_CHQ.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_CHQ.Canvas.TextWidth(Texto);
  AlturaTexto := STG_CHQ.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_CHQ.Canvas.TextRect(Rect, X, Y, Texto);
  end;
end;

function TFrm_AcCr.fLerAtualiza(pTipo: Integer;pValor: String): Boolean;
{
0-pValor= Codcli
1-Nosso Numero
}
var
mqtd: Integer;
begin
STG_DA.RowCount:=2;
STG_DA.rows[1].Clear;

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('select CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
                  +' CRVALOR,CRDTVCTO,CRVALPAG,CRDESCF,'
                  +' CRDTDESCF, CRCODBCO,CRNPED,CRCODECF,CRCODEMP,CRDESCD,'
                  +' CRJURD,CRMULTA,CRDEVOL,CRCUSBCO,CRTOTCGRU,CRTOTSGRU,'
                  +' CRNFACUM,CRJUROS,CRDESC,CRCODFPGTO,CRNOMFPGTO '
                  +' ,CRCODVEN,CRCODCTA,CROBS '
                  +',CRDATHORBLOQ_BAIXA '
                  +',CRCHAVE_ID_ANO,CRCHAVE_ID '
                  +' FROM CADDAR where CRSTATUS<>9 '
                  +iif(la_Empresas='','',' and ')
                  +la_Empresas
                  +iif(ptipo=1,' and CRNOSNUM='+chr(39)+trim(pvalor)+chr(39),
                  ' and CRCODCLI=0'+Trim(pValor))
                  +' and CRSTATUS<>2'
                   +' order by CRCODCLI,CRDTVCTO ');
try
   DM1.Query1.Open;

except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(DM1.Query1,2973,'s_mcodp','CADDAR');
   end;
   end;
//DM1.Query1.SQL.savetofile('c:\sql.txt');
if DM1.Query1.Eof then
   begin
   result:=false;
   exit;
   end;
mqtd:=1;
While not DM1.Query1.Eof do
   begin
   if fJaselecionada(0) then
      begin
      DM1.Query1.Next;
      Continue;
      end;
   STG_DA.RowCount:=mqtd+1;
   STG_DA.Rows[mqtd].Clear;
   STG_DA.Cells[mColNumdup,mqtd]:=DM1.Query1.FieldByName('CRNUMERO').AsString;
   STG_DA.Cells[mColParc,mqtd]:=DM1.Query1.FieldByName('CRDESD').AsString;
   STG_DA.Cells[mColDup,mqtd]:=DM1.Query1.FieldByName('CRDUP').AsString;
   STG_DA.Cells[mColDtemis,mqtd]:=FormatDatetime(fdt2,DM1.Query1.FieldByName('CRDTEMIS').AsDateTime);
   STG_DA.Cells[mColValor,mqtd]:=FormatFloat('##0.00',DM1.Query1.FieldByName('CRVALOR').AsFloat);
   STG_DA.Cells[mColDtVcto,mqtd]:=FormatDatetime(fdt2,DM1.Query1.FieldByName('CRDTVCTO').AsDateTime);
   STG_DA.Cells[mColValRec,mqtd]:=FormatFloat('##0.00',DM1.Query1.FieldByName('CRVALPAG').AsFloat);
   STG_DA.Cells[mColValDesc,mqtd]:=FormatFloat('##0.00',DM1.Query1.FieldByName('CRDESCF').AsFloat);
   if DM1.Query1.FieldByName('CRDTDESCF').AsDateTime>pdatanula then
      STG_DA.Cells[mColDtDesc,mqtd]:=FormatDatetime(fdt2, DM1.Query1.FieldByName('CRDTDESCF').AsDateTime);
   STG_DA.Cells[mColArec,mqtd]:=FormatFloat('##0.00',DM1.Query1.FieldbyName('CRVALOR').AsFloat
                                               +DM1.Query1.FieldbyName('CRJUROS').AsFloat
                                               -DM1.Query1.FieldbyName('CRDESC').AsFloat
                                               -DM1.Query1.FieldbyName('CRDEVOL').AsFloat
                                               -(DM1.Query1.FieldbyName('CRVALPAG').AsFloat
                                               +fValorParcial(DM1.Query1.FieldByName('CRCHAVE_ID_ANO').AsInteger
                                               ,DM1.Query1.FieldByName('CRCHAVE_ID').AsInteger
                                               ,DM1.Query1.FieldByName('CRCODEMP').AsInteger))
                                               );
   STG_DA.Cells[mColNomBco,mqtd]:=FormatFloat('000',DM1.Query1.FieldByName('CRCODBCO').AsFloat);
   STG_DA.Cells[mColVend,mqtd]:=FormatFloat('000000',DM1.Query1.FieldByName('CRCODVEN').AsFloat);
   STG_DA.Cells[mColCaixa,mqtd]:=DM1.Query1.FieldByName('CRCODECF').AsString;
   STG_DA.Cells[mColCodEmp,mqtd]:=DM1.Query1.FieldbYName('CRCODEMP').AsString;
   STG_DA.Cells[mColJurDia,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRJURD').AsFloat);
   if DM1.Query1.FieldByName('CRDTVCTO').AsDateTime<=Date then
      STG_DA.Cells[mColAtraso,mqtd]:=FloattoStr((Date-DM1.Query1.FieldbYName('CRDTVCTO').AsdateTime))
   else
      STG_DA.Cells[mColAtraso,mqtd]:='0';
   STG_DA.Cells[mColDescDia,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRDESCD').AsFloat);
   STG_DA.Cells[mColDevol,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRDEVOL').AsFloat);
   STG_DA.Cells[mColCusBco,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRCUSBCO').AsFloat);
   STG_DA.Cells[mColTotCGru,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRTOTCGRU').AsFloat);
   STG_DA.Cells[mColTotSGru,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRTOTSGRU').AsFloat);
   STG_DA.Cells[mColCodFpgto,mqtd]:=FormatFloat(mcasas, DM1.Query1.FieldbYName('CRCODFPGTO').AsFloat);
   STG_DA.Cells[mColNomFpgto,mqtd]:=DM1.Query1.FieldbYName('CRNOMFPGTO').AsString;
   STG_DA.Cells[mColChave,mqtd]:=FormatFloat('000000',DM1.Query1.FieldByName('CRNPED').AsFloat);
   STG_DA.Cells[mColCodBco,mqtd]:=FormatFloat('000000',DM1.Query1.FieldByName('CRCODCTA').AsFloat);
   STG_DA.Cells[mColObs,mqtd]   :=DM1.Query1.FieldByName('CROBS').AsString;
   STG_DA.Cells[mColnfAcum,mqtd]   :=DM1.Query1.FieldByName('CRNFACUM').AsString;
   STG_DA.Cells[mColBloqueioPDV,mqtd]   :=Formatdatetime(fdathor, DM1.Query1.FieldByName('CRDATHORBLOQ_BAIXA').AsDateTime);
   STG_DA.Cells[mColchave_id,mqtd]   :=DM1.Query1.FieldByName('CRCHAVE_ID').AsString;
   STG_DA.Cells[mColchave_id_ano,mqtd]   :=DM1.Query1.FieldByName('CRCHAVE_ID_ANO').AsString;



   DM1.Query1.Next;
   mqtd:=mqtd+1;
   end;
if Trim(mnumDup)<>'' then
   begin
   for mqtd:=1 to STG_DA.RowCount do
      begin
      if Trim(STG_DA.Cells[mColNumdup,mqtd])='' then
         Continue;
      if ValFloat(mnumDup)=ValFloat(STG_DA.Cells[mColNumdup,mqtd]) then
         begin
         NUMDUP.Text    :=STG_DA.Cells[mColNumdup,mqtd];
         DESD.Text      :=STG_DA.Cells[mColParc,mqtd];
         TIPOD.Text     :=STG_DA.Cells[mColDup,mqtd];
         DTEMIS.Text    :=STG_DA.Cells[mColDtemis,mqtd];
         DTVCTO.Text    :=STG_DA.Cells[mColDtVcto,mqtd];
         VALDUP.Caption :=STG_DA.Cells[mColValor,mqtd];
         MCODECF.Text   :=STG_DA.Cells[mColCaixa,mqtd];
         VALPAG.Text    :=STG_DA.Cells[mColArec,mqtd];
         MCODEMP.Text   :=STG_DA.Cells[mColCodEmp,mqtd];
         VALCGRU.Caption:=STG_DA.Cells[mColTotCGru,mqtd];
         VALSGRU.Caption:=STG_DA.Cells[mColTotSGru,mqtd];
         DEVOL.Text     :=STG_DA.Cells[mColDevol,mqtd];
         CUSBCO.Text    :=STG_DA.Cells[mColCusBco,mqtd];
         PDESCSGRU.Text :='';
         VDESSGRU.Text  :='';
         mnumDup:='';
         end;
      end;
   end;
Result:=true;
end;

function TFrm_AcCr.fJaselecionada(pTipo: Integer): Boolean;
var
x: Integer;
begin
result:=false;
for x:=1 to STG_DS.RowCount do
   begin
   if (trim(STG_DS.Cells[mds_datae,x])='/ /') or (Trim(STG_DS.Cells[mds_datae,x])='') then
      Continue;
   if (ValFloat(STG_DS.Cells[mds_numdup,x]) =DM1.Query1.fieldbyName('CRNUMERO').AsFloat) and
      (Trim(STG_DS.Cells[mds_desd,x])     =Trim(DM1.Query1.fieldbyName('CRDESD').AsString) ) and
      (ValFloat(STG_DS.Cells[mds_tipod,x]) =DM1.Query1.fieldbyName('CRDUP').AsFloat ) and
      (Trim(STG_DS.Cells[mds_datae,x])     =FormatDatetime(fdt2, DM1.Query1.fieldbyName('CRDTEMIS').AsDateTime)) and
      ( ValFloat(STG_DS.Cells[mds_codecf,x])=DM1.Query1.fieldbyName('CRCODECF').AsFloat) and
      ( ValFloat(STG_DS.Cells[mds_codemp,x])=DM1.Query1.fieldbyName('CRCODEMP').AsFloat) and
      ( ValFloat(STG_DS.Cells[mds_parcial,x])<>1)  then
      begin
      result:=true;
      break;
      end;
   end;
end;



function TFrm_AcCr.fValorParcial(pChaveid_ano, pChaveId, pCodEmp: Integer): real;
var
x: Integer;
begin
result:=0;
for x:=1 to STG_DS.RowCount do
   begin
   if (trim(STG_DS.Cells[mds_datae,x])='/ /') or (Trim(STG_DS.Cells[mds_datae,x])='') then
      Continue;
   if (Valint(STG_DS.Cells[mds_chave_id,x]) =pchaveid) and
      (Valint(STG_DS.Cells[mds_chave_id_ano,x]) =pchaveid_ano) and
      (Valint(STG_DS.Cells[mds_codemp,x]) =pcodemp) then
      begin
      result:=result+valfloat(STG_DS.Cells[mds_valpag,x]);
      end;
   end;
end;


procedure TFrm_AcCR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
codcai:=mdar_codcai_ant;

end;
function TFrm_AcCr.fJurosDesc(pTipo: Integer): Boolean;
var
achou: boolean;
mqtdd: real;
mvalor: real;
x: Integer;
begin
result:=true;

achou:=False;
if (trim(DATAP.Text)='/  /') or (trim(DATAP.Text)='') then
   begin
   JUROS.Text:='';
   DESC.Text :='';
   exit;
   end;
for x:=1 to STG_DA.RowCount do
   begin
   if (valfloat(NUMDUP.Text)=ValFloat(STG_DA.Cells[mColNumdup,x])) and
      (Trim(DESD.Text)      =Trim(STG_DA.Cells[mColParc,x]))     and
      (ValInt(TIPOD.Text)   =ValInt(STG_DA.Cells[mColDup,x]))   and
      (Trim(DTEMIS.Text)    =Trim(STG_DA.Cells[mColDtemis,x]))      and
      (ValInt(MCODECF.Text) =ValInt(STG_DA.Cells[mColCaixa,x]))    and
      (ValInt(MCODEMP.Text) =ValInt(STG_DA.Cells[mColCodEmp,x]))    then
      begin
      achou:=True;
      break;
      end;
   end;
if not achou then
   exit;
mqtdd:=StrToDate(DATAP.Text)-StrtoDate(STG_DA.Cells[mColDtVcto,x]);
mvalor:=0;
if mqtdd>0 then
   mvalor:=mqtdd*ValFloat(STG_DA.Cells[mColJurDia,x]);
if not CB_JUROS.Checked then
   mvalor:=0;
JUROS.Text := FormatFloat(mcasas, mvalor);

mqtdd:=StrtoDate(STG_DA.Cells[mColDtVcto,x])-StrToDate(DATAP.Text);
mvalor:=0;
if mqtdd>0 then
   mvalor:=mqtdd*ValFloat(STG_DA.Cells[mColDescDia,x]);
if (trim(STG_DA.Cells[mColDtDesc,x])='/  /') or (trim(STG_DA.Cells[mColDtDesc,x])='') then
   begin
   if ValFloat(STG_DA.Cells[mColValDesc,x])<>0 then
      mvalor:=mvalor+ValFloat(STG_DA.Cells[mColValDesc,x]);
   end
else
   begin
   if Strtodate(STG_DA.Cells[mColDtDesc,x])>=StrToDate(DATAP.Text) then
      mvalor:=mvalor+ValFloat(STG_DA.Cells[mColValDesc,x]);
   end;
DESC.Text := FormatFloat(mcasas, mvalor);

VALPAG.Text:=FormatFloat(mcasas,ValFloat(STG_DA.Cells[mColArec,x])
            -(ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text))
//            -(ValFloat(DESC.Text)+valfloat(DEVOL.Text)+ValFloat(VDESSGRU.Text))
            +ValFloat(JUROS.Text));

result:=true;
end;

procedure TFrm_AcCR.CUSBCOExit(Sender: TObject);
begin
CUSBCO.Text:=Formatfloat(mcasas,ValFloat(CUSBCO.Text));

end;

procedure TFrm_AcCR.PDESCSGRUExit(Sender: TObject);
begin
PDESCSGRU.Text:=FormatFloat(mcasas_pct, ValFloat(PDESCSGRU.Text));
VDESSGRU.Text :=FormatFloat(mcasas, (ValFloat(VALSGRU.Caption)*ValFloat(PDESCSGRU.Text))/100);
VALPAG.Text:=FormatFloat(mcasas,ValFloat(STG_DA.Cells[mColArec,STG_DA.Row])
            -(ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text))
//            -(ValFloat(DESC.Text)+valfloat(DEVOL.Text)+ValFloat(VDESSGRU.Text))
            +ValFloat(JUROS.Text));

end;

procedure TFrm_AcCR.VDESSGRUExit(Sender: TObject);
begin
VDESSGRU.Text :=FormatFloat(mcasas, ValFloat(VDESSGRU.Text));
VALPAG.Text:=FormatFloat(mcasas,ValFloat(STG_DA.Cells[mColArec,STG_DA.Row])
            -(ValFloat(DESC.Text)+ValFloat(VDESSGRU.Text))
//            -(ValFloat(DESC.Text)+valfloat(DEVOL.Text)+ValFloat(VDESSGRU.Text))
            +ValFloat(JUROS.Text));

end;

procedure TFrm_AcCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcCR.CB_FORMAPGTOExit(Sender: TObject);
var
mvalor: Real;
mqtd: integer;

begin
if CB_FORMAPGTO.ItemIndex<0 then
   begin
   with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(CB_FORMAPGTO.Text);
   end;
CB_FORMAPGTO.text:=CB_FORMAPGTO.Items.Strings[CB_FORMAPGTO.ItemIndex];

if (NUMCHQ.Focused) or (VALOR.Focused) then
   begin
   mPassouFpgto:=true;

   mvalor:=0;
   for mqtd:=1 to STG_DS.RowCount-1 do
      begin
      if Trim(STG_DS.Cells[mds_nomcli,mqtd])='' then
         continue;
      if STG_DS.Cells[mds_tipod,mqtd]='5' then
         mvalor:=mvalor-valFloat(STG_DS.Cells[mds_valpag,mqtd])
      else
         mvalor:=mvalor+valfloat(STG_DS.Cells[mds_valpag,mqtd]);
      end;
   for mqtd:=1 to STG_CHQ.RowCount-1 do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',valFloat(STG_CHQ.Cells[mchq_codfp,mqtd]),[]);
      if DM1.Qr_FPFPTIPO.asfloat=1 then
         mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end;
   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(fExtraiCodigoEntreChaves(CB_FORMAPGTO.Text)),[]);
   if DM1.Qr_FPFPTIPO.asfloat=1 then
      begin
      if mvalor<0 then
         mvalor:=mvalor*-1;
      end;
   VALOR.Text:=FormatFloat('#####0.00',mvalor);

   if DM1.Qr_FPFPCODBCO.AsFloat>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
         begin
         MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
         MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         mCodBco_Dup:=fTestaConta(mqtd);
         if (mCodBco_Dup>0) and (mCodBco_Dup<>valint(MCODCAI_PAD.Text)) then
            begin
            MCODCAI.Text:=Floattostr(mCodBco_Dup);
            if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
               MNOMCAI.Text:=DM1.Query1.Fields[0].AsString
            else
               MNOMCAI.Text:=MNOMCAI_PAD.Text;
            end
         else
            begin
            MCODCAI.Text:=MCODCAI_PAD.Text;
            MNOMCAI.Text:=MNOMCAI_PAD.Text;
            end;
         end;
      end
   else
      begin
      mCodBco_Dup:=fTestaConta(mqtd);
      if (mCodBco_Dup>0) and (mCodBco_Dup<>valint(MCODCAI_PAD.Text)) then
         begin
         MCODCAI.Text:=Floattostr(mCodBco_Dup);
         if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
            MNOMCAI.Text:=DM1.Query1.Fields[0].AsString
         else
            MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end
      else
         begin
         MCODCAI.Text:=MCODCAI_PAD.Text;
         MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end;
      end;


   if DM1.Qr_FPFPVINCULO.AsInteger=7 then
      begin
      lbl_numchq.Enabled:=true;
      NUMCHQ.Enabled    :=true;
      end
   else if (DM1.Qr_FPFPNUM.asfloat=1) or (DM1.Qr_FPFPNUM.asfloat=2) then
      begin
      lbl_numchq.Enabled:=True;
      lbl_bco.Enabled:=True;
      Label5.Enabled:=True;
      Label13.Enabled:=True;
      Label10.Enabled:=True;
      Label12.Enabled:=True;
      Label7.Enabled :=True;
      Label8.Enabled :=True;
      Label9.Enabled :=True;
      Label11.Enabled:=True;
      NUMCHQ.Enabled :=True;
      BANCO.Enabled  :=True;
      SERIE.Enabled  :=True;
      AGENCIA.Enabled:=True;
      CONTA.Enabled  :=True;
      DTDEP.Enabled  :=True;
      LComp.Enabled  :=True;
      COMP.Enabled   :=True;
      EMITENTE.Enabled:=True;
      CPF.Enabled    :=True;
      RG.Enabled     :=True;
      DTNAS.Enabled  :=True;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      COMP.Text      :='';
      DTDEP.Text     :=FormatDateTime(fdt2,date);
      EMITENTE.Text  :=DM1.Tb_CliCRAZAO.AsString;
      CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_CliCCPF.asfloat);
      RG.Text        :=DM1.Tb_CliCRG.AsString;
      if Not conta.Focused then
         NUMCHQ.SetFocus;
      end
   else
      begin
      lbl_numchq.Enabled:=False;
      lbl_bco.Enabled:=False;
      Label5.Enabled:=False;
      Label13.Enabled:=False;
      Label10.Enabled:=False;
      Label12.Enabled:=False;
      Label7.Enabled :=False;
      Label8.Enabled :=False;
      Label9.Enabled :=False;
      Label11.Enabled:=False;
      NUMCHQ.Enabled :=False;
      BANCO.Enabled  :=False;
      SERIE.Enabled  :=False;
      AGENCIA.Enabled:=False;
      CONTA.Enabled  :=False;
      DTDEP.Enabled  :=False;
      EMITENTE.Enabled:=False;
      CPF.Enabled    :=False;
      RG.Enabled     :=False;
      DTNAS.Enabled  :=False;
      LComp.Enabled  :=False;
      Comp.Enabled   :=False;


      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :='';
      EMITENTE.Text  :='';
      CPF.Text       :='';
      RG.Text        :='';
      DTNAS.Text     :='';
      COMP.Text      :='';
      VALOR.SetFocus;
      end;
   end;
if DM1.Qr_FPFPVINCULO.AsInteger=7 then
  VALOR.ReadOnly:=True
else
  VALOR.ReadOnly:=False;

end;

procedure TFrm_AcCR.bbMedPgVctoClick(Sender: TObject);
var
x: Integer;
begin

if Frm_MedVenPgt=nil then
   Application.CreateForm(TFrm_MedVenPgt, Frm_MedVenPgt)
else
   begin
   Frm_MedVenPgt.Free;
   Frm_MedVenPgt:=nil;
   Application.CreateForm(TFrm_MedVenPgt, Frm_MedVenPgt);
   end;
for x:=1 to STG_DS.RowCount do
   begin
   if valfloat(STG_DS.Cells[mds_valdup,x])=0 then
      Continue;
   Frm_MedVenPgt.Tb_Titulos.Append;
   Frm_MedVenPgt.Tb_TitulosVALOR.asfloat   :=ValFloat(STG_DS.Cells[mds_valpag,x]);
//   Frm_MedVenPgt.Tb_TitulosDATA_DOC.asfloat:=StrtoDate(STG_DS.Cells[mds_datap,x]);
   Frm_MedVenPgt.Tb_TitulosDATA_DOC.asfloat:=StrtoDate(STG_DS.Cells[mds_dtvcto,x]);
   Frm_MedVenPgt.Tb_Titulos.Post;
   end;

Frm_MedVenPgt.Tb_Documentos.Close;
Frm_MedVenPgt.Tb_Documentos.Open;
for x:=1 to STG_CHQ.RowCount do
   begin
   if valfloat(STG_CHQ.Cells[mchq_agencia,x])=0 then
      Continue;
   Frm_MedVenPgt.Tb_Documentos.Append;
   Frm_MedVenPgt.Tb_DocumentosVALOR.asfloat   :=ValFloat(STG_CHQ.Cells[mchq_valor,x]);
   if (trim(STG_CHQ.Cells[mchq_dtdep,x])='') or (trim(STG_CHQ.Cells[mchq_dtdep,x])='/  /') then
      Frm_MedVenPgt.Tb_DocumentosDATA_DOC.asfloat:=date
   else
      Frm_MedVenPgt.Tb_DocumentosDATA_DOC.asfloat:=StrtoDate(STG_CHQ.Cells[mchq_dtdep,x]);
   Frm_MedVenPgt.Tb_Documentos.Post;
   end;

if trim(STG_DS.Cells[mds_nomcli,1])<>'' then
   Frm_MedVenPgt.OBS.Text:=STG_DS.Cells[mds_codcli,1]+' - '+STG_DS.Cells[mds_nomcli,1];

Frm_MedVenPgt.ShowModal;
Frm_MedVenPgt.Free;
Frm_MedVenPgt:=nil;

end;

procedure TFrm_AcCR.MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI_PAD.Text:=fChamaBco(0,'frm_AcCR',Key);
   if trim(MCODCAI.Text)<>'' then
      MCODCAI_PADExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AcCR.MCODCAI_PADExit(Sender: TObject);
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
   MNOMCAI_PAD.Text:=DM1.Tb_BcoBCBANCO.AsString;
   if fsonumero(MLOTMOV.Text)=0 then
      begin
      MLOTMOV.Text:=FloatToStr(DM1.Tb_BcoBCLOTMOV.asfloat+1);
      MLOTMOV.Update;
      end;
   codcai:=ValInt(MCODCAI_PAD.Text);
   lotmov:=Valint(MLOTMOV.Text);
   pldr_nombco:=DM1.Tb_BcoBCBANCO.AsString;
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   fDeletaPadroes(-1,'_ACCR','mcodcai_pad_'+inttostr(codemp));
   fGravaPadroes(-1,'mcodcai_pad_'+inttostr(codemp) ,'Text'
                 ,'_ACCR',
                 MCODCAI_PAD.Text);


   end;

end;

procedure TFrm_AcCR.MLOTMOVExit(Sender: TObject);
begin
codcai:=ValInt(MCODCAI_PAD.Text);
lotmov:=Valint(MLOTMOV.Text);
pldr_nombco:=DM1.Tb_BcoBCBANCO.AsString;
MCODCAI.Text:=MCODCAI_PAD.Text;
MNOMCAI.Text:=MNOMCAI_PAD.Text;

end;

procedure TFrm_AcCR.MCODCAIExit(Sender: TObject);
begin
MCODCAI.Text:=fdeixanum(MCODCAI.Text);
if fsonumero(MCODCAI.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Caixa/Banco válido',0,['0'],0);
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MCODCAI.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,MCODCAI.Text) then
   begin
   fmensagem('Banco Não Cadastrado!',0,['0'],0);
   MCODCAI.SetFocus;
   end
else
   begin
   MNOMCAI.Text:=DM1.Tb_BcoBCBANCO.AsString;
   end;


end;

procedure TFrm_AcCR.MCODCAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI.Text:=fChamaBco(0,'frm_AcCR',Key);
   if trim(MCODCAI.Text)<>'' then
      MCODCAIExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AcCR.spn_mandupClick(Sender: TObject);
var
mcodemp_ant: Integer;
begin
mcodemp_ant:=codemp;
if valint(MCODEMP.Text)<>0 then
   codemp:=valint(MCODEMP.Text);
testeform := TFrm_AcCR(FindGlobalComponent('form_dar_accr'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_dar, form_dar_accr);

dar_ori:='form_dar_accr';
form_dar_accr.PC1.ActivePage:=form_dar_accr.tsTab;
if form_dar_accr.ShowModal=mrOk then
   begin
   if form_dar_accr.Tb_DarCRCODCLI.AsFloat>0 then
      begin
      CODCLI.Text:=form_dar_accr.Tb_DarCRCODCLI.AsString;
      CODCLIExit(Self);
      MCODEMP.Text:=form_dar_accr.Tb_DarCRCODEMP.AsString;
      NUMDUP.Text:=form_dar_accr.Tb_DarCRNUMERO.AsString;
      DESD.Text:=form_dar_accr.Tb_DarCRDESD.AsString;
      TIPOD.Text:=form_dar_accr.Tb_DarCRCODEMP.AsString;
      DTEMIS.Text:=FormatDateTime(fdt2, form_dar_accr.Tb_DarCRDTEMIS.AsdateTime);
      fcarregadup(0);
      end;
   end;
{
if DM1.Tb_Dar.Filtered then
   begin
   form_dar_accr.Tb_Dar.Filter:='';
   form_dar_accr.Tb_Dar.Filtered:=false;
   end;
}
codemp:=mcodemp_ant;
freeandnil(form_dar_accr);
end;

procedure TFrm_AcCR.CB_JUROSEnter(Sender: TObject);
begin
mboolean:=CB_JUROS.Checked;
end;

procedure TFrm_AcCR.CB_JUROSExit(Sender: TObject);
begin
if CB_JUROS.Checked<>mboolean then
   fSalvarPadrao(1);
end;

procedure TFrm_AcCR.PCTDESCExit(Sender: TObject);
begin
if trim(PCTDESC.Text)='0' then
   DESC.Text:='';
PCTDESC.Text:=Formatfloat(mcasas_pct,ValFloat(PCTDESC.Text));
if valfloat(PCTDESC.Text)<>0 then
   DESC.Text:=FormatFloat(mcasas, (ValFloat(STG_DA.Cells[mColArec,STG_DA.Row])*valfloat(PCTDESC.Text))/100);
DESCExit(Self);

end;

function TFrm_AcCr.fTestaConta(pTipo: Integer): Real;
var
x: Integer;
begin
mCodBco_Dup:=0;
for x:=1 to STG_DS.RowCount do
   begin
   if ValInt(STG_DS.Cells[mds_codbco_dup,x-1])>mCodBco_Dup then
      mCodBco_Dup:=valint(STG_DS.Cells[mds_codbco_dup,x-1]);
   end;
result:=mcodbco_Dup;
end;
function TFrm_AcCr.fTestaDadosCheques(pCodCli,pConta: Real): Boolean;
begin
DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CHNUMERO,CHBANCO,CHSERIE,CHCOMP,CHEMIT, '
                  +' CHCPF, CHRG, CHCC,CHDTNAS,CHAGENCIA from CADCHQ where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',
                  '(CHCODEMP=0'+IntToStr(codemp)+' or CHCODEMP=0'
                  +IntToStr(iif(codemp>100,codemp-100,codemp+100))+') and ')
                  +' CHCODCLI=0'+floatToStr(pcodcli)
                  +' order by CHDTEMIS DESC ');
try
   DM1.Query1.open;
except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(DM1.Query1,3758,'s_mcodp','CADDAR');
   end;
   end;
While not DM1.Query1.Eof do
   begin
   if fsonumero(DM1.Query1.FieldByName('CHCC').AsString)=pconta then
      begin
      if trim(BANCO.text)='' then
         BANCO.Text:=DM1.Query1.fieldbyName('CHBANCO').AsString;
      if trim(SERIE.text)='' then
         SERIE.Text:=DM1.Query1.fieldbyName('CHSERIE').AsString;
      if trim(AGENCIA.text)='' then
         AGENCIA.Text:=DM1.Query1.fieldbyName('CHAGENCIA').AsString;
      if trim(COMP.text)='' then
         COMP.Text:=DM1.Query1.fieldbyName('CHCOMP').AsString;
      EMITENTE.Text:=DM1.Query1.fieldbyName('CHEMIT').AsString;

      if length(DM1.Query1.fieldbyName('CHCPF').AsString)>11 then
         CPF.Text:=FormatFloat('00"."000"."000"/"0000"-"00',
                               DM1.Query1.fieldbyName('CHCPF').AsFloat)
      else
         CPF.Text:=FormatFloat('000"."000"."000"-"00',
                              DM1.Query1.fieldbyName('CHCPF').AsFloat);
      RG.Text:=DM1.Query1.fieldbyName('CHRG').AsString;
      if (DM1.Query1.fieldbyName('CHDTNAS').IsNull) or
         (DM1.Query1.fieldbyName('CHDTNAS').AsDateTime<pdatanula) then
      else
         DTNAS.Text:=FormatDateTime(fdt2,
                                DM1.Query1.fieldbyName('CHDTNAS').AsDateTime);
      result:=true;
      break;
      end;
   DM1.Query1.Next;
   end;
result:=true;
end;
procedure TFrm_AcCR.CPFEnter(Sender: TObject);
begin
CPF.Text:=fdeixanum(CPF.Text);
end;

procedure TFrm_AcCR.VALOREnter(Sender: TObject);
begin
if not mPassouFpgto then
   begin
   if CB_FORMAPGTO.Visible then
      CB_FORMAPGTOExit(Self)
   else
      rg_formaExit(Self);
   end;

end;
function TFrm_AcCr.fAccrRestPadrao(pTipo: Integer): Boolean;
begin
if flfilpad(0,'_ACCR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLNUMDUP',[]) then
      mColNumdup:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLPARC',[]) then
      mColParc:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDUP',[]) then
      mColDup:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDTEMIS',[]) then
      mColDtemis:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLVALOR',[]) then
      mColValor:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDTVCTO',[]) then
      mColDtVcto:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLVALREC',[]) then
      mColValRec:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLVALDESC',[]) then
      mColValDesc:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDTDESC',[]) then
      mColDtDesc:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLAREC',[]) then
      mColArec:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLNOMBCO',[]) then
      mColNomBco:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLVEND',[]) then
      mColVend:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCAIXA',[]) then
      mColCaixa:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCODEMP',[]) then
      mColCodEmp:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLJURDIA',[]) then
      mColJurdia:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLATRASO',[]) then
      mColAtraso:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDESCDIA',[]) then
      mColDescDia:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLDEVOL',[]) then
      mColDevol:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCUSBCO',[]) then
      mColCusBco:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLTOTCGRU',[]) then
      mColTotCGru:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLTOTSGRU',[]) then
      mColTotSGru:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCODFPGTO',[]) then
      mColCodFpgto:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLNOMFPGTO',[]) then
      mColNomFpgto:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCHAVE',[]) then
      mColChave:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCODBCO',[]) then
      mColCodBco:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLOBS',[]) then
      mColObs:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLNFACUM',[]) then
      mColnfAcum:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLBLOQUEIOPDV',[]) then
      mColBloqueioPDV:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCHAVEID',[]) then
      mColChave_id:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLCHAVEID_ANO',[]) then
      mColChave_id_ano:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_JUROS',[]) then
      CB_JUROS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_BANCAI',[]) then
      cb_bancai.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


   end;


STG_DA.RowCount:=2;
STG_DA.Cells[mColNumdup,00]  :='Número';
STG_DA.Cells[mColParc,00]    :='Parc';
STG_DA.Cells[mColDup,00]     :='Tp';
STG_DA.Cells[mColDtemis,00]  :='Emissão';
STG_DA.Cells[mColValor,00]   :='Valor';
STG_DA.Cells[mColDtVcto,00]  :='Vencimento';
STG_DA.Cells[mColValRec,00]  :='Recebido';
STG_DA.Cells[mColValDesc,00] :='Desconto';
STG_DA.Cells[mColDtDesc,00]  :='Data c/desc';
STG_DA.Cells[mColArec,00]    :='a receber';
STG_DA.Cells[mColNomBco,00]  :='Banco';
STG_DA.Cells[mColVend,00]    :='Vendedor';
STG_DA.Cells[mColCaixa,00]   :='Caixa/ECF';
STG_DA.Cells[mColCodEmp,00]  :='Empresa';
STG_DA.Cells[mColJurDia,00]  :='Juros dia';
STG_DA.Cells[mColAtraso,00]  :='Atraso';
STG_DA.Cells[mColDescDia,00] :='Desc/dia';
STG_DA.Cells[mColDevol,00]   :='Devoluções';
STG_DA.Cells[mColCusBco,00]  :='Custo Bancario';
STG_DA.Cells[mColTotCGru,00] :='Total c/Grupo';
STG_DA.Cells[mColTotSGru,00] :='Total s/Grupo';
STG_DA.Cells[mColCodFpgto,00]:='Cod.Fpgto';
STG_DA.Cells[mColNomFpgto,00]:='Nome Fpgto';
STG_DA.Cells[mColChave,00]   :='Chave';
STG_DA.Cells[mColCodBco,00]  :='Cod.Bco';
STG_DA.Cells[mColObs,00]  :='Observacoes';
STG_DA.Cells[mColnfAcum,00]  :='NF de Origem';
STG_DA.Cells[mColBloqueioPDV,00]  :='Data/Hora Bloqueio PDV';

STG_DA.Cells[mColchave_id,00]  :='Chave ID';
STG_DA.Cells[mColchave_id_ano,00]  :='Ano';


STG_DA.ColWidths[mColNumdup]  :=70;
STG_DA.ColWidths[mColParc]    :=20;
STG_DA.ColWidths[mColDup]     :=20;
STG_DA.ColWidths[mColDtemis]  :=70;
STG_DA.ColWidths[mColValor]   :=70;
STG_DA.ColWidths[mColDtVcto]  :=70;
STG_DA.ColWidths[mColValRec]  :=70;
STG_DA.ColWidths[mColValDesc] :=70;
STG_DA.ColWidths[mColDtDesc]  :=70;
STG_DA.ColWidths[mColArec]    :=70;
STG_DA.ColWidths[mColNomBco]  :=70;
STG_DA.ColWidths[mColVend]    :=50;
STG_DA.ColWidths[mColCaixa]   :=50;
STG_DA.ColWidths[mColCodEmp]  :=50;
STG_DA.ColWidths[mColJurDia]  :=70;
STG_DA.ColWidths[mColAtraso]  :=50;
STG_DA.ColWidths[mColDescDia] :=70;
STG_DA.ColWidths[mColDevol]   :=70;
STG_DA.ColWidths[mColCusBco]  :=70;
STG_DA.ColWidths[mColTotCGru] :=70;
STG_DA.ColWidths[mColTotSGru] :=70;
STG_DA.ColWidths[mColCodFpgto]:=70;
STG_DA.ColWidths[mColNomFpgto]:=200;
STG_DA.ColWidths[mColChave]   :=50;
STG_DA.ColWidths[mColCodBco]  :=50;
STG_DA.ColWidths[mColObs]     :=50;
STG_DA.ColWidths[mColNFAcum]  :=70;
STG_DA.ColWidths[mColBloqueioPDV]  :=100;


STG_DA.ColWidths[mColchave_id_ano]     :=50;
STG_DA.ColWidths[mColchave_id]     :=50;



result:=true;
end;
procedure TFrm_AcCR.SBnAjustarColClick(Sender: TObject);
var
x: Integer;
begin

if Frm_Accr_AjustaColunas=nil then
   Application.CreateForm(TFrm_Accr_AjustaColunas, Frm_Accr_AjustaColunas)
else
   begin
   Frm_Accr_AjustaColunas.Free;
   Frm_Accr_AjustaColunas:=nil;
   Application.CreateForm(TFrm_Accr_AjustaColunas, Frm_Accr_AjustaColunas);
   end;

for x:=0 to 26 do
   begin
   if x=mColNumdup then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolnumdup,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mcolnumdup);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLNUMDUP';
      end
   else if x=mColParc then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolparc,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColParc);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLPARC';
      end
   else if x=mColDup then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcoldup,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDup);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDUP';
      end
   else if x=mColDtemis then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolDtemis,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDtemis);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDTEMIS';
      end
   else if x=mColValor then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolvalor,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColValor);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLVALOR';
      end
   else if x=mColDtVcto then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolDtVcto,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDtVcto);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDTVCTO';
      end
   else if x=mColValRec then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolValRec,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColValRec);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLVALREC';
      end
   else if x=mColValDesc then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolValDesc,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColValDesc);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLVALDESC';
      end
   else if x=mColDtDesc then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcoldtDesc,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDtDesc);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDTDESC';
      end
   else if x=mColArec then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolArec,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColArec);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLAREC';
      end
   else if x=mColNomBco then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolNomBco,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColNomBco);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLNOMBCO';
      end
   else if x=mColVend then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolVend,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColVend);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLVEND';
      end
   else if x=mColCaixa then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolCaixa,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColCaixa);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCAIXA';
      end
   else if x=mColCodEmp then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolCodEmp,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColCodEmp);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCODEMP';
      end
   else if x=mColJurdia then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolJurDia,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColJurdia);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLJURDIA';
      end
   else if x=mColAtraso then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolAtraso,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColAtraso);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLATRASO';
      end
   else if x=mColDescDia then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolDescDia,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDescDia);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDESCDIA';
      end
   else if x=mColDevol then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolDevol,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColDevol);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLDEVOL';
      end
   else if x=mColCusBco then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolCusBco,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColCusBco);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCUSBCO';
      end
   else if x=mColTotCGru then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolTotCGru,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColTotCGru);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLTOTCGRU';
      end
   else if x=mColTotSGru then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolTotSGru,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColTotSGru);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLTOTSGRU';
      end
   else if x=mColCodFpgto then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolCodFpgto,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColCodFpgto);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCODFPGTO';
      end
   else if x=mColNomFpgto then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolNomFpgto,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColNomFpgto);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLNOMFPGTO';
      end
   else if x=mColChave then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolChave,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColChave);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCHAVE';
      end
   else if x=mColCodBco then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolCodBco,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColCodBco);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCODBCO';
      end
   else if x=mColObs then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolObs,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColObs);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLOBS';
      end
   else if x=mColnfAcum then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolNFAcum,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColNFAcum);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLNFACUM';
      end
   else if x=mColBloqueioPDV then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolbloqueioPDV,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColBloqueioPDV);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLBLOQUEIOPDV';

      end
   else if x=mColchave_id then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolchave_id,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mcolchave_id);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCHAVE_ID';
      end
   else if x=mColchave_id_ano then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolchave_id_ano,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mcolchave_id_ano);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLCHAVE_ID_ANO';
      end;


   end;
if Frm_AcCr_AjustaColunas.ShowModal=mrOk then
   begin
   fSalvarPadrao(0);
   fAccrRestPadrao(0);
   end;
Frm_AcCr_AjustaColunas.Free;
Frm_Accr_AjustaColunas:=nil;



end;
function tFrm_AcCr.fSalvarPadrao(pTipo: Integer): Boolean;
var
x: Integer;
begin
if ptipo=1 then
   fDeletaPadroes(0,'_ACCR','CB_JUROS')
else if ptipo=2 then
   fDeletaPadroes(0,'_ACCR','CB_BANCAI')
else
   fDeletaPadroes(0,'_ACCR','');

if (ptipo<>1) and (ptipo<>2) then
   begin
   for x:=0 to Frm_Accr_AjustaColunas.STG1.RowCount-1 do
      begin
      if trim(Frm_Accr_AjustaColunas.STG1.Cells[01,x])='' then
         Continue;
{
      ShowMessage(Frm_Accr_AjustaColunas.STG1.Cells[01,x]
                    +' '+Frm_Accr_AjustaColunas.STG1.Cells[02,x]);
      break;
}
      fGravaPadroes(0, Frm_Accr_AjustaColunas.STG1.Cells[02,x] ,'Text'
                 ,'_ACCR',
                 Frm_Accr_AjustaColunas.STG1.Cells[01,x]);
      end;
   end;
if CB_JUROS.Checked then
   fGravaPadroes(0,'CB_JUROS'   ,'checked'   ,'_ACCR',iif(CB_JUROS.Checked,'true','false'));

if cb_bancai.Checked then
   fGravaPadroes(0,'CB_BANCAI'   ,'checked'   ,'_ACCR',iif(cb_bancai.Checked,'true','false'));

result:=true;

end;
procedure TFrm_AcCR.FormActivate(Sender: TObject);
begin
ftestacaixa(0);
flparldr(0,'CADDAR0');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.AsString)='') or (Trim(DM1.Par_LDRCODDEP.AsString)='') then
   begin
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.AsString;
   pldr_codccu:=DM1.Par_LDRCODCC.AsString;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.AsString;
   pldr_coddep:=DM1.Par_LDRCODDEP.AsString;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.AsString) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.AsString;
   if flcadccu(1,0,DM1.Par_LDRCODCC.AsString) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.AsString;
      pldr_natdc :=DM1.Tb_CCUCCNAT.AsString;
      end;
   end;
if codusr=1111 then
  cb_bancai.Visible:=true
else
  cb_bancai.Visible:=false;

end;

procedure TFrm_AcCR.DATABXExit(Sender: TObject);
begin
if Trim(DATABX.Text)='/  /' then
   DATABX.Text:=FormatDateTime(fdt2, date);

try
   DATABX.Text:=FormatDateTime(fdt2,StrToDate(DATABX.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   DATABX.SetFocus;
   exit;
   end;

end;



function TFrm_AcCr.fCreditaNC(pGrid: Integer): Real;
var
mNumdup: Real;
mParc: String;
begin

IF flparldr(0,'CADDARN') then
   begin
   mcodccu:=DM1.Par_LDRCODCC.AsString;
   mcoddep:=DM1.Par_LDRCODDEP.AsString;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.AsString) then
      mnomdep:=DM1.Tb_Dep_LdrDNOME.AsString;
   if flcadccu(1,0,DM1.Par_LDRCODCC.AsString) then
      begin
      mnomccu:=DM1.Tb_CCUCCNOME.AsString;
      mnatdc :=DM1.Tb_CCUCCNAT.AsString;
      end;
   mNumdup:=fSonumero(Frm_ACCR.STG_CHQ.Cells[mchq_numchq,pGrid]);
   if mNumdup=0 THEN
      mNumdup:=ValFloat(Frm_ACCR.STG_CHQ.Cells[mchq_codcli,pGrid]);
   mdesc_mov:='Nota de Credito No. '+FloatToStr(mNumdup);

   mParc:='A';
   mcodldr:=fCriarLDR(codemp,

                      0, // Valor Real
                      ValFloat(Frm_ACCR.STG_CHQ.Cells[mchq_valor,pGrid]) // Valor previsto
                      ,ValFloat(Frm_ACCR.STG_CHQ.Cells[mchq_codcli,pGrid])  // Codigo Cliente
                      ,DM1.Qr_FPFPVINCULO.asfloat

                      ,StrtoDate(Frm_ACCR.STG_CHQ.Cells[mchq_databx,pGrid]) // data prevista
                      ,pdatanula // data real
                      ,StrtoDate(Frm_ACCR.STG_CHQ.Cells[mchq_databx,pGrid])  // data Referencia
                     ,pdatanula // data de alteracao

                     ,mcodccu
                     ,mcoddep
                     ,mnatdc
                     ,mdesc_mov
                     ,'CH-'+Frm_ACCR.STG_CHQ.Cells[mchq_numchq,pGrid]
                     ,DM1.Qr_FPFPDESC.AsString
                     ,'CL'
                     ,MNOMCAI_PAD.Text
               ,mnomdep
               ,mnomccu
               ,Frm_ACCR.STG_CHQ.Cells[mchq_emitente,pGrid] // nome do cliente
               ,Frm_ACCR.STG_DS.Cells[mds_obs,1] //observação da duplicata

               ,1 //locdep
               ,valInt(MCODCAI_PAD.Text)
               ,lotmov
               ,0 // status
               ,05); // origem



   While true do
      begin
      if flcaddar(8,codemp,0,0,0
                      ,FloatToStr(mnumdup),mParc
                      ,'5',StrToDate(frm_ACCR.STG_CHQ.Cells[mchq_databx,pGrid]),'' ) then
         mParc:=CHAR(INTEGER(mParc)+1)
      else
         break;
      end;



   DM1.Tb_DAR.Append;
   DM1.Tb_DarCRCODEMP.asfloat:=codemp;
   DM1.Tb_DarCRNUMERO.asfloat:=mNumdup;
   DM1.Tb_DarCRDESD.AsString  :=mParc;
   DM1.Tb_DarCRDUP.asfloat   :=5;

   DM1.Tb_DarCRNUMPARC.asfloat  :=1;
   DM1.Tb_DarCRQTDPARC.asfloat  :=1;
   DM1.Tb_DarCRCODVEN.asfloat   :=mCodVen;
   DM1.Tb_DarCRCODCLI.asfloat   :=ValFloat(Frm_ACCR.STG_CHQ.Cells[mchq_codcli,pGrid]);
   DM1.Tb_DarCRDTEMIS.asfloat   :=StrtoDate(Frm_ACCR.STG_CHQ.Cells[mchq_databx,pGrid]);
   DM1.Tb_DarCRVALOR.asfloat    :=ValFloat(Frm_ACCR.STG_CHQ.Cells[mchq_valor,pGrid]);
   DM1.Tb_DarCRDTVCTO.asfloat   :=StrtoDate(Frm_ACCR.STG_CHQ.Cells[mchq_databx,pGrid]);
   DM1.Tb_DarCRCODLDR.asfloat   :=mCodLdr;
   DM1.Tb_DarCRCODCTA.AsString:=MCODCAI_PAD.Text;
   DM1.Tb_DarCRNOMCTA.AsString:=MNOMCAI_PAD.Text;
   DM1.Tb_DarCRCODDEP.AsString:=mcoddep;
   DM1.Tb_DarCRNOMDEP.AsString:=mnomdep;
   DM1.Tb_DarCRCODCC.AsString :=mcodccu;
   DM1.Tb_DarCRNOMCC.AsString :=mnomccu;
   DM1.Tb_DarCRNATDC.AsString :=mnatdc;

   DM1.Tb_DarCROBS.AsString   :='Gerado Automaticamente. Troco';
   DM1.Tb_DarCRLOTE.asfloat     :=mloteBx;
   DM1.Tb_Dar.Post;
   end;
result:=mCodLdr;
end;
procedure TFrm_AcCR.cb_bancaiExit(Sender: TObject);
begin
fSalvarPadrao(2);
end;

//function TFrm_AcCR.fLerContas(out pQuery_Dup: tQuery; pCodEmp: Integer; pCodecf,pDup: String; pCodcli,pNumero: real; pDesd: String; pDtemis: tDateTime): boolean;
// function TFrm_AcCR.fLerContas(out pQuery_Dup: tQuery; pChaveIdodEmp: Integer; pCodecf,pDup: String; pCodcli,pNumero: real; pDesd: String; pDtemis: tDateTime): boolean;

function TFrm_AcCR.fLerContas(out pQuery_Dup: tQuery; pChaveId_ano,pChave_id: integer): boolean;


begin
if pQuery_Dup=nil then
   begin
   pQuery_Dup:=TQuery.create(nil);
   pQuery_Dup.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   end;
result:=true;
pQuery_Dup.close;
pQuery_Dup.SQL.clear;
pQuery_Dup.SQL.add('Select CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
                  +' CRVALOR,CRDTVCTO,CRVALPAG,CRDESCF,'
                  +' CRDTDESCF, CRCODBCO,CRNPED,CRCODECF,CRCODEMP,CRDESCD,'
                  +' CRJURD,CRMULTA,CRDEVOL,CRCUSBCO,CRTOTCGRU,CRTOTSGRU,'
                  +' CRNFACUM,CRJUROS,CRDESC,CRCODFPGTO,CRNOMFPGTO '
                  +' ,CRCODVEN,CRCODCTA,CROBS '
                  +',CRDATHORBLOQ_BAIXA,CRCODCLI,CRCODVEN '
                  +',CRICMSR,CRTOTIPI '
                  +',CRLOTSEQ_CP'
                 +',CRSTATUS,CRVALPAG,CRDESC,CRMULTA,CRJUROS '
                  +',CRCODLDR,CRLOTSEQ_FC,CRNPED,CRORDEM '
                  +',CRCODCC,CRNOMCC,CRNATDC,CRCODDEP,CRNOMDEP,CRDESCMV,CRNATDC '
                  +',CRCHAVE_ID,CRCHAVE_ID_ANO'

                  +' FROM CADDAR where CRSTATUS<>9 ');

 pQuery_Dup.SQL.Add(' and CRCHAVE_ID_ANO='+Inttostr(pchaveId_ano));
 pQuery_Dup.SQL.Add(' and CRCHAVE_ID='+Inttostr(pchave_Id));

 {
if pCodemp<>0 then
   begin
   pQuery_Dup.SQL.Add(' and CRCODEMP='+Inttostr(pcodemp));
   end;


if pdup<>'' then
   begin
   pQuery_Dup.SQL.Add(' and CRDUP='+fdeixanum(pdup));
   end;
if pdtemis>pdatanula then
   pQuery_Dup.sql.Add(fFormatdatetimeParaConsulta_unica('CRDTEMIS', pDtemis));



if pCodecf<>'' then
   pQuery_Dup.sql.Add(' and CRCODECF='+fdeixanum(pcodecf));

if pNumero<>0 then
   pQuery_Dup.sql.Add(' and CRNUMERO='+floattostr(pNumero));

if pCodcli<>0 then
   pQuery_Dup.sql.Add(' and CRCODCLI='+floattostr(pCodCli));

if pDesd<>'' then
   begin
   pQuery_Dup.SQL.Add(' and CRDESD='+QuotedStr(pDesd));
   end;
 }
try
   pQuery_Dup.open;
except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(pQuery_Dup,4079,'s_mcodp','CADAGRU_PRO');
   end;
   end;

end;



function TFrm_AcCR.fAtualizarDup(pDadosDup: tdadosDup): Boolean;
var
query_atudup: TQuery;
begin
query_atudup:=TQuery.create(nil);
query_atudup.databasename:=DM1.sg_assoc.databasename;
query_atudup.sql.add('Update caddar SET CRVALPAG=NVL(CRVALPAG,0)+:VALPAGO '
                    +',CRJUROS=NVL(CRJUROS,0)+:JUROS '
                    +',CRDEVOL=NVL(CRDEVOL,0)+:DEVOL '
                    +',CRDESC=NVL(CRDESC,0)+:DESC '
                    +',CRCUSBCO=NVL(CRCUSBCO,0)+:CUSBCO '
                    +',CRCODCTA=:CODCTA '
                    +',CRUSRBX=:USRBX '
                    +',CRLOTSEQ_LB=:PLOTSEQ_LB '
                    +',CRLOTE=:PLOTE '
                    +',CRNR=:PNR '
                    +',CRSTATUS=CASE WHEN (NVL(CRVALPAG,0) + :VALPAGO + CRDESC +  :DESC +:DEVOL ) - ( :JUROS  + CRJUROS )   >=CRVALOR THEN 2 ELSE 1 END '
                    +',CRCODLDR=:CODLDR '
                    +',CRRECFRENTE=:RECFRENTE '
                    +',CRNOMCTA=:NOMCTA ');
if mDadosDup.pdup<>5 then
   query_atudup.sql.add(',CRNOMCC=:NOMCC '
                    +',CRCODCC=:CODCC '
                    +',CRNATDC=:NATDC ');
query_atudup.sql.add(',CRNOMDEP=:NOMDEP '
                    +',CRCODDEP=:CODDEP '
                    +',CRDTBX=:DTBX '
                    +',CRDTPAG=:DTPAG '
                    +' where CRCHAVE_ID=:CHAVE_ID '
                    +' AND CRCHAVE_ID_ANO=:CHAVE_ID_ANO ');
{

                    NUMERO '
                    +' AND CRDESD=:DESD '
                    +' AND CRDUP=:DUP '
                    +' AND CRDTEMIS=:DTEMIS '
                    +' AND CRNPED=:NPED '
                    +' AND CRCODECF=:CODECF ');

 }

query_atudup.ParamByName('VALPAGO').AsFloat:= mDadosDup.pvalpago;
query_atudup.ParamByName('JUROS').AsFloat:= mDadosDup.pjuros;
query_atudup.ParamByName('DEVOL').AsFloat:= mDadosDup.pdevol;
query_atudup.ParamByName('DESC').AsFloat:= mDadosDup.pdesc;
query_atudup.ParamByName('CUSBCO').AsFloat:= mDadosDup.pcusbco;
query_atudup.ParamByName('CODCTA').AsFloat:= mDadosDup.pcodcta;
query_atudup.ParamByName('USRBX').AsFloat:= mDadosDup.pusrbx;
query_atudup.ParamByName('PLOTSEQ_LB').AsFloat:= mDadosDup.plotseq_lb;
query_atudup.ParamByName('PLOTE').AsFloat:= mDadosDup.plote;
query_atudup.ParamByName('PNR').AsFloat:= mDadosDup.pnr;
query_atudup.ParamByName('CODLDR').AsFloat:= mDadosDup.pcodldr;

query_atudup.ParamByName('RECFRENTE').AsFloat:= mDadosDup.precfrente;
query_atudup.ParamByName('NOMCTA').AsString:= mDadosDup.pnomcta;
if mDadosDup.pdup<>5 then
   begin
   query_atudup.ParamByName('NOMCC').AsString:= mDadosDup.pnomcc;
   query_atudup.ParamByName('CODCC').AsString:= mDadosDup.pcodcc;
   query_atudup.ParamByName('NATDC').AsString:= mDadosDup.pnatdc;
   end;
query_atudup.ParamByName('NOMDEP').AsString:= mDadosDup.pnomdep;
query_atudup.ParamByName('CODDEP').AsString:= mDadosDup.pcoddep;
query_atudup.ParamByName('DTBX').AsDateTime:= mDadosDup.pdtbx;
query_atudup.ParamByName('DTPAG').AsDateTime:= mDadosDup.pdtpag;
query_atudup.ParamByName('CHAVE_ID').AsFloat:= mDadosDup.pChaveId;
query_atudup.ParamByName('CHAVE_ID_ANO').AsFloat:= mDadosDup.pChaveIdAno;


{query_atudup.ParamByName('DESD').AsString:= mDadosDup.pdesd;
query_atudup.ParamByName('DUP').AsFloat:= mDadosDup.pdup;
query_atudup.ParamByName('DTEMIS').AsDateTime:= mDadosDup.pdtemis;
query_atudup.ParamByName('NPED').AsFloat:= mDadosDup.pnped;
query_atudup.ParamByName('CODECF').AsFLOAT:= mDadosDup.pcodecf;
}
try
   query_atudup.execsql;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_atudup,4196,'SGE' + E.MESSAGE ,'CADDAR');
   end;
   end;

query_atudup.Close;
freeandnil(query_atudup);

end;






end.


