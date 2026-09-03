unit S_CUSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, Mask,
  ToolEdit, CurrEdit;

type
  TFrm_CusPed = class(TForm)
    pnl_cab: TPanel;
    pnl_det: TPanel;
    Label1: TLabel;
    edt_chave: TEdit;
    btn_busca: TButton;
    DBGrid1: TDBGrid;
    RxData: TRxMemoryData;
    DataSource1: TDataSource;
    RxDataid: TIntegerField;
    RxDataNome: TStringField;
    RxDataPercent: TFloatField;
    RxDataValor: TFloatField;
    Label2: TLabel;
    edt_total: TEdit;
    Label3: TLabel;
    edt_custo: TEdit;
    btn_Sair: TButton;
    pnl_conf: TPanel;
    Label4: TLabel;
    edt_codcc: TEdit;
    Label5: TLabel;
    edt_nomcc: TEdit;
    Label6: TLabel;
    c_valor: TCurrencyEdit;
    Label7: TLabel;
    bb_Salva: TBitBtn;
    procedure btn_buscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDataAfterInsert(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDataBeforePost(DataSet: TDataSet);
    procedure RxDataAfterPost(DataSet: TDataSet);
    procedure btn_SairClick(Sender: TObject);
    procedure bb_SalvaClick(Sender: TObject);
    procedure pnl_confExit(Sender: TObject);
    procedure pnl_confEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codccExit(Sender: TObject);
  private
    { Private declarations }
    procedure Recalcula(Sender: TObject);
  public
    { Public declarations }
    p_chave, p_codemp, p_lotseq, p_ordem: String;
  end;
var
  Frm_CusPed: TFrm_CusPed;
  Flg_Inserir: Boolean;
  Id_: integer;

implementation

uses Func, S_DM1, Math, S_DM4, lerarq;

{$R *.dfm}

procedure TFrm_CusPed.Recalcula(Sender: TObject);
var
  TotalC: Real;
begin
RxData.First;
TotalC:=0;
while not RxData.Eof do
  begin
  TotalC:=TotalC+RxDataValor.AsFloat;
  RxData.Next;
  end;
edt_custo.Text:=FormatFloat(mcasas,TotalC);
end;

procedure TFrm_CusPed.btn_buscaClick(Sender: TObject);
var
  Seq: Integer;
  Custo: Real;
  LUCRO: Real;
  DespOP: Real;
  Total: Real;
  TotCus: Real;
  TotImp: Real;
  TotIPI: Real;
  TotCom: Real;
  TotCC : Real;
  TotAcre: Real;
  xCodemp: Integer;
begin
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add(' select * from CADP01 where P1STATUS <'+mstatus_excluido+' ');
DM1.Query3.SQL.Add(' and P1CHAVE='+p_chave);
DM1.Query3.SQL.Add(' and P1LOTSEQ='+p_lotseq);
DM1.Query3.SQL.Add(' and P1ORDEM='+p_ordem);
//DM1.Query3.SQL.Add(codemp2('P1CODEMP',strtoint(p_codemp)));
DM1.Query3.Open;
if DM1.Query3.IsEmpty then
  begin
  fmensagem('Pedido não encontrado!',0,['0'],0);
  Exit;
  end;
TotAcre:=DM1.Query3.FieldByName('P1ACRESCIMO').AsFloat;

LUCRO :=0;
DespOP:=0;
Custo :=0;
Total :=0;
TotCus:=0;
TotIPI:=0;
TotCom:=0;
TotImp:=0;
TotAcre:=0;
Seq   :=0;
TotCC :=0;

Flg_Inserir:=True;

RxData.Active:=False;
RxData.Active:=True;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' SELECT SUM(P2TOTLIQ) AS TOTAL, '
                  +' SUM(P2PCOCUS*P2QTD_ATEN) AS CUSTO, '
//                  +' SUM(PDPCOFAB*P2QTD_ATEN) AS CUSTO, '
                  +' SUM(P2VCOMIS) AS COMISSAO '
                  +' FROM CADP02, CADPRO '
                  +' WHERE P2CHAVE='+p_chave
                  +'   AND P2LOTSEQ='+p_lotseq
                  +'   AND P2ORDEM='+p_ordem
                  +'   AND P2CODPRO=PDCODPRO '
                  +codemp2('P2CODEMP',strtoint(p_codemp)));
try
  DM1.Query1.Open;
except;
  fmensagem('Erro ao abrir o pedido!',0,['0'],0);
  DM1.Query1.SQL.SaveToFile(SALVA_NOME('C:\SGE\ERRORSQL','EX'));
  Exit;
  end;
Custo :=DM1.Query1.FieldByName('CUSTO').AsFloat;
Total :=DM1.Query1.FieldByName('TOTAL').AsFloat;
TotCom:=DM1.Query1.FieldByName('COMISSAO').AsFloat;
edt_total.Text:=FormatFloat(mcasas,Total);

