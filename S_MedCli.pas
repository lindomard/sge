unit S_MedCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons,S_Ven, DB, DBTables,FUNC, S_SelEmp,
  ExtCtrls,S_Impres, jpeg, CheckLst, ComCtrls,S_For,S_Sup,S_Uf,S_Loc,s_lerarq_geral;

type
  TFrm_MedCli = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ven: TQuery;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
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
    CB_EmiDoc: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODGFOR: TEdit;
    OMITIR_GFOR: TCheckBox;
    lbx_codgfor: TListBox;
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
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label13: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    lbx_codven: TListBox;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    Label10: TLabel;
    CB_FORCAR: TCheckBox;
    Label5: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_ICMSRET: TCheckBox;
    Label7: TLabel;
    CB_SEPARADO: TComboBox;
    CB_AVANCPAG: TCheckBox;
    Qr_VenGRUPO: TStringField;
    CB_SEMMOV: TCheckBox;
    Label11: TLabel;
    CB_ORDEM: TComboBox;
    CB_REDDESCFIN: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODGFORExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_EmiDocClick(Sender: TObject);
    procedure CB_TIPOPESQExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fMedcliCabRel(pTipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fTestaCab(pTipo: Integer): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;

  public
    { Public declarations }
    form_impres_medcli: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_MedCli: TFrm_MedCli;
  mes01,ano01    : Integer;
  mes02,ano02    : Integer;
  mes03,ano03    : Integer;
  mNomeView      : String;

implementation

uses S_Cli, S_GFor, S_DM4;

{$R *.dfm}

function TFrm_MedCli.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
  begin
  for x:=0 to pListBox.items.count-1 do
    begin
    form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
    fTestaCab(0);
    form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',136),mreduz);
    end;
  end;
result:=true;
end;

function TFrm_MedCli.fMedCliCabRel(pTipo: Integer): Boolean;
begin
if ptipo=0 then
  begin
  form_impres_medcli.mpag:=form_impres_medcli.mpag+1;
  form_impres_medcli.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
  form_impres_medcli.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',form_impres_medcli.mpag),mnormal);
  form_impres_medcli.RDprint1.ImpF(02,01,'Relatorio de Media de Vendas Trimestral Por Cliente.',mnormal);
  form_impres_medcli.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
  form_impres_medcli.RDprint1.ImpF(03,01,'------------------------------------------------------------------------------------------------------------------------------------',mreduz);
  form_impres_medcli.mlin:=03;
  end
else if ptipo=1 then
  begin
  form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
  form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'|Código|Nome do Cliente                         |'
                                  +insere(tabmes[mes01]+'/'+FormatFloat('0000',ano01),' ',14)
                                  +'|'+insere(tabmes[mes02]+'/'+FormatFloat('0000',ano02),' ',14)
                                  +'|'+insere(tabmes[mes03]+'/'+FormatFloat('0000',ano03),' ',14)
                                  +'|Total Trimestr'
                                  +'|Media Trimestr|% Acum.|',mreduz);
  end;
result:=true;
end;

function TFrm_MedCli.fTestaCab(pTipo: Integer): Boolean;
begin
if form_impres_medcli.mlin>57 then
  begin
  form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Insere2('-','-',136),mreduz);
  form_impres_medcli.mlin:=0;
  form_impres_medcli.RDprint1.Novapagina;
  fMedcliCabRel(0);
  form_impres_medcli.mlin:=3;
  end;
result:=true;
end;

function TFrm_MedCli.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
fTestaCab(0);
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);

if lbx_codsup.Count>0 then
  FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
if lbx_codfor.Count>0 then
  FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
if lbx_codven.Count>0 then
  FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codgfor.Count>0 then
  FImprimeTitulo('Grupo de Fornecedor',lbx_codgfor,OMITIR_GFOR);
if lbx_codcli.Count>0 then
  FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_codpro.Count>0 then
  FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
if lbx_coduf.Count>0 then
  FImprimeTitulo('UF',lbx_coduf,OMITIR_UF);
