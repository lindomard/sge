unit S_BalProCol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,func, ComCtrls, Grids,
  DBGrids, CheckLst,lerarq, DB, DBTables, RDprint, S_SelEmp;

type
  TFrm_BalProCol = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    RG_tipocol: TRadioGroup;
    rg_inventario: TRadioGroup;
    lbl_nominv: TLabel;
    cb_salvo: TComboBox;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    RG_TIPOPED: TCheckListBox;
    DBGrid1: TDBGrid;
    RG_TPPRECO: TRadioGroup;
    Qr_Balanco: TQuery;
    Src_Balanco: TDataSource;
    Qr_BalancoVENDAS01: TFloatField;
    Qr_BalancoDEVOL01: TFloatField;
    Qr_BalancoVENDAS02: TFloatField;
    Qr_BalancoDEVOL02: TFloatField;
    Qr_BalancoVENDAS03: TFloatField;
    Qr_BalancoDEVOL03: TFloatField;
    Qr_BalancoVENDAS04: TFloatField;
    Qr_BalancoDEVOL04: TFloatField;
    Qr_BalancoVENDAS05: TFloatField;
    Qr_BalancoDEVOL05: TFloatField;
    Qr_BalancoVENDAS06: TFloatField;
    Qr_BalancoDEVOL06: TFloatField;
    Qr_BalancoCOMPRAS01: TFloatField;
    Qr_BalancoCOMPRAS02: TFloatField;
    Qr_BalancoCOMPRAS03: TFloatField;
    Qr_BalancoCOMPRAS04: TFloatField;
    Qr_BalancoCOMPRAS05: TFloatField;
    Qr_BalancoCOMPRAS06: TFloatField;
    Qr_BalancoESTINI: TFloatField;
    Qr_BalancoVALOREST: TFloatField;
    Qr_BalancoESTATU: TFloatField;
    Qr_BalancoCODPRO: TFloatField;
    Qr_BalancoCODFOR: TFloatField;
    Qr_BalancoNOMPRO: TStringField;
    Qr_Balancosaldo01: TFloatField;
    Qr_Balancosaldo02: TFloatField;
    Qr_Balancosaldo03: TFloatField;
    Qr_Balancosaldo04: TFloatField;
    Qr_Balancosaldo05: TFloatField;
    Qr_Balancosaldo06: TFloatField;
    Label10: TLabel;
    lbl_coluna01: TLabel;
    Label4: TLabel;
    lbl_coluna04: TLabel;
    Label6: TLabel;
    lbl_coluna05: TLabel;
    lbl_coluna02: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lbl_coluna06: TLabel;
    lbl_coluna03: TLabel;
    Label15: TLabel;
    RDprint1: TRDprint;
    CB_EmiDoc: TCheckBox;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure rg_inventarioClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Qr_BalancoCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_BalProCol: TFrm_BalProCol;
  mNomeView   :String;
  mColuna01: String;
  mColuna02: String;
  mColuna03: String;
  mColuna04: String;
  mColuna05: String;
  mColuna06: String;
  mEstini  : String;
  mDataPesq: String;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_BalProCol.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_BalProCol.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_BalProCol.bbImprimirClick(Sender: TObject);
var
mlin,mpag: Integer;
mt_EstIni: Real;
mt_Compras01: Real;
mt_Vendas01 : Real;
mt_devol01 : Real;

mt_Compras02: Real;
mt_Vendas02 : Real;
mt_devol02 : Real;

mt_Compras03: Real;
mt_Vendas03 : Real;
mt_devol03 : Real;

mt_Compras04: Real;
mt_Vendas04 : Real;
mt_devol04 : Real;

mt_Compras05: Real;
mt_Vendas05 : Real;
mt_devol05 : Real;

mt_Compras06: Real;
mt_Vendas06 : Real;
mt_devol06 : Real;

mt_Saldo06 : Real;
mt_EstAtu  : Real;
mt_ValorEst: Real;



begin

if not (Qr_Balanco.Active) then
   begin
   fmensagem('Favor Aplicar, para depois imprimir!',0,['0'],0);
   exit;
   end;
if Qr_Balanco.IsEmpty then
   begin
   fmensagem('Não ha registros a serem impressos!',0,['0'],0);
   exit;
   end;
RDprint1.Abrir;
mlin:=0;
mpag:=0;


mt_EstIni   :=0;
mt_Compras01:=0;
mt_Vendas01 :=0;
mt_devol01  :=0;
mt_Compras02:=0;
mt_Vendas02 :=0;
mt_devol02  :=0;
mt_Compras03:=0;
mt_Vendas03 :=0;
mt_devol03  :=0;

