unit S_LucEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,func,lerarq,S_For, DB, DBTables,S_Agde,
  S_Impres,S_Stru, S_SelEmp;

type
  TFrm_LucEnt = class(TForm)
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
    Tb_TemporariaCPR_CODEMP: TFloatField;
    Tb_TemporariaCPR_DESCRICAO: TStringField;
    Tb_TemporariaCPR_UNID: TStringField;
    Tb_TemporariaCPR_CODPROD: TFloatField;
    Tb_TemporariaCPR_NUMERO: TFloatField;
    Tb_TemporariaCPR_DATA: TDateTimeField;
    Tb_TemporariaCPR_CNPJ: TStringField;
    Tb_TemporariaCPR_UF: TStringField;
    Tb_TemporariaCPR_CFOP: TFloatField;
    Tb_TemporariaCPR_QUANTIDADE: TFloatField;
    Tb_TemporariaCPR_ITEM: TStringField;
    Tb_TemporariaCPR_VLPRODUTO: TFloatField;
    Tb_TemporariaCPR_PCOUNIT: TFloatField;
    Tb_TemporariaCPR_VLDESCONTO: TFloatField;
    Tb_TemporariaCPR_ICMSRET: TFloatField;
    Tb_TemporariaCPR_ALIQ: TFloatField;
    Tb_TemporariaCPR_ACRECV: TFloatField;
    Tb_TemporariaCPR_ACREGER: TFloatField;
    Tb_TemporariaCPR_CST: TStringField;
    Tb_TemporariaVDA_ALIQ: TFloatField;
    Tb_TemporariaVDA_ICMSRET: TFloatField;
    Tb_TemporariaVDA_CFOP: TFloatField;
    Tb_TemporariaVDA_QUANTIDADE: TFloatField;
    Tb_TemporariaVDA_DESCRAT: TFloatField;
    Tb_TemporariaVDA_VLDESCONTO: TFloatField;
    Tb_TemporariaVDA_VLUNITARIO: TFloatField;
    Tb_TemporariaVDA_CNPJ: TStringField;
    Tb_TemporariaVDA_UF: TStringField;
    Tb_TemporariaVDA_NUMERO: TFloatField;
    Tb_TemporariaVDA_DATA: TStringField;
    Tb_Temporariacpr_total: TFloatField;
    Tb_Temporariavda_totvda: TFloatField;
    Tb_Temporariavda_lucro: TFloatField;
    Tb_Temporariacpr_totacre: TFloatField;
    Tb_Temporariavda_pcounit: TFloatField;
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
  Frm_LucEnt: TFrm_LucEnt;
  mlin, mpag: Integer;
  mlucro, mperc: Real;
implementation

uses Sr_LucEnt;

{$R *.dfm}

procedure TFrm_LucEnt.MDT1Exit(Sender: TObject);
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

procedure TFrm_LucEnt.MDT2Exit(Sender: TObject);
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

procedure TFrm_LucEnt.bbImprimirClick(Sender: TObject);
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

Tb_TemporariaCPR_DATA.DisplayFormat:=fdt2;
Tb_TemporariaCPR_QUANTIDADE.DisplayFormat:=mcasqtd;
Tb_TemporariaCPR_VLPRODUTO.DisplayFormat :=mcasas;
Tb_TemporariaCPR_PCOUNIT.DisplayFormat   :=mcasaspu;
Tb_TemporariaCPR_VLDESCONTO.DisplayFormat:=mcasas;
Tb_TemporariaCPR_ICMSRET.DisplayFormat   :=mcasas;
Tb_TemporariaCPR_ALIQ.DisplayFormat      :=mcasas;
Tb_TemporariaCPR_ACRECV.DisplayFormat    :=mcasas;
Tb_TemporariaCPR_ACREGER.DisplayFormat   :=mcasas;
Tb_TemporariaVDA_ALIQ.DisplayFormat      :=mcasas;
Tb_TemporariaVDA_ICMSRET.DisplayFormat   :=mcasas;
Tb_TemporariaVDA_QUANTIDADE.DisplayFormat:=mcasas;
Tb_TemporariaVDA_DESCRAT.DisplayFormat   :=mcasas;
Tb_TemporariaVDA_VLDESCONTO.DisplayFormat:=mcasas;
Tb_TemporariaVDA_VLUNITARIO.DisplayFormat:=mcasas;
Tb_TemporariaCPR_totacre.DisplayFormat   :=mcasas;
Tb_Temporariavda_totvda.DisplayFormat    :=mcasas;
Tb_TemporariaCPR_Total.DisplayFormat     :=mcasas;
Tb_TemporariaVDA_lucro.DisplayFormat     :=mcasas;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

