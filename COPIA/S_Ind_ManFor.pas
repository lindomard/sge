unit S_Ind_ManFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,db,dbtables,func,S_DM3, DBCtrls,S_DM1,
  Grids, DBGrids,S_Pro,lerarq,S_Ind_Comp02, RLReport, RLFilters,
  RLRichFilter, ComCtrls, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLDraftFilter, RLRichText, Mask,s_lerarq_geral;

type
  TFrm_Ind_ManFor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    bbMetodos: TBitBtn;
    bbFechar: TBitBtn;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Src_Comp: TDataSource;
    U_Comp: TUpdateSQL;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    QTDU: TEdit;
    QTDIT: TEdit;
    TOTAL: TEdit;
    TOTICMSCRED: TEdit;
    SbAtualizaMatPrim: TSpeedButton;
    bbImprmir: TBitBtn;
    Qr_Formula: TQuery;
    Qr_FormulaCPCODEMP: TFloatField;
    Qr_FormulaCPORDEM: TFloatField;
    Qr_FormulaCPCODPRO: TFloatField;
    Qr_FormulaCPCODMAT: TFloatField;
    Qr_FormulaCPQUANT: TFloatField;
    Qr_FormulaCPPU: TFloatField;
    Qr_FormulaCPNUMERO: TStringField;
    Qr_FormulaCPMPNUM: TStringField;
    Qr_FormulaCPCODPRO_ACAB: TFloatField;
    Qr_FormulaCPALICMSCRED: TFloatField;
    Qr_FormulaCPICMSCRED: TFloatField;
    Qr_FormulaCPVLRINC: TFloatField;
    Qr_FormulaCPALIQORI: TFloatField;
    Qr_FormulaCPPERCENT: TFloatField;
    Qr_FormulaCPPERCENT_REST: TFloatField;
    Src_Formula: TDataSource;
    Qr_Formulanomformula: TStringField;
    Qr_Formulanome_mp: TStringField;
    Qr_Formulaund_mp: TStringField;
    Qr_Formulaqtd_mp: TFloatField;
    Qr_Formulatotal_mp: TFloatField;
    RLRichFilter1: TRLRichFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    Tb_Comp: TQuery;
    Tb_CompCPCODEMP: TFloatField;
    Tb_CompCPORDEM: TFloatField;
    Tb_CompCPCODPRO: TFloatField;
    Tb_CompCPCODMAT: TFloatField;
    Tb_CompCPQUANT: TFloatField;
    Tb_CompCPPU: TFloatField;
    Tb_CompCPNUMERO: TStringField;
    Tb_CompCPMPNUM: TStringField;
    Tb_CompCPCODPRO_ACAB: TFloatField;
    Tb_CompCPALICMSCRED: TFloatField;
    Tb_CompCPICMSCRED: TFloatField;
    Tb_CompCPVLRINC: TFloatField;
    Tb_CompCPALIQORI: TFloatField;
    Tb_Comptotal: TFloatField;
    Tb_Comptotalliq: TFloatField;
    Tb_CompCPPERCENT: TFloatField;
    Tb_CompCPPERCENT_REST: TFloatField;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    RLGroup1: TRLGroup;
    band_cab: TRLBand;
    lbl_cabdat: TRLMemo;
    lbl_cabdesc: TRLMemo;
    lbl_cabQtd: TRLMemo;
    lbl_cabPerc: TRLMemo;
    lbl_cabPu: TRLMemo;
    lbl_cabacum: TRLMemo;
    lbl_cabUnd: TRLMemo;
    RLBand4: TRLBand;
    db_datpesq: TRLDBText;
    db_descmv: TRLDBText;
    db_numdoc: TRLDBText;
    db_deb: TRLDBText;
    db_cred: TRLDBText;
    db_codigo: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand6: TRLBand;
    lbl_espaco05: TRLLabel;
    lbl_total: TRLLabel;
    lbl_quantidade: TRLLabel;
    lbl_totperc: TRLLabel;
    lbl_totcred_gru: TRLLabel;
    lbl_totalmp: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    rl_proced: TRLBand;
    lbl_nomproc: TRLLabel;
    RLBand5: TRLBand;
    texto: TRLRichText;
    Tb_CompCPTIPO: TFloatField;
    Tb_CompCPQTD_PAD: TFloatField;
    Tb_CompPDNOME: TStringField;
    Tb_CompPDUND: TStringField;
    Tb_Compobservacao: TStringField;
    Label6: TLabel;
    UNDMED: TEdit;
    GroupBox1: TGroupBox;
    Tb_Compprodenvase: TStringField;
    DBE_codpro: TDBEdit;
    DBEdit1: TDBEdit;
    procedure bbFecharClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROChange(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Tb_CompCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Tb_CompAfterInsert(DataSet: TDataSet);
    procedure Tb_CompBeforePost(DataSet: TDataSet);
    procedure bbMetodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Tb_CompAfterCancel(DataSet: TDataSet);
    procedure Tb_CompAfterEdit(DataSet: TDataSet);
    procedure Tb_CompBeforeDelete(DataSet: TDataSet);
    procedure SbAtualizaMatPrimClick(Sender: TObject);
    procedure Qr_FormulaCalcFields(DataSet: TDataSet);
    procedure bbImprmirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure UNDMEDChange(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure UNDMEDExit(Sender: TObject);
    procedure Tb_CompBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    function fIndLercomp(pTipo: Integer; pCodpro: String): Boolean;
  public
    { Public declarations }
  end;
function fIndManforTestaMetodos(ptipo: Integer): Boolean;

var
  Frm_Ind_ManFor: TFrm_Ind_ManFor;
  mQuant_ant   : Real;
  mPerc_ant    : Real;
  mtotliq_ant     : Real;
  mIcmsCred_Ant: Real;
  mOrdem_mp: Integer=0;
  mQtdZerado: Integer=0;
  mQtdZerado_ant: Integer=0;
  mAlterouTabela: Boolean=False;
  mtotqtd_mp: Real;
  mTotPerc: Real;
  mtotalmp: Real;
  mTabTemp: String;
  mTotQsp: Real;
  mAlterouProd: Boolean=false;
  mCodMat_ant: Real;
  mCodProAcab_ant: Real;
  mSalvouTexto: Boolean;

implementation

uses S_Mfor01;

{$R *.dfm}

procedure TFrm_Ind_ManFor.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ind_ManFor.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL=0 OR PDNIVEL=3';
//   DM1.Tb_Pro.Filtered:=True;
   CODPRO.Text:=fChamaPro(0,'Frm_Ind_ManFor',key);
   key:=#0;
   DM1.Tb_Pro.Filtered:=False;
   end;

end;

procedure TFrm_Ind_ManFor.CODPROExit(Sender: TObject);
begin
if bbFechar.Focused then
   exit;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if CODPRO.Text='' then
   exit;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML from CADPRO where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PDCODPRO=0'+Trim(CODPRO.Text)
                  +' and (PDNIVEL=4 or PDNIVEL=3)');
//                  +' and (PDNIVEL=4 OR PDNIVEL=3)');
dm1.Query2.Open;
if DM1.Query2.Eof then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   end
else
   begin
   NOMPRO.Text:=DM1.Query2.Fields[0].AsString;
   UNDMED.Text:=FormatFloat('0.000',DM1.Query2.FieldByName('PDQTDGRML').AsFloat);
   Panel2.Enabled :=True;
   DBGrid1.Enabled:=True;
   fIndLercomp(0,trim(CODPRO.Text));

   end;

end;

procedure TFrm_Ind_ManFor.CODPROEnter(Sender: TObject);
begin
Panel2.Enabled :=False;
DBGrid1.Enabled:=False;

end;

procedure TFrm_Ind_ManFor.CODPROChange(Sender: TObject);
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML from CADPRO where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PDCODPRO=0'+FloatToStr(FSonumero(CODPRO.Text))
                  +' and (PDNIVEL=0 OR PDNIVEL=3)');
