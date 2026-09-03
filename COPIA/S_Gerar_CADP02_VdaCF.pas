unit S_Gerar_CADP02_VdaCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Gauges, ComCtrls, DBTables;

type
  TFrm_Gerar_CADP02_VdaCF = class(TForm)
    ADOConnection1: TADOConnection;
    ADO_Origem: TADOQuery;
    ADO_OrigemcontCOO: TIntegerField;
    ADO_OrigemHoraInicio: TDateTimeField;
    ADO_OrigemcontCCF: TIntegerField;
    ADO_OrigemCNPJ_CPFConsumidor: TWideStringField;
    ADO_OrigemNome: TWideStringField;
    ADO_OrigemEndereco: TWideStringField;
    ADO_OrigemSubTotal: TBCDField;
    ADO_OrigemValorAcrescimo: TBCDField;
    ADO_OrigemValorDesconto: TBCDField;
    ADO_OrigemTotal: TBCDField;
    ADO_OrigemSomaPgto: TBCDField;
    ADO_OrigemTroco: TBCDField;
    ADO_OrigemTextoSuplementar: TMemoField;
    ADO_OrigemCancelado: TBooleanField;
    ADO_OrigemCupomAdicional: TBooleanField;
    ADO_OrigemDescontoISSDesabilitado: TBooleanField;
    ADO_Itens: TADOQuery;
    ADO_Itensaliq: TFloatField;
    ADO_ItenscontCOOCupom: TIntegerField;
    ADO_ItensCodigoItem: TIntegerField;
    ADO_ItensCodigo: TWideStringField;
    ADO_ItensQuantidade: TFloatField;
    ADO_ItensValorTotal: TBCDField;
    ADO_ItensSituacaoTributaria: TIntegerField;
    gb_progress: TGroupBox;
    Gauge1: TGauge;
    lbl_titulo: TLabel;
    PageControl1: TPageControl;
    TsGerais: TTabSheet;
    tsLogs: TTabSheet;
    Memo_Erros: TMemo;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    edt_nomarq: TEdit;
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    ADO_ItensValorUnitario: TBCDField;
    Qr_IncPed02: TQuery;
    sbn: TSpeedButton;
    opd1: TOpenDialog;
    procedure bbImportarClick(Sender: TObject);
    procedure sbnClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Gerar_CADP02_VdaCF: TFrm_Gerar_CADP02_VdaCF;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_Gerar_CADP02_VdaCF.bbImportarClick(Sender: TObject);
