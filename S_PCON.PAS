unit S_PCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, S_DM1, Func, S_Cli, S_Ven,
  Mask, Grids, DBGrids, DBCtrls, Func2,S_Impres, RDprint,Lerarq,
  RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter, RLDraftFilter,
  RLReport,dbtables, CheckLst, DB,variants,S_SitCre, S_SelEmp;

type
  TFrm_PCon = class(TForm)
    Panel1_Edit: TPanel;
    SBx1: TScrollBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBEdit1: TDBEdit;
    DBE_CodVen: TDBEdit;
    DBEdit3: TDBEdit;
    DBE_CodCli: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBE_datcon: TDBEdit;
    DBE_dtpcon: TDBEdit;
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand1: TRLBand;
    lbl_empresa: TRLLabel;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    lbl_obs: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    det_contato: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    Panel_filtros: TPanel;
    Panel4_filtros: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    CODVEN: TEdit;
    CODCLI: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CB_DTPCONT: TCheckBox;
    CB_GRAFICO: TCheckBox;
    Panel_aplicar: TPanel;
    BBnFechar: TBitBtn;
    BBnAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    panel_lista: TPanel;
    DBGrid1: TDBGrid;
    dtcontato: TMaskEdit;
    dtpcont: TMaskEdit;
    sbSEmCont: TSpeedButton;
    CLBStatus: TCheckListBox;
    bbAgendar: TBitBtn;
    Panel_naveg: TPanel;
    DBNavigator1: TDBNavigator;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    CB_DETCONTATO: TCheckBox;
    U_Contato: TUpdateSQL;
    Tb_Contato: TQuery;
    Tb_ContatoCTNUMCON: TFloatField;
    Tb_ContatoCTCODVEN: TFloatField;
    Tb_ContatoCTCODCLI: TFloatField;
    Tb_ContatoCTDATCON: TDateTimeField;
    Tb_ContatoCTDTPCON: TDateTimeField;
    Tb_Contatofone: TStringField;
    Tb_ContatoCTCODEMP: TFloatField;
    Tb_ContatoCTSTATUS: TFloatField;
    Tb_Contatodatcon: TStringField;
    Tb_Contatodtpcont: TStringField;
    Tb_ContatoTMP_NOMVEN: TStringField;
    Tb_ContatoTMP_NOMCLI: TStringField;
    Tb_ContatoTMP_NOMCON: TStringField;
    Tb_ContatoTMP_FONCON: TStringField;
    Tb_ContatoTMP_FONECOM: TStringField;
    Tb_ContatoTMP_CUF: TStringField;
    Src_Contato: TDataSource;
    TEXTCON: TMemo;
    TEXTPCON: TMemo;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    rg_ordem: TRadioGroup;
    SB_REAGENDAR: TSpeedButton;
    SB_SEMCOMPRA: TSpeedButton;
    CB_PCONT: TCheckBox;
    CB_DATCON: TCheckBox;
    bbSitCre: TBitBtn;
    DBCb_Status: TDBCheckBox;
    Label8: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    lbx_codven: TListBox;
    lbx_codcli: TListBox;
    OMITIR_VEN: TCheckBox;
    OMITIR_CLI: TCheckBox;
    Label9: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Tb_ContatoCFONE01: TStringField;
    Tb_ContatoCCIDADE: TStringField;
    Tb_ContatoCEMAIL: TStringField;
    lbl_codbai: TLabel;
    edt_codbai: TEdit;
    lbx_codbai: TListBox;
    OMITIR_BAI: TCheckBox;
    Label11: TLabel;
    edt_codreg: TEdit;
    lbx_codreg: TListBox;
    OMITIR_REG: TCheckBox;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure BBnFecharClick(Sender: TObject);
    procedure BBnAplicarClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure DBE_CodVenKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CodVenExit(Sender: TObject);
    procedure DBE_CodCliExit(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure DBE_CodCliKeyPress(Sender: TObject; var Key: Char);
    procedure sbSEmContClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure bbAgendarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure c(DataSet: TDataSet);
    procedure Tb_ContatoAfterCancel(DataSet: TDataSet);
    procedure Tb_ContatoAfterInsert(DataSet: TDataSet);
    procedure Tb_ContatoCalcFields(DataSet: TDataSet);
    procedure TEXTCONExit(Sender: TObject);
    procedure TEXTPCONExit(Sender: TObject);
    procedure TEXTCONKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TEXTPCONKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Src_ContatoDataChange(Sender: TObject; Field: TField);
    procedure SB_REAGENDARClick(Sender: TObject);
    procedure SB_SEMCOMPRAClick(Sender: TObject);
    procedure CB_PCONTExit(Sender: TObject);
    procedure dtpcontExit(Sender: TObject);
    procedure bbSitCreClick(Sender: TObject);
    procedure DBCb_StatusClick(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbaiExit(Sender: TObject);
    procedure edt_codbaiKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codregExit(Sender: TObject);
    procedure edt_codregKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codregKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fEmitirRel(pTipo: Integer): Boolean;
    function fpconCabRel(pTipo: Integer): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;
    function fTestaCab(pTipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_pcon: tFrm_Impres;

  end;

var
  Frm_PCon: TFrm_PCon;
  Form_SelEmp: TFrm_SelEmp;
  mAssunto: String;
  mDatpCon: TDateTime;
  mOper_Item: Integer=0;
  mtit: String;

implementation

uses S_DM4;


{$R *.DFM}

procedure TFrm_PCon.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CABC',Key);
   CODVENExit(Self);
   if CODVEN.Enabled then
      codven.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_PCon.BBnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_PCon.BBnAplicarClick(Sender: TObject);
begin
if (trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial Maior que Final, inválido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

Tb_Contato.Close;
Tb_Contato.SQL.Clear;
Tb_Contato.SQL.Add('select CTNUMCON,');
Tb_Contato.SQL.Add('      CTCODVEN, ');
Tb_Contato.SQL.Add('       CTCODCLI, ');
Tb_Contato.SQL.Add('       CTDATCON,');
Tb_Contato.SQL.Add('       CTDTPCON,');
Tb_Contato.SQL.Add('       CTCODEMP,');
Tb_Contato.SQL.Add('       CTSTATUS, ');
Tb_Contato.SQL.Add('       VNOME   AS TMP_NOMVEN, ');
Tb_Contato.SQL.Add('       CRAZAO  AS TMP_NOMCLI, ');
Tb_Contato.SQL.Add('       CNOMCON AS TMP_NOMCON, ');
Tb_Contato.SQL.Add('       CFONCON AS TMP_FONCON, ');
Tb_Contato.SQL.Add('       CFONE01 AS TMP_FONECOM, ');
Tb_Contato.SQL.Add('       CUF      AS TMP_CUF ');
Tb_Contato.SQL.Add(' ,CFONE01,CCIDADE,CEMAIL');
Tb_Contato.SQL.Add(' from CONTATO,CADCLI,CADVEN ');
Tb_Contato.SQL.Add(' where ');
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   Tb_Contato.SQL.Add(' CTCODEMP=0'+IntTosTr(codemp)+' and ');

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CTCODVEN '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CTCODCLI '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codbai,OMITIR_BAI);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CCODBAI '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CROTA '+mcinst2+' and ');

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CUF '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' CCODLOC '+mcinst2+' and ');



if CB_DTPCONT.Checked then
   mcinst4:='CTDTPCON'
else
   mcinst4:='CTDATCON';


if Trim(MDT1.Text)<>'/  /' then
   Tb_Contato.SQL.Add(' '+mcinst4+'>='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT1.Text))+chr(39)+' and ');

