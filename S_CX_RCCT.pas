unit S_CX_RCCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq, Gauges, S_SelEmp,
  ComCtrls, RLReport, RLFilters, RLXLSFilter, RLRichFilter, RLPDFFilter;


type
  TFrm_CX_RCCT = class(TForm)
    Panel2: TPanel;
    bbSair: TBitBtn;
    TEMP: TQuery;
    bbImprimir: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    Label1: TLabel;
    CODDEP: TEdit;
    OMITIR_DEP: TCheckBox;
    lbx_coddep: TListBox;
    SP1: TSpeedButton;
    Label2: TLabel;
    CODCCU: TEdit;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    SP2: TSpeedButton;
    Label5: TLabel;
    CB_TIPO: TComboBox;
    CODIGO: TEdit;
    NOME: TEdit;
    Label6: TLabel;
    mesref: TEdit;
    anoref: TEdit;
    nome_meses: TEdit;
    Label3: TLabel;
    CB_NAT: TComboBox;
    Label4: TLabel;
    CB_ESTADO: TComboBox;
    CB_SEMMOV: TCheckBox;
    rlRel12Colunas: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    rlTotalGer: TRLBand;
    lblt_data: TRLLabel;
    lblt_nome: TRLLabel;
    lblt_total01: TRLLabel;
    lblt_total02: TRLLabel;
    lblt_total03: TRLLabel;
    lblt_total04: TRLLabel;
    lblt_total05: TRLLabel;
    lblt_total06: TRLLabel;
    lblt_total07: TRLLabel;
    lblt_total11: TRLLabel;
    lblt_total12: TRLLabel;
    lblt_totMedia: TRLLabel;
    lblt_total08: TRLLabel;
    lblt_total09: TRLLabel;
    lblt_total10: TRLLabel;
    RLBand4: TRLBand;
    filtros: TRLMemo;
    rlGrupo01: TRLGroup;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabcodigo: TRLMemo;
    lbl_cabNome: TRLMemo;
    lbl_cabTotal01: TRLMemo;
    lbl_cabTotal02: TRLMemo;
    lbl_cabTotal03: TRLMemo;
    lbl_cabTotal04: TRLMemo;
    lbl_cabTotal05: TRLMemo;
    lbl_cabTotal06: TRLMemo;
    lbl_cabTotal07: TRLMemo;
    lbl_cabTotal11: TRLMemo;
    lbl_cabTotal12: TRLMemo;
    lbl_cabMedia: TRLMemo;
    lbl_cabTotal08: TRLMemo;
    lbl_cabTotal09: TRLMemo;
    lbl_cabTotal10: TRLMemo;
    RL_detalhes: TRLBand;
    lbl_codigo: TRLDBText;
    lbl_nome: TRLDBText;
    lbl_total01: TRLDBText;
    lbl_total02: TRLDBText;
    lbl_total03: TRLDBText;
    lbl_total04: TRLDBText;
    lbl_total05: TRLDBText;
    lbl_total06: TRLDBText;
    lbl_total07: TRLDBText;
    lbl_total11: TRLDBText;
    lbl_total12: TRLDBText;
    lbl_totMedia: TRLDBText;
    lbl_total08: TRLDBText;
    lbl_total09: TRLDBText;
    lbl_total10: TRLDBText;
    band6: TRLBand;
    lblg_codigo: TRLLabel;
    lblg_nome: TRLLabel;
    lblg_total01: TRLLabel;
    lblg_total02: TRLLabel;
    lblg_total03: TRLLabel;
    lblg_total04: TRLLabel;
    lblg_total05: TRLLabel;
    lblg_total06: TRLLabel;
    lblg_total07: TRLLabel;
    lblg_total11: TRLLabel;
    lblg_total12: TRLLabel;
    lblg_totMedia: TRLLabel;
    lblg_total08: TRLLabel;
    lblg_total09: TRLLabel;
    lblg_total10: TRLLabel;
    Qr_Relatorio: TQuery;
    Qr_RelatorioNOMGRU: TStringField;
    Qr_RelatorioNOMSUBGRU: TStringField;
    Qr_RelatorioNOMITEM: TStringField;
    Qr_RelatorioVALOR01: TFloatField;
    Qr_RelatorioVALOR02: TFloatField;
    Qr_RelatorioVALOR03: TFloatField;
    Qr_RelatorioVALOR04: TFloatField;
    Qr_RelatorioVALOR05: TFloatField;
    Qr_RelatorioVALOR06: TFloatField;
    Qr_RelatorioVALOR07: TFloatField;
    Qr_RelatorioVALOR08: TFloatField;
    Qr_RelatorioVALOR09: TFloatField;
    Qr_RelatorioVALOR10: TFloatField;
    Qr_RelatorioVALOR11: TFloatField;
    Qr_RelatorioVALOR12: TFloatField;
    Src_Relatorio: TDataSource;
    RLDBText2: TRLDBText;
    Qr_RelatorioCODIGO: TStringField;
    Qr_Relatoriomedia: TFloatField;
    lbl_cabtotal: TRLMemo;
    lbl_totTotal: TRLDBText;
    lblg_totTotal: TRLLabel;
    lblt_totTotal: TRLLabel;
    Qr_Relatoriototger: TFloatField;
    Label8: TLabel;
    CB_TIPOREL: TComboBox;
    Qr_RelatorioCODGRU: TStringField;
    Qr_RelatorioCODSUBGRU: TStringField;
    Qr_RelatorioNATDC: TStringField;
    ts_TrimMod02: TTabSheet;
    rlTrimMod02: TRLReport;
    RLBand6: TRLBand;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    lblltm02_periodo: TRLLabel;
    RLLabel6: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLBand7: TRLBand;
    RLLabel8: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand10: TRLBand;
    RLDBText4: TRLDBText;
    RLGroup3: TRLGroup;
    RLBand11: TRLBand;
    RLBand13: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand12: TRLBand;
    lbl_tm2Codigo: TRLMemo;
    lbl_tm2Descr: TRLMemo;
    lbl_tm2Tot01: TRLMemo;
    lbl_tm2Tot02: TRLMemo;
    lbl_tm2Cod03: TRLMemo;
    lbl_tm2Media: TRLMemo;
    lbl_tm2Total: TRLMemo;
    TEMPNOMDEP: TStringField;
    TEMPNOMCCU: TStringField;
    TEMPCODDEP: TStringField;
    TEMPCODCCU: TStringField;
    TEMPNATDC: TStringField;
    TEMPMES1: TStringField;
    TEMPDC1: TFloatField;
    TEMPMES2: TStringField;
    TEMPDC2: TFloatField;
    TEMPMES3: TStringField;
    TEMPDC3: TFloatField;
    Src_Temp: TDataSource;
    TEMPcodgru: TFloatField;
    lbltm2_totalg01: TRLLabel;
    lbltm2_totalg02: TRLLabel;
    lbltm2_totalg03: TRLLabel;
    lbltm2_totalger: TRLLabel;
    lbltm2_totalgmed: TRLLabel;
    TEMPtotal_tri: TFloatField;
    TEMPmedia: TFloatField;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    procedure bbSairClick(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure mesrefExit(Sender: TObject);
    procedure busca_saldo_total;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure anorefExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RL_detalhesBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure band6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlTotalGerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_RelatorioCalcFields(DataSet: TDataSet);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure TEMPCalcFields(DataSet: TDataSet);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }

    form_impres_cx_rcct: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    mes01,ano01    : Integer;
    mes02,ano02    : Integer;
    mes03,ano03    : Integer;
    mes04,ano04    : Integer;
    mes05,ano05    : Integer;
    mes06,ano06    : Integer;
    mes07,ano07    : Integer;
    mes08,ano08    : Integer;
    mes09,ano09    : Integer;
    mes10,ano10    : Integer;
    mes11,ano11    : Integer;
    mes12,ano12    : Integer;
    mdt1, mdt2     : TDatetime;
    nomedep,nomecc      : string;
    mTotGru01      : Real;
    mTotGru02      : Real;
    mTotGru03      : Real;
    mTotGru04      : Real;
    mTotGru05      : Real;
    mTotGru06      : Real;
    mTotGru07      : Real;
    mTotGru08      : Real;
    mTotGru09      : Real;
    mTotGru10      : Real;
    mTotGru11      : Real;
    mTotGru12      : Real;
    mTotGru        : Real;

    mTotGer01      : Real;
    mTotGer02      : Real;
    mTotGer03      : Real;
    mTotGer04      : Real;
    mTotGer05      : Real;
    mTotGer06      : Real;
    mTotGer07      : Real;
    mTotGer08      : Real;
    mTotGer09      : Real;
    mTotGer10      : Real;
    mTotGer11      : Real;
    mTotGer12      : Real;
    mTotGer        : Real;

    anomes_aux          : string;
    total_a             : Boolean;
    total_g             : Boolean;
    msaldod,msaldoi, mdeb, mcred : Real;
    mp1,mp2,mp3,mp4              : Real;
    nomea                        : String;
    arq_temp            : string;
    mDataPesq: String;

  end;

