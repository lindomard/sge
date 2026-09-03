unit S_Criar_Instr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,func,S_DM1,S_DM5,db,dbtables;

type
  TFrm_Criar_Inst = class(TForm)
    RG_TIPO: TRadioGroup;
    bbCriar: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    NOMTAB: TEdit;
    Label2: TLabel;
    MSAIDA: TEdit;
    nome: TEdit;
    Label3: TLabel;
    nome2: TEdit;
    Label4: TLabel;
    RG_PARAM: TRadioGroup;
    Label5: TLabel;
    TABEXT: TEdit;
    SB01: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure bbCriarClick(Sender: TObject);
    procedure NOMTABExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Criar_Inst: TFrm_Criar_Inst;
  f: TextFile;
  mlinha: String;
  mTabela, mPasta: String;
function fCriarInstr_Inserir(ptipo: Integer): Boolean;
function fCriarInstr_alterar(ptipo: Integer): Boolean;
function fDefinirStru(pTabela: TDataSet): Boolean;

implementation



{$R *.dfm}

procedure TFrm_Criar_Inst.bbCriarClick(Sender: TObject);
begin
nome.Text :=Trim(nome.Text);
nome2.Text:=Trim(nome2.Text);
if trim(NOMTAB.Text)<>'' then
   begin
   NOMTAB.Text:=Trim(NOMTAB.Text);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   if pbanco=1 then
      begin
      DM1.Query1.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$USER_PRIVILEGES '
                        +' where RDB$RELATION_NAME='+chr(39)+NOMTAB.Text+chr(39)
                        +' GROUP BY RDB$RELATION_NAME ');
      end
   else
      begin
      DM1.Query1.SQL.Add('SELECT object_name, object_type FROM user_objects '
                        +' where object_type='+chr(39)+'TABLE'+chr(39)
                        +' and object_name='+chr(39)+NOMTAB.Text+chr(39));

      end;
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      MessageDlg('Tabela não Encontrada!',mtWarning,[mbOk],0);
      exit;
      end;
   if RG_TIPO.ItemIndex=0 then
      FCriarInstr_Inserir(0)
   else if RG_TIPO.ItemIndex=1 then
      FCriarInstr_alterar(0);
   end
else
   begin
   if not FileExists(TABEXT.Text) then
      begin
      MessageDlg('Favor selecionar um arquivo válido!',mtWarning,[mbOk],0);
      exit;
      end;
   mPasta :=Fnomearq_Pasta(1,TABEXT.Text);
   mTabela:=Fnomearq_Pasta(0,TABEXT.Text);
   DM5.Query2.Close;
   DM5.Query2.DatabaseName:=mPasta;
   DM5.Query2.SQL.Clear;
   DM5.Query2.SQL.Add('Select * from '+mTabela);
   try
      DM5.Query2.Open;
   except
      MessageDlg('Favor selecionar um arquivo válido!',mtWarning,[mbOk],0);
      exit;
      end;
   fDefinirStru(DM5.Query2);

   end;

end;
function fCriarInstr_Inserir(ptipo: Integer): Boolean;
var
i: Integer;
mais,aspas2, aspas, v: String;
mtammax, minserir: Integer;
begin
mlinha:=Frm_Criar_Inst.MSAIDA.Text;
AssignFile(f,mlinha);
Rewrite(f);
v:='';
aspas:=chr(39);
aspas2:='';
mais:='';

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from '+Frm_Criar_Inst.NOMTAB.Text);
DM1.Query2.Open;
mlinha:='';
minserir:=0;
if Frm_Criar_Inst.nome.Text<>'' then
   begin
   aspas2:=chr(39);
   mais:='+';
   mlinha:=Frm_Criar_Inst.nome.Text+'.Close;';
   Writeln(f,mlinha);
   mlinha:=Frm_Criar_Inst.nome.Text+'.SQL.Clear;';
   Writeln(f,mlinha);
   mlinha:=Frm_Criar_Inst.nome.Text+'.SQL.Add(';
   minserir:=Length(Frm_Criar_Inst.nome.Text);
   end;

mlinha:=mlinha+aspas2+'Insert into '+Frm_Criar_Inst.NOMTAB.Text+' ('+aspas2;
Writeln(f,mlinha);
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+v+DM1.Query2.Fields[i].FieldName+aspas2;
   WriteLn(F,mlinha);
   v:=',';
   end;
mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+') Values  ('+aspas2;
Writeln(f,mlinha);
v:='';
mtammax:=0;
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+v+':'+DM1.Query2.Fields[i].FieldName+aspas2;
   WriteLn(F,mlinha);
   v:=',';
   if length(DM1.Query2.Fields[i].FieldName)>mtammax then
      mtammax:=length(DM1.Query2.Fields[i].FieldName);

   end;
mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+')'+aspas2;
Writeln(f,mlinha);
if Frm_Criar_Inst.nome.Text <>'' then
   begin
   mlinha:=Insere2(' ',' ',minserir)+');';
   WriteLn(F,mlinha);
   end;
mlinha:=' ';
Writeln(f,mlinha);
mtammax:=mtammax+length(Frm_Criar_Inst.nome2.Text)+24;
if Frm_Criar_Inst.RG_PARAM.ItemIndex=0 then
   mais:='AsFloat'
else if Frm_Criar_Inst.RG_PARAM.ItemIndex=1 then
   mais:='AsString'
else if Frm_Criar_Inst.RG_PARAM.ItemIndex=2 then
   mais:='AsDateTime';
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   if DM1.Query2.Fields[i].DataType=ftFloat then
      mais:='AsFloat'
   else if DM1.Query2.Fields[i].DataType=ftinteger then
      mais:='AsInteger'
   else if (DM1.Query2.Fields[i].DataType=ftdatetime) or (DM1.Query2.Fields[i].DataType=ftdatetime) then
       mais:='AsDateTime'
   else if DM1.Query2.Fields[i].DataType=fttime then
       mais:='AsTime'
   else
       mais:='AsString';

   mlinha:=insere2(Frm_Criar_Inst.Nome2.Text+'.ParambyName('+aspas+DM1.Query2.Fields[i].FieldName+aspas+').'+mais,' ',mtammax)+':=';
   Writeln(f,mlinha);
   end;

mlinha:=' ';
Writeln(f,mlinha);
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Frm_Criar_Inst.Nome2.Text+'.Params.CreateParam(ftstring,'+aspas+DM1.Query2.Fields[i].FieldName+aspas+',ptinput);';
   Writeln(f,mlinha);
   end;


CloseFile(f);
MessageDlg('Concluido!',mtInformation,[mbok],0);

end;
procedure TFrm_Criar_Inst.NOMTABExit(Sender: TObject);
begin
if (MSAIDA.Text='C:\SGE\TXT.TXT') and (Trim(NOMTAB.Text)<>'') then
   MSAIDA.Text:='C:\SGE\'+Trim(NOMTAB.Text)+'.TXT';

end;

procedure TFrm_Criar_Inst.bbSairClick(Sender: TObject);
begin
close;
end;

function fCriarInstr_alterar(ptipo: Integer): Boolean;
var
i: Integer;
mais,aspas2, aspas, v: String;
mtammax, minserir: Integer;
begin
mlinha:=Frm_Criar_Inst.MSAIDA.Text;
AssignFile(f,mlinha);
Rewrite(f);
v:='';
aspas:=chr(39);
aspas2:='';
mais:='';

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from '+Frm_Criar_Inst.NOMTAB.Text);
DM1.Query2.Open;
mlinha:='';
minserir:=0;
if Frm_Criar_Inst.nome.Text<>'' then
   begin
   aspas2:=chr(39);
   mais:='+';
   mlinha:=Frm_Criar_Inst.nome.Text+'.Close;';
   Writeln(f,mlinha);
   mlinha:=Frm_Criar_Inst.nome.Text+'.SQL.Clear;';
   Writeln(f,mlinha);
   mlinha:=Frm_Criar_Inst.nome.Text+'.SQL.Add(';
   minserir:=Length(Frm_Criar_Inst.nome.Text);
   end;

mlinha:=mlinha+aspas2+'Update '+Frm_Criar_Inst.NOMTAB.Text+' set ';
Writeln(f,mlinha);
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Insere2(' ',' ',minserir)+mais+aspas+v+DM1.Query2.Fields[i].FieldName+'=:'+DM1.Query2.Fields[i].FieldName+aspas;
   WriteLn(F,mlinha);
   v:=',';
   end;
mlinha:='';
WriteLn(F,mlinha);

v:='';
mlinha:=mlinha+aspas2+'Update '+Frm_Criar_Inst.NOMTAB.Text+' set ';
Writeln(f,mlinha);
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Insere2(' ',' ',minserir)+v+DM1.Query2.Fields[i].FieldName+'=:'+DM1.Query2.Fields[i].FieldName;
   WriteLn(F,mlinha);
   v:=',';
   end;


