unit S_IndProFab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,S_DM2,db,dbtables,func,lerarq,S_Impres,
  RLReport, ComCtrls,s_lerarq_geral;

type
  TFrm_IndProFab = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsMod04: TTabSheet;
    lbl_cab: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sbSalvarPadrao: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbsair: TBitBtn;
    CB_TPPESQ: TComboBox;
    CB_CONFIRMADO: TCheckBox;
    CHAVEI: TEdit;
    CHAVEF: TEdit;
    CB_ORDEM: TComboBox;
    CB_MODELO: TComboBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    edt_codgru: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    edt_codtip: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TIP: TCheckBox;
    edt_codsgru: TEdit;
    lbx_codsgru: TListBox;
    OMITIR_SGRU: TCheckBox;
    lbx_codmat: TListBox;
    CODMAT: TEdit;
    OMITIR_MAT: TCheckBox;
    Qr_OP02: TQuery;
    Qr_OP02OP2_QTDPROD: TFloatField;
    Qr_OP02OP2_QTDPREV: TFloatField;
    Qr_OP02VLRPREV: TFloatField;
    Qr_OP02VLRPROD: TFloatField;
    Qr_OP02OP2_CODPRO: TFloatField;
    Qr_OP02OP2_NUMERO: TStringField;
    Qr_OP02PDNOME: TStringField;
    Qr_OP02PDUND: TStringField;
    Qr_OP02PDTEMPOFAB: TFloatField;
    Qr_OP02PDPESOL: TFloatField;
    Qr_OP02TEMPOPREV: TFloatField;
    Qr_OP02PESOLPREV: TFloatField;
    Qr_OP02TEMPOPROD: TFloatField;
    Qr_OP02PESOPROD: TFloatField;
    Qr_OP02PRODUZIDO: TFloatField;
    Qr_OP02QUANTIDADE: TFloatField;
    Qr_OP02QTDPERDAS: TFloatField;
    Qr_OP02OP1_STATUS: TFloatField;
    Qr_OP02OP1_LOTE: TStringField;
    Qr_OP02OP1_DATAVEN: TDateTimeField;
    rlModelo04: TRLReport;
    RLBandM004_Cab: TRLBand;
    lblmod04_nomemp: TRLLabel;
    lblmod04_dathor: TRLLabel;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblmod04_periodo: TRLLabel;
    Qr_Mod04: TQuery;
    Qr_Mod04OP2_QTDPROD: TFloatField;
    Qr_Mod04OP2_QTDPREV: TFloatField;
    Qr_Mod04VLRFABPREV: TFloatField;
    Qr_Mod04OP2_VLRFABPROD: TFloatField;
    Qr_Mod04VLRCUSPREV: TFloatField;
    Qr_Mod04OP2_VLRCUSPROD: TFloatField;
    Qr_Mod04QUANTIDADE: TFloatField;
    Qr_Mod04RCODRAM: TFloatField;
    Qr_Mod04RNOME: TStringField;
    Src_Mod04: TDataSource;
    rlmod04_cabdet: TRLBand;
    RLMod04_det: TRLBand;
    lblmod04cab_codsg: TRLLabel;
    lblmod04cab_nomsg: TRLLabel;
    lblmod04cab_qtdprod: TRLLabel;
    lblmod04cab_totfab: TRLLabel;
    lblmod04cab_totcus: TRLLabel;
    txtmod04cab_codsg: TRLDBText;
    txtmod04cab_nomsg: TRLDBText;
    txtmod04cab_qtdprod: TRLDBText;
    txtmod04cab_totfab: TRLDBText;
    txtmod04cab_totcus: TRLDBText;
    rlmod04_sum: TRLBand;
    rlmod04_rod: TRLBand;
    totmod04cab_codsg: TRLLabel;
    totmod04cab_nomsg: TRLLabel;
    totmod04cab_qtdprod: TRLLabel;
    totmod04cab_totfab: TRLLabel;
    totmod04cab_totcus: TRLLabel;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codtipExit(Sender: TObject);
    procedure edt_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codsgruExit(Sender: TObject);
    procedure edt_codsgruKeyPress(Sender: TObject; var Key: Char);
    procedure CODMATExit(Sender: TObject);
    procedure CODMATKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codmatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLMod04_detAfterPrint(Sender: TObject);
    procedure rlmod04_sumBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    form_impres_indprofab: tFrm_Impres;

    mTotProdCus: Real;
    mTotProdFab: Real;
    mQtdProd: Real;

    { Public declarations }
  end;

var
  Frm_IndProFab: TFrm_IndProFab;
  mOrigemIndProFab:Integer=0; //0-p/Producao 1-p/Envase
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_IndProFab.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_IndProFab.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_IndProFab.bbImprimirClick(Sender: TObject);
var
maproPro, mAprovVlr: Real;
mgrade: Boolean;
mQtdPrev, mQtdProd: Real;
mTotPerdas,mTotPerdas_Peso,mTotPesoPrev,mTotPesoProd, mTotQtd,MvlrPrev, mVlrProd: Real;
mDataPesq: String;
begin
bbImprimir.Enabled:=false;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      bbImprimir.Enabled:=true;
      exit;
      end;
   end;
if (trim(CHAVEI.Text)<>'') and (trim(CHAVEF.Text)<>'') then
   begin
   if fsonumero(CHAVEI.Text)>fsonumero(CHAVEF.Text) then
      begin
      fMensagem('Chave Inicial maior que Final, Invalido!',0,['0'],0);
      bbImprimir.Enabled:=true;
      exit;
      end;
   end;