if lbx_codloc.Count>0 then
  FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);

if not CB_ICMSRET.Checked then
  begin
  form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
  fTestaCab(0);
  form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Centra('Totais deduzidos os Impostos.',' ',136),mneg);
  end;

form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
fTestaCab(0);
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
fTestaCab(0);
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;

procedure TFrm_MedCli.FormCreate(Sender: TObject);
var x:integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

CB_ORDEM.itemIndex:=0;

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[0] := TRUE;

MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);

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

procedure TFrm_MedCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedCli.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotmes01g,mtotmes02g,mtotmes03g: Real;
mtotalg: Real;
mtotal,mmedia, mperc: Real;
mCampoGrupo: String;
mCampoOrdem: String;
mGrupo_ant: String;
mCampoGrupo_semmov: String;
mQtdComMov,mQtdSemMov: Integer;
mCampoOrdem_SemMov: String;
begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   fmensagem('Mês Inválido!',0,['0'],0);
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
mNomeView:=fProcTemp(22);


la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if lbx_codsup.Items.Count>0 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end;

if (lbx_codfor.Items.Count>0) or (lbx_codgfor.Items.Count>0) or (CB_SEPARADO.ItemIndex=4) then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
   end;
mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
mCampoGrupo       :='';
mCampoOrdem_SemMov:='';


if CB_SEPARADO.ItemIndex=0 then // bairro
   begin
   mCampoOrdem:='CUF,CCIDADE,CBAIRRO';
   mCampoGrupo:='CUF  ||'+chr(39)+' '+chr(39)+'|| CCIDADE ||'+chr(39)+' '+chr(39)+'|| CBAIRRO';
   mCampoGrupo_semmov:='CUF  ||'+chr(39)+' '+chr(39)+'|| CCIDADE ||'+chr(39)+' '+chr(39)+'|| CBAIRRO';
   mCampoOrdem_SemMov:='CUF,CCIDADE,CBAIRRO';
   end
else if CB_SEPARADO.ItemIndex=1 then // cidade
   begin
   mCampoOrdem:='CUF,CCIDADE';
   mCampoGrupo:='CUF || '+chr(39)+' '+chr(39)+'|| CCIDADE ';
   mCampoGrupo_semmov:='CUF || '+chr(39)+' '+chr(39)+'|| CCIDADE ';
   mCampoOrdem_SemMov:='CUF,CCIDADE';
   end
else if CB_SEPARADO.ItemIndex=2 then // cliente
   begin
   mCampoOrdem:='';
   mCampoGrupo:='TO_CHAR(P1CODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoGrupo_semmov:='TO_CHAR(CCODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoOrdem_SemMOv:='CRAZAO,CCODCLI';
   end
else if CB_SEPARADO.ItemIndex=3 then // Estado
   begin
   mCampoOrdem:='CUF';
   mCampoGrupo:='CUF';
   mCampoGrupo_semmov:='CUF';
   mCampoOrdem_SemMov:='CUF';
   end
else if CB_SEPARADO.ItemIndex=4 then // fornecedor
   begin
   mCampoOrdem:='FRAZAO,FCODFOR';
   mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);

   end
else if CB_SEPARADO.ItemIndex=5 then // Grupo de Produtos
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

   mCampoOrdem:='PDNOMGRU,PDCODGRU';
   mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=6 then // bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

   mCampoOrdem:='PDMARCA';
   mCampoGrupo:='PDMARCA';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=7 then // bairro
   begin
   mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=8 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMRAM,PDCODRAM';
   mCampoGrupo:='TO_CHAR(PDCODRAM) || '+chr(39)+'-'+chr(39)+'|| PDNOMRAM ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=9 then // cidade
   begin
   mCampoOrdem:='CNOMRED,CCODRED';
   mCampoGrupo:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoGrupo_semmov:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoOrdem_SemMov:='CNOMRED,CCODRED';
   end
