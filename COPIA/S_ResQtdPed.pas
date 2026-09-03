unit S_ResQtdPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB,
  DBTables,S_DM1,func,lerarq, ComCtrls,func2,S_Tra,S_InfPed,S_Ven,S_For,S_GPro,
  RLReport, RLPDFFilter, RLXLSFilter, RLHTMLFilter, RLFilters,
  RLRichFilter, RLDraftFilter, S_SelEmp,s_lerarq_geral;

type
  TFrm_ResQtdPed = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    Tb_Ped: TQuery;
    Tb_PedP1CODEMP: TFloatField;
    Tb_PedP1CHAVE: TFloatField;
    Tb_PedP1ORDEM: TFloatField;
    Tb_PedP1DATAP: TDateTimeField;
    Tb_PedP1TIPO: TFloatField;
    Tb_PedP1DATDOC: TDateTimeField;
    Tb_PedP1CODCLI: TFloatField;
    Tb_PedP1CODVEN: TFloatField;
    Tb_PedP1ORIGEM: TFloatField;
    Tb_PedP1CODTRA: TFloatField;
    Tb_PedP1DATANF: TDateTimeField;
    Tb_PedP1NUMNF: TFloatField;
    Tb_PedP1STATUS: TFloatField;
    Tb_PedP1TOTALB: TFloatField;
    Tb_PedP1TOTALL: TFloatField;
    Tb_PedP1CODUSR: TFloatField;
    Tb_PedP1HORADIG: TStringField;
    Tb_PedP1DTMOD: TDateTimeField;
    Tb_PedP1HRMOD: TStringField;
    Tb_PedP1USRMOD: TFloatField;
    Tb_PedP1CONF: TStringField;
    Tb_PedP1CODCON: TFloatField;
    Tb_PedP1DATCON: TDateTimeField;
    Tb_PedP1HORCON: TStringField;
    Tb_PedP1EMIDOC: TFloatField;
    Tb_PedP1TIPENT: TFloatField;
    Tb_PedP1PREVENT: TDateTimeField;
    Tb_PedP1HPREVENT: TStringField;
    Tb_PedP1CODENT: TFloatField;
    Tb_PedP1DATENT: TDateTimeField;
    Tb_PedP1HORENT: TStringField;
    Tb_PedP1CUPOM: TFloatField;
    Tb_PedP1TOTDES: TFloatField;
    Tb_PedP1QTDVOL: TFloatField;
    Tb_PedP1PESOL: TFloatField;
    Tb_PedP1PESOB: TFloatField;
    Tb_PedP1BANCO: TFloatField;
    Tb_PedP1CODTLV: TFloatField;
    Tb_PedP1ETIVOL: TFloatField;
    Tb_PedP1NUMCF: TFloatField;
    Tb_PedP1CODECF: TFloatField;
    Tb_PedP1DATACF: TDateTimeField;
    Tb_PedP1CODSEP: TFloatField;
    Tb_PedP1DATASEP: TDateTimeField;
    Tb_PedP1HORSEP: TStringField;
    Tb_PedP1CODEMB: TFloatField;
    Tb_PedP1DATAEMB: TDateTimeField;
    Tb_PedP1HOREMB: TStringField;
    Tb_PedP1ACRECONV: TFloatField;
    Tb_PedP1ACREGER: TFloatField;
    Tb_PedP1PACRECONV: TFloatField;
    Tb_PedP1PACREGER: TFloatField;
    Tb_PedCRAZAO: TStringField;
    Tb_PedP1ESPECIE: TStringField;
    Tb_PedP1MINUTA: TFloatField;
    Tb_Pednomdig: TStringField;
    Tb_Pednomalt: TStringField;
    Tb_Pednomsep: TStringField;
    Tb_Pednomcon: TStringField;
    Tb_Pednomemb: TStringField;
    Tb_Peddatalt: TStringField;
    Tb_Peddatsep: TStringField;
    Tb_Peddatcon: TStringField;
    Tb_Peddatemb: TStringField;
    Tb_Pednomtra: TStringField;
    Tb_Peddatanf: TStringField;
    Tb_Peddatacf: TStringField;
    Tb_Pedemitiuls: TIntegerField;
    Tb_Peddatpent: TStringField;
    Tb_Peddatent: TStringField;
    Tb_Pedtipo: TStringField;
    Tb_Peddatdoc: TStringField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Tb_Pednomven: TStringField;
    Tb_PedP1FORMACE: TFloatField;
    Tb_PedP1LOTSEQ: TFloatField;
    Tb_Pedvalpag: TFloatField;
    Tb_Peddesc: TFloatField;
    Tb_Pedjuros: TFloatField;
    Tb_Pedapagar: TFloatField;
    PageControl2: TPageControl;
    ts_filtros: TTabSheet;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    RG_FILTRO: TRadioGroup;
    ts_outros: TTabSheet;
    chavedopedido: TLabel;
    edt_chave: TEdit;
    Label35: TLabel;
    PROCESSO: TEdit;
    Label34: TLabel;
    OBS1: TEdit;
    Panel1: TPanel;
    bbAtualizar: TBitBtn;
    lbl_lotseq: TLabel;
    MLOTSEQ: TEdit;
    obs_lotseq: TLabel;
    U_Ped: TUpdateSQL;
    Tb_PedOK: TStringField;
    RG_SEMCOMP: TRadioGroup;
    bbPadrao: TBitBtn;
    Label36: TLabel;
    NUMNF: TEdit;
    Label37: TLabel;
    NUMCF: TEdit;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label4: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label14: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label39: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label40: TLabel;
    TipoPed: TEdit;
    sgTipoPed: TSpeedButton;
    NomTipoPed: TEdit;
    sbMarcar: TSpeedButton;
    sbDesmarcar: TSpeedButton;
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    RLBand3: TRLBand;
    lbl_codigo: TRLLabel;
    lbl_Grade: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_und: TRLLabel;
    lbl_quantidade: TRLLabel;
    RLBand4: TRLBand;
    db_codigo: TRLDBText;
    db_grade: TRLDBText;
    db_descricao: TRLDBText;
    db_und: TRLDBText;
    db_qtd: TRLDBText;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    lbl_total: TRLLabel;
    RLBand6: TRLBand;
    lbl_rodape: TRLLabel;
    cb_agrupar: TComboBox;
    Label5: TLabel;
    CB_SEMBORDA: TCheckBox;
    rl_traco: TRLBand;
    RLLabel4: TRLLabel;
    CB_TRACO: TCheckBox;
    GB_CONFIGMASTER: TGroupBox;
    CB_COLEST: TCheckBox;
    Label6: TLabel;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    Label38: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    lbx_chave: TListBox;
    OMITIR_CHAVE: TCheckBox;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_PedCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MLOTSEQExit(Sender: TObject);
    procedure edt_chaveKeyPress(Sender: TObject; var Key: Char);
    procedure ORDEMExit(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure NUMCFExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure TipoPedExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure sgTipoPedClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbPadraoClick(Sender: TObject);
    procedure sbMarcarClick(Sender: TObject);
    procedure sbDesmarcarClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure CB_TRACOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTLVExit(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure lbx_chaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_chaveExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ResQtdPed: TFrm_ResQtdPed;
  mMarcaDesm: String='P';
  mTabTemp: String;
  mTotGrupo:Real =0;
implementation

uses S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_ResQtdPed.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_ResQtdPed.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_ResQtdPed.bbAtualizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data Final Maior que Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

Tb_ped.close;
Tb_ped.SQL.Clear;
Tb_Ped.SQL.add('Select '+chr(39)+mMarcaDesm+chr(39)+' AS OK,P1CODEMP,'
              +'           P1CHAVE,P1LOTSEQ,P1ORDEM,P1DATAP, '
              +'           P1DATDOC,P1CODCLI, '
              +'           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF, '
//              +'           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,(P1TOTALL) AS P1TOTALL, '
              +'           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,(P1TOTALL+P1ICMSR) AS P1TOTALL, '
              +'            P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD, '
              +'            P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC, '
              +'            P1TIPENT,P1PREVENT,P1HPREVENT, '
              +'            P1CODENT,P1DATENT,P1HORENT, '
              +'            P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB, '
              +'            P1BANCO,P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF, '
              +'            P1CODSEP,P1DATASEP,P1HORSEP, '
              +'            P1CODEMB,P1DATAEMB,P1HOREMB, '
              +'            P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER, P1ESPECIE,P1MINUTA,'
              +'            P1FORMACE,P1OBS1,P1OBS2,P1OBS3, '
              +'            CRAZAO from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join );
mcinst:=' where ';
if trim(la_Empresas)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+la_Empresas);
   mcinst:=' and ';
   end;
if Trim(MLOTSEQ.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1LOTSEQ=0'+Trim(MLOTSEQ.Text));
   mcinst:=' and ';
   end;
if Trim(CODTLV.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODTLV=0'+Trim(CODTLV.Text));
   mcinst:=' and ';
   end;


   mcinst2:=fItensListBox(0,lbx_chave,OMITIR_CHAVE);
   if trim(mcinst2)<>'' then Tb_Ped.SQL.add(mcinst+ ' P1CHAVE '+mcinst2);


if Trim(MDT1.Text)<>'/  /' then
   begin
   Tb_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Tb_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   mcinst:=' and ';
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODCLI=0'+Trim(codcli.Text));
   mcinst:=' and ';
   end;
if Trim(NUMNF.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NUMNF=0'+Trim(NUMNF.Text));
   mcinst:= ' and ';
   end;
if Trim(NUMCF.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NUMCF=0'+Trim(NUMCF.Text));
   mcinst:=' and ';
   end;
if Trim(CODTRA.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODTRA=0'+Trim(CODTRA.Text));
   mcinst:=' and ';
   end;
if Trim(CODVEN.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODVEN=0'+Trim(CODVEN.Text));
   mcinst:=' and ';
   end;

if RG_FILTRO.ItemIndex<>2 then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1EMIDOC=0'+IntToStr(RG_FILTRO.ItemIndex));
   mcinst:=' and ';
   end;

if RG_SEMCOMP.ItemIndex<>2 then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1SEMCOMP='+QuotedStr(IntToStr(RG_SEMCOMP.ItemIndex)));
   mcinst:=' and ';
   end;
if Trim(OBS1.Text)<>'' then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1OBS1 like '+chr(39)+OBS1.Text+'%'+chr(39));
   mcinst:=' and ';
   end;
if Trim(PROCESSO.Text)<>'' then
   begin
   Tb_Ped.SQl.add(mcinst+' P1PROCESSO like '+chr(39)+Trim(PROCESSO.Text)+'%'+chr(39));
   mcinst:=' and ';
   end;
if trim(TipoPed.text) <> '' then
   begin
   Tb_Ped.Sql.add(mcinst+' P1TIPO = '+TipoPed.Text);
   mcinst:=' and ';
   end;
Tb_Ped.SQL.Add(mcinst+' P1STATUS<'+mstatus_excluido+'');
if trim(la_instrucao)<>'' then
   Tb_Ped.SQL.Add(' and '+la_instrucao);

Tb_Ped.sql.Add('Order by P1DATAP,P1CHAVE,P1ORDEM');
//Tb_Ped.sql.Add('Order by P1DATAP,P1CHAVE,P1ORDEM');
Tb_Ped.Open;




end;

procedure TFrm_ResQtdPed.FormCreate(Sender: TObject);
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if (pconsemp) and (codemp>100) then
   flcadpar01(0,codemp-100,'1')
else
   flcadpar01(0,codemp,'1');

if DM1.Tb_PargerPLS_NUMPED.Value=1 then
   begin
   obs_lotseq.Visible:=True;
   lbl_lotseq.Visible:=True;
   MLOTSEQ.Visible   :=True;
   end;
MLOTSEQ.Text:=IntToStr(ls_numped);

Tb_PedP1DATAP.DisplayFormat     :=fdt2;
Tb_PedP1TOTALB.DisplayFormat    :=mcasas;
Tb_PedP1TOTALL.DisplayFormat    :=mcasas;
Tb_PedP1TOTDES.DisplayFormat    :=mcasas;
Tb_Pedvalpag.DisplayFormat      :=mcasas;
Tb_Pedjuros.DisplayFormat       :=mcasas;
Tb_Peddesc.DisplayFormat        :=mcasas;
Tb_Pedapagar.DisplayFormat      :=mcasas;

DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESQTDPED','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESQTDPED','RG_SEMCOMP']),[]) then
   RG_SEMCOMP.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESQTDPED','CB_SEMBORDA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SEMBORDA.Checked:=true
   else
      CB_SEMBORDA.Checked:=false;
   end
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESQTDPED','CB_TRACO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_TRACO.Checked:=true
   else
      CB_TRACO.Checked:=false;
   end
else
   CB_TRACO.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESQTDPED','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

DM4.Qr_Ped02Ped01QTD.DisplayFormat:=mcasqtd;
if ValInt(copy(mpseg,4,2))<>2 then
   begin
   lbl_Grade.Visible:=false;
   db_grade.Visible :=false;
   lbl_codigo.Width :=lbl_codigo.Width+lbl_Grade.Width;
   end;

MDT1.Text:=FormatDateTime(fdt2, Date);
MDT2.Text:=FormatDateTime(fdt2, Date);

end;

procedure TFrm_ResQtdPed.Tb_PedCalcFields(DataSet: TDataSet);
begin
if Tb_PedP1CODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODUSR.AsString) then
      Tb_Pednomdig.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_PedP1USRMOD.Value>0 then
   begin
   Tb_Peddatalt.Value:=FormatDateTime(fdt2, Tb_PedP1DTMOD.Value);
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1USRMOD.AsString) then
      Tb_Pednomdig.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_Peddatalt.Value:='Não Alterado';


if Tb_PedP1CODSEP.Value>0 then
   begin
   Tb_Peddatsep.Value:=FormatDateTime(fdt2, Tb_PedP1DATASEP.Value);
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODSEP.AsString) then
      Tb_Pednomsep.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_Peddatsep.Value:='Não Definido';

if Tb_PedP1CODCON.Value>0 then
   begin
   Tb_Peddatcon.Value:=FormatDateTime(fdt2, Tb_PedP1DATCON.Value);
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODCON.AsString) then
      Tb_Pednomcon.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_Peddatcon.Value:='Não Definido';

if Tb_PedP1CODEMB.Value>0 then
   begin
   Tb_Peddatemb.Value:=FormatDateTime(fdt2, Tb_PedP1DATAEMB.Value);
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODEMB.AsString) then
      Tb_Pednomemb.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_Peddatemb.Value:='Não Definido';
if Tb_PedP1CODTRA.Value>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Tb_PedP1CODTRA.AsString) then
      Tb_Pednomtra.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_PedP1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_PedP1CODVEN.AsString) then
      Tb_Pednomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATANF.IsNull) or (Tb_PedP1DATANF.Value<=pdatanula) then
   Tb_Peddatanf.Value:='Não Emitiu'