mtabtemp:='';
mtabtemp:=fProcTemp(0);
if pbanco=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp+' ('
                  +'   CPR_CODEMP  NUMBER(10), '
                  +'   CPR_DESCRICAO VARCHAR2(53), '
                  +'   CPR_UNID VARCHAR2(10), '
                  +'   CPR_CODPROD NUMBER(14), '
                  +'   CPR_NUMERO NUMBER(10, 0), '
                  +'   CPR_DATA DATE, '
                  +'   CPR_CNPJ VARCHAR2(14), '
                  +'   CPR_UF VARCHAR2(2), '
                  +'   CPR_CFOP NUMBER(10, 0), '
                  +'   CPR_QUANTIDADE NUMBER(15, 3), '
                  +'   CPR_ITEM VARCHAR2(3), '
                  +'   CPR_VLPRODUTO NUMBER(15, 2), '
                  +'   CPR_PCOUNIT NUMBER(15, 2), '
                  +'   CPR_VLDESCONTO NUMBER(15, 2), '
                  +'   CPR_ICMSRET NUMBER(15, 2), '
                  +'   CPR_ALIQ  NUMBER(10, 3), '
                  +'   CPR_ACRECV  NUMBER(15, 2), '
                  +'   CPR_ACREGER NUMBER(15, 2), '
                  +'   CPR_CST VARCHAR2(3), '
                  +'   VDA_ALIQ NUMBER(10, 3), '
                  +'   VDA_ICMSRET NUMBER(15, 2), '
                  +'   VDA_CFOP NUMBER(15, 0), '
                  +'   VDA_QUANTIDADE NUMBER(15, 3), '
                  +'   VDA_DESCRAT    NUMBER(15, 2), '
                  +'   VDA_VLDESCONTO NUMBER(15, 2), '
                  +'   VDA_VLUNITARIO NUMBER(15, 3), '
                  +'   VDA_CNPJ VARCHAR2(14), '
                  +'   VDA_UF VARCHAR2(2), '
                  +'   VDA_NUMERO NUMBER(10, 0), '
                  +'   VDA_DATA VARCHAR2(10) )');
   DM1.Query1.ExecSQL;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp+' ('
                  +'   CPR_CODEMP  NUMBER(10), '
                  +'   CPR_DESCRICAO VARCHAR(53), '
                  +'   CPR_UNID VARCHAR(10), '
                  +'   CPR_CODPROD DOUBLE PRECISION, '
                  +'   CPR_NUMERO DOUBLE PRECISION, '
                  +'   CPR_DATA TIMESTAMP, '
                  +'   CPR_CNPJ VARCHAR(14), '
                  +'   CPR_UF VARCHAR(2), '
                  +'   CPR_CFOP DOUBLE PRECISION, '
                  +'   CPR_QUANTIDADE DOUBLE PRECISION, '
                  +'   CPR_ITEM VARCHAR(3), '
                  +'   CPR_VLPRODUTO DOUBLE PRECISION, '
                  +'   CPR_PCOUNIT DOUBLE PRECISION, '
                  +'   CPR_VLDESCONTO DOUBLE PRECISION, '
                  +'   CPR_ICMSRET DOUBLE PRECISION, '
                  +'   CPR_ALIQ  DOUBLE PRECISION, '
                  +'   CPR_ACRECV  DOUBLE PRECISION, '
                  +'   CPR_ACREGER DOUBLE PRECISION, '
                  +'   CPR_CST VARCHAR(3), '
                  +'   VDA_ALIQ DOUBLE PRECISION, '
                  +'   VDA_ICMSRET DOUBLE PRECISION, '
                  +'   VDA_CFOP DOUBLE PRECISION, '
                  +'   VDA_QUANTIDADE DOUBLE PRECISION, '
                  +'   VDA_DESCRAT    DOUBLE PRECISION, '
                  +'   VDA_VLDESCONTO DOUBLE PRECISION, '
                  +'   VDA_VLUNITARIO DOUBLE PRECISION, '
                  +'   VDA_CNPJ VARCHAR(14), '
                  +'   VDA_UF VARCHAR(2), '
                  +'   VDA_NUMERO DOUBLE PRECISION, '
                  +'   VDA_DATA VARCHAR(10) )');
   DM1.Query1.ExecSQL;
   end;


