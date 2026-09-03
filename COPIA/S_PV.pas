unit S_PV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,S_DM1,lerarq, dbcgrids;

type
  TFrm_PV = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    db_codtip: TDBComboBox;
    GB_COMIS: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    gb_status: TGroupBox;
    Label17: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    db_desi2S0: TDBEdit;
    db_desi2S1: TDBEdit;
    db_desi2S2: TDBEdit;
    db_desi2S3: TDBEdit;
    db_desi2S4: TDBEdit;
    db_desi2S5: TDBEdit;
    db_desi2S6: TDBEdit;
    db_desi2S7: TDBEdit;
    db_CMS0: TDBEdit;
    db_CMS1: TDBEdit;
    db_CMS2: TDBEdit;
    db_CMS3: TDBEdit;
    db_CMS4: TDBEdit;
    db_CMS5: TDBEdit;
    db_CMS6: TDBEdit;
    db_CMS7: TDBEdit;
    gb_financeiro: TGroupBox;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label19: TLabel;
    DBEdit34: TDBEdit;
    tab_adicionais: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DB_PVTPD1: TDBEdit;
    db_PVDES3: TDBEdit;
    db_PVDES2: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Label20: TLabel;
    db_desiS0: TDBEdit;
    db_desiS1: TDBEdit;
    db_desiS2: TDBEdit;
    db_desiS3: TDBEdit;
    db_desiS4: TDBEdit;
    db_desiS5: TDBEdit;
    db_desiS6: TDBEdit;
    db_desiS7: TDBEdit;
    db_desi3S0: TDBEdit;
    db_desi3S1: TDBEdit;
    db_desi3S2: TDBEdit;
    db_desi3S3: TDBEdit;
    db_desi3S4: TDBEdit;
    db_desi3S5: TDBEdit;
    db_desi3S6: TDBEdit;
    db_desi3S7: TDBEdit;
    Label21: TLabel;
    Label23: TLabel;
    db_DFS0: TDBEdit;
    db_DFS1: TDBEdit;
    db_DFS2: TDBEdit;
    db_DFS3: TDBEdit;
    db_DFS4: TDBEdit;
    db_DFS5: TDBEdit;
    db_DFS6: TDBEdit;
    db_DFS7: TDBEdit;
    CB_VINCULO: TComboBox;
    Label25: TLabel;
    Src_PV: TDataSource;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    CB_PVTPC: TComboBox;
    Label30: TLabel;
    CB_PVTPDC: TComboBox;
    db_PVDES1: TDBEdit;
    Label31: TLabel;
    CB_PVTPD1: TComboBox;
    Label32: TLabel;
    CB_PVTPD2: TComboBox;
    Label33: TLabel;
    CB_PVTPD3: TComboBox;
    Label34: TLabel;
    CB_PVTPDESF: TComboBox;
    DB_PVDESCF: TDBEdit;
    gb_intervalo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Edit2: TEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label35: TLabel;
    CB_PVDDESCF: TComboBox;
    DB_PVDIASDESCF: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    lbl_hint: TLabel;
    Label18: TLabel;
    db_CMVD02S0: TDBEdit;
    db_CMVD02S1: TDBEdit;
    db_CMVD02S2: TDBEdit;
    db_CMVD02S3: TDBEdit;
    db_CMVD02S4: TDBEdit;
    db_CMVD02S5: TDBEdit;
    db_CMVD02S6: TDBEdit;
    db_CMVD02S7: TDBEdit;
    DBCB_ACREDESREG: TDBCheckBox;
    DBCB_AJCOMIS: TDBCheckBox;
    Label36: TLabel;
    DBE_USRINC: TDBEdit;
    NOMUSR_INC: TEdit;
    Label37: TLabel;
    DBE_DATHOR_INC: TDBEdit;
    Label38: TLabel;
    DBE_USRALT: TDBEdit;
    NOMUSR_ALT: TEdit;
    Label39: TLabel;
    DBE_DATHOR_ALT: TDBEdit;
    Label40: TLabel;
    DBE_VALMIN: TDBEdit;
    DBCB_ACREDESREG_PROMO: TDBCheckBox;
    Label41: TLabel;
    DBEdit4: TDBEdit;
    Label42: TLabel;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    lbl_PERCPPARC: TLabel;
    DBE_PERCPPARC: TDBEdit;
    Label43: TLabel;
    CB_TPP: TComboBox;
    gb_prazos: TGroupBox;
    srv_pv02: TDataSource;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Tb_Pv02: TQuery;
    U_PV02: TUpdateSQL;
    Tb_Pv02PV2CODEMP: TFloatField;
    Tb_Pv02PV2CODTIP: TStringField;
    Tb_Pv02PV2CODPV: TFloatField;
    Tb_Pv02PV2PRAZO: TFloatField;
    Tb_Pv02PV2PORC: TFloatField;
    bbexcprazo: TBitBtn;
    DBCB_PVACEITARPCOEXCLUSIVO: TDBCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure db_codtipExit(Sender: TObject);
    procedure PRAZOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DB_PVTPD1Exit(Sender: TObject);
    procedure db_PVDES1Exit(Sender: TObject);
    procedure db_desi2S0Exit(Sender: TObject);
    procedure db_desi2S1Exit(Sender: TObject);
    procedure db_desi2S2Exit(Sender: TObject);
    procedure db_desi2S3Exit(Sender: TObject);
    procedure db_desi2S4Exit(Sender: TObject);
    procedure db_desi2S5Exit(Sender: TObject);
    procedure db_desi2S6Exit(Sender: TObject);
    procedure db_desi2S7Exit(Sender: TObject);
    procedure db_CMS0Exit(Sender: TObject);
    procedure db_CMS1Exit(Sender: TObject);
    procedure db_CMS2Exit(Sender: TObject);
    procedure db_CMS3Exit(Sender: TObject);
    procedure db_CMS4Exit(Sender: TObject);
    procedure db_CMS5Exit(Sender: TObject);
    procedure db_CMS6Exit(Sender: TObject);
    procedure db_CMS7Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_VINCULOExit(Sender: TObject);
    procedure Src_PVDataChange(Sender: TObject; Field: TField);
    procedure PRAZOEnter(Sender: TObject);
    procedure CB_PVTPD3Click(Sender: TObject);
    procedure db_PVDES3Exit(Sender: TObject);
    procedure CB_PVTPD1Click(Sender: TObject);
    procedure CB_PVTPDCClick(Sender: TObject);
    procedure CB_PVTPD2Click(Sender: TObject);
    procedure CB_PVTPCClick(Sender: TObject);
    procedure DB_PVDESCFExit(Sender: TObject);
    procedure CB_PVTPDESFClick(Sender: TObject);
    procedure CB_PVTPCEnter(Sender: TObject);
    procedure CB_PVTPCExit(Sender: TObject);
    procedure CB_PVTPDCExit(Sender: TObject);
    procedure CB_PVTPD1Exit(Sender: TObject);
    procedure CB_PVTPD2Exit(Sender: TObject);
    procedure CB_PVTPD3Exit(Sender: TObject);
    procedure CB_PVDDESCFExit(Sender: TObject);
    procedure CB_PVTPDESFExit(Sender: TObject);
    procedure CB_PVDDESCFClick(Sender: TObject);
    procedure DBE_VALMINExit(Sender: TObject);
    procedure DBE_PERCPPARCExit(Sender: TObject);
    procedure CB_TPPExit(Sender: TObject);
    procedure Tb_Pv02BeforePost(DataSet: TDataSet);
    procedure bbexcprazoClick(Sender: TObject);
    procedure Tb_Pv02BeforeDelete(DataSet: TDataSet);
    procedure Tb_Pv02AfterPost(DataSet: TDataSet);
    procedure Tb_Pv02AfterInsert(DataSet: TDataSet);
    procedure Tb_Pv02AfterEdit(DataSet: TDataSet);
    procedure Tb_Pv02BeforeCancel(DataSet: TDataSet);
  private
    { Private declarations }
    function fPV01lerant(ptipo: Integer):Boolean;
    function fCalcularPrazoMedio: Boolean;

    function flcadpv2_Local(pCodEmp,pCodTip,pCodPV: String): Boolean;

    function fZerarPorc(pCodEmp,pCodTip,pCodPV,pPrazo: String): Boolean;

    function fExcluirPv02: Boolean;

  public
    { Public declarations }
  end;
function fpv01gant(ptipo: Integer): Boolean;

var
  Frm_PV: TFrm_PV;
  pv_ori: String;
  moper: Integer;
  mcodtip: String;
  mpv2_prazoant: integer;
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_PV.BitBtn2Click(Sender: TObject);
begin
  inherited;
if DM1.Tb_PV2.State in [dsInsert,dsEdit] then
   DM1.Tb_PV2.Cancel;