if Trim(MDT2.Text)<>'/  /' then
   Tb_Contato.SQL.Add(' '+mcinst4+'<='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT2.Text))+chr(39)+' and ');
if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      Tb_Contato.SQL.Add(' CTSTATUS=0 and ');
   if CLBStatus.Checked[1] then
      Tb_Contato.SQL.Add(' CTSTATUS=1 and ');
   end;
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   Tb_Contato.SQL.Add(' CCODEMP=CTCODEMP and ');
Tb_Contato.SQL.Add(' CCODCLI=CTCODCLI');
if not DM1.Qr_TID.locate('TINOME','CADVEN',[]) then
   Tb_Contato.SQL.Add(' and VCODEMP=CTCODEMP ');
Tb_Contato.SQL.Add(' and VCODVEN=CTCODVEN ');

if rg_ordem.ItemIndex=0 then
   Tb_Contato.SQL.Add(' order by CRAZAO,CTCODCLI')
else
   Tb_Contato.SQL.Add(' order by CTDTPCON,CRAZAO,CTCODCLI');


try
   Tb_Contato.Open;
except
   Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;
end;

procedure TFrm_PCon.bbImprimirClick(Sender: TObject);
begin

DM1.Tb_Contato.Close;
DM1.Tb_Contato.SQL.Clear;
DM1.Tb_Contato.SQL.Add('select CTNUMCON,');
DM1.Tb_Contato.SQL.Add('       CTCODVEN, ');
DM1.Tb_Contato.SQL.Add('       CTCODCLI, ');
DM1.Tb_Contato.SQL.Add('       CTDATCON,');
DM1.Tb_Contato.SQL.Add('       CTDTPCON,');
DM1.Tb_Contato.SQL.Add('       CTCODEMP,');
DM1.Tb_Contato.SQL.Add('       CTTEXCON,');
DM1.Tb_Contato.SQL.Add('       CTTEXPCON,');
DM1.Tb_Contato.SQL.Add('       CTSTATUS, ');
DM1.Tb_Contato.SQL.Add('       VNOME   AS TMP_NOMVEN, ');
DM1.Tb_Contato.SQL.Add('       CRAZAO  AS TMP_NOMCLI, ');
DM1.Tb_Contato.SQL.Add('       CNOMCON AS TMP_NOMCON, ');
DM1.Tb_Contato.SQL.Add('       CFONCON AS TMP_FONCON, ');
DM1.Tb_Contato.SQL.Add('       CFONE01 AS TMP_FONECOM, ');
DM1.Tb_Contato.SQL.Add('       CUF      AS TMP_CUF ');
DM1.Tb_Contato.SQL.Add(' ,CFONE01,CCIDADE,CEMAIL');

DM1.Tb_Contato.SQL.Add(' from CONTATO,CADCLI,CADVEN ');
DM1.Tb_Contato.SQL.Add(' where ');
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CTCODEMP=0'+IntTosTr(codemp)+' and ');
if Trim(CODVEN.Text)<>'' then
   DM1.Tb_Contato.SQL.Add('  CTCODVEN=0'+Trim(CODVEN.Text)+' and ');
if Trim(CODCLI.Text)<>'' then
   DM1.Tb_Contato.SQL.Add(' CTCODCLI=0'+Trim(CODCLI.Text)+' and ');
if CB_DTPCONT.Checked then
   mcinst4:='CTDTPCON'
else
   mcinst4:='CTDATCON';


if Trim(MDT1.Text)<>'/  /' then
   DM1.Tb_Contato.SQL.Add(' '+mcinst4+'>='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT1.Text))+chr(39)+' and ');

if Trim(MDT2.Text)<>'/  /' then
   DM1.Tb_Contato.SQL.Add(' '+mcinst4+'<='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT2.Text))+chr(39)+' and ');
if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=0 and ');
   if CLBStatus.Checked[1] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=1 and ');
   end;
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CCODEMP=CTCODEMP and ');
DM1.Tb_Contato.SQL.Add(' CCODCLI=CTCODCLI');
if not DM1.Qr_TID.locate('TINOME','CADVEN',[]) then
   DM1.Tb_Contato.SQL.Add(' and VCODEMP=CTCODEMP ');
DM1.Tb_Contato.SQL.Add(' and VCODVEN=CTCODVEN ');

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODCLI '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CUF '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
if trim(mcinst2)<>'' then Tb_Contato.sql.Add(' and CROTA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbai,OMITIR_BAI);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add('   and CCODBAI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CCODLOC '+mcinst2);


if rg_ordem.ItemIndex=0 then
   DM1.Tb_Contato.SQL.Add(' order by CRAZAO,CTCODCLI')
else
   DM1.Tb_Contato.SQL.Add(' order by CTDTPCON,CRAZAO,CTCODCLI');


try
   DM1.Tb_Contato.Open;
except
   DM1.Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;


bbImprimir.Enabled  :=false;
sbSEmCont.Enabled   :=false;
SB_REAGENDAR.Enabled:=false;
SB_SEMCOMPRA.Enabled:=false;
if not DM1.Tb_ContatoCTNUMCON.IsNull then
   begin
   IF CB_GRAFICO.Checked then
      begin
      DM1.Tb_Contato.First;
      lbl_empresa.Caption:=DM1.Tb_EmpRAZAO_CAB.Value;
      lbl_obs.Caption    :=fperiodo(0,MDT1.Text,MDT2.Text);
      lbl_titulo.Caption :='Relação de Contatos.';
      if CB_DETCONTATO.Checked then
         det_contato.Visible   :=true
      else
         det_contato.Visible   :=false;
      RLReport1.ShowProgress:=false;
      RLReport1.PreviewModal;
      bbImprimir.Enabled  :=true;
      sbSEmCont.Enabled   :=true;
      bbImprimir.Enabled  :=true;
      SB_REAGENDAR.Enabled:=true;
      exit;
      end;
      // Impressão
   mtit:='Relacao de Contatos. '+fperiodo(0,MDT1.Text,MDT2.Text);
   fEmitirRel(0);
   end;
bbImprimir.Enabled  :=true;
sbSEmCont.Enabled   :=true;
SB_REAGENDAR.Enabled:=true;
SB_SEMCOMPRA.Enabled:=true;

end;

procedure TFrm_PCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
DM1.Tb_Contato.Close;
Tb_Contato.Close;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PCon.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PCon.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);

      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      end;   
   end;
end;

procedure TFrm_PCon.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;

end;

