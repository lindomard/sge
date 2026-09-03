unit S_Imp_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, Buttons, Grids, DBGrids, DB,
  DBTables,func,lerarq,S_DM1,S_For,S_DM5,S_Stru, Gauges, DBXpress, SqlExpr,
  DBClient, FMTBcd, Provider;

type
  TFrm_Imp_Prod = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    NOMARQ: TEdit;
    sb1: TSpeedButton;
    stAtrib: TStaticText;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    cb_codbarras: TCheckBox;
    cb_nome: TCheckBox;
    cb_codfor: TCheckBox;
    cb_und: TCheckBox;
    cb_pcofab: TCheckBox;
    cb_pcomax: TCheckBox;
    RG_AUMQDO: TRadioGroup;
    cb_codcon: TCheckBox;
    cb_cadfor: TCheckBox;
    RG_TIPOIMP: TRadioGroup;
    bbIniciar: TBitBtn;
    opd1: TOpenDialog;
    Label2: TLabel;
    CODFOR: TEdit;
    stNomFor: TStaticText;
    Label3: TLabel;
    stPadrao: TStaticText;
    Label4: TLabel;
    Label5: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_PCO02: TCheckBox;
    CB_PMC02: TCheckBox;
    lbl_codbar: TLabel;
    NOMARQ_CODBAR: TEdit;
    stAtrib_codbar: TStaticText;
    sb2: TSpeedButton;
    gb_etapa: TGroupBox;
    Gauge_etapa: TGauge;
    gb_geral: TGroupBox;
    Gauge_geral: TGauge;
    GroupBox2: TGroupBox;
    U_imp_precos: TUpdateSQL;
    cds_imp_precos: TQuery;
    cds_imp_precosPDIP_CODPRO: TStringField;
    cds_imp_precosPDIP_CODFOR: TFloatField;
    cds_imp_precosPDIP_CODFAB: TFloatField;
    cds_imp_precosPDIP_NOMFAB: TStringField;
    cds_imp_precosPDIP_PMC: TFloatField;
    cds_imp_precosPDIP_PCO_FAB: TFloatField;
    cds_imp_precosPDIP_PMC_FRACAO: TFloatField;
    cds_imp_precosPDIP_QTDFRAC: TFloatField;
    cds_imp_precosPDIP_TABELA: TFloatField;
    cds_imp_precosPDIP_PORTARIA: TStringField;
    cds_imp_precosPDIP_EDICAO: TFloatField;
    cds_imp_precosPDIP_DATAVIG: TDateTimeField;
    cds_imp_precosPDIP_CODBAR: TStringField;
    cds_imp_precosPDIP_ALIQ: TFloatField;
    cds_imp_precosPDIP_TIPO: TFloatField;
    cds_imp_precosPDIP_DESCRICAO: TStringField;
    cds_imp_precosPDIP_APRESENTACAO: TStringField;
    procedure sb1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbIniciarClick(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure sb2Click(Sender: TObject);
    procedure NOMARQExit(Sender: TObject);
    procedure NOMARQ_CODBARExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fImportarPrecosUnitex(pTipo: Integer): Boolean;

    function fImportarUnitexProBarra(pNomeArq: String): Boolean;

  public
    { Public declarations }
    mUltarqLido: String;
  end;


var
  Frm_Imp_Prod: TFrm_Imp_Prod;
  mTabTmp, mNomeArq, mPasta, mArqComp: String;
  mTabViolation: String='';
  mcodfor,mpadrao,mlote: Real;
  mLista,mPcoFab,mPcoMax,mPCoVda,mPCoVda02,mPMC02,mPcoFab_Cx,mPcoMax_Cx: Real;
  mExistEmp,mExistFor,mExistcodbar,mExistcodGru: Boolean;

implementation

uses S_RelImp_Prod, DateUtils;

{$R *.dfm}

procedure TFrm_Imp_Prod.sb1Click(Sender: TObject);
var
y: Integer;
begin
Opd1.Options := Opd1.Options + [ofAllowMultiSelect];
Opd1.Filter := 'Todos Arquivos (*.*)|*.*';
Opd1.Title := 'Arquivos de Precos de Produtos';
if Opd1.execute then
   NOMARQ.Text  := Opd1.FileName;
fImportarUnitexProBarra(NOMARQ.Text);

NOMARQExit(self);
end;

procedure TFrm_Imp_Prod.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp_Prod.bbIniciarClick(Sender: TObject);
var
y: Integer;
begin
bbIniciar.Enabled:=false;
if trim(CODFOR.Text)='' then
   begin
   fMensagem('Favor Digitar um Código de Fornecedor válido!', 0,['0'],0);
   CODFOR.SetFocus;
   bbIniciar.Enabled:=true;
   exit;
   end;
LABEL4.Caption:='Iniciado em : '+FormatDatetime('dd/mm/yyyy hh:nn:ss', now);
mcodfor:=DM1.Tb_ForFCODFOR.AsFloat;
mpadrao:=DM1.Tb_ForFPADRAO.AsFloat;
if trim(NOMARQ.Text)='' then
   begin
   fMensagem('Favor Selecionar um Arquivo válido!',0,['0'],0);
   bbIniciar.Enabled:=true;
   exit;
   end;
if not FileExists(NOMARQ.Text) then
   begin
   fMensagem('Favor Selecionar um Arquivo válido!',0,['0'],0);
   bbIniciar.Enabled:=true;
   exit;
   end;

if Trim(NOMARQ.Text)<>'' then
   begin
   stAtrib.Caption:=' Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(NOMARQ.Text)))
                   +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(NOMARQ.Text)))+' horas ';
   end;