if not (DM1.Tb_Pv2.Eof) and not (DM1.Tb_Pv2PV2PRAZO.IsNull) then
   DM1.Tb_Pv2.Delete;

end;

procedure TFrm_PV.FormCreate(Sender: TObject);
begin
  inherited;
DBNavigator2.DataSource:=DM1.Src_PV;
DBGrid1.DataSource:=DM1.Src_PV;

pv_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADPV') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
DM1.Qr_FP.Open;
CB_VINCULO.Items.Clear;
While not DM1.Qr_FP.Eof do
   begin
   CB_VINCULO.Items.Add(Trim(DM1.Qr_FPFPDESC.Value));
   DM1.Qr_FP.Next;
   end;
if DM1.Tb_PargerPUPVESP.Asinteger=1 then
   begin
   db_codtip.Visible:=false;
   DBEdit1.Left     :=115;
   end;
{
if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
   begin
   lbl_PERCPPARC.Visible:=true;
   DBE_PERCPPARC.Visible:=true;
   end
else
   begin
   lbl_PERCPPARC.Visible:=False;
   DBE_PERCPPARC.Visible:=False;
   end;
}

PC1.ActivePage := tsCad;

end;


procedure TFrm_PV.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pv_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   pv_ori := '';
   end;

end;

procedure TFrm_PV.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if pv_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      pv_ori := '';      
      end;
   abort;
   end;

end;

procedure TFrm_PV.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM1.Tb_PV.Append;
DM1.Tb_Pv2.Close;
flcadpv2_Local('-1','-1','-1');

//Tb_pv02.Close;
CB_PVTPCClick(Self);
CB_PVTPD1Click(Self);
CB_PVTPD2Click(Self);
CB_PVTPD3Click(Self);
CB_PVDDESCFClick(Self);
CB_PVTPDESFClick(Self);

if DM1.Tb_PargerPDQPCOP.AsInteger=4 then
   CB_TPP.ItemIndex:=4
else
   CB_TPP.ItemIndex:=0;




db_codtip.Enabled:=True;
DBEdit1.Enabled:=True;
tab_adicionais.Enabled:=true;
if PC1.ActivePage=tsCad then
   begin
   if DM1.Tb_PargerPUPVESP.AsInteger=1 then
      DBEdit1.SetFocus
   else
      db_codtip.SetFocus;
   end;
DM1.Tb_PVPVUSRINC.AsInteger:=codusr;
DM1.Tb_PVPVDTINC.AsDateTime:=Now;

mcodtip:='';
mcodigo:='';
end;

procedure TFrm_PV.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_PVPVNOME.IsNull then
   begin
   fMensagem('Não há registro a ser alterado!',0,['0'],0);
   exit;
   end;
moper:=8;
if DM1.Tb_PVPVCODTIP.Value='PP' then
   DBRadioGroup5.Enabled:=true
else
   DBRadioGroup5.Enabled:=False;
CB_PVTPDESFClick(Self);
CB_PVDDESCFClick(Self);
CB_PVTPCClick(Self);
CB_PVTPD1Click(Self);
CB_PVTPD2Click(Self);
CB_PVTPD3Click(Self);

{

if (PVTC.ItemIndex=1) or (PVTC.ItemIndex=4) then
   begin
   DBEdit5.Enabled:=True;
   DBEdit3.Enabled:=True;
   DBEdit34.Enabled:=True;
   end
else
   begin
   DBEdit5.Enabled:=False;
   DBEdit3.Enabled:=False;
   DBEdit34.Enabled:=False;
   end;

if PVTC.ItemIndex=7 then
   begin
   db_CMS0.Enabled:=true;
   db_CMS1.Enabled:=true;
   db_CMS2.Enabled:=true;
   db_CMS3.Enabled:=true;
   db_CMS4.Enabled:=true;
   db_CMS5.Enabled:=true;
   db_CMS6.Enabled:=true;
   db_CMS7.Enabled:=true;
   end
else
   begin
   db_CMS0.Enabled:=False;
   db_CMS1.Enabled:=False;
   db_CMS2.Enabled:=False;
   db_CMS3.Enabled:=False;
   db_CMS4.Enabled:=False;
   db_CMS5.Enabled:=False;
   db_CMS6.Enabled:=False;
   db_CMS7.Enabled:=False;
   end;


if DM1.Tb_PVPVACTD.Value>0 then
   begin
   DBEdit23.Enabled:=False;
   DBEdit24.Enabled:=False;
   DBEdit25.Enabled:=False;
   end
else
   begin
   DBEdit23.Enabled:=True;
   DBEdit24.Enabled:=True;
   DBEdit25.Enabled:=True;
   end;
if PVTDC.ItemIndex=0 then
   DBEdit4.Enabled:=True
else
   DBEdit4.Enabled:=False;
if PVTDC.ItemIndex=0 then
   DBEdit6.Enabled:=True
else
   DBEdit6.Enabled:=False;

if DBRg_Desci02.ItemIndex=0 then
   DBEdit7.Enabled:=True
else
   DBEdit7.Enabled:=False;


if DBRadioGroup4.ItemIndex=3 then
   DBEdit8.Enabled:=true
else
   DBEdit8.Enabled:=False;

if DBRadioGroup4.ItemIndex=4 then
   GroupBox6.Enabled:=True
else
   GroupBox6.Enabled:=False;


if dbrg_desci01.ItemIndex=0 then
   begin
   DBEdit6.Enabled:=True;
   end
else
   begin
   DBEdit6.Enabled:=False;
   if dbrg_desci01.ItemIndex=4 then
   end;
if dbrg_desci01.ItemIndex=4 then
   begin
   db_desi2S0.Enabled:=true;
   db_desi2S1.Enabled:=true;
   db_desi2S2.Enabled:=true;
   db_desi2S3.Enabled:=true;
   db_desi2S4.Enabled:=true;
   db_desi2S5.Enabled:=true;
   db_desi2S6.Enabled:=true;
   db_desi2S7.Enabled:=true;
   end
else
   begin
   db_desi2S0.Enabled:=False;
   db_desi2S1.Enabled:=False;
   db_desi2S2.Enabled:=False;
   db_desi2S3.Enabled:=False;
   db_desi2S4.Enabled:=False;
   db_desi2S5.Enabled:=False;
   db_desi2S6.Enabled:=False;
   db_desi2S7.Enabled:=False;
   end;

if dbrg_desci01.ItemIndex=0 then
   begin
   DBEdit7.Enabled:=True;
   end
else
   begin
   DBEdit7.Enabled:=False;
   end;
if DBRg_Desci02.ItemIndex=3 then
   begin
   db_desi2S0.Enabled:=true;
   db_desi2S1.Enabled:=true;
   db_desi2S2.Enabled:=true;
   db_desi2S3.Enabled:=true;
   db_desi2S4.Enabled:=true;
   db_desi2S5.Enabled:=true;
   db_desi2S6.Enabled:=true;
   db_desi2S7.Enabled:=true;
   end
else
   begin
   db_desi2S0.Enabled:=false;
   db_desi2S1.Enabled:=false;
   db_desi2S2.Enabled:=false;
   db_desi2S3.Enabled:=false;
   db_desi2S4.Enabled:=false;
   db_desi2S5.Enabled:=false;
   db_desi2S6.Enabled:=false;
   db_desi2S7.Enabled:=false;
   end;

if dbrg_desci03.ItemIndex=0 then
   DBEdit35.Enabled:=True
else
   DBEdit35.Enabled:=False;
if dbrg_desci03.ItemIndex=3 then
   begin
   db_desi3S0.Enabled:=true;
   db_desi3S1.Enabled:=true;
   db_desi3S2.Enabled:=true;
   db_desi3S3.Enabled:=true;
   db_desi3S4.Enabled:=true;
   db_desi3S5.Enabled:=true;
   db_desi3S6.Enabled:=true;
   db_desi3S7.Enabled:=true;
   end
else
   begin
   db_desi3S0.Enabled:=false;
   db_desi3S1.Enabled:=false;
   db_desi3S2.Enabled:=false;
   db_desi3S3.Enabled:=false;
   db_desi3S4.Enabled:=false;
   db_desi3S5.Enabled:=false;
   db_desi3S6.Enabled:=false;
   db_desi3S7.Enabled:=false;
   end;

}


DM1.Tb_PV.Edit;
if PC1.ActivePage=tsCad then
   DBEdit2.SetFocus;

DBEdit1.Enabled    :=False;
db_codtip.Enabled:=False;
mcodigo:=DM1.Tb_PVPVCODPV.AsString;
mcodtip:=DM1.Tb_PVPVCODTIP.Value;