if CB_MODELO.ItemIndex<>3 then
   begin

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin3(1,'CADOP02','OP2_CODEMP','OP1_CODEMP','OP2_CODIGO','OP1_CODIGO','OP2_FABENV','OP1_FABENV');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';

   if lbx_codmat.Count>0 then
      begin
      fInnerJoin3(1,'CADOP03','OP3_CODEMP','OP1_CODEMP','OP3_CODIGO','OP1_CODIGO','OP3_FABENV','OP1_FABENV');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      end;

   fInnerJoin(0,'CADPRO','PDCODEMP','OP2_CODEMP','PDCODPRO','OP2_CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');

   Qr_OP02.Close;
   Qr_OP02.SQL.Clear;
   if lbx_codmat.Count>0 then
      begin
      Qr_OP02.SQL.Add('Select max(DECODE(OP1_STATUS,2,OP2_QTDPROD,0)) as OP2_QTDPROD,max(OP2_QTDPREV) as OP2_QTDPREV, '
//                  +'       max(OP2_PU*OP2_QTDPREV) as VLRPREV, '
                  +'       max(PDPRECOC*OP2_QTDPREV) as VLRPREV, '
                  +'       sum(OP1_STATUS) AS OP1_STATUS, '
//                  +'       max(DECODE(OP1_STATUS,2,(OP2_PU*OP2_QTDPROD),0)) as VLRPROD, '
                  +'       max(DECODE(OP1_STATUS,2,(PDPRECOC*OP2_QTDPROD),0)) as VLRPROD, '
                  +'       max(DECODE(OP1_STATUS,2,(OP2_QTDPREV-OP2_QTDPROD),0)) as QTDPERDAS, '
                  +'        OP2_CODPRO,OP2_NUMERO, PDNOME, OP1_LOTE, OP1_DATAVEN, PDUND,PDTEMPOFAB,PDPESOL '
                  +'        ,max(OP2_QTDPREV*PDTEMPOFAB) as TEMPOPREV '
                  +'       ,max(OP2_QTDPREV*PDPESOL) as PESOLPREV '
                  +'       ,max(DECODE(OP1_STATUS,2,(OP2_QTDPROD*PDTEMPOFAB),0)) as TEMPOPROD '
                  +'       ,max(DECODE(OP1_STATUS,2,(OP2_QTDPROD*PDPESOL),0)) as PESOPROD '
                  +'       ,max(DECODE(OP1_STATUS,2,(OP2_QTDPREV*PDTEMPOFAB),0)) as PRODUZIDO '
                  +'       ,count(*) as QUANTIDADE ');
      end
   else
      begin
      Qr_OP02.SQL.Add('Select sum(DECODE(OP1_STATUS,2,OP2_QTDPROD,0)) as OP2_QTDPROD,sum(OP2_QTDPREV) as OP2_QTDPREV, '
                  +'       sum(PDPRECOC*OP2_QTDPREV) as VLRPREV, '
                  +'       sum(OP1_STATUS) AS OP1_STATUS, '
                  +'       sum(DECODE(OP1_STATUS,2,(PDPRECOC*OP2_QTDPROD),0)) as VLRPROD, '
                  +'       sum(DECODE(OP1_STATUS,2,(OP2_QTDPREV-OP2_QTDPROD),0)) as QTDPERDAS, '
                  +'        OP2_CODPRO,OP2_NUMERO, PDNOME, OP1_LOTE, OP1_DATAVEN, PDUND,PDTEMPOFAB,PDPESOL '
                  +'       ,sum(OP2_QTDPREV*PDTEMPOFAB) as TEMPOPREV '
                  +'       ,sum(OP2_QTDPREV*PDPESOL) as PESOLPREV '
                  +'       ,sum(DECODE(OP1_STATUS,2,(OP2_QTDPROD*PDTEMPOFAB),0)) as TEMPOPROD '
                  +'       ,sum(DECODE(OP1_STATUS,2,(OP2_QTDPROD*PDPESOL),0)) as PESOPROD '
                  +'       ,sum(DECODE(OP1_STATUS,2,(OP2_QTDPREV*PDTEMPOFAB),0)) as PRODUZIDO '
                  +'       ,count(*) as QUANTIDADE ');
      end;
   Qr_OP02.SQL.Add('       from CADOP01 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +'  OP1_STATUS<9');

   if CB_CONFIRMADO.Checked then
      Qr_OP02.SQL.Add(' and OP1_STATUS>0 ');

   if mOrigemIndProFab=1 then
      Qr_OP02.SQL.Add(' and OP1_FABENV=2')
   else
      Qr_OP02.SQL.Add(' and OP1_FABENV<>2');

   if CB_TPPESQ.ItemIndex=0 then
      mDataPesq:='OP1_DATAPREV'
   else
      mDataPesq:='OP1_DATA';

   if Trim(MDT1.Text)<>'/  /' then
      Qr_OP02.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_OP02.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   if trim(CHAVEI.Text)<>'' then
      Qr_OP02.SQL.Add(' and   OP1_CODIGO>=0'+Trim(CHAVEI.Text));

   mcinst2:=fItensListBox(0,lbx_codmat,OMITIR_MAT);
   if trim(mcinst2)<>'' then
     begin
     Qr_OP02.SQL.Add(' and OP3_CODMAT '+mcinst2);
     mcinst2:='';
     end;


   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
     begin
     Qr_OP02.SQL.Add(' and PDCODPRO '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
     begin
     Qr_OP02.SQL.Add(' and PDCODGRU '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
   if trim(mcinst2)<>'' then
     begin
     Qr_OP02.SQL.Add(' and PDCODTIP '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codsgru,OMITIR_SGRU);
   if trim(mcinst2)<>'' then
     begin
     Qr_OP02.SQL.Add(' and PDCODRAM '+mcinst2);
     mcinst2:='';
     end;

   if trim(CHAVEF.Text)<>'' then
      Qr_OP02.SQL.Add(' and   OP1_CODIGO<=0'+Trim(CHAVEF.Text));
   Qr_OP02.SQL.Add(' group by  OP2_CODPRO,OP2_NUMERO, PDNOME, OP1_LOTE, OP1_DATAVEN, PDUND,PDTEMPOFAB,PDPESOL ');
   if CB_ORDEM.ItemIndex=0 then
      Qr_OP02.SQL.Add(' order by OP2_CODPRO,OP2_NUMERO')
   else if CB_ORDEM.ItemIndex=1 then
      Qr_OP02.SQL.Add(' order by PDNOME,OP2_CODPRO,PDTEMPOFAB,PDPESOL');

   //Qr_OP02.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));


   try
      Qr_OP02.Open;
   except
      Qr_OP02.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   if Qr_OP02.IsEmpty then
      begin
      fMensagem('Não ha nada a ser impresso!',0,['0'],0);
      bbImprimir.Enabled:=true;
      exit;
      end;
   end;

if Valint(copy(mpseg,4,2))=2 then
   mgrade:=true
else
   mgrade:=false;

if CB_MODELO.ItemIndex=0 then
   begin
   testeform := TFrm_IndProFab(FindGlobalComponent('form_impres_indprofab'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Impres, form_impres_indprofab);
   form_impres_indprofab.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   form_impres_indprofab.mlin:=0;
   form_impres_indprofab.mpag:=0;
   maproPro :=0;
   mAprovVlr:=0;
   mQtdPrev :=0;
   mQtdProd :=0;
   MvlrPrev :=0;
   mVlrProd :=0;

   While not Qr_OP02.Eof do
      begin
      if form_impres_indprofab.mlin=0 then
         begin
         form_impres_indprofab.mpag:=form_impres_indprofab.mpag+1;
         form_impres_indprofab.RDprint1.impf(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
         if mOrigemIndProFab=0 then
            form_impres_indprofab.RDprint1.ImpF(02,01,insere2('Relatorio de Produtos Fabricados. ',' ',60)+'Pagina: '+Formatfloat('0000',form_impres_indprofab.mpag),mnormal)
         else
            form_impres_indprofab.RDprint1.ImpF(02,01,insere2('Relatorio de Produtos Envasados. ',' ',60)+'Pagina: '+Formatfloat('0000',form_impres_indprofab.mpag),mnormal);
         form_impres_indprofab.RDprint1.impf(03,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_indprofab.mlin:=4;
         if (trim(CHAVEI.Text)<>'') or (trim(CHAVEF.Text)<>'') then
            begin
            if (trim(CHAVEF.Text)='') then
               mcinst:='Chave do Pedido a Partir de '+CHAVEI.Text
            else if (trim(CHAVEI.Text)='') then
               mcinst:='Chave do Pedido a Ate '+CHAVEF.Text
            else
               mcinst:='Entre as Chaves de Pedido '+CHAVEI.Text+' ate '+CHAVEF.Text;
            form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,centra(mcinst,' ',80),mnormal);
            form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
            end;
         if lbx_codpro.Count>0 then
            FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);

         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+-----------+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|   Codigo  |und| Descricao dos Produtos                '+iif(mgrade,'| Grade/Refe','            ')+'|Qtd.Previst|Qtd.Produz |%Aprov.|Vlrs.Previs|Vlr.Produz |%Aprov.|',mreduz);
         end;
      mQtdPrev:=mQtdPrev+Qr_OP02OP2_QTDPREV.Value;
      mQtdProd:=mQtdProd+Qr_OP02OP2_QTDPROD.Value;
      MvlrPrev:=MvlrPrev+Qr_OP02VLRPREV.Value;
      mVlrProd:=mVlrProd+Qr_OP02VLRPROD.Value;
      mAprovVlr:=0;
      maproPro :=0;
      if Qr_OP02OP1_STATUS.value=2 then
         begin
         maproPro:=Qr_OP02OP2_QTDPROD.Value-Qr_Op02OP2_QTDPREV.Value;
         if (maproPro=0) and (Qr_OP02OP2_QTDPREV.AsFloat=0) then
            mAproPro:=0
         else
            begin
            try
               maproPro:=(maproPro*100)/Qr_OP02OP2_QTDPREV.Value;
            except
               maproPro:=0;
               end;
            end;
         mAprovVlr:=Qr_OP02VLRPROD.Value-Qr_OP02VLRPREV.Value;
         if (mAprovVlr=0) and (Qr_OP02VLRPREV.AsFloat=0) then
            mAprovVlr:=0
         else
            begin
            try
               mAprovVlr:=(mAprovVlr*100)/Qr_OP02VLRPREV.Value;
            except
               mAprovVlr:=0;
               end;
           end;
        end;

      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(Qr_OP02OP2_CODPRO.AsString,' ',10)+' |'
                                      +insere2(Qr_OP02PDUND.Value,' ',03)+'| '
                                      +iif(mgrade,insere2(Qr_OP02PDNOME.Value,' ',38)+'| '+insere2(Qr_OP02OP2_NUMERO.Value,' ',10)+'|',
                                       insere2(Qr_OP02PDNOME.Value,' ',50)+'|')
                                      +insere(Formatfloat(mcasind,Qr_OP02OP2_QTDPREV.Value),' ',11)+'|'
                                      +insere(FormatFloat(mcasind, Qr_OP02OP2_QTDPROD.Value),' ',11)+'|'
                                      +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|'
                                      +insere(Formatfloat(mcasind,Qr_OP02VLRPREV.Value),' ',11)+'|'
                                      +insere(FormatFloat(mcasind, Qr_OP02VLRPROD.Value),' ',11)+'|'
                                      +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);

   //+-----------+---+---------------------------------------+-----------+-----------+-----------+-------+-----------+-----------+-------+
   //|   Codigo  |und| Descricao dos Produtos                | Grade/Refe|Qtd.Previst|Qtd.Produz |%Aprov.|Vlrs.Previs|Vlr.Produz |%Aprov.|
   //|1234567890 |und| 12345678901234567890123456789012345678| 1234567890|123456.123 |123456.123 |123.12%|123456.123 |123456.123 |123.12%|
      Qr_OP02.Next;
      if Qr_OP02.Eof then
         begin
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         maproPro:=mQtdProd-mQtdPrev;
         if (mAProPro=0) and (mQtdPrev=0) then
             mAproPro:=0
         else
            begin
            try
               maproPro:=(maproPro*100)/mQtdPrev;
            except
               maproPro:=0;
            end;
            end;
         mAprovVlr:=mVlrProd-MvlrPrev;
         if (mAProVVlr=0) and (mVlrPrev=0) then
             mAproVvlr:=0
         else
            begin
            try
               mAprovVlr:=(mAprovVlr*100)/MvlrPrev;
            except
               mAprovVlr:=0;
               end;
            end;

         form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(' ',' ',10)+' |'
                                      +insere2(' ',' ',03)+'| '
                                      +iif(mgrade,insere2('-Totais','.',38)+'| '+insere2('.','.',10)+'|',
                                       insere2('-Totais','.',50)+'|')
                                      +insere(Formatfloat(mcasind, mQtdPrev),' ',11)+'|'
                                      +insere(FormatFloat(mcasind, mQtdProd),' ',11)+'|'
                                      +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|'
                                      +insere(Formatfloat(mcasind, MvlrPrev),' ',11)+'|'
                                      +insere(FormatFloat(mcasind, mVlrProd),' ',11)+'|'
                                      +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+Fim.-------+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
         if form_impres_indprofab.RDprint1.Setup then form_impres_indprofab.RDprint1.Fechar;
         form_impres_indprofab.free;
         form_impres_indprofab:=nil;
         end
      else if form_impres_indprofab.mlin>58 then
         begin
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+Continua...+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
         form_impres_indprofab.RDprint1.Novapagina;
         form_impres_indprofab.mlin:=0;
         end;
      end;
   end
else if CB_MODELO.ItemIndex=1 then
   begin
   testeform := TFrm_IndProFab(FindGlobalComponent('form_impres_indprofab'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Impres, form_impres_indprofab);
   form_impres_indprofab.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   form_impres_indprofab.mlin:=0;
   form_impres_indprofab.mpag     :=0;
   maproPro :=0;
   mAprovVlr:=0;
   mQtdPrev :=0;
   mQtdProd :=0;
   MvlrPrev :=0;
   mVlrProd :=0;
   mTotQtd  :=0;
   mTotPesoPrev:=0;
   mTotPesoProd:=0;
   mTotPerdas:=0;
   mTotPerdas_Peso:=0;
   While not Qr_OP02.Eof do
      begin
      if form_impres_indprofab.mlin=0 then
         begin
         form_impres_indprofab.mpag:=form_impres_indprofab.mpag+1;
         if mOrigemIndProFab=0 then
            form_impres_indprofab.fImprimirCabecalho(136,'Relatorio de Produtos Fabricados.')
         else
            form_impres_indprofab.fImprimirCabecalho(136,'Relatorio de Produtos Envasados.');
         form_impres_indprofab.RDprint1.impf(03,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_indprofab.mlin:=4;
         if (trim(CHAVEI.Text)<>'') or (trim(CHAVEF.Text)<>'') then
            begin
            if (trim(CHAVEF.Text)='') then
               mcinst:='Chave do Pedido a Partir de '+CHAVEI.Text
            else if (trim(CHAVEI.Text)='') then
               mcinst:='Chave do Pedido a Ate '+CHAVEF.Text
            else
               mcinst:='Entre as Chaves de Pedido '+CHAVEI.Text+' ate '+CHAVEF.Text;
            form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,centra(mcinst,' ',80),mnormal);
            form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
            end;

         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+----------+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|          |  |                                  |       |       |       |         QUANTIDADE        |             PESO          |PERDA|',mreduz);
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|  Codigo  |un| Descricao dos Produtos           | Quant.| Tempo | Peso  |  pedida |Produzida| Def.  |  pedida |Produzida|  Def  |  %  |',mreduz);
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+----------+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);


{
+----------+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);
|          |  |                                  |       |       |       |         QUANTIDADE        |             PESO          |PERDA|',mreduz);
|  Codigo  |un| Descricao dos Produtos           | Quant.| Tempo | Peso  |  pedida |Produzida| Def.  |  pedida |Produzida|  Def  |  %  |',mreduz);
|1234567890|12|1234567890123456789012345678901234|1234567|1234567|1234567|123456789|123456789|1234567|123456789|123456789|1234567| Def |',mreduz);

}
         end;

      mTotQtd :=mTotQtd+Qr_OP02QUANTIDADE.Value;

      mTotPesoPrev:=mTotPesoPrev+Qr_OP02PESOLPREV.Value;
      mTotPesoProd:=mTotPesoProd+Qr_OP02PESOPROD.Value;
      mTotPerdas:=mTotPerdas+Qr_OP02QTDPERDAS.Value;

      mAprovVlr:=0;
      maproPro :=0;
      if Qr_OP02OP1_STATUS.value=2 then
         begin

         mQtdPrev:=mQtdPrev+Qr_OP02OP2_QTDPREV.Value;
         mQtdProd:=mQtdProd+Qr_OP02OP2_QTDPROD.Value;
         MvlrPrev:=MvlrPrev+Qr_OP02VLRPREV.Value;
         mVlrProd:=mVlrProd+Qr_OP02VLRPROD.Value;

         maproPro:=Qr_OP02OP2_QTDPROD.Value-Qr_Op02OP2_QTDPREV.Value;
         if (maproPro=0) and (Qr_OP02OP2_QTDPREV.AsFloat=0) then
            mAproPro:=0
         else
            begin
            try
               maproPro:=(maproPro*100)/Qr_OP02OP2_QTDPREV.Value;
            except
               maproPro:=0;
               end;
            end;

         mAprovVlr:=Qr_OP02VLRPROD.Value-Qr_OP02VLRPREV.Value;
         if (mAprovVlr=0) and (Qr_OP02VLRPREV.AsFloat=0) then
            mAprovVlr:=0
         else
            begin
            try
               mAprovVlr:=(mAprovVlr*100)/Qr_OP02VLRPREV.Value;
            except
               mAprovVlr:=0;
               end;
            end;
         end;

      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      mTotPerdas_Peso:=mTotPerdas_Peso
                      +(Qr_OP02QTDPERDAS.Value*Qr_OP02PDPESOL.Value);


      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(Qr_OP02OP2_CODPRO.AsString+iif(mgrade,'/'+Qr_OP02OP2_NUMERO.AsString,''),' ',10)+'|'
                                      +insere2(Qr_OP02PDUND.Value,' ',02)+'|'
                                      +insere2(Qr_OP02PDNOME.Value,' ',34)+'|'
                                      +insere(Formatfloat(mcasind, Qr_OP02QUANTIDADE.Value),' ',07)+'|'

                                      +insere(FormatDateTime('hh:nn',Qr_OP02PDTEMPOFAB.Value),' ',07)+'|'
                                      +insere(FormatFloat('##0.000',Qr_OP02PDPESOL.Value),' ',07)+'|'

                                      +insere(Formatfloat(mcasind,Qr_OP02OP2_QTDPREV.Value),' ',09)+'|'
                                      +insere(FormatFloat(mcasind, Qr_OP02OP2_QTDPROD.Value),' ',09)+'|'
                                      +insere(Formatfloat(mcasind, Qr_OP02QTDPERDAS.Value),' ',07)+'|'

                                      +insere(Formatfloat('##0.000',Qr_OP02PESOLPREV.Value ),' ',09)+'|'
                                      +insere(Formatfloat('##0.000',Qr_OP02PESOPROD.Value ),' ',09)+'|'
                                      +insere(Formatfloat('##0.000',Qr_OP02QTDPERDAS.Value*Qr_OP02PDPESOL.Value),' ',07)+'|'

                                      +insere(FormatFloat('##0.0', (maproPro*-1)),' ',05)+'|',mreduz);




{
+----------+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);
|          |  |                                  |       |       |       |         QUANTIDADE        |             PESO          |PERDA|',mreduz);
|  Codigo  |un| Descricao dos Produtos           | Quant.| Tempo | Peso  |  pedida |Produzida| Def.  |  pedida |Produzida|  Def  |  %  |',mreduz);
|1234567890|12|1234567890123456789012345678901234|1234567|1234567|1234567|123456789|123456789|1234567|123456789|123456789|1234567| Def |',mreduz);

}

      Qr_OP02.Next;
      if Qr_OP02.Eof then
         begin
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         maproPro:=mQtdProd-mQtdPrev;
         if (mAProPro=0) and (mQtdPrev=0) then
             mAproPro:=0
         else
            begin
            try
               maproPro:=(maproPro*100)/mQtdPrev;
            except
               maproPro:=0;
            end;
            end;
         mAprovVlr:=mVlrProd-MvlrPrev;
         if (mAProVVlr=0) and (mVlrPrev=0) then
             mAproVvlr:=0
         else
            begin
            try
               mAprovVlr:=(mAprovVlr*100)/MvlrPrev;
            except
               mAprovVlr:=0;
               end;
            end;


      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(' ','.',10)+'|'
                                      +insere2(' ',' ',02)+'|'
                                      +insere2(' - Totais','.',34)+'|'

                                      +insere(Formatfloat(mcasind, mTotQtd),' ',07)+'|'

                                      +insere(' ',' ',07)+'|'
                                      +insere(' ',' ',07)+'|'

                                      +insere(Formatfloat(mcasind, mQtdPrev),' ',09)+'|'
                                      +insere(FormatFloat(mcasind, mQtdProd),' ',09)+'|'
                                      +insere(Formatfloat(mcasind, mTotPerdas),' ',07)+'|'

                                      +insere(Formatfloat('##0.000',mTotPesoPrev ),' ',09)+'|'
                                      +insere(Formatfloat('##0.000',mTotPesoProd ),' ',09)+'|'
                                      +insere(Formatfloat('##0.000',mTotPerdas_Peso),' ',07)+'|'

                                      +insere(FormatFloat('##0.0', (maproPro*-1)),' ',05)+'|',mreduz);




         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+fim-------+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);
         if form_impres_indprofab.RDprint1.Setup then form_impres_indprofab.RDprint1.Fechar;
         form_impres_indprofab.free;
         form_impres_indprofab:=nil;
         end
      else if form_impres_indprofab.mlin>58 then
         begin
         form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
         form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+Continua..+--+----------------------------------+-------+-------+-------+---------------------------+---------------------------+-----+',mReduz);
         form_impres_indprofab.RDprint1.Novapagina;
         form_impres_indprofab.mlin:=0;
         end;
      end;
   end
