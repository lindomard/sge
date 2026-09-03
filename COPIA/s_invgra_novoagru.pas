unit s_invgra_novoagru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, Mask, ExtCtrls, DB, DBTables;

type
  TFrm_invgra_novoagru = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    NUMINI: TEdit;
    NUMFIN: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CHAVE: TEdit;
    DATA: TMaskEdit;
    MOT01: TEdit;
    MOT02: TEdit;
    MOT03: TEdit;
    bbAgrupar: TBitBtn;
    GroupBox1: TGroupBox;
    STG1: TStringGrid;
    Query1: TQuery;
    Label81: TLabel;
    CB_FILIAL: TComboBox;
    RGTPRO: TRadioGroup;
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAgruparClick(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
  private
    { Private declarations }

    function fLiberarChaves: Boolean;

    function fContaMarcados: Integer;

    function fAgruBalZeraTxt(ptipo: Integer): boolean;

  public
    { Public declarations }
  end;

var
  Frm_invgra_novoagru: TFrm_invgra_novoagru;

implementation

uses S_DM1, Func, func_excecoes, flerarq, lerarq;

{$R *.dfm}

procedure TFrm_invgra_novoagru.bbAtualizarClick(Sender: TObject);
var
x: Integer;
query_inv: tquery;
begin
if (trim(NUMINI.Text)<>'') or (trim(NUMFIN.Text)<>'') then
   begin
   if ValFloat(NUMFIN.Text)<valfloat(NUMINI.Text) then
      begin
      fMensagem('Número final maior que inicial, inválido!',0,['0'],0);
      NUMINI.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
query_inv:=tquery.create(nil);
query_inv.databasename:=DM1.sg_assoc.databasename;


query_inv.Close;
query_inv.SQL.Clear;
query_inv.SQL.Add('Select B1CHAVE,B1DATA,B1MOT01,B1MOT02,B1MOT03,B1TIPOPRO from CADBAL01 ');
query_inv.SQL.Add(' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'','  B1CODEMP=0'+inttoStr(codemp)+' and ')
                  +' 1 = 1 ');
//query_inv.SQL.Add(' and B1LOCAL=0'+IntToStr(CB_LOCAL.ItemIndex));

if Trim(NUMINI.Text)<>'' then
   query_inv.SQL.Add(' and B1CHAVE>=0'+Trim(NUMINI.Text));
if Trim(NUMFIN.Text)<>'' then
   query_inv.SQL.Add(' and B1CHAVE<=0'+Trim(NUMFIN.Text));
if Trim(MDT1.Text)<>'/  /' then
   query_inv.SQL.Add(' and B1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   query_inv.SQL.Add(' and B1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
query_inv.SQL.Add(' order by B1CHAVE ');

try

   query_inv.Open;
except
   query_inv.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
fLiberarChaves;
STG1.RowCount:=2;
STG1.Rows[1].Clear;

While not query_inv.Eof do
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x].Clear;
   STG1.Cells[00,x-1]:='';
   STG1.Cells[01,x-1]:=query_inv.fieldbyName('B1CHAVE').AsString;
   STG1.Cells[02,x-1]:=FormatDateTime(fdt2, query_inv.fieldbyName('B1DATA').AsDateTime);
   STG1.Cells[03,x-1]:=query_inv.fieldbyName('B1MOT01').AsString;
   STG1.Cells[04,x-1]:=query_inv.fieldbyName('B1MOT02').AsString;
   STG1.Cells[05,x-1]:=query_inv.fieldbyName('B1MOT03').AsString;
   STG1.Cells[06,x-1]:=query_inv.fieldbyName('B1TIPOPRO').AsString;
   query_inv.Next;
   end;
query_inv.close;
freeandnil(query_inv);

end;


function TFrm_invgra_novoagru.fLiberarChaves: Boolean;
var
x: Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if trim(STG1.Cells[00,x])<>'X' then
      Continue;
   end;
Result:=True;
end;

procedure TFrm_invgra_novoagru.bbSairClick(Sender: TObject);
begin
close;

end;

procedure TFrm_invgra_novoagru.bbAgruparClick(Sender: TObject);
var
mseq,mchave: Integer;
x: Integer;
query_inv: tquery;

begin
if pbanco<>0 then
   begin
   fMensagem('Não esta disponivel para este banco de dados!',0,['0'],0);
   exit;
   end;
if fContaMarcados<2 then
   begin
   fMensagem('Pelo Menos duas Chaves tem que ser selecionada!',0,['0'],0);
   exit;
   end;
if fsonumero(data.Text)=0 then
   DATA.text:=formatdatetime(fdt2, date);
if trim(MOT01.text)='' then
   MOT01.text:='NOVO INVENTARIO';
      
query_inv:=tquery.create(nil);
query_inv.databasename:=DM1.sg_assoc.databasename;

query_inv.Close;
query_inv.SQL.Clear;
query_inv.SQL.Add('Select max(B1CHAVE) from CADBAL01 '
                 +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'','  where B1CODEMP=0'+InttoStr(codemp)));
try
   query_inv.Open;
   mchave:=query_inv.Fields[0].AsInteger+1;
   CHAVE.Text:=inttostr(mchave);