else
   Tb_Peddatanf.Value:=FormatDateTime(fdt2, Tb_PedP1DATANF.Value);

if (Tb_PedP1DATDOC.IsNull) or (Tb_PedP1DATDOC.Value<=pdatanula) then
   Tb_Peddatdoc.Value:='Não Emitiu'
else
   Tb_Peddatdoc.Value:=FormatDateTime(fdt2, Tb_PedP1DATDOC.Value);

if (Tb_PedP1DATACF.IsNull) or (Tb_PedP1DATACF.Value<=pdatanula) then
   Tb_Peddatacf.Value:='Não Emitiu'
else
   Tb_Peddatacf.Value:=FormatDateTime(fdt2, Tb_PedP1DATACF.Value);

if (Tb_PedP1PREVENT.IsNull) or (Tb_PedP1PREVENT.Value<=pdatanula) then
   Tb_Peddatpent.Value:='Não Definida'
else
   Tb_Peddatpent.Value:=FormatDateTime(fdt2, Tb_PedP1PREVENT.Value);

if (Tb_PedP1DATENT.IsNull) or (Tb_PedP1DATENT.Value<=pdatanula) then
   Tb_Peddatent.Value:='Não Definida'
else
   Tb_Peddatent.Value:=FormatDateTime(fdt2, Tb_PedP1DATENT.Value);

