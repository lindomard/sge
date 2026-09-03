unit S_MedPro02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC, S_SelEmp,
  ExtCtrls,S_For,S_TipPro,S_TCon,S_Impres,S_Ven, CheckLst, ComCtrls,
  RLReport, s_lerarq_geral;

type
  TFrm_MedPro02 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Qr_Ven: TQuery;
    Qr_VenNOME: TStringField;
    Qr_VenEMB: TStringField;
    Qr_VenNOMFOR: TStringField;
    Qr_VenCODFOR: TFloatField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    Qr_VenVENMES04: TFloatField;
    Qr_VenUND: TStringField;
    Qr_VenQTDMES01: TFloatField;
    Qr_VenQTDMES02: TFloatField;
    Qr_VenQTDMES03: TFloatField;
    Qr_VenQTDMES04: TFloatField;
    Qr_Venestoque: TFloatField;
    Qr_VenCUSTO: TFloatField;
    Qr_VenPRECO: TFloatField;
    Qr_Vendtultent: TStringField;
    Qr_VenPDDESC1: TFloatField;
    Qr_VenPDDESC2: TFloatField;
    CLBNivel: TCheckListBox;
    Label5: TLabel;
    Label3: TLabel;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    OMITIR_PRO: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_VEN: TCheckBox;
    lbl_codven: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    Label11: TLabel;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CODCON: TEdit;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    Label10: TLabel;
    OMITIR_UF: TCheckBox;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    TabSheet3: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    RG_TIPO: TRadioGroup;
    RG_ORDEM: TRadioGroup;
    CB_FORCAR: TCheckBox;
    CB_DESC01: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_QDEC_QTD: TComboBox;
    Label6: TLabel;
    bbImprimir: TBitBtn;
    bbPadrao: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    CB_PROSMOV: TCheckBox;
    Label12: TLabel;
    MARCA: TEdit;
    lbx_marca: TListBox;
    OMITIR_MAR: TCheckBox;
    TabSheet4: TTabSheet;
    RLReport1: TRLReport;
    Ds_Ven: TDataSource;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    rlnomcab: TRLLabel;
    RLLabel4: TRLLabel;
    codigo: TRLLabel;
    und: TRLLabel;
    desc: TRLLabel;
    mes1: TRLLabel;
    mes2: TRLLabel;
    mes3: TRLLabel;
    estoque: TRLLabel;
    pcocust: TRLLabel;
    pcovenda: TRLLabel;
    ultcpr: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rlmes01: TRLDBText;
    rlmes02: TRLDBText;
    rlmes03: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    cb_laser: TCheckBox;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel2: TRLLabel;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RG_TIPOExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CB_QDEC_QTDExit(Sender: TObject);
    procedure Qr_VenCalcFields(DataSet: TDataSet);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure bbPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_UFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBStatusClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure MARCAExit(Sender: TObject);
    procedure lbx_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fmedvencab(ptipo: Integer): Boolean;
    function fmedventot(ptipo: Integer): Boolean;
    function fAtualizaPadrao(pTipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    Form_Impres_MedPro02: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    { Public declarations }
  end;

var
  Frm_MedPro02: TFrm_MedPro02;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mes04,ano04: Integer;
  mdt1,mdt2: String;
  FProMed_Origem: Integer;
  mcasas_med: String;
  mtotqtd01,mtotqtd02,mtotqtd03,mtotqtd04,mqtdest: Real;
  mtotvlr01,mtotvlr02,mtotvlr03,mtotvlr04,mvlrest: Real;
  mtotcus: Real;
  mcodfor_ant: Real;
  mnomfor_ant: String;
  mnomeView: String;

implementation

uses S_DM4, S_GPro, S_Ram, S_UF;

{$R *.dfm}

procedure TFrm_MedPro02.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedPro02.bbImprimirClick(Sender: TObject);
var
  mcampos,mcampos2,mpu,mmest: String;
  x:  Integer;
  mmedia: Real;
  mpreco: Real;
begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
  begin
  fmensagem('Mês Inválido!',0,['0'],0);
  MES.SetFocus;
  exit;
  end;
if lbx_codfor.items.count<1 then
  begin
  if fmensagem('Quer realmente Emitir esta média de todos os Fornecedores?',0,['1','2'],2)<>mrYes then
    exit;
  end;
mcasas_med:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');
mes04:=Valint(MES.Text);
ano04:=Valint(ANO.Text);
mes03:=mes04-1;
ano03:=ano04;
if mes03<1 then
  begin
  mes03:=12;
  ano03:=ano03-1;
  end;
mes02:=mes03-1;
ano02:=ano03;
if mes02<1 then
  begin
  mes02:=12;
  ano02:=ano02-1;
  end;
mes01:=mes02-1;
ano01:=ano02;
if mes01<1 then
   begin
   mes01:=12;
   ano01:=ano01-1;
   end;
mdt1:='01/'+FormatFloat('00',mes01)+'/'+FormatFloat('0000',ano01);
mdt2:='28/'+FormatFloat('00',valfloat(mes.Text))+'/'+FormatFloat('0000',valfloat(ano.Text));
x:=Valint(mes.Text);
while true do
  begin
  mmest:=FormatDateTime('mm',StrTodate(mdt2)+1);
  if StrToInt('0'+mmest)<>x then
    break;
  mdt2:=FormatDateTime(fdt2,StrToDate(mdt2)+1);
  end;
if FormatDateTime('yyyymm',Date)=ano.Text+MES.Text then
  mdt2:=FormatdateTime(fdt2, Date);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
mNomeView:=fProcTemp(22);
mpu:='PDPRECO1';
if FProMed_Origem=0 then
  begin
  if RG_TIPO.ItemIndex=0 then
    begin
    mcampos:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
    mcampos2:='(P2TOTLIQ-P2DESCRAT)';
    end
  else
    begin
    mcampos:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
    mcampos2:='(P2TOTLIQ-P2DESCRAT)';
    end;
  if CB_EmiDoc.Checked then
    pdatapesq:='P1DATDOC'
  else
    pdatapesq:='P1DATAP';
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin4(1,'CADP02','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
  if pbanco=0 then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
  DM1.Query1.SQL.Add('select PDNOME AS NOME, PDUND AS UND, PDEMBPAD2 AS EMB,');
  DM1.Query1.SQL.Add(' PDNOMFOR AS NOMFOR, PDCODFOR AS CODFOR,  ');
  DM1.Query1.SQL.Add(' PDCODPRO AS CODIGO, '
                    +' PDPRECOC AS CUSTO, '+mpu+' AS PRECO, PDDESC1,PDDESC2,'
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos+',0)) as qtdmes01,'
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos+',0)) as qtdmes02,'
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos+',0)) as qtdmes03,  '
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano04)+FormatFloat('00',mes04)+chr(39)+','+mcampos+',0)) as qtdmes04,  '
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos2+',0)) as venmes01,'
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos2+',0)) as venmes02,'
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos2+',0)) as venmes03,  '
                    +' sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano04)+FormatFloat('00',mes04)+chr(39)+','+mcampos2+',0)) as venmes04  '
                    +'       from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  (P1STATUS<>9)');
  if CB_EmiDoc.Checked then
    DM1.Query1.SQL.Add('       and P1EMIDOC=1 ');
  if Trim(MDT1)<>'/  /' then
    DM1.Query1.SQL.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT1))+chr(39));
  if Trim(MDT2)<>'/  /' then
    DM1.Query1.SQL.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT2))+chr(39));
  mcinst2:=fItenstCheckListBox(0,CLBNivel);
  if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);
  mcinst2:=fItenstCheckListBox(0,CLBStatus);
  if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and PDSTATUS '+mcinst2);
  mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
  if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and P1TIPO '+mcinst2);
  if CLBEstoque.Count -1 > 0 then
    begin
    if not clbestoque.Checked[3] then
      begin
      if clbestoque.Checked[0] then
        if not clbestoque.Checked[1] then
          if not clbestoque.Checked[2] then
            DM1.Query1.SQL.Add(' and pdsaldo >0 ');
      if clbestoque.Checked[1] then
        if not clbestoque.Checked[0] then
          if not clbestoque.Checked[2] then
            DM1.Query1.SQL.Add(' and pdsaldo = 0 ');
      if clbestoque.Checked[0] then
        if clbestoque.Checked[2] then
          DM1.Query1.SQL.Add(' and pdsaldo <> 0 ');
      if clbestoque.Checked[1] then
        if  clbestoque.Checked[2] then
          DM1.Query1.SQL.Add(' and pdsaldo <=0 ');
      if clbestoque.Checked[0] then
        if clbestoque.Checked[1] then
          DM1.Query1.SQL.Add(' and pdsaldo >= 0 ');
      end;
    end;
  mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODPRO '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
  if trim(mcinst2)<>'' THEN
    begin
    DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2);
    end;
  mcinst2:=fItensListBox(0,lbx_codven,OMITIR_ven);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and P1CODVEN '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODCON '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODGRU '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODRAM '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDCODTIP '+mcinst2);
  mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and CUF '+mcinst2);
  mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDMARCA '+mcinst2);
  DM1.Query1.SQL.Add('Group by PDNOMFOR,PDCODFOR, PDNOME, PDUND, PDEMBPAD2,PDPRECOC,'+mpu+', PDCODPRO,PDDESC1,PDDESC2 ');
  if CB_PROSMOV.Checked then
    begin
    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';
    la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
    DM1.Query1.SQL.Add(' union ');
    DM1.Query1.SQL.Add(' select PDNOME AS NOME, PDUND AS UND, PDEMBPAD2 AS EMB, ');
    DM1.Query1.SQL.Add(' PDNOMFOR AS NOMFOR, PDCODFOR AS CODFOR,  ');
    DM1.Query1.SQL.Add('    PDCODPRO AS CODIGO,  PDPRECOC AS CUSTO, '
                      +' PDPRECO1 AS PRECO, PDDESC1,PDDESC2,0 as qtdmes01, '
                      +' 0 as qtdmes02, '
                      +' 0 as qtdmes03, '
                      +' 0 as qtdmes04, '
                      +' 0 as venmes01, '
                      +' 0 as venmes02, '
                      +' 0 as venmes03, '
                      +' 0 as venmes04 ');
    DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<9 ');
    mcinst:=' and ';
    if trim(la_Empresas)<>'' then
      begin
      DM1.Query1.SQL.add(mcinst+' '+la_Empresas);
      mcinst:=' and ';
      end;
    mcinst2:=fItenstCheckListBox(0,CLBNivel);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(mcinst+ ' PDNIVEL '+mcinst2);
      mcinst:=' and ';
      end;
    mcinst2:=fItenstCheckListBox(0,CLBStatus);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(mcinst+' PDSTATUS '+mcinst2);
      mcinst:=' and ';
      end;
    if CLBEstoque.Count -1 > 0 then
      begin
      if not clbestoque.Checked[3] then
         begin
         if clbestoque.Checked[0] then
            if not clbestoque.Checked[1] then
               if not clbestoque.Checked[2] then DM1.Query1.SQL.Add(' and pdsaldo >0 ');
         if clbestoque.Checked[1] then
            if not clbestoque.Checked[0] then
               if not clbestoque.Checked[2] then DM1.Query1.SQL.Add(' and pdsaldo = 0 ');
         if clbestoque.Checked[0] then
            if clbestoque.Checked[2]        then DM1.Query1.SQL.Add(' and pdsaldo <> 0 ');
         if clbestoque.Checked[1] then
            if  clbestoque.Checked[2]       then DM1.Query1.SQL.Add(' and pdsaldo <=0 ');
         if clbestoque.Checked[0] then
            if clbestoque.Checked[1]       then DM1.Query1.SQL.Add(' and pdsaldo >= 0 ');
         end;
      end;
    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.sql.Add(mcinst+' PDCODPRO '+mcinst2);
      mcinst:=' and ';
      end;
    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' THEN
      begin
      DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2);
      end;
    mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.sql.Add(mcinst+' PDCODCON '+mcinst2);
      mcinst:=' and ';
      end;
    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.sql.Add(mcinst+' PDCODGRU '+mcinst2);
      mcinst:=' and ';
      end;
    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.sql.Add(mcinst+' PDCODRAM '+mcinst2);
      mcinst:=' and ';
      end;
    mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
    if trim(mcinst2)<>'' then
      begin
      DM1.Query1.sql.Add(mcinst+' PDCODTIP '+mcinst2);
      mcinst:=' and ';
      end;
    end;
{
  if RG_ORDEM.ItemIndex=0 then
     DM1.Query1.SQL.Add(' PDCODFOR,PDNOME ')
  else if RG_ORDEM.ItemIndex=1 then
     DM1.Query1.SQL.Add(' PDCODFOR,P2CODPRO ')
  else if RG_ORDEM.ItemIndex=2 then
    Qr_Ven.SQL.Add(' PDCODFOR,(venmes01+venmes02+venmes03+venmes04) ')
  else if RG_ORDEM.ItemIndex=3 then
     Qr_Ven.SQL.Add(' PDCODFOR,(venmes01+venmes02+venmes03+venmes04) desc ');
}
//  DM1.Query1.sql.savetofile(mpastatemp + 'SQLmed.txt');
  end
