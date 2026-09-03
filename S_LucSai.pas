unit S_LucSai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,func,lerarq,S_For, DB, DBTables,S_Agde,
  S_Impres,S_Stru, S_SelEmp;

type
  TFrm_LucSai = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    Label5: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    bbSair: TBitBtn;
    Tb_Temporaria: TQuery;
    Tb_TemporariaSAI_CODEMP: TFloatField;
    Tb_TemporariaSAI_DESCRICAO: TStringField;
    Tb_TemporariaSAI_UNID: TStringField;
    Tb_TemporariaSAI_CODPROD: TFloatField;
    Tb_TemporariaSAI_NUMERO: TFloatField;
    Tb_TemporariaSAI_DATA: TDateTimeField;
    Tb_TemporariaSAI_CNPJ: TStringField;
    Tb_TemporariaSAI_UF: TStringField;
    Tb_TemporariaSAI_CFOP: TFloatField;
    Tb_TemporariaSAI_QUANTIDADE: TFloatField;
    Tb_TemporariaSAI_ITEM: TStringField;
    Tb_TemporariaSAI_VLPRODUTO: TFloatField;
    Tb_TemporariaSAI_PCOUNIT: TFloatField;
    Tb_TemporariaSAI_VLDESCONTO: TFloatField;
    Tb_TemporariaSAI_ICMSRET: TFloatField;
    Tb_TemporariaSAI_ALIQ: TFloatField;
    Tb_TemporariaSAI_ACRECV: TFloatField;
    Tb_TemporariaSAI_ACREGER: TFloatField;
    Tb_TemporariaSAI_CST: TStringField;
    Tb_TemporariaENT_ALIQ: TFloatField;
    Tb_TemporariaENT_ICMSRET: TFloatField;
    Tb_TemporariaENT_CFOP: TFloatField;
    Tb_TemporariaENT_QUANTIDADE: TFloatField;
    Tb_TemporariaENT_DESCRAT: TFloatField;
    Tb_TemporariaENT_VLDESCONTO: TFloatField;
    Tb_TemporariaENT_VLUNITARIO: TFloatField;
    Tb_TemporariaENT_CNPJ: TStringField;
    Tb_TemporariaENT_UF: TStringField;
    Tb_TemporariaENT_NUMERO: TFloatField;
    Tb_TemporariaENT_DATA: TStringField;
    Tb_Temporariasai_total: TFloatField;
    Tb_Temporariaent_pcouni: TFloatField;
    Tb_Temporariaent_totent: TFloatField;
    Tb_Temporariaent_lucro: TFloatField;
    Tb_Temporariasai_totacre: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_TemporariaCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fComXVdaCab(ptipo: Integer): Boolean;
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_LucSai: TFrm_LucSai;
  mlin, mpag: Integer;
  mlucro, mperc: Real;
implementation

uses Sr_LucSai;

{$R *.dfm}

procedure TFrm_LucSai.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_LucSai.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_LucSai.bbImprimirClick(Sender: TObject);
var
mlid,mqtd: Integer;
mtabtemp2, mtabtemp: String;
mdatanf, mdtvcto: TDateTime;
mnumnf,mtotpf, mtotnf, mtotdup, mtotpag: Real;
mtotluc,mtotdes, mtotjur, mtotped: Real;
mqtddup, mqtdnf: Integer;
mhorai, mhoraf: TDateTime;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if pbanco=1 then
   begin
   MessageDlg('Não disponivel para banco de dados interbase!',mtWarning,[mbOk],0);
   exit;
   end;
mhorai:=Now;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Calculando os Pedidos, Aguarde...';
Frm_Agde.Show;
verteclado(0);