dm1.Query2.Open;
if DM1.Query2.Eof then
   begin
   NOMPRO.Text:='';
   UNDMED.Text:='';
   end
else
   begin
   NOMPRO.Text:=DM1.Query2.Fields[0].AsString;
   UNDMED.Text:=FormatFloat('0.000',DM1.Query2.FieldByName('PDQTDGRML').AsFloat);
   Panel2.Enabled :=True;
   DBGrid1.Enabled:=True;
   if Tb_CompCPCODPRO.Value<>fsonumero(CODPRO.Text) then
      fIndLercomp(0,trim(CODPRO.Text));
   end;

end;

procedure TFrm_Ind_ManFor.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   FMensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_Ind_ManFor.DBGrid1ColExit(Sender: TObject);
begin

if Tb_Comp.State in [dsInsert,dsEdit] then
   begin
   if (Tb_CompCPPU.AsFloat>0) and (Tb_CompCPALICMSCRED.AsFloat>0)
      and (Tb_CompCPQUANT.AsFloat>0) then
      begin
      Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
      Tb_CompCPICMSCRED.Value:=Arredonda( Tb_CompCPPU.Value*Tb_CompCPQUANT.Value ,DM1.Tb_PargerPCASPUIND.AsInteger);
      Tb_CompCPICMSCRED.Value:=Arredonda( ((Tb_CompCPICMSCRED.Value*Tb_CompCPALICMSCRED.Value)/100),DM1.Tb_PargerPCASPUIND.AsInteger);
      end
   else
      Tb_CompCPICMSCRED.Value:=0;
   if (DBGrid1.SelectedField=Tb_CompCPCODMAT) then
      begin
      if not flcadpro(1,0,0,Tb_CompCPCODMAT.AsString) then
         begin
         FMensagem('Matéria Prima não Cadastrada!',0,['0'],0);
         Abort;
         exit;
         end
      else
         begin
         Tb_CompCPPU.Value        :=DM1.Tb_ProPDPCOFAB.Value;
         Tb_CompCPALICMSCRED.Value:=DM1.Tb_ProPDICMSCRED.Value;
         Tb_CompCPALIQORI.Value   :=DM1.Tb_ProPDICMSCRED.Value;
         Tb_CompPDNOME.Value      :=DM1.Tb_ProPDNOME.Value;
         Tb_CompPDUND.Value       :=DM1.Tb_ProPDUND.Value;
         end
      end
   else if (DBGrid1.SelectedField=Tb_CompCPMPNUM) then
      begin
      if not flcadlgc(0,1,0,Tb_CompCPCODMAT.AsString,Tb_CompCPMPNUM.AsString,'') then
         begin
         FMensagem('Grade Não cadastrada!',0,['0'],0);
         DBGrid1.SelectedField:=Tb_CompCPCODMAT;
         Tb_CompCPMPNUM.Value:='';
         Abort;
         exit;
         end;
      end
   else if (DBGrid1.SelectedField=Tb_CompCPPU) then
      begin
      if Tb_CompCPCODMAT.Value<>DM1.Tb_ProPDCODPRO.Value then
         flcadpro(1,0,0,Tb_CompCPCODMAT.AsString);
      Tb_CompCPVLRINC.Value:=DM1.Tb_ProPDVLRINC.Value;
      if DM1.Tb_ProPDVLRINC.Value=Tb_CompCPPU.Value then
         begin
         Tb_CompCPALICMSCRED.Value:=DM1.Tb_ProPDICMSCRED.Value;
         Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
         end
      else
         begin
         if (DM1.Tb_ProPDVLRINC.AsFloat<>0) and (DM1.Tb_ProPDICMSCRED.AsFloat<>0)
            and (Tb_CompCPPU.AsFloat<>0) then
            begin
            Tb_CompCPICMSCRED.Value:=DM1.Tb_ProPDVLRINC.Value*DM1.Tb_ProPDICMSCRED.AsFloat/100;
            Tb_CompCPALICMSCRED.Value:=Arredonda( (Tb_CompCPICMSCRED.Value*100)/Tb_CompCPPU.Value ,2);
            Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
            end;
         end;
      Tb_CompCPICMSCRED.Value:=Arredonda( Tb_CompCPPU.Value*Tb_CompCPQUANT.Value ,DM1.Tb_PargerPCASPUIND.AsInteger);
      Tb_CompCPICMSCRED.Value:=Arredonda( ((Tb_CompCPICMSCRED.Value*Tb_CompCPALICMSCRED.Value)/100),DM1.Tb_PargerPCASPUIND.AsInteger);
      end;
   end;

