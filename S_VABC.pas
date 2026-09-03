unit S_VABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, ComCtrls, CheckLst,S_DM2, S_SelEmp;

type
  TFrm_VABC = class(TForm)
    Panel2: TPanel;
    Qr_Ven: TQuery;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_VenVNOME: TStringField;
    Qr_VenTOTAL: TFloatField;
    Qr_VenSEMCOM: TFloatField;
    Qr_VenFRETE: TFloatField;
    Qr_VenICMSR: TFloatField;
    Qr_VenP1CODVEN: TFloatField;
    pc_filtros: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    Label6: TLabel;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    Label7: TLabel;
    CODSUP: TEdit;
    OMITIR_SUP: TCheckBox;
    lbx_codsup: TListBox;
    Label5: TLabel;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    RG_ORDEM: TRadioGroup;
    CB_EmiDoc: TCheckBox;
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label1: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_ICMSRET: TCheckBox;
    Label2: TLabel;
    CODASSE: TEdit;
    lbx_codasse: TListBox;
    OMITIR_ASS: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODASSEKeyPress(Sender: TObject; var Key: Char);
    procedure CODASSEExit(Sender: TObject);
    procedure lbx_codasseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_VABC: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_VABC: TFrm_VABC;

implementation


{$R *.dfm}

procedure TFrm_VABC.bbImprimirClick(Sender: TObject);
var
mperiodo:String;
mordem: Integer;
mordemp: Array [0..3] of string;
mtoti,mtotsc,mtotb: Real;
mtotg, mperc: Real;
mQtdComMov,mQtdSemMov: Integer;

begin
mordemp[0]:='VNOME';
mordemp[1]:='P1CODVEN';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

if CB_TIPOPESQ.ItemIndex=0 then
  pdatapesq:='P1DATDOC'
else
  pdatapesq:='P1DATAP';

Qr_Ven.Close;
Qr_Ven.SQl.Clear;
Qr_Ven.SQl.Add(' select VNOME, P1CODVEN, sum(TOTAL) as TOTAL, '
              +' sum(SEMCOM) as SEMCOM, sum(FRETE) as FRETE, sum(ICMSR) as ICMSR '
              +' from ( ');

Qr_Ven.SQl.Add('Select VNOME,P1CODVEN, 0 as TOTAL ,0 as SEMCOM,'
              +'       sum(P1VALFRE) as FRETE, '
              +'       0 as ICMSR from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if CB_EmiDoc.Checked then
   Qr_Ven.SQL.Add('       and P1EMIDOC=1 ');

if Trim(MDT1.Text)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pdatapesq,true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pdatapesq,false,StrToDate(MDT2.Text)));

mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,Lbx_CodSup,OMITIR_SUP);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODASSE '+mcinst2);

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P1TIPO '+mcinst2);

Qr_Ven.SQL.Add(' Group by VNOME,P1CODVEN');

Qr_Ven.SQL.Add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

if CB_ICMSRET.Checked then
  mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(nvl(P2TOTLIQ,0)+nvl(P2ICMSR,0))*-1,(nvl(P2TOTLIQ,0)+nvl(P2ICMSR,0))))'
else
  mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(nvl(P2TOTLIQ,0))*-1,(nvl(P2TOTLIQ,0))))';

Qr_Ven.SQl.Add('Select VNOME,P1CODVEN,'+mcampo_vlr+' as TOTAL ,sum(DECODE(P2SEMCOM,NULL,0,P2SEMCOM)) as SEMCOM,'
              +'       0 as FRETE, '
              +'       sum(nvl(P2ICMSR,0)) as ICMSR from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if CB_EmiDoc.Checked then
   Qr_Ven.SQL.Add('       and P1EMIDOC=1 ');

if Trim(MDT1.Text)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pdatapesq,true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pdatapesq,false,StrToDate(MDT2.Text)));

mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,Lbx_CodSup,OMITIR_SUP);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODASSE '+mcinst2);

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P1TIPO '+mcinst2);

Qr_Ven.SQL.Add(' Group by VNOME,P1CODVEN');