else if CB_MODELO.ItemIndex=2 then
  begin
  testeform := TFrm_IndProFab(FindGlobalComponent('form_impres_indprofab'));
  if (testeform=nil)  then
    Application.CreateForm(Tfrm_Impres, form_impres_indprofab);
  form_impres_indprofab.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  form_impres_indprofab.mlin:=0;
  form_impres_indprofab.mpag:=0;
  maproPro :=0;
  mAprovVlr:=0;
  mQtdPrev :=0;
  mQtdProd :=0;
  MvlrPrev :=0;
  mVlrProd :=0;
  if not Qr_OP02.IsEmpty then
    begin
    if form_impres_indprofab.mlin=0 then
      begin
      form_impres_indprofab.mpag:=form_impres_indprofab.mpag+1;
      form_impres_indprofab.RDprint1.impf(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
      if mOrigemIndProFab=0 then
        form_impres_indprofab.RDprint1.ImpF(02,01,insere2('Relatorio de Produtos Fabricados. ',' ',60)+'Pagina: '+Formatfloat('0000',form_impres_indprofab.mpag),mnormal)
      else
        form_impres_indprofab.RDprint1.ImpF(02,01,insere2('Relatorio de Produtos Envasados. ',' ',60)+'Pagina: '+Formatfloat('0000',form_impres_indprofab.mpag),mnormal);
      form_impres_indprofab.RDprint1.impf(03,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
      form_impres_indprofab.mlin:=4;
      if (trim(CHAVEI.Text)<>'') or (trim(CHAVEF.Text)<>'') then
        begin
        if (trim(CHAVEF.Text)='') then
          mcinst:='Chave do Pedido a Partir de '+CHAVEI.Text
        else if (trim(CHAVEI.Text)='') then
          mcinst:='Chave do Pedido a Ate '+CHAVEF.Text
        else
          mcinst:='Entre as Chaves de Pedido '+CHAVEI.Text+' ate '+CHAVEF.Text;
        form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,centra(mcinst,' ',80),mnormal);
        form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
        end;
      if lbx_codpro.Count>0 then
        FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
      form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+-----------+---+---------------------------------------------------+------------+------------------+-----------+-----------+-------+',mReduz);
      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|   Codigo  |UND| Descricao dos Produtos                            |   Lote     |  Data de Venc.   |Qtd.Previst|Qtd.Produz |%Aprov.|',mreduz);
      end;
    end;
//  +-----------+---+---------------------------------------------------+------------+------------------+-----------+-----------+-------+'
//  |   Codigo  |UND| Descricao dos Produtos                            |   Lote     |  Data de Venc.   |Qtd.Previst|Qtd.Produz |%Aprov.|'
  While not Qr_OP02.Eof do
    begin
    mQtdPrev:=mQtdPrev+Qr_OP02OP2_QTDPREV.Value;
    mQtdProd:=mQtdProd+Qr_OP02OP2_QTDPROD.Value;
    MvlrPrev:=MvlrPrev+Qr_OP02VLRPREV.Value;
    mVlrProd:=mVlrProd+Qr_OP02VLRPROD.Value;
    maproPro :=0;
    if Qr_OP02OP1_STATUS.value=2 then
      begin
      if Qr_OP02OP2_QTDPREV.AsFloat > 0 then
        maproPro:=(Qr_OP02OP2_QTDPROD.Value/Qr_Op02OP2_QTDPREV.Value)*100
      else
        maproPro:=(Qr_OP02OP2_QTDPROD.Value/1)*100;
      if Qr_OP02VLRPREV.Value > 0 then
        mAprovVlr:=(Qr_OP02VLRPROD.Value/Qr_OP02VLRPREV.Value)*100
      else
        mAprovVlr:=(Qr_OP02VLRPROD.Value/1)*100;
      end;
    form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
    form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(Qr_OP02OP2_CODPRO.AsString,' ',10)+' |'
                                       +insere2(Qr_OP02PDUND.Value,' ',03)+'| '
                                       +insere2(Qr_OP02PDNOME.Value,' ',50)+'|'
                                       +insere(Qr_OP02OP1_LOTE.AsString,' ',12)+'|'
                                       +'    '+insere(FormatDateTime('DD/MM/YYYY',Qr_OP02OP1_DATAVEN.AsDateTime),' ',10)+'    '+'|'
                                       +insere(Formatfloat(mcasind,Qr_OP02OP2_QTDPREV.Value),' ',11)+'|'
                                       +insere(Formatfloat(mcasind,Qr_OP02OP2_QTDPROD.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|',mreduz);
// +-----------+---+---------------------------------------------------+------------+------------------+-----------+-----------+-------+'
// |   Codigo  |UND| Descricao dos Produtos                            |   Lote     |  Data de Venc.   |Qtd.Previst|Qtd.Produz |%Aprov.|'
// |1234567890 |und| 12345678901234567890123456789012345678901234567890|123456789012|1234DD/MM/YYYY1234|123456.1234|123456.1234|123.12%|'
    Qr_OP02.Next;
    if Qr_OP02.Eof then
      begin
      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      maproPro:=mQtdProd-mQtdPrev;
      if mQtdPrev > 0 then
        maproPro:=(mQtdProd/mQtdPrev)*100
      else
        maproPro:=(mQtdProd/1)*100;
      if MvlrPrev > 0 then
        mAprovVlr:=(mVlrProd/MvlrPrev)*100
      else
        mAprovVlr:=(mVlrProd/1)*100;
      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,'|'+insere2(' ',' ',10)+' |'
                                         +insere2(' ',' ',03)+'| '
                                         +insere2('-Totais','.',50)+'| '
                                         +insere2(' ',' ',11)+'| '
                                         +insere2(' ',' ',17)+'| '
                                         +insere(Formatfloat(mcasind, mQtdPrev),' ',10)+'|'
                                         +insere(FormatFloat(mcasind, mQtdProd),' ',11)+'|'
                                         +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);
      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+Fim.-------+---+---------------------------------------------------+------------+------------------+-----------+-----------+-------+',mReduz);
      if form_impres_indprofab.RDprint1.Setup then
        form_impres_indprofab.RDprint1.Fechar;
      form_impres_indprofab.free;
      form_impres_indprofab:=nil;
      end
    else if form_impres_indprofab.mlin>58 then
      begin
      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      form_impres_indprofab.RDprint1.impf(form_impres_indprofab.mlin,01,'+Continua...+---+---------------------------------------------------+------------+------------------+-----------+-----------+-------+',mReduz);
      form_impres_indprofab.RDprint1.Novapagina;
      form_impres_indprofab.mlin:=0;
      end;
    end;
  end
else if CB_MODELO.ItemIndex=3 then
   begin

   lblmod04_nomemp.Caption:=DM1.Tb_EmpRAZAO_CAB.Value;
   lblmod04_dathor.Caption:='Data: '+FormatDatetime(fdt2, Date)+' Hora: '+FormatDatetime(fhr, time);
   lblmod04_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);

   RLBandM004_Cab.Borders.DrawLeft:=true;
   RLBandM004_Cab.Borders.DrawRight:=true;
   RLBandM004_Cab.Borders.DrawTop:=true;
   RLBandM004_Cab.Borders.DrawBottom:=true;
   rlmod04_cabdet.Borders.DrawLeft:=true;
   rlmod04_cabdet.Borders.DrawRight:=true;
   rlmod04_cabdet.Borders.DrawBottom:=true;
   lblmod04cab_codsg.Borders.DrawRight:=true;
   lblmod04cab_nomsg.Borders.DrawRight:=true;
   lblmod04cab_qtdprod.Borders.DrawRight:=true;
   lblmod04cab_totfab.Borders.DrawRight:=true;

   txtmod04cab_codsg.Borders.DrawRight:=true;
   txtmod04cab_nomsg.Borders.DrawRight:=true;
   txtmod04cab_qtdprod.Borders.DrawRight:=true;
   txtmod04cab_totfab.Borders.DrawRight:=true;

   totmod04cab_codsg.Borders.DrawRight:=true;
   totmod04cab_nomsg.Borders.DrawRight:=true;
   totmod04cab_qtdprod.Borders.DrawRight:=true;
   totmod04cab_totfab.Borders.DrawRight:=true;
   totmod04cab_totfab.Borders.DrawRight:=true;
   rlmod04_rod.Borders.DrawTop:=true;
   RLMod04_det.Borders.DrawRight:=true;
   RLMod04_det.Borders.DrawLeft:=true;
   rlmod04_sum.Borders.DrawTop:=true;
   rlmod04_sum.Borders.DrawBottom:=true;
   rlmod04_sum.Borders.DrawLeft:=true;
   rlmod04_sum.Borders.DrawRight:=true;

   Qr_Mod04OP2_QTDPROD.DisplayFormat:=mcasqtd;
   Qr_Mod04OP2_QTDPREV.DisplayFormat:=mcasqtd;
   Qr_Mod04OP2_VLRFABPROD.DisplayFormat:=mcasas;
   Qr_Mod04OP2_VLRCUSPROD.DisplayFormat:=mcasas;


   mTotProdCus:=0;
   mTotProdFab:=0;
   mQtdProd   :=0;

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin3(1,'CADOP02','OP2_CODEMP','OP1_CODEMP','OP2_CODIGO','OP1_CODIGO','OP2_FABENV','OP1_FABENV');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
{
   fInnerJoin3(1,'CADOP03','OP3_CODEMP','OP1_CODEMP','OP3_CODIGO','OP1_CODIGO','OP3_FABENV','OP1_FABENV');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
}
   fInnerJoin(0,'CADPRO','PDCODEMP','OP2_CODEMP','PDCODPRO','OP2_CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');

   Qr_Mod04.Close;
   Qr_Mod04.SQL.Clear;
   Qr_Mod04.SQL.Add('Select sum(DECODE(OP1_STATUS,2,OP2_QTDPROD,0)) as OP2_QTDPROD '
                   +',sum(OP2_QTDPREV) as OP2_QTDPREV '
                   +',sum(ROUND((PDPCOFAB*OP2_QTDPREV),2)) as VLRFABPREV '
                   +',sum(DECODE(OP1_STATUS,2,ROUND( (PDPCOFAB*OP2_QTDPROD),2),0)) as OP2_VLRFABPROD '
                   +',sum(ROUND((PDPRECOC*OP2_QTDPREV),2)) as VLRCUSPREV '
                   +',sum(DECODE(OP1_STATUS,2,ROUND( (PDPRECOC*OP2_QTDPROD),2),0)) as OP2_VLRCUSPROD '
                   +' ,count(*) as QUANTIDADE '
                   +' , RCODRAM,RNOME from CADOP01 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +'  OP1_STATUS<9');
   if CB_CONFIRMADO.Checked then
      Qr_Mod04.SQL.Add(' and OP1_STATUS>0 ');
   if mOrigemIndProFab=1 then
      Qr_Mod04.SQL.Add(' and OP1_FABENV=2')
   else
      Qr_OP02.SQL.Add(' and OP1_FABENV<>2');

   if CB_TPPESQ.ItemIndex=0 then
      mDataPesq:='OP1_DATAPREV'
   else
      mDataPesq:='OP1_DATA';

   if Trim(MDT1.Text)<>'/  /' then
      Qr_Mod04.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Mod04.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   if trim(CHAVEI.Text)<>'' then
      Qr_Mod04.SQL.Add(' and   OP1_CODIGO>=0'+Trim(CHAVEI.Text));

   mcinst2:=fItensListBox(0,lbx_codmat,OMITIR_MAT);
   if trim(mcinst2)<>'' then
     begin
     Qr_Mod04.SQL.Add(' and OP3_CODMAT '+mcinst2);
     mcinst2:='';
     end;


   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
     begin
     Qr_Mod04.SQL.Add(' and PDCODPRO '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
     begin
     Qr_Mod04.SQL.Add(' and PDCODGRU '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
   if trim(mcinst2)<>'' then
     begin
     Qr_Mod04.SQL.Add(' and PDCODTIP '+mcinst2);
     mcinst2:='';
     end;

   mcinst2:=fItensListBox(0,lbx_codsgru,OMITIR_SGRU);
   if trim(mcinst2)<>'' then
     begin
     Qr_Mod04.SQL.Add(' and PDCODRAM '+mcinst2);
     mcinst2:='';
     end;

   if trim(CHAVEF.Text)<>'' then
      Qr_Mod04.SQL.Add(' and   OP1_CODIGO<=0'+Trim(CHAVEF.Text));
   Qr_Mod04.SQL.Add(' group by  RNOME,RCODRAM ');
   if CB_ORDEM.ItemIndex=0 then
      Qr_Mod04.SQL.Add(' order by RNOME,RCODRAM ')
   else if CB_ORDEM.ItemIndex=1 then
      Qr_Mod04.SQL.Add(' order by RNOME,RCODRAM ');


   try
      Qr_Mod04.Open;
   except
      Qr_Mod04.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   if Qr_Mod04.IsEmpty then
      begin
      fMensagem('Não ha nada a ser impresso!',0,['0'],0);
      bbImprimir.Enabled:=true;
      exit;
      end;
   rlModelo04.PreviewModal;
   end;
bbImprimir.Enabled:=true;
end;

procedure TFrm_IndProFab.bbsairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndProFab.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_IndProFab.FormCreate(Sender: TObject);
begin
tsMod04.TabVisible:=false;
if mOrigemIndProFab=0 then
   begin
   Frm_IndProFab.Caption:='Produtos Fabricados em um Determinado Periodo';
   lbl_cab.Caption:='Relatorio de Produtos Fabricados';
   CB_TPPESQ.Items.Clear;
   CB_TPPESQ.Items.Add('Fabricação');
   CB_TPPESQ.Items.Add('Ordem de Produção');
   end
else
   begin
   Frm_IndProFab.Caption:='Produtos Envasados em um Determinado Periodo';
   lbl_cab.Caption:='Relatorio de Produtos Envasados';
   CB_TPPESQ.Items.Clear;
   CB_TPPESQ.Items.Add('Envase');
   CB_TPPESQ.Items.Add('Ordem de Envase');
   end;

if flfilpad(0,'_INDPROFAB','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CONFIRMADO',[]) then
      CB_CONFIRMADO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TPPESQ',[]) then
      CB_TPPESQ.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODELO',[]) then
      CB_MODELO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;



end;

procedure TFrm_IndProFab.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum2(CHAVEI.Text);
end;

procedure TFrm_IndProFab.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum2(CHAVEF.Text);
end;

procedure TFrm_IndProFab.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_INDPROFAB','');
fGravaPadroes(0,'CB_CONFIRMADO'   ,'checked'   ,'_INDPROFAB',iif(CB_CONFIRMADO.Checked,'true','false'));
fGravaPadroes(0,'CB_TPPESQ'       ,'itemindex' ,'_INDPROFAB',IntTostr(CB_TPPESQ.ItemIndex));
fGravaPadroes(0,'CB_ORDEM'        ,'itemindex' ,'_INDPROFAB',IntTostr(CB_ORDEM.ItemIndex));
fGravaPadroes(0,'CB_MODELO'       ,'itemindex' ,'_INDPROFAB',IntTostr(CB_MODELO.ItemIndex));
fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_IndProFab.CODPROExit(Sender: TObject);
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
      codpro.setfocus;
      end;
   end;
end;

procedure TFrm_IndProFab.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;
end;

procedure TFrm_IndProFab.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

function tFrm_IndProFab.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_indprofab.mlin:=form_impres_indprofab.mlin+1;
      form_impres_indprofab.RDprint1.ImpF(form_impres_indprofab.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;


procedure TFrm_IndProFab.edt_codgruExit(Sender: TObject);
begin
edt_codgru.Text:=fdeixanum2(edt_codgru.Text);
if Trim(edt_codgru.Text)<>'' then
   begin
   if not flcadGPro(1,0,edt_codgru.Text) then
      begin
      fmensagem('Grupo nao Cadastrado!',0,['0'],0);
      edt_codgru.SetFocus;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.ASSTRING))
                          +' - '+DM1.Tb_GproGRNOME.AsString);
      edt_codgru.text := '';
      edt_codgru.setfocus;
      end;
   end;
end;

procedure TFrm_IndProFab.edt_codgruKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codgru.Text:=fChamaGPro(0,'IndProFab',key);
   key:=#0;
   edt_codgruExit(Self);
   end;
end;

procedure TFrm_IndProFab.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codgru.ItemIndex>=0 then
    lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);


end;

procedure TFrm_IndProFab.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codtip.ItemIndex>=0 then
    lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);