flcadpv2(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

DM1.Tb_PVPVUSRALT.AsInteger:=codusr;
DM1.Tb_PVPVDTALT.AsDateTime:=Now;

tab_adicionais.Enabled:=true;

end;

procedure TFrm_PV.GRAVARClick(Sender: TObject);
var
mPrazomed: Real;
mQtdp: Integer;
mPesoPrazo: Real;
mTotPeso: Real;
mPercResta: Real;
mPercDiv: Real;
mDifResta: Real;

mQtdResta: Integer;


begin
  inherited;
if (DM1.Tb_PVPVNOME.Value='_') or (DM1.Tb_PVPVNOME.IsNull) then
   begin
   fMensagem('Nome do plano invalido!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;

if (DM1.Tb_PVPVCODTIP.Value<>'AV') and
   (DM1.Tb_PVPVCODTIP.Value<>'AP') and
   (DM1.Tb_PVPVCODTIP.Value<>'PP') and
   (DM1.Tb_PVPVCODTIP.Value<>'CV') then
   begin
   fMensagem('Tipo do Plano tem que ser, "AV","AP","PP" ou "CV"',0,['0'],0);
   db_codtip.SetFocus;
   exit;
   end;

if DM1.Tb_PVPVCODPV.IsNull then
   begin
   fMensagem('Código do Plano tem que ser informado',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_PVPVACTD.Value>0 then
   begin
   DM1.Tb_PVPVACT00.Value:=0;
   DM1.Tb_PVPVACT01.Value:=0;
   DM1.Tb_PVPVACT99.Value:=0;
   end;

if moper=8 then
   begin
   fpv01gant(moper);
   end;

if DM1.Tb_PVPVPERCPPARC.AsFloat>0 then
   begin
   if DM1.Tb_PV2.RecordCount<2 then
      DM1.Tb_PVPVPERCPPARC.AsFloat:=0;
   end;
DM1.Tb_PVPVPRAZOS.Value:=DM1.Tb_PVprazos.Value;
DM1.Tb_PVPVCODUSR.Value:=codusr;
DM1.Tb_PVPVDTALT.Value :=Now;
DM1.Tb_PVPVHRALT.Value :=FormatDateTime(fhr, time);
DM1.Tb_PV.AutoCalcFields:=false;
dm1.tB_Pv.Post;
DM1.Tb_PV.AutoCalcFields:=true;
DM1.Tb_PV2.First;
mPrazomed:=0;
mQtdp:=0;
mPercResta:=0;
mQtdResta :=0;
mPercDiv  :=0;


mQtdp     :=0;
mPesoPrazo:=0;

flcadpv2(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
While not DM1.Tb_PV2.Eof do
   begin
   mQtdp:=mQtdp+1;
   if DM1.Tb_PV2PV2PORC.AsFloat>0 then
      mPercResta:=mPercResta+DM1.Tb_PV2PV2PORC.AsFloat
   else
      mQtdResta:=mQtdResta+1;
   DM1.Tb_PV2.Next;
   end;
if (mQtdp<1) and (mPercResta>0) then
   begin
   fZerarPorc(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString,'');
   end
else if mQtdResta=0 then
   begin
   fZerarPorc(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString,DM1.Tb_PV2PV2PRAZO.AsString);
   end;


mPercResta:=100-mPercResta;
mDifResta:=0;

mQtdp     :=0;
mPesoPrazo:=0;

if (mPercResta<>0) and (mQtdResta<>0)then
   begin
   mPercDiv:=mPercResta / mQtdResta;
   mDifResta:=mPercResta-(mPercDiv*mQtdResta);
   end;

DM1.Tb_PV2.First;
While not DM1.Tb_Pv2.Eof do
   begin

   if DM1.Tb_PV2PV2PORC.AsFloat>0 then
      begin
      mPesoPrazo:=mPesoPrazo+(DM1.Tb_PV2PV2PORC.AsFloat*DM1.Tb_PV2PV2PRAZO.AsFloat);
      mTotPeso :=mTotPeso + DM1.Tb_PV2PV2PORC.AsFloat;
      end
   else
      begin
      mPesoPrazo:=mPesoPrazo+(mPercDiv+mDifResta)*DM1.Tb_PV2PV2PRAZO.AsFloat;
      mTotPeso :=mTotPeso + (mPercDiv+mDifResta);
      mDifResta :=0;
      end;
   DM1.Tb_Pv2.Next;
   end;

try
   mPrazoMed := mPesoPrazo / mTotPeso;
except
   mPrazomed:=0;
   end;
{
if (mPrazomed<>0) and (mQtdp<>0) then
   begin
   try
      mPrazomed:=mPrazomed div mQtdp;
   except
      mPrazomed:=0;
      end;
   end;
}
DM1.Tb_PV.Edit;
DM1.Tb_PVPVPRAZOS.Value  :=DM1.Tb_PVprazos.Value;
DM1.Tb_PVPVPRAZOMED.Value:=mPrazomed;
DM1.Tb_PV.Post;

CANCELAR.Click;


end;

procedure TFrm_PV.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_PVPVCODPV.IsNull then
   begin
   fMensagem('Não há registro a ser excluido!',0,['0'],0);
   exit;
   end;

if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   fpv01gant(9);
   fExcluirPv02;
   DM1.Tb_PV.Delete;
   end;


end;

procedure TFrm_PV.CANCELARClick(Sender: TObject);
begin
  inherited;
  
DM1.Tb_pv.Cancel;
tab_adicionais.Enabled:=false;

end;

procedure TFrm_PV.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if (CANCELAR.Focused) or (SAIR.Focused) then
   exit;
if (valfloat(mcodigo)<>DM1.Tb_PVPVCODPV.Value) or
   (mcodtip<>DM1.Tb_PVPVCODTIP.Value) then
   begin

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.add('Select PVNOME from CADPV where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PVCODEMP=0'+IntToStr(codemp)+' and ')
                      +' PVCODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                      +' and PVCODPV=0'+DM1.Tb_PVPVCODPV.AsString);
   DM1.Query1.Open;

   if not DM1.Query1.Eof then
      begin
      fMensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['0'],0);
      DBEdit1.SetFocus;
      exit;
      end
   else
      flcadpv2_Local(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

   end;

end;

procedure TFrm_PV.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Pv.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
if DM1.Tb_PVPVNOME.Value='_' then
   DM1.Tb_Pv.Delete;


end;

procedure TFrm_PV.BBnAtuClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_PV.State in [dsInsert, dsEdit] then
  begin
  Case fMensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2','3'],0) of
    mrYes: GRAVAR.Click;
  else
    CANCELAR.Click;
    end;
  end;
if pv_ori='consulta' then
  begin
  fpv01lerant(0);
  end
else
  flcadpv(CAMPO.ItemIndex,1,'',Edit1.Text);
end;

function fpv01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PVCODNOV) from OLD_CADPV');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADPV (';
v:='';
for x:=0 to DM1.Tb_Pv.FieldCount-1 do
  begin
  if DM1.Tb_Pv.Fields[x].FieldKind=fkCalculated then
    Continue;
  minstru:=minstru+v+DM1.Tb_Pv.Fields[x].FieldName;
  v:=',';
  end;

minstru:=minstru+',PVCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Pv.FieldCount-1 do
  begin
  if DM1.Tb_Pv.Fields[x].FieldKind=fkCalculated then
    Continue;
  if DM1.Tb_Pv.Fields[x].FieldName='PVSTATUS' then
    minstru:=minstru+v+FormatFloat('0',ptipo)+' as PVSTATUS '
  else if DM1.Tb_Pv.Fields[x].FieldName='PVCODUSR' then
    minstru:=minstru+v+FormatFloat('00000',codusr)+' as PVCODUSR '
  else if DM1.Tb_Pv.Fields[x].FieldName='PVDTALT' then
    minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PVDTALT '
  else if DM1.Tb_Pv.Fields[x].FieldName='PVHRALT' then
    minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PVHRALT '
  else
    minstru:=minstru+v+DM1.Tb_Pv.Fields[x].FieldName;
  v:=',';
  end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PVCODNOV ';
minstru:=minstru+' from CADPV where PVCODEMP=0'+DM1.Tb_PVPVCODEMP.AsString
                +' and  PVCODPV=0'+DM1.Tb_PVPVCODPV.AsString
                +' and  PVCODTIP=:TABPV';

DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
DM1.Query1.parambyName('TABPV').asString:=DM1.Tb_PVPVCODTIP.AsString;
Try
  DM1.Query1.ExecSQL;
except
  fMensagem('Erro ao Fazer o Backup da Alteracao PV255. Contactar Suporte',0,['0'],0);
  end;
DM1.SG_ASSOC.Commit;
minstru:='Insert into OLD_CADPV2 (';
v:='';
for x:=0 to DM1.Tb_Pv2.FieldCount-1 do
  begin
  if DM1.Tb_Pv2.Fields[x].FieldKind=fkCalculated then
    Continue;
  minstru:=minstru+v+DM1.Tb_Pv2.Fields[x].FieldName;
  v:=',';
  end;

minstru:=minstru+',PV2CODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Pv2.FieldCount-1 do
  begin
  if DM1.Tb_Pv2.Fields[x].FieldKind=fkCalculated then
    Continue;
  minstru:=minstru+v+DM1.Tb_Pv2.Fields[x].FieldName;
  v:=',';
  end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PV2CODNOV ';
minstru:=minstru+' from CADPV2 where PV2CODEMP=0'+DM1.Tb_PvPVCODEMP.AsString
                +' and  PV2CODPV=0'+DM1.Tb_PvPVCODPV.AsString
                +' and  PV2CODTIP=:TABPV';

DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
DM1.Query1.parambyName('TABPV').asString:=DM1.Tb_PVPVCODTIP.AsString;

Try
  DM1.Query1.ExecSQL;
except
  fMensagem('Erro ao Fazer o Backup da Alteracao PV366. Contactar Suporte',0,['0'],0);
  end;
DM1.SG_ASSOC.Commit;
result:=True;
end;

function tfrm_PV.fPV01lerant(ptipo: Integer):Boolean;
var
  x,mcod: Integer;
  minstru: String;
  v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_PV.FieldCount-1 do
  begin
  if DM1.Tb_PV.Fields[x].FieldKind=fkCalculated then
    Continue;
  minstru:=minstru+v+DM1.Tb_PV.Fields[x].FieldName;
  v:=',';
  end;
minstru:=minstru+' from OLD_CADPV where PVCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_PV.Close;
DM1.Tb_PV.SQL.Clear;
DM1.Tb_PV.SQL.add(minstru);
DM1.Tb_PV.Open;

minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_PV2.FieldCount-1 do
   begin
   if DM1.Tb_PV2.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_PV2.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADPV2 where PV2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_PV2.Close;
DM1.Tb_PV2.SQL.Clear;
DM1.Tb_PV2.SQL.add(minstru);
DM1.Tb_PV2.Open;

BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;




procedure TFrm_PV.DBEdit22Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_PVPVACTD.Value>0 then
   begin
   DBEdit23.Enabled:=False;
   DBEdit24.Enabled:=False;
   DBEdit25.Enabled:=False;
   end
else
   begin
   DBEdit23.Enabled:=True;
   DBEdit24.Enabled:=True;
   DBEdit25.Enabled:=True;
   end;

end;

procedure TFrm_PV.db_codtipExit(Sender: TObject);
begin
  inherited;
if db_codtip.ItemIndex<0 then
   begin
   with db_codtip do ItemIndex:=Items.IndexOf(db_codtip.Text);
   end;
db_codtip.text:=db_codtip.Items.Strings[db_codtip.ItemIndex];
DM1.Tb_PVPVCODTIP.Value:=db_codtip.Text;

{if (DM1.Tb_PVPVCODTIP.Value<>'AV') and
   (DM1.Tb_PVPVCODTIP.Value<>'AP') and
   (DM1.Tb_PVPVCODTIP.Value<>'PP') then
   begin
   fMensagem('Tipo do Plano tem que ser, "AV","AP" ou "PP"',0,['0'],0);
   DBComboBox1.SetFocus;
   exit;
   end;
}
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(PVCODPV) from CADPV where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PVCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PVCODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39));
DM1.Query1.Open;
DM1.Tb_PVPVCODPV.Value:=DM1.Query1.Fields[0].AsInteger+1;



if DM1.Tb_PVPVCODTIP.Value='PP' then
   begin
   DBRadioGroup5.Enabled:=true;
   gb_prazos.Enabled   :=False;
   end
else
   begin
   DBRadioGroup5.Enabled:=False;
   gb_prazos.Enabled   :=true;
   end;

end;

procedure TFrm_PV.PRAZOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_PV.DBEdit5Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCOM.Value<0) or (DM1.Tb_PVPVCOM.Value>99) then
   begin
   fMensagem('Percentual de comissão invalido!',0,['0'],0);
   DBEdit5.SetFocus;
   end;