var
  Frm_CX_RCCT: TFrm_CX_RCCT;
implementation

uses S_DM5;

{$R *.dfm}

procedure TFrm_CX_RCCT.bbSairClick(Sender: TObject);
begin
    close;
end;

procedure TFrm_CX_RCCT.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='TR' then
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      fMensagem('Código Não Cadastrado',0,['0'],0);
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';

end;

procedure TFrm_CX_RCCT.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CX_RCCT',Key);
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_CX_RCCT',Key);
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_RCCT',Key);
      end
   else if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text :=fChamaFor(0,'frm_CX_RCCT',Key);
      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_RCCT',key);
      end;
   if trim(CODIGO.Text)<>'' then
      CODIGOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CX_RCCT.FormCreate(Sender: TObject);
begin

ts_TrimMod02.TabVisible:=false;
TabSheet2.TabVisible:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_RelatorioVALOR01.DisplayFormat:=mcasas;
Qr_RelatorioVALOR02.DisplayFormat:=mcasas;
Qr_RelatorioVALOR03.DisplayFormat:=mcasas;
Qr_RelatorioVALOR04.DisplayFormat:=mcasas;
Qr_RelatorioVALOR05.DisplayFormat:=mcasas;
Qr_RelatorioVALOR06.DisplayFormat:=mcasas;
Qr_RelatorioVALOR07.DisplayFormat:=mcasas;
Qr_RelatorioVALOR08.DisplayFormat:=mcasas;
Qr_RelatorioVALOR09.DisplayFormat:=mcasas;
Qr_RelatorioVALOR10.DisplayFormat:=mcasas;
Qr_RelatorioVALOR11.DisplayFormat:=mcasas;
Qr_RelatorioVALOR12.DisplayFormat:=mcasas;
Qr_Relatoriomedia.DisplayFormat  :=mcasas;
Qr_Relatoriototger.DisplayFormat :=mcasas;

TEMPDC1.DisplayFormat        :=mcasas;
TEMPDC2.DisplayFormat        :=mcasas;
TEMPDC3.DisplayFormat        :=mcasas;

TEMPmedia.DisplayFormat      :=mcasas;
TEMPtotal_tri.DisplayFormat  :=mcasas;

mesref.text  := FormatDateTime('MM',NOW);
Anoref.text  := FormatDateTime('YYYY',NOW);

end;

procedure TFrm_CX_RCCT.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_RCCT','');
CODDEP.SetFocus;

end;

procedure TFrm_CX_RCCT.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_RCCT','');
CODCCU.SetFocus;

end;


procedure TFrm_CX_RCCT.mesrefExit(Sender: TObject);
begin

   if trim(mesref.text) = '0' then
   begin
       fMensagem('Informe o Mes Corretamente!!!',0,['0'],0);
       mesref.setfocus;
       exit;
   end;

   if valint(mesref.text) > 12 THEN
   begin
       fMensagem('Mes Nao Pode Ser Maior Que 12 !!!',0,['0'],0);
       mesref.setfocus;
       exit;
   end;
end;