except on e : exception do
   ex_erroSql_Novo(query_inv,176,'func Erro:'+e.Message ,'CADEST');
   end;
query_inv.Close;
query_inv.sql.clear;
mseq:=0;




query_inv.SQL.Add('Insert into CADBAL01 ('
                  +' B1CODEMP, '
                  +' B1CHAVE, '
                  +' B1LOCAL, '
                  +' B1DATA, '
                  +' B1MOT01, '
                  +' B1MOT02, '
                  +' B1MOT03, '
                  +' B1STATUS, '
                  +' B1TIPOPRO, '
                  +' B1LEMAT, '
                  +' B1SITUACAO '
                  +') values ('
                  +':CODEMP ,'
                  +':CHAVE ,'
                  +':FILIAL,'
                  +':DATA, '
                  +':MOT01, '
                  +':MOT02, '
                  +':MOT03, '
                  +'0 ,'
                  +':TIPPRO ,'
                  +'0, '
                  +'0'
                  +')');


query_inv.ParamByName('CODEMP').asinteger:=codemp;
query_inv.ParamByName('CHAVE').asinteger :=mchave;
query_inv.ParamByName('FILIAL').AsInteger:=fRetonaCodigoFilial(CB_FILIAL.Text);
query_inv.ParamByName('TIPPRO').AsInteger:=RGTPRO.ItemIndex;
if Trim(DATA.Text)='/  /' then
   query_inv.ParamByName('DATA').AsDateTime:=pdatanula
else
   query_inv.ParamByName('DATA').AsDateTime:=StrToDate(DATA.Text);
query_inv.ParamByName('MOT01').AsString    :=MOT01.Text;
query_inv.ParamByName('MOT02').AsString    :=MOT02.Text;
query_inv.ParamByName('MOT03').AsString    :=MOT03.Text;
try
   query_inv.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,486,'Frm_ManBal','CADBAL01');
   end;


for x:=1 to STG1.RowCount do
   begin
   if trim(STG1.Cells[00,x])<>'X' then
      Continue;
   if ValInt(STG1.Cells[01,x])=mchave then
      Continue;


   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select max(B2SEQ) as SEQ from CADBAL02 '
                     +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+inttostr(codemp)+' and ')
                     +' B2CHAVE=0'+Inttostr(mchave));
   DM1.Query2.Open;
   mseq:=DM1.Query2.Fields[0].AsInteger;

   query_inv.Close;
   query_inv.SQL.Clear;
   query_inv.SQL.Add('Insert into CADBAL02 ('
                     +' B2CODEMP '
                     +',B2CHAVE '
                     +',B2SEQ '
                     +',B2CODPRO '
                     +',B2NUMERO'
                     +',B2DTVCTO '
                     +',B2QTD '
                     +',B2QTDEST '
                     +',B2DIFER  '
                     +',B2STATUS '
                     +',B2TIPOPRO  ) select '
                     +' B2CODEMP '
                     +','+InttoStr(mchave)+' as  B2CHAVE '
                     +','+FloatToStr(mseq)+'+B2SEQ+ROWNUM as b2seq '
                     +',B2CODPRO '
                     +',B2NUMERO'
                     +',B2DTVCTO '
                     +',B2QTD '
                     +',B2QTDEST '
                     +',B2DIFER '
                     +',0 as status,'
                     +fdeixanum2(STG1.Cells[06,x])+' as tipopro '
                     +' from CADBAL02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+inttostr(codemp)+' and ')
                     +' B2CHAVE=0'+fdeixanum(STG1.Cells[01,x]));
   try
      query_inv.ExecSQL;
      fdm1StartCommit;
   except
      query_inv.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      fMensagem('Erro ao Agupar balanço: 397',0,['0'],0);
      exit;
      end;
   end;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
fAgruBalZeraTxt(0);
query_inv.Close;
freeandnil(query_inv);

end;


function TFrm_invgra_novoagru.fContaMarcados: Integer;
var
mqtd: Integer;
x: Integer;
begin
mqtd:=0;
for x:=0 to STG1.RowCount do
   begin
   if STG1.Cells[00,x]='X' then
      mqtd:=mqtd+1;
   end;
result:=mqtd;
end;



function TFrm_invgra_novoagru.fAgruBalZeraTxt(ptipo: Integer): boolean;
// ptipo=1 zera tudo 0-Parcial
begin
if ptipo=1 then
   begin
   NUMINI.Text:='';
   NUMFIN.Text:='';
   MDT1.Text   :='/  /';
   MDT2.Text   :='/  /';
   end;
CHAVE.Text:='';
DATA.Text :='/  /';
MOT01.Text:='';
MOT02.Text:='';
MOT03.Text:='';
result:=true;
end;

procedure TFrm_invgra_novoagru.STG1DblClick(Sender: TObject);
var
mexiste: Boolean;
mlin: Integer;
begin
mlin:=STG1.Row;
if mlin<1 then
   exit;
if STG1.Cells[0,mlin]='X' then
   STG1.Cells[0,mlin]:=' '
else
   STG1.Cells[0,mlin]:='X';
mexiste:=false;
if fContaMarcados>0 then
   mexiste:=true;




end;

end.