mNomeArq:=Fnomearq_Pasta(0,NOMARQ.Text);
mPasta  :=Fnomearq_Pasta(1,NOMARQ.Text);



if DM1.Tb_ForFPADRAO.AsInteger=3 then
//   fImportarPrecosOutros(DM1.Tb_ForFPADRAO.AsInteger)
else
   fImportarPrecosUnitex(DM1.Tb_ForFPADRAO.AsInteger)

end;


function TFrm_Imp_Prod.fImportarPrecosUnitex(pTipo: Integer): Boolean;
var
Query_Temp: TQuery;
mqtdReg: Integer;
begin

Query_Temp:=TQuery.Create(NIL);
Query_Temp.DatabaseName:='SG_ASSOC';
Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.Sql.Add('UPDATE CADPRO_IMP_PRECO SET PDIP_CODPRO_INTERNO=(SELECT max(PDCODPRO) FROM CADPRO '
                  +' WHERE PDCODBAR=PDIP_CODBAR) '
                  +' where exists '
                  +' ( SELECT PDCODPRO FROM CADPRO WHERE PDCODBAR=PDIP_CODBAR) ');
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.Sql.Add('UPDATE CADPRO_IMP_PRECO SET PDIP_CODPRO_INTERNO=(SELECT max(PDCODPRO) FROM CADPRO '
                  +' WHERE PDCODBAR=PDIP_CODBAR) '
                  +' where exists '
                  +' ( SELECT PDCODPRO FROM CADPRO WHERE PDCODBAR=PDIP_CODBAR) ');
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;


Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.Sql.Add('select count(*) from USER_OBJECTS  WHERE OBJECT_NAME='+QuotedStr('CADPRO_IMP_PRECO0')+' AND OBJECT_TYPE='+QuotedStr('INDEX'));
Query_temp.Open;
if Query_Temp.Fields[0].AsInteger=0 then
   begin
   Query_Temp.Close;
   Query_Temp.SQL.Clear;
   Query_Temp.Sql.Add('create index CADPRO_IMP_PRECO0 ON CADPRO_IMP_PRECO (PDIP_CODPRO_INTERNO) ');
   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.Sql.Add('Update CADPRO set (PDPMC_ANT,PDFARMA_PCOFAB_ANT,PDPMC,PDFARMA_PCOFAB,PDDTUATP1,PDUSRALT1) '
                  +' = (select max(PDPMC),max(PDFARMA_PCOFAB)'
                  +',max(CASE WHEN PDIP_PMC_FRACAO is null THEN PDIP_PMC WHEN PDIP_PMC_FRACAO=0 THEN PDIP_PMC ELSE PDIP_PMC_FRACAO END) '
                  +',Round( (max(PDIP_PCO_FAB /  CASE WHEN PDIP_QTDFRAC=0 THEN 1 ELSE PDIP_QTDFRAC END)),'+DM1.Tb_PargerPCASASPU.AsString+')'
                  +',SYSDATE,'+InttoStr(codusr)+' AS USUARIO from CADPRO_IMP_PRECO WHERE PDIP_CODPRO_INTERNO=PDCODPRO '
                  +' ) where exists (  select PDIP_PMC,PDIP_PCO_FAB,SYSDATE,'+IntTostr(codemp)+' AS USUARIO FROM CADPRO_IMP_PRECO '
                  +' WHERE PDIP_CODPRO_INTERNO=PDCODPRO) ');
try
   query_temp.execsql;
   fdm1startcommit;
except
   query_temp.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.Sql.Add('Select count(*) from CADPRO '
                 +' where TO_CHAR(PDDTUATP1,'+QuotedStr('DD/MM/YYYY')+')=TO_CHAR(SYSDATE,'+QuotedStr('DD/MM/YYYY')+')');
try
   query_temp.Open;
   mqtdReg:=Query_Temp.Fields[0].AsInteger;