mt_Compras04:=0;
mt_Vendas04 :=0;
mt_devol04  :=0;

mt_Compras05:=0;
mt_Vendas05 :=0;
mt_devol05  :=0;

mt_Compras06:=0;
mt_Vendas06 :=0;
mt_devol06  :=0;

mt_Saldo06  :=0;
mt_EstAtu   :=0;
mt_ValorEst :=0;

Qr_Balanco.First;
While not Qr_Balanco.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
      RDprint1.ImpF(02,01,insere2('Balanco de Produtos. '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',' ',125)+'Pagina: '+FormatFloat('0000',mpag),mreduz);
      RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      mlin:=04;
      RDprint1.ImpF(04,01,'+-----+----------------------+-----+------+------+------+-------------+-------------+-------------+-------------+-------------+-------------+------------------+',m20ccp);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'|     |                      |     |'+copy(mEstini,1,05)+' |'+centra(mColuna01,' ',13)+'|'
                                      +centra(mColuna02,' ',13)+'|'
                                      +centra(mColuna03,' ',13)+'|'
                                      +centra(mColuna04,' ',13)+'|'
                                      +centra(mColuna05,' ',13)+'|'
                                      +centra(mColuna06,' ',13)+'|'
                                      +'Dev.Cl|      |Estoqu|Valor Estoq|',m20ccp);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'|Codig|Descricao             |Forn.|Inicia|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Period|Saldo | Atual|Pco.Unitar.|',m20ccp);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'+-----+----------------------+-----+------+------+------+-------------+-------------+-------------+-------------+-------------+-------------+------------------+',m20ccp);
      end;
   mlin:=mlin+1;
   RDprint1.ImpF(mlin,01,'|'+insere(Qr_BalancoCODPRO.AsString,' ',05)+'|'
                        +insere2(Qr_BalancoNOMPRO.Value,' ',22)+'|'
                        +insere (Qr_BalancoCODFOR.AsString,' ',05)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoESTINI.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS01.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS01.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS02.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS02.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS03.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS03.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS04.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS04.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS05.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS05.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoCOMPRAS06.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoVENDAS06.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, (Qr_BalancoDEVOL01.Value
                                                     +Qr_BalancoDEVOL02.Value
                                                     +Qr_BalancoDEVOL03.Value
                                                     +Qr_BalancoDEVOL04.Value
                                                     +Qr_BalancoDEVOL05.Value
                                                     +Qr_BalancoDEVOL06.Value)),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_Balancosaldo06.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, Qr_BalancoESTATU.Value),' ',06)+'|'
                        +insere (FormatFloat(mcasas, Qr_BalancoVALOREST.Value),' ',11)+'|',m20ccp);


   mt_EstIni   :=mt_EstIni   +Qr_BalancoESTINI.AsFloat;
   mt_Compras01:=mt_Compras01+Qr_BalancoCOMPRAS01.AsFloat;
   mt_Vendas01 :=mt_Vendas01 +Qr_BalancoVENDAS01.AsFloat;
   mt_devol01  :=mt_devol01  +Qr_BalancoDEVOL01.AsFloat;
   mt_Compras02:=mt_Compras02+Qr_BalancoCOMPRAS02.AsFloat;
   mt_Vendas02 :=mt_Vendas02 +Qr_BalancoVENDAS02.AsFloat;
   mt_devol02  :=mt_devol02  +Qr_BalancoDEVOL02.AsFloat;
   mt_Compras03:=mt_Compras03+Qr_BalancoCOMPRAS03.AsFloat;
   mt_Vendas03 :=mt_Vendas03 +Qr_BalancoVENDAS03.AsFloat;
   mt_devol03  :=mt_devol03  +Qr_BalancoDEVOL03.AsFloat;

   mt_Compras04:=mt_Compras04+Qr_BalancoCOMPRAS04.AsFloat;
   mt_Vendas04 :=mt_Vendas04 +Qr_BalancoVENDAS04.AsFloat;
   mt_devol04  :=mt_devol04  +Qr_BalancoDEVOL04.AsFloat;

   mt_Compras05:=mt_Compras05+Qr_BalancoCOMPRAS05.AsFloat;
   mt_Vendas05 :=mt_Vendas05 +Qr_BalancoVENDAS05.AsFloat;
   mt_devol05  :=mt_devol05  +Qr_BalancoDEVOL05.AsFloat;

   mt_Compras06:=mt_Compras06+Qr_BalancoCOMPRAS06.AsFloat;
   mt_Vendas06 :=mt_Vendas06 +Qr_BalancoVENDAS06.AsFloat;
   mt_devol06  :=mt_devol06  +Qr_BalancoDEVOL06.AsFloat;

   mt_Saldo06  :=mt_Saldo06  +Qr_Balancosaldo06.AsFloat;
   mt_EstAtu   :=mt_EstAtu   +Qr_BalancoESTATU.AsFloat;
   mt_ValorEst :=mt_ValorEst +Qr_BalancoVALOREST.AsFloat;

   Qr_Balanco.Next;
   if Qr_Balanco.Eof then
      begin
