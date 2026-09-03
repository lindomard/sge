unit S_SQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, s_dm1,db,dbtables,func, S_DM2,S_CEmp;

type
  TFrm_SQL = class(TForm)
    STG_COND: TStringGrid;
    STG_CPO: TStringGrid;
    STG_TAB: TStringGrid;
  private
    { Private declarations }

  public
    { Public declarations }
  end;
function Fmontaped1(ptipo:Integer): Boolean;
function Fmontabco(ptipo:Integer): Boolean;
function Fmontadar(ptipo:Integer): Boolean;
function Fmontaaju(ptipo:Integer): Boolean;
function Fmontacli(ptipo:Integer): Boolean;
function Fmontans(ptipo:Integer): Boolean;
function Fmontacon(ptipo:Integer): Boolean;
function Fmontadap(ptipo:Integer): Boolean;
function Fmontapro(ptipo:Integer): Boolean;
function Fmontane(ptipo:Integer): Boolean;
function Fmontapf1(ptipo:Integer): Boolean;
function Fmontacar(ptipo:Integer): Boolean;
function Fmontagru(ptipo:Integer): Boolean;
function Fmontaldr(ptipo:Integer): Boolean;
function Fmontaped2(ptipo:Integer): Boolean;
function Fmontapf2(ptipo:Integer): Boolean;
function Fmontapv(ptipo:Integer): Boolean;
function Fmontatip(ptipo:Integer): Boolean;
function Fmontatra(ptipo:Integer): Boolean;
function Fmontauf(ptipo:Integer): Boolean;
function Fmontausr(ptipo:Integer): Boolean;
function Fmontaven(ptipo:Integer): Boolean;

function Fmontasql(ptipo:Integer): String;
function frpersql(pdtabela,pnome: String;ptipo:Integer):String;
function fmontadiv(pdtabela,pnome,pmesref,panoref: String;ptipo:Integer):Boolean;


var
  Frm_SQL: TFrm_SQL;
  mqtd: Integer;
  mordemp: String;
  mnummin,mnummax: Integer;
  msubst,rp_grupo, rp_sg: String;
implementation

{$R *.dfm}

