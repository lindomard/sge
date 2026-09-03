unit S_Func2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,func,db,dbtables,S_DM2,S_DM1, Grids Grids;

type
  TFrm_Func2 = class(TForm)
    Stg1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function frpersql(pdtabela,pnome: String):String;

var
  Frm_Func2: TFrm_Func2;

implementation

{$R *.dfm}

function frpersql(pdtabela,pnome: String):String;
var
x: Integer;
machou: Boolean;
minstrucao: String;
mvirg,mcond: String;
mgrupo: Boolean;
begin
DM2.Qr_TDVCA_S.Close;
if DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
   DM2.Qr_TDVCA_S.ParamByName('CODEMP').Asstring:= '%'
else
   DM2.Qr_TDVCA_S.ParamByName('CODEMP').AsFloat := codemp;
DM2.Qr_TDVCA_S.ParamByName('DOC').AsString      :=  pdtabela;
DM2.Qr_TDVCA_S.ParamByName('NOME').AsString     := pnome;
DM2.Qr_TDVCA_S.Open;

DM2.Qr_TDV_S.Close;
if DM1.Qr_TID.Locate('TINOME',mpesq,[]) then
   DM2.Qr_TDV_S.ParamByName('CODEMP').AsString  :='%'
else
   DM2.Qr_TDV_S.ParamByName('CODEMP').AsFloat   :=Codemp;
DM2.Qr_TDV_S.ParamByName('DOC').AsString        :=pdtabela;
DM2.Qr_TDV_S.ParamByName('NOME').AsString       :=pnome;
DM2.Qr_TDV_S.ParamByName('LOCAL').AsString      :='%';
DM2.Qr_TDV_S.ParamByName('SEQ').AsString        :='%';
DM2.Qr_TDV_S.Open;
Frm_Func2.Stg1.RowCount:=1;
Frm_Func2.Stg1.Rows[0].Clear;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select tctpsel as selecao,tcampo as campo,TCAMPO_TAB as tabela from CADTDV '
                  +' where ptipo=0 and tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' group by tctpsel,tcampo,TCAMPO_TAB');
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   machou:=False;
   for x:=0 to frm_Func2.Stg1.RowCount do
      begin
      if Trim(Frm_Func2.Stg1.Cells[0,x])='' then
         Continue;
      if Trim(Frm_Func2.Stg1.Cells[0,x])=Trim(DM1.Query1.Fields[1].AsString) then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_Func2.Stg1.RowCount;
      Frm_Func2.Stg1.Rows[x-1].Clear;
      Frm_Func2.Stg1.Cells[0,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
      Frm_Func2.Stg1.Cells[1,x-1]:=Trim(DM1.Query1.Fields[2].AsString);
      Frm_Func2.Stg1.Cells[2,x-1]:=DM1.Query1.Fields[0].AsInteger;
      Frm_Func2.Stg1.RowCount:=x+1;
      Frm_Func2.Stg1.Rows[x].Clear;
      end;
   DM1.Query1.Next;
   end;
mgrupo:=False;
minstrucao:='Select ';
mvirg:='';
mcond:=' where ';
for x:=0 to Frm_Func2.Stg1.RowCount do
   begin
   if Trim(Frm_Func2.Stg1.Cells[0,x])='' then
      Continue;
   if ValFloat(Frm_Func2.Stg1.Cells[2,x])=1 then
      begin
      minstrucao:=minstrucao+mvirg+' sum('+Frm_Func2.Stg1.Cells[1,x]+'.'+Frm_Func2.Stg1.Cells[0,x-1]+') as '+Frm_Func2.Stg1.Cells[0,x-1];
      mvirg:=',';
      mgrupo:=True;
      end;
   else ValFloat(Frm_Func2.Stg1.Cells[2,x])=2 then
      begin
      minstrucao:=minstrucao+mvirg+' Count('+Frm_Func2.Stg1.Cells[1,x]+'.'+Frm_Func2.Stg1.Cells[0,x-1]+') as '+Frm_Func2.Stg1.Cells[0,x-1];
      mgrupo:=True;
      mvirg :=',';
      end
   end;
for x:=0 to Frm_Func2.Stg1.RowCount do
   begin
   if Trim(Frm_Func2.Stg1.Cells[0,x])='' then
      Continue;
   if ValFloat(Frm_Func2.Stg1.Cells[2,x])=0 then
      begin
      minstrucao:=minstrucao+mvirg+Frm_Func2.Stg1.Cells[1,x]+'.'+Frm_Func2.Stg1.Cells[0,x-1]+') as '+Frm_Func2.Stg1.Cells[0,x-1];
      mvirg:=',';
      mgrupo:=True;
      end;
   end;




end;

end.