procedure TFrm_CX_RCCT.busca_saldo_total;
var
mcampo_valor: String;
begin
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
mp1:=fVendaPeriodo(0,la_Empresas,'01/'
                  +FormatFloat('00', mes01)+'/'
                  +FormatFloat('0000',ano01)
                 ,FormatDateTime(fdt2,
                  fUltdiaMes(StrToDate('01/'+FormatFloat('00', mes01)+'/'
                            +FormatFloat('0000',ano01) ))
                            ));

mp2:=fVendaPeriodo(0,la_Empresas,'01/'
                  +FormatFloat('00', mes02)+'/'
                  +FormatFloat('0000',ano02)
                 ,FormatDateTime(fdt2,
                  fUltdiaMes(StrToDate('01/'+FormatFloat('00', mes02)+'/'
                            +FormatFloat('0000',ano02) ))
                            ));


mp3:=fVendaPeriodo(0,la_Empresas,'01/'
                  +FormatFloat('00', mes03)+'/'
                  +FormatFloat('0000',ano03)
                 ,FormatDateTime(fdt2,
                  fUltdiaMes(StrToDate('01/'+FormatFloat('00', mes03)+'/'
                            +FormatFloat('0000',ano03) ))
                            ));


end;

procedure TFrm_CX_RCCT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if arq_temp <> '' then
  begin
  temp.close;
  temp.sql.clear;
  temp.sql.add('DROP TABLE '+arq_temp);
  temp.ExecSQL;
  end;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RCCT.anorefExit(Sender: TObject);
begin
   if valint(anoref.text) = 0 then
   begin
       fMensagem('Informe o Ano Corretamente!!!',0,['0'],0);
       anoref.setfocus;
       exit;
   end;
if (valfloat(mesref.Text)<1) or (valfloat(mesref.Text)>12) then
   begin
   exit;
   end;
if CB_TIPOREL.ItemIndex=0 then
   begin
   mes12:=StrToInt('0'+Trim(mesref.Text));
   ano12:=StrToInt('0'+Trim(anoref.Text));
   mes11:=mes12-1;
   ano11:=ano12;
   if mes11<1 then
      begin
      mes11:=12;
      ano11:=ano11-1;
      end;

   mes10:=mes11-1;
   ano10:=ano11;
   if mes10<1 then
      begin
      mes10:=12;
      ano10:=ano10-1;
      end;

   mes09:=mes10-1;
   ano09:=ano10;
   if mes09<1 then
      begin
      mes09:=12;
      ano09:=ano09-1;
      end;

   mes08:=mes09-1;
   ano08:=ano09;
   if mes08<1 then
      begin
      mes08:=12;
      ano08:=ano08-1;
      end;

   mes07:=mes08-1;
   ano07:=ano08;
   if mes07<1 then
      begin
      mes07:=12;
      ano07:=ano07-1;
      end;

   mes06:=mes07-1;
   ano06:=ano07;
   if mes06<1 then
      begin
      mes06:=12;
      ano06:=ano06-1;
      end;

   mes05:=mes06-1;
   ano05:=ano06;
   if mes05<1 then
      begin
      mes05:=12;
      ano05:=ano05-1;
      end;

   mes04:=mes05-1;
   ano04:=ano05;
   if mes04<1 then
      begin
      mes04:=12;
      ano04:=ano04-1;
      end;

   mes03:=mes04-1;
   ano03:=ano04;
   if mes03<1 then
      begin
      mes03:=12;
      ano03:=ano03-1;
      end;
   end
else
   begin
   mes03:=StrToInt('0'+Trim(mesref.Text));
   ano03:=StrToInt('0'+Trim(anoref.Text));
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
mdt1:=StrToDate('01/'+FormatFloat('00',mes01)+'/'+FormatFloat('0000',ano01));
mdt2:=fultdiames( StrToDate(
         '01/'+FormatFloat('00',valfloat(mesref.Text))
         +'/'+FormatFloat('0000',valfloat(anoref.Text))));
nome_meses.text :='Pesquisa feita entre '+FormatDateTime(fdt2, mdt1)
                 +' a '+FormatDateTime(fdt2, mdt2);

end;

procedure TFrm_CX_RCCT.bbImprimirClick(Sender: TObject);
var
mtDeb_dc1, mtDeb_dc2, mtDeb_dc3: Real;
mtGer_dc1, mtGer_dc2, mtGer_dc3: Real;
mSinal: String;
begin

IF mesref.Text = '' then
   begin
   fMensagem('Informe Mes de Referencia ....',0,['0'],0);
   mesref.SetFocus;
   exit;
   end;
if CB_ESTADO.ItemIndex=0 then
   mDataPesq:='DATAREAL'
else
   mDataPesq:='DATADP';

anorefExit(Self);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