if Tb_PedP1STATUS.Value>0 then
   Tb_Pedemitiuls.Value:=1
else
   Tb_Pedemitiuls.Value:=0;
if Tb_PedP1TIPO.Value=0 then
   begin
   Tb_Pedvalpag.Value:=0;
   Tb_Peddesc.Value  :=0;
   Tb_Pedjuros.Value :=0;
   Tb_Pedapagar.Value:=0;

   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select sum(CRVALPAG),sum(CRDESC),sum(CRJUROS) from CADDAR '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                     +' CRLOTSEQ_CP=0'+Tb_PedP1LOTSEQ.AsString
                     +' and CRNPED=0'+Tb_PedP1CHAVE.AsString
                     +' and CRORDEM=0'+Tb_PedP1ORDEM.AsString);
   DM1.Query1.Open;
   Tb_Pedvalpag.Value:=DM1.Query1.Fields[0].AsFloat;
   Tb_Peddesc.Value  :=DM1.Query1.Fields[1].AsFloat;
   Tb_Pedjuros.Value :=DM1.Query1.Fields[2].AsFloat;
   Tb_Pedapagar.Value:=Tb_PedP1TOTALL.Value-(Tb_Pedvalpag.Value-Tb_Pedjuros.Value+Tb_Peddesc.Value);
   end;