else
  begin
  if RG_TIPO.ItemIndex=0 then
    begin
    mcampos :='(PF2QTDP)';
    mcampos2:='((PF2QTDP*PF2PU)-PF2TOTDES)';
    end
  else
    begin
    mcampos :='(PF2QTDP)';
    mcampos2:='((PF2QTDP*PF2PU)-PF2TOTDES)';
    end;
  la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin3(1,'CADPF2','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');
  if pbanco=0 then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
  DM1.Query1.SQL.Add('select NVL(TRIM(PF2NOMPRO),PDNOME) AS NOME, PDUND AS UND, PDEMBPAD2 AS EMB, PDNOMFOR AS NOMFOR, PDCODFOR AS CODFOR,  '
                    +' PDPRECOC AS CUSTO, '+mpu+' AS PRECO, PDDESC1,PDDESC2,'
                    +' PDCODPRO AS CODIGO, '
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos+',0)) as qtdmes01,'
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos+',0)) as qtdmes02,'
                    +' sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos+',0)) as qtdmes03,  '
                    +' sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano04)+FormatFloat('00',mes04)+chr(39)+','+mcampos+',0)) as qtdmes04, '
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos+',0)) as venmes01,'
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos+',0)) as venmes02,'
                    +' sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos+',0)) as venmes03,  '
                    +' sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano04)+FormatFloat('00',mes04)+chr(39)+','+mcampos+',0)) as venmes04  '
                    +'       from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  (PF1STATUS=1)');
  if Trim(MDT1)<>'/  /' then
    DM1.Query1.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
  if Trim(MDT2)<>'/  /' then
    DM1.Query1.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));
  mcinst2:=fItenstCheckListBox(0,CLBNivel);
  if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);
  mcinst2:=fItenstCheckListBox(0,CLBStatus);
  if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and PDSTATUS '+mcinst2);
  mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
  if trim(mcinst2)<>'' then
    DM1.Query1.sql.Add(' and PDMARCA '+mcinst2);
  if CLBEstoque.Count -1 > 0 then
    begin
    if not clbestoque.Checked[3] then
      begin
      if clbestoque.Checked[0] then
        if not clbestoque.Checked[1] then
          if not clbestoque.Checked[2] then
            DM1.Query1.SQL.Add(' and pdsaldo >0 ');
      if clbestoque.Checked[1] then
        if not clbestoque.Checked[0] then
          if not clbestoque.Checked[2] then
            DM1.Query1.SQL.Add(' and pdsaldo = 0 ');
      if clbestoque.Checked[0] then
        if clbestoque.Checked[2]    then DM1.Query1.SQL.Add(' and pdsaldo <> 0 ');
      if clbestoque.Checked[1] then
        if  clbestoque.Checked[2]       then DM1.Query1.SQL.Add(' and pdsaldo <=0 ');
      if clbestoque.Checked[0] then
        if clbestoque.Checked[1]       then DM1.Query1.SQL.Add(' and pdsaldo >= 0 ');
      end;
    end;
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and PDCODPRO '+mcinst2);


  mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
  if trim(mcinst2)<>'' THEN
     begin
     DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2);
     end;


   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and PDCODCON '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
  if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and FUF '+mcinst2);
  DM1.Query1.SQL.Add('Group by PDNOMFOR, PDCODFOR,  '
     +' PF2NOMPRO, PDNOME, PDUND, PDEMBPAD2,PDPRECOC,'+mpu+', PDCODPRO,PDDESC1,PDDESC2 ');

  if CB_PROSMOV.Checked then
     begin
     la_tabelas  :='';
     la_Join     :='';
     la_instrucao:='';
     la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
     DM1.Query1.SQL.Add(' union ');
     DM1.Query1.SQL.Add(' select PDNOME AS NOME, PDUND AS UND, PDEMBPAD2 AS EMB, ');
     DM1.Query1.SQL.Add(' PDNOMFOR AS NOMFOR, PDCODFOR AS CODFOR,  ');
     DM1.Query1.SQL.Add(' PDPRECOC AS CUSTO, PDPRECO1 AS PRECO, '
                       +' PDDESC1,PDDESC2,PDCODPRO AS CODIGO,   '
                       +' 0 as qtdmes01, '
                       +' 0 as qtdmes02, '
                       +' 0 as qtdmes03, '
                       +' 0 as qtdmes04, '
                       +' 0 as venmes01, '
                       +' 0 as venmes02, '
                       +' 0 as venmes03, '
                       +' 0 as venmes04 ');

     DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<9 ');

     mcinst:=' and ';

     mcinst2:=fItenstCheckListBox(0,CLBNivel);
     if trim(mcinst2)<>'' then
        begin
        DM1.Query1.SQL.Add(mcinst+ ' PDNIVEL '+mcinst2);
        mcinst:=' and ';
        end;
     mcinst2:=fItenstCheckListBox(0,CLBStatus);
     if trim(mcinst2)<>'' then
        begin
        DM1.Query1.SQL.Add(mcinst+' PDSTATUS '+mcinst2);
        mcinst:=' and ';
        end;
     if CLBEstoque.Count -1 > 0 then
        begin
        if not clbestoque.Checked[3] then
           begin
           if clbestoque.Checked[0] then
              if not clbestoque.Checked[1] then
                 if not clbestoque.Checked[2] then DM1.Query1.SQL.Add(' and pdsaldo >0 ');
           if clbestoque.Checked[1] then
              if not clbestoque.Checked[0] then
                 if not clbestoque.Checked[2] then DM1.Query1.SQL.Add(' and pdsaldo = 0 ');
           if clbestoque.Checked[0] then
              if clbestoque.Checked[2]        then DM1.Query1.SQL.Add(' and pdsaldo <> 0 ');
           if clbestoque.Checked[1] then
              if  clbestoque.Checked[2]       then DM1.Query1.SQL.Add(' and pdsaldo <=0 ');
           if clbestoque.Checked[0] then
              if clbestoque.Checked[1]       then DM1.Query1.SQL.Add(' and pdsaldo >= 0 ');
           end;
        end;


      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.sql.Add(mcinst+' PDCODPRO '+mcinst2);
         mcinst:=' and ';
         end;

     mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
     if trim(mcinst2)<>'' THEN
        begin
        DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2);
        end;
      mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.sql.Add(mcinst+' PDCODCON '+mcinst2);
         mcinst:=' and ';
         end;
      mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.sql.Add(mcinst+' PDCODGRU '+mcinst2);
         mcinst:=' and ';
         end;
      mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.sql.Add(mcinst+' PDCODRAM '+mcinst2);
         mcinst:=' and ';
         end;

      mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.sql.Add(mcinst+' PDCODTIP '+mcinst2);
         mcinst:=' and ';
         end;
      end;
  end;