if CB_TIPOREL.ItemIndex=0 then
   begin
   Qr_Relatorio.CLOSE;
   Qr_Relatorio.SQL.Clear;
   Qr_Relatorio.SQL.ADD('Select '+chr(39)+insere(' ',' ',40)+chr(39)+' as NOMGRU, '
                       +chr(39)+insere(' ',' ',40)+chr(39)+' as CODGRU, '
                       +' NOMDEP as NOMSUBGRU,NOMCCU as NOMITEM  ,'
                       +' CODDEP AS CODSUBGRU, CODCC AS CODIGO, NATDC, '
                       +' sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano01)+Formatfloat('00', mes01)+chr(39)+',VALORR,0)) AS VALOR01, '
                       +' sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano02)+Formatfloat('00', mes02)+chr(39)+',VALORR,0)) AS VALOR02, '
                       +' sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano03)+Formatfloat('00', mes03)+chr(39)+',VALORR,0)) AS VALOR03 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano04)+Formatfloat('00', mes04)+chr(39)+',VALORR,0)) AS VALOR04 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano05)+Formatfloat('00', mes05)+chr(39)+',VALORR,0)) AS VALOR05 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano06)+Formatfloat('00', mes06)+chr(39)+',VALORR,0)) AS VALOR06 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano07)+Formatfloat('00', mes07)+chr(39)+',VALORR,0)) AS VALOR07 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano08)+Formatfloat('00', mes08)+chr(39)+',VALORR,0)) AS VALOR08 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano09)+Formatfloat('00', mes09)+chr(39)+',VALORR,0)) AS VALOR09 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano10)+Formatfloat('00', mes10)+chr(39)+',VALORR,0)) AS VALOR10 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano11)+Formatfloat('00', mes11)+chr(39)+',VALORR,0)) AS VALOR11 '
                       +', sum( '
                       +' decode( '
                       +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
                       +chr(39)+Formatfloat('0000', ano12)+Formatfloat('00', mes12)+chr(39)+',VALORR,0)) AS VALOR12 '
            +' FROM CADLDR where '+la_empresas
            +'       '+iif(la_Empresas='','',' and ')+la_instrucao
                 +'      '+        iif(la_instrucao='','',' and ')
            +' STATUS<>9 ');
   if Not CB_SEMMOV.Checked then
      begin
      Qr_Relatorio.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, mdt1)+chr(39));
      Qr_Relatorio.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, mdt2)+chr(39));
      end;
   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then Qr_Relatorio.SQL.Add(' and CODBCO '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_dep);
   if trim(mcinst2)<>'' then Qr_Relatorio.SQL.Add(' and CODDEP '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
   if trim(mcinst2)<>'' then Qr_Relatorio.SQL.Add(' and CODCC '+mcinst2);

   if Trim(CB_TIPO.Text)<>'Todos'  then
      Qr_Relatorio.SQL.Add('  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+CHR(39));
   if Trim(CODIGO.Text)<>''  then
      Qr_Relatorio.SQL.Add('  and CODIGO=0'+Trim(CODIGO.Text));
   if CB_NAT.ItemIndex=1 then
      Qr_Relatorio.SQL.Add(' and NATDC='+chr(39)+'D'+chr(39))
   else if CB_NAT.ItemIndex=2 then
      Qr_Relatorio.SQL.Add(' and NATDC<>'+chr(39)+'D'+chr(39));
   if CB_ESTADO.ItemIndex=0 then
      Qr_Relatorio.SQL.Add(' and (not DATAREAL is null and  DATAREAL>'+chr(39)+FormatDateTime(fdt2, pdatanula)+chr(39)+')')
   else if CB_ESTADO.ItemIndex=1 then
      Qr_Relatorio.SQL.Add(' and (DATAREAL is null or  DATAREAL<='+chr(39)+FormatDateTime(fdt2, pdatanula)+chr(39)+')');
   Qr_Relatorio.SQL.Add(' GROUP BY NOMDEP,NOMCCU,CODDEP,CODCC,NATDC ');

    Qr_Relatorio.SQL.Add(' ORDER BY NOMDEP,NOMCCU,CODDEP,CODCC,NATDC ');

   //   Qr_Relatorio.SQL.SaveToFile(mpastatemp + 'SQLpc.TXT');

   try
      Qr_Relatorio.Open;
   except
      Qr_Relatorio.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   filtros.Lines.Clear;
   if lbx_codbco.Items.Count>0 then
      FImprimeTitulo('Banco ',lbx_codbco,OMITIR_BCO);
   if lbx_coddep.Items.Count>0 then
      FImprimeTitulo('Departamento ',lbx_coddep,OMITIR_DEP);
   if lbx_codccu.Items.Count>0 then
      FImprimeTitulo('Centro de Custo ',lbx_codccu,OMITIR_CCU);

   lbl_titulo02.Caption :='Relatorio Anual do Fluxo de Caixa';
   lbl_titulo.Caption   :=fperiodo(0,FormatDatetime(fdt2, mdt1),FormatDatetime(fdt2, mdt2));
   lbl_cabNome.Lines.Clear;
   lbl_cabcodigo.Lines.Clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.Add('Centro de Custo');
   lbl_cabTotal01.Lines.Clear;
   lbl_cabTotal02.Lines.Clear;
   lbl_cabTotal03.Lines.Clear;
   lbl_cabTotal04.Lines.Clear;
   lbl_cabTotal05.Lines.Clear;
   lbl_cabTotal06.Lines.Clear;
   lbl_cabTotal07.Lines.Clear;
   lbl_cabTotal08.Lines.Clear;
   lbl_cabTotal09.Lines.Clear;
   lbl_cabTotal10.Lines.Clear;
   lbl_cabTotal11.Lines.Clear;
   lbl_cabTotal12.Lines.Clear;

   lbl_cabTotal01.Lines.Add(TabMes[mes01]+' /'+FormatFloat('00',ano01));
   lbl_cabtotal02.Lines.Add(TabMes[mes02]+' /'+FormatFloat('00',ano02));
   lbl_cabtotal03.Lines.Add(TabMes[mes03]+' /'+FormatFloat('00',ano03));
   lbl_cabtotal04.Lines.Add(TabMes[mes04]+' /'+FormatFloat('00',ano04));
   lbl_cabtotal05.Lines.Add(TabMes[mes05]+' /'+FormatFloat('00',ano05));
   lbl_cabtotal06.Lines.Add(TabMes[mes06]+' /'+FormatFloat('00',ano06));

   lbl_cabtotal07.Lines.Add(TabMes[mes07]+' /'+FormatFloat('00',ano07));
   lbl_cabtotal08.Lines.Add(TabMes[mes08]+' /'+FormatFloat('00',ano08));
   lbl_cabtotal09.Lines.Add(TabMes[mes09]+' /'+FormatFloat('00',ano09));
   lbl_cabtotal10.Lines.Add(TabMes[mes10]+' /'+FormatFloat('00',ano10));
   lbl_cabtotal11.Lines.Add(TabMes[mes11]+' /'+FormatFloat('00',ano11));
   lbl_cabtotal12.Lines.Add(TabMes[mes12]+' /'+FormatFloat('00',ano12));

    mTotGru01      :=0;
    mTotGru02      :=0;
    mTotGru03      :=0;
    mTotGru04      :=0;
    mTotGru05      :=0;
    mTotGru06      :=0;
    mTotGru07      :=0;
    mTotGru08      :=0;
    mTotGru09      :=0;
    mTotGru10      :=0;
    mTotGru11      :=0;
    mTotGru12      :=0;
    mTotGru        :=0;

    mTotGer01      :=0;
    mTotGer02      :=0;
    mTotGer03      :=0;
    mTotGer04      :=0;
    mTotGer05      :=0;
    mTotGer06      :=0;
    mTotGer07      :=0;
    mTotGer08      :=0;
    mTotGer09      :=0;
    mTotGer10      :=0;
    mTotGer11      :=0;
    mTotGer12      :=0;
    mTotGer        :=0;
   rlRel12Colunas.PreviewModal;
   end
else
   begin
   TEMP.CLOSE;
   TEMP.SQL.Clear;
   TEMP.SQL.ADD('Select NOMDEP,NOMCCU,CODDEP,CODCC AS CODCCU, NATDC, '
            +chr(39)+Formatfloat('00', mes01)+'/'+Formatfloat('0000', ano01)+chr(39)+' AS MES1, '
            +' sum( '
            +' decode( '
            +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
            +chr(39)+Formatfloat('0000', ano01)+Formatfloat('00', mes01)+chr(39)+',VALORR,0)) AS DC1, '

            +chr(39)+Formatfloat('00', mes02)+'/'+Formatfloat('0000', ano02)+chr(39)+' AS MES2, '
            +' sum( '
            +' decode( '
            +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
            +chr(39)+Formatfloat('0000', ano02)+Formatfloat('00', mes02)+chr(39)+',VALORR,0)) AS DC2, '

            +chr(39)+Formatfloat('00', mes03)+'/'+Formatfloat('0000', ano03)+chr(39)+' AS MES3, '
            +' sum( '
            +' decode( '
            +' TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+'),'
            +chr(39)+Formatfloat('0000', ano03)+Formatfloat('00', mes03)+chr(39)+',VALORR,0)) AS DC3 '
            +' FROM CADLDR where '+la_empresas
            +'       '+iif(la_Empresas='','',' and ')+la_instrucao
                 +'      '+        iif(la_instrucao='','',' and ')
            +' STATUS<>9 ');
   if Not CB_SEMMOV.Checked then
      begin
      TEMP.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, mdt1)+chr(39));
      TEMP.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, mdt2)+chr(39));
      end;
   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then TEMP.SQL.Add(' and CODBCO '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_dep);
   if trim(mcinst2)<>'' then TEMP.SQL.Add(' and CODDEP '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
   if trim(mcinst2)<>'' then TEMP.SQL.Add(' and CODCC '+mcinst2);

   if Trim(CB_TIPO.Text)<>'Todos'  then
      TEMP.SQL.Add('  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+CHR(39));
   if Trim(CODIGO.Text)<>''  then
      TEMP.SQL.Add('  and CODIGO=0'+Trim(CODIGO.Text));

   if CB_ESTADO.ItemIndex=0 then
      TEMP.SQL.Add(' and (not DATAREAL is null and  DATAREAL>'+chr(39)+FormatDateTime(fdt2, pdatanula)+chr(39)+')')
   else if CB_ESTADO.ItemIndex=1 then
      TEMP.SQL.Add(' and (DATAREAL is null or  DATAREAL<='+chr(39)+FormatDateTime(fdt2, pdatanula)+chr(39)+')');

   TEMP.SQL.Add(' GROUP BY NOMDEP,NOMCCU,CODDEP,CODCC,NATDC ');

   TEMP.SQL.Add(' ORDER BY NOMDEP,NOMCCU,CODDEP,CODCC,NATDC ');

//   TEMP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   try
      TEMP.Open;
   except
      TEMP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;


   msaldoi:=0;  mdeb:=0; mcred:=0; msaldod:=0;
   if TEMP.Eof then
      begin
      MessageDlg('Nada a ser impresso no período Solicitado!',mtWarning,[mbOk],0);
      exit;
      end;

   if CB_TIPOREL.ItemIndex=2 then
      begin
      lbl_tm2Tot01.Lines.Clear;
      lbl_tm2Tot02.Lines.Clear;
      lbl_tm2Cod03.Lines.Clear;
      lbl_tm2Tot01.Lines.Add(TabMes[mes01]+' /'+FormatFloat('00',ano01));
      lbl_tm2Tot02.Lines.Add(TabMes[mes02]+' /'+FormatFloat('00',ano02));
      lbl_tm2Cod03.Lines.Add(TabMes[mes03]+' /'+FormatFloat('00',ano03));
      lblltm02_periodo.Caption :=fperiodo(0,FormatDatetime(fdt2, mdt1),FormatDatetime(fdt2, mdt2));
      rlTrimMod02.PreviewModal
      end
   else
      begin
      testeform := TFrm_CX_RCCT(FindGlobalComponent('form_impres_cx_rcct'));
      if (testeform=nil)  then
         Application.CreateForm(Tfrm_Impres, form_impres_cx_rcct);
      form_impres_cx_rcct.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
      mtDeb_dc1:=0;
      mtDeb_dc2:=0;
      mtDeb_dc3:=0;

      mtGer_dc1:=0;
      mtGer_dc2:=0;
      mtGer_dc3:=0;

      form_impres_cx_rcct.mpag:=0;
      form_impres_cx_rcct.mlin:=0;
      temp.First;
      form_impres_cx_rcct.RDprint1.OpcoesPreview.Preview := TRUE;

      busca_saldo_total;

      While not temp.Eof do
         begin

         if form_impres_cx_rcct.mlin=0 then
            begin
            form_impres_cx_rcct.mpag:=form_impres_cx_rcct.mpag+1;
            form_impres_cx_rcct.fImprimirCabecalho(136,'Resumo do caixa Trimestral por Departamento e Centro de Custo. ');
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;


            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,insere('-','-',80),mnormal);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,' Código',mreduz);
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,33,insere(TabMes[mes01]+'/'+FormatFloat('0000',ano01),' ',13),mreduz);
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,56,insere(TabMes[mes02]+'/'+FormatFloat('0000',ano02),' ',13),mreduz);
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,78,insere(TabMes[mes03]+'/'+FormatFloat('0000',ano03),' ',13),mreduz);
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,105,'S a l d o     ',mreduz);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,' Produto  Nome                      S a l d o     %        S a l d o     %       S a l d o      %       T o t a l        Media      %',mreduz);

            mcinst :='';
            mcinst := mcinst+insere2('Venda Periodo','.',35);
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mp1),' ',10)+'             ';
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mp2),' ',10)+'            ';
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mp3),' ',10)+'             ';
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mp1+mp2+mp3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',(mp1+mp2+mp3)/3),' ',10)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',10)+'   ';
               end;
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,mcinst,mreduz);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,001,insere('-','-',80),mnormal);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,001,Temp.FieldByName('Coddep').AsString+' - '+Temp.FieldByName('Nomdep').AsString,mneg);
            nomea:=temp.FieldByName('Coddep').Value;
            form_impres_cx_rcct.mlin:=10;
            end;
         form_impres_cx_rcct.mlin :=form_impres_cx_rcct.mlin+1;
         if nomea <> Temp.FieldByName('Coddep').Value then
            begin
            form_impres_cx_rcct.mlin   :=form_impres_cx_rcct.mlin+1;
            mcinst :='';
            mcinst := insere2('Total Depto','.',31);
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc1),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc1/mp1)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc2),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc2/mp2)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc3/mp3)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc1+mtDeb_dc2+mtDeb_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc1+mtDeb_dc2+mtDeb_dc3))/3),' ',10)+'   ';
            except
                mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',10)+'   ';
                end;
            try
                mcinst := mcinst+insere(FormatFloat('#,##0.00',(((mtDeb_dc1/mp1)*100)+
                                                                  ((mtDeb_dc2/mp2)*100)+
                                                                ((mtDeb_dc3/mp3)*100))/3),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,03,mcinst,mreduz);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,insere2('-','-',80),mnormal);
            form_impres_cx_rcct.mlin :=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,temp.FieldByName('Coddep').AsString+' '+temp.FieldByName('Nomdep').AsString,mneg);
            form_impres_cx_rcct.mlin :=form_impres_cx_rcct.mlin+1;
            nomea:=Temp.FieldByName('Coddep').Value;
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            mtDeb_dc1:=0;
            mtDeb_dc2:=0;
            mtDeb_dc3:=0;
            end;

         if Temp.FieldByName('NATDC').AsString='D' then
            mSinal:='-'
         else
            mSinal:=' ';
         mcinst :='';
         mcinst := insere(Temp.FieldByName('CODCCU').Value,' ',5)+'   ';
         mcinst := mcinst+insere2(temp.FieldByName('Nomccu').AsString,' ',20)+'   ';

         mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',Temp.FieldByName('Dc1').AsFloat),' ',10)+'   ';

         try
            mcinst := mcinst+insere(msinal+FormatFloat('##0.00',(Temp.FieldByName('Dc1').AsFloat/mp1)*100),' ',7)+'   ';
         except
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',0),' ',7)+'   ';
            end;
         mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',Temp.FieldByName('Dc2').AsFloat),' ',10)+'   ';

         try
            mcinst := mcinst+insere(msinal+FormatFloat('##0.00',(Temp.FieldByName('Dc2').AsFloat/mp2)*100),' ',7)+'   ';
         except
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',0),' ',7)+'   ';
            end;
         mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',Temp.FieldByName('Dc3').AsFloat),' ',10)+'   ';
         try

            mcinst := mcinst+insere(msinal+FormatFloat('##0.00',(Temp.FieldByName('Dc3').AsFloat/mp3)*100),' ',7)+'   ';
         except
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',0),' ',7)+'   ';
            end;
         mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',Temp.FieldByName('Dc1').AsFloat+Temp.FieldByName('Dc2').AsFloat+Temp.FieldByName('Dc3').AsFloat),' ',10)+'   ';
         try
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',(Temp.FieldByName('Dc1').AsFloat+Temp.FieldByName('Dc2').AsFloat+Temp.FieldByName('Dc3').AsFloat)/3),' ',10)+'   ';
         except
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',0),' ',10)+'   ';
            end;
         try
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',(((Temp.FieldByName('Dc1').AsFloat/mp1)*100)+
                                                           ((Temp.FieldByName('Dc2').AsFloat/mp2)*100)+
                                                           ((Temp.FieldByName('Dc3').AsFloat/mp3)*100))/3),' ',07)+'   ';
         except
            mcinst := mcinst+insere(msinal+FormatFloat('#,##0.00',0),' ',07)+'   ';
            end;
         if Temp.FieldByName('NATDC').AsString='D' then
            begin
            mtDeb_dc1:=mtDeb_dc1-Temp.FieldByName('Dc1').AsFloat;
            mtDeb_dc2:=mtDeb_dc2-Temp.FieldByName('Dc2').AsFloat;
            mtDeb_dc3:=mtDeb_dc3-Temp.FieldByName('Dc3').AsFloat;
            mtGer_dc1:=mtGer_dc1-Temp.FieldByName('Dc1').AsFloat;
            mtGer_dc2:=mtGer_dc2-Temp.FieldByName('Dc2').AsFloat;
            mtGer_dc3:=mtGer_dc3-Temp.FieldByName('Dc3').AsFloat;
            end
         else
            begin
            mtDeb_dc1:=mtDeb_dc1+Temp.FieldByName('Dc1').AsFloat;
            mtDeb_dc2:=mtDeb_dc2+Temp.FieldByName('Dc2').AsFloat;
            mtDeb_dc3:=mtDeb_dc3+Temp.FieldByName('Dc3').AsFloat;
            mtGer_dc1:=mtGer_dc1+Temp.FieldByName('Dc1').AsFloat;
            mtGer_dc2:=mtGer_dc2+Temp.FieldByName('Dc2').AsFloat;
            mtGer_dc3:=mtGer_dc3+Temp.FieldByName('Dc3').AsFloat;
            end;

         form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,03,mcinst,mreduz);
         temp.Next;
         if temp.Eof then
            begin
            form_impres_cx_rcct.mlin   :=form_impres_cx_rcct.mlin+1;
            mcinst :='';
            mcinst := insere2('Total Depto','.',31);
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc1),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc1/mp1)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc2),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc2/mp2)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc3/mp3)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtDeb_dc1+mtDeb_dc2+mtDeb_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtDeb_dc1+mtDeb_dc2+mtDeb_dc3))/3),' ',10)+'   ';
            except
                mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',10)+'   ';
                end;
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',(((mtDeb_dc1/mp1)*100)+
                                                                  ((mtDeb_dc2/mp2)*100)+
                                                                ((mtDeb_dc3/mp3)*100))/3),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,03,mcinst,mreduz);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,insere2('-','-',80),mnormal);
            nomea:=Temp.FieldByName('Coddep').Value;
            mtDeb_dc1:=0;
            mtDeb_dc2:=0;
            mtDeb_dc3:=0;

            form_impres_cx_rcct.mlin   :=form_impres_cx_rcct.mlin+1;
            mcinst :='';
            mcinst := insere2('Total Geral','.',31);
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtGer_dc1),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtGer_dc1/mp1)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtGer_dc2),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtGer_dc2/mp2)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtGer_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtGer_dc3/mp3)*100)),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            mcinst := mcinst+insere(FormatFloat('#,##0.00',mtGer_dc1+mtGer_dc2+mtGer_dc3),' ',10)+'   ';
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',((mtGer_dc1+mtGer_dc2+mtGer_dc3))/3),' ',10)+'   ';
            except
                mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',10)+'   ';
                end;
            try
               mcinst := mcinst+insere(FormatFloat('#,##0.00',(((mtGer_dc1/mp1)*100)+
                                                                  ((mtGer_dc2/mp2)*100)+
                                                                ((mtGer_dc3/mp3)*100))/3),' ',07)+'   ';
            except
               mcinst := mcinst+insere(FormatFloat('#,##0.00',0),' ',07)+'   ';
               end;
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,03,mcinst,mreduz);
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,insere2('-','-',80),mnormal);
            nomea:=Temp.FieldByName('Coddep').Value;
            mtGer_dc1:=0;
            mtGer_dc2:=0;
            mtGer_dc3:=0;
            end
         else if form_impres_cx_rcct.mlin>58 then
            begin
            form_impres_cx_rcct.mlin:=form_impres_cx_rcct.mlin+1;
            form_impres_cx_rcct.RDprint1.ImpF(form_impres_cx_rcct.mlin,01,insere2('Coninua...','-',80),mnormal);
            form_impres_cx_rcct.RDprint1.Novapagina;
            form_impres_cx_rcct.mlin:=0;
            end;
         end;
      form_impres_cx_rcct.RDprint1.Fechar;
      form_impres_cx_rcct.free;
      form_impres_cx_rcct:=nil;
      end;
   end;