procedure TFrm_PCon.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_PCon.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_PCon.BBINCLUIRClick(Sender: TObject);
begin
if not Tb_Contato.Active then BBnAplicar.Click;
Panel1_Edit.Enabled        :=true;
Panel4_filtros.Enabled     :=false;
BBnAplicar.Enabled         :=false;
bbImprimir.Enabled         :=false;
SB_REAGENDAR.Enabled       :=false;
SB_SEMCOMPRA.Enabled       :=false;
sbSEmCont.Enabled          :=false;
BBALTERAR.Enabled          :=False;
BBINCLUIR.Enabled          :=False;
BBGRAVAR.Enabled           :=True;
BBEXCLUIR.Enabled          :=False;
BBLIMPAR.Enabled           :=True;
DBNavigator1.Enabled       :=False;
DBGrid1.Enabled            :=false;
dtpcont.Text               :='/  /';
dtcontato.Text             :=FormatDatetime(fdt2, Date);
dtpcont.Visible            :=True;
dtcontato.Visible          :=True;
DBE_datcon.Visible         :=false;
DBE_dtpcon.Visible         :=false;
Tb_Contato.Last;
Tb_Contato.Insert;
TEXTCON.Lines.Clear;
TEXTPCON.Lines.Clear;
dtcontato.Text            :='/  /';
if dbe_CODVEN.Enabled then
   DBE_CodVen.SetFocus;
mOper_Item:=0;


end;

procedure TFrm_PCon.DBE_CodVenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_ContatoCTCODVEN.Value:=ValFloat(fChamaVen(0,'frm_PCon',Key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PCon.DBE_CodVenExit(Sender: TObject);
begin
if (BBLIMPAR.Focused) or (BBnFechar.Focused) then
   exit
else
   begin
   if (not Tb_ContatoCTCODVEN.IsNull) and (Tb_ContatoCTCODVEN.Value<>0) then
      begin
      if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_ContatoCTCODVEN.AsString) then
         begin
         fMensagem('Vendedor não Cadastrado!',0,['0'],0);
         if dbe_CODVEN.Enabled then
            DBE_CodVen.SetFocus;
         end
      else
         Tb_ContatoTMP_NOMVEN.Value:=DM1.Query1.Fields[0].AsString;
      end;
   end;

end;

procedure TFrm_PCon.DBE_CodCliExit(Sender: TObject);
begin
if (BBLIMPAR.Focused) or (BBnFechar.Focused) then
   exit
else
   begin
   if (not Tb_ContatoCTCODCLI.IsNull) and (Tb_ContatoCTCODCLI.Value<>0) then
      begin
      if not flqr1('CRAZAO,CNOMCON,CFONCON,CFONE01,CUF,CCODVEN','C','CADCLI','N','CCODCLI',Tb_ContatoCTCODCLI.AsString) then
         begin
         fMensagem('Cliente não Cadastrado!',0,['0'],0);
         DBE_CodCli.SetFocus;
         end
      else
         begin
         Tb_ContatoTMP_NOMCLI.Value:=DM1.Query1.Fields[0].AsString;
         Tb_ContatoTMP_NOMCON.Value:=DM1.Query1.Fields[1].AsString;
         if trim(DM1.Query1.Fields[2].AsString)='' then
            Tb_ContatoTMP_FONCON.Value:=DM1.Query1.Fields[3].AsString
         else
            Tb_ContatoTMP_FONCON.Value:=DM1.Query1.Fields[2].AsString;
         if (Tb_ContatoCTCODVEN.IsNull) or (Tb_ContatoCTCODVEN.Value=0) then
            begin
            Tb_ContatoCTCODVEN.Value:=DM1.Query1.Fields[5].AsFloat;
            if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_ContatoCTCODVEN.AsString) then
               Tb_ContatoCTCODVEN.Value:=0
            else
               Tb_ContatoTMP_NOMVEN.Value:=DM1.Query1.Fields[0].AsString;
            end;
         if CB_DATCON.Checked then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('select max(CTDTPCON) from CONTATO where '+iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' CTCODEMP=0'+IntTosTr(codemp)+' and ')
                              +' CTCODCLI=0'+Tb_ContatoCTCODCLI.AsString);
            DM1.Query1.Open;
            if not (DM1.Query1.Eof) and not (DM1.Query1.fields[0].IsNull) then
               dtcontato.Text:=FormatDateTime(fdt2,DM1.Query1.Fields[0].AsDateTime);
            end;
         if (CB_PCONT.Checked) and (dtcontato.Focused) then
            dtpcont.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_PCon.BBALTERARClick(Sender: TObject);
begin
if not Tb_Contato.Active then BBnAplicar.Click;
Panel1_Edit.Enabled        :=true;
Panel4_filtros.Enabled     :=false;
BBnAplicar.Enabled         :=false;
bbImprimir.Enabled         :=false;
SB_REAGENDAR.Enabled       :=false;
SB_SEMCOMPRA.Enabled       :=false;
sbSEmCont.Enabled          :=false;
bbINCLUIR.Enabled          :=False;
bbALTERAR.Enabled          :=False;
bbGRAVAR.Enabled           :=True;
bbEXCLUIR.Enabled          :=False;
BBLIMPAR.Enabled           :=True;
DBNavigator1.Enabled       :=False;
DBGrid1.Enabled            :=false;

if Tb_ContatoCTNUMCON.IsNull then
   begin
   fMensagem('Não ha Registro a ser Alterado!',0,['0'],0);
   BBLIMPAR.Click;
   end
else
   Tb_Contato.Edit;
if (Tb_ContatoCTDTPCON.IsNull) or (Tb_ContatoCTDTPCON.Value<=pdatanula) then
   dtpcont.Text               := '/  /'
else
   dtpcont.Text               :=FormatDateTime(fdt2, Tb_ContatoCTDTPCON.Value);

if (Tb_ContatoCTDATCON.IsNull) or (Tb_ContatoCTDATCON.Value<=pdatanula) then
   dtcontato.Text               := '/  /'
else
   dtcontato.Text               :=FormatDateTime(fdt2, Tb_ContatoCTDATCON.Value);
dtpcont.Visible            :=True;
dtcontato.Visible          :=True;
DBE_datcon.Visible         :=false;
DBE_dtpcon.Visible         :=false;
mOper_Item:=1;
if DBE_CODVEN.Enabled then
   DBE_CodVen.SetFocus;

end;

procedure TFrm_PCon.BBGRAVARClick(Sender: TObject);
begin
if not (Tb_Contato.State in [dsInsert, dsedit]) then
   begin
   BBLIMPAR.Click;
   exit;
   end;
Panel1_Edit.Enabled      :=true;
Panel4_filtros.Enabled   :=false;

if (Tb_ContatoCTCODCLI.IsNull) or (Tb_ContatoCTCODCLI.Value=0) then
   begin
   fMensagem('Código do Cliente tem que ser preenchido!',0,['0'],0);
   DBE_CodCli.SetFocus;
   exit;
   end;
if (Tb_ContatoCTCODVEN.IsNull) or (Tb_ContatoCTCODVEN.Value=0) then
   begin
   fMensagem('Código do Vendedor tem que ser preenchido!',0,['0'],0);
   if DBE_CODVEN.Enabled then
      DBE_CodVen.SetFocus;
   exit;
   end;

if (Tb_ContatoCTDATCON.IsNull) or (Tb_ContatoCTDATCON.Value<=pdatanula) then
   begin
   fMensagem('Data de Contato Cliente tem que ser preenchido!',0,['0'],0);
   DBE_datcon.SetFocus;
   exit;
   end;