try
  DM1.Query1.ExecSQL;
except
  DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

  end;

//DM1.Query1.SQL.SaveToFile('c:\sge\FTRIMESTRAL.TXT');

Qr_Ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.SQL.Add(' select NOME, UND, EMB,'
                 +' NOMFOR, CODFOR,  '
                 +' CODIGO, '
                 +' max(CUSTO) as CUSTO, '
                 +' max(PRECO) as PRECO, '
                 +' MAX(PDDESC1) as PDDESC1,'
                 +' max(PDDESC2) as PDDESC2,'
                 +' sum(qtdmes01) as qtdmes01,'
                 +' sum(qtdmes02) as qtdmes02,'
                 +' sum(qtdmes03)  as qtdmes03,  '
                 +' sum(qtdmes04)  as qtdmes04,  '
                 +' sum(venmes01) as venmes01,'
                 +' sum(venmes02)  as venmes02,'
                 +' sum(venmes03) as  venmes03,  '
                 +' sum(venmes04)  as venmes04  '
                 +' from  '+mnomeView
                 +' Group by NOME,UND,EMB,NOMFOR,CODFOR,CODIGO ');
if RG_ORDEM.ItemIndex=0 then
   Qr_Ven.SQL.Add(' order by CODFOR,NOME,CODIGO ')