Tb_TemporariaSAI_DATA.DisplayFormat:=fdt2;
Tb_TemporariaSAI_QUANTIDADE.DisplayFormat:=mcasqtd;
Tb_TemporariaSAI_VLPRODUTO.DisplayFormat :=mcasas;
Tb_TemporariaSAI_PCOUNIT.DisplayFormat   :=mcasaspu;
Tb_TemporariaSAI_VLDESCONTO.DisplayFormat:=mcasas;
Tb_TemporariaSAI_ICMSRET.DisplayFormat   :=mcasas;
Tb_TemporariaSAI_ALIQ.DisplayFormat      :=mcasas;
Tb_TemporariaSAI_ACRECV.DisplayFormat    :=mcasas;
Tb_TemporariaSAI_ACREGER.DisplayFormat   :=mcasas;
Tb_TemporariaENT_ALIQ.DisplayFormat      :=mcasas;
Tb_TemporariaENT_ICMSRET.DisplayFormat   :=mcasas;
Tb_TemporariaENT_QUANTIDADE.DisplayFormat:=mcasas;
Tb_TemporariaENT_DESCRAT.DisplayFormat   :=mcasas;
Tb_TemporariaENT_VLDESCONTO.DisplayFormat:=mcasas;
Tb_TemporariaENT_VLUNITARIO.DisplayFormat:=mcasas;
Tb_Temporariaent_pcouni.DisplayFormat    :=mcasaspu;
Tb_Temporariasai_totacre.DisplayFormat   :=mcasas;
Tb_Temporariaent_totent.DisplayFormat    :=mcasas;
Tb_Temporariasai_Total.DisplayFormat     :=mcasas;
Tb_Temporariaent_lucro.DisplayFormat     :=mcasas;

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

mtabtemp:='';
mtabtemp:=fProcTemp(0);
if pbanco=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp+' ('
                  +'   SAI_CODEMP  NUMBER(10), '
                  +'   SAI_DESCRICAO VARCHAR2(53), '
                  +'   SAI_UNID VARCHAR2(10), '
                  +'   SAI_CODPROD NUMBER(14), '
                  +'   SAI_NUMERO NUMBER(10, 0), '
                  +'   SAI_DATA DATE, '
                  +'   SAI_CNPJ VARCHAR2(14), '
                  +'   SAI_UF VARCHAR2(2), '
                  +'   SAI_CFOP NUMBER(10, 0), '
                  +'   SAI_QUANTIDADE NUMBER(15, 3), '
                  +'   SAI_ITEM VARCHAR2(3), '
                  +'   SAI_VLPRODUTO NUMBER(15, 2), '
                  +'   SAI_PCOUNIT NUMBER(15, 2), '
                  +'   SAI_VLDESCONTO NUMBER(15, 2), '
                  +'   SAI_ICMSRET NUMBER(15, 2), '
                  +'   SAI_ALIQ  NUMBER(10, 3), '
                  +'   SAI_ACRECV  NUMBER(15, 2), '
                  +'   SAI_ACREGER NUMBER(15, 2), '
                  +'   SAI_CST VARCHAR2(3), '
                  +'   ENT_ALIQ NUMBER(10, 3), '
                  +'   ENT_ICMSRET NUMBER(15, 2), '
                  +'   ENT_CFOP NUMBER(15, 0), '
                  +'   ENT_QUANTIDADE NUMBER(15, 3), '
                  +'   ENT_DESCRAT    NUMBER(15, 2), '
                  +'   ENT_VLDESCONTO NUMBER(15, 2), '
                  +'   ENT_VLUNITARIO NUMBER(15, 3), '
                  +'   ENT_CNPJ VARCHAR2(14), '
                  +'   ENT_UF VARCHAR2(2), '
                  +'   ENT_NUMERO NUMBER(10, 0), '
                  +'   ENT_DATA VARCHAR2(10) )');
   DM1.Query1.ExecSQL;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp+' ('
                  +'   SAI_CODEMP  NUMBER(10), '
                  +'   SAI_DESCRICAO VARCHAR(53), '
                  +'   SAI_UNID VARCHAR(10), '
                  +'   SAI_CODPROD DOUBLE PRECISION, '
                  +'   SAI_NUMERO DOUBLE PRECISION, '
                  +'   SAI_DATA TIMESTAMP, '
                  +'   SAI_CNPJ VARCHAR(14), '
                  +'   SAI_UF VARCHAR(2), '
                  +'   SAI_CFOP DOUBLE PRECISION, '
                  +'   SAI_QUANTIDADE DOUBLE PRECISION, '
                  +'   SAI_ITEM VARCHAR(3), '
                  +'   SAI_VLPRODUTO DOUBLE PRECISION, '
                  +'   SAI_PCOUNIT DOUBLE PRECISION, '
                  +'   SAI_VLDESCONTO DOUBLE PRECISION, '
                  +'   SAI_ICMSRET DOUBLE PRECISION, '
                  +'   SAI_ALIQ  DOUBLE PRECISION, '
                  +'   SAI_ACRECV  DOUBLE PRECISION, '
                  +'   SAI_ACREGER DOUBLE PRECISION, '
                  +'   SAI_CST VARCHAR(3), '
                  +'   ENT_ALIQ DOUBLE PRECISION, '
                  +'   ENT_ICMSRET DOUBLE PRECISION, '
                  +'   ENT_CFOP DOUBLE PRECISION, '
                  +'   ENT_QUANTIDADE DOUBLE PRECISION, '
                  +'   ENT_DESCRAT    DOUBLE PRECISION, '
                  +'   ENT_VLDESCONTO DOUBLE PRECISION, '
                  +'   ENT_VLUNITARIO DOUBLE PRECISION, '
                  +'   ENT_CNPJ VARCHAR(14), '
                  +'   ENT_UF VARCHAR(2), '
                  +'   ENT_NUMERO DOUBLE PRECISION, '
                  +'   ENT_DATA VARCHAR(10) )');
   DM1.Query1.ExecSQL;
   end;


