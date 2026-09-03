unit S_SitCre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,db,dbtables,func,s_DM1, Grids,
  DBGrids,lerarq,S_Cli,S_Ven,S_Usr, Mask,S_Impres,Rdprint, ComCtrls, S_SelEmp,
  CheckLst;

type
  TFrm_SitCre = class(TForm)
    Tb_Dup: TQuery;
    Tb_DupCRCODEMP: TFloatField;
    Tb_DupCRNUMERO: TFloatField;
    Tb_DupCRDESD: TStringField;
    Tb_DupCRDUP: TFloatField;
    Tb_DupCRDTEMIS: TDateTimeField;
    Tb_DupCRDTVCTO: TDateTimeField;
    Tb_DupCRDTPAG: TDateTimeField;
    Tb_DupCRDTBX: TDateTimeField;
    Tb_DupCRCODVEN: TFloatField;
    Tb_DupCRVALOR: TFloatField;
    Tb_DupCRSTATUS: TFloatField;
    Tb_DupCRCODBCO: TFloatField;
    Tb_DupCRCODCLI: TFloatField;
    Src_Dup: TDataSource;
    Tb_Dupnombco: TStringField;
    Tb_Duptipodup: TStringField;
    Qr_Chq: TQuery;
    Qr_ChqCHCODEMP: TFloatField;
    Qr_ChqCHNUMERO: TFloatField;
    Qr_ChqCHBANCO: TFloatField;
    Qr_ChqCHSERIE: TStringField;
    Qr_ChqCHVALOR: TFloatField;
    Qr_ChqCHDTEMIS: TDateTimeField;
    Qr_ChqCHDTDEP: TDateTimeField;
    Qr_ChqCHCODCLI: TFloatField;
    Src_Chq: TDataSource;
    Qr_Ped: TQuery;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1ORDEM: TFloatField;
    Qr_PedP1CODVEN: TFloatField;
    Qr_PedP1TOTALL: TFloatField;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedP1DATAP: TDateTimeField;
    Src_Ped: TDataSource;
    Tb_DupCRVALPAG: TFloatField;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Valped: TLabel;
    Label12: TLabel;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    QtdDupV: TLabel;
    TotDupV: TLabel;
    TotDupA: TLabel;
    QtdDupA: TLabel;
    LnTotDeb: TLabel;
    Label3: TLabel;
    QtdDup: TLabel;
    TotDup: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    QtdDupPag: TLabel;
    TotDupPag: TLabel;
    Label4: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    AtrasoMax: TLabel;
    Label28: TLabel;
    GroupBox7: TGroupBox;
    Label13: TLabel;
    Label8: TLabel;
    QtdChqP: TLabel;
    TotChqP: TLabel;
    TotChqD: TLabel;
    QtdChqD: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label29: TLabel;
    QtdChqdP: TLabel;
    TotchqDP: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    qtdjurab: TLabel;
    TotjurAb: TLabel;
    Label16: TLabel;
    Label30: TLabel;
    qtdjurpag: TLabel;
    TotJurPag: TLabel;
    Label6: TLabel;
    Label22: TLabel;
    lbl_dtucompra: TLabel;
    Label23: TLabel;
    lbl_pcompra: TLabel;
    Label26: TLabel;
    lbl_lcred: TLabel;
    Tb_Dupatraso: TFloatField;
    Label34: TLabel;
    lbl_limdisp: TLabel;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    lb_Sit: TLabel;
    gbObsCli: TGroupBox;
    Memo_obs: TMemo;
    Panel2: TPanel;
    bbSalvar: TBitBtn;
    obscli01: TEdit;
    obscli02: TEdit;
    obscli03: TEdit;
    obscli04: TEdit;
    obscli05: TEdit;
    Tb_Dupsaldodev: TFloatField;
    Tb_DupCRJUROS: TFloatField;
    Tb_DupCRDESC: TFloatField;
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsOutrosFiltros: TTabSheet;
    Panel3: TPanel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    NOMVEN: TEdit;
    CODVEN: TEdit;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    BBAPLICAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    RG_TIPOPED: TCheckListBox;
    sb_SalvarPadrao: TSpeedButton;
    RG_TIPO: TRadioGroup;
    Label35: TLabel;
    lbl_vlrmaiorcompra: TLabel;
    lbl_dtmaiorcompra: TLabel;
    lbl_medcompramen: TLabel;
    Label37: TLabel;
    lbl_tipcob: TLabel;
    Tb_DupCRDEVOL: TFloatField;
    Qr_PedP1TIPO: TFloatField;
    Qr_Pedtipoped: TStringField;
    Label36: TLabel;
    Label38: TLabel;
    lbl_qtdPedPen: TLabel;
    totPedPen: TLabel;
    Tb_DupCRTITPROT: TFloatField;
    Label31: TLabel;
    QtdNC: TLabel;
    TotNC: TLabel;
    Label33: TLabel;
    lbl_qtdEmpPen: TLabel;
    Label42: TLabel;
    totEmpPen: TLabel;
    Label39: TLabel;
    lbl_qtdTitProt: TLabel;
    Label40: TLabel;
    totTitProt: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    QtdOrcPen: TLabel;
    TotOrcPen: TLabel;
    tsConfigMaster: TTabSheet;
    CB_CRECCHAVEPED: TCheckBox;
    Tb_DupCRNPED: TFloatField;
    cb_pedpen: TCheckBox;
    lbl_vucompra: TLabel;
    lbl_vpcompra: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODTLVExit(Sender: TObject);
    procedure BBAPLICARClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure Tb_DupCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarClick(Sender: TObject);
    procedure obscli01Exit(Sender: TObject);
    procedure obscli02Exit(Sender: TObject);
    procedure obscli03Exit(Sender: TObject);
    procedure obscli04Exit(Sender: TObject);
    procedure obscli05Exit(Sender: TObject);
    procedure obscli01KeyPress(Sender: TObject; var Key: Char);
    procedure obscli02KeyPress(Sender: TObject; var Key: Char);
    procedure obscli03KeyPress(Sender: TObject; var Key: Char);
    procedure obscli04KeyPress(Sender: TObject; var Key: Char);
    procedure obscli05KeyPress(Sender: TObject; var Key: Char);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Qr_PedCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_CRECCHAVEPEDClick(Sender: TObject);
    procedure cb_pedpenClick(Sender: TObject);
  private
    { Private declarations }

     mDataTemp: tdatetime;

  public
    { Public declarations }

    Form_SelEmp: TFrm_SelEmp;
    Form_Impres_SitCre: TFrm_Impres;

  msit: Boolean;
  mblqatr: Boolean;
  mcodcli: Integer;
  mlin, mpag: Integer;
  mqtdDupV, mQtdDup, mQtdChqP, mQtdDupP,mQtdDupA, mQtdChqDA,mQtdChqDP,mQtdJurA,mQtdJurP,mQtdNC: Integer;
  mTotDupV, mTotDup, mTotChqP, mTotDupP,mTotDupA, mTotChqDA,mTotChqDP,mTotJurA,mTotJurP,mTotNC, mValPed, mTotDeb, mLimCre: Real;
  mQtdOrcPen, mTotOrcPen, matrasoma: Real;
  mQtdEmpPen, mTotEmpPen,mTotSemChave: Real;
  mQtdPedPen, mTotPedPen,mQtdTitProt, mTotTitProt: Real;
  aceita_ant:boolean;

  mBloq_LimCred  :Boolean;
  mBloq_ChqDev   :Boolean;
  mBloq_Atraso   :Boolean;
  mBloq_Status9  :Boolean;
  mBloq_Cadastro :boolean;
  mBloq_SemCompra:boolean;
  mProcessou: Boolean;
  mValorRetorno: TStringList;

    function verificabloqueio(pcodcli: Real; pdatai, pdataf: String): Boolean;
    function fsitcreic(ptipo: Integer):Boolean;

  end;