// inicio

   mlin:=mlin+1;
   RDprint1.ImpF(mlin,01,'|'+insere(' ',' ',05)+'|'
                        +insere2('-Total','.',22)+'|'
                        +insere (' ',' ',05)+'|'
                        +insere (FormatFloat(mcasqtd, mt_EstIni),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras01),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas01),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras02),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas02),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras03),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas03),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras04),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas04),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras05),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas05),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Compras06),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Vendas06),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, (mt_devol01
                                                     +mt_devol02
                                                     +mt_devol03
                                                     +mt_devol04
                                                     +mt_devol05
                                                     +mt_devol06)),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_Saldo06),' ',06)+'|'
                        +insere (FormatFloat(mcasqtd, mt_EstAtu),' ',06)+'|'
                        +insere (FormatFloat(mcasas, mt_ValorEst),' ',11)+'|',m20ccp);

// termino


      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'+-fim-+----------------------+-----+------+------+------+-------------+-------------+-------------+-------------+-------------+-------------+------------------+',m20ccp);
      if RDprint1.Setup then RDprint1.fechar;
      end
   else if mlin>57 then
      begin
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'+Continua...-----------------+-----+------+------+------+-------------+-------------+-------------+-------------+-------------+-------------+------------------+',m20ccp);
      mlin:=0;
      RDPrint1.NovaPagina;
      end;
   end;

{
                                        |     |                      |     |      |Prime Periodo|Sego  Periodo|Terce Periodo|QuartoPeriodo|Quint Periodo|Quint Periodo|Dev.Cl|      |Estoqu|Valor Estoq|
|Codig|Descricao             |Forn.|Inicia|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Period|Saldo | Atual|Total fabr |
|12345|1234567890123456789012|67890|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzz.zzz,z|



+-----+----------------------+-----+------+------+------+-------------+-------------+-------------+-------------+-------------+-------------+------------------+
|     |                      |     |      |Prime Periodo|Sego  Periodo|Terce Periodo|QuartoPeriodo|Quint Periodo|Quint Periodo|Dev.Cl|      |Estoqu|Valor Estoq|
|Codig|Descricao             |     |Inicia|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Entrad|Saidas|Period|Saldo | Atual|Total fabr |
|12345|1234567890123456789012|67890|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzzz|zzzzz.zzz,z|

}
end;

procedure TFrm_BalProCol.rg_inventarioClick(Sender: TObject);
begin
if rg_inventario.ItemIndex=1 then
   begin
   lbl_nominv.Visible:=true;
   cb_salvo.Visible  :=true;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select IGNOMEINV from INVGRA '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntTostr(codemp))
                     +' Group by IGNOMEINV ');
   DM1.Query2.Open;
   cb_salvo.Items.Clear;
   While not DM1.Query2.Eof do
      begin
      cb_salvo.Items.Add(DM1.Query2.Fields[0].AsString);
      DM1.Query2.Next;
      end;
   end
else
   begin
   lbl_nominv.Visible:=false;
   cb_salvo.Visible  :=false;
   end

end;

procedure TFrm_BalProCol.bbAplicarClick(Sender: TObject);
var
mCampoPesq: String;
mQtdCol: Integer;
mColAtual: Integer;
mInstru06: String;
mDataInv: TDateTime;
x: Integer;
begin
if trim(mNomeView)='' then
   mNomeView:=fProcTemp(22);
if CB_EmiDoc.Checked then
   mdatapesq:='P1DATDOC'
else
   mdatapesq:='P1DATAP';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if RG_tipocol.ItemIndex=0 then
   mCampoPesq:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMMDD'+chr(39)+')'
else if RG_tipocol.ItemIndex=1 then
   mCampoPesq:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')'