end;

procedure TFrm_PV.DB_PVTPD1Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVDES.Value<0) or (DM1.Tb_PVPVDES.Value>99) then
   begin
   fmensagem('Desconto invalido!',0,['0'],0);
   DB_PVTPD1.SetFocus;
   end;

end;

procedure TFrm_PV.db_PVDES1Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVDES1.Value<0) or (DM1.Tb_PVPVDES1.Value>99) then
   begin
   fmensagem('Desconto invalido!',0,['0'],0);
   db_PVDES1.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S0Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S0.Value<0) or (DM1.Tb_PVPVD2S0.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S0.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S1Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S1.Value<0) or (DM1.Tb_PVPVD2S1.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S1.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S2Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S2.Value<0) or (DM1.Tb_PVPVD2S2.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desiS2.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S3Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S3.Value<0) or (DM1.Tb_PVPVD2S3.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S3.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S4Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S4.Value<0) or (DM1.Tb_PVPVD2S4.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S4.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S5Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S5.Value<0) or (DM1.Tb_PVPVD2S5.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desiS5.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S6Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2S6.Value<0) or (DM1.Tb_PVPVD2S6.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S6.SetFocus;
   end;

end;

procedure TFrm_PV.db_desi2S7Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVD2s7.Value<0) or (DM1.Tb_PVPVD2S7.Value>99) then
   begin
   fMensagem('Desconto invalido!',0,['0'],0);
   db_desi2S7.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS0Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS0.Value<0) or (DM1.Tb_PVPVCMS0.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS0.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS1Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS1.Value<0) or (DM1.Tb_PVPVCMS1.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS1.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS2Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS2.Value<0) or (DM1.Tb_PVPVCMS2.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS2.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS3Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS3.Value<0) or (DM1.Tb_PVPVCMS3.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS3.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS4Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS4.Value<0) or (DM1.Tb_PVPVCMS4.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS4.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS5Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS5.Value<0) or (DM1.Tb_PVPVCMS5.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS5.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS6Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS6.Value<0) or (DM1.Tb_PVPVCMS6.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS6.SetFocus;
   end;

end;

procedure TFrm_PV.db_CMS7Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCMS7.Value<0) or (DM1.Tb_PVPVCMS7.Value>99) then
   begin
   fMensagem('Comissão invalido!',0,['0'],0);
   db_CMS7.SetFocus;
   end;

end;

procedure TFrm_PV.DBEdit34Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCOM03.Value<0) or (DM1.Tb_PVPVCOM03.Value>99) then
   begin
   fMensagem('Percentual de comissão invalido!',0,['0'],0);
   DBEdit34.SetFocus;
   end;

end;

procedure TFrm_PV.DBEdit3Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCOM02.Value<0) or (DM1.Tb_PVPVCOM02.Value>99) then
   begin
   fMensagem('Percentual de comissão invalido!',0,['0'],0);
   DBEdit3.SetFocus;
   end;

end;

procedure TFrm_PV.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGEPV.Value=1 then
   begin
   If DM1.Tb_PV.State in [dsInsert, dsEdit] then
      begin
         Case fMensagem('O registro atual não está gravado!'+#13
                       +'Deseja gravar agora?',0,['1','2','3'],0) of
            mrYes: GRAVAR.Click;
         else CANCELAR.Click;
         end;
      end;
   if pv_ori='consulta' then
      begin
      fpv01lerant(0);
      end
   else
      flcadpv(CAMPO.ItemIndex,1,'',Edit1.Text);
   end;
end;

procedure TFrm_PV.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_PV.SAIRClick(Sender: TObject);
begin
  inherited;
  if pv_ori = '' then close;
end;

procedure TFrm_PV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PV.CB_VINCULOExit(Sender: TObject);
begin
  inherited;
if CB_VINCULO.ItemIndex<0 then
   begin
   with CB_VINCULO do ItemIndex:=Items.IndexOf(CB_VINCULO.Text);
   end;
CB_VINCULO.text:=CB_VINCULO.Items.Strings[CB_VINCULO.ItemIndex];

if DM1.Qr_FP.Locate('FPDESC',CB_VINCULO.Text,[LoPartialKey,LoCaseInSensitive]) then
   begin
   DM1.Tb_PVPVVINCULO.Value:=DM1.Qr_FPFPCODIGO.Value;
   end;

end;