else if RG_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' order by CODFOR,CODIGO ')
else if RG_ORDEM.ItemIndex=2 then
   begin
   if rg_tipo.itemindex=1 then
       Qr_Ven.SQL.Add(' order by CODFOR,(qtdmes01+qtdmes02+qtdmes03+qtdmes04),NOME ')
   else
       Qr_Ven.SQL.Add(' order by CODFOR,(venmes01+venmes02+venmes03+venmes04),NOME ');

   end
else if RG_ORDEM.ItemIndex=3 then
   begin
   if rg_tipo.itemindex=1 then
      Qr_Ven.SQL.Add(' order by CODFOR,(qtdmes01+qtdmes02+qtdmes03+qtdmes04) desc ,NOME  ')
   else
      Qr_Ven.SQL.Add(' order by CODFOR,(venmes01+venmes02+venmes03+venmes04) desc,NOME ');
   end;
//qr_ven.SQL.SaveToFile('c:\SGE\FTRIMESTRAL2.txt');
Qr_Ven.Open;
if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_MedPro02(FindGlobalComponent('Form_Impres_MedPro02'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, Form_Impres_MedPro02);

Form_Impres_MedPro02.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Form_Impres_MedPro02.mlin:=0;
Form_Impres_MedPro02.mpag:=0;
mtotcus:=0;
Qr_Ven.First;


mtotqtd01:=0;
mtotqtd02:=0;
mtotqtd03:=0;
mtotqtd04:=0;
mqtdest  :=0;
mtotvlr01:=0;
mtotvlr02:=0;
mtotvlr03:=0;
mtotvlr04:=0;
mvlrest  :=0;


mcodfor_ant:=Qr_VenCODFOR.Value;
mnomfor_ant:=Qr_VenNOMFOR.Value;
if not cb_laser.Checked then
  begin
  While not Qr_Ven.Eof do
    begin
    if Form_Impres_MedPro02.mlin=0 then
      fmedvencab(0);
{
Codigo Und Descricao                                Emb.Padrao mes/01 mes/02 mes/03 mes/04 Estoque Media Pco.Custo Pc.Unitar Dt.Ult.C
123456 und 1234567890123456789012345678901234567890 1234567890 123456 123456 123456 123456 1234567 123456zz.zz9,99zz.zzz9,99 10/03/03
}

     Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
     mmedia:=Qr_VenQTDMES01.Value+Qr_VenQTDMES02.Value+Qr_VenQTDMES03.Value;
     mtotqtd01:=mtotqtd01+Qr_VenQTDMES01.Value;
     mtotqtd02:=mtotqtd02+Qr_VenQTDMES02.Value;
     mtotqtd03:=mtotqtd03+Qr_VenQTDMES03.Value;
     mtotqtd04:=mtotqtd04+Qr_VenQTDMES04.Value;
     mtotvlr01:=mtotvlr01+Qr_VenVENMES01.Value;
     mtotvlr02:=mtotvlr02+Qr_VenVENMES02.Value;
     mtotvlr03:=mtotvlr03+Qr_VenVENMES03.Value;
     mtotvlr04:=mtotvlr04+Qr_VenVENMES04.Value;
     mtotcus  :=mtotcus+(Qr_Venestoque.Value*Qr_VenCUSTO.Value);

     mmedia:=(mmedia/3);
     if CB_DESC01.Checked then
        mpreco:=Qr_VenPRECO.Value-(Qr_VenPRECO.Value*Qr_VenPDDESC1.Value/100)
     else
        mpreco:=Qr_VenPRECO.Value;
     mqtdest  :=mqtdest+Qr_Venestoque.Value;
     mvlrest  :=mvlrest+(Qr_Venestoque.Value*mpreco);

     Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,insere(FormatFloat('000000',Qr_VenCODIGO.Value),' ',06)
                             +' '+insere2(Qr_VenUND.Value,' ',3)
                             +' '+insere2(Qr_VenNOME.Value,' ',40)
                             +' [___]'
                             +' '+insere(Qr_VenEMB.Value,' ',04)
                             +insere(FormatFloat(mcasas_med, Qr_VenQTDMES01.Value),' ',07)
                             +insere(FormatFloat(mcasas_med, Qr_VenQTDMES02.Value),' ',07)
                             +insere(FormatFloat(mcasas_med, Qr_VenQTDMES03.Value),' ',07)
                             +insere(FormatFloat(mcasas_med, Qr_VenQTDMES04.Value),' ',07)
                             +insere(FormatFloat(mcasas_med, Qr_Venestoque.Value) ,' ',08)
                             +insere(FormatFloat(mcasas_med, mmedia),' ',07)
                             +insere(FormatFloat(mcasaspu, Qr_VenCUSTO.Value),' ',09)
                             +insere(FormatFloat(mcasaspu, mpreco),' ',10)
                             +' '+insere(Qr_Vendtultent.Value,' ',8),mreduz);
     Qr_Ven.Next;
     if Qr_Ven.Eof then
        begin
        fmedventot(0);
        Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
        if Form_Impres_MedPro02.RDprint1.Setup then Form_Impres_MedPro02.RDprint1.Fechar;
        Form_Impres_MedPro02.free;
        Form_Impres_MedPro02:=nil;
        end
     else if mcodfor_ant<>Qr_VenCODFOR.Value then
        begin
        fmedventot(0);
        mcodfor_ant:=Qr_VenCODFOR.Value;
        mnomfor_ant:=Qr_VenNOMFOR.Value;
        Form_Impres_MedPro02.RDprint1.Novapagina;
        fmedvencab(0);
        end
     else if Form_Impres_MedPro02.mlin>58 then
        begin
        Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
        Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,'Continua...',mreduz);
        Form_Impres_MedPro02.RDprint1.Novapagina;
        Form_Impres_MedPro02.mlin:=0;
        end;
     end;
  Qr_Ven.close;
  end