else if RG_tipocol.ItemIndex=2 then
   mCampoPesq:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYY'+chr(39)+')';
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.Add('Select '+mCampoPesq+' AS GRUPO '
                   +' from CADP01 '
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' P1STATUS<'+mstatus_excluido+' AND P1TIPO>0');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query2.SQL.add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query2.SQL.add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query2.SQL.add('group by '+mCampoPesq
                  +' order by GRUPO ');
DM1.Query2.Open;
mqtdcol:=DM1.Query2.RecordCount;
mColuna01:='';
mColuna02:='';
mColuna03:='';
mColuna04:='';
mColuna05:='';
lbl_coluna01.Caption:='';
lbl_coluna02.Caption:='';
lbl_coluna03.Caption:='';
lbl_coluna04.Caption:='';
lbl_coluna05.Caption:='';
lbl_coluna06.Caption:='';
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
DM1.Query1.SQL.Add('Select ' );
mcinst:='';
mColAtual:=0;
mcinst3:='DECODE(P1TIPO,8,0 '
              +'       ,12,0 '
              +'       ,13,0 '
              +'       ,19,0 '
              +'       ,P2QTD )';  // para saidas

mcinst4:='DECODE(P1TIPO,8,P2QTD '
              +'       ,12,P2QTD '
              +'       ,13,P2QTD '
              +'       ,19,P2QTD '
              +'       ,0 )';  // para devolucao entrada
mInstru06:='';


While not (DM1.Query2.Eof) and (mColAtual<6) do
   begin
   mColAtual:=mColAtual+1;
   if RG_tipocol.ItemIndex=0 then
      mcinst2:=DM1.Query2.Fields[0].AsString
   else if RG_tipocol.ItemIndex=1 then
      mcinst2:=tabmes[Valint(copy(DM1.Query2.Fields[0].AsString,5,2))]+'/'+copy(DM1.Query2.Fields[0].AsString,1,4)
   else if RG_tipocol.ItemIndex=2 then
      mcinst2:=DM1.Query2.Fields[0].AsString;
   if mColAtual=01 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      mColuna01:=mcinst2;
      lbl_coluna01.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS'+FormatFloat('00', mColAtual ));
      mcinst:=',';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL'+FormatFloat('00', mColAtual ));

      end
   else if mColAtual=02 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      mColuna02:=mcinst2;
      lbl_coluna02.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS'+FormatFloat('00', mColAtual ));
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=03 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      mColuna03:=mcinst2;
      lbl_coluna03.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS'+FormatFloat('00', mColAtual ));
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=04 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      mColuna04:=mcinst2;
      lbl_coluna04.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS'+FormatFloat('00', mColAtual ));
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=05 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      mColuna05:=mcinst2;
      lbl_coluna05.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS'+FormatFloat('00', mColAtual ));
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL'+FormatFloat('00', mColAtual ));
      end
   else if (mColAtual=6) and (mqtdcol=6) then
      begin
      mColuna06:=mcinst2;
      lbl_coluna06.Caption:=mcinst2;
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst3+',0)) AS VENDAS06');
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+','+mcinst4+',0)) AS DEVOL06');
      end;
   mcinst:=',';
   DM1.Query2.Next;
   end;
if mQtdCol<6 then
   begin
   for x:=mQtdCol to 5 do
      begin
      mColAtual:=mColAtual+1;
      DM1.Query1.SQL.add(mcinst+'0  AS VENDAS'+FormatFloat('00', mColAtual ));
      DM1.Query1.SQL.add(mcinst+'0  AS DEVOL'+FormatFloat('00', mColAtual ));
      end;
   end;

if mqtdcol>6 then
   begin
   lbl_coluna06.Caption:='Outros';

   mColuna06:='Outros';
   DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+ mCampoPesq+', '+mInstru06+','+mcinst3+')) AS VENDAS06');
   DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+ mCampoPesq+', '+mInstru06+','+mcinst4+')) AS DEVOL06');
   end;
DM1.Query1.SQL.Add(',0 AS COMPRAS01 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS02 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS03 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS04 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS05 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS06 ');
DM1.Query1.SQL.Add(',0 AS ESTINI ');
DM1.Query1.SQL.Add(',0 AS VALOREST ');
DM1.Query1.SQL.Add(',0 AS ESTATU ');