procedure TFrm_PV.Src_PVDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if not (DM1.Tb_PV.State in [dsEdit,dsInsert]) then
   begin
   if (not Tb_Pv02.Active) or ( (DM1.Tb_PVPVCODEMP.AsInteger<>Tb_Pv02PV2CODEMP.AsInteger)
       or (DM1.Tb_PVPVCODPV.AsInteger<>Tb_Pv02PV2CODPV.AsInteger)
       or (DM1.Tb_PVPVCODTIP.AsString<>Tb_Pv02PV2CODTIP.AsString)) then
       flcadpv2_Local(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

   CB_VINCULO.ItemIndex:=-1;
   CB_VINCULO.Text:='';

   if DM1.Tb_PVPVVINCULO.IsNull then
      begin
      CB_VINCULO.ItemIndex:=-1;
      CB_VINCULO.Text:='';
      end
   else
      begin
      if DM1.Qr_FP.Active then
         begin
         if DM1.Qr_FP.Locate('FPCODIGO',DM1.Tb_PVPVVINCULO.Value,[]) then
            begin
            CB_VINCULO.Text:=DM1.Qr_FPFPDESC.AsString
            end;
         end
      else
         begin
         CB_VINCULO.ItemIndex:=-1;
         CB_VINCULO.Text:='';
         end;
      end;

   if DM1.Tb_PVPVTPC.IsNull then
      begin
      CB_PVTPC.ItemIndex:=-1;
      CB_PVTPC.Text:='';
      end
   else
      CB_PVTPC.ItemIndex:=DM1.Tb_PVPVTPC.AsInteger;

   if DM1.Tb_PVPVTPDC.IsNull then
      begin
      CB_PVTPDC.ItemIndex:=-1;
      CB_PVTPDC.Text:='';
      end
   else
      CB_PVTPDC.ItemIndex:=DM1.Tb_PVPVTPDC.AsInteger;

   if DM1.Tb_PVPVTPD1.IsNull then
      begin
      CB_PVTPD1.ItemIndex:=-1;
      CB_PVTPD1.Text:='';
      end
   else
      CB_PVTPD1.ItemIndex:=DM1.Tb_PVPVTPD1.AsInteger;

   if DM1.Tb_PVPVTPD2.IsNull then
      begin
      CB_PVTPD2.ItemIndex:=-1;
      CB_PVTPD2.Text:='';
      end
   else
      CB_PVTPD2.ItemIndex:=DM1.Tb_PVPVTPD2.AsInteger;

   if DM1.Tb_PVPVTPD3.IsNull then
      begin
      CB_PVTPD3.ItemIndex:=-1;
      CB_PVTPD3.Text:='';
      end
   else
      CB_PVTPD3.ItemIndex:=DM1.Tb_PVPVTPD3.AsInteger;

   if DM1.Tb_PVPVTPDESF.IsNull then
      begin
      CB_PVTPDESF.ItemIndex:=-1;
      CB_PVTPDESF.Text:='';
      end
   else
      CB_PVTPDESF.ItemIndex:=DM1.Tb_PVPVTPDESF.AsInteger;

   if DM1.Tb_PVPVDDESCF.IsNull then
      begin
      CB_PVDDESCF.ItemIndex:=-1;
      CB_PVDDESCF.Text:='';
      end
   else
      CB_PVDDESCF.ItemIndex:=DM1.Tb_PVPVDDESCF.AsInteger;

   NOMUSR_INC.Text :='';
   if DM1.Tb_PVPVUSRINC.AsFloat<>0 then
      begin
      if DM1.Tb_PVPVUSRINC.AsFloat=1111 then
         NOMUSR_INC.Text:='Programador(master)'
      else
         begin
         if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_PVPVUSRINC.AsString) then
            NOMUSR_INC.Text:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   NOMUSR_ALT.Text :='';
   if DM1.Tb_PVPVUSRALT.AsFloat<>0 then
      begin
      if DM1.Tb_PVPVUSRALT.AsFloat=1111 then
         NOMUSR_ALT.Text:='Programador(master)'
      else
         begin
         if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_PVPVUSRALT.AsString) then
            NOMUSR_ALT.Text:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   if DM1.Tb_PVPVTPP.IsNull then
      begin
      CB_TPP.ItemIndex:=-1;
      CB_TPP.Text:='';
      end
   else
      CB_TPP.ItemIndex:=DM1.Tb_PVPVTPP.AsInteger;


      
   end;

end;


procedure TFrm_PV.PRAZOEnter(Sender: TObject);
begin
  inherited;
if not DM1.Tb_PV2.Active then
   begin
   flcadpv2(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
   end;
end;

procedure TFrm_PV.CB_PVTPD3Click(Sender: TObject);
begin
  inherited;
 with CB_PVTPD3 do ItemIndex:=items.IndexOf(CB_PVTPD3.Text);
if trim(CB_PVTPD3.Text)='' then
   CB_PVTPD3.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD3.Value:=CB_PVTPD3.ItemIndex;

if CB_PVTPD3.ItemIndex=0 then
   db_PVDES3.Enabled:=True
else
   db_PVDES3.Enabled:=False;
if CB_PVTPD3.ItemIndex=3 then
   begin
   db_desi3S0.Enabled:=true;
   db_desi3S1.Enabled:=true;
   db_desi3S2.Enabled:=true;
   db_desi3S3.Enabled:=true;
   db_desi3S4.Enabled:=true;
   db_desi3S5.Enabled:=true;
   db_desi3S6.Enabled:=true;
   db_desi3S7.Enabled:=true;
   end
else
   begin
   db_desi3S0.Enabled:=false;
   db_desi3S1.Enabled:=false;
   db_desi3S2.Enabled:=false;
   db_desi3S3.Enabled:=false;
   db_desi3S4.Enabled:=false;
   db_desi3S5.Enabled:=false;
   db_desi3S6.Enabled:=false;
   db_desi3S7.Enabled:=false;
   end;

end;

procedure TFrm_PV.db_PVDES3Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVDES3.Value<0) or (DM1.Tb_PVPVDES3.Value>99) then
   begin
   fmensagem('Desconto invalido!',0,['0'],0);
   db_PVDES3.SetFocus;
   end;

end;

procedure TFrm_PV.CB_PVTPD1Click(Sender: TObject);
begin
  inherited;
 with CB_PVTPD1 do ItemIndex:=items.IndexOf(CB_PVTPD1.Text);
if trim(CB_PVTPD1.Text)='' then
   CB_PVTPD1.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD1.Value:=CB_PVTPD1.ItemIndex;
if CB_PVTPD1.ItemIndex=0 then
   begin
   DB_PVTPD1.Enabled:=True;
   end
else
   begin
   DB_PVTPD1.Enabled:=False;
   end;
if CB_PVTPD1.ItemIndex=4 then
   begin
   db_desiS0.Enabled:=true;
   db_desiS1.Enabled:=true;
   db_desiS2.Enabled:=true;
   db_desiS3.Enabled:=true;
   db_desiS4.Enabled:=true;
   db_desiS5.Enabled:=true;
   db_desiS6.Enabled:=true;
   db_desiS7.Enabled:=true;
   end
else
   begin
   db_desiS0.Enabled:=False;
   db_desiS1.Enabled:=False;
   db_desiS2.Enabled:=False;
   db_desiS3.Enabled:=False;
   db_desiS4.Enabled:=False;
   db_desiS5.Enabled:=False;
   db_desiS6.Enabled:=False;
   db_desiS7.Enabled:=False;
   end;

end;

procedure TFrm_PV.CB_PVTPDCClick(Sender: TObject);
begin
  inherited;
with CB_PVTPDC do ItemIndex:=items.IndexOf(CB_PVTPDC.Text);
if trim(CB_PVTPDC.Text)='' then
   CB_PVTPDC.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
    DM1.Tb_PVPVTPDC.Value:=CB_PVTPDC.ItemIndex;
if CB_PVTPDC.ItemIndex=0 then
   db_PVDES1.Enabled:=true
else
   db_PVDES1.Enabled:=false;

end;

procedure TFrm_PV.CB_PVTPD2Click(Sender: TObject);
begin
  inherited;
 with CB_PVTPD2 do ItemIndex:=items.IndexOf(CB_PVTPD2.Text);
if trim(CB_PVTPD2.Text)='' then
   CB_PVTPD2.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD2.Value:=CB_PVTPD2.ItemIndex;

if CB_PVTPD2.ItemIndex=0 then
   db_PVDES2.Enabled:=True
else
   db_PVDES2.Enabled:=False;
if CB_PVTPD2.ItemIndex=3 then
   begin
   db_desi2S0.Enabled:=true;
   db_desi2S1.Enabled:=true;
   db_desi2S2.Enabled:=true;
   db_desi2S3.Enabled:=true;
   db_desi2S4.Enabled:=true;
   db_desi2S5.Enabled:=true;
   db_desi2S6.Enabled:=true;
   db_desi2S7.Enabled:=true;
   end