else if CB_SEPARADO.ItemIndex=10 then // sem separara
   begin
   mCampoOrdem:='';
   mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=11 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMCON,PDCODCON';
   mCampoGrupo:='TO_CHAR(PDCODCON) || '+chr(39)+'-'+chr(39)+'|| PDNOMCON ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=12 then // Estado
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   mCampoOrdem:='VNOME,P1CODVEN';
   mCampoGrupo:='TO_CHAR(P1CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end;

{
mCampoTotall:='((P2TOTLIQ+P2ICMSR) -P2DESCRAT)';
mcampo_semcom:='P2SEMCOM';
mCampo_ValFre:='P2SEMCOM-P2SEMCOM';
mCampo_Icmsr :='P2ICMSR';
}
if CB_REDDESCFIN.Checked then
   mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,(P2TOTLIQ+P2ICMSR)))'
else
   mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ*-1,P2TOTLIQ)';

mcampo_semcom :='DECODE(P1TIPO_ENTSAI,1,p2semcom*-1,p2semcom)';
mcampo_icmsr  :='DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR)';
mcampo_valfre :='DECODE(P1TIPO_ENTSAI,1,(P2SEMCOM-P2SEMCOM)*-1,P2SEMCOM-P2SEMCOM)';
if CB_REDDESCFIN.Checked then
   mcampo_vlr_dev   :='DECODE(P1TIPO_ENTSAI,1,((P2TOTLIQ+P2ICMSR)-(P2DESCRAT+P2VDESCF))*-1,(P2TOTLIQ+P2ICMSR)-(P2DESCRAT+P2VDESCF))'
else
   mcampo_vlr_dev   :='DECODE(P1TIPO_ENTSAI,1,((P2TOTLIQ+P2ICMSR)-P2DESCRAT)*-1,(P2TOTLIQ+P2ICMSR)-P2DESCRAT)';

mcampo_semcom_dev:='DECODE(P1TIPO_ENTSAI,1,p2semcom*-1,p2semcom)';
mcampo_icmsr_dev :='DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR)';
mcampo_valfre_dev:='DECODE(P1TIPO_ENTSAI,1,(P2SEMCOM-P2SEMCOM)*-1,P2SEMCOM-P2SEMCOM)';



if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');

DM1.Query1.SQL.Add('select CRAZAO as NOME,P1CODCLI AS CODIGO '
                 +','+mCampoGrupo+' as GRUPO '
                 +', sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_vlr+',0)) as venmes01,'
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_vlr+',0)) as venmes02,'
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_vlr+',0)) as venmes03, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_semcom+',0)) as scommes01, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_semcom+',0)) as scommes02, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_semcom+',0)) as scommes03, '
              +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mCampo_ValFre+',0)) as fremes01, '
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
   DM1.Query1.SQL.Add('       and P1EMIDOC=1 ');