mtabtemp2:='';
mtabtemp2:=fProcTemp(0);
if pbanco=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp2+' ('
                  +'   SAI_CODEMP  NUMBER(10), '
                  +'   SAI_DESCRICAO VARCHAR2(53), '
                  +'   SAI_UNID VARCHAR2(10), '
                  +'   SAI_CODPROD NUMBER(14), '
                  +'   SAI_NUMERO NUMBER(10, 0), '
                  +'   SAI_DATA DATE, '
                  +'   SAI_CNPJ VARCHAR2(14), '
                  +'   SAI_UF VARCHAR2(2), '
                  +'   SAI_CFOP NUMBER(10, 0), '
                  +'   SAI_QUANTIDADE NUMBER(15, 3), '
                  +'   SAI_ITEM VARCHAR2(3), '
                  +'   SAI_VLPRODUTO NUMBER(15, 2), '
                  +'   SAI_PCOUNIT NUMBER(15, 2), '
                  +'   SAI_VLDESCONTO NUMBER(15, 2), '
                  +'   SAI_ALIQ   NUMBER(10, 3), '
                  +'   SAI_ACRECV NUMBER(15, 2), '
                  +'   SAI_ACREGER NUMBER(15, 2), '
                  +'   SAI_ICMSRET NUMBER(15, 2), '
                  +'   SAI_CST VARCHAR2(3) '
                  +'   )');
   DM1.Query1.ExecSQL;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp2+' ('
                  +'   SAI_CODEMP  NUMBER(10), '
                  +'   SAI_DESCRICAO VARCHAR(53), '
                  +'   SAI_UNID VARCHAR(10), '
                  +'   SAI_CODPROD DOUBLE PRECISION, '
                  +'   SAI_NUMERO DOUBLE PRECISION, '
                  +'   SAI_DATA TIMESTAMP, '
                  +'   SAI_CNPJ VARCHAR(14), '
                  +'   SAI_UF VARCHAR(2), '
                  +'   SAI_CFOP DOUBLE PRECISION, '
                  +'   SAI_QUANTIDADE DOUBLE PRECISION, '
                  +'   SAI_ITEM VARCHAR(3), '
                  +'   SAI_VLPRODUTO DOUBLE PRECISION, '
                  +'   SAI_PCOUNIT DOUBLE PRECISION, '
                  +'   SAI_VLDESCONTO DOUBLE PRECISION, '
                  +'   SAI_ALIQ   DOUBLE PRECISION, '
                  +'   SAI_ACRECV DOUBLE PRECISION, '
                  +'   SAI_ACREGER DOUBLE PRECISION, '
                  +'   SAI_ICMSRET DOUBLE PRECISION, '
                  +'   SAI_CST VARCHAR(3) '
                  +'   )');
   DM1.Query1.ExecSQL;
   end;