Tb_Pedtipo.Value:=tab_tped[Tb_PedP1TIPO.AsInteger];
end;

procedure TFrm_ResQtdPed.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Tb_PedP1EMIDOC.Value=0 then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if Tb_PedOK.Value<>'' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
//         DBGrid1.Canvas.Font.Color  := clInfoBk;
{     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

   DBGrid1.Color. Canvas. Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
}   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_ResQtdPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ResQtdPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ResQtdPed',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ResQtdPed.CODCLIExit(Sender: TObject);
begin
codcli.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text:='';
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
end;

procedure TFrm_ResQtdPed.OBS1Exit(Sender: TObject);
begin
OBS1.Text:=fRetAspas(OBS1.Text);

end;

procedure TFrm_ResQtdPed.DBGrid1DblClick(Sender: TObject);
begin
Tb_Ped.Edit;
if trim(Tb_PedOK.AsString)='' then
   Tb_PedOK.Value:='P'
else
   Tb_PedOK.Value:='';
Tb_Ped.Post;
end;

procedure TFrm_ResQtdPed.MLOTSEQExit(Sender: TObject);
begin
MLOTSEQ.Text:=fdeixanum2(MLOTSEQ.Text);

end;

procedure TFrm_ResQtdPed.edt_chaveKeyPress(Sender: TObject; var Key: Char);
begin
edt_CHAVE.Text:=fdeixanum2(edt_CHAVE.Text);