if Trim(MDT1)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
if Trim(MDT2)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQl.Add(' and P1TIPO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODFAB '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and FCODGFOR '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);


if trim(mCampoOrdem)<>'' then
   DM1.Query1.SQL.Add(' Group by '+mCampoOrdem+',')
else
   DM1.Query1.SQL.Add(' Group by ');
DM1.Query1.SQL.Add(' CRAZAO,P1CODCLI');
try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.SAVETOFILE(mpastatemp + 'MEDCLI.TXT');
   exit;
   end;
Qr_Ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.SQL.add('select GRUPO,NOME, CODIGO '
                 +', sum(venmes01) as venmes01'
                 +', sum(venmes02) as venmes02'
                 +', sum(venmes03) as venmes03 '
                 +', sum(scommes01) as scommes01 '
                 +', sum(scommes02) as scommes02 '
                 +', sum(scommes03) as scommes03 '
                 +', sum(fremes01) as fremes01 '
                 +', sum(fremes02) as fremes02 '
                 +', sum(fremes03) as fremes03 '
                 +', sum(icmsrmes01) as icmsrmes01 '
                 +', sum(icmsrmes02) as icmsrmes02 '
                 +', sum(icmsrmes03) as icmsrmes03 '
                 +', sum(ICMSR) as ICMSR from '+mNomeView
                 +' Group by GRUPO,NOME, CODIGO ');


if CB_SEMMOV.Checked then
   begin
   Qr_Ven.SQL.Add(' union ');

   Qr_Ven.SQL.Add('select '+mCampoGrupo_SemMov +' as GRUPO,  CRAZAO as NOME,CCODCLI AS CODIGO '
                 +', 0 as venmes01'
                 +', 0 as venmes02'
                 +', 0 as venmes03 '
                 +', 0 as scommes01 '
                 +', 0 as scommes02 '
                 +', 0 as scommes03 '
                 +', 0 as fremes01 '
                 +', 0 as fremes02 '
                 +', 0 as fremes03 '
                 +', 0 as icmsrmes01 '
                 +', 0 as icmsrmes02 '
                 +', 0 as icmsrmes03 '
                 +', 0 as ICMSR from CADCLI, '+mNomeView
                 +'       where CSTATUS < 9 ');
    if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
       Qr_Ven.SQL.add(' and CCODEMP=0'+IntToStr(codemp));
    Qr_Ven.SQL.Add(' and CODIGO(+)=CCODCLI and CODIGO IS NULL ');
    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
       Qr_Ven.SQL.Add(' and CCODCLI '+mcinst2);

    if lbx_codven.Items.Count>0 then
       begin
       mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
       if trim(mcinst2)<>'' then
          begin
          Qr_Ven.SQL.Add(' and (  (CCODVEN '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV02 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV03 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV04 '+mcinst2+')');
          Qr_Ven.SQL.Add('     ) ');

          end;
       end;

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      Qr_Ven.SQL.Add(' and CUF '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      Qr_Ven.SQL.Add(' and CCODLOC '+mcinst2);
{   if trim(mCampoOrdem_SemMov)<>'' then
      DM1.Query1.SQL.Add(' Group by '+mCampoOrdem_SemMov);
}   end;

Qr_Ven.SQL.add(' order by GRUPO ');

if CB_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' ,CODIGO ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Ven.SQL.Add(' ,(venmes01+venmes02+venmes03) ')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Ven.SQL.Add(' ,(venmes01+venmes02+venmes03) desc ')
else
   Qr_Ven.SQL.Add(' ,NOME ');
try
   Qr_ven.Open;
except
   Qr_ven.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   exit;
   end;
if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_MedCli(FindGlobalComponent('form_impres_medcli'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medcli);

form_impres_medcli.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_medcli.mlin      :=0;
form_impres_medcli.mpag      :=0;
mtotalg   :=0;
mQtdComMov:=0;
mQtdSemMov:=0;
While not Qr_Ven.Eof do
   begin
   mtotalg:=mtotalg+Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;

   if (Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value)>0 then
      mQtdComMov:=mQtdComMov+1
   else
      mQtdSemMov:=mQtdSemMov+1;

   if not CB_ICMSRET.Checked then
      begin
      mtotalg:=mtotalg-(Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                       +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
      end;
   Qr_Ven.Next;
   end;
Qr_Ven.First;


mtotmes01:=0;
mtotmes02:=0;
mtotmes03:=0;

mtotmes01g:=0;
mtotmes02g:=0;
mtotmes03g:=0;

mGrupo_ant:='';
While not Qr_Ven.Eof do
  begin
  if form_impres_medcli.mlin=0 then
    begin
    fMedcliCabRel(0);
    fMedcliCabRel(1);
    end;

  if (CB_SEPARADO.ItemIndex<>10) and (mGrupo_ant<>Qr_VenGRUPO.AsString) then
    begin
    mGrupo_ant:=Qr_VenGRUPO.AsString;
    form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
    fTestaCab(0);
    form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'------------------------------------------------------------------------------------------------------------------------------------',mreduz);
    form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
    fTestaCab(0);
    form_impres_medcli.RDprint1.impf(form_impres_medcli.mlin,01,centra(mGrupo_ant,' ',136),mneg);
    fMedcliCabRel(1);
    end;


  form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
  mmedia:=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
  mtotal :=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;

  if not CB_ICMSRET.Checked then
     begin
     mmedia:=mmedia-(Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                    +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
     mtotal :=mtotal- (Qr_VenFREMES01.Value+Qr_VenFREMES02.Value+Qr_VenFREMES03.Value
                      +Qr_VenICMSRMES01.Value+Qr_VenICMSRMES02.Value+Qr_VenICMSRMES03.Value);
     end;
  try
  mperc :=(mmedia*100)/mtotalg;
  except
     mperc:=0;
     end;
  try
     mmedia:=(mmedia/3);
  except
     mmedia:=0;
     end;
  form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'|'+insere(FormatFloat('000000',Qr_VenCODIGO.Value),' ',6)
                          +'|'+insere2(Qr_VenNOME.Value,' ',40)
                          +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES01.Value-iif(CB_ICMSRET.Checked,0, (Qr_VenFREMES01.Value+Qr_VenICMSRMES01.Value))),' ',14)
                          +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES02.Value-iif(CB_ICMSRET.Checked,0,(Qr_VenFREMES02.Value+Qr_VenICMSRMES02.Value))),' ',14)
                          +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES03.Value-iif(CB_ICMSRET.Checked,0,(Qr_VenFREMES03.Value+Qr_VenICMSRMES03.Value))),' ',14)
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

   mtotmes01g:=mtotmes01g+Qr_VenVENMES01.Value;
   mtotmes02g:=mtotmes02g+Qr_VenVENMES02.Value;
   mtotmes03g:=mtotmes03g+Qr_VenVENMES03.Value;

   if not CB_ICMSRET.Checked then
      begin
      mtotmes01:=mtotmes01-(Qr_VenFREMES01.Value+Qr_VenICMSRMES01.Value);
      mtotmes02:=mtotmes02-(Qr_VenFREMES02.Value+Qr_VenICMSRMES02.Value);
      mtotmes03:=mtotmes03-(Qr_VenFREMES03.Value+Qr_VenICMSRMES03.Value);

      mtotmes01g:=mtotmes01g-(Qr_VenFREMES01.Value+Qr_VenICMSRMES01.Value);
      mtotmes02g:=mtotmes02g-(Qr_VenFREMES02.Value+Qr_VenICMSRMES02.Value);
      mtotmes03g:=mtotmes03g-(Qr_VenFREMES03.Value+Qr_VenICMSRMES03.Value);

      end;
   Qr_Ven.Next;
   if not Qr_Ven.Eof then
      begin
      if (CB_SEPARADO.ItemIndex<>10) and (mGrupo_ant<>Qr_VenGRUPO.AsString) then
         begin
         mmedia :=mtotmes01g+mtotmes02g+mtotmes03g;
         mtotal :=mmedia;
         mperc :=(mmedia*100)/mtotalg;
         mmedia:=(mmedia/3);

         form_impres_medcli.mlin:=form_impres_medcli.mlin+1;

         form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'|      '
                     +'|'+insere2('Total do Grupo','.',40)
                     +'|'+insere(FormatFloat(mcasas, mtotmes01g),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotmes02g),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotmes03g),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotal),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                     +'%|',mreduz);
         mtotmes01g:=0;
         mtotmes02g:=0;
         mtotmes03g:=0;
         form_impres_medcli.mlin:=form_impres_medcli.mlin+1;

         form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
         if (CB_AVANCPAG.Checked) or (form_impres_medcli.mlin>57) then
            begin
            form_impres_medcli.mlin:=0;
            form_impres_medcli.RDprint1.Novapagina;
            end
         else
            begin
            mGrupo_ant:=Qr_VenGRUPO.AsString;
            form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
            form_impres_medcli.RDprint1.impf(form_impres_medcli.mlin,01,centra(mGrupo_ant,' ',80),mneg);
            form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
            form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
            end;
         end
      else if form_impres_medcli.mlin>58 then
         begin
         form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
         form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
         form_impres_medcli.RDprint1.Novapagina;
         form_impres_medcli.mlin:=0;
         end;
      end;
   end;