end;

procedure TFrm_Ind_ManFor.Tb_CompCalcFields(DataSet: TDataSet);
begin
Tb_Comptotalliq.Value:=Tb_CompCPQUANT.AsFloat*Tb_CompCPPU.AsFloat;
Tb_Comptotal.Value   :=Tb_CompCPQUANT.AsFloat*Tb_CompCPPU.AsFloat;
Tb_Comptotalliq.Value:=Tb_Comptotalliq.AsFloat-Tb_CompCPICMSCRED.AsFloat;
if (Tb_CompCPCODMAT.AsFloat>0) and (Tb_CompCPCODPRO_ACAB.AsFloat=0) then
   begin
   if Tb_CompCPPERCENT.AsFloat=0 then
      Tb_CompObservacao.Value:='QSP '+FormatFloat(mcasas, mTotQsp)+'%'
   else
      Tb_CompObservacao.Value:=FormatFloat(mcasas, Tb_CompCPPERCENT.Value)+'%';
   end;

if Tb_CompCPCODPRO_ACAB.AsFloat<>0 then
   begin
   if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_CompCPCODPRO_ACAB.AsString) then
      Tb_Compprodenvase.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_Ind_ManFor.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Tb_Comp.State in [dsEdit,dsInsert]) then
   begin
   if Tb_CompCPCODPRO.IsNull then
      Tb_Comp.Append
   else
      Tb_Comp.Edit;
   end;

if Tb_Comp.State in [dsEdit,dsInsert] then
   begin
   if key in ['.',','] then
      begin
      if (DBGrid1.SelectedField=Tb_CompCPQUANT) or
         (DBGrid1.SelectedField=Tb_CompCPPU) or
         (DBGrid1.SelectedField=Tb_CompCPALICMSCRED) or
         (DBGrid1.SelectedField=Tb_CompCPICMSCRED) then
          key:=DecimalSeparator;
      end
   else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DBGrid1.SelectedField=Tb_CompCPCODPRO_ACAB then
         begin
         if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
            begin
//            DM1.Tb_Pro.Filter:='PDNIVEL=0 OR PDNIVEL=3';
//            DM1.Tb_Pro.Filtered:=True;
            if Tb_Comp.State in [dsEdit, DsInsert] then
               Tb_CompCPCODPRO_ACAB.Value:=valfloat(fChamaPro(0,'Frm_Ind_ManFor',key));
            key:=#0;
            DM1.Tb_Pro.Filtered:=False;
            end;
         end;

      if (DBGrid1.SelectedField=Tb_CompCPCODMAT) then
         begin
//         DM1.Tb_Pro.Filter  :='PDNIVEL>0';
//         DM1.Tb_Pro.Filtered:=True;
         Tb_CompCPCODMAT.Value:=ValFloat(fChamaPro(0,'Frm_Ind_ManFor',key));
         key:=#0;
         DM1.Tb_Pro.Filter  :='';
         DM1.Tb_Pro.Filtered:=False;
         end;
      end;
   end;

end;

procedure TFrm_Ind_ManFor.FormCreate(Sender: TObject);
begin
Tb_CompCPQUANT.DisplayFormat     :=mcasind;
Tb_CompCPPERCENT.DisplayFormat   :='#,##0.000';
Tb_CompCPPU.DisplayFormat        :=mcaspuind;
Tb_CompCPALICMSCRED.DisplayFormat:=mcasas;
Tb_CompCPICMSCRED.DisplayFormat  :=mcasas;
Tb_CompCPVLRINC.DisplayFormat    :=mcaspuind;
Tb_CompCPALIQORI.DisplayFormat   :=mcasas;
Tb_Comptotal.DisplayFormat       :=mcaspuind;
Tb_Comptotalliq.DisplayFormat      :=mcaspuind;
if DM1.Tb_PargerPIND_TPFORMULA.AsFloat=0 then
   begin
   DBGrid1.Columns[4].Visible:=false;
   DBGrid1.Columns[5].Visible:=false;
   DBGrid1.Columns[6].Visible:=false;
   end;