end;

procedure TFrm_CX_RCCT.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_CX_RCCT.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_CX_RCCT.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_CX_RCCT.RL_detalhesBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotGru01      :=mTotGru01+Qr_RelatorioVALOR01.Value;
mTotGru02      :=mTotGru02+Qr_RelatorioVALOR02.Value;
mTotGru03      :=mTotGru03+Qr_RelatorioVALOR03.Value;
mTotGru04      :=mTotGru04+Qr_RelatorioVALOR04.Value;
mTotGru05      :=mTotGru05+Qr_RelatorioVALOR05.Value;
mTotGru06      :=mTotGru06+Qr_RelatorioVALOR06.Value;
mTotGru07      :=mTotGru07+Qr_RelatorioVALOR07.Value;
mTotGru08      :=mTotGru08+Qr_RelatorioVALOR08.Value;
mTotGru09      :=mTotGru09+Qr_RelatorioVALOR09.Value;
mTotGru10      :=mTotGru10+Qr_RelatorioVALOR10.Value;
mTotGru11      :=mTotGru11+Qr_RelatorioVALOR11.Value;
mTotGru12      :=mTotGru12+Qr_RelatorioVALOR12.Value;
mTotGru        :=mTotGru+Qr_Relatoriototger.Value;

mTotGer01      :=mTotGer01+Qr_RelatorioVALOR01.Value;
mTotGer02      :=mTotGer02+Qr_RelatorioVALOR02.Value;
mTotGer03      :=mTotGer03+Qr_RelatorioVALOR03.Value;
mTotGer04      :=mTotGer04+Qr_RelatorioVALOR04.Value;
mTotGer05      :=mTotGer05+Qr_RelatorioVALOR05.Value;
mTotGer06      :=mTotGer06+Qr_RelatorioVALOR06.Value;
mTotGer07      :=mTotGer07+Qr_RelatorioVALOR07.Value;
mTotGer08      :=mTotGer08+Qr_RelatorioVALOR08.Value;
mTotGer09      :=mTotGer09+Qr_RelatorioVALOR09.Value;
mTotGer10      :=mTotGer10+Qr_RelatorioVALOR10.Value;
mTotGer11      :=mTotGer11+Qr_RelatorioVALOR11.Value;
mTotGer12      :=mTotGer12+Qr_RelatorioVALOR12.Value;
mTotGer        :=mTotGer+Qr_Relatoriototger.Value;