except
   mqtdReg:=0;
   end;
FreeandNil(Query_Temp);

MessageDlg('Foram Atualizados '+IntToStr(mqtdReg)+' Registros! ',mtInformation,[mbOk],0);
bbIniciar.Enabled:=true;

end;



procedure TFrm_Imp_Prod.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Imp_Prod',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Imp_Prod.CODFORExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODFOR.Text:=fdeixanum2(CODFOR.Text);
stNomFor.Caption:='';
stPadrao.Caption:='';
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      verteclado(0);
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end;
{

   else
      begin
      stNomFor.Caption:=DM1.Tb_ForFRAZAO.Value;
      if DM1.Tb_ForFPADRAO.AsInteger=3 then
         begin
         stPadrao.Caption      :='Outros';
         NOMARQ_CODBAR.Visible :=true;
         lbl_codbar.Visible    :=true;
         stAtrib_codbar.Visible:=true;
         cb_pcomax.Checked     :=false;
         if pos(uppercase('expprod'),uppercase(NOMARQ.Text))<=0 then
            begin
            NOMARQ_CODBAR.Text   :='C:\SGE\EXPCODBARRA.DB';
            NOMARQ.Text          :='C:\SGE\EXPPROD.DB';
            NOMARQExit(self);
            end;
         end
      else if DM1.Tb_ForFPADRAO.AsInteger=2 then
         begin
         stPadrao.Caption:='ABCFarma';
         if pos(uppercase('pro17'),uppercase(NOMARQ.Text))<=0 then
            begin
            NOMARQ.Text          :='C:\SGE\PRO17.DB';
            NOMARQ_CODBAR.Text   :='';
            end;
         cb_pcomax.Checked     :=true;
         NOMARQ_CODBAR.Visible :=false;
         lbl_codbar.Visible    :=false;
         stAtrib_codbar.Visible:=false;
         end
      else if DM1.Tb_ForFPADRAO.AsInteger=1 then
         begin
         NOMARQ.Text          :='C:\SGE\PRO17.DB';
         NOMARQ_CODBAR.Text   :='';
         stPadrao.Caption:='Unitex';
         NOMARQ_CODBAR.Visible:=false;
         lbl_codbar.Visible   :=false;
         stAtrib_codbar.Visible:=false;
         cb_pcomax.Checked     :=true;
         if pos(uppercase('pro17'),uppercase(NOMARQ.Text))<=0 then
            begin
            NOMARQ.Text          :='C:\SGE\PRO17.DB';
            NOMARQ_CODBAR.Text   :='';
            end;
         end
      else
         begin
         fMensagem('Não é um Fornecedor de Preços Válido!',0,['0'],0);
         CODFOR.SetFocus;
         end;
      end;
}
   end;

end;




procedure TFrm_Imp_Prod.bbImprimirClick(Sender: TObject);
begin
verteclado(0);
Application.CreateForm(TFrm_RelImp_Prod, Frm_RelImp_Prod);
Frm_RelImp_Prod.CODFOR.Text:=CODFOR.Text;
Frm_RelImp_Prod.NUMLOT.Text:=FloatToStr(mlote);
Frm_RelImp_Prod.CODFORExit(Self);
Frm_RelImp_Prod.NUMLOTExit(Self);
Frm_RelImp_Prod.ShowModal;
Frm_RelImp_Prod.Free;

end;

procedure TFrm_Imp_Prod.sb2Click(Sender: TObject);
var
y: Integer;
begin
Opd1.Options := Opd1.Options + [ofAllowMultiSelect];
Opd1.Filter  := 'Todos Arquivos (*.*)|*.*';
Opd1.Title   := 'Arquivos de Precos de Produtos';
if Opd1.execute then
   begin
   NOMARQ_CODBAR.Text:=Opd1.FileName;
   NOMARQ_CODBARExit(self);
   end;


end;

procedure TFrm_Imp_Prod.NOMARQExit(Sender: TObject);
var
mPos: Integer;
begin

if Trim(NOMARQ.Text)<>'' then
   begin
   if FileExists(NOMARQ.Text) then
      begin
      stAtrib.Caption:=' Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(NOMARQ.Text)))
                   +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(NOMARQ.Text)))+' horas ';
      mPos:=pos(uppercase('expprod'),uppercase(NOMARQ.Text));
      if mPos>0 then
         begin
         NOMARQ_CODBAR.Text:=copy(NOMARQ.Text,1,mPos-1)+'ExpCodBarra'
         +copy(NOMARQ.Text,mPos+length('expprod'),length(NOMARQ.Text)-mPos+length('expprod'));
         NOMARQ_CODBARExit(self);
         end;
      end
   else
      stAtrib.Caption:='';
   end;