Application.CreateForm(TFrm_Stru, Frm_Stru);
Frm_Stru.FTriggersDiversas(0,mtabtemp2,mtabtemp,mtabtemp2+'_trig01','');
Frm_Stru.free;
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.sql.add('Insert into '+mtabtemp2+'( '
                  +'SAI_DESCRICAO,'
                  +'SAI_UNID,'
                  +'SAI_CODPROD,'
                  +'SAI_NUMERO,'
                  +'SAI_DATA,'
                  +'SAI_CNPJ,'
                  +'SAI_UF,'
                  +'SAI_CFOP,'
                  +'SAI_QUANTIDADE,'
                  +'SAI_ITEM,'
                  +'SAI_VLPRODUTO,'
                  +'SAI_PCOUNIT,'
                  +'SAI_VLDESCONTO,'
                  +'SAI_ALIQ,'
                  +'SAI_ACRECV,'
                  +'SAI_ACREGER,'
                  +'SAI_ICMSRET,'
                  +'SAI_CST) Select '
                  +'PDNOME,'
                  +'PDUND,'
                  +'P2CODPRO,'
                  +'P2CHAVE, '
                  +'P1DATDOC, '
                  +'0 AS CNPJ, '
                  +chr(39)+' '+chr(39)+' as UF,'
                  +'P2CFO, '
                  +'P2QTD, '
                  +'P2ITEM, '
                  +'(P2TOTLIQ-P2DESCRAT) AS VLPRODUTO,'
                  +'P2PRECO, '
                  +'(P2TOTDES+P2DESCRAT) AS VLDESCONTO,'
                  +'P2ALIQ, '
                  +'P2ACRECONV, '
                  +'P2ACREGER, '
                  +'P2ICMSR, '
                  +'P2SIT from CADP01,CADP02,CADPRO where '
                  +iif(Trim(la_Empresas)='','',la_Empresas+' and ')
                  +' P1STATUS<'+mstatus_excluido+' and P1TIPO=1 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
  DM1.Query2.SQL.add(' and P2CODEMP=P1CODEMP ');
DM1.Query2.SQL.add(' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE '
                  +' and P2ORDEM=P1ORDEM '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                  +' and PDCODPRO=P2CODPRO ');
DM1.Query2.ExecSQL;
mlid:=0;
Tb_Temporaria.Close;
Tb_Temporaria.SQL.Clear;
Tb_Temporaria.SQL.Add('Select * from '+mTabTemp+' order by SAI_DATA,SAI_NUMERO');
Tb_Temporaria.Open;
Frm_agde.free;
mhoraf:=Now;
{
MessageDlg('Inicio: '+FormatDateTime(fhr, mhorai)+' término: '+FormatDateTime(fhr, mhoraf)+#13
          +' Duração: '+FormatDateTime(fhr, mhoraf-mhorai),mtWarning,[mbOk],0);
}
Application.CreateForm(TQr_LucSai, Qr_Lucsai);
Qr_LucSai.periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
verteclado(0);
Qr_LucSai.PreviewModal;
Qr_LucSai.Free;
Tb_Temporaria.Close;

if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;
if Trim(mtabtemp2)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp2);
   DM1.Query1.ExecSQL;
   end;


end;

procedure TFrm_LucSai.CODFORExit(Sender: TObject);
begin
if valFloat(CODFOR.Text)=0 then
   begin
   CODFOR.Text:='';
   end;
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else if flcadfor(1,0,CODFOR.Text) then
   NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value