var
  Frm_SitCre: TFrm_SitCre;

implementation

uses S_DM4, s_Princ, func_excecoes;

{$R *.dfm}
function TFrm_SitCre.verificabloqueio(pcodcli: Real; pdatai, pdataf: String): Boolean;

var
mspa: Integer;
begin
flcadpar01(0,0,'1');
mblqatr:=False;
msit:=False;
mspa:=10;
mQtdDupV:=0;
mQtdDup :=0;
mQtdChqP:=0;
mQtdDupA:=0;
mQtdDupP:=0;
mTotDupP:=0;
mQtdOrcPen:=0;
mTotOrcPen:=0;
mQtdEmpPen:=0;
mTotEmpPen:=0;
mTotSemChave:=0;
mQtdTitProt:=0;
mTotTitProt:=0;

matrasoma:=0;
mQtdOrcPen  :=0;
mTotOrcPen  :=0;
mQtdEmpPen  :=0;
mTotEmpPen  :=0;

mQtdNc  :=0;
mTotNC  :=0;
mQtdChqDA:=0;
mQtdChqDP:=0;
mQtdJurA:=0;
mQtdJurP:=0;
mTotDupV:=0;
mTotDup :=0;
mTotChqP:=0;
mTotDupA:=0;
mTotChqDA:=0;
mTotJurA:=0;
mTotJurP:=0;
mTotChqDP:=0;
mValPed :=0;
mQtdPedPen:=0;
mTotPedPen:=0;
mQtdTitProt:=0;
mTotTitProt:=0;


mLimCre :=valfloat(mvalorretorno[9]);
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

Tb_Dup.Close;
Tb_Dup.Sql.Clear;
Tb_Dup.Sql.add('Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
              +'       CRDTVCTO,CRDTPAG,CRDTBX,CRCODVEN,CRVALOR,'
              +'       CRSTATUS,CRCODBCO,CRCODCLI,CRVALPAG,CRNPED '
              +'       ,CRJUROS,CRDESC,CRDEVOL,CRTITPROT '
              +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO '
              +' FROM CADDAR '
              +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')
              +'       CRSTATUS<>9 '
              +' and CRCODCLI=0'+FloatTostr(pcodcli)
              +iif(Trim(MDT1.Text)='/  /','',' and CRDTVCTO>='+chr(39)+MDT1.Text+chr(39))
              +iif(Trim(MDT2.Text)='/  /','',' and CRDTVCTO<='+chr(39)+MDT2.Text+chr(39)));
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Tb_Dup.SQL.Add(' and (CRCODORI '+mcinst2+' or CRCODORI=0)');

Tb_Dup.Sql.add(' order by CRDTVCTO');
//              +' and CRSTATUS<>2 order by CRDTVCTO');
Tb_Dup.Open;
//lindomar20191001
//_Dup.SQL.SaveToFile('C:\SQLDUP.TXT');

la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Chq.Close;
Qr_Chq.SQL.Clear;
Qr_Chq.SQL.add(' Select CHCODEMP,CHNUMERO,CHBANCO,CHSERIE,CHVALOR, '
              +' CHDTEMIS,CHDTDEP,CHCODCLI '
              +'  from CADCHQ where '+iif(la_Empresas='','',la_Empresas+' and ')
              +'       CHCODCLI=0'+FloatToStr(pcodcli));
if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
   begin
   Qr_Chq.SQL.Add(' and (CHSTATUS<1 or  CHDTDEP>='+chr(39)+FormatDateTime(fdt, Date-DM1.Tb_PargerPPRZCOMP.AsInteger)+chr(39)+')')
//   Qr_Chq.SQL.Add(' and CHDTDEP>='+chr(39)+FormatDateTime(fdt,date-DM1.Tb_PargerPPRZCOMP.AsInteger)+chr(39))
   end
else
   begin
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Chq.SQL.Add(' and (CHSTATUS<1 and CHDTDEP>='+chr(39)+MDT1.Text+chr(39)+')');
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Chq.SQL.Add(' and (CHSTATUS<1 and CHDTDEP<='+chr(39)+MDT2.Text+chr(39)+')');
   end;
Qr_Chq.Open;
//lindomar20191001
//_CHQ.SQL.SaveToFile('C:\SQLSQL.TXT');

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.SQl.add('Select P1CHAVE,P1ORDEM,P1CODVEN,P1TOTALL, '
              +'       P1CODCLI,P1DATAP,P1TIPO from '
              +'       CADP01 where '+iif(la_Empresas='','',la_Empresas+' and ')
              +' P1CODCLI=0'+FloatToStr(pcodcli)
              +' and (P1EMIDOC<1 or P1TIPO=9) and P1STATUS<9 ');
if fsonumero(MDT1.Text)>0 then
   Qr_Ped.SQl.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if fsonumero(MDT2.Text)>0 then
   Qr_Ped.SQl.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ped.SQL.Add(' and P1TIPO '+mcinst2);
Qr_Ped.Sql.add(' order by P1DATAP ');
Qr_Ped.Open;
//lindomar20191001
//_PED.SQL.SaveToFile('C:\SQLPED.TXT');

While not Qr_Ped.Eof do
   begin
   if Qr_PedP1TIPO.AsInteger=9 then
      begin
      mQtdEmpPen  :=mQtdEmpPen+1;
      mTotEmpPen  :=mTotEmpPen+Qr_PedP1TOTALL.Value;
      end
   else if Qr_PedP1TIPO.AsInteger=0 then
      begin
      mQtdOrcPen  :=mQtdOrcPen+1;
      mTotOrcPen  :=mTotOrcPen+Qr_PedP1TOTALL.Value;
      end
   else
      begin
      mQtdPedPen  :=mQtdPedPen+1;
      mTotPedPen  :=mTotPedPen+Qr_PedP1TOTALL.Value;
      end;
   Qr_Ped.Next;
   end;

if cb_pedpen.Checked=true then
   begin
   mtotpedpen:=0;
   end;