function FmontaPed1(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPed1.FieldCount do
   begin
   if DM2.Qr_TPed1.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPed1.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_Tped1. Campo: '+DM2.Qr_TPed1.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPed1.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPed1.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_Tped1.SQL.Clear;
DM2.Qr_Tped1.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontabco(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TBco.FieldCount do
   begin
   if DM2.Qr_TBco.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TBco.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TBco. Campo: '+DM2.Qr_TBco.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TBco.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TBco.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if mtab=Frm_SQL.STG_TAB.Cells[00,x-1] then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x-1]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_SQl.STG_TAB.Rows[x].Clear;
      Frm_Sql.STG_TAB.rows[x+1].Clear;
      end;
   end;
DM2.Qr_TBco.SQL.Clear;
DM2.Qr_TBco.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontadar(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TDar.FieldCount do
   begin
   if DM2.Qr_TDar.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TDar.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TDar. Campo: '+DM2.Qr_TDar.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TDar.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TDar.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQl.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;
      end;
   end;
DM2.Qr_TDar.SQL.Clear;
DM2.Qr_TDar.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontaaju(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_taj.FieldCount do
   begin
   if DM2.Qr_taj.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_taj.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_taj. Campo: '+DM2.Qr_taj.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_taj.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_taj.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQl.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_taj.SQL.Clear;
DM2.Qr_taj.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontacli(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TCli.FieldCount do
   begin
   if DM2.Qr_TCli.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TCli.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TCli. Campo: '+DM2.Qr_TCli.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TCli.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TCli.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQl.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TCli.SQL.Clear;
DM2.Qr_TCli.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontans(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TNS.FieldCount do
   begin
   if DM2.Qr_TNS.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TNS.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TNS. Campo: '+DM2.Qr_TNS.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TNS.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TNS.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQl.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;
      end;
   end;
DM2.Qr_TNS.SQL.Clear;
DM2.Qr_TNS.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontacon(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TCon.FieldCount do
   begin
   if DM2.Qr_TCon.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TCon.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TCon. Campo: '+DM2.Qr_TCon.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TCon.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TCon.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQl.STG_CPO.Rows[mtam].Clear;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TCon.SQL.Clear;
DM2.Qr_TCon.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontadap(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TDap.FieldCount do
   begin
   if DM2.Qr_TDap.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TDap.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TDap. Campo: '+DM2.Qr_TDap.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TDap.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TDap.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TDap.SQL.Clear;
DM2.Qr_TDap.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontapro(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPro.FieldCount do
   begin
   if DM2.Qr_TPro.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPro.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TPro. Campo: '+DM2.Qr_TPro.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPro.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPro.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TPro.SQL.Clear;
DM2.Qr_TPro.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontane(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TNe.FieldCount do
   begin
   if DM2.Qr_TNe.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TNe.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TNe. Campo: '+DM2.Qr_TNe.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TNe.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TNe.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TNe.SQL.Clear;
DM2.Qr_TNe.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontapf1(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPf1.FieldCount do
   begin
   if DM2.Qr_TPf1.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPf1.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TPf1. Campo: '+DM2.Qr_TPf1.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPf1.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPf1.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TPf1.SQL.Clear;
DM2.Qr_TPf1.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontacar(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TCar.FieldCount do
   begin
   if DM2.Qr_TCar.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TCar.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TCar. Campo: '+DM2.Qr_TCar.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TCar.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TCar.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TCar.SQL.Clear;
DM2.Qr_TCar.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontagru(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TGru.FieldCount do
   begin
   if DM2.Qr_TGru.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TGru.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TGru. Campo: '+DM2.Qr_TGru.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TGru.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TGru.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TGru.SQL.Clear;
DM2.Qr_TGru.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontaldr(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TLDR.FieldCount do
   begin
   if DM2.Qr_TLDR.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TLDR.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TLDR. Campo: '+DM2.Qr_TLDR.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TLDR.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TLDR.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TLDR.SQL.Clear;
DM2.Qr_TLDR.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontaped2(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPed2.FieldCount do
   begin
   if DM2.Qr_TPed2.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPed2.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TPed2. Campo: '+DM2.Qr_TPed2.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPed2.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPed2.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TPed2.SQL.Clear;
DM2.Qr_TPed2.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontapf2(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPf2.FieldCount do
   begin
   if DM2.Qr_TPf2.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPf2.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TPf2. Campo: '+DM2.Qr_TPf2.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPf2.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPf2.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TPf2.SQL.Clear;
DM2.Qr_TPf2.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontapv(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TPV.FieldCount do
   begin
   if DM2.Qr_TPV.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TPV.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TPV. Campo: '+DM2.Qr_TPV.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TPV.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TPV.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TPV.SQL.Clear;
DM2.Qr_TPV.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontatip(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TTP.FieldCount do
   begin
   if DM2.Qr_TTP.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TTP.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TTP. Campo: '+DM2.Qr_TTP.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TTP.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TTP.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TTP.SQL.Clear;
DM2.Qr_TTP.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontatra(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TTra.FieldCount do
   begin
   if DM2.Qr_TTra.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TTra.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TTra. Campo: '+DM2.Qr_TTra.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TTra.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TTra.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TTra.SQL.Clear;
DM2.Qr_TTra.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontauf(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TUF.FieldCount do
   begin
   if DM2.Qr_TUF.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TUF.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TUF. Campo: '+DM2.Qr_TUF.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TUF.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TUF.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TUF.SQL.Clear;
DM2.Qr_TUF.SqL.Add(fmontasql(0));
Result:=True;
end;
function Fmontausr(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TUsr.FieldCount do
   begin
   if DM2.Qr_TUsr.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TUsr.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TUsr. Campo: '+DM2.Qr_TUsr.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TUsr.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TUsr.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TUsr.SQL.Clear;
DM2.Qr_TUsr.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontaven(ptipo:Integer): Boolean;
var
x,mlid,mtam: Integer;
mnome,mtab, mcampo: String;
achou: Boolean;
begin
mqtd:=0;
mtam:=1;
Frm_SQL.STG_TAB.RowCount:=1;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;

For mqtd:=1 to DM2.Qr_TVen.FieldCount do
   begin
   if DM2.Qr_TVen.fields[mqtd-1].fieldkind=fkCalculated then
      Continue;
   if Trim(DM2.Qr_TVen.Fields[mqtd-1].Origin)='' then
      ShowMessage('Erro na Table DM2.Qr_TVen. Campo: '+DM2.Qr_TVen.fields[mqtd-1].FieldName)
   else
      begin
      mcampo:=DM2.Qr_TVen.fields[mqtd-1].FieldName;
      mtab:='';
      mnome:=Trim(DM2.Qr_TVen.Fields[mqtd-1].Origin);
      mnome:=copy(mnome,10,length(mnome)-9);
      for mlid:=1 to length(mnome) do
         begin
         if copy(mnome,mlid,1)='.' then
            break;
         mtab:=mtab+copy(mnome,mlid,1);
         end;
      end;
   mlid:=mlid+1;
   mnome:=copy(mnome,mlid,(length(mnome)-length(mtab)));
   mtam:=mtam+1;
   Frm_SQL.STG_CPO.RowCount:=mtam;
   Frm_SQL.STG_CPO.Cells[00,mtam-1]:=mtab;
   Frm_SQL.STG_CPO.Cells[01,mtam-1]:=mnome;
   achou:=False;
   for x:=1 to Frm_SQL.STG_TAB.RowCount do
      begin
      if Frm_SQL.STG_TAB.Cells[00,x]=mtab then
         begin
         achou:=True;
         break;
         end;
      end;
   if not achou then
      begin
      x:=Frm_SQL.STG_TAB.RowCount;
      Frm_SQL.STG_TAB.Cells[00,x]:=mtab;
      Frm_SQL.STG_TAB.RowCount:=x+1;
      Frm_Sql.STG_TAB.rows[x+1].Clear;

      end;
   end;
DM2.Qr_TVen.SQL.Clear;
DM2.Qr_TVen.SqL.Add(fmontasql(0));
Result:=True;
end;

function Fmontasql(ptipo:Integer): String;
var
minc,mtaba,minstrucao: String;
mgrupo: Boolean;
x,y: Integer;
v: String;
begin
mgrupo:=False;
v:='';
minstrucao:='Select ';


for x:=1 to Frm_SQL.STG_CPO.RowCount do
   begin
   if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
      continue;
   if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=1 then
      begin
      minstrucao:=minstrucao+v+' sum(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
      mgrupo:=True;
      end;
   if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=2 then
      begin
      minstrucao:=minstrucao+v+' Count(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
      mgrupo:=True;
      end;
   end;

for x:=1 to Frm_SQL.STG_CPO.RowCount do
   begin
   if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
      continue;
   if (valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=3)  then
      begin
      minstrucao:=minstrucao+v;
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[03,x-1];
      v:=',';
      mgrupo:=True;
      end;
   end;

for x:=1 to Frm_SQL.STG_CPO.RowCount do
   begin
   if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
      continue;
   if (valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=4)  then
      begin
      minstrucao:=minstrucao+v;
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+' as '+Frm_SQL.STG_CPO.Cells[03,x-1];
      v:=',';
      mgrupo:=True;
      end;
   end;





for x:=1 to Frm_SQL.STG_CPO.RowCount do
   begin
   if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
      continue;
   if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])<>0  then
      Continue;

   minstrucao:=minstrucao+v;
   if (mgrupo) and (Frm_SQl.STG_CPO.Cells[03,x-1]='D') and (pbanco=0) and
      (Trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
      minstrucao:=minstrucao+' TO_CHAR(';
   if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
   minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1];
   if (mgrupo) and (Frm_SQl.STG_CPO.Cells[03,x-1]='D') and (pbanco=0) and
      (Trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
      minstrucao:=minstrucao+', '+chr(39)+DM2.Qr_tdvca_stcMASC.Value+chr(39)+') as '
      +Frm_SQL.STG_CPO.Cells[01,x-1];
   v:=',';
   end;

minstrucao:=minstrucao+' ';
mtaba:='';
minc:=' where ';


if pbanco=1 then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if Frm_SQL.STG_COND.Cells[5,x-1]<>'N' then
         Continue;
      if Trim(Frm_SQL.STG_COND.Cells[6,x-1])<>'' then
         begin
         if DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[6,x-1],[]) Then
            Continue;
         end;
      mtaba:=Frm_sql.STG_COND.Cells[00,x-1];
      for y:=1 to Frm_SQl.STG_TAB.RowCount do
         begin
         if Frm_SQl.STG_TAB.Cells[00,y-1]=mtaba then
            Frm_SQl.STG_tab.Rows[y-1].Clear;
         end;
      end;
   end;
minc:=' from ';
For x:=1 to Frm_SQL.STG_TAB.RowCount do
   begin
   if (Frm_SQl.STG_TAB.Cells[00,x-1])='' then
      Continue;
   minstrucao:=minstrucao+minc+(Frm_SQl.STG_TAB.Cells[00,x-1]);
   minc:=', ';
   end;
mtaba:='';
if pbanco=1 then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if (Frm_SQL.STG_COND.Cells[1,x-1])='' then
         Continue;
      if Frm_SQL.STG_COND.Cells[5,x-1]<>'N' then
         Continue;
      if Trim(Frm_SQL.STG_COND.Cells[6,x-1])<>'' then
         begin
         if DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[6,x-1],[]) Then
            Continue;
         end;

      if (mtaba=Frm_sql.STG_COND.Cells[00,x-1]) then
         begin
         minstrucao:=minstrucao+' and (';
         if Trim(Frm_sql.STG_COND.Cells[00,x-1])<>'' then
            minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                    +' '+Frm_sql.STG_COND.Cells[02,x-1]+' ';
         if Trim(frm_SQL.STG_COND.Cells[3,x-1])<>'' then
             minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[03,x-1]+'.';
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1]+')';

         end
      else
         begin
         minstrucao:=minstrucao+' LEFT OUTER JOIN '+Frm_sql.STG_COND.Cells[00,x-1]+' '+Frm_sql.STG_COND.Cells[00,x-1]
                    +' ON ('+Frm_sql.STG_COND.Cells[00,x-1]+'.'+Frm_sql.STG_COND.Cells[01,x-1]
                    +' '+Frm_sql.STG_COND.Cells[02,x-1]
                    +' '+Frm_sql.STG_COND.Cells[03,x-1]+'.'+Frm_sql.STG_COND.Cells[04,x-1]+')';
         end;
      mtaba:=Frm_sql.STG_COND.Cells[00,x-1];
      end;
   end;
minc:=' where ';
if Frm_Cemp.STG_EMP.RowCount>1 then
   begin
   minc:=' where ((';
   for x:=0 to Frm_Cemp.STG_EMP.RowCount do
      begin
      if Trim(Frm_CEmp.STG_EMP.Cells[0,x])='' then
         Continue;
      minstrucao:=minstrucao+minc+Trim(Frm_Cemp.STG_EMP.Cells[2,x])+'='+Trim(Frm_Cemp.STG_EMP.Cells[0,X]);
      minc:=') or (';
      end;
   if minc=' where ((' then
      minc:=' where '
   else
      begin
      minstrucao:=minstrucao+' )) ';
      minc:=' and ';
      end;
   end;



for x:=1 to Frm_SQL.STG_COND.RowCount do
   begin
   if (Frm_SQL.STG_COND.Cells[1,x-1])='' then
      Continue;
   if Frm_SQL.STG_COND.Cells[5,x-1]='N' then
      Continue;
   if Trim(Frm_SQL.STG_COND.Cells[6,x-1])<>'' then
      begin
      if DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[6,x-1],[]) Then
         Continue;
      end;
   if Frm_sql.STG_COND.Cells[03,x-1]='VARCAR' then
      begin
      minstrucao:=minstrucao+minc;
      if trim(Frm_SQl.STG_COND.cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' '+Frm_sql.STG_COND.Cells[02,x-1]
                 +' '+chr(39)+Frm_sql.STG_COND.Cells[04,x-1]+chr(39);
      end
   else if Frm_sql.STG_COND.Cells[03,x-1]='VARNUM' then
      begin
      minstrucao:=minstrucao+minc;
      if trim(Frm_SQl.STG_COND.cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' '+Frm_sql.STG_COND.Cells[02,x-1]
                 +' '+Frm_sql.STG_COND.Cells[04,x-1];
       end
   else
      begin
      minstrucao:=minstrucao+minc;
      if trim(Frm_SQl.STG_COND.cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' '+Frm_sql.STG_COND.Cells[02,x-1];
      if trim(Frm_SQl.STG_COND.Cells[03,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_COND.Cells[03,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1];
      end;
   minc:=' and ';
   end;
if pbanco=0 then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if (Frm_SQL.STG_COND.Cells[0,x-1])='' then
         Continue;

      if Frm_SQL.STG_COND.Cells[5,x-1]<>'N' then
         Continue;
      if Trim(Frm_SQL.STG_COND.Cells[6,x-1])<>'' then
         begin
         if DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[6,x-1],[]) Then
            Continue;
         end;
      minstrucao:=minstrucao+minc;
      if trim(Frm_SQl.STG_COND.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                    +'(+)'+Frm_sql.STG_COND.Cells[02,x-1]+' ';
      if trim(Frm_Sql.STG_COND.Cells[03,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[03,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1];
      minc:=' and ';
      end;
   end;
v:=' Group by ';
if mgrupo then
   begin
   for x:=1 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
         continue;
      if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])<>0  then
         Continue;
      minstrucao:=minstrucao+v;

      if (mgrupo) and (Frm_SQl.STG_CPO.Cells[03,x-1]='D') and (pbanco=0) and
         (Trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
          minstrucao:=minstrucao+' TO_CHAR(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
          minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1];
      if (mgrupo) and (Frm_SQl.STG_CPO.Cells[03,x-1]='D') and (pbanco=0) and
         (Trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
          minstrucao:=minstrucao+', '+chr(39)+DM2.Qr_tdvca_stcMASC.Value+chr(39)+')';
      v:=',';
      end;
   end;

if Trim(mordemp)<>'' then
   minstrucao:=minstrucao+' '+mordemp;
Result:=minstrucao;
end;

function frpersql(pdtabela,pnome: String;ptipo:Integer):String;
var
x: Integer;
machou: Boolean;
minstrucao: String;
mvirg,mcond: String;
mgrupo: Boolean;
begin
DM2.Qr_TDVCA_S.Close;
if DM1.Qr_Tid.Locate('TINOME','CADTDV',[]) then
   DM2.Qr_TDVCA_S.ParamByName('CODEMP').Asstring:= '%'
else
   DM2.Qr_TDVCA_S.ParamByName('CODEMP').AsFloat := codemp;
DM2.Qr_TDVCA_S.ParamByName('DOC').AsString      :=  pdtabela;
DM2.Qr_TDVCA_S.ParamByName('NOME').AsString     := pnome;
DM2.Qr_TDVCA_S.Open;


DM2.Qr_TDV_S.Close;
if DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   DM2.Qr_TDV_S.ParamByName('CODEMP').AsString  :='%'
else
   DM2.Qr_TDV_S.ParamByName('CODEMP').AsFloat   :=Codemp;
DM2.Qr_TDV_S.ParamByName('DOC').AsString        :=pdtabela;
DM2.Qr_TDV_S.ParamByName('NOME').AsString       :=pnome;
DM2.Qr_TDV_S.ParamByName('LOCAL').AsString      :='%';
DM2.Qr_TDV_S.ParamByName('SEQ').AsString        :='%';
DM2.Qr_TDV_S.Open;
if (ptipo<>2) and (ptipo<>4) then
   begin
   Frm_SQL.STG_CPO.RowCount:=1;
   Frm_SQL.STG_CPO.Rows[0].Clear;
   end;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select tctpsel as selecao,tcampo as campo,TCAMPO_TAB as tabela, TTIPOC as tipo from CADTDV '
                  +' where ttipo=0 and tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TCTPVAR<>1'
                  +' group by tctpsel,tcampo,TCAMPO_TAB,TTIPOC');

DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if length(trim(DM1.Query1.Fields[1].AsString))>8 then
      begin
      if (Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Operador.') or
         (Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Saldo Ini')  then
         begin
         DM1.Query1.next;
         Continue;
         end;
      end;
   machou:=False;
   for x:=0 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
         Continue;
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM1.Query1.Fields[1].AsString) then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_SQL.STG_CPO.RowCount;
      if ((ptipo=8) or (ptipo=9)) and (DM1.Query1.Fields[0].Asinteger=0) then
         begin
         if Trim(msubst)<>'' then
            begin
            Frm_SQL.STG_CPO.Cells[0,x-1]:='';
            Frm_SQL.STG_CPO.Cells[1,x-1]:=msubst;
            Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
            Frm_SQL.STG_CPO.Cells[3,x-1]:='';
            Frm_SQL.STG_CPO.RowCount:=x+1;
            x:=Frm_SQL.STG_CPO.RowCount;
            end;



         Frm_SQL.STG_CPO.Cells[0,x-1]:='';
         Frm_SQL.STG_CPO.Cells[1,x-1]:=iif(ptipo=8,chr(39)+'01'+chr(39),chr(39)+'02'+chr(39)); //+' as P1DATAP';
         Frm_SQL.STG_CPO.Cells[2,x-1]:='4';
         Frm_SQL.STG_CPO.Cells[3,x-1]:=DM1.Query1.Fields[3].AsString;
         Frm_SQL.STG_CPO.RowCount:=x+1;
         end
      else
         begin
         Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[2].AsString);
         Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
         Frm_SQL.STG_CPO.Cells[2,x-1]:=FormatFloat('0',DM1.Query1.Fields[0].AsInteger);
         Frm_SQL.STG_CPO.Cells[3,x-1]:=DM1.Query1.Fields[3].AsString;
         Frm_SQL.STG_CPO.RowCount:=x+1;
         end;

      Frm_SQL.STG_CPO.Rows[x].Clear;
      Frm_SQL.STG_CPO.Rows[x+1].Clear;
      end;
   DM1.Query1.Next;
   end;
// Operadores


DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select 0 as selecao,tcond01 as campo,TCOND01_TAB as tabela, 0 as tipo from CADTDV '
                  +' where tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TCTPVAR<>1'
                  +' group by TCOND01,TCOND01_TAB');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 0 as selecao,tcond02 as campo,TCOND02_TAB as tabela, 0 as tipo from CADTDV '
                  +' where tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TCONDT2<>'+chr(39)+'V'+chr(39)
                  +' and TCTPVAR<>1 '
                  +' and not TCONDT2 is null '
                  +' group by TCOND02,TCOND02_TAB');
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if length(trim(DM1.Query1.Fields[1].AsString))>8 then
      begin
      if Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Operador.' then
         begin
         DM1.Query1.Next;
         Continue;
         end;
      end;

   machou:=False;

   for x:=0 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
         Continue;

      if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM1.Query1.Fields[1].AsString) then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[2].AsString);
      Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
      Frm_SQL.STG_CPO.Cells[2,x-1]:=FormatFloat('0',DM1.Query1.Fields[0].AsInteger);
      Frm_SQL.STG_CPO.Cells[3,x-1]:=DM1.Query1.Fields[3].AsString;

      Frm_SQL.STG_CPO.RowCount:=x+1;
      Frm_SQL.STG_CPO.Rows[x].Clear;
      Frm_SQL.STG_CPO.Rows[x+1].Clear;
      end;
   DM1.Query1.Next;
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select TOOP0 as campo,TODOC as tabela from CTDVOP '
                  +' where TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP0<>'+chr(39)+'V'+chr(39)
                  +' and TODESOP0<>'+chr(39)+'Tot. Mes -'+chr(39)
                  +' and not TODESOP0 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP0,TODOC');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select TOOP1 as campo,TODOC as tabela from CTDVOP '
                  +' where TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP1<>'+chr(39)+'V'+chr(39)
                  +' and not TODESOP1 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP1,TODOC');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select TOOP2 as campo,TODOC as tabela from CTDVOP '
                  +' where TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP2<>'+chr(39)+'V'+chr(39)
                  +' and not TODESOP2 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP2,TODOC');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select TOOP3 as campo,TODOC as tabela from CTDVOP '
                  +' where TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP3<>'+chr(39)+'V'+chr(39)
                  +' and not TODESOP3 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP3,TODOC');


DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if length(Trim(DM1.Query1.Fields[0].AsString))>8 then
      begin
      if (Copy(Trim(DM1.Query1.Fields[0].AsString),1,9)='Operador.') or
         (Copy(Trim(DM1.Query1.Fields[0].AsString),1,9)='Saldo Ini')  then
         begin
         DM1.Query1.next;
         Continue;
         end;
      end;
   machou:=False;
   for x:=0 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
         Continue;
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM1.Query1.Fields[0].AsString) then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_SQL.STG_CPO.RowCount;
//      Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
      Frm_SQL.STG_CPO.Cells[0,x-1]:='';

      Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Query1.Fields[0].AsString);
      Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
      Frm_SQL.STG_CPO.RowCount:=x+1;
      Frm_SQL.STG_CPO.Rows[x].Clear;
      Frm_SQL.STG_CPO.Rows[x+1].Clear;
      end;
   DM1.Query1.Next;
   end;

// fim dos operadores
DM1.Tb_TDVFT.Close;
if DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   DM1.Tb_TDVFT.ParamByName('CODEMP').AsString:='%'
else
   DM1.Tb_TDVFT.ParamByName('CODEMP').AsFloat :=codemp;
DM1.Tb_TDVFT.ParamByName('DOC').AsString      :=pdtabela;
DM1.Tb_TDVft.ParamByName('NOME').AsString   :=pnome;
DM1.Tb_TDVft.ParamByName('TIPO').AsString   :='%';

DM1.Tb_TDVFT.Open;
While not DM1.Tb_TDVFT.Eof do
   begin
// LINDOMAR   
   if DM1.Tb_TDVFTTFTIPO.Value=0 then
      begin
      DM1.Tb_TDVFT.Next;
      Continue;
      end;


   machou:=False;
   for x:=0 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
         Continue;
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM1.Tb_TDVFTTFCAMPO1.Value) then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_SQL.STG_CPO.RowCount;
//      Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
      Frm_SQL.STG_CPO.Cells[0,x-1]:='';

      Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Tb_TDVFTTFCAMPO1.Value);
      Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
      Frm_SQL.STG_CPO.RowCount:=x+1;
      Frm_SQL.STG_CPO.Rows[x].Clear;
      Frm_SQL.STG_CPO.Rows[x+1].Clear;
      end;
   if DM1.Tb_TDVFTTFTCAMPO2.Value='A' then
      begin
       machou:=False;
      for x:=0 to Frm_SQL.STG_CPO.RowCount do
         begin
         if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
            Continue;
         if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM1.Tb_TDVFTTFCAMPO2.Value) then
            begin
            machou:=True;
            break;
            end;
         end;
      if not machou then
         begin
         x:=Frm_SQL.STG_CPO.RowCount;
//         Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
         Frm_SQL.STG_CPO.Cells[0,x-1]:='';

         Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Tb_TDVFTTFCAMPO2.Value);
         Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
         Frm_SQL.STG_CPO.RowCount:=x+1;
         Frm_SQL.STG_CPO.Rows[x].Clear;
         Frm_SQL.STG_CPO.Rows[x+1].Clear;
         end;
      end;


   DM1.Tb_TDVFT.Next;
   end;




DM1.Tb_TDVFT.First;
if (ptipo<>1) and (ptipo<>4) and (ptipo<>8) and (ptipo<>9) then
   begin
   Frm_SQl.STG_COND.RowCount:=1;
   Frm_SQl.STG_COND.rows[0].Clear;
   end;
x:=1;
mordemp:='';
mvirg:=' order by ';
rp_grupo:='';
rp_sg  :='';

While not DM1.Tb_TDVft.Eof do
   begin
   if DM1.Tb_TDVFTTFTIPO.Value=6 then
      begin
      DM1.Tb_TDVFT.Next;
      Continue;
      end;
   if DM1.Tb_TDVFTTFTIPO.Value=5 then
      rp_sg   :=Trim(DM1.Tb_TDVFTTFCAMPO1.Value)
   else if DM1.Tb_TDVFTTFTIPO.Value=4 then
      rp_grupo:=Trim(DM1.Tb_TDVFTTFCAMPO1.Value)
   else if DM1.Tb_TDVFTTFTIPO.Value=3 then
      begin
      mordemp:=mordemp+mvirg+Trim(DM1.Tb_TDVFTTFCAMPO1.Value);
      mvirg:=',';
      end
   else
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Rows[x+1].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:=DM1.Tb_TDVFTTFTAB01.Value;
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:=DM1.Tb_TDVFTTFCOND1.Value;
      if DM1.Tb_TDVFTTFTCAMPO2.Value='V' then
         begin
         if DM1.Tb_TDVFTTFCAMPO1.Value='N' then
            Frm_SQl.STG_COND.Cells[03,x-1]:='VARNUM'
         else
            Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
         if DM1.Tb_TDVFTTFTCAMPO1.Value='D' then
            Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(DM1.Tb_TDVFTTFTCAMPO2.Value))
         else
            Frm_SQl.STG_COND.Cells[04,x-1]:=DM1.Tb_TDVFTTFCAMPO2.AsString;
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         end
      else
         begin
         Frm_SQL.STG_COND.Cells[03,x-1]:=DM1.Tb_TDVFTTFTAB02.Value;
         Frm_SQL.STG_COND.Cells[04,x-1]:=DM1.Tb_TDVFTTFCAMPO2.Value;
         if ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB02.Value)) and (DM2.Qr_TDVCA_STCTAB02N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB03.Value)) and (DM2.Qr_TDVCA_STCTAB03N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB04.Value)) and (DM2.Qr_TDVCA_STCTAB04N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB05.Value)) and (DM2.Qr_TDVCA_STCTAB05N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB06.Value)) and (DM2.Qr_TDVCA_STCTAB06N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB07.Value)) and (DM2.Qr_TDVCA_STCTAB07N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB08.Value)) and (DM2.Qr_TDVCA_STCTAB08N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB02.Value)=Trim(DM2.Qr_TDVCA_STCTAB09.Value)) and (DM2.Qr_TDVCA_STCTAB09N.Value=0)) then
            Frm_SQL.STG_COND.Cells[05,x-1]:='N'
         else
            Frm_SQL.STG_COND.Cells[05,x-1]:='S';
         end;
      Frm_SQL.STG_COND.Cells[06,x-1]:='';

      end;
   DM1.Tb_TDVFT.Next;
   end;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;