mtabtemp2:='';
mtabtemp2:=fProcTemp(0);
if pbanco=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp2+' ('
                  +'   CPR_CODEMP  NUMBER(10), '
                  +'   CPR_DESCRICAO VARCHAR2(53), '
                  +'   CPR_UNID VARCHAR2(10), '
                  +'   CPR_CODPROD NUMBER(14), '
                  +'   CPR_NUMERO NUMBER(10, 0), '
                  +'   CPR_DATA DATE, '
                  +'   CPR_CNPJ VARCHAR2(14), '
                  +'   CPR_UF VARCHAR2(2), '
                  +'   CPR_CFOP NUMBER(10, 0), '
                  +'   CPR_QUANTIDADE NUMBER(15, 3), '
                  +'   CPR_ITEM VARCHAR2(3), '
                  +'   CPR_VLPRODUTO NUMBER(15, 2), '
                  +'   CPR_PCOUNIT NUMBER(15, 2), '
                  +'   CPR_VLDESCONTO NUMBER(15, 2), '
                  +'   CPR_ALIQ   NUMBER(10, 3), '
                  +'   CPR_ACRECV NUMBER(15, 2), '
                  +'   CPR_ACREGER NUMBER(15, 2), '
                  +'   CPR_ICMSRET NUMBER(15, 2), '
                  +'   CPR_CST VARCHAR2(3) '
                  +'   )');
   DM1.Query1.ExecSQL;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE '+mtabtemp2+' ('
                  +'   CPR_CODEMP  NUMBER(10), '
                  +'   CPR_DESCRICAO VARCHAR(53), '
                  +'   CPR_UNID VARCHAR(10), '
                  +'   CPR_CODPROD DOUBLE PRECISION, '
                  +'   CPR_NUMERO DOUBLE PRECISION, '
                  +'   CPR_DATA TIMESTAMP, '
                  +'   CPR_CNPJ VARCHAR(14), '
                  +'   CPR_UF VARCHAR(2), '
                  +'   CPR_CFOP DOUBLE PRECISION, '
                  +'   CPR_QUANTIDADE DOUBLE PRECISION, '
                  +'   CPR_ITEM VARCHAR(3), '
                  +'   CPR_VLPRODUTO DOUBLE PRECISION, '
                  +'   CPR_PCOUNIT DOUBLE PRECISION, '
                  +'   CPR_VLDESCONTO DOUBLE PRECISION, '
                  +'   CPR_ALIQ   DOUBLE PRECISION, '
                  +'   CPR_ACRECV DOUBLE PRECISION, '
                  +'   CPR_ACREGER DOUBLE PRECISION, '
                  +'   CPR_ICMSRET DOUBLE PRECISION, '
                  +'   CPR_CST VARCHAR(3) '
                  +'   )');
   DM1.Query1.ExecSQL;
   end;