if Tb_ContatoCTDTPCON.IsNull then
   begin
   fMensagem('Data do proximo Contato Cliente tem que ser preenchido!',0,['0'],0);
   DBE_dtpcon.SetFocus;
   exit;
   end;

if trim(dtpcont.Text)='/  /' then
   Tb_ContatoCTDTPCON.Value:=pdatanula
else
   Tb_ContatoCTDTPCON.Value:=StrToDate(dtpcont.Text);
if trim(dtcontato.Text)='/  /' then
   Tb_ContatoCTDATCON.Value:=pdatanula
else
   Tb_ContatoCTDATCON.Value:=StrToDate(dtcontato.Text);
DM1.Query3.close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftMemo,  'CTTEXCON',ptinput);
DM1.Query3.Params.CreateParam(ftMemo,  'CTTEXPCON',ptinput);
DM1.Query3.Params.CreateParam(ftString,'CTNUMCON',ptinput);

DM1.Query3.SQL.Add('Update CONTATO set CTTEXCON=:CTTEXCON,CTTEXPCON=:CTTEXPCON where ');
if not DM1.Qr_tid.Locate('TINOME','CADCLI',[]) then
   begin
   DM1.Query3.Sql.Add(' CTCODEMP=:CODEMP and ');
   DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query3.ParambyName('CODEMP').AsFloat := Tb_ContatoCTCODEMP.Value;
   end;
DM1.Query3.Sql.Add(' CTNUMCON=:CTNUMCON ');
DM1.Query3.ParambyName('CTNUMCON').AsFloat  := Tb_ContatoCTNUMCON.Value;
DM1.Query3.ParamByName('CTTEXCON').AsMemo   := TEXTCON.Text;
DM1.Query3.ParamByName('CTTEXPCON').AsMemo  := TEXTPCON.Text;
try
   DM1.Query3.ExecSQL;
   fdm1startcommit;
except
   fMensagem('Erro ao Atualizar o arquivo de Contato.!',0,['0'],0);
   end;

Tb_Contato.Post;
BBLIMPAR.Click;
BBINCLUIR.SetFocus;
end;

procedure TFrm_PCon.BBLIMPARClick(Sender: TObject);
begin
if (Tb_Contato.State in [dsInsert, dsedit]) then
   begin
   if mOper_Item=0 then
      Tb_Contato.Delete
   else
      Tb_Contato.Cancel;
   end;
Panel1_Edit.Enabled        :=false;
Panel4_filtros.Enabled     :=true;
dtcontato.Text            :='/  /';
BBnAplicar.Enabled         :=false;
bbImprimir.Enabled         :=false;
SB_REAGENDAR.Enabled       :=false;
SB_SEMCOMPRA.Enabled       :=false;
sbSEmCont.Enabled          :=false;
BBINCLUIR.Enabled          :=True;
BBALTERAR.Enabled          :=True;
BBGRAVAR.Enabled           :=false;
BBEXCLUIR.Enabled          :=True;
BBLIMPAR.Enabled           :=True;
DBNavigator1.Enabled       :=True;
DBGrid1.Enabled            :=true;

BBnAplicar.Enabled         :=true;
bbImprimir.Enabled         :=true;
SB_REAGENDAR.Enabled       :=true;
SB_SEMCOMPRA.Enabled       :=true;
sbSEmCont.Enabled          :=true;

dtpcont.Visible            :=false;
dtcontato.Visible          :=false;
DBE_datcon.Visible         :=true;
DBE_dtpcon.Visible         :=true;




end;

procedure TFrm_PCon.BBEXCLUIRClick(Sender: TObject);
begin
if Tb_ContatoCTNUMCON.IsNull then
   exit;
