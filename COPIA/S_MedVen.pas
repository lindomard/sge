unit S_MedVen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons,S_Sup, DB, DBTables,FUNC, S_SelEmp,
  ExtCtrls,S_Impres, ComCtrls, CheckLst,S_Ven,S_for,S_Uf,S_Loc,S_GFor,s_lerarq_geral;

type
  TFrm_MedVen = class(TForm)
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ven: TQuery;
    RG_ORDEM: TRadioGroup;
    Qr_VenVNOME: TStringField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    Qr_VenSCOMMES01: TFloatField;
    Qr_VenSCOMMES02: TFloatField;
    Qr_VenSCOMMES03: TFloatField;
    Qr_VenFREMES01: TFloatField;
    Qr_VenFREMES02: TFloatField;
    Qr_VenFREMES03: TFloatField;
    Qr_VenICMSRMES01: TFloatField;
    Qr_VenICMSRMES02: TFloatField;
    Qr_VenICMSRMES03: TFloatField;
    Qr_VenP1CODVEN: TFloatField;
    CB_EmiDoc: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    Label5: TLabel;
    CODGFOR: TEdit;
    OMITIR_GFOR: TCheckBox;
    lbx_codgfor: TListBox;
    Label4: TLabel;
    CB_FORCAR: TCheckBox;
    Label7: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_ICMSRET: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPExit(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_medven: Tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;     
  end;

var
  Frm_MedVen: TFrm_MedVen;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mtabtemp: String;

implementation

uses S_C, S_DM4;

{$R *.dfm}

procedure TFrm_MedVen.FormCreate(Sender: TObject);
var
x: Integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0]:=true;

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

procedure TFrm_MedVen.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedVen.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mtotal,mmedia, mperc: Real;




begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   MessageDlg('Mês Inválido!',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

mes03:=StrToInt('0'+Trim(MES.Text));
ano03:=StrToInt('0'+Trim(ANO.Text));
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
x:=StrToInt('0'+Trim(mes.Text));
while true do
   begin
   mmest:=FormatDateTime('mm',StrTodate(mdt2)+1);
   if StrToInt('0'+mmest)<>x then
      break;
   mdt2:=FormatDateTime(fdt2,StrToDate(mdt2)+1);
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
if (lbx_coduf.Items.Count>0) or (lbx_codloc.items.Count>0) then
    begin
    if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
    fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
    end;

if CB_ICMSRET.Checked then
   mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ+P2ICMSR)*(-1),P2TOTLIQ+P2ICMSR))'
else
   mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ*(-1),P2TOTLIQ)';

mcampo_semcom :='DECODE(P1TIPO_ENTSAI,1,p2semcom*-1,p2semcom)';
mcampo_icmsr  :='DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR)';
mcampo_valfre :='DECODE(P1TIPO_ENTSAI,1,(P2SEMCOM-P2SEMCOM)*-1,P2SEMCOM-P2SEMCOM)';

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if CB_EmiDoc.Checked then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';

if lbx_codgfor.Items.Count>0 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
   end;
{
  mCampoTotall:='(P2TOTLIQ-P2DESCRAT)';
   mCampoSemcom:='P2SEMCOM';
   mCampoValFre:='P2SEMCOM-P2SEMCOM';
   mCampoIcmsr :='P2ICMSR';
   end;
else
   begin
   mCampoTotall:='P1TOTALL';
   mCampoSemcom:='P1SEMCOM';
   mCampoValFre:='P1VALFRE';
   mCampoIcmsr :='P1ICMSR';
   end;

}


Qr_Ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.SQL.Add('select VNOME,P1CODVEN,sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_vlr+',0)) as venmes01,'
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_vlr+',0)) as venmes02,'
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_vlr+',0)) as venmes03, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_semcom+',0)) as scommes01, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mCampo_Semcom+',0)) as scommes02, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mCampo_Semcom+',0)) as scommes03, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_valfre+',0)) as fremes01, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mCampo_ValFre+',0)) as fremes02, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mCampo_ValFre+',0)) as fremes03, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mCampo_Icmsr+',0)) as icmsrmes01, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mCampo_Icmsr+',0)) as icmsrmes02, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mCampo_Icmsr+',0)) as icmsrmes03, '
              +'       sum(P1ICMSR) as ICMSR from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if CB_EmiDoc.Checked then
  Qr_Ven.SQL.Add('       and P1EMIDOC=1 ');
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ven.SQl.Add(' and P1TIPO '+mcinst2);
if Trim(MDT1)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1)));


