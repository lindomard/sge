unit S_AgruBal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons, Grids,S_DM1,db,dbtables,func,
  S_Agde;

type
  TFrm_AgruBal = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    Label4: TLabel;
    NUMINI: TEdit;
    NUMFIN: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    STG1: TStringGrid;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    CHAVE: TEdit;
    Label6: TLabel;
    DATA: TMaskEdit;
    Label7: TLabel;
    MOT01: TEdit;
    MOT02: TEdit;
    MOT03: TEdit;
    bbAgrupar: TBitBtn;
    Label81: TLabel;
    CB_LOCAL: TComboBox;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NUMINIExit(Sender: TObject);
    procedure NUMFINExit(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbAgruparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fContaMarcados: Integer;
    function fAtualizarTxt(ptipo: Integer): boolean;
    function fAgruBalZeraTxt(ptipo: Integer): boolean;
    function fLiberarChaves: Boolean;

  public
    { Public declarations }
  end;
function fTestaReg(pchave: Integer): boolean;
function fAgruBalBloquear(pTipo,pChave: Integer): Boolean;

var
  Frm_AgruBal: TFrm_AgruBal;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_AgruBal.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AgruBal.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[00,00]:='Agrupar';
STG1.Cells[01,00]:='Chave';
STG1.Cells[02,00]:='Data';
STG1.Cells[03,00]:='Observações 01';
STG1.Cells[04,00]:='Observações 02';
STG1.Cells[05,00]:='Observações 03';
end;

procedure TFrm_AgruBal.bbAtualizarClick(Sender: TObject);
var
x: Integer;
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

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select B1CHAVE,B1DATA,B1MOT01,B1MOT02,B1MOT03,B1TIPOPRO from CADBAL01 ');
DM1.Query4.SQL.Add(' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'','  B1CODEMP=0'+inttoStr(codemp)+' and ')
                  +' B1STATUS=0 ');
//DM1.Query4.SQL.Add(' and B1LOCAL=0'+IntToStr(CB_LOCAL.ItemIndex));

if Trim(NUMINI.Text)<>'' then
   DM1.Query4.SQL.Add(' and B1CHAVE>=0'+Trim(NUMINI.Text));
if Trim(NUMFIN.Text)<>'' then
   DM1.Query4.SQL.Add(' and B1CHAVE<=0'+Trim(NUMFIN.Text));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query4.SQL.Add(' and B1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query4.SQL.Add(' and B1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
try
   DM1.Query4.Open;
except
   DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
fLiberarChaves;
STG1.RowCount:=2;
STG1.Rows[1].Clear;

While not DM1.Query4.Eof do
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x].Clear;
   STG1.Cells[00,x-1]:='';
   STG1.Cells[01,x-1]:=DM1.Query4.fieldbyName('B1CHAVE').AsString;
   STG1.Cells[02,x-1]:=FormatDateTime(fdt2, DM1.Query4.fieldbyName('B1DATA').AsDateTime);
   STG1.Cells[03,x-1]:=DM1.Query4.fieldbyName('B1MOT01').AsString;
   STG1.Cells[04,x-1]:=DM1.Query4.fieldbyName('B1MOT02').AsString;
   STG1.Cells[05,x-1]:=DM1.Query4.fieldbyName('B1MOT03').AsString;
   STG1.Cells[06,x-1]:=DM1.Query4.fieldbyName('B1TIPOPRO').AsString;
   DM1.Query4.Next;
   end;

end;

procedure TFrm_AgruBal.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_AgruBal.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_AgruBal.NUMINIExit(Sender: TObject);
begin
if fsonumero(NUMINI.Text)=0 then
   NUMINI.Text:=''
else
   NUMINI.Text:=fdeixanum(NUMINI.Text);
end;

procedure TFrm_AgruBal.NUMFINExit(Sender: TObject);
begin
if fsonumero(NUMFIN.Text)=0 then
   NUMFIN.Text:=''
else
   NUMFIN.Text:=fdeixanum(NUMFIN.Text);
end;

procedure TFrm_AgruBal.STG1DblClick(Sender: TObject);
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

if mexiste then
   begin
   if not DM1.Query4.Locate('B1CHAVE',valfloat(STG1.Cells[01,mlin]),[]) then
      begin
      fMensagem('Erro ao Localizar o Lote: '+STG1.Cells[01,mlin],0,['0'],0);
      exit;
      end;
   end
else
   begin
   fAgruBalBloquear(0,ValInt(STG1.cells[01,mlin]));
   fAgruBalZeraTxt(0);
   exit;
   end;

if STG1.Cells[0,mlin]='X' then
   begin
   if not fTestaReg(ValInt(STG1.cells[01,mlin])) then
      STG1.Cells[0,mlin]:=''
   else
      begin
      fAgruBalBloquear(1,ValInt(STG1.cells[01,mlin]));
      fAtualizarTxt(0);
      end;
   end
else
   begin
   fAgruBalBloquear(0,ValInt(STG1.cells[01,mlin]));
   fAtualizarTxt(1);
   end;


end;

function TFrm_AgruBal.fContaMarcados: Integer;
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


function TFrm_AgruBal.fAtualizarTxt(ptipo: Integer): boolean;
// ptipo=0 Inclusao
//      =1 Exclusao
begin
if Trim(CHAVE.Text)='' then
   begin
   CHAVE.Text     :=DM1.Query4.fieldbyName('B1CHAVE').AsString;
   DATA.Text      :=FormatDatetime(fdt2, DM1.Query4.fieldbyName('B1DATA').AsDateTime);
   MOT01.Text      :=DM1.Query4.fieldbyName('B1MOT01').AsString;
   MOT02.Text      :=DM1.Query4.fieldbyName('B1MOT02').AsString;
   MOT03.Text      :=DM1.Query4.fieldbyName('B1MOT03').AsString;
   end;
result:=true;

end;

function tFrm_AgruBal.fAgruBalZeraTxt(ptipo: Integer): boolean;
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
function fTestaReg(pchave: Integer): boolean;
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Select B1SITUACAO from CADBAL01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' B1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' B1CHAVE=0'+InttoStr(pchave));
DM1.Query1.open;
if DM1.Query1.Eof then
   begin
   fMensagem('Este Registro foi excluido ou agrupado!',0,['0'],0);
   result:=false;
   end
else if DM1.Query1.FieldByName('B1SITUACAO').Asinteger=1 then
   begin
   fMensagem('Este Registro esta em manutenção!',0,['0'],0);
   result:=false;
   end
else
   result:=true;
end;
function fAgruBalBloquear(pTipo,pChave: Integer): Boolean;
// ptipo: =1-Bloqueia
//         0-desbloqueia
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADBAL01 set B1SITUACAO=0'+Inttostr(pTipo)
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'', ' B1CODEMP=0'+InttoStr(codemp)+' and ')
                  +' B1CHAVE=0'+InttoStr(pChave));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,305,'Frm_Agrubal','CADBAL01');
   end;