else
  begin
  RLReport1.PreviewModal;
  end;
end;

procedure TFrm_MedPro02.RG_TIPOExit(Sender: TObject);
begin
if RG_TIPO.ItemIndex=0 then
   mcasas_med:=mcasas
else
   mcasas_med:=mcasqtd;
end;

procedure TFrm_MedPro02.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODfor.SetFocus;
      end;
   end;

end;

procedure TFrm_MedPro02.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
   CODTIP.Text:='';
   EXIT;
   end;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   begin
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   end
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_MedPro02.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   begin
   exit;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   begin
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   end
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_MedPro02.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedPro02.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      lbx_codtip.Items.Add(FormatFloat('0000000',DM1.Tb_TproTCODTIP.AsFloat)
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;



end;

procedure TFrm_MedPro02.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;



end;

procedure TFrm_MedPro02.CB_QDEC_QTDExit(Sender: TObject);
begin
with CB_QDEC_QTD do ItemIndex:=Items.IndexOf(CB_QDEC_QTD.text);
CB_QDEC_QTD.Text:=CB_QDEC_QTD.Items[CB_QDEC_QTD.ItemIndex];

end;

procedure TFrm_MedPro02.Qr_VenCalcFields(DataSet: TDataSet);
begin
if flcadest(0,0,0,'0'+Qr_VenCODIGO.AsString) then
   begin
   Qr_Venestoque.Value:=DM1.Tb_EstCESALDO.Value;
   if (DM1.Tb_EstCEDTUENT.IsNull) or (DM1.Tb_EstCEDTUENT.Value<=pdatanula) then
      Qr_Vendtultent.Value:=' '
   else
      Qr_Vendtultent.Value:=FormatDatetime(fdt3, DM1.Tb_EstCEDTUENT.Value);
   end;

end;

function TFrm_MedPro02.fmedvencab(ptipo: Integer): Boolean;
begin
Form_Impres_MedPro02.mpag:=Form_Impres_MedPro02.mpag+1;
Form_Impres_MedPro02.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
Form_Impres_MedPro02.RDprint1.ImpF(01,110,'Pagina:     '+FormatFloat('0000',Form_Impres_MedPro02.mpag),mnormal);
if FProMed_Origem=0 then
   Form_Impres_MedPro02.RDprint1.ImpF(02,01,'Media Trimestral de Vendas Por Produto.    ',mnormal)
else
   Form_Impres_MedPro02.RDprint1.ImpF(02,01,'Media Trimestral de Compras Por Produto.    ',mnormal);
Form_Impres_MedPro02.RDprint1.ImpF(02,110,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
Form_Impres_MedPro02.mlin:=3;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,insere2('=','=',80),mnormal);


if lbx_codfor.Count>0 then
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR)
else
   begin
   Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
   Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,Centra((FloatToStr(mcodfor_ant)+'-'+mnomfor_ant),' ',80),mneg);
   end;