Qr_Formulaqtd_mp.DisplayFormat         :=mcasind;
Qr_FormulaCPPERCENT_REST.DisplayFormat :='#,##0.000';
Qr_FormulaCPPU.DisplayFormat           :=mcaspuind;
Qr_Formulatotal_mp.DisplayFormat       :=mcasas;

end;

procedure TFrm_Ind_ManFor.Tb_CompAfterInsert(DataSet: TDataSet);
begin


mPerc_ant     :=0;
mQuant_ant    :=0;
mtotliq_ant   :=0;
mIcmsCred_Ant :=0;
mQtdZerado_ant:=0;

Tb_CompCPORDEM.AsInteger   :=mOrdem_mp;
Tb_CompCPCODEMP.Value      :=codemp;
Tb_CompCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_CompCPCODPRO_ACAB.Value :=0;
moper:=0;
Tb_CompCPCODMAT.Value      :=0;
Tb_CompCPPU.Value          :=0;
Tb_CompCPNUMERO.Value      :=' ';
Tb_CompCPMPNUM.Value       :=' ';
Tb_CompCPPERCENT_REST.Value:=0;
Tb_CompCPPERCENT.Value     :=0;


end;

procedure TFrm_Ind_ManFor.Tb_CompBeforePost(DataSet: TDataSet);
begin
if Tb_CompCPCODPRO_ACAB.IsNull then
   Tb_CompCPCODPRO_ACAB.Value:=0;



if Tb_CompCPCODMAT.Asfloat=0 then
   begin
   Tb_Comp.Cancel;
   Abort;
   exit;
   end;


if not flcadpro(1,0,0,Tb_CompCPCODMAT.AsString) then
   begin
   FMensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid1.SelectedField:=Tb_CompCPCODMAT;
   abort;
   exit;
   end;
if (moper=0) or
   (
    (mCodMat_ant<>0) or
    (mCodProAcab_ant<>0) )
     and ( (mCodMat_ant<>Tb_CompCPCODMAT.AsFloat)
          or (mCodMat_ant<>Tb_CompCPCODMAT.AsFloat) )
       then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCOMP where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPCODPRO=0'+trim(codpro.Text)
                     );
   DM1.Query1.SQL.Add(' and CPCODMAT=0'+Tb_CompCPCODMAT.AsString);
   DM1.Query1.SQL.Add(' and CPCODPRO_ACAB=0'+Tb_CompCPCODPRO_ACAB.AsString);
   if mCodMat_ant<>0 then
      DM1.Query1.SQL.Add(' and CPCODMAT<>0'+Tb_CompCPCODMAT.AsString);
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Esta Materia Prima ja Existe nesta formula!',0,['0'],0);
      Tb_Comp.Cancel;
      abort;
      exit;
      end;
   end;

if (Tb_CompCPCODPRO_ACAB.AsFloat>0) and (DM1.Tb_ProPDQTDGRML.Asfloat=0) then
   begin
   DM1.Tb_Pro.Edit;
   DM1.Tb_ProPDQTDGRML.Value:=ValFloat(DM1.Tb_ProPDNOME.Value);
   if DM1.Tb_ProPDQTDGRML.Value>=0 then
      begin
      DM1.Tb_ProPDQTDGRML.Value:=DM1.Tb_ProPDQTDGRML.Value/1000;
      DM1.Tb_Pro.Post;
      end
   else
      DM1.Tb_Pro.Cancel;
   end;



if (Tb_CompCPQUANT.IsNull) or (Tb_CompCPQUANT.AsFloat<0) then
   Tb_CompCPQUANT.Value:=0;
if (Tb_CompCPPERCENT.IsNull) or (Tb_CompCPPERCENT.AsFloat<0) then
   Tb_CompCPPERCENT.Value:=0;
if (DM1.Tb_PargerPIND_TPFORMULA.AsFloat>0) and (Tb_CompCPCODPRO_ACAB.AsFloat>0) then
   begin
   Tb_CompCPPERCENT.Value:=0;
   Tb_CompCPPERCENT_REST.Value:=0;
   end;
Tb_CompCPPERCENT.Value:=Arredonda(Tb_CompCPPERCENT.Value,3);
if Tb_CompCPCODPRO_ACAB.AsFloat=0 then
   Tb_CompCPTIPO.Value:=0
else
   Tb_CompCPTIPO.Value:=1;

{
if (Tb_CompCPQUANT.AsFloat<>0) and (Tb_CompCPPERCENT.AsFloat<>0) then
   begin
   FMensagem('Campo quantidade e %(percentual) apenas um poderá ser preenchido!',0,['0'],0);
   DBGrid1.SelectedField:=Tb_CompCPQUANT;
   abort;
   exit;
   end;
}
if mQtdZerado>1 then
   begin
   if (Tb_CompCPQUANT.AsFloat=0) and (Tb_CompCPPERCENT.AsFloat=0) then
      begin
      FMensagem('Favor Selecionar uma Quantidade ou um percentual válido!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_CompCPQUANT;
      abort;
      exit;
      end;
   end;

{
if Tb_CompCPQUANT.AsFloat<=0 then
   begin
   FMensagem('Favor Selecionar uma Quantidade válida!',0,['0'],0);
   DBGrid1.SelectedField:=Tb_CompCPQUANT;
   abort;
   exit;
   end;
}

if Valint(copy(mpseg,4,2))=02 then
   begin
   if not flcadlgc(0,1,0,Tb_CompCPCODMAT.AsString,Tb_CompCPMPNUM.AsString,'') then
      begin
      FMensagem('Favor Selecionar uma Grade Válida!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_CompCPCODMAT;
      abort;
      exit;
      end;
   end;
if moper=0 then
   begin
   QTDIT.Text      :=FormatFloat('#0', ValFloat(QTDIT.Text)+1);
   mOrdem_mp:=mOrdem_mp+1;
   end
else
   begin
   QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)-mQuant_ant);
   TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)-mIcmsCred_Ant);
   TOTAL.Text      :=FormatFloat(mcasccus, ValFloat(TOTAL.Text)-mtotliq_ant);
   end;

QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)+Tb_CompCPQUANT.Value);
TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)+Tb_CompCPICMSCRED.AsFloat);
TOTAL.Text      :=FormatFloat(mcasccus, ValFloat(TOTAL.Text)+Tb_comptotalliq.asFloat);

moper:=0;

mQtdZerado:=mQtdZerado-mQtdZerado_ant;
if (Tb_CompCPQUANT.AsFloat=0) and (Tb_CompCPPERCENT.AsFloat=0) then
   mQtdZerado:=mQtdZerado+1;
//if (Tb_CompCPQUANT.AsFloat<>0) or (Tb_CompCPPERCENT.AsFloat<>0) then
//   Tb_CompCPPERCENT_REST.Value:=0;

if Tb_CompCPPERCENT.AsFloat<>0 then
   Tb_CompCPPERCENT_REST.Value:=Tb_CompCPPERCENT.Value;


if Tb_CompCPPERCENT.AsFloat<>0 then
   begin
   Tb_CompCPPERCENT_REST.Value:=Tb_CompCPPERCENT.Value;
   mTotQsp:=mTotQsp-Tb_CompCPPERCENT_REST.Value+mPerc_Ant;
   end
else
   mTotQsp:=mTotQsp+mPerc_Ant;
mPerc_Ant:=0;
mCodMat_ant:=0;
mCodPro_Ant:=0;
mAlterouTabela:=true;

end;

procedure TFrm_Ind_ManFor.bbMetodosClick(Sender: TObject);
begin
if fsonumero(CODPRO.Text)<=0 then
   begin
   FMensagem('Favor Selecionar um produto!',0,['0'],0);
   exit;
   end;

Tb_Comp.First;
if Tb_Comp.Eof then
   begin
   FMensagem('Não ha Composição de Formulas para Este produto!',0,['0'],0);
   exit;
   end;

CODPRO.Text:=FloatToStr(fsonumero(CODPRO.Text));
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select PDNOME from CADPRO where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PDCODPRO=0'+Trim(CODPRO.Text)
                  +' and (PDNIVEL=0 OR PDNIVEL=3)');
dm1.Query2.Open;
if DM1.Query2.Eof then
   begin
   FMensagem('Favor Selecionar um produto!',0,['0'],0);
   exit;
   end;
if Frm_Ind_Comp02=nil then
   Application.CreateForm(TFrm_Ind_Comp02, Frm_Ind_Comp02);

//mBloqueiaChange:=false;
flcadcomp02(0,fdeixanum(CODPRO.Text),'');

if not fIndManforTestaMetodos(0) then
   begin
   flcadcomp02(0,fdeixanum(CODPRO.Text),'');
   end;
//mBloqueiaChange:=false;
DM3.Tb_Comp02.First;
mOrdem_mpCP:=mOrdem_mp;
frm_Ind_Comp02.ShowModal;
frm_Ind_Comp02.free;
frm_Ind_Comp02:=nil;
end;

function fIndManforTestaMetodos(ptipo: Integer): Boolean;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.Params.CreateParam(ftstring,'CP_CODEMP',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_CODPRO',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_DESCRICAO',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_TESTE01',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_TESTE02',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_TESTE03',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_TESTE04',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_ESP01',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_ESP02',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_ESP03',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_ESP04',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_MET01',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_MET02',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_MET03',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_MET04',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_MEDUND',ptinput);
DM1.Query5.Params.CreateParam(ftstring,'CP_CODPRO_EMPRO',ptinput);
DM1.Query5.SQL.Add('Insert into CADPROC02 ('
          +'CP_CODEMP'
          +',CP_CODPRO'
          +',CP_DESCRICAO'
          +',CP_TESTE01'
          +',CP_TESTE02'
          +',CP_TESTE03'
          +',CP_TESTE04'
          +',CP_ESP01'
          +',CP_ESP02'
          +',CP_ESP03'
          +',CP_ESP04'
          +',CP_MET01'
          +',CP_MET02'
          +',CP_MET03'
          +',CP_MET04'
          +',CP_MEDUND'
          +',CP_CODPRO_EMPRO'
          +') Values  ('
          +':CP_CODEMP'
          +',:CP_CODPRO'
          +',:CP_DESCRICAO'
          +',:CP_TESTE01'
          +',:CP_TESTE02'
          +',:CP_TESTE03'
          +',:CP_TESTE04'
          +',:CP_ESP01'
          +',:CP_ESP02'
          +',:CP_ESP03'
          +',:CP_ESP04'
          +',:CP_MET01'
          +',:CP_MET02'
          +',:CP_MET03'
          +',:CP_MET04'
          +',:CP_MEDUND'
          +',:CP_CODPRO_EMPRO'
          +')'
          );

DM1.Query5.ParambyName('CP_CODEMP').AsFloat       :=codemp;
DM1.Query5.ParambyName('CP_CODPRO').AsFloat       :=0;
DM1.Query5.ParambyName('CP_DESCRICAO').AsString   :='';
DM1.Query5.ParambyName('CP_TESTE01').AsString     :='';
DM1.Query5.ParambyName('CP_TESTE02').AsString     :='';
DM1.Query5.ParambyName('CP_TESTE03').AsString     :='';
DM1.Query5.ParambyName('CP_TESTE04').AsString     :='';
DM1.Query5.ParambyName('CP_ESP01').AsString       :='';
DM1.Query5.ParambyName('CP_ESP02').AsString       :='';
DM1.Query5.ParambyName('CP_ESP03').AsString       :='';
DM1.Query5.ParambyName('CP_ESP04').AsString       :='';
DM1.Query5.ParambyName('CP_MET01').AsString       :='';
DM1.Query5.ParambyName('CP_MET02').AsString       :='';
DM1.Query5.ParambyName('CP_MET03').AsString       :='';
DM1.Query5.ParambyName('CP_MET04').AsString       :='';
DM1.Query5.ParambyName('CP_MEDUND').AsString      :='';
DM1.Query5.ParambyName('CP_CODPRO_EMPRO').AsFloat :=fsonumero(Frm_Ind_ManFor.CODPRO.Text);
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select CPCODEMP,CPCODPRO,CPCODPRO_ACAB from '
                  +' CADCOMP where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CPCODPRO=0'+fdeixanum(Frm_Ind_ManFor.CODPRO.Text)
                  +' group by CPCODEMP,CPCODPRO,CPCODPRO_ACAB ');