DM1.Query1.SQL.Add(',P2CODPRO AS CODPRO ');
DM1.Query1.SQL.Add(',0 AS CODFOR ');
DM1.Query1.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMPRO ');
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
DM1.Query1.SQL.add('       FROM CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' P1STATUS<'+mstatus_excluido+' AND P1TIPO>0 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P1TIPO '+mcinst2);
DM1.Query1.SQL.Add(' group by P2CODPRO ');

// INICIO DAS ENTRADAS
if RG_tipocol.ItemIndex=0 then
   mCampoPesq:='TO_CHAR(PF1DATAENT, '+chr(39)+'YYYYMMDD'+chr(39)+')'
else if RG_tipocol.ItemIndex=1 then
   mCampoPesq:='TO_CHAR(PF1DATAENT, '+chr(39)+'YYYYMM'+chr(39)+')'
else if RG_tipocol.ItemIndex=2 then
   mCampoPesq:='TO_CHAR(PF1DATAENT, '+chr(39)+'YYYY'+chr(39)+')';

DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add('Select ' );
DM1.Query1.SQL.Add(' 0 AS VENDAS01 ');
DM1.Query1.SQL.Add(',0 AS DEVOL01 ');
DM1.Query1.SQL.Add(',0 AS VENDAS02 ');
DM1.Query1.SQL.Add(',0 AS DEVOL02 ');
DM1.Query1.SQL.Add(',0 AS VENDAS03 ');
DM1.Query1.SQL.Add(',0 AS DEVOL03 ');
DM1.Query1.SQL.Add(',0 AS VENDAS04 ');
DM1.Query1.SQL.Add(',0 AS DEVOL04 ');
DM1.Query1.SQL.Add(',0 AS VENDAS05 ');
DM1.Query1.SQL.Add(',0 AS DEVOL05 ');
DM1.Query1.SQL.Add(',0 AS VENDAS06 ');
DM1.Query1.SQL.Add(',0 AS DEVOL06 ');
mcinst:=',';
mColAtual:=0;
mInstru06:='';
DM1.Query2.First;
While not (DM1.Query2.Eof) and (mColAtual<6) do
   begin
   mColAtual:=mColAtual+1;
   if RG_tipocol.ItemIndex=0 then
      mcinst2:=DM1.Query2.Fields[0].AsString
   else if RG_tipocol.ItemIndex=1 then
      mcinst2:=tabmes[Valint(copy(DM1.Query2.Fields[0].AsString,5,2))]+'/'+copy(DM1.Query2.Fields[0].AsString,1,4)
   else if RG_tipocol.ItemIndex=2 then
      mcinst2:=DM1.Query2.Fields[0].AsString;
   if mColAtual=01 then
      begin
      mInstru06:=DM1.Query2.Fields[0].AsString+',0';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=02 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=03 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=04 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS'+FormatFloat('00', mColAtual ));
      end
   else if mColAtual=05 then
      begin
      mInstru06:=minstru06+mcinst+DM1.Query2.Fields[0].AsString+',0';
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS'+FormatFloat('00', mColAtual ));
      end
   else if (mColAtual=6) and (mqtdcol=6) then
      begin
      DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+mCampoPesq+', '+DM1.Query2.Fields[0].AsString+',PF2QTDP,0)) AS COMPRAS06');
      end;
   mcinst:=',';
   DM1.Query2.Next;
   end;
if mQtdCol<6 then
   begin
   for x:=mQtdCol to 5 do
      begin
      mColAtual:=mColAtual+1;
      DM1.Query1.SQL.add(mcinst+'0  AS COMPRAS'+FormatFloat('00', mColAtual ));
      end;
   end;

if mqtdcol>6 then
   begin
   mColuna06:='Outros';
   DM1.Query1.SQL.add(mcinst+'SUM(DECODE('+ mCampoPesq+', '+mInstru06+',PF2QTDP )) AS COMPRAS06');
   end;
DM1.Query1.SQL.Add(',0 AS ESTINI ');
DM1.Query1.SQL.Add(',0 AS VALOREST ');
DM1.Query1.SQL.Add(',0 AS ESTATU ');