if lbx_codpro.Count>0 then
   FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
if lbx_marca.Count>0 then
   FImprimeTitulo('Marca',lbx_marca,OMITIR_MAR);
if lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codtip.Count>0 then
   FImprimeTitulo('Tipo de Produto',lbx_codtip,OMITIR_TPRO);
if lbx_codgru.Count>0 then
   FImprimeTitulo('Grupo de Produto',lbx_codgru,OMITIR_GRU);
if lbx_codcon.Count>0 then
   FImprimeTitulo('Controle de Produto',lbx_codcon,OMITIR_CON);
if lbx_codram.Count>0 then
   FImprimeTitulo('Ramo de Produto',lbx_codram,OMITIR_RAM);
if lbx_coduf.Count>0 then
   FImprimeTitulo('UF',lbx_coduf,OMITIR_UF);

Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,insere2('=','=',80),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,'Codigo Und Descricao                                     Qt.Cx.'
                        +copy(tabmes[mes01],1,3)+'/'+copy(FormatFloat('0000',ano01),3,2)
                        +' '
                        +copy(tabmes[mes02],1,3)+'/'+copy(FormatFloat('0000',ano02),3,2)
                        +' '
                        +copy(tabmes[mes03],1,3)+'/'+copy(FormatFloat('0000',ano03),3,2)
                        +' '
                        +copy(tabmes[mes04],1,3)+'/'+copy(FormatFloat('0000',ano04),3,2)
                        +' Estoque Media Pco.Custo Pc.Unitar Dt.Ult.C',mreduz);