DM1.Query4.Open;
//DM1.Query4.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

result:=True;

While not DM1.Query4.Eof do
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
      begin
      if not DM3.Tb_Comp02.Locate('CP_CODPRO',DM1.Query4.Fields[2].AsFloat,[]) then
         begin
         DM1.Query5.ParambyName('CP_CODPRO').AsFloat:=DM1.Query4.Fields[2].AsFloat;
         DM1.Query5.ExecSQL;
         result:=false;
         end;
      end
   else
      begin
      if not DM3.Tb_Comp02.Locate('CP_CODEMP;CP_CODPRO',vararrayOf([DM1.Query4.Fields[0].AsFloat,DM1.Query4.fields[2].asfloat]),[]) then
         begin
         DM1.Query5.ParambyName('CP_CODPRO').AsFloat:=DM1.Query4.Fields[2].AsFloat;
         DM1.Query5.ExecSQL;
         result:=false;
         end;
      end;
   DM1.Query4.Next;
   end;
end;
procedure TFrm_Ind_ManFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ind_ManFor.DBGrid1Exit(Sender: TObject);
var
mQtdUnd, mQtdPer: Real;
begin
if Tb_Comp.State in [dsEdit, dsInsert] then
   begin
   if (Tb_CompCPCODMAT.AsFloat>0) and
      ( (Tb_CompCPQUANT.AsFloat>0) or (Tb_CompCPPERCENT.Asfloat<>0)) then
      Tb_Comp.Post
   else
      Tb_Comp.Cancel;
   end;
mQtdUnd:=0;
mQtdPer:=0;
if mAlterouTabela then
   begin
   Tb_Comp.First;
   While not Tb_Comp.Eof do
      begin
      if Tb_CompCPCODPRO_ACAB.AsFloat<>0 then
         begin
         Tb_Comp.Next;
         Continue;
         end;
      mQtdUnd:=mQtdUnd+Tb_CompCPQUANT.AsFloat;
      mQtdPer:=mQtdPer+Tb_CompCPPERCENT.AsFloat;
      Tb_Comp.Next;
      end;
   if DM1.Tb_PargerPIND_TPFORMULA.Asfloat>0 then
      begin
      mQtdUnd:=Arredonda(100-mQtdPer,3);

      if (mQtdUnd+mQtdPer)<>100 then
         mQtdUnd:=mQtdUnd+(100-mQtdPer);
      Tb_Comp.First;
      While not Tb_Comp.Eof do
         begin
         if (Tb_CompCPCODPRO_ACAB.AsFloat<>0) or (Tb_CompCPPERCENT.AsFloat<>0) then
            begin
            Tb_Comp.Next;
            Continue;
            end;
         Tb_Comp.Edit;
         Tb_CompCPPERCENT_REST.Value:=mQtdUnd;
         Tb_Comp.Post;
         Tb_Comp.Next;
         end;
      end
   else
      begin
      Tb_Comp.First;
      While not Tb_Comp.Eof do
         begin
         if (Tb_CompCPCODPRO_ACAB.AsFloat<>0)  then
            begin
            Tb_Comp.Next;
            Continue;
            end;
         Tb_Comp.Edit;
         try
            Tb_CompCPPERCENT.Value := Arredonda( ((Tb_CompCPQUANT.Value*100) /  mQtdUnd), 3);
         except
            Tb_CompCPPERCENT.Value :=0;
            end;
         Tb_CompCPPERCENT_REST.Value:=Tb_CompCPPERCENT.Value;
         Tb_Comp.Post;
         Tb_Comp.Next;
         end;
      end;
   end;
mAlterouTabela:=false;

end;

procedure TFrm_Ind_ManFor.Tb_CompAfterCancel(DataSet: TDataSet);
begin
mPerc_Ant     :=0;
mQuant_ant    :=0;
mQtdZerado_ant:=0;
mtotliq_ant   :=0;
mIcmsCred_Ant :=0;
moper         :=0;
mCodMat_ant   :=0;
mCodProAcab_ant:=0;