Qr_Ven.SQL.Add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');

mcampo_vlr:='sum(P2STOTLIQ)';
if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';

mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(nvl(P2STOTLIQ,0))*-1,(nvl(P2STOTLIQ,0))))';

fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

Qr_Ven.SQl.Add('Select VNOME,P1CODVEN,'+mcampo_vlr+' as TOTAL ,0 as SEMCOM,'
              +'       0 as FRETE, '
              +'       0 as ICMSR from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if CB_EmiDoc.Checked then
   Qr_Ven.SQL.Add('       and P1EMIDOC=1 ');

if Trim(MDT1.Text)<>'/  /' then
   Qr_Ven.Sql.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Ven.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT2.Text))+chr(39));

mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,Lbx_CodSup,OMITIR_SUP);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODASSE '+mcinst2);

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P1TIPO '+mcinst2);

Qr_Ven.SQL.Add(' Group by VNOME,P1CODVEN');

Qr_Ven.SQL.Add(' )Group by VNOME,P1CODVEN');
Qr_Ven.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
try
   Qr_ven.Open;
except
   Qr_Ven.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_VABC(FindGlobalComponent('form_impres_VABC'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_VABC);

form_impres_VABC.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtoti :=0;
mtotsc:=0;
mtotb :=0;
form_impres_VABC.mpag:=0;
form_impres_VABC.mlin:=0;
mtotg:=0;
mQtdComMov:=0;
mQtdSemMov:=0;

While not Qr_Ven.Eof do
   begin
   mtotg:=mtotg+Qr_VenTOTAL.Value-(Qr_VenSEMCOM.Value+Qr_VenICMSR.Value+Qr_VenFRETE.Value);
   Qr_Ven.Next;
   end;
Qr_Ven.First;
While not Qr_Ven.Eof do
   begin
   if form_impres_VABC.mlin=0 then
      begin
      form_impres_VABC.mpag:=form_impres_VABC.mpag+1;
      form_impres_VABC.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_VABC.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',form_impres_VABC.mpag),mnormal);
      form_impres_VABC.RDprint1.ImpF(02,01,'Relatorio de Vendas por Vendedor.',mnormal);
      form_impres_VABC.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_VABC.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_VABC.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_VABC.mlin:=4;

      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
      if lbx_codcli.Count>0 then
         FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
      if lbx_codasse.Count>0 then
         FImprimeTitulo('Assessor',lbx_codasse,OMITIR_ASS);


      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'+----+-----+------------------------------+-----------+----------+----------+----------+-------+',m12ccp);
      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'|Ord.|Códig|Nome do Vendedor              |Tot. Pedido|Pr.S/Comis|Imp./Frete|Tt.Liquido|Percent|',m12ccp);
      end;
   mordem:=mordem+1;
   form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
   try
      mperc:=((Qr_VenTOTAL.Value-(Qr_VenSEMCOM.Value+Qr_VenICMSR.Value+Qr_VenFRETE.Value))*100)/mtotg;
   except
      mperc:=0;
      end;
   form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'|'+FormatFloat('0000',mordem)
                           +'|'+Formatfloat('00000',Qr_VenP1CODVEN.Value)
                           +'|'+insere2(Qr_VenVNOME.Value,' ',30)+'|'
                           +insere(FormatFloat(mcasas, Qr_VenTOTAL.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Qr_VenSEMCOM.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasas, Qr_VenFRETE.Value+Qr_VenICMSR.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasas, Qr_VenTOTAL.Value-(Qr_VenSEMCOM.Value+Qr_VenICMSR.Value+Qr_VenFRETE.Value)),' ',10)+'|'
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'%|',m12ccp);
   mtoti :=mtoti +Qr_VenICMSR.Value+Qr_VenFRETE.Value;
   mtotsc:=mtotsc+Qr_VenSEMCOM.Value;
   mtotb :=mtotb +Qr_VenTOTAL.Value;
   if Qr_VenTOTAL.AsFloat>0 then
      mQtdComMov:=mQtdComMov+1
   else
      mQtdSemMov:=mQtdSemMov+1;

   Qr_Ven.Next;
   if Qr_Ven.Eof then
      begin
      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'|    '
                           +'|     '
                           +'|'+insere2('Total','.',30)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',11)+'|'
                           +insere(FormatFloat(mcasas, mtotsc),' ',10)+'|'
                           +insere(FormatFloat(mcasas, mtoti),' ',10)+'|'
                           +insere(FormatFloat(mcasas, mtotb-(mtotsc+mtoti)),' ',10)+'|'
                           +insere('100.00',' ',6)+'%|',m12ccp);
      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'+Fim.+-----+------------------------------+-----------+----------+----------+----------+-------+',m12ccp);
      end
   else if form_impres_VABC.mlin>58 then
      begin
      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'+Continua...------------------------------+-----------+----------+----------+----------+-------+',m12ccp);
      form_impres_VABC.RDprint1.Novapagina;
      form_impres_VABC.mlin:=0;
      end;
   end;