if Trim(MDT2)<>'/  /' then
   Qr_Ven.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2)));



mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P2CODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and P2CODFAB '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and FCODGFOR '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_Ven.SQL.Add(' and CCODLOC '+mcinst2);


Qr_Ven.SQL.Add(' Group by VNOME,P1CODVEN Order by ');
if RG_ORDEM.ItemIndex=0 then
   Qr_Ven.SQL.Add(' VNOME ')
else if RG_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' P1CODVEN ')
else if RG_ORDEM.ItemIndex=2 then
   Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
else if RG_ORDEM.ItemIndex=3 then
   Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
//Qr_Ven.sQL.sAVEtOFILE('C:\SQL.TXT');

try
   Qr_ven.Open;
except
   Qr_Ven.sQL.sAVEtOFILE('C:\SQL.TXT');
   end;
if Qr_Ven.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição solicitada',mtWarning,[mbok],0);
   exit
   end;
testeform := TFrm_MedVen(FindGlobalComponent('form_impres_medven'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medven);

form_impres_medven.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_medven.mlin:=0;
form_impres_medven.mpag:=0;
mtotalg:=0;
While not Qr_Ven.Eof do
   begin
   mtotalg:=mtotalg+Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
{   if CB_RET.Checked then
      begin
      mtotalg:=mtotalg-(Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                       +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
      end;
}   Qr_Ven.Next;
   end;
Qr_Ven.First;


mtotmes01:=0;
mtotmes02:=0;
mtotmes03:=0;

While not Qr_Ven.Eof do
   begin
   if form_impres_medven.mlin=0 then
      begin
      form_impres_medven.mpag:=form_impres_medven.mpag+1;
      form_impres_medven.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_medven.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',form_impres_medven.mpag),mnormal);
      form_impres_medven.RDprint1.ImpF(02,01,'Relatorio de Media de Vendas Trimestral Por Vendedor.',mnormal);
      form_impres_medven.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_medven.mlin:=3;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);

      if lbx_codcli.Count>0 then
         FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
      if lbx_codpro.Count>0 then
         FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
      if lbx_codgfor.Count>0 then
         FImprimeTitulo('Grupo de Fornecedor',lbx_codgfor,OMITIR_GFOR);
      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
      if lbx_coduf.Count>0 then
         FImprimeTitulo('UF',lbx_coduf,OMITIR_UF);
      if lbx_codloc.Count>0 then
         FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);

      if not CB_ICMSRET.Checked then
         begin
         form_impres_medven.mlin:=form_impres_medven.mlin+1;
         form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
         end;
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'|Código|Nome do Vendedor                        |'
                              +insere(tabmes[mes01]+'/'+FormatFloat('0000',ano01),' ',14)
                              +'|'
                              +insere(tabmes[mes02]+'/'+FormatFloat('0000',ano02),' ',14)
                              +'|'
                              +insere(tabmes[mes03]+'/'+FormatFloat('0000',ano03),' ',14)
                              +'|Total Trimestr'
                              +'|Media Trimestr|% Acum.|',mreduz);
      end;
   form_impres_medven.mlin:=form_impres_medven.mlin+1;
   mmedia:=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
   mtotal :=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
{
   if CB_RET.Checked then
      begin
      mmedia:=mmedia-(Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                     +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
      mtotal :=mtotal- (Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                       +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
      end;
}
   if (mmedia=0) or (mtotalg=0) then
      begin
      mperc:=0;
      mmedia:=0;
      end
   else
      begin
      try
         mperc :=(mmedia*100)/mtotalg;
         mmedia:=(mmedia/3);
      except
         mperc:=0;
         mmedia:=0;
         end;
      end;
   form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'|'
                             +insere(FormatFloat('000000',Qr_VenP1CODVEN.Value),' ',6)
                             +'|'+insere2(Qr_VenVNOME.Value,' ',40)
//                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES01.Value-iif(CB_RET.Checked, (Qr_VenFREMES01.Value+Qr_VenICMSRMES01.Value),0)),' ',14)
//                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES02.Value-iif(CB_RET.Checked,(Qr_VenFREMES02.Value+Qr_VenICMSRMES02.Value),0)),' ',14)
//                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES03.Value-iif(CB_RET.Checked,(Qr_VenFREMES03.Value+Qr_VenICMSRMES03.Value),0)),' ',14)

                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES01.Value),' ',14)
                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES02.Value),' ',14)
                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES03.Value),' ',14)

                           +'|'+insere(FormatFloat(mcasas, mtotal),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
{
+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
|Código|Nome do Vendedor                        |12345678901234|12345678901234|12345678901234|12345678901234|12345678901234|% Acum.|
|123456|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zz%|

}   mtotmes01:=mtotmes01+Qr_VenVENMES01.Value;
   mtotmes02:=mtotmes02+Qr_VenVENMES02.Value;
   mtotmes03:=mtotmes03+Qr_VenVENMES03.Value;
{   if CB_RET.Checked then
      begin
      mtotmes01:=mtotmes01-(Qr_VenFREMES01.Value+Qr_VenICMSRMES01.Value);
      mtotmes02:=mtotmes02-(Qr_VenFREMES02.Value+Qr_VenICMSRMES02.Value);
      mtotmes03:=mtotmes03-(Qr_VenFREMES03.Value+Qr_VenICMSRMES03.Value);
      end;
}   Qr_Ven.Next;
   if Qr_Ven.Eof then
      begin
      mtotal:=mtotmes01+mtotmes02+mtotmes03;
      mmedia:=(mtotal/3);
      mperc :=100;
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'|      '
                           +'|'+insere2('Totais','.',40)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotal),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_medven.RDprint1.Setup then form_impres_medven.RDprint1.Fechar;
      form_impres_medven.free;
      form_impres_medven:=nil;
      end
   else if form_impres_medven.mlin>58 then
      begin
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medven.RDprint1.Novapagina;
      form_impres_medven.mlin:=0;
      end;
   end;