if (CB_SEPARADO.ItemIndex<>10) then
   begin
   mmedia :=mtotmes01g+mtotmes02g+mtotmes03g;
   mtotal :=mmedia;
   mperc :=(mmedia*100)/mtotalg;
   mmedia:=(mmedia/3);

   form_impres_medcli.mlin:=form_impres_medcli.mlin+1;

   form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'|      '
               +'|'+insere2('Total do Grupo','.',40)
               +'|'+insere(FormatFloat(mcasas, mtotmes01g),' ',14)
               +'|'+insere(FormatFloat(mcasas, mtotmes02g),' ',14)
               +'|'+insere(FormatFloat(mcasas, mtotmes03g),' ',14)
               +'|'+insere(FormatFloat(mcasas, mtotal),' ',14)
               +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
               +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
               +'%|',mreduz);
   mtotmes01g:=0;
   mtotmes02g:=0;
   mtotmes03g:=0;
   form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
   form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
   end;

mtotal:=mtotmes01+mtotmes02+mtotmes03;
mmedia:=(mtotal/3);
mperc :=100;
form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'|      '
                     +'|'+insere2('Totais','.',40)
                     +'|'+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mtotal),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                     +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                     +'%|',mreduz);
form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,'Foram impressos: '+Inttostr(mQtdComMov+mQtdSemMov)+' Sendo '+IntToStr(mQtdComMov)+' com compras e '+IntToStr(mQtdSemMov)+' sem compras.'+' Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);