xCodemp:=strtoint(p_codemp);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' SELECT SUM(P2TOTLIQ*P2PCREDSN/100) AS IMPOSTO, '
                  +' SUM(P2VALIPI) AS VALORIPI '
                  +' FROM CADP02 '
                  +' WHERE P2CHAVE='+p_chave
                  +'   AND P2LOTSEQ='+p_lotseq
                  +'   AND P2ORDEM='+p_ordem
                  +'   AND P2CODEMP='+IntToStr(iif(xCodemp>100,xCodemp-100,xCodemp)));
DM1.Query1.Open;



if c_valor.Value <= 0 then
  TotImp:=DM1.Query1.FieldByName('IMPOSTO').AsFloat
else
  TotImp:=c_valor.Value/100*Total;
TotIPI:=DM1.Query1.FieldByName('VALORIPI').AsFloat;

Seq:=1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='Custo das Mercadorias';
try
  RxDataPercent.AsFloat :=(Custo/Total*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=Custo;
RxData.Post;

Seq:=Seq+1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='IMPOSTO';
try
  RxDataPercent.AsFloat :=(TotImp/Total*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=TotImp;
RxData.Post;

Seq:=Seq+1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='COMISSAO';
try
  RxDataPercent.AsFloat :=(TotCom/Total*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=TotCom;
RxData.Post;

Seq:=Seq+1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='IPI';
try
  RxDataPercent.AsFloat :=(TotIPI/Total*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=TotIPI;
RxData.Post;

Seq:=Seq+1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='ACRESCIMO';
try
  RxDataPercent.AsFloat :=(TotAcre/Total*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=TotAcre;
RxData.Post;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' SELECT SUM(P1TOTALL) AS TOTAL '
                  +' FROM CADP01 '
                  +' WHERE P1DATDOC>='+chr(39)+'01/08/2011'+chr(39)
                  +'   AND P1DATDOC<='+chr(39)+'31/10/2011'+chr(39)
                  +'   AND P1EMIDOC=1 '
                  +codemp2('P1CODEMP',strtoint(p_codemp)));
DM1.Query1.Open;
DespOP :=DM1.Query1.FieldByName('TOTAL').AsFloat;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select sum(VALORR) as TOTALCC '
                  +' FROM CADLDR '
                  +' WHERE DATAREAL>='+chr(39)+'01/08/2011'+chr(39)
                  +'   AND DATAREAL<='+chr(39)+'31/10/2011'+chr(39)
                  +'   AND CODCC='+chr(39)+edt_codcc.text+chr(39)
                  +codemp2('CODEMP',strtoint(p_codemp)));
DM1.Query1.Open;
TOTCC  :=DM1.Query1.FieldByName('TOTALCC').AsFloat;
Seq:=Seq+1;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='DESP. OP.';
try
  RxDataPercent.AsFloat :=(TotCC/DespOP*100);
except
  RxDataPercent.AsFloat :=0;
  end;
try
  RxDataValor.AsFloat   :=(TotCC/DespOP)*Total;
except
  RxDataValor.AsFloat   :=0;
  end;
RxData.Post;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select * from cadpcus ');
DM1.Query1.SQL.Add(' where PCNOME not in ('+chr(39)+'COMISSAO'+chr(39)
                                        +','+chr(39)+'IMPOSTO'+chr(39)
                                        +','+chr(39)+'DESP. OP.'+chr(39)
                                        +','+chr(39)+'LUCRO'+chr(39)
                                        +','+chr(39)+'IPI'+chr(39)
                                        +','+chr(39)+'ACRESCIMO'+chr(39)+')');
DM1.Query1.Open;
while not DM1.Query1.Eof do
  begin
  Seq:=Seq+1;
  RxData.Append;
  RxDataid.AsInteger    :=Seq;
  RxDataNome.AsString   :=DM1.Query1.FieldByName('PCNOME').AsString;
  RxDataPercent.AsFloat :=0;
  RxDataValor.AsFloat   :=0;
  RxData.Post;
  DM1.Query1.Next;
  end;

if flfilpad(-1,'_CUSPED','') then
  begin
  RxData.First;
  while not RxData.Eof do
    begin
    if (DM4.Tb_FilPad2.Locate('FPCOMP',RxDataNome.AsString,[])) and
       (RxDataNome.AsString<>'IMPOSTO') then
      begin
      RxData.Edit;
      RxDataPercent.AsFloat := DM4.Tb_FilPad2FPVALOR.AsFloat;
      try
        RxDataValor.AsFloat:=RxDataPercent.AsFloat*ValFloat(edt_total.Text)/100;
      except
        RxDataValor.AsFloat :=0;
        end;
      RxData.Post;
      end;
    RxData.Next;
    end;
  end;
Seq:=Seq+1;
RxData.Last;
RxData.Append;
RxDataid.AsInteger    :=Seq;
RxDataNome.AsString   :='LUCRO';
try
  RxDataPercent.AsFloat :=((valfloat(edt_total.text)-valfloat(edt_custo.text))/valfloat(edt_total.text)*100);
except
  RxDataPercent.AsFloat :=0;
  end;
RxDataValor.AsFloat   :=valfloat(edt_total.text)-valfloat(edt_custo.text);
RxData.Post;
Flg_Inserir:=False;
end;

procedure TFrm_CusPed.FormCreate(Sender: TObject);
begin
RxDataPercent.DisplayFormat:=mcasas;
RxDataValor.DisplayFormat  :=mcasas;
if flfilpad(-1,'_CUSPED','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODCC',[]) then
     edt_codcc.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  if DM4.Tb_FilPad2.Locate('FPCOMP','IMPOSTO',[]) then
     c_valor.Value:=DM4.Tb_FilPad2FPVALOR.AsFloat;
  end;
end;

procedure TFrm_CusPed.RxDataAfterInsert(DataSet: TDataSet);
begin
if Flg_Inserir=False then
  RxData.Cancel;
end;

procedure TFrm_CusPed.DBGrid1ColExit(Sender: TObject);
begin
if (RxData.State in [dsEdit]) then
  begin
  if (DBGrid1.SelectedField=RxDataPercent) then
    begin
    RxDataValor.AsFloat:=ValFloat(edt_total.Text)*RxDataPercent.AsFloat/100;
    end
  else if (DBGrid1.SelectedField=RxDataValor) then
    begin
    RxDataPercent.AsFloat:=RxDataValor.AsFloat/ValFloat(edt_total.Text)*100;
    end;
  end;
end;

procedure TFrm_CusPed.FormShow(Sender: TObject);
begin
edt_chave.Text:=p_chave;
btn_buscaClick(Self);
end;

procedure TFrm_CusPed.RxDataBeforePost(DataSet: TDataSet);
begin
DBGrid1ColExit(Self);

end;

procedure TFrm_CusPed.RxDataAfterPost(DataSet: TDataSet);
begin
Id_:=RxDataid.AsInteger;
Recalcula(Self);
RxData.First;
while (RxDataid.AsInteger<>Id_) and (not RxData.Eof) do
  begin
  RxData.Next;
  end;
end;

procedure TFrm_CusPed.btn_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CusPed.bb_SalvaClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_CUSPED','');
RxData.First;
fGravaPadroes(-1,'EDT_CODCC','STRING','_CUSPED',edt_codcc.Text);
fGravaPadroes(-1,'IMPOSTO'  ,'STRING','_CUSPED',c_valor.Text);
while not RxData.Eof do
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select * from cadpcus ');
  DM1.Query1.SQL.Add(' where PCNOME not in('+chr(39)+'COMISSAO'+chr(39)
                                        +','+chr(39)+'IMPOSTO'+chr(39)
                                        +','+chr(39)+'DESP. OP.'+chr(39)
                                        +','+chr(39)+'LUCRO'+chr(39)
                                        +','+chr(39)+'IPI'+chr(39)
                                        +','+chr(39)+'ACRESCIMO'+chr(39)+')'
                    +' and PCNOME='+chr(39)+RxDataNome.AsString +chr(39));
  DM1.Query1.Open;
  if not DM1.Query1.IsEmpty then
    begin
    fGravaPadroes(-1,RxDataNome.AsString,'real','_CUSPED',RxDataPercent.AsString);
    end;
  RxData.Next;
  end;
end;

procedure TFrm_CusPed.pnl_confExit(Sender: TObject);
begin
pnl_conf.Visible:=False;
end;

procedure TFrm_CusPed.pnl_confEnter(Sender: TObject);
begin
edt_codcc.SetFocus;
end;

procedure TFrm_CusPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F7 then
  begin
  pnl_conf.Visible:=true;
  edt_codcc.SetFocus;
  end;
end;

procedure TFrm_CusPed.edt_codccKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_codcc.Text:=trim(fChamaCCU(0,'consulta',key));
  if not DM1.Tb_CCU.IsEmpty then
    edt_nomcc.Text:=DM1.Tb_CCUCCNOME.AsString;
  end;
end;

procedure TFrm_CusPed.edt_codccExit(Sender: TObject);
begin
if not flqr1('CCNOME','CCU','CADCCU','N','CCCODCCU',chr(39)+edt_codcc.Text+chr(39)) then
  begin
  fmensagem('Codigo de Centro de Custo não Cadastrado!',0,['0'],0);
  edt_codcc.SetFocus;
  end
else
  begin
  edt_nomcc.Text:=DM1.Query1.FieldByName('CCNOME').AsString;
  end;
end;

end.