end;

procedure TFrm_Ind_ManFor.Tb_CompAfterEdit(DataSet: TDataSet);
begin
moper:=1;
mPerc_Ant    :=Tb_CompCPPERCENT.Value;
mQuant_ant   :=Tb_CompCPQUANT.Value;
mtotliq_ant  :=Tb_Comptotalliq.Value;
mIcmsCred_Ant:=Tb_CompCPICMSCRED.Value;
if (Tb_CompCPQUANT.AsFloat=0) and (Tb_CompCPPERCENT.AsFloat=0) then
   mQtdZerado_ant:=1
else
   mQtdZerado_ant:=0;
end;

procedure TFrm_Ind_ManFor.Tb_CompBeforeDelete(DataSet: TDataSet);
begin
mAlterouTabela:=true;

QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)-Tb_CompCPQUANT.Value);
QTDIT.Text      :=FormatFloat('#0', ValFloat(QTDIT.Text)-1);
TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)-Tb_CompCPICMSCRED.AsFloat);
TOTAL.Text      :=FormatFloat(mcasccus, ValFloat(TOTAL.Text)-Tb_comptotalliq.asFloat);
if (Tb_CompCPQUANT.AsFloat=0) and (Tb_CompCPPERCENT.Value=0) then
   begin
   mQtdZerado:=mQtdZerado-1;
   end;
mTotQsp:=mTotQsp+Tb_CompCPPERCENT_REST.Value;

end;




procedure TFrm_Ind_ManFor.SbAtualizaMatPrimClick(Sender: TObject);
begin
if fMensagem('Quer Realmente Atualizar os Preços das Matérias Primas?',0,['1','2'],2)<>mrYes then
   exit;
if Frm_MFor01=nil then
  begin
  Application.CreateForm(TFrm_MFor01,Frm_MFor01);
  Frm_MFor01.CODPRO.Text:=Frm_Ind_ManFor.CODPRO.Text;
  Frm_MFor01.CODPROExit(Self);
  Frm_MFor01.Visible:=False;
  end;
Frm_MFor01.fAtualizarFormulas(1,false);
FreeAndNil(Frm_MFor01);
verteclado(0);
FMensagem('registro Atualizado!',0,['0'],0);

end;

procedure TFrm_Ind_ManFor.Qr_FormulaCalcFields(DataSet: TDataSet);
begin

if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_FormulaCPCODPRO.AsString) then
   Qr_Formulanomformula.Value:=DM1.Query1.Fields[0].AsString;
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_FormulaCPCODMAT.AsString) then
   begin
   Qr_Formulanome_mp.Value:=DM1.Query1.Fields[0].AsString;
   Qr_Formulaund_mp.Value:=DM1.Query1.Fields[1].AsString;
   end;
if Qr_FormulaCPQUANT.AsFloat<>0 then
   Qr_Formulaqtd_mp.Value:=Qr_FormulaCPQUANT.Value
else
   begin
   try
      Qr_Formulaqtd_mp.Value:=Arredonda( ((1*Qr_FormulaCPPERCENT_REST.Value/100)/1000),3);
   except
      Qr_FormulaQtd_mp.Value:=0;
      end;
   end;
Qr_Formulatotal_mp.Value:=Arredonda( Qr_Formulaqtd_mp.Value*Qr_FormulaCPPU.Value, DM1.Tb_PargerPCASAS.AsInteger);

end;

procedure TFrm_Ind_ManFor.bbImprmirClick(Sender: TObject);
begin
if fsonumero(CODPRO.Text)=0 then
   begin
   FMensagem('Favor Selecionar um Produto Válido!',0,['0'],0);
   exit;
   end;
Qr_Formula.close;
if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   Qr_Formula.ParamByName('CODEMP').AsString:='%'
else
   Qr_Formula.ParamByName('CODEMP').AsFloat   :=codemp;
Qr_Formula.ParamByName('CODPRO').AsFloat      :=fsonumero(CODPRO.Text);
Qr_Formula.ParamByName('CODPRO_ACAB').AsFloat :=0;
rl_proced.Visible:=false;
Qr_Formula.Open;
if flqr1('PDNOME,PDUND,PDCODPROC','PD','CADPRO','N','PDCODPRO',Qr_FormulaCPCODPRO.AsString) then
   begin
   if DM1.Query1.Fields[2].AsFloat<>0 then
      begin
      if flcadproc(1,0,0,DM1.Query1.Fields[2].AsString) then
         begin
         mTabTemp:=fProctemp(24);
         rl_proced.Visible:=true;
         lbl_nomproc.Caption:='Procedimento: '+DM3.Tb_ProcCP_CODPRO.AsString+'-'+DM3.Tb_ProcCP_NOME.Value;
         DM1.Query3.Close;
         DM1.Query3.sql.clear;
         DM1.Query3.SQL.Add('Select CPT_CODEMP,CPT_CODPRO,CPT_PAG,CPT_DESCRICAO FROM CADPROC_TEXTO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntTostr(codemp)+' and ')
                    +' CPT_CODPRO=0'+DM3.Tb_ProcCP_CODPRO.AsString
                     +' ORDER BY CPT_PAG ');
         DM1.Query3.Open;
         if not DM1.Query3.Eof then
            begin
            While not DM1.Query3.Eof do
               begin
               assignfile(f,mTabTemp);
               rewrite(f);
               While not DM1.Query3.Eof do
                  begin
                  writeln(f,DM1.Query3.fieldbyName('CPT_DESCRICAO').AsString);
                  DM1.Query3.Next;
                  end;
                closefile(f);
                Texto.Lines.LoadFromFile(mTabTemp);
                deletefile(mTabTemp);
                end;
             end;
          end;
      end;
   end;