result:=true;
end;

function TFrm_MedPro02.fmedventot(ptipo: Integer): Boolean;
begin

Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
if Form_Impres_MedPro02.mlin>55 then
   begin
   Form_Impres_MedPro02.RDprint1.Novapagina;
   fmedvencab(0);
   Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
   end;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,26,'Resumo do Fornecedor',mneg);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+2;
Form_Impres_MedPro02.RDprint1.impf(Form_Impres_MedPro02.mlin,31,'Unidades                Valor',mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,15,copy(tabmes[mes01],1,3)+'/'+copy(FormatFloat('0000',ano01),3,2)
                        +insere(Formatfloat(mcasas_med, mtotqtd01),' ',18)
                        +insere(Formatfloat(mcasas,      mtotvlr01),' ',21),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,15,copy(tabmes[mes02],1,3)+'/'+copy(FormatFloat('0000',ano02),3,2)
                        +insere(Formatfloat(mcasas_med, mtotqtd02),' ',18)
                        +insere(Formatfloat(mcasas,      mtotvlr02),' ',21),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,15,copy(tabmes[mes03],1,3)+'/'+copy(FormatFloat('0000',ano03),3,2)
                        +insere(Formatfloat(mcasas_med, mtotqtd03),' ',18)
                        +insere(Formatfloat(mcasas,      mtotvlr03),' ',21),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,15,copy(tabmes[mes04],1,3)+'/'+copy(FormatFloat('0000',ano04),3,2)
                        +insere(Formatfloat(mcasas_med, mtotqtd04),' ',18)
                        +insere(Formatfloat(mcasas,      mtotvlr04),' ',21),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,15,'Estoque Atual: '
                        +insere(Formatfloat(mcasas_med, mqtdest),' ',09)
                        +insere(Formatfloat(mcasas,      mvlrest),' ',21),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,31,'Estoque Custo:'
                        +insere(Formatfloat(mcasas,      mtotcus),' ',15),mnormal);
Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
mtotqtd01:=0;
mtotqtd02:=0;
mtotqtd03:=0;
mtotqtd04:=0;
mqtdest  :=0;
mtotvlr01:=0;
mtotvlr02:=0;
mtotvlr03:=0;
mtotvlr04:=0;
mvlrest  :=0;
mtotcus  :=0;
end;

procedure TFrm_MedPro02.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;
end;

procedure TFrm_MedPro02.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   CODVEN.Text:=''
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

function TFrm_MedPro02.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
x: Integer;
begin
if flfilpad(codusr,'_MEDPRO02','') then
   begin

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBNIVEL',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBNivel.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBNivel.Checked[ValInt(mcinst)]:=true;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBESTOQUE',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBEstoque.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBEstoque.Checked[ValInt(mcinst)]:=true;
      end;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBSTATUS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBStatus.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBStatus.Checked[ValInt(mcinst)]:=true;
      end;


   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPO',[]) then
      RG_TIPO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ORDEM',[]) then
      RG_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESC01',[]) then
      CB_DESC01.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QDEC_QTD',[]) then
      CB_QDEC_QTD.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORCAR',[]) then
      CB_FORCAR.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIDOC',[]) then
      CB_EmiDoc.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PROSMOV',[]) then
      CB_PROSMOV.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;


result:=True;
end;

procedure TFrm_MedPro02.bbPadraoClick(Sender: TObject);
var x:integer;
begin

fDeletaPadroes(codusr,'_MEDPRO02','');
//if Trim(CODFOR.Text)<>'' then
//   fGravaPadroes(codusr,'CODFOR'     ,'text'       ,'_MEDPRO02',CODFOR.Text);
//if Trim(CODTIP.Text)<>'' then
//   fGravaPadroes(codusr,'CODTIP'     ,'text'       ,'_MEDPRO02',CODTIP.Text);
//if Trim(CODCON.Text)<>'' then
//   fGravaPadroes(codusr,'CODCON'     ,'text'      ,'_MEDPRO02',CODCON.Text);
//if Trim(CODVEN.Text)<>'' then
//   fGravaPadroes(codusr,'CODVEN'     ,'text'      ,'_MEDPRO02',CODCON.Text);
//fGravaPadroes(codusr,'RGTPRO'        ,'itemindex' ,'_MEDPRO02',IntTostr(RGTPRO.ItemIndex));
//fGravaPadroes(codusr,'RG_TIPOPED'    ,'itemindex' ,'_MEDPRO02',IntTostr(RG_TIPOPED.ItemIndex));