else
   begin
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   CODFOR.SetFocus;
   end;

end;

procedure TFrm_LucSai.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_AjDescPro',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_LucSai.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LucSai.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;
function TFrm_LucSai.fComXVdaCab(ptipo: Integer): Boolean;
begin
mpag:=mpag+1;
Frm_impres.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mreduz);
Frm_Impres.RDprint1.ImpF(01,120,'Data: '+FormatDateTime(fdt2, date),mreduz);
Frm_Impres.RDprint1.ImpF(02,01,'Relatorio de Notas de Entradas com Venda Estimada. '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',mreduz);
Frm_Impres.RDprint1.ImpF(02,120,'Pagina:     '+FormatFloat('0000', mpag),mreduz);
Frm_Impres.RDprint1.ImpF(03,01,insere2('-','-',136),mreduz);
mlin:=3;
if Trim(CODFOR.Text)<>'' then
   begin
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,Centra('Notas do Fornecedor: '+CODFOR.Text+'-'+Trim(NOMFOR.Text),' ',80),mneg);
   end;
mlin:=mlin+1;
Frm_Impres.RDprint1.ImpF(mlin,01,'+------+------+--------+-----------+--------------+--------------+--------+-----------+--------+--------+-----------+----------+-------+',mreduz);
mlin:=mlin+1;
Frm_Impres.RDprint1.impf(mlin,01,'|Num.nf|Chave |Data Nf |Tot. Pedido|   Total NF Qt|Total Dupl. qt|Dt.Venc.| Total Pago|Desconto|   Juros|Valor Simul|lucro/perd|Percent|',mreduz);
result:=True;
end;

procedure TFrm_LucSai.Tb_TemporariaCalcFields(DataSet: TDataSet);
begin
Tb_Temporariasai_total.Value:=Tb_TemporariaSAI_QUANTIDADE.Value
                             *Tb_TemporariaSAI_PCOUNIT.Value;
Tb_Temporariasai_totacre.Value:=Tb_TemporariaSAI_ACRECV.Value+Tb_TemporariaSAI_ACREGER.Value;
Tb_Temporariasai_total.Value:=Tb_Temporariasai_total.Value
                             -Tb_TemporariaSAI_VLDESCONTO.Value;
//
//                             +Tb_TemporariaSAI_ACRECV.Value
//                             +Tb_TemporariaSAI_ACREGER.Value;
if Tb_TemporariaENT_DATA.Value='ESTOQUE' then
   Tb_Temporariaent_pcouni.Value:=Tb_TemporariaSAI_PCOUNIT.Value
else
   begin
   Tb_Temporariaent_pcouni.Value:=Tb_TemporariaENT_VLUNITARIO.Value*
                                 Tb_TemporariaENT_QUANTIDADE.Value;
   Tb_Temporariaent_pcouni.Value:=Tb_Temporariaent_pcouni.Value
                                 +Tb_TemporariaENT_ICMSRET.Value
                                 -Tb_TemporariaENT_DESCRAT.Value
                                 -Tb_TemporariaENT_VLDESCONTO.Value;
   try
      Tb_Temporariaent_pcouni.Value:=Tb_Temporariaent_pcouni.Value/Tb_TemporariaENT_QUANTIDADE.Value;
   except
      Tb_Temporariaent_pcouni.Value:=Tb_TemporariaSAI_PCOUNIT.Value;
      end;
   Tb_Temporariaent_pcouni.Value:=Arredonda(Tb_Temporariaent_pcouni.Value,mQtdCas_arredpu);
   end;
Tb_Temporariaent_totent.Value:=Tb_Temporariaent_pcouni.Value*Tb_TemporariaSAI_QUANTIDADE.Value;
Tb_Temporariaent_lucro.Value :=Tb_Temporariasai_total.Value-Tb_Temporariaent_totent.Value;


end;

procedure TFrm_LucSai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LucSai.FormKeyDown(Sender: TObject; var Key: Word;
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