DM1.Query1.SQL.Add(',PF2CODPRO AS CODPRO ');
DM1.Query1.SQL.Add(',0 AS CODFOR ');
DM1.Query1.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMPRO ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
DM1.Query1.SQL.add('       FROM CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' PF1STATUS=1 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.Add(' group by PF2CODPRO ');

// TERMINO DAS ENTRADAS

// INICIO DO ESTOQUE INICIAL
mEstini:='Est.Ini';

if rg_inventario.ItemIndex=0 then
   begin
   if trim(MDT1.Text)<>'/  /' then
      begin
{
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.add('Select count(*) from CADEDIA where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
                        +' CED_ANO<='+FormatDateTime('yyyy', StrtoDate(MDT1.Text))
                        +' and CED_MES<='+FormatDateTime('MM', StrtoDate(MDT1.Text)));
      DM1.Query3.Open;
      if not DM1.Query3.IsEmpty then
         begin
}
      mDataInv:=StrtoDate(MDT1.Text);
      mcinst2:='CED_QTDDIA'+FormatDateTime('DD',StrtoDate(MDT1.text));
      mboolean:=false;
      for x:=1 to 30 do
         begin
         mcinst2:='CED_QTDDIA'+FormatDateTime('DD',mDataInv);
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.add('Select sum('+mcinst2+') AS QTD from CADEDIA where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
                           +' CED_ANO='+FormatDateTime('yyyy', mDataInv)
                           +' and CED_MES='+FormatDateTime('MM', mDataInv));
         DM1.Query3.Open;
         if DM1.Query3.Fields[0].AsFloat>0 then
            begin
            mEstini:=FormatDatetime(fdt3, mDataInv);
            mboolean:=true;
            break;
            end;
         mDataInv:=mDataInv+1;
         end;
      if mboolean then
         begin
         DM1.Query1.SQL.Add(' union ' );
         DM1.Query1.SQL.Add('Select ' );
         DM1.Query1.SQL.Add(' 0 AS VENDAS01 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL01 ');
         DM1.Query1.SQL.Add(',0 AS VENDAS02 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL02 ');
         DM1.Query1.SQL.Add(',0 AS VENDAS03 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL03 ');
         DM1.Query1.SQL.Add(',0 AS VENDAS04 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL04 ');
         DM1.Query1.SQL.Add(',0 AS VENDAS05 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL05 ');
         DM1.Query1.SQL.Add(',0 AS VENDAS06 ');
         DM1.Query1.SQL.Add(',0 AS DEVOL06 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS01 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS02 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS03 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS04 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS05 ');
         DM1.Query1.SQL.Add(',0 AS COMPRAS06 ');
         DM1.Query1.SQL.Add(','+mcinst2+' AS ESTINI ');
         DM1.Query1.SQL.Add(',0 AS VALOREST ');
         DM1.Query1.SQL.Add(',0 AS ESTATU ');
         DM1.Query1.SQL.Add(',CED_CODPRO AS CODPRO ');
         DM1.Query1.SQL.Add(',0 AS CODFOR ');
         DM1.Query1.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMPRO ');
         DM1.Query1.SQL.add('       FROM CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CED_ANO='+FormatDateTime('yyyy', mDataInv)
                     +' and CED_MES='+FormatDateTime('MM', mDataInv));
         end;
      end;
   end
else if rg_inventario.ItemIndex=1 then
   begin
   DM1.Query1.SQL.Add(' union ' );

   DM1.Query1.SQL.Add('Select ' );
   DM1.Query1.SQL.Add(' 0 AS VENDAS01 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL01 ');
   DM1.Query1.SQL.Add(',0 AS VENDAS02 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL02 ');
   DM1.Query1.SQL.Add(',0 AS VENDAS03 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL03 ');
   DM1.Query1.SQL.Add(',0 AS VENDAS04 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL04 ');
   DM1.Query1.SQL.Add(',0 AS VENDAS05 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL05 ');
   DM1.Query1.SQL.Add(',0 AS VENDAS06 ');
   DM1.Query1.SQL.Add(',0 AS DEVOL06 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS01 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS02 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS03 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS04 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS05 ');
   DM1.Query1.SQL.Add(',0 AS COMPRAS06 ');
   DM1.Query1.SQL.Add(',IGQTD AS ESTINI ');
   DM1.Query1.SQL.Add(',0 AS VALOREST ');
   DM1.Query1.SQL.Add(',0 AS ESTATU ');
   DM1.Query1.SQL.Add(',IGCODPRO AS CODPRO ');
   DM1.Query1.SQL.Add(',0 AS CODFOR ');
   DM1.Query1.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMPRO ');
   DM1.Query1.SQL.add('       FROM INVGRA where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
               +' IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39));

   end;
// TERMINO DO ESTQOUE INICIAL

//INICIO DO ESTQOUE ATUAL
DM1.Query1.SQL.Add(' union ' );

DM1.Query1.SQL.Add('Select ' );
DM1.Query1.SQL.Add(' 0 AS VENDAS01 ');
DM1.Query1.SQL.Add(',0 AS DEVOL01 ');
DM1.Query1.SQL.Add(',0 AS VENDAS02 ');
DM1.Query1.SQL.Add(',0 AS DEVOL02 ');
DM1.Query1.SQL.Add(',0 AS VENDAS03 ');
DM1.Query1.SQL.Add(',0 AS DEVOL03 ');
DM1.Query1.SQL.Add(',0 AS VENDAS04 ');
DM1.Query1.SQL.Add(',0 AS DEVOL04 ');
DM1.Query1.SQL.Add(',0 AS VENDAS05 ');
DM1.Query1.SQL.Add(',0 AS DEVOL05 ');
DM1.Query1.SQL.Add(',0 AS VENDAS06 ');
DM1.Query1.SQL.Add(',0 AS DEVOL06 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS01 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS02 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS03 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS04 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS05 ');
DM1.Query1.SQL.Add(',0 AS COMPRAS06 ');
DM1.Query1.SQL.Add(',0 AS ESTINI ');
if RG_TPPRECO.ItemIndex=0 then
   mcinst4:='PDPRECO1'
else if RG_TPPRECO.ItemIndex=1 then
   mcinst4:='PDPRECO2'
else if RG_TPPRECO.ItemIndex=2 then
   mcinst4:='PDPRECO3'
else if RG_TPPRECO.ItemIndex=3 then
   mcinst4:='PDPRECOC'
else if RG_TPPRECO.ItemIndex=4 then
   mcinst4:='PDPCOFAB'
else if RG_TPPRECO.ItemIndex=5 then
   mcinst4:='PDPMC';
//DM1.Query1.SQL.Add(',(CESALDO*'+mcinst4+') AS VALOREST ');
DM1.Query1.SQL.Add(','+mcinst4+' AS VALOREST ');
DM1.Query1.SQL.Add(',CESALDO AS ESTATU ');
DM1.Query1.SQL.Add(',PDCODPRO AS CODPRO ');
DM1.Query1.SQL.Add(',PDCODFOR AS CODFOR ');
DM1.Query1.SQL.Add(', PDNOME AS NOMPRO ');
DM1.Query1.SQL.add('       FROM CADEST,CADPRO where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CECODPRO=0'+IntToStr(codemp)+' and  PDCODEMP=CECODEMP and ')
            +' CECODPRO=PDCODPRO ');


// TERMINO DO ESTOQUE ATUAL

try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
   end;
//DM1.Query1.SQL.SaveToFile(mpastatemp +'sqlbal.txt');
//exit;
Qr_Balanco.Close;
Qr_Balanco.SQL.clear;
Qr_Balanco.Sql.Add('Select sum(VENDAS01) as VENDAS01 '
                  +',SUM(DEVOL01) AS DEVOL01 '
                  +',SUM(VENDAS02) AS VENDAS02 '
                  +',SUM(DEVOL02) AS DEVOL02 '
                  +',SUM(VENDAS03) AS VENDAS03 '
                  +',SUM(DEVOL03) AS DEVOL03 '
                  +',SUM(VENDAS04) AS VENDAS04 '
                  +',SUM(DEVOL04) AS DEVOL04 '
                  +',SUM(VENDAS05) AS VENDAS05 '
                  +',SUM(DEVOL05) AS DEVOL05 '
                  +',SUM(VENDAS06) AS VENDAS06 '
                  +',SUM(DEVOL06) AS DEVOL06 '
                  +',SUM(COMPRAS01) AS COMPRAS01 '
                  +',SUM(COMPRAS02) AS COMPRAS02 '
                  +',SUM(COMPRAS03) AS COMPRAS03 '
                  +',SUM(COMPRAS04) AS COMPRAS04 '
                  +',SUM(COMPRAS05) AS COMPRAS05 '
                  +',SUM(COMPRAS06) AS COMPRAS06 '
                  +',SUM(ESTINI) AS ESTINI      '
                  +',SUM(VALOREST) AS VALOREST '
                  +',SUM(ESTATU) AS ESTATU '
                  +',CODPRO AS CODPRO '
                  +',max(CODFOR) AS CODFOR '
                  +',max(NOMPRO) AS NOMPRO '
                  +' from '+mNomeView
                  +' group by CODPRO '
                  +' order by NOMPRO ');
try
   Qr_Balanco.Open;
except
    Qr_Balanco.SQL.SAVETOFILE(mpastatemp +'sql.TXT');
   end;



{


sum(CRVALOR) as TOTRECAB, '
                  +' 0 AS TOTAPAG, '
                  +' 0 AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADDAR where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CRSTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   DM1.Query1.SQL.add(' and CRSTATUS=2')
else if RGTD.ItemIndex=2 then
   DM1.Query1.SQL.add(' and CRSTATUS<>2');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);

if RG_TIPORES.ItemIndex=2 then
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+'yyyy'+chr(39)+')'
else if RG_TIPORES.ItemIndex=1 then
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+'mm/yyyy'+chr(39)+')'
else
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+fdt2+chr(39)+')';
if DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add('Select 0 as TOTARECAB,'
                  +' sum(CAVALOR) as TOTAPAG, '
                  +' 0 AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADDAP where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CASTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CADTVCTO>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CADTVCTO<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   DM1.Query1.SQL.add(' and CASTATUS=2')
else if RGTD.ItemIndex=2 then
   DM1.Query1.SQL.add(' and CASTATUS<>2');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);

if RG_TIPORES.ItemIndex=2 then
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+'yyyy'+chr(39)+')'
else if RG_TIPORES.ItemIndex=1 then
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+'mm/yyyy'+chr(39)+')'
else
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+fdt2+chr(39)+')';
if DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add('Select 0 as TOTARECAB,'
                  +' 0 as TOTAPAG, '
                  +' sum(CHVALOR) AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADCHQ where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CHSTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CHDTDEP>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CHDTDEP<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if not CB_CHQBAI.Checked then
   DM1.Query1.SQL.add(' and CHSTATUS=0');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);
try
   DM1.Query1.ExecSql;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
}
end;