x:=1;
Frm_SQL.STG_TAB.RowCount:=x;
Frm_SQl.STG_TAB.Rows[x].Clear;
Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB01.Value;
if Trim(DM2.Qr_TDVCA_STCTAB02.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB02.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB03.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB03.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB04.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB04.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB05.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB05.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB06.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB06.Value;
   end;

if Trim(DM2.Qr_TDVCA_STCTAB07.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB07.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB08.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB08.Value;
   end;
if Trim(DM2.Qr_TDVCA_STCTAB09.Value)<>'' then
   begin
   x:=x+1;
   Frm_SQL.STG_TAB.RowCount:=x;
   Frm_SQl.STG_TAB.Rows[x].Clear;
   Frm_SQL.STG_TAB.Cells[0,x-1]:=DM2.Qr_TDVCA_STCTAB09.Value;
   end;

result:=Fmontasql(0);
end;



function fmontadiv(pdtabela,pnome,pmesref,panoref: String;ptipo:Integer):Boolean;
var
mes: array [1..12] of integer;
ano: array [1..12] of integer;
mesat,manoat,x,y: Integer;
begin
mesat :=StrtoInt('0'+pmesref);
if mesat=0 then
   mesat:=StrToInt(FormatdateTime('mm',date));
manoat:=StrtoInt('0'+panoref);
if manoat=0 then
   manoat:=StrToInt(FormatDateTime('yyyy',date));
for x:=DM1.Tb_TDVCATCQTDDIV.AsInteger downto 1 do
   begin
   mes[x]:=mesat;
   ano[x]:=manoat;
   mesat:=mesat-1;
   if mesat<1 then
      begin
      mesat:=12;
      manoat:=manoat-1;
      end;
   end;

DM1.Tb_TDVFT.Close;
if DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   DM1.Tb_TDVFT.ParamByName('CODEMP').AsString:='%'
else
   DM1.Tb_TDVFT.ParamByName('CODEMP').AsFloat:=codemp;
DM1.Tb_TDVFT.ParamByName('DOC').AsString     :=pdtabela;
DM1.Tb_TDVFT.ParamByName('NOME').AsString    :=pnome;
DM1.Tb_TDVft.ParamByName('TIPO').AsFloat :=6;
DM1.Tb_TDVft.Open;

Frm_SQL.STG_CPO.RowCount:=1;
Frm_SQL.STG_CPO.Rows[0].Clear;

While not DM1.Tb_TDVFt.Eof do
   begin
   for x:=1 to DM1.Tb_TDVCATCQTDDIV.AsInteger do
      begin
      y:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.RowCount:=Y+1;

      Frm_SQL.STG_CPO.Rows[y].Clear;
      Frm_SQL.STG_CPO.Cells[0,y-1]:='';
      Frm_SQL.STG_CPO.Cells[1,y-1]:='sum(decode(to_char('+DM1.Tb_TDVCATCPERIODO.Value+','
                                  +chr(39)+'yyyymm'+chr(39)+'), '
                                  +chr(39)+formatFloat('0000',ano[x])+FormatFloat('00',mes[x])+chr(39)                                  +','+DM1.Tb_TDVFTTFCAMPO1.Value+',0) ';
      Frm_SQL.STG_CPO.Cells[2,y-1]:='3';
      Frm_SQL.STG_CPO.Cells[3,y-1]:=DM1.Tb_TDVFTTFCAMPO1.Value+'_'+FormatFloat('00',x);

      y:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.RowCount:=Y+1;

      Frm_SQL.STG_CPO.Rows[y].Clear;
      Frm_SQl.STG_CPO.Cells[0,y-1]:='';
      Frm_SQl.STG_CPO.Cells[1,y-1]:=FormatFloat('00',mes[x]);
      Frm_SQL.STG_CPO.Cells[2,y-1]:='4';
      Frm_SQL.STG_CPO.Cells[3,y-1]:='MES_'+FormatFloat('00',x);

      y:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.RowCount:=Y+1;
      Frm_SQL.STG_CPO.Rows[y].Clear;
      Frm_SQl.STG_CPO.Cells[0,y-1]:='';
      Frm_SQl.STG_CPO.Cells[1,y-1]:=FormatFloat('0000',ano[x]);
      Frm_SQL.STG_CPO.Cells[2,y-1]:='4';
      Frm_SQL.STG_CPO.Cells[3,y-1]:='ANO_'+FormatFloat('00',x);
      end;
   DM1.Tb_TDVFT.Next;
   end;
result:=True;
end;
end.