While not Tb_Dup.Eof do
   begin
   if (Tb_DupCRDUP.Value=1) or (Tb_DupCRDUP.Value=2) then
      begin
      if Tb_DupCRSTATUS.Value>1 then
         begin
         mQtdChqDP:=mQtdchqDP+1;
         mTotChqDP:=mTotChqDP+Tb_DupCRVALOR.Value;
         end
      else
         begin
         mQtdChqDA:=mQtdChqDA+1;
         mTotChqDA:=mTotChqDA+Tb_DupCRVALOR.Value;
         end;
      end
   else if Tb_DupCRDUP.Value=3 then
      begin
      if Tb_DupCRSTATUS.Value>1 then
         begin
         mQtdJurP:=mQtdJurP+1;
         mTotJurP:=mTotJurP+Tb_DupCRVALOR.Value;
         end
      else
         begin
         mQtdJurA:=mQtdJurA+1;
         mTotJurA:=mTotJurA+Tb_DupCRVALOR.Value;
         end;
      end
   else if Tb_DupCRDUP.Value=5 then
      begin
      if Tb_DupCRSTATUS.Value<2 then
         begin
         mQtdNC:=mQtdNC+1;
         mTotNC:=mTotNC+Tb_DupCRVALOR.Value;
         end;
      end
   else if Tb_DupCRSTATUS.Value>0 then
      begin
      mQtdDupP:=mQtdDupP+1;
      mTotDupP:=mTotDupP+Tb_DupCRVALPAG.AsFloat;
      if Tb_DupCRSTATUS.Value=1 then
         begin
         if Tb_DupCRDTVCTO.Value<date then
            begin
            if Tb_Dupatraso.Value>matrasoma then
               matrasoma:=Tb_Dupatraso.Value;
            mqtdDupV:=mQtdDupV+1;
            mTotDupV:=mTotDupV+Tb_Dupsaldodev.Value;
            end
         else
            begin
            mQtdDupA:=mQtdDupA+1;
            mTotDupA:=mTotDupA+Tb_Dupsaldodev.Value;
            end;
         end;
      if Tb_DupCRNPED.AsInteger=0 then
         mTotSemChave:=mTotSemChave+Tb_Dupsaldodev.Value;


//      mTotDupP:=mTotDupP+Tb_DupCRVALOR.Value;

      end
   else if Tb_DupCRDTVCTO.Value<date then
      begin
      if Tb_Dupatraso.Value>matrasoma then
         matrasoma:=Tb_Dupatraso.Value;
      mqtdDupV:=mQtdDupV+1;
      mTotDupV:=mTotDupV+Tb_Dupsaldodev.Value;
      if Tb_DupCRNPED.AsInteger=0 then
         mTotSemChave:=mTotSemChave+Tb_Dupsaldodev.Value;

      end
   else
      begin
      mQtdDupA:=mQtdDupA+1;
      mTotDupA:=mTotDupA+Tb_Dupsaldodev.Value;
      if Tb_DupCRNPED.AsInteger=0 then
         mTotSemChave:=mTotSemChave+Tb_Dupsaldodev.Value;

      end;

   if (Tb_DupCRSTATUS.Value<2) and (Tb_DupCRDUP.AsInteger<>5) then
      begin
      if DM1.Tb_PargerPTPBLQ.Value=0 then
         begin
         if (Tb_DupCRDTEMIS.Value+DM1.Tb_PargerPQTDBLQ.Value)<date then
            mblqatr:=True
         end
      else
         begin
         if (Tb_DupCRDTVCTO.Value+DM1.Tb_PargerPQTDBLQ.Value)<date then
            mblqatr:=True
         end;
     end;
     if Tb_DupCRTITPROT.AsInteger>0 then
        begin
        mQtdTitProt:=mQtdTitProt+1;
        mTotTitProt:=mTotTitProt+Tb_DupCRVALOR.AsFloat;
        end;
   Tb_Dup.Next;
   end;
While not Qr_Chq.Eof do
   begin
   mQtdChqP:=mQtdChqP+1;
   mTotChqP:=mTotChqP+Qr_ChqCHVALOR.Value;
   Qr_Chq.Next;
   end;
mtotdup:=mtotdupV+mtotDupA;
mQtdDup:=mQtdDupV+mQtdDupA;
mtotdeb:=(mTotDup+mTotChqDA+mTotChqP+mTotPedPen)-mTotNC;

QtdDupV.Caption:='['+FormatFloat('0000',mqtdDupV)+']';
TotDupV.Caption:='['+insere(FormatFloat(mcasas,mTotDupv),' ',mspa)+']';

QtdDupA.Caption:='['+FormatFloat('0000',mQtdDupA)+']';
TotDupA.Caption:='['+insere(FormatFloat(mcasas,mTotDupA),' ',mspa)+']';

QtdDupPag.Caption :='['+FormatFloat('0000',mQtdDupP)+']';
TotDupPag.Caption :='['+insere(FormatFloat(mcasas,mTotDupP),' ',mspa)+']';

AtrasoMax.Caption :='['+insere(FloatToStr(matrasoma),' ',5)+' '+iif(matrasoma>1,'dias','dia ')+']';

QtdNC.Caption  :='['+FormatFloat('0000',mQtdNC)+']';
TotNC.Caption  :='['+insere(FormatFloat(mcasas,mTotNC),' ',mspa)+']';

QtdDup.Caption :='['+FormatFloat('0000',mqtdDup)+']';
TotDup.Caption :='['+insere(FormatFloat(mcasas,mTotDup),' ',mspa)+']';

QtdChqP.Caption:='['+FormatFloat('0000',mQtdChqP)+']';
TotChqP.Caption:='['+insere(FormatFloat(mcasas,mTotChqP),' ',mspa)+']';

QtdOrcPen.Caption:='['+FormatFloat('0000',mQtdOrcPen)+']';
TotOrcPen.Caption:='['+insere(FormatFloat(mcasas,mTotOrcPen),' ',mspa)+']';

lbl_QtdEmpPen.Caption:='['+FormatFloat('0000',mQtdEmpPen)+']';
TotEmpPen.Caption:='['+insere(FormatFloat(mcasas,mTotEmpPen),' ',mspa)+']';

lbl_qtdPedPen.Caption:='['+FormatFloat('0000',mQtdPedPen)+']';
totPedPen.Caption    :='['+insere(FormatFloat(mcasas,mTotPedPen),' ',mspa)+']';

mtotDeb:=mtotdeb+mTotEmpPen;
QtdChqD.Caption:='['+FormatFloat('0000',mQtdChqDA )+']';
TotChqD.Caption:='['+insere(FormatFloat(mcasas,mTotChqDA),' ',mspa)+']';
QtdChqDP.Caption:='['+FormatFloat('0000',mQtdChqDP )+']';
TotChqDP.Caption:='['+insere(FormatFloat(mcasas,mTotChqDP),' ',mspa)+']';

qtdjurab.Caption:='['+FormatFloat('0000',mQtdJurA )+']';
TotjurAb.Caption:='['+insere(FormatFloat(mcasas,mTotJurA),' ',mspa)+']';

qtdjurpag.Caption:='['+FormatFloat('0000',mQtdJurP )+']';
TotJurPag.Caption:='['+insere(FormatFloat(mcasas,mTotJurP),' ',mspa)+']';