end;

procedure TFrm_IndProFab.lbx_codsgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codsgru.ItemIndex>=0 then
    lbx_codsgru.Items.Delete(lbx_codsgru.ItemIndex);
end;

procedure TFrm_IndProFab.edt_codtipExit(Sender: TObject);
begin
edt_codtip.Text:=fdeixanum2(edt_codtip.Text);
if Trim(edt_codtip.Text)<>'' then
   begin
   if not flcadtpro(1,0,edt_codtip.Text) then
      begin
      fmensagem('Tipo do produto nao Cadastrado!',0,['0'],0);
      edt_codtip.SetFocus;
      end
   else
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.ASSTRING))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      edt_codtip.text := '';
      edt_codtip.setfocus;
      end;
   end;
end;

procedure TFrm_IndProFab.edt_codtipKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codtip.Text:=fChamaTipPro(0,'IndProFab',key);
   key:=#0;
   edt_codtipExit(Self);
   end;
end;

procedure TFrm_IndProFab.edt_codsgruExit(Sender: TObject);
begin
edt_codsgru.Text:=fdeixanum2(edt_codsgru.Text);
if Trim(edt_codsgru.Text)<>'' then
   begin
   if not flcadram(1,0,edt_codsgru.Text) then
      begin
      fmensagem('Sub-Grupo do Produto nao Cadastrado!',0,['0'],0);
      edt_codsgru.SetFocus;
      end
   else
      begin
      lbx_codsgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_RamRCODRAM.ASSTRING))
                                    +' - '+DM1.Tb_RamRNOME.AsString);
      edt_codsgru.text := '';
      edt_codsgru.setfocus;
      end;
   end;