var
mcinst: String;
mqtdReg,mLidos: Integer;
mChavePed,mOrdemPed,mCodEmpPed,mLotSeqPed: Integer;
mPercDes, mMaiorValor, mDescResta,mValorDesc: Real;
mItemMaior: Integer;
mItem_Maior_Tributado: Boolean;
begin
if trim(edt_nomarq.Text)='' then
   begin
   MessageDlg('Nome do arquivo tem que ser colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if not FileExists(edt_nomarq.Text) then
   begin
   MessageDlg('Arquivo não encontrado!',mtWarning,[mbOk],0);
   exit;
   end;

if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial Maior que Final, invalido!',mtWarning,[mbOk],0);
      Exit;
      end;
   end;
if (trim(MDT1.Text)='/  /') or (trim(MDT2.Text)='/  /') then
   begin
   MessageDlg('Data Inicial e Data Final são obrigatórias!',mtWarning,[mbOk],0);
   Exit;
   end;


if Application.MessageBox(pchar('Quer Realmente Importar o Arquivo '+edt_nomarq.text),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;


ADOConnection1.Close;

ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;'
+'Data Source='+edt_nomarq.Text+';Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";'
+'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=6;'
+'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
+'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'
+'Jet OLEDB:Don'+chr(39)+'t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;'
+'Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False';

try
   ADOConnection1.Connected:=true;
except
    MessageDlg('Não Foi Possivel Abrir o Banco de Dados: '+edt_nomarq.Text,mtWarning,[mbOK],0);
    exit;
   end;

ADO_Origem.Close;
ADO_Origem.SQL.Clear;
ADO_Origem.SQL.Add('Select * from CuponsFiscais where cancelado=0 ');

mcinst:=' and ';
if trim(MDT1.Text)<>'/  /' then
   begin
   ADO_Origem.SQL.Add(mcinst+' HoraInicio>:datini');
   ADO_Origem.Parameters.ParamByName('datini').Value:=StrToDateTime(mdt1.Text+' 00:00:01');
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   ADO_Origem.SQL.Add(mcinst+' HoraInicio<:datfin');
   ADO_Origem.Parameters.ParamByName('datfin').Value:=StrToDateTime(mdt2.Text+' 23:59:59');
   mcinst:=' and ';
   end;

ADO_Origem.SQL.Add(' Order by contCOO ');
try
   ADO_Origem.Open;
except
   ADO_Origem.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrir o Arquivos '+edt_nomarq.Text,mtWarning,[mbOk],0 );
   exit;
   end;
// itens

if ADO_Origem.IsEmpty then
   begin
   MessageDlg('Não ha Registros a serem processados!',mtWarning,[mbOK],0);
   exit;
   end;

ADO_Itens.Close;
ADO_Itens.SQL.Clear;
ADO_Itens.SQL.Add(' Select contCOOCupom,CodigoItem,Codigo,Quantidade,ValorTotal,SituacaoTributaria,ValorUnitario '
                  +' from ItensPorCupom,itensCadastrados '
                  +' where codigoItem=IdCodigoItem ');
mcinst:=' and ';
if trim(MDT1.Text)<>'/  /' then
   begin
   ADO_Itens.SQL.Add(mcinst+' HoraInicioCupom>:datini');
   ADO_Itens.Parameters.ParamByName('datini').Value:=StrToDateTime(mdt1.Text+' 00:00:01');
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   ADO_Itens.SQL.Add(mcinst+' HoraInicioCupom<:datfin');
   ADO_Itens.Parameters.ParamByName('datfin').Value:=StrToDateTime(mdt2.Text+' 23:59:59');
   mcinst:=' and ';
   end;

ADO_Itens.SQL.Add(' Order by contCOOCupom,CodigoItem,Quantidade');
try
   ADO_Itens.Open;
except
   ADO_Itens.SQL.SaveToFile('c:\sql.txt');
   exit;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.SQL.Add('select count(*) from user_objects '
                  +'where OBJECT_NAME='+QuotedStr('CADP02_VDACF0')+' AND OBJECT_TYPE='+QuotedStr('INDEX'));
DM1.Query2.Open;
if DM1.Query2.fields[0].AsInteger<1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('CREATE UNIQUE INDEX CADP02_VDACF0 ON CADP02_VDACF (P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM)');
   try
      DM1.query1.ExecSQL;
   except
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('CREATE INDEX CADP02_VDACF1 ON CADP02_VDACF (P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM)');
   try
      DM1.query1.ExecSQL;
   except
      end;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Delete from CADP02_VDACF where '
                  +' exists (Select P1CHAVE from CADP01 '
                  +' where P1CODEMP=P2CODEMP  '
                  +' and P1CHAVE=P2CHAVE '
                  +' and P1ORDEM=P2ORDEM '
                  +' and P1LOTSEQ=P2LOTSEQ '
                  +' and P1DATACF>=:DATAINI '
                  +' and P1DATACF<=:DATAFIN'
                  +')');
DM1.Query1.ParamByName('DATAINI').AsDateTime:=StrToDate(MDT1.Text);
DM1.Query1.ParamByName('DATAFIN').AsDateTime:=StrToDate(MDT2.Text);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Excluir os Pedidos Anteriores!',mtWarning,[mbOk],0);
   exit;
   end;



lbl_titulo.Caption:='Excluindo Pedidos Anteriores, aguarde';
gb_progress.Visible:=true;
mQtdReg:=ADO_Origem.RecordCount;
mLidos:=0;

Memo_Erros.Lines.clear;

While not ADO_Origem.Eof do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1DATACF,P1DATAP '
                     +' from CADP01 where P1NUMCF=:NUMCF '
                     +' and P1DATACF=:DATACF ');
   DM1.Query1.ParamByName('NUMCF').AsInteger  :=ADO_OrigemcontCOO.AsInteger;
   DM1.Query1.ParamByName('DATACF').AsDateTime:=StrToDate(FormatDateTime(fdt2, ADO_OrigemHoraInicio.AsDateTime));
   DM1.Query1.OPEN;
   if DM1.Query1.IsEmpty then
      begin
      Memo_Erros.Lines.add('Cupom Numero '+ADO_OrigemcontCOO.AsString
                          +' Valor '+FormatFloat(mcasas, ADO_OrigemTotal.asfloat)
                          +' Data: '+FormatDateTime(fdt2, ADO_OrigemHoraInicio.AsDateTime));
      ADO_Origem.Next;
      Continue;
      end;
   mChavePed :=DM1.Query1.fieldbyName('P1CHAVE').AsInteger;
   mOrdemPed :=DM1.Query1.fieldbyName('P1ORDEM').AsInteger;
   mCodEmpPed:=DM1.Query1.fieldbyName('P1CODEMP').AsInteger;
   mLotSeqPed:=DM1.Query1.fieldbyName('P1LOTSEQ').AsInteger;

   IF ADO_OrigemValorDesconto.AsFloat=0 then
      mPercDes:=0
   else
      mPercDes:=(ADO_OrigemValorDesconto.AsFloat*100) / ADO_OrigemSubTotal.AsFloat;

   mLidos:=mLidos+1;
   Gauge1.Progress:=mLidos*100 div mQtdReg;
   Frm_Gerar_CADP02_VdaCF.Update;
   mMaiorValor:=0;
   mItemMaior:=0;
   mItem_Maior_Tributado:=false;
   mDescResta:=ADO_OrigemValorDesconto.AsFloat;
   mItem:=0;
   if ADO_Itens.Locate('contCOOCupom',ADO_OrigemcontCOO.AsInteger,[]) then
      begin
      While (not ADO_Itens.Eof) and (ADO_ItenscontCOOCupom.AsInteger=ADO_OrigemcontCOO.AsInteger) do
         begin
         mItem:=mItem+1;
         Qr_IncPed02.Close;
         Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=mCodEmpPed;
         Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=mLotSeqPed;
         Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mChavePed;
         Qr_IncPed02.ParambyName('P2CHAVE_NIVEL').AsFloat :=0;
         Qr_IncPed02.ParambyName('P2PCREDSN').AsFloat     :=0;
         Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=mOrdemPed;
         Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mitem;
         Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=fSonumero(ADO_ItensCodigo.AsString);
         Qr_IncPed02.ParambyName('P2UND').AsString        :='';
         Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=ADO_ItensQuantidade.AsFloat;
         Qr_IncPed02.ParambyName('P2QTD_ATEN').AsFloat    :=ADO_ItensQuantidade.AsFloat;
         Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2LOTE').AsString       :='';
         Qr_IncPed02.ParambyName('P2DTVCTO').AsDateTime   :=pdatanula;
         Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=ADO_ItensValorUnitario.Value;
         mValorDesc:=0;
         if mPercDes=0 then
            mValorDesc:=0
         else
            mValorDesc:=truncar( (ADO_ItensValorTotal.Value*mPercDes/100),2);
         Qr_IncPed02.ParambyName('P2TOTDES').AsFloat   :=mValorDesc;
         Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat  :=mValorDesc;

         mDescResta:=mDescResta-mValorDesc;
         if (ADO_ItensValorTotal.AsFloat-mValorDesc) > mMaiorValor then
            begin
            mMaiorValor:=(ADO_ItensValorTotal.AsFloat-mValorDesc);
            mItemMaior:=mItem;
            if ADO_ItensSituacaoTributaria.AsInteger=1 then
               mItem_Maior_Tributado:=false
            else
               mItem_Maior_Tributado:=true;
            end;


         if ADO_ItensSituacaoTributaria.AsInteger=1 then
            begin
            Qr_IncPed02.ParambyName('P2SIT').AsString     :='060';
            Qr_IncPed02.ParambyName('P2BASEN').AsFloat    :=0;
            Qr_IncPed02.ParambyName('P2ICMSN').AsFloat    :=0;
            Qr_IncPed02.ParambyName('P2ALIQ').AsFloat     :=0;
            Qr_IncPed02.ParambyName('P2CFO').AsFloat      :=5405;
            Qr_IncPed02.ParambyName('P2CFOSUBECF').AsFloat:=5929;

            end
         else
            begin
            Qr_IncPed02.ParambyName('P2ALIQ').AsFloat     :=17;
            Qr_IncPed02.ParambyName('P2SIT').AsString     :='000';
            Qr_IncPed02.ParambyName('P2BASEN').AsFloat    :=ADO_ItensValorTotal.AsFloat-mValorDesc;
            Qr_IncPed02.ParambyName('P2ICMSN').AsFloat    :=Arredonda( ((ADO_ItensValorTotal.AsFloat-mValorDesc)*0.17) ,2);
            Qr_IncPed02.ParambyName('P2CFO').AsFloat      :=5102;
            Qr_IncPed02.ParambyName('P2CFOSUBECF').AsFloat:=5929;


            end;

         Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=0;
         Qr_IncPed02.ParambyName('P2TABELA').AsString     :='A';
         Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat     :=0;
         Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=0;

         Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2VCOM02').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2VCOM03').AsFloat         :=0;

         Qr_IncPed02.ParambyName('P2PCOM02').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2PCOM03').AsFloat         :=0;

         Qr_IncPed02.ParambyName('P2VCOM04').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2DESCM').AsFloat          :=0;
         Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat         :=ADO_ItensValorTotal.AsFloat-mValorDesc;

         Qr_IncPed02.ParambyName('P2PDESCF').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2VDESCF').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2ACREGER').AsFloat        :=0;
         Qr_IncPed02.ParambyName('P2PROMOCAO').AsString      :=' ';
         Qr_IncPed02.ParambyName('P2DESCPR').AsFloat         :=0;         
         Qr_IncPed02.ParambyName('P2AMBIENTE').AsString      :=' ';
         Qr_IncPed02.ParambyName('P2QTD_ENTREGUE').AsFloat   :=0;
         Qr_IncPed02.ParambyName('P2QTD_ENTREGANDO').AsFloat :=0;
         Qr_IncPed02.ParambyName('P2PCOMIS_EXTRA').AsFloat   :=0;
         Qr_IncPed02.ParambyName('P2VCOMIS_EXTRA').AsFloat   :=0;
         Qr_IncPed02.ParambyName('P2STATUS_PED1').AsFloat    :=0;
         Qr_IncPed02.ParambyName('P2TIPO').AsFloat           :=1;
         Qr_IncPed02.ParambyName('P2CODAGRU').AsFloat        :=0;
         Qr_IncPed02.ParambyName('P2CONSIG').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2ST_IVA').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2ST_REDUT').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2ST_ICMCRED').AsFloat     :=0;
         Qr_IncPed02.ParambyName('P2ST_ICMDEB').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2REDUTICM').AsFloat       :=0;
         Qr_IncPed02.ParambyName('P2PRAZO').AsFloat          :=0;

         Qr_IncPed02.ParambyName('P2ALPIS').AsFloat         :=0;
         Qr_IncPed02.ParambyName('P2VALPIS').AsFloat        :=0;
         Qr_IncPed02.ParambyName('P2ALCOFINS').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2COFINS').AsFloat        :=0;
         Qr_IncPed02.ParambyName('P2KIT_PRO').AsString :='N';
         Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      :=ADO_ItensValorUnitario.Value;;
         Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      :=ADO_ItensValorUnitario.Value;;
         Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=ADO_ItensValorUnitario.Value;;
         Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=ADO_ItensValorUnitario.Value;;
         Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=ADO_ItensValorUnitario.Value;;
         Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2CODVEN').AsFloat        :=0;
         Qr_IncPed02.ParambyName('P2TIPO_PCO').AsFloat      :=0;
         Qr_IncPed02.ParambyName('P2CONS_PROPRIO').AsFloat  :=0;
         Qr_IncPed02.ParambyName('P2COMPLEMENTO').AsString  :='';
         Qr_IncPed02.ParambyName('P2CODPRO_ORI').AsString :=' ';
         Qr_IncPed02.ParambyName('P2NOMPRO_ORI').AsString :=' ';

         Try
            Qr_IncPed02.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(Qr_IncPed02,393,'Frm_Ped_AutoP','CADP02_VDACF');
            exit;
            end;
         ADO_Itens.Next;
         end;
      if mDescResta<>0 then
         begin
         DM1.query1.close;
         DM1.query1.SQL.Clear;
         DM1.query1.SQL.Add('Update CADP02_VDACF set P2TOTLIQ=P2TOTLIQ-:VALORDIF '
                           +',P2TOTDES=P2TOTDES+:VALORDIF '
                           +',P2DESCRAT=P2DESCRAT+:VALORDIF ');
         if mItem_Maior_Tributado then
            begin
            DM1.query1.SQL.Add(',P2BASEN=P2BASEN+:VALORDIF '
                              +',P2ICMSN=ROUND( ((P2BASEN+:VALORDIF)*0.17) ,2)');
            end;
         DM1.query1.SQL.Add(' Where P2CODEMP=:CODEMP '
                           +' and   P2LOTSEQ=:LOTSEQ '
                           +' and   P2CHAVE=:CHAVE '
                           +' and   P2ORDEM=:ORDEM '
                           +' and   P2ITEM=:ITEM ');
         DM1.Query1.ParamByName('VALORDIF').AsFloat:=Arredonda(mDescResta,2);
         DM1.Query1.ParamByName('CODEMP').AsInteger:=mCodEmpPed;
         DM1.Query1.ParamByName('LOTSEQ').AsInteger:=mLotSeqPed;
         DM1.Query1.ParamByName('CHAVE').AsInteger:=mChavePed;
         DM1.Query1.ParamByName('ORDEM').AsInteger:=mOrdemPed;
         DM1.Query1.ParamByName('ITEM').AsInteger:=mItem;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,425,'Frm_Ped_AutoP','CADP02_VDACF');
            exit;

            end;
         end;
      end;

   ADO_Origem.Next;
   end;

end;

procedure TFrm_Gerar_CADP02_VdaCF.sbnClick(Sender: TObject);
begin
if trim(edt_nomarq.Text)<>'' then
   OPd1.FileName:=edt_nomarq.Text;
if Opd1.execute then
   edt_nomarq.text:=opd1.filename;


end;

procedure TFrm_Gerar_CADP02_VdaCF.bbSairClick(Sender: TObject);
begin
close;
end;

end.