if fmensagem('Quer Realmente excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   Tb_Contato.Delete;
   BBLIMPAR.Click;
   end;
end;

procedure TFrm_PCon.DBE_CodCliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_ContatoCTCODCLI.Value:=FSonumero(fChamaCli(0,'Frm_PCon',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PCon.sbSEmContClick(Sender: TObject);
begin
bbImprimir.Enabled  :=false;
SB_REAGENDAR.Enabled:=false;
SB_SEMCOMPRA.Enabled:=false;
sbSEmCont.Enabled   :=false;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CONTATO','CTCODEMP','CCODEMP','CTCODCLI','CCODCLI');

DM1.Tb_Contato.Close;
DM1.Tb_Contato.SQL.Clear;
DM1.Tb_Contato.SQL.Add('select CTNUMCON,');
DM1.Tb_Contato.SQL.Add('      CTCODVEN, ');
DM1.Tb_Contato.SQL.Add('       CTDATCON,');
DM1.Tb_Contato.SQL.Add('       CTTEXCON,');
DM1.Tb_Contato.SQL.Add('       CTDTPCON,');
DM1.Tb_Contato.SQL.Add('       CTTEXPCON,');
DM1.Tb_Contato.SQL.Add('       CTCODEMP,');
DM1.Tb_Contato.SQL.Add('       CTSTATUS, ');
DM1.Tb_Contato.SQL.Add('       '+chr(39)+insere2(' ',' ',40)+chr(39)+' AS TMP_NOMVEN, ');
DM1.Tb_Contato.SQL.Add('       CRAZAO  AS TMP_NOMCLI, ');
DM1.Tb_Contato.SQL.Add('       CNOMCON AS TMP_NOMCON, ');
DM1.Tb_Contato.SQL.Add('       CFONCON AS TMP_FONCON, ');
DM1.Tb_Contato.SQL.Add('       CFONE01 AS TMP_FONECOM, ');

DM1.Tb_Contato.SQL.Add('       CUF      AS TMP_CUF, '
                      +'       CCODCLI AS CTCODCLI ');
DM1.Tb_Contato.SQL.Add(' ,CFONE01,CCIDADE,CEMAIL');
DM1.Tb_Contato.SQL.Add('  from CADCLI '+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                      +' CTCODCLI is null ');

if Trim(CODVEN.Text)<>'' then
   DM1.Tb_Contato.SQL.Add(' and CTCODVEN=0'+Trim(CODVEN.Text));
if Trim(CODCLI.Text)<>'' then
   DM1.Tb_Contato.SQL.Add(' and CTCODCLI=0'+Trim(CODCLI.Text));

if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      DM1.Tb_Contato.SQL.Add(' and CTSTATUS=0  ');
   if CLBStatus.Checked[1] then
      DM1.Tb_Contato.SQL.Add(' and CTSTATUS=1  ');
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODCLI '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CCODLOC '+mcinst2);
DM1.Tb_Contato.sql.Add(' order by CRAZAO ');

//DM1.Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');

try
   DM1.Tb_Contato.Open;
except
   DM1.Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;
if CB_GRAFICO.Checked then
   begin
   lbl_empresa.Caption:=DM1.Tb_EmpRAZAO_CAB.Value;
   lbl_obs.Caption    :='Relação dos Clientes Sem Contato.';
   RLReport1.ShowProgress:=false;
   det_contato.Visible   :=false;

   RLReport1.PreviewModal;
   end
else
   begin
      // Impressão
   mtit:='Relação dos Clientes Sem Contato. ';
   fEmitirRel(0);
   end;
bbImprimir.Enabled    :=true;
sbSEmCont.Enabled     :=true;
SB_REAGENDAR.Enabled  :=true;
SB_SEMCOMPRA.Enabled  :=true;
//bbnAplicar.Click;

end;

procedure TFrm_PCon.CLBStatusClick(Sender: TObject);
var
x: Integer;
begin
if CLBStatus.ItemIndex=CLBStatus.Count-1 then
   begin
   for x := 0 to CLBStatus.Count -2 do
      begin
      if CLBStatus.Checked[CLBStatus.count-1] then
         CLBStatus.Checked[x] := true
      else
         CLBStatus.Checked[x]:=false;
      end;
   end
else
   begin
   CLBStatus.Checked[CLBStatus.Count-1]:=False;
   for x:=0 to CLBStatus.Count-2 do
      begin
      CLBStatus.Checked[CLBStatus.Count-1]:=true;
      if not CLBStatus.Checked[x] then
         begin
         CLBStatus.Checked[CLBStatus.Count-1]:=False;
         break;
         end;
      end;
   end;


end;

procedure TFrm_PCon.bbAgendarClick(Sender: TObject);
var
mCodCli: Real;
mCodven: Real;
begin
if Tb_ContatoCTCODCLI.IsNull then
   begin
   fMensagem('Código do Cliente tem que ser preenchido!',0,['0'],0);
   DBE_CodCli.SetFocus;
   exit;
   end;
if Tb_ContatoCTDATCON.IsNull then
   begin
   fMensagem('Data de Contato Cliente tem que ser preenchido!',0,['0'],0);
   DBE_datcon.SetFocus;
   exit;
   end;
if Tb_ContatoCTDTPCON.IsNull then
   begin
   fMensagem('Data do proximo Contato Cliente tem que ser preenchido!',0,['0'],0);
   DBE_dtpcon.SetFocus;
   exit;
   end;
if trim(dtpcont.Text)='/  /' then
   Tb_ContatoCTDTPCON.Value:=pdatanula
else
   Tb_ContatoCTDTPCON.Value:=StrToDate(dtpcont.Text);
if trim(dtcontato.Text)='/  /' then
   Tb_ContatoCTDATCON.Value:=pdatanula
else
   Tb_ContatoCTDATCON.Value:=StrToDate(dtcontato.Text);
mAssunto:=TEXTPCON.Text;
mDatpCon:=Tb_ContatoCTDTPCON.Value;
mCodCli:=Tb_ContatoCTCODCLI.Value;
mCodven:=Tb_ContatoCTCODVEN.Value;

Tb_Contato.Post;
BBLIMPAR.Click;
BBINCLUIR.Click;
Tb_ContatoCTCODVEN.Value:=mCodVen;
Tb_ContatoCTCODCLI.Value:=mCodCli;
Tb_ContatoCTDATCON.Value:=mDatpCon;
TEXTPCON.Text:=mAssunto;
DBE_CodVenExit(Self);
DBE_CodCliExit(Self);


end;

procedure TFrm_PCon.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDateTime(fdt2, date);
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PCON','CB_PCONT']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_PCONT.Checked:=true
   else
      CB_PCONT.Checked:=false;
   end
else
   CB_PCONT.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PCON','CB_DATCON']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_DATCON.Checked:=true
   else
      CB_DATCON.Checked:=false;
   end
else
   CB_DATCON.Checked:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if DM1.Tb_PargerPCODBAI.Value=1  then
   begin
   lbl_codbai.Visible:=true;
   edt_codbai.Visible:=true;
   lbx_codbai.Visible:=true;
   OMITIR_BAI.Visible:=true;
   end
else
   begin
   lbl_codbai.Visible:=false;
   edt_codbai.Visible:=false;
   lbx_codbai.Visible:=false;
   OMITIR_BAI.Visible:=false;
   end;


end;

procedure TFrm_PCon.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If Tb_Contato.State in [dsInsert, dsEdit] then
   begin
   if ((Tb_ContatoCTCODCLI.IsNull) or (Tb_ContatoCTCODCLI.Value=0)) or
      ((Tb_ContatoCTCODVEN.IsNull) or (Tb_ContatoCTCODVEN.Value=0)) or
      ((Tb_ContatoCTDATCON.IsNull) or (Tb_ContatoCTDATCON.Value<=pdatanula)) then
      Tb_Contato.Delete
   else
      Tb_Contato.Post;
   end;
end;

procedure TFrm_PCon.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fMensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_PCon.Tb_ContatoAfterCancel(DataSet: TDataSet);
begin
If (Tb_ContatoCTCODCLI.IsNull)or(Tb_ContatoCTCODCLI.value = 0) then
   Tb_Contato.Delete;

end;

procedure TFrm_PCon.Tb_ContatoAfterInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select max(CTNUMCON) from CONTATO'+iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' where CTCODEMP=0'+IntTosTr(codemp)));
DM1.Query1.Open;
Tb_ContatoCTNUMCON.Value:=DM1.Query1.Fields[0].AsInteger+1;
Tb_ContatoCTCODEMP.Value:=codemp;
Tb_Contato.Post;
Tb_Contato.Edit;
Tb_ContatoCTDATCON.Value:=pdatasis;
Tb_ContatoCTDTPCON.Value:=pdatanula;
Tb_ContatoCTSTATUS.Value:=0;

end;

procedure TFrm_PCon.Tb_ContatoCalcFields(DataSet: TDataSet);
begin
if (Tb_ContatoCTDATCON.IsNull)or(Tb_ContatoCTDATCON.value <= pdatanula) then
   Tb_Contatodatcon.value := '/  /'
   else Tb_Contatodatcon.value := FormatDateTime(fdt2,Tb_ContatoCTDATCON.value);

if (Tb_ContatoCTDTPCON.IsNull)or(Tb_ContatoCTDTPCON.value <= pdatanula) then
   Tb_Contatodtpcont.value := '/  /'
   else Tb_Contatodtpcont.value := FormatDateTime(fdt2,Tb_ContatoCTDTPCON.value);
if fSonumero(Tb_ContatoTMP_FONCON.Value)=0 then
   Tb_Contatofone.Value  :=Tb_ContatoTMP_FONECOM.Value
else
   Tb_Contatofone.Value  :=Tb_ContatoTMP_FONCON.Value;

end;

procedure TFrm_PCon.TEXTCONExit(Sender: TObject);
begin
if length(TEXTCON.Text)>700 then
   TEXTCON.Text:=copy(TEXTCON.Text,1,700);
end;

procedure TFrm_PCon.TEXTPCONExit(Sender: TObject);
begin
if length(TEXTPCON.Text)>700 then
   TEXTPCON.Text:=copy(TEXTPCON.Text,1,700);

end;

procedure TFrm_PCon.TEXTCONKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if length(TEXTCON.Text)>701 then
   key:=0;

end;

procedure TFrm_PCon.TEXTPCONKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if length(TEXTPCON.Text)>701 then
   key:=0;

end;

procedure TFrm_PCon.Src_ContatoDataChange(Sender: TObject; Field: TField);
begin
if not (Tb_Contato.State in [dsEdit, dsInsert]) then
   begin
   if not (Tb_ContatoCTNUMCON.IsNull) and (Tb_ContatoCTNUMCON.Value<>0)  then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select CTTEXCON,CTTEXPCON from CONTATO  where ');
      if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
         DM1.Query2.SQL.Add(' CTCODEMP=0'+Tb_ContatoCTCODEMP.AsString+' and ');
      DM1.Query2.SQL.Add('  CTNUMCON=0'+Tb_ContatoCTNUMCON.AsString);
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         TEXTCON.Lines.clear;
         TEXTPCON.Lines.clear;
         end
      else
         begin
         TEXTCON.Text :=DM1.Query2.Fieldbyname('CTTEXCON').AsString;
         TEXTPCON.Text:=DM1.Query2.Fieldbyname('CTTEXPCON').AsString;
         end;
      end;
   end;


end;

function TFrm_PCon.fpconCabRel(pTipo: Integer): Boolean;
begin
form_impres_pcon.mpag   :=form_impres_pcon.mpag+1;
form_impres_pcon.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mreduz);
form_impres_pcon.RDprint1.ImpF(01,115,'Pagina...: '+FormatFloat('0000',form_impres_pcon.mpag),mreduz);
form_impres_pcon.RDprint1.ImpF(02,01,mtit,mreduz);
form_impres_pcon.RDprint1.ImpF(02,115,'Data: '+FormatDateTime(fdt2, date),mreduz);
form_impres_pcon.RDprint1.ImpF(03,01,insere2('=','=',132),mreduz);
form_impres_pcon.RDprint1.ImpF(04,01,'Agendada em'
                              +insere2('  Cliente',' ',49)
                              +insere2('    Telefone',' ',16)
                              +'  '+insere2('Nome do Contato',' ',30)
                              +'  '
                              +'Retornar em',mreduz);
form_impres_pcon.mlin:=5;
result:=true;
end;

function tFrm_Pcon.fEmitirRel(pTipo: Integer): Boolean;
var
  x, mqtdlin: integer;
  maux1, maux2: String;
  mporc: real;
  mQtdCli:  Integer;

begin
testeform := TFrm_PCon(FindGlobalComponent('form_impres_pcon'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_pcon);

form_impres_pcon.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
DM1.Tb_Contato.First;
form_impres_pcon.mlin:=0; form_impres_pcon.mpag:=0;
mQtdCli:=0;
while not DM1.Tb_Contato.Eof do
   begin
   if form_impres_pcon.mlin=0 then
      begin
      fpconCabRel(0);
      end;
   mQtdCli:=mQtdCli+1;
   form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
   form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
   form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
   form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,02,insere2(DM1.Tb_Contatodatcon.Value,' ',10)
                           +insere(FormatFloat('##00000', DM1.Tb_ContatoCTCODCLI.Value),' ',07)
                           +'-'+insere2(DM1.Tb_ContatoTMP_NOMCLI.Value,' ',40)
                           +' '+insere2(DM1.Tb_Contatofone.Value,' ',16)
                           +'  '+insere2(DM1.Tb_ContatoTMP_NOMCON.Value,' ',30)
                           +'   '
                           +insere2(DM1.Tb_Contatodtpcont.Value,' ',10),mreduz);

   form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
   form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,02,insere2(DM1.Tb_ContatoCCIDADE.AsString
                                 +'-'+DM1.Tb_ContatoTMP_CUF.AsString,' ',40)
                                 +' E-Mail:'+insere2(DM1.Tb_ContatoCEMAIL.AsString,' ',50)
                                 +' Fone: '+DM1.Tb_ContatoCFONE01.AsString,mreduz);

   if CB_DETCONTATO.Checked then
      begin
      form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
      form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,'Assunto do Contato:',mreduz);
      form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,67,'Assunto a Tratar:',mreduz);
      form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
      Memo1.Lines.Clear;
      Memo1.Text:=trim(DM1.Tb_ContatoCTTEXCON.AsString);
      Memo2.Lines.Clear;
      Memo2.Text:=trim(DM1.Tb_ContatoCTTEXPCON.AsString);
      mqtdlin:=Memo1.Lines.Count;
      if mqtdlin<Memo2.Lines.Count then
         mqtdlin:=Memo2.Lines.Count;
      mqtdlin:=mqtdlin-1;
      for x:=0 to mqtdlin do
         begin
         if (form_impres_pcon.mlin>=60) then
            begin
            form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
            form_impres_pcon.mlin:=0;
            form_impres_pcon.RDprint1.Novapagina;
            fpconCabRel(0);
            end;

         maux1:=''; maux2:='';
         if x<Memo1.Lines.Count then
            maux1:=Memo1.Lines[x];
         if x<Memo2.Lines.Count then
            maux2:=Memo2.Lines[x];
         form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,maux1,mreduz);
         form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,67,maux2,mreduz);
         form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
         end;
      end;
   DM1.Tb_Contato.Next;
   if DM1.Tb_Contato.Eof then
      begin
      form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
      form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
      fImprimirCriterito(132);

      if form_impres_pcon.RDprint1.Setup then
         form_impres_pcon.RDprint1.Fechar;
      form_impres_pcon.free;
      form_impres_pcon:=nil;
      end
   else
      begin
      if (form_impres_pcon.mlin>=60) then
         begin
         form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
         form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
         form_impres_pcon.mlin:=0;
         form_impres_pcon.RDprint1.Novapagina;
         end;
      end;
   end;