end;

procedure TFrm_IndProFab.edt_codsgruKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codsgru.Text:=fChamaRamPro(0,'IndProFab',key);
   key:=#0;
   edt_codsgruExit(Self);
   end;
end;

procedure TFrm_IndProFab.CODMATExit(Sender: TObject);
begin
CODMAT.Text:=fdeixanum2(CODMAT.Text);
if Trim(CODMAT.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODMAT.Text) then
      begin
      fmensagem('Materia Prima nao Cadastrado!',0,['0'],0);
      CODMAT.SetFocus;
      end
   else
      begin
      lbx_codmat.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      CODMAT.text := '';
      CODMAT.setfocus;
      end;
   end;
end;

procedure TFrm_IndProFab.CODMATKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODMAT.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODMATExit(Self);
   end;

end;

procedure TFrm_IndProFab.lbx_codmatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codmat.ItemIndex>=0 then
    lbx_codmat.Items.Delete(lbx_codmat.ItemIndex);
end;

procedure TFrm_IndProFab.RLMod04_detAfterPrint(Sender: TObject);
begin
    mTotProdCus:=mTotProdCus+Qr_Mod04OP2_VLRCUSPROD.AsFloat;
    mTotProdFab:=mTotProdFab+Qr_Mod04OP2_VLRFABPROD.AsFloat;
    mQtdProd   :=mQtdProd+Qr_Mod04OP2_QTDPROD.AsFloat;

end;

procedure TFrm_IndProFab.rlmod04_sumBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
totmod04cab_codsg.Caption:='';
totmod04cab_nomsg.Caption:='-Total Geral.......';
totmod04cab_qtdprod.Caption:=FormatFloat(mcasqtd, mQtdProd);
totmod04cab_totfab.Caption:=FormatFloat(mcasqtd, mTotProdFab);
totmod04cab_totcus.Caption:=FormatFloat(mcasqtd, mTotProdCus);

end;

end.