Qr_Ven.close;
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop table '+mtabtemp);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;

end;

procedure TFrm_MedVen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedVen.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_MedVen.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_MedVen.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
      begin
      fmensagem('Produto não cadastrado!',0,['0'],0);
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

procedure TFrm_MedVen.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      begin
      fmensagem('Fornecedor não cadastrado!',0,['0'],0);
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

procedure TFrm_MedVen.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_MedVen.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_MedVen',Key);
if trim(CODVEN.Text)<>'' then
   CODVENExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedVen.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_DestPro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_DestPro',key);
      CODPROExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_MedVen.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_MedVen',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedVen.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODSUP.Text)) then
      begin
      fmensagem('Supervidor não cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_MedVen.CODUFExit(Sender: TObject);
begin
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

procedure TFrm_MedVen.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODLOC.Text)) then
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

procedure TFrm_MedVen.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text  :=fChamaSup(0,'frm_MedVen',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedVen.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedVen',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedVen.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_MedVen.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex)


end;

procedure TFrm_MedVen.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if not flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',Trim(CODGFOR.Text)) then
      begin
      fmensagem('Grupo de Fornecedor não cadastrado!',0,['0'],0);
      CODGFOR.SetFocus;
      end
   else
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_MedVen.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_cabc',key);
   key:=#0;
   end;


end;

procedure TFrm_MedVen.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

function tFrm_MedVen.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_medven.mlin:=form_impres_medven.mlin+1;
      form_impres_medven.RDprint1.ImpF(form_impres_medven.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_MedVen.FormKeyDown(Sender: TObject; var Key: Word;
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