else
   begin
   db_desi2S0.Enabled:=false;
   db_desi2S1.Enabled:=false;
   db_desi2S2.Enabled:=false;
   db_desi2S3.Enabled:=false;
   db_desi2S4.Enabled:=false;
   db_desi2S5.Enabled:=false;
   db_desi2S6.Enabled:=false;
   db_desi2S7.Enabled:=false;
   end;


end;

procedure TFrm_PV.CB_PVTPCClick(Sender: TObject);
begin
  inherited;
with CB_PVTPC do ItemIndex:=items.IndexOf(CB_PVTPC.Text);
if trim(CB_PVTPC.Text)='' then
   CB_PVTPC.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPC.Value:=CB_PVTPC.ItemIndex;
if (CB_PVTPC.ItemIndex=1) or (CB_PVTPC.ItemIndex=6) then
   begin
   DBEdit5.Enabled   :=True;
   DBEdit3.Enabled   :=True;
   DBEdit34.Enabled  :=True;
   end
else
   begin
   DBEdit5.Enabled   :=False;
   DBEdit3.Enabled   :=False;
   DBEdit34.Enabled  :=False;
   end;

if CB_PVTPC.ItemIndex=8 then
   begin
   db_CMS0.Enabled:=true;
   db_CMS1.Enabled:=true;
   db_CMS2.Enabled:=true;
   db_CMS3.Enabled:=true;
   db_CMS4.Enabled:=true;
   db_CMS5.Enabled:=true;
   db_CMS6.Enabled:=true;
   db_CMS7.Enabled:=true;
   db_CMVD02S0.Enabled:=true;
   db_CMVD02S1.Enabled:=true;
   db_CMVD02S2.Enabled:=true;
   db_CMVD02S3.Enabled:=true;
   db_CMVD02S4.Enabled:=true;
   db_CMVD02S5.Enabled:=true;
   db_CMVD02S6.Enabled:=true;
   db_CMVD02S7.Enabled:=true;
   end
else
   begin
   db_CMS0.Enabled:=False;
   db_CMS1.Enabled:=False;
   db_CMS2.Enabled:=False;
   db_CMS3.Enabled:=False;
   db_CMS4.Enabled:=False;
   db_CMS5.Enabled:=False;
   db_CMS6.Enabled:=False;
   db_CMS7.Enabled:=False;
   db_CMVD02S0.Enabled:=false;
   db_CMVD02S1.Enabled:=false;
   db_CMVD02S2.Enabled:=false;
   db_CMVD02S3.Enabled:=false;
   db_CMVD02S4.Enabled:=false;
   db_CMVD02S5.Enabled:=false;
   db_CMVD02S6.Enabled:=false;
   db_CMVD02S7.Enabled:=false;

   end;


end;

procedure TFrm_PV.DB_PVDESCFExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVDESCF.Value<0) or (DM1.Tb_PVPVDESCF.Value>99) then
   begin
   fmensagem('Desconto invalido!',0,['0'],0);
   DB_PVDESCF.SetFocus;
   end;

end;

procedure TFrm_PV.CB_PVTPDESFClick(Sender: TObject);
begin
  inherited;
 with CB_PVTPDESF do ItemIndex:=items.IndexOf(CB_PVTPDESF.Text);
if trim(CB_PVTPDESF.Text)='' then
   CB_PVTPDESF.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPDESF.Value:=CB_PVTPDESF.ItemIndex;

if CB_PVTPDESF.ItemIndex=3 then
   DB_PVDESCF.Enabled:=true
else
   DB_PVDESCF.Enabled:=False;

if CB_PVTPDESF.ItemIndex=4 then
   gb_intervalo.Enabled:=True
else
   gb_intervalo.Enabled:=False;


if CB_PVTPDESF.ItemIndex=5 then
   begin
   db_DFS0.Enabled:=true;
   db_DFS1.Enabled:=true;
   db_DFS2.Enabled:=true;
   db_DFS3.Enabled:=true;
   db_DFS4.Enabled:=true;
   db_DFS5.Enabled:=true;
   db_DFS6.Enabled:=true;
   db_DFS7.Enabled:=true;
   end
else
   begin
   db_DFS0.Enabled:=false;
   db_DFS1.Enabled:=false;
   db_DFS2.Enabled:=false;
   db_DFS3.Enabled:=false;
   db_DFS4.Enabled:=false;
   db_DFS5.Enabled:=false;
   db_DFS6.Enabled:=false;
   db_DFS7.Enabled:=false;

   end;



end;

procedure TFrm_PV.CB_PVTPCEnter(Sender: TObject);
begin
  inherited;
lbl_hint.Visible:=true;
end;

procedure TFrm_PV.CB_PVTPCExit(Sender: TObject);
begin
  inherited;
with CB_PVTPC do ItemIndex:=items.IndexOf(CB_PVTPC.Text);
if trim(CB_PVTPC.Text)='' then
   CB_PVTPC.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPC.Value:=CB_PVTPC.ItemIndex;
if (CB_PVTPC.ItemIndex=1) or (CB_PVTPC.ItemIndex=6) then
   begin
   DBEdit5.Enabled   :=True;
   DBEdit3.Enabled   :=True;
   DBEdit34.Enabled  :=True;
   end
else
   begin
   DBEdit5.Enabled   :=False;
   DBEdit3.Enabled   :=False;
   DBEdit34.Enabled  :=False;
   end;

if CB_PVTPC.ItemIndex=8 then
   begin
   db_CMS0.Enabled:=true;
   db_CMS1.Enabled:=true;
   db_CMS2.Enabled:=true;
   db_CMS3.Enabled:=true;
   db_CMS4.Enabled:=true;
   db_CMS5.Enabled:=true;
   db_CMS6.Enabled:=true;
   db_CMS7.Enabled:=true;
   db_CMVD02S0.Enabled:=true;
   db_CMVD02S1.Enabled:=true;
   db_CMVD02S2.Enabled:=true;
   db_CMVD02S3.Enabled:=true;
   db_CMVD02S4.Enabled:=true;
   db_CMVD02S5.Enabled:=true;
   db_CMVD02S6.Enabled:=true;
   db_CMVD02S7.Enabled:=true;

   end
else
   begin
   db_CMS0.Enabled:=False;
   db_CMS1.Enabled:=False;
   db_CMS2.Enabled:=False;
   db_CMS3.Enabled:=False;
   db_CMS4.Enabled:=False;
   db_CMS5.Enabled:=False;
   db_CMS6.Enabled:=False;
   db_CMS7.Enabled:=False;
   db_CMVD02S0.Enabled:=false;
   db_CMVD02S1.Enabled:=false;
   db_CMVD02S2.Enabled:=false;
   db_CMVD02S3.Enabled:=false;
   db_CMVD02S4.Enabled:=false;
   db_CMVD02S5.Enabled:=false;
   db_CMVD02S6.Enabled:=false;
   db_CMVD02S7.Enabled:=false;

   end;
lbl_hint.Visible:=false;


end;

procedure TFrm_PV.CB_PVTPDCExit(Sender: TObject);
begin
  inherited;
with CB_PVTPDC do ItemIndex:=items.IndexOf(CB_PVTPDC.Text);
if trim(CB_PVTPDC.Text)='' then
   CB_PVTPDC.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPDC.Value:=CB_PVTPDC.ItemIndex;
if CB_PVTPDC.ItemIndex=0 then
   db_PVDES1.Enabled:=true
else
   db_PVDES1.Enabled:=false;
lbl_hint.Visible:=false;
end;

procedure TFrm_PV.CB_PVTPD1Exit(Sender: TObject);
begin
  inherited;
with CB_PVTPD1 do ItemIndex:=items.IndexOf(CB_PVTPD1.Text);
if trim(CB_PVTPD1.Text)='' then
   CB_PVTPD1.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD1.Value:=CB_PVTPD1.ItemIndex;

if CB_PVTPD1.ItemIndex=0 then
   begin
   db_PVDES1.Enabled:=True;
   end
else
   begin
   db_PVDES1.Enabled:=False;
   end;
if CB_PVTPD1.ItemIndex=4 then
   begin
   db_desiS0.Enabled:=true;
   db_desiS1.Enabled:=true;
   db_desiS2.Enabled:=true;
   db_desiS3.Enabled:=true;
   db_desiS4.Enabled:=true;
   db_desiS5.Enabled:=true;
   db_desiS6.Enabled:=true;
   db_desiS7.Enabled:=true;
   end
else
   begin
   db_desiS0.Enabled:=False;
   db_desiS1.Enabled:=False;
   db_desiS2.Enabled:=False;
   db_desiS3.Enabled:=False;
   db_desiS4.Enabled:=False;
   db_desiS5.Enabled:=False;
   db_desiS6.Enabled:=False;
   db_desiS7.Enabled:=False;
   end;

lbl_hint.Visible:=false;
end;