form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,'Foram impressos: '+Inttostr(mQtdComMov+mQtdSemMov)+' Sendo '+IntToStr(mQtdComMov)+' com compras e '+IntToStr(mQtdSemMov)+' sem compras.'+' Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);

if form_impres_VABC.RDprint1.Setup then form_impres_VABC.RDprint1.Fechar;
form_impres_VABC.free;
form_impres_VABC:=nil;

end;

procedure TFrm_VABC.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_VABC.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_VABC.FormCreate(Sender: TObject);
var
x: Integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1] := TRUE;

RG_ORDEM.itemIndex:=0;
MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text:=FormatDatetime(fdt2, date);

if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=true;
   OMITIR_VEN.Enabled:=true;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

if log_codsup=0 then
   begin
   CODSUP.Enabled    :=true;
   lbx_codsup.Enabled:=true;
   OMITIR_SUP.Enabled:=true;
   end
else
   begin
   CODSUP.Enabled    :=false;
   lbx_codsup.Enabled:=false;
   OMITIR_SUP.Enabled:=false;
   CODSUP.Text       :=FloatToStr(log_codsup);
   CODSUPExit(self);
   end;

end;

procedure TFrm_VABC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_VABC.CODVENKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_VABC.CODVENExit(Sender: TObject);
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
      if codven.Enabled then
         codven.SetFocus;
      end;
   end;

end;

procedure TFrm_VABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_VABC.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      fmensagem('Supervisor não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);

      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;

end;

procedure TFrm_VABC.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_proabc',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_VABC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_VABC.CODCLIExit(Sender: TObject);
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
      begin
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_VABC.RG_TIPOPEDClick(Sender: TObject);
var x:integer;
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_VABC.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_VABC.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_VABC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;


function tFrm_VABC.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_VABC.mlin:=form_impres_VABC.mlin+1;
      form_impres_VABC.RDprint1.ImpF(form_impres_VABC.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;
end;


procedure TFrm_VABC.CODASSEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODASSE.Text:=fChamaAssessor(0,'frm_proabc',Key);
   if trim(CODASSE.Text)<>'' then
      CODASSEExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_VABC.CODASSEExit(Sender: TObject);
begin
CODASSE.Text:=fdeixanum2(CODASSE.Text);
if Trim(CODASSE.Text)<>'' then
   begin
   if not flcadassessor(1,0,CODASSE.Text) then
      begin
      fmensagem('Assessor não Cadastrado!',0,['0'],0);
      CODASSE.SetFocus;
      end
   else
      begin
      lbx_codasse.Items.Add(FormatFloat('0000000',StrToFloat(DM2.Tb_AssessorCACODASS.ASSTRING))
                                    +' - '+DM2.Tb_AssessorCARAZAO.Value);

      CODASSE.text := '';
      if CODASSE.Enabled then
         CODASSE.SetFocus;
      end;
   end;


end;

procedure TFrm_VABC.lbx_codasseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codasse.ItemIndex>=0 then
      lbx_codasse.Items.Delete(lbx_codasse.ItemIndex);

end;

procedure TFrm_VABC.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