end;

procedure TFrm_CX_RCCT.band6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_total01.Caption :=Formatfloat(mcasas, mTotGru01);
lblg_total02.Caption :=Formatfloat(mcasas, mTotGru02);
lblg_total03.Caption :=Formatfloat(mcasas, mTotGru03);
lblg_total04.Caption :=Formatfloat(mcasas, mTotGru04);
lblg_total05.Caption :=Formatfloat(mcasas, mTotGru05);
lblg_total06.Caption :=Formatfloat(mcasas, mTotGru06);
lblg_total07.Caption :=Formatfloat(mcasas, mTotGru07);
lblg_total08.Caption :=Formatfloat(mcasas, mTotGru08);
lblg_total09.Caption :=Formatfloat(mcasas, mTotGru09);
lblg_total10.Caption :=Formatfloat(mcasas, mTotGru10);
lblg_total11.Caption :=Formatfloat(mcasas, mTotGru11);
lblg_total12.Caption :=Formatfloat(mcasas, mTotGru12);
lblg_totTotal.Caption:=Formatfloat(mcasas, mTotGru);
if mTotGru<>0 then
   lblg_totMedia.Caption:=FormatFloat(mcasas, Arredonda( (mTotGru/12), DM1.Tb_PargerPCASAS.AsInteger) )