procedure TFrm_PV.CB_PVTPD2Exit(Sender: TObject);
begin
  inherited;
 with CB_PVTPD2 do ItemIndex:=items.IndexOf(CB_PVTPD2.Text);
if trim(CB_PVTPD2.Text)='' then
   CB_PVTPD2.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD2.Value:=CB_PVTPD2.ItemIndex;

if CB_PVTPD2.ItemIndex=0 then
   db_PVDES2.Enabled:=True
else
   db_PVDES2.Enabled:=False;
if CB_PVTPD2.ItemIndex=3 then
   begin
   db_desi2S0.Enabled:=true;
   db_desi2S1.Enabled:=true;
   db_desi2S2.Enabled:=true;
   db_desi2S3.Enabled:=true;
   db_desi2S4.Enabled:=true;
   db_desi2S5.Enabled:=true;
   db_desi2S6.Enabled:=true;
   db_desi2S7.Enabled:=true;
   end
else
   begin
   db_desi2S0.Enabled:=false;
   db_desi2S1.Enabled:=false;
   db_desi2S2.Enabled:=false;
   db_desi2S3.Enabled:=false;
   db_desi2S4.Enabled:=false;
   db_desi2S5.Enabled:=false;
   db_desi2S6.Enabled:=false;
   db_desi2S7.Enabled:=false;
   end;

lbl_hint.Visible:=false;
end;

procedure TFrm_PV.CB_PVTPD3Exit(Sender: TObject);
begin
  inherited;
with CB_PVTPD3 do ItemIndex:=items.IndexOf(CB_PVTPD3.Text);
if trim(CB_PVTPD3.Text)='' then
   CB_PVTPD3.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPD3.Value:=CB_PVTPD3.ItemIndex;

if CB_PVTPD3.ItemIndex=0 then
   db_PVDES3.Enabled:=True
else
   db_PVDES3.Enabled:=False;
if CB_PVTPD3.ItemIndex=3 then
   begin
   db_desi3S0.Enabled:=true;
   db_desi3S1.Enabled:=true;
   db_desi3S2.Enabled:=true;
   db_desi3S3.Enabled:=true;
   db_desi3S4.Enabled:=true;
   db_desi3S5.Enabled:=true;
   db_desi3S6.Enabled:=true;
   db_desi3S7.Enabled:=true;
   end
else
   begin
   db_desi3S0.Enabled:=false;
   db_desi3S1.Enabled:=false;
   db_desi3S2.Enabled:=false;
   db_desi3S3.Enabled:=false;
   db_desi3S4.Enabled:=false;
   db_desi3S5.Enabled:=false;
   db_desi3S6.Enabled:=false;
   db_desi3S7.Enabled:=false;
   end;

lbl_hint.Visible:=false;
end;

procedure TFrm_PV.CB_PVDDESCFExit(Sender: TObject);
begin
  inherited;
with CB_PVDDESCF do ItemIndex:=items.IndexOf(CB_PVDDESCF.Text);
if trim(CB_PVDDESCF.Text)='' then
   CB_PVDDESCF.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVDDESCF.Value:=CB_PVDDESCF.ItemIndex;

if CB_PVDDESCF.ItemIndex=1 then
   DB_PVDIASDESCF.Enabled:=true
else
   DB_PVDIASDESCF.Enabled:=False;

lbl_hint.Visible:=false;
end;

procedure TFrm_PV.CB_PVTPDESFExit(Sender: TObject);
begin
  inherited;
with CB_PVTPDESF do ItemIndex:=items.IndexOf(CB_PVTPDESF.Text);
if trim(CB_PVTPDESF.Text)='' then
   CB_PVTPDESF.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVTPDESF.Value:=CB_PVTPDESF.ItemIndex;

if CB_PVTPDESF.ItemIndex=3 then
   DB_PVDESCF.Enabled:=true
else
   DB_PVDESCF.Enabled:=False;

if CB_PVTPDESF.ItemIndex=4 then
   gb_intervalo.Enabled:=True
else
   gb_intervalo.Enabled:=False;

if CB_PVDDESCF.ItemIndex=5 then
   begin
   db_DFS0.Enabled:=true;
   db_DFS1.Enabled:=true;
   db_DFS2.Enabled:=true;
   db_DFS3.Enabled:=true;
   db_DFS4.Enabled:=true;
   db_DFS5.Enabled:=true;
   db_DFS6.Enabled:=true;
   db_DFS7.Enabled:=true;
   end
else
   begin
   db_DFS0.Enabled:=false;
   db_DFS1.Enabled:=false;
   db_DFS2.Enabled:=false;
   db_DFS3.Enabled:=false;
   db_DFS4.Enabled:=false;
   db_DFS5.Enabled:=false;
   db_DFS6.Enabled:=false;
   db_DFS7.Enabled:=false;
   end;




end;

procedure TFrm_PV.CB_PVDDESCFClick(Sender: TObject);
begin
  inherited;
with CB_PVDDESCF do ItemIndex:=items.IndexOf(CB_PVDDESCF.Text);
if trim(CB_PVDDESCF.Text)='' then
   CB_PVDDESCF.ItemIndex:=0;
if DM1.Tb_PV.State in [dsEdit,dsinsert] then
   DM1.Tb_PVPVDDESCF.Value:=CB_PVDDESCF.ItemIndex;

if CB_PVDDESCF.ItemIndex=1 then
   DB_PVDIASDESCF.Enabled:=true
else
   DB_PVDIASDESCF.Enabled:=False;

end;

procedure TFrm_PV.DBE_VALMINExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVCOM.Value<0) or (DM1.Tb_PVPVCOM.Value>99) then
   begin
   fMensagem('Percentual de comissão invalido!',0,['0'],0);
   DBEdit5.SetFocus;
   end;

end;

procedure TFrm_PV.DBE_PERCPPARCExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PVPVPERCPPARC.Value<0) or (DM1.Tb_PVPVPERCPPARC.Value>99) then
   begin
   fMensagem('Percentual da Primeira Parcela invalido!',0,['0'],0);
   DBE_PERCPPARC.SetFocus;
   end;

end;

procedure TFrm_PV.CB_TPPExit(Sender: TObject);
begin
  inherited;
if CB_TPP.ItemIndex<0 then
   begin
   with CB_TPP do ItemIndex:=Items.IndexOf(CB_TPP.Text);
   end;
CB_TPP.text:=CB_TPP.Items.Strings[CB_TPP.ItemIndex];

DM1.Tb_PVPVTPP.Value:=CB_TPP.ItemIndex;

end;

procedure TFrm_PV.Tb_Pv02BeforePost(DataSet: TDataSet);
var
Query_Pv02: TQuery;
begin
  inherited;
if (Tb_Pv02PV2PRAZO.IsNull) or (Tb_Pv02PV2PORC.IsNull) then
   begin
   Tb_Pv02.Cancel;
   abort;
   end
else
   begin
   Query_Pv02:=TQuery.Create(nil);
   Query_Pv02.DatabaseName:='SG_ASSOC';
   if mpv2_prazoant<>Tb_Pv02PV2PRAZO.AsInteger then
      begin
      Query_Pv02.SQL.Add('Select count(*) from CADPV2 where PV2CODEMP=:CODEMP '
                     +' and PV2CODTIP=:CODTIP and PV2CODPV=:CODPV '
                     +' and PV2PRAZO=:PRAZO ');
      Query_Pv02.ParamByName('CODEMP').Value:=DM1.Tb_PVPVCODEMP.Value;
      Query_Pv02.ParamByName('CODTIP').Value:=DM1.Tb_PVPVCODTIP.Value;
      Query_Pv02.ParamByName('CODPV').Value:=DM1.Tb_PVPVCODPV.Value;
      Query_Pv02.ParamByName('PRAZO').Value:=Tb_Pv02PV2PRAZO.AsInteger;
      Query_Pv02.Open;
      if Query_Pv02.Fields[0].AsInteger>0 then
         begin
         MessageDlg('Ja Existe um Prazo de '+Tb_Pv02PV2PRAZO.AsString+iif(Tb_Pv02PV2PRAZO.AsInteger>1,' dias ',' dia'),mtWarning,[mbOk],0);
         FreeAndNil(Query_Pv02);
         abort;
         exit;
         end;
      end;
   Query_Pv02.Close;
   Query_Pv02.sql.clear;

   Query_Pv02.SQL.Add('Select sum(NVL(PV2PORC,0))  from CADPV2 where PV2CODEMP=:CODEMP '
                     +' and PV2CODTIP=:CODTIP and PV2CODPV=:CODPV ');
   Query_Pv02.ParamByName('CODEMP').Value:=DM1.Tb_PVPVCODEMP.Value;
   Query_Pv02.ParamByName('CODTIP').Value:=DM1.Tb_PVPVCODTIP.Value;
   Query_Pv02.ParamByName('CODPV').Value:=DM1.Tb_PVPVCODPV.Value;
   Query_Pv02.Open;
   if Query_Pv02.Fields[0].AsFloat+Tb_Pv02PV2PORC.AsFloat>100 then
      begin
      MessageDlg('Ja Existe '+FormatFloat(mcasas_pct, Query_Pv02.Fields[0].AsFloat)+' Este prazo '
       +FormatFloat(mcasas_pct, Tb_Pv02PV2PORC.AsFloat)+' Total '
       +FormatFloat(mcasas_pct, Tb_Pv02PV2PORC.AsFloat+Query_Pv02.Fields[0].AsFloat)+' é invalido!',mtWarning,[mbOk],0);
      FreeAndNil(Query_Pv02);
      abort;
      exit;
      end;
   FreeAndNil(Query_Pv02);
   end;