Application.CreateForm(TFrm_Stru, Frm_Stru);
Frm_Stru.FTriggersDiversas(1,mtabtemp2,mtabtemp,mtabtemp2+'_trig01','');
Frm_Stru.free;

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.sql.add('Insert into '+mtabtemp2+'( '
                  +'CPR_DESCRICAO,'
                  +'CPR_UNID,'
                  +'CPR_CODPROD,'
                  +'CPR_NUMERO,'
                  +'CPR_DATA,'
                  +'CPR_CNPJ,'
                  +'CPR_UF,'
                  +'CPR_CFOP,'
                  +'CPR_QUANTIDADE,'
                  +'CPR_ITEM,'
                  +'CPR_VLPRODUTO,'
                  +'CPR_PCOUNIT,'
                  +'CPR_VLDESCONTO,'
                  +'CPR_ALIQ,'
                  +'CPR_ACRECV,'
                  +'CPR_ACREGER,'
                  +'CPR_ICMSRET,'
                  +'CPR_CST) Select '
                  +'NVL(TRIM(PF2NOMPRO),PDNOME) AS PDNOME,'
                  +'PDUND,'
                  +'PF2CODPRO,'
                  +'PF2CHAVE, '
                  +'PF1DATAENT, '
                  +'0 AS CNPJ, '
                  +chr(39)+' '+chr(39)+' as UF,'
                  +'PF2CFO, '
                  +'PF2QTDP, '
                  +'PF2ITEM, '
                  +'(PF2PU*PF2QTDP)-(PF2TOTDES) AS VLPRODUTO,'
                  +'PF2PU, '
                  +'(PF2TOTDES+PF2DESCRAT) AS VLDESCONTO,'
                  +'PF2ALIQ, '
                  +'0, '
                  +'0, '
                  +'PF2ICMSR, '
                  +'PF2SIT from CADPF1,CADPF2,CADPRO where '
                  +iif(Trim(la_Empresas)='','',la_Empresas+' and ')
                  +' PF1STATUS<9 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
  DM1.Query2.SQL.add(' and PF2LOTSEQ=PF1LOTSEQ and PF2CODEMP=PF1CODEMP ');
DM1.Query2.SQL.add(' and PF2CHAVE=PF1CHAVE '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                  +' and PDCODPRO=PF2CODPRO ');
DM1.Query2.ExecSQL;
mlid:=0;

Tb_Temporaria.Close;
Tb_Temporaria.SQL.Clear;
Tb_Temporaria.SQL.Add('Select * from '+mTabTemp+' order by CPR_DATA,CPR_NUMERO');
Tb_Temporaria.Open;
Frm_agde.free;
mhoraf:=Now;
{
MessageDlg('Inicio: '+FormatDateTime(fhr, mhorai)+' término: '+FormatDateTime(fhr, mhoraf)+#13
          +' Duração: '+FormatDateTime(fhr, mhoraf-mhorai),mtWarning,[mbOk],0);
}

Application.CreateForm(TQr_LucEnt, Qr_LucEnt);
Qr_LucEnt.periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
verteclado(0);
Qr_LucEnt.PreviewModal;
Qr_LucEnt.Free;
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

procedure TFrm_LucEnt.CODFORExit(Sender: TObject);
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

procedure TFrm_LucEnt.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_LucEnt',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_LucEnt.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LucEnt.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

function TFrm_LucEnt.fComXVdaCab(ptipo: Integer): Boolean;
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

procedure TFrm_LucEnt.Tb_TemporariaCalcFields(DataSet: TDataSet);
begin
Tb_Temporariacpr_total.Value:=Tb_TemporariaCPR_QUANTIDADE.Value
                             *Tb_TemporariaCPR_PCOUNIT.Value;
Tb_Temporariacpr_totacre.Value:=Tb_TemporariaCPR_ACRECV.Value+Tb_TemporariaCPR_ACREGER.Value;
Tb_Temporariacpr_total.Value:=Tb_Temporariacpr_total.Value
                             -Tb_TemporariaCPR_VLDESCONTO.Value
                             +Tb_TemporariaCPR_ACRECV.Value
                             +Tb_TemporariaCPR_ACREGER.Value;
if Tb_TemporariaVDA_DATA.Value='ESTOQUE' then
   Tb_Temporariavda_pcounit.Value:=Tb_TemporariaCPR_PCOUNIT.Value
else
   begin
   Tb_Temporariavda_pcounit.Value:=Tb_TemporariaCPR_PCOUNIT.Value*
                                 Tb_TemporariaCPR_QUANTIDADE.Value;
   Tb_Temporariavda_pcounit.Value:=Tb_Temporariavda_pcounit.Value
                                 +Tb_TemporariaCPR_ICMSRET.Value
                                 -Tb_TemporariaVDA_DESCRAT.Value
                                 -Tb_TemporariaVDA_VLDESCONTO.Value;
   try
      Tb_Temporariavda_pcounit.Value:=Tb_Temporariavda_pcounit.Value/Tb_TemporariaCPR_QUANTIDADE.Value;
   except
      Tb_Temporariavda_pcounit.Value:=Tb_TemporariaCPR_PCOUNIT.Value;
      end;
   Tb_Temporariavda_pcounit.Value:=Arredonda(Tb_TemporariaVDA_pcounit.Value,mQtdCas_arredpu);
   end;
Tb_Temporariavda_totvda.Value:=Tb_Temporariavda_pcounit.Value*Tb_TemporariaCPR_QUANTIDADE.Value;
Tb_Temporariavda_lucro.Value :=Tb_Temporariavda_totvda.Value-Tb_Temporariacpr_total.Value;


end;

procedure TFrm_LucEnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LucEnt.FormKeyDown(Sender: TObject; var Key: Word;
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