procedure TFrm_BalProCol.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BalProCol.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_BalancoVALOREST.DisplayFormat:=mcasaspu;
end;

procedure TFrm_BalProCol.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (DataCol>3) and (DataCol<8) then
   begin
   DBGrid1.Canvas.Font.Color:=clOlive;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end
else if (DataCol>7) and (DataCol<12) then
   begin
   DBGrid1.Canvas.Font.Color:=clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end
else if (DataCol>11) and (DataCol<16) then
   begin
   DBGrid1.Canvas.Font.Color:=clBlack;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end
else if (DataCol>15) and (DataCol<20) then
   begin
   DBGrid1.Canvas.Font.Color:=$00800040;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end
else if (DataCol>19) and (DataCol<24) then
   begin
   DBGrid1.Canvas.Font.Color:=clMaroon;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end
else if (DataCol>23) and (DataCol<28) then
   begin
   DBGrid1.Canvas.Font.Color:=$000080FF;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;








end;

procedure TFrm_BalProCol.Qr_BalancoCalcFields(DataSet: TDataSet);
begin
Qr_Balancosaldo01.Value:=0;
Qr_Balancosaldo02.Value:=0;
Qr_Balancosaldo03.Value:=0;
Qr_Balancosaldo04.Value:=0;
Qr_Balancosaldo05.Value:=0;
Qr_Balancosaldo06.Value:=0;
Qr_Balancosaldo01.Value:=(Qr_BalancoESTINI.Value+Qr_BalancoCOMPRAS01.Value
                        +Qr_BalancoDEVOL01.Value)
                        -Qr_BalancoVENDAS01.Value;