RLReport1.PreviewModal;
end;

procedure TFrm_Ind_ManFor.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotqtd_mp:=0;
mTotPerc  :=0;
mtotalmp  :=0;

end;

procedure TFrm_Ind_ManFor.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotqtd_mp:=mtotqtd_mp+Qr_Formulaqtd_mp.Value;
mTotPerc  :=mTotPerc+Qr_FormulaCPPERCENT_REST.Value;
mtotalmp  :=mtotalmp+Qr_Formulatotal_mp.Value;

end;

procedure TFrm_Ind_ManFor.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_quantidade.Caption:=FormatFloat(mcasind, mtotqtd_mp);
lbl_totperc.Caption   :=FormatFloat('#,##0.000', mTotPerc);
lbl_totalmp.Caption   :=FormatFloat(mcasas, mtotalmp);

end;
function TFrm_Ind_ManFor.fIndLercomp(pTipo: Integer; pCodpro: String): Boolean;
begin
Tb_Comp.close;
Tb_Comp.SQL.clear;
Tb_Comp.SQL.Add('Select CPCODEMP, '
               +'       CPORDEM, '
               +'       CPCODPRO, '
               +'       CPNUMERO, '
               +'       CPCODMAT, '
               +'       CPCODPRO_ACAB, '
               +'       CPMPNUM, '
               +'       CPQUANT, '
               +'       CPPU, '
               +'       CPVLRINC, '
               +'       CPALIQORI, '
               +'       CPALICMSCRED, '
               +'       CPICMSCRED, '
               +'       CPTIPO, '
               +'       CPQTD_PAD, '
               +'       CPPERCENT, '
               +'       CPPERCENT_REST, '
               +'       PDNOME, '
               +'       PDUND '
               +' from CADCOMP,CADPRO where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP=CPCODEMP and ')
               +' PDCODPRO=CPCODMAT and (CPTIPO<>2 or CPTIPO is null) '
               +' and CPCODPRO=0'+pCodpro
               +' ORDER BY CPCODPRO_ACAB,CPORDEM ');
try
   Tb_Comp.Open;
except
   Tb_Comp.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
mQtdZerado:=0;
While not Tb_Comp.Eof do
   begin
   if ((Tb_CompCPQUANT.IsNull) or (Tb_CompCPQUANT.Value=0)) and
      ((Tb_CompCPPERCENT.IsNull) or (Tb_CompCPPERCENT.Value=0)) then
      begin
      mQtdZerado:=mQtdZerado+1;
      end;
   Tb_Comp.Next;
   end;
Tb_Comp.First;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(CPQUANT*CPPU) as CPTOTAL, ');
DM1.Query1.SQL.Add('       sum(DECODE(CPPERCENT,0,0,CPPERCENT_REST)) as QSP, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CPCODPRO=0'+CODPRO.Text);
DM1.Query1.open;
mOrdem_mp :=DM1.query1.Fields[0].AsInteger+1;
mTotQsp:=100-DM1.query1.FieldbyName('QSP').AsFloat;

QTDU.Text       :=FormatFloat(mcasind, DM1.Query1.fieldByName('CPQUANT').AsFloat);
QTDIT.Text      :=FormatFloat('#0', DM1.Query1.fieldByName('QTDREG').AsFloat);
TOTICMSCRED.Text:=FormatFloat(mcaspuind, DM1.Query1.fieldByName('CPICMSCRED').AsFloat);
TOTAL.Text      :=FormatFloat(mcasccus, DM1.Query1.fieldByName('CPTOTAL').AsFloat-DM1.Query1.fieldByName('CPICMSCRED').AsFloat);
result:=true;
end;


procedure TFrm_Ind_ManFor.UNDMEDChange(Sender: TObject);
begin
mAlterouProd:=true;
end;

procedure TFrm_Ind_ManFor.Panel1Exit(Sender: TObject);
begin
if mAlterouProd then
   begin
   mAlterouProd:=false;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML from CADPRO where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PDCODPRO=0'+Trim(CODPRO.Text)
                  +' and (PDNIVEL=0 OR PDNIVEL=3)');
   dm1.Query2.Open;
   if DM1.Query2.Eof then
      exit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'QTDGRML',ptInput);
   DM1.Query1.SQL.Add('Update CADPRO set PDQTDGRML=:QTDGRML '
                     +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                     +' PDCODPRO=0'+fdeixanum(CODPRO.Text));
   DM1.Query1.ParambyName('QTDGRML').AsFloat :=ValFloat(UNDMED.Text);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      FMensagem('Erro 333 ao atualizar a tabela de Produtos!',0,['0'],0);
      exit;
      end;
   end;


end;

procedure TFrm_Ind_ManFor.UNDMEDExit(Sender: TObject);
begin
UNDMED.Text:=FormatFloat('0.000', ValFloat(UNDMED.Text));

end;

procedure TFrm_Ind_ManFor.Tb_CompBeforeEdit(DataSet: TDataSet);
begin
  mCodMat_ant    :=Tb_CompCPCODMAT.AsFloat;
  mCodProAcab_ant:=Tb_CompCPCODPRO_ACAB.AsFloat;
end;

end.