//if form_impres_pcon.RDprint1.Setup then
//   form_impres_pcon.RDprint1.Fechar;

result:=true;
end;

procedure TFrm_PCon.SB_REAGENDARClick(Sender: TObject);
begin
bbImprimir.Enabled  :=false;
SB_REAGENDAR.Enabled:=false;
SB_SEMCOMPRA.Enabled:=false;
sbSEmCont.Enabled   :=false;

DM1.Tb_Contato.Close;
DM1.Tb_Contato.SQL.Clear;
DM1.Tb_Contato.SQL.Add('select CTNUMCON,');
DM1.Tb_Contato.SQL.Add('      CTCODVEN, ');
DM1.Tb_Contato.SQL.Add('       CTCODCLI, ');
DM1.Tb_Contato.SQL.Add('       CTDATCON,');
DM1.Tb_Contato.SQL.Add('       CTDTPCON,');
DM1.Tb_Contato.SQL.Add('       CTCODEMP,');
DM1.Tb_Contato.SQL.Add('       CTSTATUS, ');
DM1.Tb_Contato.SQL.Add('       CTTEXCON,');
DM1.Tb_Contato.SQL.Add('       CTTEXPCON,');
DM1.Tb_Contato.SQL.Add('       VNOME   AS TMP_NOMVEN, ');
DM1.Tb_Contato.SQL.Add('       CRAZAO  AS TMP_NOMCLI, ');
DM1.Tb_Contato.SQL.Add('       CNOMCON AS TMP_NOMCON, ');
DM1.Tb_Contato.SQL.Add('       CFONCON AS TMP_FONCON, ');
DM1.Tb_Contato.SQL.Add('       CFONE01 AS TMP_FONECOM, ');
DM1.Tb_Contato.SQL.Add('       CUF      AS TMP_CUF ');
DM1.Tb_Contato.SQL.Add(' ,CFONE01,CCIDADE,CEMAIL');