end;

procedure TFrm_ResQtdPed.ORDEMExit(Sender: TObject);
begin
//ORDEM.Text:=fdeixanum2(ORDEM.Text);

end;

procedure TFrm_ResQtdPed.NUMNFExit(Sender: TObject);
begin
NUMNF.Text:=fdeixanum2(NUMNF.Text);

end;

procedure TFrm_ResQtdPed.NUMCFExit(Sender: TObject);
begin
NUMCF.Text:=fdeixanum2(NUMCF.Text);

end;

procedure TFrm_ResQtdPed.CODTRAExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)='' then
   NOMTRA.text:='Todos...'
else
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fMensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;


end;

procedure TFrm_ResQtdPed.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_ResQtdPed',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ResQtdPed.TipoPedExit(Sender: TObject);
begin
if Trim(TipoPed.Text)<>'' then
   begin
   TipoPed.Text:=fdeixanum2(TipoPed.Text);
   if valint(TipoPed.Text)>high(tab_tped) then
      begin
      fMensagem('Tipo Inexistente!',0,['0'],0);
      TipoPed.SetFocus;
      end
   else
      NomTipoPed.Text := tab_tped[valint(TipoPed.Text)];
   end
else
   NomTipoPed.Text:='Todos...';

end;

procedure TFrm_ResQtdPed.CODVENExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if trim(CODVEN.Text)='' then
   NOMVEN.text:='Todos...'
else
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_ResQtdPed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_ResQtdPed',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ResQtdPed.sgTipoPedClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_InfPed, Frm_InfPed);
  Frm_InfPed.ShowModal;
  TipoPed.Text    := copy(frm_infped.STG1.Cells[0,frm_infped.STG1.Row],1,2);
  NomTipoPed.Text := copy(frm_infped.STG1.cells[0,frm_infped.STG1.Row],3,40);
  Frm_InfPed.Free;