lbl_qtdTitProt.Caption:='['+FormatFloat('0000',mQtdTitProt )+']';
totTitProt.Caption    :='['+insere(FormatFloat(mcasas,mTotTitProt),' ',mspa)+']';

//TotDeb.Caption:='['+insere(FormatFloat(mcasas,mTotDeb),' ',mspa)+']';

//LimCre.Caption:='['+insere(FormatFloat(mcasas,mLimCre),' ',mspa)+']';
//ValPed.Caption:='['+insere(FormatFloat(mcasas,mValPed),' ',mspa)+']';
Memo_obs.Lines.Clear;;
if CB_CRECCHAVEPED.Checked=true then
   mTotDeb:=mTotDeb-mTotSemChave;

if mLimCre>0 then
   begin
//   if mLimCre<(mtotDeb+mTotChqP+mTotChqDA) then
//   if mLimCre<(mtotDeb+mTotPedPen) then
   if mLimCre<(mtotDeb) then
      begin
      mBloq_LimCred:=true;
      msit:=True;
      Memo_obs.Lines.Add('Limite Crédito Excedido. Limite de Crédito: '+FormatFloat(mcasas, mLimCre)
                              +' Total dos Débitos: '+FormatFloat(mcasas,    (mtotDeb)) +'. ');
//                              +' Total dos Débitos: '+FormatFloat(mcasas,    (mtotDeb+mTotPedPen)) +'. ');
//                              +' Total dos Débitos: '+FormatFloat(mcasas, (MTotDeb+mTotChqp+mTotChqDA))+'. ';
      end;
   end;
if mTotChqDA>0 then
   begin
   Memo_Obs.Lines.Add('Este Cliente Possui '+IntToStr(mQtdChqDA)+' Cheque'+iif(mQtdChqDA>1,'s ',' ')+'sem fundos. Total '+FormatFloat(mcasas, mTotChqDA));
   mBloq_ChqDev:=true;
   end;
if mblqatr then
   begin
   Memo_Obs.Lines.Add('Titulo(s) em Atraso ');
   msit:=True;
   mBloq_Atraso:=true;

   end;
if valint(mValorRetorno[10])=9 then
   begin
   mBloq_Status9:=true;

   Memo_Obs.Lines.Add('Status do Cliente = 9');
   msit:=True;
   end;

if DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsInteger>0 then
   begin

   try
     mDataTemp:=strtodate(mvalorretorno[7])
   except
     mDataTemp:=pdatanula;
     end;

   if mDatatemp<=pdatanula then
      begin
      msit:=True;
      mBloq_SemCompra:=true;
      Memo_Obs.Lines.Add('Cliente Não Compra a mais de '+DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsString+' Nunca Comprou ');
      end
   else if (date-mDataTemp)>DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsFloat then
      begin
      msit:=True;
      mBloq_SemCompra:=true;
      Memo_Obs.Lines.Add('Cliente Não Compra a mais de '+DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsString+' Data da Ultima compra: '+FormatDatetime(fdt2, mDataTemp));
      end;
   end;


if valint(mValorRetorno[11])>0 then
   begin
   mBloq_Cadastro:=true;
   Memo_Obs.Lines.Add('Bloqueado Pelo Cadastro.');
   msit:=True;
   end;

if msit then
   begin
   Memo_Obs.Lines.Add('Cliente Bloqueado!');
   lb_Sit.Font.Color:=clRed;
   lb_sit.caption:='Cliente Bloqueado!';

   end
else
   begin
   Memo_Obs.Lines.Add('Cliente Liberado!');
   lb_sit.caption:='Cliente Liberado!';
   lb_Sit.Font.Color:=clGreen;
   end;
Timer1.Enabled:=True;
Result:=True;
end;
procedure TFrm_SitCre.Timer1Timer(Sender: TObject);
begin
if lb_Sit.Visible then
   lb_Sit.Visible:=False
else
   lb_sit.Visible:=True;
end;

procedure TFrm_SitCre.CODCLIExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
mValorRetorno.Clear;//                   0      1      2      3      4      5       6      7      8       9      10       11
if not fLerGenerico_campos('CADCLI','CCODCLI,CRAZAO,COBS01,COBS02,COBS03,COBS04,COBS05,CDTUCPR,CDTPCPR,CLCRED,CSTATUS,CSITCLI',' CCODCLI='+fdeixanum(CODCLI.Text), mValorRetorno) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
obscli01.Text:=mvalorretorno[2];
obscli02.Text:=mvalorretorno[3];
obscli03.Text:=mvalorretorno[4];
obscli04.Text:=mvalorretorno[5];
obscli05.Text:=mvalorretorno[6];

NOMCLI.Text:=mvalorretorno[1];
try
  mDataTemp:=StrToDateTime(mvalorretorno[7])
except
  mDataTemp:=pdatanula;
  end;


if  mDataTemp<=pdatanula then
   lbl_dtucompra.Caption   := '/  /'
else
   lbl_dtucompra.Caption := FormatDateTime(fdathor, mDataTemp);

try
  mDataTemp:=strtodate(mvalorretorno[8])
except
  mDataTemp:=pdatanula;
  end;

if  mDataTemp<=pdatanula then
   lbl_pcompra.Caption   := '/  /'
else
   lbl_pcompra.Caption   := FormatDateTime(fdt2, mDataTemp);

if valfloat(mvalorretorno[9])<=0 then
   lbl_lcred.Caption:='ILIMITADO'
else
   lbl_lcred.Caption:=FormatFloat(mcasas, valfloat(mvalorretorno[9]));
mBloq_LimCred  :=false;
mBloq_ChqDev   :=False;
mBloq_Atraso   :=false;
mBloq_Status9  :=False;
mBloq_Cadastro :=False;
mBloq_SemCompra:=False;


end;

procedure TFrm_SitCre.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_SitCre',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_SitCre.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_SitCre',Key);
   CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_SitCre.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_SitCre',Key);
   CODTLVExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_SitCre.CODVENExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else if not flcadven(1,0,CODVEN.Text) then
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end
else
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;

end;

procedure TFrm_SitCre.CODTLVExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
if trim(CODTLV.Text)='' then
   CODTLV.Text:='Todos...'