DM1.Tb_Contato.SQL.Add(' from CONTATO CONT02,CADCLI,CADVEN ');
DM1.Tb_Contato.SQL.Add(' where ');
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CTCODEMP=0'+IntTosTr(codemp)+' and ');


mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' CTCODVEN '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' CTCODCLI '+mcinst2+' and ');

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' CUF '+mcinst2+' and ');

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' CCODLOC '+mcinst2+' and ');

if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=0 and ');
   if CLBStatus.Checked[1] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=1 and ');
   end;
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CCODEMP=CTCODEMP and ');
DM1.Tb_Contato.SQL.Add(' CCODCLI=CTCODCLI');
if not DM1.Qr_TID.locate('TINOME','CADVEN',[]) then
   DM1.Tb_Contato.SQL.Add(' and VCODEMP=CTCODEMP ');
DM1.Tb_Contato.SQL.Add(' and VCODVEN=CTCODVEN ');

mcinst4:='CTDTPCON';
DM1.Tb_Contato.SQL.Add(' and '+mcinst4+'>=(Select max(CTDTPCON) from CONTATO where '
                  +IIF(DM1.Qr_TID.locate('TINOME','CADCLI',[]),''
                  ,' CTCODEMP=CONT02.CTCODEMP and ')
                  +' CTCODCLI=CONT02.CTCODCLI ');
if Trim(CODVEN.Text)<>'' then
   DM1.Tb_Contato.SQL.Add('  and CTCODVEN=CONT02.CTCODVEN ');
if Trim(CODCLI.Text)<>'' then
   DM1.Tb_Contato.SQL.Add(' and CTCODCLI=CONT02.CTCODCLI ');
if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      DM1.Tb_Contato.SQL.Add(' and CTSTATUS=0 ');
   if CLBStatus.Checked[1] then
      DM1.Tb_Contato.SQL.Add(' and CTSTATUS=1 ');
   end;
DM1.Tb_Contato.SQL.Add(' )');
DM1.Tb_Contato.SQL.Add(' and CTDTPCON<='+chr(39)+FormatDatetime(fdt, date)+chr(39));

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CCODLOC '+mcinst2);

if rg_ordem.ItemIndex=0 then
   DM1.Tb_Contato.SQL.Add(' order by CRAZAO,CTCODCLI')
else
   DM1.Tb_Contato.SQL.Add(' order by CTDTPCON,CRAZAO,CTCODCLI');

try
   DM1.Tb_Contato.Open;
except
   DM1.Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;

if CB_GRAFICO.Checked then
   begin
   lbl_empresa.Caption:=DM1.Tb_EmpRAZAO_CAB.Value;
   lbl_obs.Caption    :='Relação dos Contatos a Serem Raeagendados.';
   RLReport1.ShowProgress:=false;
   det_contato.Visible   :=false;

   RLReport1.PreviewModal;
   end
else
   begin
      // Impressão
   mtit:='Relação dos Contatos a Serem Raeagendados.';
   fEmitirRel(0);
   end;
bbImprimir.Enabled    :=true;
sbSEmCont.Enabled     :=true;
SB_REAGENDAR.Enabled  :=true;
SB_SEMCOMPRA.Enabled  :=true;
bbnAplicar.Click;


end;

procedure TFrm_PCon.SB_SEMCOMPRAClick(Sender: TObject);
begin
bbImprimir.Enabled  :=false;
SB_REAGENDAR.Enabled:=false;
SB_SEMCOMPRA.Enabled:=false;
sbSEmCont.Enabled   :=false;

DM1.Tb_Contato.Close;
DM1.Tb_Contato.SQL.Clear;
DM1.Tb_Contato.SQL.Add('select max(CTNUMCON) as CTNUMCON,');

DM1.Tb_Contato.SQL.Add('       CTCODVEN, ');
DM1.Tb_Contato.SQL.Add('       CTCODCLI, ');
DM1.Tb_Contato.SQL.Add('       VNOME   AS TMP_NOMVEN, ');
DM1.Tb_Contato.SQL.Add('       CRAZAO  AS TMP_NOMCLI, ');

DM1.Tb_Contato.SQL.Add('       max(CTDATCON) as CTDATCON,');
DM1.Tb_Contato.SQL.Add('       max(CTDTPCON) as CTDTPCON,');
DM1.Tb_Contato.SQL.Add('       max(CTCODEMP) as CTCODEMP,');
DM1.Tb_Contato.SQL.Add('       max(CTSTATUS) as CTSTATUS, ');
DM1.Tb_Contato.SQL.Add('       max(CTTEXCON) as CTTEXCON,');
DM1.Tb_Contato.SQL.Add('       max(CTTEXPCON) as CTTEXPCON,');
DM1.Tb_Contato.SQL.Add('       max(CNOMCON) AS TMP_NOMCON, ');
DM1.Tb_Contato.SQL.Add('       max(CFONCON) AS TMP_FONCON, ');
DM1.Tb_Contato.SQL.Add('       max(CFONE01) AS TMP_FONECOM, ');
DM1.Tb_Contato.SQL.Add('       max(CUF)      AS TMP_CUF, ');
DM1.Tb_Contato.SQL.Add('       sum(CRVALOR) as VALORCOMPRA ');

DM1.Tb_Contato.SQL.Add(' ,CFONE01,CCIDADE,CEMAIL');

DM1.Tb_Contato.SQL.Add(' from CONTATO CONT02,CADCLI,CADVEN,CADDAR ');
DM1.Tb_Contato.SQL.Add(' where ');
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CTCODEMP=0'+IntTosTr(codemp)+' and ');
if Trim(CODVEN.Text)<>'' then
   DM1.Tb_Contato.SQL.Add('  CTCODVEN=0'+Trim(CODVEN.Text)+' and ');
if Trim(CODCLI.Text)<>'' then
   DM1.Tb_Contato.SQL.Add(' CTCODCLI=0'+Trim(CODCLI.Text)+' and ');

if not CLBStatus.Checked[2] then
   begin
   if CLBStatus.Checked[0] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=0 and ');
   if CLBStatus.Checked[1] then
      DM1.Tb_Contato.SQL.Add(' CTSTATUS=1 and ');
   end;
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   DM1.Tb_Contato.SQL.Add(' CCODEMP=CTCODEMP and ');
DM1.Tb_Contato.SQL.Add(' CCODCLI=CTCODCLI');
if not DM1.Qr_TID.locate('TINOME','CADVEN',[]) then
   DM1.Tb_Contato.SQL.Add(' and VCODEMP=CTCODEMP ');
DM1.Tb_Contato.SQL.Add(' and VCODVEN=CTCODVEN ');
if CB_DTPCONT.Checked then
   mcinst4:='CTDTPCON'
else
   mcinst4:='CTDATCON';