end;

procedure TFrm_PV.bbexcprazoClick(Sender: TObject);
begin
  inherited;
if Tb_Pv02.State in [dsInsert,dsEdit] then
   Tb_Pv02.Cancel;
if not (Tb_Pv02.Eof) and not (Tb_Pv02PV2PRAZO.IsNull) then
   Tb_Pv02.Delete;
end;

procedure TFrm_PV.Tb_Pv02BeforeDelete(DataSet: TDataSet);
var
Query_Pv02: TQuery;

begin
  inherited;
if (Tb_Pv02PV2PRAZO.IsNull) or (Tb_Pv02PV2PORC.IsNull) then
   begin
   abort;
   end
else
   begin
   Query_Pv02:=TQuery.Create(nil);
   Query_Pv02.DatabaseName:='SG_ASSOC';
   Query_Pv02.SQL.Add('Delete from CADPV2 where PV2CODEMP=:CODEMP '
                     +' and PV2CODTIP=:CODTIP and PV2CODPV=:CODPV '
                     +' and PV2PRAZO=:PRAZO ');
   Query_Pv02.ParamByName('CODEMP').Value:=DM1.Tb_PVPVCODEMP.Value;
   Query_Pv02.ParamByName('CODTIP').Value:=DM1.Tb_PVPVCODTIP.Value;
   Query_Pv02.ParamByName('CODPV').Value:=DM1.Tb_PVPVCODPV.Value;
   Query_Pv02.ParamByName('PRAZO').Value:=Tb_Pv02PV2PRAZO.AsInteger;
   Query_Pv02.ExecSQL;
   fdm1StartCommit;
   FreeAndNil(Query_Pv02);
   fCalcularPrazoMedio;
   end;

end;

function TFrm_PV.fCalcularPrazoMedio: Boolean;
begin
result:=true;
end;

procedure TFrm_PV.Tb_Pv02AfterPost(DataSet: TDataSet);
var
Query_Pv02: TQuery;

begin
  inherited;
Query_Pv02:=TQuery.Create(nil);
Query_Pv02.DatabaseName:='SG_ASSOC';
if mpv2_prazoant=-1 then
   begin
   Query_Pv02.SQL.Add('Insert into CADPV2 ( '
                  +'PV2CODEMP '
                  +',PV2CODTIP '
                  +',PV2CODPV '
                  +',PV2PRAZO '
                  +',PV2PORC '
                  +') values ('
                  +' :PV2CODEMP '
                  +',:PV2CODTIP '
                  +',:PV2CODPV '
                  +',:PV2PRAZO '
                  +',:PV2PORC '
                  +')');
   end
else
   begin
   Query_Pv02.SQL.Add('Update CADPV2 set '
                  +' PV2PRAZO=:PV2PRAZO '
                  +',PV2PORC=:PV2PORC '
                  +' where PV2CODEMP=:PV2CODEMP '
                  +' and PV2CODTIP=:PV2CODTIP '
                  +' and PV2CODPV=:PV2CODPV '
                  +' and PV2PRAZO=:PRAZO_ANT ');
  Query_Pv02.ParamByName('PRAZO_ANT').Value   :=mpv2_prazoant;
  end;

Query_Pv02.ParamByName('PV2CODEMP').Value :=DM1.Tb_PVPVCODEMP.Value;
Query_Pv02.ParamByName('PV2CODTIP').Value  :=DM1.Tb_PVPVCODTIP.Value;
Query_Pv02.ParamByName('PV2CODPV').Value   :=DM1.Tb_PVPVCODPV.Value;
Query_Pv02.ParamByName('PV2PRAZO').Value   :=Tb_Pv02PV2PRAZO.AsFloat;
Query_Pv02.ParamByName('PV2PORC').Value    :=Tb_Pv02PV2PORC.AsFloat;
Query_Pv02.ExecSQL;
fdm1StartCommit;
FreeAndNil(Query_Pv02);
fCalcularPrazoMedio;

end;


function TFrm_PV.flcadpv2_Local(pCodEmp,pCodTip,pCodPV: String): Boolean;
begin
if trim(pCodTip)='' then
   pCodTip:='00';
if trim(pCodPV)='' then
   pCodPV:='00';


Tb_PV02.Close;
Tb_PV02.SQL.Clear;
Tb_PV02.SQL.Add('Select * from CADPV2 where ');
if DM1.Qr_TID.locate('TINOME','CADPV',[]) then
   begin
   Tb_PV02.SQL.add(' PV2CODTIP='+chr(39)+pCodTip+chr(39)
                     +' and PV2CODPV=0'+pCodPV
                     +' order by PV2CODTIP,PV2CODPV,PV2PRAZO');
   end
else
   begin
   Tb_PV02.SQL.ADD(' PV2CODEMP=0'+pCodEmp
                     +' and PV2CODTIP='+chr(39)+pCodTip+chr(39)
                     +' and PV2CODPV=0'+pCodPV
                     +' order by PV2CODEMP,PV2CODTIP,PV2CODPV,PV2PRAZO');
   end;
try
   Tb_PV02.Open;
except
   Tb_PV02.SQL.savetofile('c:\sql.txt');
   end;
if Tb_PV02.IsEmpty then
   result:=false
else
   result:=true;

end;



function TFrm_PV.fZerarPorc(pCodEmp,pCodTip,pCodPV,pPrazo: String): Boolean;
var
query_temp: tQuery;
begin
query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';



if trim(pCodTip)='' then
   pCodTip:='00';
if trim(pCodPV)='' then
   pCodPV:='00';
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Update CADPV2 set PV2PORC=0  where ');
query_temp.SQL.Add(' PV2CODEMP=0'+pCodEmp
                     +' and PV2CODTIP='+chr(39)+pCodTip+chr(39)
                     +' and PV2CODPV=0'+pCodPV);
if trim(pPrazo)<>'' then
   query_temp.SQL.add(' and PV2PRAZO='+pPrazo);

try
   query_temp.ExecSQL;
   fdm1StartCommit;
   result:=true;
except
   query_temp.sql.savetofile('c:\sql.txt');
   result:=false;
   end;
FreeAndNil(query_temp);
flcadpv2_Local(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

end;


procedure TFrm_PV.Tb_Pv02AfterInsert(DataSet: TDataSet);
begin
  inherited;
//Tb_Pv02PV2PRAZO.Value:=0;
Tb_Pv02PV2PORC.Value :=0;
mpv2_prazoant:=-1;

end;

procedure TFrm_PV.Tb_Pv02AfterEdit(DataSet: TDataSet);
begin
  inherited;
mpv2_prazoant:=Tb_Pv02PV2PRAZO.AsInteger;

end;

procedure TFrm_PV.Tb_Pv02BeforeCancel(DataSet: TDataSet);
begin
  inherited;
if DM1.Tb_PV.State in [dsInsert] then
   begin
   fExcluirPv02;
   end;
end;


function TFrm_PV.fExcluirPv02: Boolean;
var
query_exe: tQuery;
begin
query_exe:=tQuery.Create(Nil);
query_exe.DatabaseName:='SG_ASSOC';
Query_exe.Close;
Query_exe.SQL.clear;
Query_exe.SQL.Add('Delete from CADPV2 where PV2CODEMP=:CODEMP '
                 +' and PV2CODTIP=:CODTIP '
                 +' and PV2CODPV=:CODPV ');
query_exe.ParamByName('CODEMP').Value:=DM1.Tb_PVPVCODEMP.AsInteger;
query_exe.ParamByName('CODTIP').Value:=DM1.Tb_PVPVCODTIP.AsString;
query_exe.ParamByName('CODPV').Value :=DM1.Tb_PVPVCODPV.AsInteger;
query_exe.ExecSQL;
fdm1StartCommit;
FreeAndNil(query_exe);
result:=true;
end;

end.