else if not flcadusr(1,0,CODTLV.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODTLV.SetFocus;
   exit;
   end
else
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_SitCre.BBAPLICARClick(Sender: TObject);
var
mdatini, mdatfin: TDatetime;
query_compra: TQuery;
begin
Timer1.Enabled:=False;
if (Trim(MDT2.Text)<>'/  /') and (Trim(MDT1.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if ValFloat(CODCLI.Text)<=0 then
   begin
   fmensagem('Favor Digitar um Código de Cliente Valido!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
CODCLIExit(self);

verificabloqueio(ValFloat(CODCLI.Text),trim(MDT1.Text),trim(MDT2.Text));
//lindomar20191001

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

mdatfin:=fdatafinal(-1,Date);
mdatfin:=fultdiames(mdatfin);
mdatini:=fdatafinal(-12,Date);
{
ShowMessage('Data inicial '+formatDatetime(fdt2, mdatini)
           +' Data final: '+FormatDateTime(fdt2, mdatfin));
}
query_compra:=TQuery.create(nil);
query_compra.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_compra.Close;
query_compra.SQL.Clear;
query_compra.Sql.add('select (SELECT MAX(CRTOTNF) FROM CADDAR '
                   +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')
                   +' CRSTATUS<>9 and CRCODCLI=:CODCLI '
                   +' AND CRDTEMIS=DATA_PRIMCOMPRA) AS VALOR_PRIMCOMPRA '
                   +' ,DATA_PRIMCOMPRA '
                   +',(SELECT MAX(CRTOTNF) FROM CADDAR '
                   +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')
                   +' CRSTATUS<>9 and CRCODCLI=:CODCLI '
                   +' AND CRDTEMIS=DATA_ULTCOMPRA) AS VALOR_ULTCOMPRA '
                   +',DATA_ULTCOMPRA '
                   +' ,(SELECT MAX(CRDTEMIS) FROM CADDAR '
                   +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')
                   +' CRSTATUS<>9 and CRCODCLI=:CODCLI '
                   +' AND CRTOTNF=VALOR_MAIORCOMPRA) AS DATA_MAIORCOMPRA '
                   +',VALOR_MAIORCOMPRA '
                   +' FROM( '
                   +' SELECT MIN(CRDTEMIS) AS DATA_PRIMCOMPRA '
                   +'      ,MAX(CRDTEMIS) AS DATA_ULTCOMPRA '
                   +'      ,max(CRTOTNF) AS VALOR_MAIORCOMPRA from '
                   +'      caddar '
                   +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')

                   +'       CRSTATUS<>9 '
                   +'       and CRCODCLI=:CODCLI '
                   +') T2 ');


query_compra.parambyname('CODCLI').AsFloat:=valfloat(CODCLI.Text);
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   query_compra.sql.add(' and (CRCODORI '+mcinst2+' or CRCODORI=0)');
//if cb_CRECCHAVEPED.Checked=true then
//   DM1.Query2.sql.add(' and CRNPED>0');
{query_compra.sql.add(' group by CRNPED,CRDTEMIS '
              +' order bY VALCOMPRA DESC ');
}              
try
   query_compra.Open;
except on e : exception do
   ex_erroSql_Novo(query_compra,852,'func Erro:'+e.Message ,'CADDAR');
   end;


if query_compra.IsEmpty then
   begin
   lbl_vlrmaiorcompra.Caption:='';
   lbl_dtmaiorcompra.Caption :='/  /';
   lbl_vucompra.Caption:='0,00';
   end
else
   begin
   lbl_vlrmaiorcompra.Caption:=FormatFloat(mcasas, query_compra.FieldbyName('VALOR_MAIORCOMPRA').AsFloat);
   lbl_dtmaiorcompra.Caption :=FormatDatetime(fdathor, query_compra.FieldbyName('DATA_MAIORCOMPRA').AsDateTime);
   fGerarEvento('data da ultima compra '+lbl_dtucompra.Caption);
   lbl_vucompra.Caption:=FormatFloat(mcasas, query_compra.fieldbyname('VALOR_ULTCOMPRA').asfloat);
   lbl_dtucompra.Caption:=Formatdatetime(fdathor, query_compra.fieldbyname('DATA_ULTCOMPRA').AsDateTime);
   fGerarEvento('data da primeira compra '+lbl_pcompra.Caption);

    lbl_vpcompra.Caption:=FormatFloat(mcasas, query_compra.fieldbyname('VALOR_PRIMCOMPRA').asfloat);
    lbl_pcompra.Caption:=FormatDateTime(fdathor, query_compra.fieldbyname('DATA_PRIMCOMPRA').AsDateTime);
   end;
if query_compra.IsEmpty then
   begin
   lbl_medcompramen.Caption :='';
   lbl_tipcob.Caption:='';
   end
else
   begin
   query_compra.Close;
   query_compra.SQL.Clear;
   query_compra.Sql.add('Select sum(CRVALOR) AS VALCOMPRA,'
                 +'    MIN(CRDTEMIS) AS PRIMCOMPRA,MAX(CRDTEMIS) AS ULTCOMPRA'
                 +'   ,sum(DECODE(CRCODBCO,0,0,1)) AS QTDBCO '
                 +'   ,sum(DECODE(CRCODBCO,0,1,0)) AS QTDCAR '
                 +' FROM CADDAR '
                 +'       WHERE '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'       CRSTATUS<>9 '
                 +' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, mdatini)+chr(39)
                 +' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt, mdatfin)+chr(39)
                 +' and CRCODCLI=0'+trim(CODCLI.Text));
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      query_compra.sql.add(' and (CRCODORI '+mcinst2+' or CRCODORI=0)');
//   if cb_CRECCHAVEPED.Checked=true then
//      query_compra.sql.add(' and CRNPED>0');

   query_compra.Open;
{   ShowMessage('Ultima Compra: '+formatDateTime(fdt2, query_compra.fieldbyName('ULTCOMPRA').asdateTime)
              +#13+'Primeira Compra: '+formatDateTime(fdt2, query_compra.fieldbyName('PRIMCOMPRA').asdateTime)
              +#13+'Valor: '+formatFloat(mcasas, query_compra.fieldbyName('VALCOMPRA').asfLOAT));
}
   try
      if (query_compra.fieldbyName('VALCOMPRA').AsFloat<=0)
         and (query_compra.fieldbyName('ULTCOMPRA').asdateTime<>query_compra.fieldbyName('PRIMCOMPRA').asdateTime) then
         begin
         lbl_medcompramen.Caption:=FormatFloat(mcasas, 0);

         end
      else
         begin
         if  (query_compra.fieldbyName('ULTCOMPRA').asdateTime)<>(query_compra.fieldbyName('PRIMCOMPRA').asdateTime) then
             begin
             lbl_medcompramen.Caption:=FormatFloat(mcasas, query_compra.fieldbyName('VALCOMPRA').AsFloat /
             ( (query_compra.fieldbyName('ULTCOMPRA').asdateTime
                -query_compra.fieldbyName('PRIMCOMPRA').asdateTime)/30) );
             end
          else
             lbl_medcompramen.Caption:=FormatFloat(mcasas, query_compra.fieldbyName('VALCOMPRA').AsFloat);
         end;
   except
      lbl_medcompramen.Caption:=FormatFloat(mcasas, 0);
      end;
   if query_compra.FieldByName('QTDBCO').AsFloat>query_compra.FieldByName('QTDCAR').AsFloat then
      begin
      if query_compra.FieldByName('QTDCAR').AsFloat=0 then
         lbl_tipcob.Caption:='Cobranca 100% Bancaria'
      else
         begin
         lbl_tipcob.Caption:='Cobranca '+FormatFloat(mcasas_pct,
                             (query_compra.FieldByName('QTDBCO').AsFloat*100)/(query_compra.FieldByName('QTDCAR').AsFloat+
                                                                   query_compra.FieldByName('QTDBCO').AsFloat))
                             +' Bancaria ';
         end;
      end
   else
      begin
      if query_compra.FieldByName('QTDBCO').AsFloat=0 then
         lbl_tipcob.Caption:='Cobranca 100% Carteira'
      else
         begin
         lbl_tipcob.Caption:='Cobranca '+FormatFloat(mcasas_pct,
                             (query_compra.FieldByName('QTDCAR').AsFloat*100)/(query_compra.FieldByName('QTDCAR').AsFloat+
                                                                   query_compra.FieldByName('QTDBCO').AsFloat))
                             +' Carteira ';
         end;
      end;
   end;






lbl_limdisp.Color:=$0080FF80;

if valfloat(mValorRetorno[9])<=0 then
   begin
   lbl_lcred.Caption:='ILIMITADO';
   lbl_limdisp.Caption:='ILIMITADO';
   end
else
   begin
   lbl_lcred.Caption:=FormatFloat(mcasas, valfloat(mValorRetorno[9]));
{   lbl_limdisp.Caption:=FormatFloat(mcasas, valfloat(mValorRetorno[9])-
                                            (mtotDeb+mTotPedPen));
}

   lbl_limdisp.Caption:=FormatFloat(mcasas, valfloat(mValorRetorno[9])-
                                            (mtotDeb));

   if valfloat(lbl_limdisp.Caption)<0 then
      lbl_limdisp.Color:=clRed;
   end;
query_compra.close;
freeandnil(query_compra);


end;

procedure TFrm_SitCre.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_SitCre.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_SitCre.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SitCre.BBIMPRIMIRClick(Sender: TObject);
var
mlmax: Integer;
mcab: Boolean;
mDtPag: String;
x: Integer;
begin
if not Tb_Dup.Active then
   begin
   fmensagem('Favor Aplicar uma Seleção!',0,['0'],0);
   exit;
   end;
testeform := TFrm_SitCre(FindGlobalComponent('form_Impres_SitCre'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_SitCre);

Form_Impres_SitCre.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

fsitcreic(0);
Form_Impres_SitCre.RDprint1.ImpF(05,01,insere2('--Resumo Geral','-',80),mnormal);
try
  mDataTemp:=strtodate(mvalorretorno[7])
except
  mDataTemp:=pdatanula;
  end;

if mDataTemp>pdatanula then
   mcinst3:=FormatDateTime(fdt2,mDataTemp)
else
   mcinst3:='/  /';
try
  mDataTemp:=strtodate(mvalorretorno[8])
except
  mDataTemp:=pdatanula;
  end;

if mDataTemp>pdatanula then
   mcinst4:=FormatDateTime(fdt2,mDataTemp)
else
   mcinst4:='/  /';


Form_Impres_SitCre.RDprint1.ImpF(06,01,'Ultima Compra: '+mcinst3+' Primeira Compra.: '
+mcinst4+' Limite Credito: '+iif(valfloat(mValorRetorno[9])>0,FormatFloat(mcasas,valfloat(mValorRetorno[9])),'ILIMITADO'),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(08,01,'+---Duplicatatas-----------------------+Cheques e Outros-----------------------+',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(09,01,'|Dupl.Vencidas.......:('+FormatFloat('0000',mqtdDupV)+')'+insere(FormatFloat(mcasas,mTotDupV),' ',11)
                              +'|Cheques Pre-Datados:('+FormatFloat('0000',mQtdChqP)+')'+insere(Formatfloat(mcasas, mTotChqP),' ',13)+'|',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(10,01,'|Dupl.A Vencer.......:('+FormatFloat('0000',mQtdDupA)+')'+insere(FormatFloat(mcasas, mTotDupA),' ',11)
                              +'|Chq dev. em Aberto.:('+FormatFloat('0000',mQtdChqDA)+')'+insere(FormatFloat(mcasas,mTotChqDA),' ',13)+'|',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(11,01,'|Total Em Aberto.....:('+FormatFloat('0000',mQtdDup)+')'+Insere(FormatFloat(mcasas, mTotDup  ),' ',11)
                              +'|Chq dev. Pagos.....:('+FormatFloat('0000',mQtdChqDP)+')'+insere(FormatFloat(mcasas, mTotChqDP),' ',13)+'|',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(12,01,'|Total Pagas.........:('+FormatFloat('0000',mQtdDupP)+')'+insere(FormatFloat(mcasas, mTotDupP),' ',11)
                              +'|Juros em Aberto....:('+FormatFloat('0000',mQtdJurA)+')'+insere(FormatFloat(mcasas, mTotJurA),' ',13)+'|',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(13,01,'|Atraso Maximo Aberto:      '+insere(FloatToStr(matrasoma),' ',5)+iif(matrasoma>1,' dias ',' dia  ')
                              +'|Juros Pagos........:('+FormatFloat('0000',mQtdJurP)+')'+insere(FormatFloat(mcasas, mTotJurP),' ',13)+'|',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(14,01,'|Notas de Creditos...:('+FormatFloat('0000',mQtdNC)+')'+insere(Formatfloat(mcasas, mTotNC),' ',11)
                              +'|                                       |',mnormal);
Form_Impres_SitCre.RDprint1.ImpF(15,01,'+--------------------------------------+---------------------------------------+',mnormal);

Form_Impres_SitCre.RDprint1.ImpF(16,01,'Vale/Emprestimo de Mercadorias Pendentes....:('+FormatFloat('0000',mQtdEmpPen)+')'+insere(Formatfloat(mcasas, mTotEmpPen),' ',11),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(17,01,'Pedidos Pendentes(Aguardando Emissao de NF).:('+FormatFloat('0000',mQtdPedPen)+')'+insere(Formatfloat(mcasas, mTotPedPen),' ',11),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(18,01,'Orcamentos Pendentes(Aguardando Confirmacao):('+FormatFloat('0000',mQtdOrcPen)+')'+insere(Formatfloat(mcasas, mTotOrcPen),' ',11),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(19,01,'---------------------------------------------(----)'+insere('-','-',11),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(20,01,'Totais dos Pedidos..........................:('+FormatFloat('0000',mQtdOrcPen+mQtdEmpPen+mQtdPedPen)+')'+insere(Formatfloat(mcasas, mTotPedPen+mTotEmpPen+mTotOrcPen),' ',11),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(21,01,'Maior Compra........: '+insere(lbl_medcompramen.Caption,' ',15) +' Data: '+lbl_dtmaiorcompra.Caption+'  Media Mensal: '+lbl_medcompramen.Caption,mnormal);

mlin:=21;

if Memo_obs.Lines.Count>0 then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Observações Automatica do Sistema: ',mneg);
   for x:=0 to Memo_obs.Lines.Count-1 do
      begin
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,Memo_obs.Lines[x],mneg);
      if mlin>60 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;
mlin:=mlin+1;
if (trim(obscli01.Text)<>'') or
   (trim(obscli02.Text)<>'') or
   (trim(obscli03.Text)<>'') or
   (trim(obscli04.Text)<>'') or
   (trim(obscli05.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Observações do Cadastro do Cliente: ',mneg);
   end;
if (trim(obscli01.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,obscli01.Text,mneg);
   end;

if (trim(obscli02.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,obscli02.Text,mneg);
   end;

if (trim(obscli03.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,obscli03.Text,mneg);
   end;

if (trim(obscli04.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,obscli04.Text,mneg);
   end;

if (trim(obscli05.Text)<>'') then
   begin
   mlin:=mlin+1;
   Form_Impres_SitCre.RDprint1.ImpF(mlin,01,obscli05.Text,mneg);
   end;



mlin:=mlin+1;
Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Situação do Cliente.: '+lb_Sit.Caption,mnormal);

if mqtdDupV>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>0) or (Tb_DupCRSTATUS.Value=2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
{
      if Tb_DupCRDTVCTO.Value>date then
         begin
         Tb_Dup.Next;
         Continue;
         end;
}         
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Duplicatas Vencidas','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);

         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);
      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)+' '
                              +insere(mdtpag,' ',08)
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mqtdDupA>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>0) or (Tb_DupCRSTATUS.Value=2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
{
      if Tb_DupCRDTVCTO.Value<=date then
         begin
         Tb_Dup.Next;
         Continue;
         end;
}
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Duplicatas A Receber','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=True;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);
      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mdtpag,' ',08)
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mQtdDupP>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>0) or (Tb_DupCRSTATUS.Value<1) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Duplicatas Pagas','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      mlin:=mlin+1;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);

      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mDtPag,' ',08)
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mQtdNC>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>5) or (Tb_DupCRSTATUS.Value=2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Notas de Creditos','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);

      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mdtpag, ' ',08)
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;




if mQtdChqP>0 then
   begin
   mcab:=False;
   Qr_Chq.First;
   While not Qr_Chq.Eof do
      begin
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Cheques Pre-Datados','-',60),mneg);
         mlin:=mlin+1;
         mcab:=true;
{
Numero/d Dt.Emissao Dt. Vcto.  Data Pgto. Atras   Valor Titulo     Valor Pago Valor em Abert Bco',mnormal);
Número /Bco/Serie            Dt.Emissao        Dt.Deposito               Valor $
1234567/237/1234567890       10/05/2003        10/05/2004         ZZZ.ZZZ,ZZ9,99
}
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Número /Bco/Serie            Dt.Emissao        Dt.Deposito               Valor $',mnormal);
         end;
      mlin:=mlin+1;

      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('0000000',Qr_ChqCHNUMERO.Value)
                              +'/'+FormatFloat('000',Qr_ChqCHBANCO.Value)
                              +'/'+insere2(Qr_ChqCHSERIE.Value,' ',10)
                              +insere2(' ',' ',7)
                              +FormatDateTime(fdt2, Qr_ChqCHDTEMIS.Value)
                              +insere2(' ',' ',8)
                              +FormatDateTime(fdt2,Qr_ChqCHDTDEP.Value)
                              +insere2(' ',' ',9)
                              +insere(FormatFloat(mcasas, Qr_ChqCHVALOR.Value),' ',14),mnormal);
      Qr_Chq.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mQtdChqDA>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if ((Tb_DupCRDUP.Value<>2) and (Tb_DupCRDUP.Value<>1) )    or (Tb_DupCRSTATUS.Value=2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Cheques Devolvidos em Abertos','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt2, Tb_DupCRDTPAG.Value);

      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt2, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt2,Tb_DupCRDTVCTO.Value)
                              +' '+mDtPag
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mQtdChqDP>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if ((Tb_DupCRDUP.Value<>2) and (Tb_DupCRDUP.Value<>1) ) or (Tb_DupCRSTATUS.Value<>2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Cheques Devolvidos Pagos','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);

      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mDtPag,' ',08)
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

if mQtdJurA>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>3) or (Tb_DupCRSTATUS.Value=2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Juros em Abertos','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);

      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mDtPag,' ',08)
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;
if mQtdJurP>0 then
   begin
   mcab:=False;
   Tb_Dup.First;
   While not Tb_Dup.Eof do
      begin
      if (Tb_DupCRDUP.Value<>3) or (Tb_DupCRSTATUS.Value<>2) then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      if mlin=0 then
         begin
         fsitcreic(0);
         mcab:=False;
         end;
      if not mcab then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Juros Pagos','-',60),mneg);
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.ImpF(mlin,01,'Numero/d Dt.Emiss Dt.Vcto  Dt Pgto. Atras  Vend   Valor Titulo     Valor Pago Valor em Abert Bco',m12ccp);
         mcab:=true;
         end;
      if (Tb_DupCRDTPAG.IsNull) or (Tb_DupCRDTPAG.asDateTime<=pDatanula) then
         mDtPag:='  /  /'
      else
         mDtPag:=FormatDateTime(fdt3, Tb_DupCRDTPAG.Value);

      mlin:=mlin+1;
      Form_Impres_SitCre.RDprint1.ImpF(mlin,01,FormatFloat('000000',Tb_DupCRNUMERO.Value)
                              +'/'+insere2(Tb_DupCRDESD.Value,' ',2)
                              +FormatDateTime(fdt3, Tb_DupCRDTEMIS.Value)
                              +' '+FormatDateTime(fdt3,Tb_DupCRDTVCTO.Value)
                              +' '+insere2(mDtPag,' ',08)
                              +' '
                              +' '+insere(Tb_Dupatraso.AsString,' ',5)
                              +' '+insere(Tb_DupCRCODVEN.AsString,' ',05)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALOR.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_DupCRVALPAG.Value),' ',14)
                              +' '+insere(FormatFloat(mcasas, Tb_Dupsaldodev.Value),' ',14)
                              +' '+iif(Tb_DupCRCODBCO.Value>0,FormatFloat('000',Tb_DupCRCODBCO.Value),'Ct.'),m12ccp);
      Tb_Dup.Next;
      if mlin>58 then
         begin
         mlin:=mlin+1;
         Form_Impres_SitCre.RDprint1.impf(mlin,01,insere2('Continua...',' ',80),mnormal);
         Form_Impres_SitCre.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;





{
Observações.:

+---Duplicatatas-----------------------+Cheques e Outros-----------------------+
|Dupl.Vencidas.......:(0002)zzzz.zz9,99|Cheques Pre-Datados:(0002)zzzzzz.zz9,99|
|Dupl.A Vencer.......:(0003)zzzz.zz9,99|Chq dev. em Aberto.:(0002)zzzzzz.zz9,99|
|Total Em Aberto.....:(0003)zzzz.zz9,99|Chq dev. Pagos.....:(0002)zzzzzz.zz9,99|                                      :
|Total Pagas.........:(0003)zzzz.zz9,99|Juros em Aberto....:(0002)zzzzzz.zz9,99|
|Atraso Maximo Aberto:(0002)zzzz.zz9,99|Juros Pagos........:(0002)zzzzzz.zz9,99|
|Notas de Creditos...:(0003)zzzz.zz9,99|                                       |
+--------------------------------------+---------------------------------------+
 }

if Form_Impres_SitCre.RDprint1.Setup then
  Form_Impres_SitCre.RDprint1.Fechar;
Form_Impres_SitCre.Free;
Form_Impres_SitCre:=nil;


end;


function TFrm_SitCre.fsitcreic(ptipo: Integer):Boolean;
begin
mpag:=mpag+1;
mlin:=Form_Impres_SitCre.fImprimirCabecalho(80,'Historico Financeiro do Cliente - '+fperiodo(0,MDT1.Text,MDT2.Text));
Form_Impres_SitCre.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
Form_Impres_SitCre.RDprint1.ImpF(04,01,centra(CODCLI.Text+'-'+Trim(NOMCLI.Text),' ',80),mnormal);
mlin:=4;
Result:=True;
end;
procedure TFrm_SitCre.Tb_DupCalcFields(DataSet: TDataSet);
begin
if Tb_DupCRSTATUS.Value=2 then
   Tb_Dupatraso.Value:=Tb_DupCRDTPAG.Value-Tb_DupCRDTVCTO.Value
else
   Tb_Dupatraso.Value:=date-Tb_DupCRDTVCTO.Value;
Tb_Dupsaldodev.Value:=Tb_DupCRVALOR.Value
                       -(Tb_DupCRVALPAG.Value-Tb_DupCRJUROS.Value+Tb_DupCRDESC.Value);


end;

procedure TFrm_SitCre.FormCreate(Sender: TObject);
var
x: Integer;
begin

  mValorRetorno:=TStringList.Create;

Pagecontrol1.activepageindex:=0;
if flfilpad(-1,'_SITCRE','CB_CRECCHAVEPED') then
   CB_CRECCHAVEPED.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-1,'_SITCRE','CB_PEDPEN') then
   CB_PEDPEN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


if codusr=1111 then
   tsConfigMaster.Visible:=true
else
   tsConfigMaster.Visible:=false;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
for x:=0 to Form_SelEmp.CLB_EMPRESAS.count -1 do Form_SelEmp.CLB_EMPRESAS.Checked[x] := true;

mProcessou:=false;
if codusr=1111 then
   tsOutrosFiltros.TabVisible:=true
else
   tsOutrosFiltros.TabVisible:=false;

BBIMPRIMIR.Enabled:=Frm_Princ.cr_0212.Enabled;


RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
   RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
if flfilpad(0,'_SITCRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPO',[]) then
      RG_TIPO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
   end;
end;

procedure TFrm_SitCre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Form_Impres_SitCre<>nil then
  begin
  Form_Impres_SitCre.Free;
  Form_Impres_SitCre:=nil;
  end;
freeandnil(mValorRetorno);

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SitCre.bbSalvarClick(Sender: TObject);
var
x: integer;
begin
if fmensagem('Quer Realmente Salvar no Cadastro de Cliente?',0,['1','2'],2)<>mrYes  then
   exit;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADCLI set COBS01=:OBS01 ');
DM1.Query2.SQL.Add('                 ,COBS02=:OBS02 ');
DM1.Query2.SQL.Add('                 ,COBS03=:OBS03 ');
DM1.Query2.SQL.Add('                 ,COBS04=:OBS04 ');
DM1.Query2.SQL.Add('                 ,COBS05=:OBS05 ');
DM1.Query2.SQL.Add('                 where  ');
DM1.Query2.Sql.Add(' CCODCLI=:CODCLI ');
DM1.Query2.ParambyName('OBS01').AsString := copy(obscli01.Text,1,60);
DM1.Query2.ParambyName('OBS02').AsString := copy(obscli02.Text,1,60);
DM1.Query2.ParambyName('OBS03').AsString := copy(obscli03.Text,1,60);
DM1.Query2.ParambyName('OBS04').AsString := copy(obscli04.Text,1,60);
DM1.Query2.ParambyName('OBS05').AsString := copy(obscli05.Text,1,60);
DM1.Query2.ParambyName('CODCLI').Asfloat := fsonumero(CODCLI.Text);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
   fmensagem('Cliente Atualizado!',0,['0'],0);

except
   fmensagem('Erro ao Atualizar a Tabela de Cliente',2,['0'],0);
   end;


end;

procedure TFrm_SitCre.obscli01Exit(Sender: TObject);
begin
if Length(obscli01.Text)>60 then
   obscli01.Text:=copy(obscli01.Text,1,60);
end;

procedure TFrm_SitCre.obscli02Exit(Sender: TObject);
begin
if Length(obscli02.Text)>60 then
   obscli02.Text:=copy(obscli02.Text,1,60);

end;

procedure TFrm_SitCre.obscli03Exit(Sender: TObject);
begin
if Length(obscli03.Text)>60 then
   obscli03.Text:=copy(obscli03.Text,1,60);

end;

procedure TFrm_SitCre.obscli04Exit(Sender: TObject);
begin
if Length(obscli04.Text)>60 then
   obscli04.Text:=copy(obscli04.Text,1,60);

end;

procedure TFrm_SitCre.obscli05Exit(Sender: TObject);
begin
if Length(obscli05.Text)>60 then
   obscli05.Text:=copy(obscli05.Text,1,60);

end;

procedure TFrm_SitCre.obscli01KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(obscli01.Text)>60) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_SitCre.obscli02KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(obscli02.Text)>60) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_SitCre.obscli03KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(obscli03.Text)>60) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_SitCre.obscli04KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(obscli04.Text)>60) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_SitCre.obscli05KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(obscli05.Text)>60) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_SitCre.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_SITCRE','');
mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_SITCRE',mcinst2);
fGravaPadroes(0,'RG_TIPO'             ,'itemindex' ,'_SITCRE',IntToStr(RG_TIPO.ItemIndex));

end;

procedure TFrm_SitCre.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_SitCre.FormActivate(Sender: TObject);
begin
if fsonumero(CODCLI.Text)>0 then
   ActiveControl:=BBSAIR
else
   ActiveControl:=CODCLI;
Pagecontrol1.activepageindex:=0;
end;
procedure TFrm_SitCre.Qr_PedCalcFields(DataSet: TDataSet);
begin
try
   Qr_Pedtipoped.Value:=tab_tped[Qr_PedP1TIPO.Asinteger];
except
   end;
end;

procedure TFrm_SitCre.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
mProcessou:=true;
end;

procedure TFrm_SitCre.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_SitCre.CB_CRECCHAVEPEDClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_SITCRE','CB_CRECCHAVEPED');
if CB_CRECCHAVEPED.Checked then
  fGravaPadroes(-1,'CB_CRECCHAVEPED'   ,'checked'   ,'_SITCRE','true');

end;

procedure TFrm_SitCre.cb_pedpenClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_SITCRE','CB_PEDPEN');
if cb_pedpen.Checked then
  fGravaPadroes(-1,'CB_PEDPEN'   ,'checked'   ,'_SITCRE','true');


end;

end.