if Trim(MDT1.Text)<>'/  /' then
   DM1.Tb_Contato.SQL.Add(' and '+mcinst4+'>='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Tb_Contato.SQL.Add(' and '+mcinst4+'<='+chr(39)+FormatDatetime(fdt, StrToDAte(MDT2.Text))+chr(39));

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmpJoin('CRCODEMP');
if trim(la_Empresas)<>'' then
   DM1.Tb_Contato.SQL.Add(' and '+la_Empresas);
DM1.Tb_Contato.SQL.Add(' and CRCODCLI(+)=CTCODCLI ');


mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CTCODCLI '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then DM1.Tb_Contato.sql.Add(' and CCODLOC '+mcinst2);


DM1.Tb_Contato.SQL.Add(' Group by   CTCODVEN, ');
DM1.Tb_Contato.SQL.Add('       CTCODCLI, ');
DM1.Tb_Contato.SQL.Add('       VNOME, ');
DM1.Tb_Contato.SQL.Add('       CRAZAO, ');
DM1.Tb_Contato.SQL.Add('       CFONE01, ');
DM1.Tb_Contato.SQL.Add('       CCIDADE, ');
DM1.Tb_Contato.SQL.Add('       CEMAIL ');


DM1.Tb_Contato.SQL.Add(' HAVING sum(DECODE(CRVALOR,null,0,CRVALOR))<=0');

if rg_ordem.ItemIndex=0 then
   DM1.Tb_Contato.SQL.Add(' order by CRAZAO,CTCODCLI')
else
   DM1.Tb_Contato.SQL.Add(' order by CTDTPCON,CRAZAO,CTCODCLI');


try
   DM1.Tb_Contato.Open;
except
   DM1.Tb_Contato.sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;

if CB_GRAFICO.Checked then
   begin
   lbl_empresa.Caption:=DM1.Tb_EmpRAZAO_CAB.Value;
   lbl_obs.Caption    :='Relação de Clientes Sem Compras.'+fperiodo(0,MDT1.Text,MDT2.Text);
   RLReport1.ShowProgress:=false;
   det_contato.Visible   :=false;

   RLReport1.PreviewModal;
   end
else
   begin
   if dm1.Tb_Contato.Eof then
      fMensagem('Não Ha Registro a ser listado!',0,['0'],0)
   else
      begin
      // Impressão
      mtit:='Relação de Clientes Sem Compras.'+fperiodo(0,MDT1.Text,MDT2.Text);
      fEmitirRel(0);
      end;
   end;
bbImprimir.Enabled    :=true;
sbSEmCont.Enabled     :=true;
SB_REAGENDAR.Enabled  :=true;
SB_SEMCOMPRA.Enabled  :=true;
bbnAplicar.Click;

end;

procedure TFrm_PCon.CB_PCONTExit(Sender: TObject);
begin
fDeletaPadroes(codusr,'_PCON','');
fGravaPadroes(codusr,'CB_PCONT'   ,'checked'   ,'_PCON',iif(CB_PCONT.Checked,'true','false'));
fGravaPadroes(codusr,'CB_DATCON'  ,'checked'   ,'_PCON',iif(CB_PCONT.Checked,'true','false'));

end;

procedure TFrm_PCon.dtpcontExit(Sender: TObject);
begin
if (CB_PCONT.Checked) and (TEXTPCON.Focused) then
   bbgravar.SetFocus;

end;

procedure TFrm_PCon.bbSitCreClick(Sender: TObject);
begin
if Tb_ContatoCTCODCLI.AsFloat<>0 then
   begin
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);
   Frm_SitCre.CODCLI.Text:=Tb_ContatoCTCODCLI.AsString;
   Frm_Sitcre.BBAPLICAR.Click;
   Frm_SitCre.ShowModal;
   Frm_SitCre.Free;
   end;

end;

procedure TFrm_PCon.DBCb_StatusClick(Sender: TObject);
begin
if DBCb_Status.Checked then
   bbAgendar.Enabled:=true
else
   bbAgendar.Enabled:=false;

end;

procedure TFrm_PCon.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
      begin
      fmensagem('Cidade não cadastrado!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_PCon.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;

end;

procedure TFrm_PCon.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_PCon.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_PCon.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_PCon.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_PCon.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_PCon.CODUFExit(Sender: TObject);
begin
//CODUF.Text:=fdeixanum2(CODUF.Text);
if Trim(CODUF.Text)<>'' then
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
      begin
      fmensagem('Estado não cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;

end;

procedure TFrm_PCon.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   mcinst2:=fChamaUF(0,'frm_cabc','');
   if trim(mcinst2)<>'' then
      begin
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      CODUFExit(self);
      coduf.SetFocus;
      end;
   end;

end;


function TFrm_Pcon.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
fTestaCab(0);
form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',132),mreduz);
form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
fTestaCab(0);
form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',132),mreduz);
if lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codcli.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_coduf.Count>0 then
   FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);
if lbx_codloc.Count>0 then
   FImprimeTitulo('Cidade',lbx_coduf,OMITIR_UF);
form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',132),mreduz);
form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
result:=true;
end;


function tFrm_PCon.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_pcon.mlin:=form_impres_pcon.mlin+1;
      fTestaCab(0);
      form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',132),mneg);
      end;
   end;
result:=true;

end;


function TFrm_Pcon.fTestaCab(pTipo: Integer): Boolean;
begin
if form_impres_pcon.mlin>57 then
   begin
   form_impres_pcon.RDprint1.ImpF(form_impres_pcon.mlin,01,Insere2('-','-',132),mreduz);
   form_impres_pcon.mlin:=0;
   form_impres_pcon.RDprint1.Novapagina;
   fpconCabRel(0);
   form_impres_pcon.mlin:=4;
   end;
result:=true;
end;


procedure TFrm_PCon.edt_codbaiExit(Sender: TObject);
begin
edt_codbai.Text:=fdeixanum2(edt_codbai.Text);
if Trim(edt_codbai.Text)<>'' then
   begin
   if not flqr1('BNOME','B','CADBAI','N','BCODBAI',Trim(edt_codbai.Text)) then
      begin
      fmensagem('Bairro não cadastrado!',0,['0'],0);
      edt_codbai.SetFocus;
      end
   else
      begin
      lbx_codbai.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbai.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codbai.text := '';
      edt_codbai.SetFocus;
      end;
   end;

end;

procedure TFrm_PCon.edt_codbaiKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbai.Text:=fChamaBai(0,'frm_MedCli',Key);
   if trim(edt_codbai.Text)<>'' then
      edt_codbaiExit(self);
   key:=#0;
   end;

end;

procedure TFrm_PCon.lbx_codbaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codbai.ItemIndex>=0 then
      lbx_codbai.Items.Delete(lbx_codbai.ItemIndex);

end;

procedure TFrm_PCon.edt_codregExit(Sender: TObject);
begin
edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codreg.text := '';
      end
   else
      begin
      verteclado(1);
      fmensagem('Região não Cadastrado!',0,['0'],0);
      end;
   edt_codreg.SetFocus;
   end;


end;

procedure TFrm_PCon.edt_codregKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
  begin
  edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_cli',key));
  edt_codregExit(Self);
  end;

end;

procedure TFrm_PCon.lbx_codregKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codreg.ItemIndex>=0 then
      lbx_codreg.Items.Delete(lbx_codreg.ItemIndex);

end;

end.