{
mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+') Values  ('+aspas2;
Writeln(f,mlinha);
v:='';
mtammax:=0;
for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+v+':'+DM1.Query2.Fields[i].FieldName+aspas2;
   WriteLn(F,mlinha);
   v:=',';
   if length(DM1.Query2.Fields[i].FieldName)>mtammax then
      mtammax:=length(DM1.Query2.Fields[i].FieldName);

   end;
mlinha:=Insere2(' ',' ',minserir)+mais+aspas2+')'+aspas2;
Writeln(f,mlinha);
if Frm_Criar_Inst.nome.Text <>'' then
   begin
   mlinha:=Insere2(' ',' ',minserir)+');';
   WriteLn(F,mlinha);
   end;
mlinha:=' ';
Writeln(f,mlinha);
mtammax:=mtammax+length(Frm_Criar_Inst.nome2.Text)+24;
if Frm_Criar_Inst.RG_PARAM.ItemIndex=0 then
   mais:='AsFloat'
else if Frm_Criar_Inst.RG_PARAM.ItemIndex=1 then
   mais:='AsString'
else if Frm_Criar_Inst.RG_PARAM.ItemIndex=2 then
   mais:='AsDateTime';

for i:=0 to DM1.Query2.FieldCount-1 do
   begin
   mlinha:=insere2(Frm_Criar_Inst.Nome2.Text+'.ParambyName('+aspas+DM1.Query2.Fields[i].FieldName+aspas+').'+mais,' ',mtammax)+':=';
   Writeln(f,mlinha);
   end;
}
CloseFile(f);
MessageDlg('Concluido!',mtInformation,[mbok],0);
end;

procedure TFrm_Criar_Inst.SB01Click(Sender: TObject);
Begin

if OpenDialog1.Execute then
   TABEXT.Text:=OpenDialog1.FileName;
end;

function fDefinirStru(pTabela: TDataSet): Boolean;
var
x: Integer;
begin
AssignFile(f,Frm_Criar_Inst.MSAIDA.Text);
Rewrite(f);
mlinha:='marqatual:='+chr(39)+'nometab'+chr(39)+';';
Writeln(f,mlinha);
mlinha:='if (marqsol='+chr(39)+chr(39)+') or (marqatual=marqsol) then';
Writeln(f,mlinha);
mlinha:='   begin';
Writeln(f,mlinha);
mlinha:='   mlinha:=0;';
Writeln(f,mlinha);
mlinha:='   Frm_Stru.STG1.RowCount:=1;';
Writeln(f,mlinha);
mlinha:='   mdesc     :='+chr(39)+'Descricao da Tabela'+chr(39)+';';
Writeln(f,mlinha);

for x:=0 to pTabela.FieldCount-1 do
   begin
   mlinha:='   Frm_Stru.STG1.Cells[0,mlinha]:='+chr(39)+pTabela.Fields[x].FieldName+chr(39)+';';
   Writeln(f,mlinha);
   mlinha:='   Frm_Stru.STG1.Cells[1,mlinha]:=';
   if (pTabela.Fields[x].DataType=ftinteger) or
      (pTabela.Fields[x].DataType=ftFloat) then
      begin
      mlinha:=mlinha+'pcFloat;';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[2,mlinha]:='+chr(39)+chr(39)+';';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[3,mlinha]:='+chr(39)+chr(39)+';';
      Writeln(f,mlinha);
      end
   else if (pTabela.Fields[x].DataType=ftdate) or
      (pTabela.Fields[x].DataType=ftdatetime) then
      begin
      mlinha:=mlinha+'pcDataHora;';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[2,mlinha]:='+chr(39)+chr(39)+';';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[3,mlinha]:='+chr(39)+chr(39)+';';
      Writeln(f,mlinha);
      end
   else
      begin
      mlinha:=mlinha+'pcString;';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[2,mlinha]:='+chr(39)+IntToStr(pTabela.Fields[x].Size)+chr(39)+';';
      Writeln(f,mlinha);
      mlinha:='   Frm_Stru.STG1.Cells[3,mlinha]:='+chr(39)+chr(39)+';';
      Writeln(f,mlinha);
      end;

   mlinha:='   Frm_Stru.STG1.Cells[4,mlinha]:='+chr(39)+chr(39)+';';
   Writeln(f,mlinha);
   mlinha:='   Frm_Stru.STG1.Cells[5,mlinha]:='+chr(39)+chr(39)+';';
   Writeln(f,mlinha);

   mlinha:='   mlinha:=mlinha+1;';
   Writeln(f,mlinha);
   if x<>pTabela.FieldCount then
      begin
      mlinha:='   Frm_Stru.STG1.RowCount:=mlinha+1;';
      Writeln(f,mlinha);
      end;
   end;

mlinha:='   mtotcam:=mlinha;';
Writeln(f,mlinha);
mlinha:='   fstruverarq(ptipo);';
Writeln(f,mlinha);
mlinha:='   end;';
Writeln(f,mlinha);
CloseFile(f);
MessageDlg('concluido!',mtInformation,[mbOk],0);
end;
procedure TFrm_Criar_Inst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