Qr_Balancosaldo02.Value:=(Qr_Balancosaldo01.Value+Qr_BalancoCOMPRAS02.Value
                         +Qr_BalancoDEVOL02.Value)
                        -Qr_BalancoVENDAS02.Value;

Qr_Balancosaldo03.Value:=(Qr_Balancosaldo02.Value+Qr_BalancoCOMPRAS03.Value
                        +Qr_BalancoDEVOL03.Value)
                        -Qr_BalancoVENDAS03.Value;

Qr_Balancosaldo04.Value:=(Qr_Balancosaldo03.Value+Qr_BalancoCOMPRAS04.Value
                        +Qr_BalancoDEVOL04.Value)
                        -Qr_BalancoVENDAS04.Value;

Qr_Balancosaldo05.Value:=(Qr_Balancosaldo04.Value+Qr_BalancoCOMPRAS05.Value
                        +Qr_BalancoDEVOL05.Value)
                        -Qr_BalancoVENDAS05.Value;
Qr_Balancosaldo06.Value:=(Qr_Balancosaldo05.Value+Qr_BalancoCOMPRAS06.Value
                        +Qr_BalancoDEVOL06.Value)
                        -Qr_BalancoVENDAS06.Value;

end;

procedure TFrm_BalProCol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if trim(mNomeView)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Drop view '+mNomeView);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.SaveToFile(mpastatemp +'sql.txt');
      end;

   end;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_BalProCol.FormKeyDown(Sender: TObject; var Key: Word;
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