result:=true;
end;
function TFrm_AgruBal.fLiberarChaves: Boolean;
var
x: Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if trim(STG1.Cells[00,x])<>'X' then
      Continue;
   fAgruBalBloquear(0,valint(STG1.Cells[01,x]));
   end;
Result:=True;
end;

procedure TFrm_AgruBal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
fLiberarChaves;
end;

procedure TFrm_AgruBal.bbAgruparClick(Sender: TObject);
var
mseq,mchave: Integer;
x: Integer;
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
mchave:=ValInt(CHAVE.Text);
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

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADBAL02 ('
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
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      fMensagem('Erro ao Agupar balanço: 397',0,['0'],0);
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('delete from CADBAL02 '
                     +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' B2CODEMP=0'+inttostr(codemp)+' and ')
                     +' B2CHAVE=0'+fdeixanum(STG1.Cells[01,x]));
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro ao excluir balanco agrupado: 409',0,['0'],0);
      exit;
      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('delete from CADBAL01 '
                     +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' B1CODEMP=0'+inttostr(codemp)+' and ')
                     +' B1CHAVE=0'+fdeixanum(STG1.Cells[01,x]));
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro ao excluir balanco agrupado: 421',0,['0'],0);
      exit;
      end;
   end;
fAgruBalBloquear(0,mchave);
STG1.RowCount:=2;
STG1.Rows[1].Clear;
fAgruBalZeraTxt(0);
end;

procedure TFrm_AgruBal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