end;

procedure TFrm_ResQtdPed.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      fMensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_ResQtdPed.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fMensagem('Grupo não cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGRU.text := '';
      CODGRU.SetFocus;
      end;
   end;


end;

procedure TFrm_ResQtdPed.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_ResQtdPed',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ResQtdPed.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_ResQtdPed',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ResQtdPed.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ResQtdPed.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ResQtdPed.bbPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_RESQTDPED','');
fGravaPadroes(codusr,'RG_FILTRO'     ,'itemindex' ,'_RESQTDPED',IntTostr(RG_FILTRO.ItemIndex));
fGravaPadroes(codusr,'RG_SEMCOMP'    ,'itemindex' ,'_RESQTDPED',IntTostr(RG_SEMCOMP.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_RESQTDPED',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_RESQTDPED',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_TRACO'      ,'checked'   ,'_RESQTDPED',iif(CB_TRACO.Checked,'true','false'));

end;

procedure TFrm_ResQtdPed.sbMarcarClick(Sender: TObject);
begin
mMarcaDesm:='P';
bbAtualizar.Click;
end;

procedure TFrm_ResQtdPed.sbDesmarcarClick(Sender: TObject);
begin
mMarcaDesm:=' ';
bbAtualizar.Click;

end;

procedure TFrm_ResQtdPed.CODPROExit(Sender: TObject);
begin
if (DM1.Tb_PargerPPCOGRA.Value=1) then
    begin
    if (Length(CODPRO.Text)>9) then
        begin
        CODPRO.Text:=copy(CODPRO.Text,1,4);
        end;
     end;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      fMensagem('Produto não cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODPRO.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_ResQtdPed.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro','');
   key:=0;
   end;

end;

procedure TFrm_ResQtdPed.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro',key);
      key:=#0;
      end;
   end;

end;

procedure TFrm_ResQtdPed.bbImprimirClick(Sender: TObject);
var
mQtdsel: Integer;
mQtdReg: Integer;
mParcial: boolean;
mCampoGru: String;
begin
if not Tb_Ped.Active then
   begin
   fMensagem('Favor dar um click em Atualizar as Informações!',0,['0'],0);
   exit;
   end;
bbImprimir.Enabled:=false;

mQtdSel:=0;
mQtdReg:=0;
Tb_Ped.First;
While not Tb_ped.Eof do
   begin
   if trim(Tb_PedOK.AsString)<>'' then
      mqtdsel:=mqtdsel+1;
   mQtdReg:=mQtdReg+1;
   Tb_Ped.Next;
   end;
if mQtdsel<=0 then
   begin
   fMensagem('Não Ha Registros Selecionado para Impressão!',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;
if mqtdreg=mQtdsel then
   mParcial:=false
else
   mParcial:=true;


mtabtemp:='';
mtabtemp:=fProcTemp(0);
DM1.query1.Close;
DM1.query1.Sql.Clear;
DM1.Query1.SQL.add('Create Table '+mTabTemp+'(');
DM1.Query1.SQL.add(' TMP_CODEMP '+pcFloat);
DM1.Query1.SQL.add(',TMP_LOTSEQ '+pcFloat);
DM1.Query1.SQL.add(',TMP_CHAVE  '+pcFloat);
DM1.Query1.SQL.add(',TMP_ORDEM  '+pcFloat);
DM1.Query1.SQL.add(')');

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fMensagem('Erro ao Criar tabela temporaria!',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;

Tb_Ped.First;
While not Tb_ped.Eof do
   begin
   if trim(Tb_PedOK.AsString)<>'' then
      begin
      DM1.Query1.close;
      DM1.Query1.sql.Clear;
      DM1.query1.SQL.add('Insert into '+mTabTemp+' (');
      DM1.Query1.SQL.add(' TMP_CODEMP ');
      DM1.Query1.SQL.add(',TMP_LOTSEQ ');
      DM1.Query1.SQL.add(',TMP_CHAVE  ');
      DM1.Query1.SQL.add(',TMP_ORDEM  ');
      DM1.Query1.SQL.add(' ) Values (');
      DM1.Query1.SQL.add(Tb_PedP1CODEMP.AsString);
      DM1.Query1.SQL.add(','+Tb_PedP1LOTSEQ.AsString);
      DM1.Query1.SQL.add(','+Tb_PedP1CHAVE.AsString);
      DM1.Query1.SQL.add(','+Tb_PedP1ORDEM.AsString);
      DM1.Query1.SQL.add(')');
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

         fMensagem('Erro ao Criar tabela temporaria!',0,['0'],0);
         bbImprimir.Enabled:=true;
         exit;
         end;
      end;
   Tb_Ped.Next;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_empresas:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');
la_instrucao:=la_instrucao+' and ';

fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');


DM4.Qr_Ped02Ped01.Close;
DM4.Qr_Ped02Ped01.SQL.clear;
if cb_agrupar.ItemIndex=0 then
   mCampoGru:='PDNOMCON'
else if cb_agrupar.ItemIndex=1 then
   mCampoGru:='PDNOMFOR'
else if cb_agrupar.ItemIndex=2 then
   mCampoGru:='PDNOMGRU'
else if cb_agrupar.ItemIndex=3 then
   mCampoGru:='PDNOMRAM'
else if cb_agrupar.ItemIndex=5 then
   mCampoGru:='PDNOMTIP'
else
   mCampoGru:=insere2(' ',' ',30);
DM4.Qr_Ped02Ped01.SQL.Add('Select ');
if trim(mCampoGru)='' then
   DM4.Qr_Ped02Ped01.SQL.Add(chr(39)+mCampoGru+chr(39)+' as GRUPO ')
else
   DM4.Qr_Ped02Ped01.SQL.Add(mCampoGru+' as GRUPO ');
DM4.Qr_Ped02Ped01.SQL.Add(',PDNOME,PDMARCA,PDUND,P2CODPRO,');
if ValInt(copy(mpseg,4,2))=2 then
   DM4.Qr_Ped02Ped01.SQL.Add('P2LOTE ')
else
   DM4.Qr_Ped02Ped01.SQL.Add('max(P2LOTE) AS P2LOTE ');

mcinst4:='SUM( CASE WHEN (P1FORMACE<>1) or (P1FORMACE=1 and P1SUBMOD='+quotedstr('SSS')+') or (P1FORMACE=1 and P1CODEMP<100) '
        +' THEN P2QTD ELSE 0 END) ';




//mcinst4:=fGerarInstrucaoQtd(2,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
//      mcinst4:='SUM('+fGerarCondicaoQtd('P2QTD',Form_SelEmp.CLB_EMPRESAS)+')';

//mcinst4:=fGerarInstrucaoQtd(0,'P2QTD');

//mcinst4:=' sum(P2QTD) ';

DM4.Qr_Ped02Ped01.SQL.Add(','+mcinst4+' AS QTD '
                         +' FROM '+mTabTemp+', CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P2LOTSEQ=TMP_LOTSEQ '
                                +' and P2CHAVE=TMP_CHAVE '
                                +' and P2ORDEM=TMP_ORDEM '
                                +' and P2CODEMP=TMP_CODEMP ');
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM4.Qr_Ped02Ped01.SQL.Add(' and P2CODPRO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM4.Qr_Ped02Ped01.SQL.Add(' and PDCODFOR '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   DM4.Qr_Ped02Ped01.SQL.Add(' and PDCODGRU '+mcinst2);
if Trim(mCampoGru)<>'' then
  DM4.Qr_Ped02Ped01.SQL.Add(' Group by '+mCampoGru+',')
else
   DM4.Qr_Ped02Ped01.SQL.Add(' Group by ');
DM4.Qr_Ped02Ped01.SQL.Add(' PDNOME,PDMARCA,PDUND,P2CODPRO');

if Trim(mCampoGru)<>'' then
  DM4.Qr_Ped02Ped01.SQL.Add(' Order by '+mCampoGru+',')
else
   DM4.Qr_Ped02Ped01.SQL.Add(' Order by ');
DM4.Qr_Ped02Ped01.SQL.Add(' PDNOME,PDMARCA,PDUND,P2CODPRO');




if ValInt(copy(mpseg,4,2))=2 then
   DM4.Qr_Ped02Ped01.SQL.Add(',P2LOTE ');
// DM4.Qr_Ped02Ped01.SQL.SaveToFile('c:\sqlTT.txt');

try
   DM4.Qr_Ped02Ped01.Open;
except ON E: Exception do
   begin
    ex_erroSql_Novo(DM4.Qr_Ped02Ped01,1164,'_stru '+e.message,'user');
   end;
   end;
mTotGrupo:=0;
lbl_periodo.Caption:=fperiodo(0,MDT1.text,MDT2.text);
lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';


RLReport1.PreviewModal;
dm4.Qr_Ped02Ped01.Close;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('drop table '+mTabTemp);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fMensagem('Erro ao excluir tabela temporaria!',0,['0'],0);
   end;
bbImprimir.Enabled:=true;

end;

procedure TFrm_ResQtdPed.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotGrupo:=mTotGrupo+DM4.Qr_Ped02Ped01QTD.Value;
end;

procedure TFrm_ResQtdPed.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_total.Caption:=FormatFloat(mcasqtd,mTotGrupo);
mTotGrupo:=0;

end;

procedure TFrm_ResQtdPed.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=false;
   lbl_codigo.Alignment    :=taLeftJustify;
   lbl_Grade.Alignment     :=taLeftJustify;
   lbl_descricao.Alignment :=taLeftJustify;
   lbl_und.Alignment       :=taLeftJustify;
   lbl_quantidade.Alignment:=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_codigo.Alignment    :=taCenter;
   lbl_Grade.Alignment     :=taCenter;
   lbl_descricao.Alignment :=taCenter;
   lbl_und.Alignment       :=taCenter;
   lbl_quantidade.Alignment:=taCenter;
   end;
lbl_titulo.Borders.DrawBottom  :=mboolean;
db_grupo.Borders.DrawBottom    :=mboolean;
RLGroup1.Borders.DrawLeft      :=mboolean;
RLGroup1.Borders.DrawRight     :=mboolean;
RLGroup1.Borders.DrawTop       :=mboolean;
RLGroup1.Borders.DrawBottom    :=mboolean;
lbl_codigo.Borders.DrawRight   :=mboolean;
lbl_Grade.Borders.DrawRight    :=mboolean;
lbl_descricao.Borders.DrawRight:=mboolean;
lbl_und.Borders.DrawRight      :=mboolean;
db_codigo.Borders.DrawRight    :=mboolean;
db_Grade.Borders.DrawRight     :=mboolean;
db_descricao.Borders.DrawRight :=mboolean;
db_und.Borders.DrawRight       :=mboolean;
RLBand5.Borders.DrawTop        :=mboolean;

end;

procedure TFrm_ResQtdPed.CB_TRACOClick(Sender: TObject);
begin
if CB_TRACO.Checked then
   rl_traco.Visible:=true
else
   rl_traco.Visible:=false;
end;

procedure TFrm_ResQtdPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ResQtdPed.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_ResQtdPed.CODTLVExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if trim(CODTLV.Text)='' then
   NOMTLV.text:='Todos...'
else
   begin
   if not flcadusr(1,0,CODTLV.Text) then
      begin
      fmensagem('Televendas não Cadastrado!',0,['0'],0);
      CODTLV.SetFocus;
      end
   else
      NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;

end;

procedure TFrm_ResQtdPed.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_PedCli',Key);
   if valfloat(CODTLV.Text)<>0 then
      CODTLVExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ResQtdPed.FormShow(Sender: TObject);
begin
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   NOMVEN.Enabled    :=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

end;

procedure TFrm_ResQtdPed.lbx_chaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_chave.ItemIndex>=0 then
      lbx_chave.Items.Delete(lbx_chave.ItemIndex);

end;

procedure TFrm_ResQtdPed.edt_chaveExit(Sender: TObject);
begin
edt_chave.Text:=fdeixanum2(edt_chave.Text);
if Trim(edt_chave.Text)<>'' then
   begin
   lbx_chave.Items.Add(FormatFloat('0000000',StrToFloat(edt_chave.Text))
                                 +' - '+edt_chave.Text);

   edt_chave.text := '';
   if edt_chave.Enabled then
      edt_chave.SetFocus;
   end;

end;

end.