else
   lblg_totMedia.Caption:=FormatFloat(mcasas, 0);

mTotGru01:=0;
mTotGru02:=0;
mTotGru03:=0;
mTotGru04:=0;
mTotGru05:=0;
mTotGru06:=0;
mTotGru07:=0;
mTotGru08:=0;
mTotGru09:=0;
mTotGru10:=0;
mTotGru11:=0;
mTotGru12:=0;
mTotGru  :=0;

end;

procedure TFrm_CX_RCCT.rlTotalGerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_total01.Caption :=Formatfloat(mcasas, mTotGer01);
lblt_total02.Caption :=Formatfloat(mcasas, mTotGer02);
lblt_total03.Caption :=Formatfloat(mcasas, mTotGer03);
lblt_total04.Caption :=Formatfloat(mcasas, mTotGer04);
lblt_total05.Caption :=Formatfloat(mcasas, mTotGer05);
lblt_total06.Caption :=Formatfloat(mcasas, mTotGer06);
lblt_total07.Caption :=Formatfloat(mcasas, mTotGer07);
lblt_total08.Caption :=Formatfloat(mcasas, mTotGer08);
lblt_total09.Caption :=Formatfloat(mcasas, mTotGer09);
lblt_total10.Caption :=Formatfloat(mcasas, mTotGer10);
lblt_total11.Caption :=Formatfloat(mcasas, mTotGer11);
lblt_total12.Caption :=Formatfloat(mcasas, mTotGer12);
lblt_totTotal.Caption:=Formatfloat(mcasas, mTotGer);
if mTotGer<>0 then
   lblg_totMedia.Caption:=FormatFloat(mcasas, Arredonda( (mTotGer/12), DM1.Tb_PargerPCASAS.AsInteger) )