//LUIZ

if Qr_Ven.Eof then
  begin
  form_impres_medcli.mlin:=form_impres_medcli.mlin+1;
  form_impres_medcli.RDprint1.ImpF(form_impres_medcli.mlin,01,Insere2('-','-',136),mreduz);
  fImprimirCriterito(136);
  if form_impres_medcli.RDprint1.Setup then
    form_impres_medcli.RDprint1.Fechar;
  form_impres_medcli.free;
  form_impres_medcli:=nil;
  end;


//if form_impres_medcli.RDprint1.Setup then form_impres_medcli.RDprint1.Fechar;
//form_impres_medcli.Free;
//form_impres_medcli:=nil;

Qr_Ven.close;

end;

procedure TFrm_MedCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

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

procedure TFrm_MedCli.RG_TIPOPEDClick(Sender: TObject);
var x:integer;
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_MedCli.CODCLIExit(Sender: TObject);
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

procedure TFrm_MedCli.CODPROExit(Sender: TObject);
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

procedure TFrm_MedCli.CODGFORExit(Sender: TObject);
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

procedure TFrm_MedCli.CODFORExit(Sender: TObject);
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

procedure TFrm_MedCli.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
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

procedure TFrm_MedCli.CODUFExit(Sender: TObject);
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

procedure TFrm_MedCli.CODLOCExit(Sender: TObject);
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

procedure TFrm_MedCli.CODVENExit(Sender: TObject);
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

procedure TFrm_MedCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MedCli.CODPROKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedCli.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_MedCli',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;



end;

procedure TFrm_MedCli.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_cabc',key);
   key:=#0;
   end;


end;

procedure TFrm_MedCli.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text  :=fChamaSup(0,'frm_MedCli',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedCli.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedCli.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_MedUF',Key);
if trim(CODVEN.Text)<>'' then
   CODVENExit(self);
   key:=#0;
   end;



end;

procedure TFrm_MedCli.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_MedCli.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_MedCli.CB_EmiDocClick(Sender: TObject);
begin
if CB_EmiDoc.Checked then
   CB_TIPOPESQ.ItemIndex:=0
else
   CB_TIPOPESQ.ItemIndex:=1;

end;

procedure TFrm_MedCli.CB_TIPOPESQExit(Sender: TObject);
begin
with CB_TIPOPESQ do ItemIndex:=Items.IndexOf(CB_TIPOPESQ.Text);

end;

procedure TFrm_MedCli.CODUFKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_MedCli.FormKeyDown(Sender: TObject; var Key: Word;
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