end;

procedure TFrm_Imp_Prod.NOMARQ_CODBARExit(Sender: TObject);
begin
if Trim(NOMARQ_CODBAR.Text)<>'' then
   begin
   if FileExists(NOMARQ_CODBAR.Text) then
      begin
      stAtrib_codbar.Caption:=' Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(NOMARQ_CODBAR.Text)))
                   +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(NOMARQ_CODBAR.Text)))+' horas ';
      end
   else
      stAtrib_codbar.Caption:='';
   end;

end;

procedure TFrm_Imp_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;
function TFrm_Imp_Prod.fImportarUnitexProBarra(pNomeArq: String): Boolean;
var
query_arq: TQuery;
query_trunca: TQuery;

mQtd: Integer;
mDarhorIni: TDateTime;
begin
if mUltarqLido=pNomeArq then
   begin
   result:=true;
   exit;
   end;

mDarhorIni:=now;

query_arq:=TQuery.Create(nil);
query_arq.SQL.Clear;
query_arq.DatabaseName:=Fnomearq_Pasta(1,pNomeArq);
query_arq.SQL.Add('Select * from '+Fnomearq_Pasta(0,pNomeArq));
try
   query_arq.open;
except
   MessageDlg('Erro ao Ler o Arquivo: '+pNomeArq,mtWarning,[mbOk],0);
   result:=false;
   FreeAndNil(query_arq);
   exit;
   end;

cds_imp_precos.Close;
cds_imp_precos.Open;

While not query_arq.Eof do
   begin
   cds_imp_precos.Append;
   cds_imp_precosPDIP_CODPRO.Value      :=query_arq.fieldbyName('NR_PRODUTO').AsString;
   cds_imp_precosPDIP_CODFOR.AsFloat    :=ValFloat(CODFOR.Text);
   cds_imp_precosPDIP_CODFAB.AsFloat    :=query_arq.fieldbyName('NR_LABOR').AsFloat;
   cds_imp_precosPDIP_NOMFAB.Value      :=query_arq.fieldbyName('NOMELAB').AsString;
   cds_imp_precosPDIP_DESCRICAO.Value   :=query_arq.fieldbyName('DESCRICAO').AsString;
   cds_imp_precosPDIP_APRESENTACAO.Value:=query_arq.fieldbyName('APRESENT').AsString;
   cds_imp_precosPDIP_PMC.AsFloat       :=query_arq.fieldbyName('PRC_VENDA').AsFloat;
   cds_imp_precosPDIP_PCO_FAB.AsFloat   :=query_arq.fieldbyName('PRECO').AsFloat;
   cds_imp_precosPDIP_PMC_FRACAO.AsFloat:=query_arq.fieldbyName('FRACAO').AsFloat;
   cds_imp_precosPDIP_QTDFRAC.Value     :=query_arq.fieldbyName('QTD_FRAC').AsFloat;
   cds_imp_precosPDIP_TABELA.Value      :=query_arq.fieldbyName('TABELA').AsInteger;
   cds_imp_precosPDIP_PORTARIA.Value    :=query_arq.fieldbyName('PORTARIA').AsString;
   cds_imp_precosPDIP_EDICAO.Value      :=query_arq.fieldbyName('EDICAO').AsInteger;
   cds_imp_precosPDIP_DATAVIG.Value     :=query_arq.fieldbyName('DATA_VIG').Value;
   cds_imp_precosPDIP_CODBAR.Value      :=query_arq.fieldbyName('CODBAR').AsString;
   cds_imp_precosPDIP_ALIQ.AsFloat      :=query_arq.fieldbyName('ALIQUOTA').AsFloat;
   cds_imp_precosPDIP_TIPO.Value        :=query_arq.fieldbyName('TIPO').AsInteger;

   cds_imp_precos.Post;
   query_arq.Next;
   mQtd:=mQtd+1;
   end;

query_trunca:=TQuery.Create(nil);
query_trunca.DatabaseName:='SG_ASSOC';
query_trunca.SQL.Clear;
query_trunca.SQL.Add('truncate table CADPRO_IMP_PRECO');
try
   query_trunca.ExecSQL;
   fdm1StartCommit;
except
   end;

Try
  cds_imp_precos.ApplyUpdates;
Except
  end;
{
MessageDlg('Inicio: '+FormatDateTime('dd/mmm/yyy hh:nn:ss', mDarhorIni)+' termino: '+FormatDateTime('dd/mm/yyyy hh:nn:ss', now)
+' duração em secundos '+InttoStr(   SecondsBetween(mDarhorIni,Now)),mtInformation,[mbOk],0);
}
FreeAndNil(query_arq);
FreeAndNil(query_trunca);
mUltarqLido:=pNomeArq;
result:=true;
end;

end.