fGravaPadroes(codusr,'RG_TIPO'       ,'itemindex' ,'_MEDPRO02',IntTostr(RG_TIPO.ItemIndex));
fGravaPadroes(codusr,'CB_QDEC_QTD'   ,'itemindex' ,'_MEDPRO02',IntTostr(CB_QDEC_QTD.ItemIndex));
fGravaPadroes(codusr,'CB_EMIDOC'     ,'checked'   ,'_MEDPRO02',iif(CB_EmiDoc.Checked,'true','false'));
fGravaPadroes(codusr,'RG_ORDEM'      ,'itemindex' ,'_MEDPRO02',IntTostr(RG_ORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_DESC01'     ,'checked'   ,'_MEDPRO02',iif(CB_DESC01.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PROSMOV'    ,'checked'   ,'_MEDPRO02',iif(CB_PROSMOV.Checked,'true','false'));

mcinst2:='';
for x:=0 to rg_tipoped.Items.Count-1 do
   begin
   if rg_tipoped.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'      ,'checked'         ,'_MEDPRO02',mcinst2);

mcinst2:='';
for x:=0 to CLBStatus.Items.Count-1 do
   begin
   if CLBStatus.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBSTATUS'      ,'checked'         ,'_MEDPRO02',mcinst2);
mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBESTOQUE'      ,'checked'         ,'_MEDPRO02',mcinst2);

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBNIVEL'      ,'checked'         ,'_MEDPRO02',mcinst2);
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_MedPro02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Trim(mnomeView)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop view '+mnomeView);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedPro02.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_MedPro02.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
  flcadpro(1,0,0,CODPRO.Text);
  if valfloat(codpro.text)<>0 then
    lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
  codpro.text := '';
  codpro.setfocus;
  key:=#0;
  end;
end;

procedure TFrm_MedPro02.CODPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.CODVENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.CODFORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.CODTIPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_MedPro02.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;


end;

procedure TFrm_MedPro02.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_MedPro02.CODGRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.CODCONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   begin
   exit;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   begin
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   end
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_MedPro02.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedPro02.CODRAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;


procedure TFrm_MedPro02.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;


procedure TFrm_MedPro02.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);

end;




procedure TFrm_MedPro02.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:=''
else
   begin
   flcaduf(0,0,0,CODUF.Text);
   if DM1.Tb_uf.Eof then
      begin
      fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
      coduf.SetFocus;
   end;

end;

procedure TFrm_MedPro02.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedPro02.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_MedPro02.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_UF.Hint := 'Omitir Marcado - Todos Estados '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedPro02.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_MedPro02.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_MedPro02.MARCAExit(Sender: TObject);
begin
if Trim(MARCA.Text)='' then
   MARCA.Text:=''
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   MARCA.Text:=fRetAspas(MARCA.Text);
   DM1.Query2.SQL.Add('Select PDMARCA from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDMARCA like '+chr(39)+MARCA.Text+'%'+chr(39));
   DM1.Query2.Open;
   if DM1.Query2.IsEmpty then
      begin
      fmensagem('Marca nao Encontrada!',0,['0'],0);
      MARCA.SetFocus;
      end
   else
      begin
      lbx_marca.Items.Add(DM1.Query2.Fields[0].AsString);

      MARCA.text := '';
      MARCA.SetFocus;
      end;
   end;

end;

procedure TFrm_MedPro02.lbx_marcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_marca.ItemIndex>=0 then
      lbx_marca.Items.Delete(lbx_marca.ItemIndex);

end;

function TFrm_MedPro02.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      Form_Impres_MedPro02.mlin:=Form_Impres_MedPro02.mlin+1;
      Form_Impres_MedPro02.RDprint1.ImpF(Form_Impres_MedPro02.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;
end;



procedure TFrm_MedPro02.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_MedPro02.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
var
  x:integer;
begin
CB_QDEC_QTD.Text:=DM1.Tb_PargerPCASQTD.AsString;
with CB_QDEC_QTD do
  ItemIndex:=Items.IndexOf(CB_QDEC_QTD.text);
CB_QDEC_QTD.Text:=CB_QDEC_QTD.Items[CB_QDEC_QTD.ItemIndex];

mcasas_med:=mcasas;
if FProMed_Origem=0 then
   begin
   Frm_MedPro02.Caption:='Média Trimestral de Vendas Por Tipo de Produtos';
   rlnomcab.Caption    :='Média Trimestral de Vendas Por Tipo de Produtos';
   lbl_codven.Visible  :=true;
   CODVEN.Visible      :=true;
   end
else
   begin
   Frm_MedPro02.Caption:='Média Trimestral de Compras Por Tipo de Produtos';
   rlnomcab.Caption    :='Média Trimestral de Compras Por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('To&tais Crescente');
   RG_ORDEM.Items.add('Totai&s Decrescente');
   end;

   RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1] := TRUE;

for x:=0 to clbestoque.count -1 do
  clbestoque.Checked[x] := true;
for x:=0 to CLBStatus.count -1  do
  CLBStatus.Checked[x]  := true;

RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);
fAtualizaPadrao(0);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');

if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=True;
   OMITIR_VEN.Enabled:=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

end;

end.