else
   lblt_totMedia.Caption:=FormatFloat(mcasas, 0);
mTotGer01:=0;
mTotGer02:=0;
mTotGer03:=0;
mTotGer04:=0;
mTotGer05:=0;
mTotGer06:=0;
mTotGer07:=0;
mTotGer08:=0;
mTotGer09:=0;
mTotGer10:=0;
mTotGer11:=0;
mTotGer12:=0;
mTotGer  :=0;

end;

procedure TFrm_CX_RCCT.Qr_RelatorioCalcFields(DataSet: TDataSet);
begin
Qr_Relatoriototger.Value:=Qr_RelatorioVALOR01.Value
                         +Qr_RelatorioVALOR02.Value
                         +Qr_RelatorioVALOR03.Value
                         +Qr_RelatorioVALOR04.Value
                         +Qr_RelatorioVALOR05.Value
                         +Qr_RelatorioVALOR06.Value
                         +Qr_RelatorioVALOR07.Value
                         +Qr_RelatorioVALOR08.Value
                         +Qr_RelatorioVALOR09.Value
                         +Qr_RelatorioVALOR10.Value
                         +Qr_RelatorioVALOR11.Value
                         +Qr_RelatorioVALOR12.Value;
if Qr_Relatoriototger.AsFloat<>0 then
   Qr_Relatoriomedia.Value:=Arredonda( (Qr_Relatoriototger.Value/12), DM1.Tb_PargerPCASAS.AsInteger)
else
   Qr_Relatoriomedia.Value:=0;
end;
function tFrm_CX_RCCT.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      filtros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;

end;

procedure TFrm_CX_RCCT.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
mPosReg: TBookmark;
mcodgru_ant: string;
begin

mPosReg        := TEMP.GetBookmark;
mcodgru_ant    := TEMPCODDEP.Value;

mTotGru01      :=0;
mTotGru02      :=0;
mTotGru03      :=0;


While (not TEMP.Eof) and (TEMPCODDEP.Value=mcodgru_ant) do
   begin
   mTotGru01:=mTotGru01+TEMPDC1.AsFloat;
   mTotGru02:=mTotGru02+TEMPDC2.AsFloat;
   mTotGru03:=mTotGru03+TEMPDC3.AsFloat;
   TEMP.Next;
   end;
lbltm2_totalg01.Caption:=FormatFloat(mcasas, mTotGru01);
lbltm2_totalg02.Caption:=FormatFloat(mcasas, mTotGru02);
lbltm2_totalg03.Caption:=FormatFloat(mcasas, mTotGru03);

lbltm2_totalger.Caption:=FormatFloat(mcasas, mTotGru01+mTotGru02+mTotGru03);

if (mTotGru01+mTotGru02+mTotGru03)<>0 then
   lbltm2_totalgmed.Caption:=FormatFloat(mcasas, (mTotGru01+mTotGru02+mTotGru03)/3)
else
   lbltm2_totalgmed.Caption:=FormatFloat(mcasas, 0);

TEMP.GotoBookmark(mPosReg);

end;

procedure TFrm_CX_RCCT.TEMPCalcFields(DataSet: TDataSet);
begin
TEMPtotal_tri.Value:=TEMPDC1.Value+TEMPDC2.Value+TEMPDC3.Value;
if TEMPtotal_tri.AsFloat<>0 then
   TEMPmedia.Value:=TEMPtotal_tri.Value/3
else
   TEMPmedia.Value:=0;

end;

procedure TFrm_CX_RCCT.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)='' Then
   CODBCO.Text:=''
else
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',ValFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_CX_RCCT.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_RCCT',Key);
   key:=#0;
   CODBCOExit(self);
   end;

end;

procedure TFrm_CX_RCCT.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)='' Then
   CODDEP.Text:=''
else
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end
   else
      begin
      lbx_coddep.Items.Add(CODDEP.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      coddeP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCCT.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)='' Then
   CODCCU.Text:=''
else
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU.SetFocus;
      end
   else
      begin
      lbx_codccu.Items.Add(CODCCU.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      codccu.text := '';
      CODCCU.SetFocus;
      end;
   end;




end;

procedure TFrm_CX_RCCT.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CX_RCCT.FormActivate(Sender: TObject);
begin
if log_coddep_cx=''  then
   begin
   CODDEP.Enabled    :=true;
   lbx_coddep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   CODDEP.Enabled    :=false;
   lbx_coddep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   CODDEP.Text       :=log_coddep_cx;
   CODDEPExit(self);
   end;

end;

end.
