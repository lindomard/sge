unit S_SQL;
{if not DM1.Qr_Tid.Locate('TINOME',mreltab,[]) then

   begin
   minc:=' where ((';
   for x:=0 to high(ce_codempati) do
      begin
      minstrucao:=minstrucao+minc+ce_nomcamemp[x]+'='+ce_codempati[x];
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
 função retirada
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, s_dm1,db,dbtables,func, S_DM2, S_SelEmp;

type
  TFrm_SQL = class(TForm)
    STG_COND: TStringGrid;
    STG_CPO: TStringGrid;
    STG_TAB: TStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

function Fmontasql(ptipo:Integer; pInstAd: String): String;
function frpersql(pdorigem,pdtabela,pnome,pInstAd: String;ptipo:Integer):String;

function fmontadiv(pdorigem,pdtabela,pnome,pmesref,panoref: String;ptipo:Integer):Boolean;
function fVerificaVendas(pTab,pDoc,pNome,pDt1,pDt2: String): Real;


var
  Frm_SQL: TFrm_SQL;
  Form_SelEmp: TFrm_SelEmp;
  mqtd: Integer;
  mordemp: String;
  mnummin,mnummax: Integer;
  msubst,rp_grupo, rp_sg: String;
  msaida: String; // retirar
  mtrocanome: String;
implementation

uses lerarq;


{$R *.dfm}







function Fmontasql(ptipo:Integer; pInstAd: String): String;
var
minc,mtaba,minstrucao: String;
mgrupo: Boolean;
x,y: Integer;
v: String;
mFiltrouEmpresa: Boolean;
mEmpresaSep: Integer;
begin
mFiltrouEmpresa:=false;
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
      end
   else if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=2 then
      begin
      minstrucao:=minstrucao+v+' Count(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
      mgrupo:=True;
      end
   else if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=3 then
      begin
      minstrucao:=minstrucao+v+' max(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
      mgrupo:=True;
      end
   else if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=4 then
      begin
      minstrucao:=minstrucao+v+' min(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
      mgrupo:=True;
      end
   else if valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=7 then
      begin
      minstrucao:=minstrucao+v+' unique(';
      if trim(Frm_SQL.STG_CPO.Cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+') as '+Frm_SQL.STG_CPO.Cells[01,x-1];
      v:=',';
//      mgrupo:=True;
      end;

   end;

for x:=1 to Frm_SQL.STG_CPO.RowCount do
   begin
   if Trim(Frm_SQL.STG_CPO.Cells[01,x-1])='' then
      continue;
   if (valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=5)  then
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
   if (valfloat(Frm_SQl.STG_CPO.Cells[02,x-1])=6)  then
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


if (pbanco=1) or (pbanco=2) then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if Frm_SQL.STG_COND.Cells[5,x-1]<>'N' then
         Continue;
//      if Frm_SQL.STG_COND.Cells[2,x-1]<>'!!' then
//        Continue;
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
if (pbanco=1) or (pbanco=2) then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if (Frm_SQL.STG_COND.Cells[1,x-1])='' then
         Continue;
      if (Frm_SQL.STG_COND.Cells[2,x-1])='!!' then
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
//         ShowMessage(Frm_sql.STG_COND.Cells[00,x-1]+ ' '+Frm_sql.STG_COND.Cells[01,x-1]);
         // lindomar
{         if (ce_qtdemp>0) and
            not (DM1.Qr_Tid.Locate('TINOME',Trim(Frm_sql.STG_COND.Cells[00,x-1]),[]))
            and (Trim(Frm_sql.STG_COND.Cells[02,x-1])='==') then
            begin
            minc:=' and ((';

            for y:=0 to high(ce_codempati) do
               begin
               minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[00,x-1]+'.'+Frm_sql.STG_COND.Cells[01,x-1]
                         +' '+'='+ce_codempati[y];
               minc:=') or (';
               end;
            if minc=') or (' then
               minstrucao:=minstrucao+')) ';
            end
         else
            begin
            minstrucao:=minstrucao+' and (';
            if Trim(Frm_sql.STG_COND.Cells[00,x-1])<>'' then
               minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
            minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1];
            if (Trim(Frm_sql.STG_COND.Cells[02,x-1])='==') then
               minstrucao:=minstrucao+' = '
            else
               minstrucao:=minstrucao+' '+Frm_sql.STG_COND.Cells[02,x-1]+' ';
            if Trim(frm_SQL.STG_COND.Cells[3,x-1])<>'' then
               minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[03,x-1]+'.';
            minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1]+')';
            mtaba:=Frm_sql.STG_COND.Cells[00,x-1];
            end;}
         end
      else
         begin    //
{         if (ce_qtdemp>0) and
            not (DM1.Qr_Tid.Locate('TINOME',Trim(Frm_sql.STG_COND.Cells[00,x-1]),[]))
            and (Trim(Frm_sql.STG_COND.Cells[02,x-1])='==') then
            begin
            minc:=' LEFT OUTER JOIN '+Frm_sql.STG_COND.Cells[00,x-1]+' '+Frm_sql.STG_COND.Cells[00,x-1]
                    +' ON ((';
            for y:=0 to  high(ce_codempati) do
               begin
               minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[00,x-1]+'.'+Frm_sql.STG_COND.Cells[01,x-1]
                         +' '+'='+ce_codempati[y];
               minc:=') or (';
               end;
            if minc=') or (' then
               minstrucao:=minstrucao+')) ';
            end
         else
            begin
            minstrucao:=minstrucao+' LEFT OUTER JOIN '+Frm_sql.STG_COND.Cells[00,x-1]+' '+Frm_sql.STG_COND.Cells[00,x-1]
                       +' ON ('+Frm_sql.STG_COND.Cells[00,x-1]+'.'+Frm_sql.STG_COND.Cells[01,x-1]
                       +' = ' //+Frm_sql.STG_COND.Cells[02,x-1]
                       +' '+Frm_sql.STG_COND.Cells[03,x-1]+'.'+Frm_sql.STG_COND.Cells[04,x-1]+')';
            end;
         mtab:=Frm_sql.STG_COND.Cells[00,x-1];}
         end;
      end;
   end;
minc:=' where ';
//if ((ce_qtdemp>1) and
//   not DM1.Qr_Tid.Locate('TINOME',mreltab,[])) then
//opcao nova para and or
if Trim(minc)='where' then
   minc:=' where (('
else if Trim(minc)='and' then
   minc:=' and ((';
mtaba:='';
for x:=1 to Frm_SQL.STG_COND.RowCount do
   begin
   if (Frm_SQL.STG_COND.Cells[2,x-1])<>'!!' then
      Continue;
   if trim(mtaba)='' then
      mtaba:=Frm_SQL.STG_COND.Cells[01,x-1];
   if mtaba<>Frm_SQL.STG_COND.Cells[01,x-1] then
      begin
      mtaba:=Frm_SQL.STG_COND.Cells[01,x-1];
      minc:=')) and ((';
      end;
   if Frm_sql.STG_COND.Cells[03,x-1]='VARNUM' then
      begin
      minstrucao:=minstrucao+minc;
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' = '
                 +' '+Frm_sql.STG_COND.Cells[04,x-1];
      minc:=') or (';
      end
   else
      begin
      minstrucao:=minstrucao+minc;
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' = '
                 +' '+chr(39)+Frm_sql.STG_COND.Cells[04,x-1]+chr(39);
      minc:=') or (';
      end
   end;
if minc=') or (' then
   begin
   minstrucao:=minstrucao+')) ';
   minc:=' and ';
   end
else if Trim(minc)='where ((' then
   minc:=' where '
else if Trim(minc)='and ((' then
   minc:=' and ';


// fim do and or



for x:=1 to Frm_SQL.STG_COND.RowCount do
   begin


   if (Frm_SQL.STG_COND.Cells[1,x-1])='' then
      Continue;
   if (Frm_SQL.STG_COND.Cells[2,x-1])='!!' then
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
      minc:=' and ';

      end
   else if Frm_sql.STG_COND.Cells[03,x-1]='VARNUM' then
      begin
      minstrucao:=minstrucao+minc;
      if trim(Frm_SQl.STG_COND.cells[00,x-1])<>'' then
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
      minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                 +' '+Frm_sql.STG_COND.Cells[02,x-1]
                 +' '+Frm_sql.STG_COND.Cells[04,x-1];
      minc:=' and ';
       end
   else
      begin
      if (trim(Frm_SQl.STG_COND.cells[00,x-1])<>'') and (Frm_sql.STG_COND.Cells[02,x-1]='==') then
         begin
         mEmpresaSep:=0;
         if not (DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[03,x-1],[])) and (trim(pInstAd)<>'') then
            begin
            mEmpresaSep:=mEmpresaSep+1;
            minstrucao:=minstrucao+' '+minc+' '+pInstAd;
//            minstrucao:=minstrucao+' '+Frm_sql.STG_COND.Cells[04,x-1]+'='+
//            minc:=' and ';

{            if not mFiltrouEmpresa then
               begin
               minc:=minc+'(( ';
               for y:=0 to high(ce_codempati) do
                  begin
                  minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[03,x-1]+'.';
                  minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1]+'='+ce_codempati[y];
                  minc:=') or (';
                  end;
               if copy(minc,length(minc)-3,2)='((' then
                  minc:=copy(minc,1,length(minc)-3)
               else
                  begin
                  minstrucao:=minstrucao+')) ';
                  minc:=' and ';
                  end;
               mFiltrouEmpresa:=true;
               end;}

            end;
         if not (DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[00,x-1],[])) then
            begin
            mEmpresaSep:=mEmpresaSep+1;
{            if not mFiltrouEmpresa then
               begin
               minc:=minc+'(( ';
               for y:=0 to high(ce_codempati) do
                  begin
                  minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[00,x-1]+'.';
                  minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]+'='+ce_codempati[y];
                  minc:=') or (';
                  end;
               if copy(minc,length(minc)-3,2)='((' then
                  minc:=copy(minc,1,length(minc)-3)
               else
                  begin
                  minstrucao:=minstrucao+')) ';
                  minc:=' and ';
                  end;
               mFiltrouEmpresa:=true;
               end;}
            end;
            if mEmpresaSep>1  then
               begin
               minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[04,x-1]
                         +'='
                         +Frm_sql.STG_COND.Cells[01,x-1];
               end;

{
//         if not (DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[00,x-1],[])) then
            begin

 //           if (ce_qtdemp>1) Then
 //              begin
               minc:=minc+'(( ';
               for y:=0 to high(ce_codempati) do
                  begin
                  minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[03,x-1]+'.';
                  minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1]+'='
                  +ce_codempati[y];
                  minc:=') or (';
                  end;
               if copy(minc,length(minc)-3,2)='((' then
                  minc:=copy(minc,1,length(minc)-3)
               else
                  begin
                  minstrucao:=minstrucao+')) ';
                  minc:=' and ';
                  end;
//               end;

}

//retirado 3 linhas 11/10/2005            minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[04,x-1]
//                      +'='
//                       +Frm_sql.STG_COND.Cells[01,x-1];
//            end;
         end
      else
         begin
         if trim(Frm_SQl.STG_COND.cells[00,x-1])<>'' then
            begin
//            showMessage(Frm_SQl.STG_COND.cells[00,x-1]+' '+Frm_sql.STG_COND.Cells[02,x-1]);
            //LINDOMAR

            minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[00,x-1]+'.';
            minc:='';
            end;
         minstrucao:=minstrucao+minc+Frm_sql.STG_COND.Cells[01,x-1]
                    +' '+Frm_sql.STG_COND.Cells[02,x-1];
         if trim(Frm_SQl.STG_COND.Cells[03,x-1])<>'' then
            minstrucao:=minstrucao+Frm_SQL.STG_COND.Cells[03,x-1]+'.';
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1];
         minc:=' and ';
         end;
      end;
//   minc:=' and ';
   end;
if pbanco=0 then
   begin
   for x:=1 to Frm_SQL.STG_COND.RowCount do
      begin
      if (Frm_SQL.STG_COND.Cells[0,x-1])='' then
         Continue;
      if (Frm_SQL.STG_COND.Cells[2,x-1])='!!' then
         Continue;

      if Frm_SQL.STG_COND.Cells[5,x-1]<>'N' then
         Continue;
      if Trim(Frm_sql.STG_COND.Cells[02,x-1])='==' then
         begin
//         ShowMessage(Frm_SQL.STG_COND.Cells[6,x-1]);
         if (DM1.Qr_Tid.Locate('TINOME',Frm_SQL.STG_COND.Cells[6,x-1],[])) Then
            Continue;
         end;
//      if Trim(Frm_SQL.STG_COND.Cells[6,x-1])<>'' then
//         begin
         minstrucao:=minstrucao+minc;
         if trim(Frm_SQl.STG_COND.Cells[00,x-1])<>'' then
            minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[00,x-1]+'.';
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[01,x-1]
                     +'(+) = '; //+Frm_sql.STG_COND.Cells[02,x-1]+' ';
         if trim(Frm_Sql.STG_COND.Cells[03,x-1])<>'' then
            minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[03,x-1]+'.';
         minstrucao:=minstrucao+Frm_sql.STG_COND.Cells[04,x-1];
         minc:=' and ';
//         end;
      end;
   end;
if trim(pInstAd)<>'' then
   minstrucao:=minstrucao+minc+pInstAd;
if DM2.Tb_TDVFE.Active then
   begin
   if not DM2.Tb_TDVFE.Eof then
      begin
      if trim(dm2.Tb_TDVFEFEFILTRO.AsString)<>'' then
         minstrucao:=minstrucao+minc+DM2.Tb_TDVFEFEFILTRO.Value;
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

function frpersql(pdorigem,pdtabela,pnome,pInstAd: String;ptipo:Integer):String;
var
x: Integer;
machou: Boolean;
minstrucao: String;
mvirg,mcond: String;
mgrupo: Boolean;
// mtam01, mtam02: Integer;
begin

DM2.Qr_TDVCA_S.Close;
DM2.Qr_TDVCA_S.Sql.Clear;
DM2.Qr_TDVCA_S.Sql.Add('Select * from CTDVCA where '
                      +iif(DM1.Qr_Tid.Locate('TINOME',pdorigem,[]),'',' TCCODEMP=0'+InttoStr(codemp)+' and ')
                      +' TCDOC='+chr(39)+pdtabela+chr(39)
                      +' and TCNOME='+chr(39)+pnome+chr(39));

DM2.Qr_TDVCA_S.Open;


fdetncol :=DM2.Qr_TDVCA_STCDETNCOL.AsInteger;
fdeticol :=DM2.Qr_TDVCA_STCDETICOL.AsInteger;
fdettpcol:=DM2.Qr_TDVCA_STCDETTPCOL.AsInteger;


fltdvjc(0,0,pdtabela,pnome,'','','',pdorigem);


DM2.Tb_TDVFE.Close;
DM2.Tb_TDVFE.SQL.Clear;
DM2.Tb_TDVFE.SQL.add('Select * from CTDVFE where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',pdorigem,[]),'',' FECODEMP=0'+InttoStr(codemp)+' and ')
                    +' FEDOC='+chr(39)+pdtabela+chr(39)
                    +' and FENOME='+chr(39)+pnome+chr(39));
DM2.Tb_TDVFE.Open;


if (ptipo<>2) and (ptipo<>4) then
   begin
   Frm_SQL.STG_CPO.RowCount:=1;
   Frm_SQL.STG_CPO.Rows[0].Clear;
   Frm_SQl.STG_CPO.Rows[1].Clear;

   end;
//  novas inclusoes: faz parte das instruções especiais


fltdvop(0,0,pdtabela,pnome,pdorigem,'99','','0');


While not DM2.Tb_Op.Eof do
   begin
   machou:=False;
   mcond:=' sum(';
   if Trim(DM2.Tb_OPTOOP0.Value)<>'' then
      mcond:=mcond+DM2.Tb_OPTOOP0.Value;
   if (Trim(DM2.Tb_OPTOOP1.Value)<>'') and (Trim(DM2.Tb_OPTOPER0.Value)<>'') then
      begin
      mcond:=mcond+Trim(DM2.Tb_OPTOPER0.Value)+Trim(DM2.Tb_OPTOOP1.Value);
      end;
   if (Trim(DM2.Tb_OPTOOP2.Value)<>'') and (Trim(DM2.Tb_OPTOPER1.Value)<>'') then
      begin
      mcond:=mcond+Trim(DM2.Tb_OPTOPER1.Value)+Trim(DM2.Tb_OPTOOP2.Value);
      end;
   if (Trim(DM2.Tb_OPTOOP3.Value)<>'') and (Trim(DM2.Tb_OPTOPER2.Value)<>'') then
      begin
      mcond:=mcond+Trim(DM2.Tb_OPTOPER2.Value)+Trim(DM2.Tb_OPTOOP3.Value);
      end;
   mcond:=mcond+')';
   for x:=0 to Frm_SQL.STG_CPO.RowCount do
      begin
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
         Continue;
      if Trim(Frm_SQL.STG_CPO.Cells[1,x])=mcond then
         begin
         machou:=True;
         break;
         end;
      end;
   if not machou then
      begin
      x:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.Cells[0,x-1]:='';
      Frm_SQL.STG_CPO.Cells[1,x-1]:=mcond;
      Frm_SQL.STG_CPO.Cells[2,x-1]:='6';
      Frm_SQL.STG_CPO.Cells[3,x-1]:=DM2.Tb_OPTOCOND01.Value;
      Frm_SQL.STG_CPO.RowCount:=x+1;
      Frm_SQl.STG_CPO.Rows[x].Clear;
      end;
   DM2.Tb_OP.Next;
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select decode(tctpsel,5,7,tctpsel) as selecao,tcampo as campo,TCAMPO_TAB as tabela, TTIPOC as tipo from CADTDV '
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME',pdorigem,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                  +' ttipo=0 and tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TCTPVAR<>1'
                  +' group by tctpsel,tcampo,TCAMPO_TAB,TTIPOC');

DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if length(trim(DM1.Query1.Fields[1].AsString))>8 then
      begin
      if (Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Operador.') or
         (Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Saldo Ini')  or
         (Copy(Trim(DM1.Query1.Fields[1].AsString),1,9)='Venda Per')  then
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
//      ShowMessage(DM1.Query1.Fields[2].AsString+' '+DM1.Query1.Fields[1].AsString);

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
            Frm_SQl.STG_CPO.Rows[x].Clear;
            x:=Frm_SQL.STG_CPO.RowCount;

            end;



         Frm_SQL.STG_CPO.Cells[0,x-1]:='';
         Frm_SQL.STG_CPO.Cells[1,x-1]:=iif(ptipo=8,chr(39)+'01'+chr(39),chr(39)+'02'+chr(39)); //+' as P1DATAP';
         Frm_SQL.STG_CPO.Cells[2,x-1]:='6';
         Frm_SQL.STG_CPO.Cells[3,x-1]:=DM1.Query1.Fields[3].AsString;
         Frm_SQL.STG_CPO.RowCount:=x+1;
         Frm_SQl.STG_CPO.Rows[x].Clear;

         end
      else
         begin
         Frm_SQL.STG_CPO.Cells[0,x-1]:=Trim(DM1.Query1.Fields[2].AsString);
         Frm_SQL.STG_CPO.Cells[1,x-1]:=Trim(DM1.Query1.Fields[1].AsString);
         Frm_SQL.STG_CPO.Cells[2,x-1]:=FormatFloat('0',DM1.Query1.Fields[0].AsInteger);
         Frm_SQL.STG_CPO.Cells[3,x-1]:=DM1.Query1.Fields[3].AsString;
         Frm_SQL.STG_CPO.RowCount:=x+1;
         Frm_SQl.STG_CPO.Rows[x].Clear;

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
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME',pdorigem,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                  +' tdoc='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TTIPO<>6'
                  +' and TCTPVAR<>1'
                  +' group by TCOND01,TCOND01_TAB');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 0 as selecao,tcond02 as campo,TCOND02_TAB as tabela, 0 as tipo from CADTDV '
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME',pdorigem,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                  +' TDOC='+chr(39)+pdtabela+chr(39)
                  +' and TNOME='+chr(39)+pnome+chr(39)
                  +' and TCONDT2<>'+chr(39)+'V'+chr(39)
                  +' and TCTPVAR<>1 '
                  +' and TTIPO<>6'
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
// inicio concatenados

DM2.Tb_JC.First;
While not DM2.Tb_JC.Eof  do
   begin
   if Trim(DM2.Tb_JCJCCAMPO01.Value)<>'' then
      begin
      if DM2.Tb_JCJCTCAMPO1.Value=0 then
         begin
         machou:=False;
         for x:=0 to Frm_SQL.STG_CPO.RowCount do
            begin
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
               Continue;
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM2.Tb_JCJCCAMPO01.Value) then
               begin
               machou:=True;
               break;
               end;
            end;
         if not machou then
            begin
            x:=Frm_SQL.STG_CPO.RowCount;
            Frm_SQL.STG_CPO.Cells[0,x-1]:='';
            Frm_SQL.STG_CPO.Cells[1,x-1]:=DM2.Tb_JCJCCAMPO01.Value;
            Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
            Frm_SQL.STG_CPO.Cells[3,x-1]:='0';
            Frm_SQL.STG_CPO.RowCount:=x+1;
            Frm_SQL.STG_CPO.Rows[x].Clear;
            Frm_SQL.STG_CPO.Rows[x+1].Clear;
            end;
         end;
      end;
   if Trim(DM2.Tb_JCJCCAMPO02.Value)<>'' then
      begin
      if DM2.Tb_JCJCTCAMPO2.Value=0 then
         begin
         machou:=False;
         for x:=0 to Frm_SQL.STG_CPO.RowCount do
            begin
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
               Continue;
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM2.Tb_JCJCCAMPO02.Value) then
               begin
               machou:=True;
               break;
               end;
            end;
         if not machou then
            begin
            x:=Frm_SQL.STG_CPO.RowCount;
            Frm_SQL.STG_CPO.Cells[0,x-1]:='';
            Frm_SQL.STG_CPO.Cells[1,x-1]:=DM2.Tb_JCJCCAMPO02.Value;
            Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
            Frm_SQL.STG_CPO.Cells[3,x-1]:='0';
            Frm_SQL.STG_CPO.RowCount:=x+1;
            Frm_SQL.STG_CPO.Rows[x].Clear;
            Frm_SQL.STG_CPO.Rows[x+1].Clear;
            end;
         end;
      end;
   if Trim(DM2.Tb_JCJCCAMPO03.Value)<>'' then
      begin
      if DM2.Tb_JCJCTCAMPO3.Value=0 then
         begin
         machou:=False;
         for x:=0 to Frm_SQL.STG_CPO.RowCount do
            begin
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
               Continue;
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM2.Tb_JCJCCAMPO03.Value) then
               begin
               machou:=True;
               break;
               end;
            end;
         if not machou then
            begin
            x:=Frm_SQL.STG_CPO.RowCount;
            Frm_SQL.STG_CPO.Cells[0,x-1]:='';
            Frm_SQL.STG_CPO.Cells[1,x-1]:=DM2.Tb_JCJCCAMPO03.Value;
            Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
            Frm_SQL.STG_CPO.Cells[3,x-1]:='0';
            Frm_SQL.STG_CPO.RowCount:=x+1;
            Frm_SQL.STG_CPO.Rows[x].Clear;
            Frm_SQL.STG_CPO.Rows[x+1].Clear;
            end;
         end;
      end;
   if Trim(DM2.Tb_JCJCCAMPO04.Value)<>'' then
      begin
      if DM2.Tb_JCJCTCAMPO4.Value=0 then
         begin
         machou:=False;
         for x:=0 to Frm_SQL.STG_CPO.RowCount do
            begin
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])='' then
               Continue;
            if Trim(Frm_SQL.STG_CPO.Cells[1,x])=Trim(DM2.Tb_JCJCCAMPO04.Value) then
               begin
               machou:=True;
               break;
               end;
            end;
         if not machou then
            begin
            x:=Frm_SQL.STG_CPO.RowCount;
            Frm_SQL.STG_CPO.Cells[0,x-1]:='';
            Frm_SQL.STG_CPO.Cells[1,x-1]:=DM2.Tb_JCJCCAMPO04.Value;
            Frm_SQL.STG_CPO.Cells[2,x-1]:='0';
            Frm_SQL.STG_CPO.Cells[3,x-1]:='0';
            Frm_SQL.STG_CPO.RowCount:=x+1;
            Frm_SQL.STG_CPO.Rows[x].Clear;
            Frm_SQL.STG_CPO.Rows[x+1].Clear;
            end;
         end;
      end;
   DM2.Tb_JC.Next;
   end;
DM2.Tb_JC.First;
// fim concatenados



DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select TOOP0 as campo,TODOC as tabela from CTDVOP '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME',pdorigem,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP0<>'+chr(39)+'V'+chr(39)
                  +' and TOTDET < 97 '
                  +' and ((TODESOP0<>''IE000001'') or (TODESOP0 is null))'
                  +' and ((TODESOP1<>''IE000001'') or (TODESOP1 is null))'
                  +' and ((TODESOP2<>''IE000001'') or (TODESOP2 is null))'
                  +' and ((TODESOP3<>''IE000001'') or (TODESOP3 is null))'
                  +' and not TODESOP1 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP0,TODOC');
DM1.Query1.SQL.Add(' union ');
// acho que nao precisa acima ldc 25/10/2005
DM1.Query1.SQl.add('select TOOP1 as campo,TODOC as tabela from CTDVOP '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME',pdorigem,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP1<>'+chr(39)+'V'+chr(39)
                  +' and TOTDET < 97 '
                  +' and ((TODESOP0<>''IE000001'') or (TODESOP0 is null))'
                  +' and ((TODESOP1<>''IE000001'') or (TODESOP1 is null))'
                  +' and ((TODESOP2<>''IE000001'') or (TODESOP2 is null))'
                  +' and ((TODESOP3<>''IE000001'') or (TODESOP3 is null))'
                  +' and not TODESOP1 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP1,TODOC');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select TOOP2 as campo,TODOC as tabela from CTDVOP '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME',pdorigem,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTDET<97 '
                  +' and ((TODESOP0<>''IE000001'') or (TODESOP0 is null))'
                  +' and ((TODESOP1<>''IE000001'') or (TODESOP1 is null))'
                  +' and ((TODESOP2<>''IE000001'') or (TODESOP2 is null))'
                  +' and ((TODESOP3<>''IE000001'') or (TODESOP3 is null))'
                  +' and TOTOP2<>'+chr(39)+'V'+chr(39)
                  +' and not TODESOP2 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP2,TODOC');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select TOOP3 as campo,TODOC as tabela from CTDVOP '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME',PDORIGEM,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pdtabela+chr(39)
                  +' and TONOME='+chr(39)+pnome+chr(39)
                  +' and TOTOP3<>'+chr(39)+'V'+chr(39)
                  +' and TOTDET<97 '
                  +' and ((TODESOP0<>''IE000001'') or (TODESOP0 is null))'
                  +' and ((TODESOP1<>''IE000001'') or (TODESOP1 is null))'
                  +' and ((TODESOP2<>''IE000001'') or (TODESOP2 is null))'
                  +' and ((TODESOP3<>''IE000001'') or (TODESOP3 is null))'
                  +' and not TODESOP3 like '+chr(39)+'Tot. Mes -%'+chr(39)
                  +' group by TOOP3,TODOC');
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if length(Trim(DM1.Query1.Fields[0].AsString))>8 then
      begin
      if (Copy(Trim(DM1.Query1.Fields[0].AsString),1,9)='Operador.') or
         (Copy(Trim(DM1.Query1.Fields[0].AsString),1,9)='Saldo Ini')  or
         (Copy(Trim(DM1.Query1.Fields[0].AsString),1,9)='Venda Per')  then
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
fltdvft(0,0,pdtabela,pnome,'',pdorigem);


While not DM1.Tb_TDVFT.Eof do
   begin
// LINDOMARagrora
//   if (DM1.Tb_TDVFTTFTIPO.Value=0) or (DM1.Tb_TDVFTTFTIPO.Value=2) or (DM1.Tb_TDVFTTFTIPO.Value=3) then //LINDOMAR
   if (DM1.Tb_TDVFTTFTIPO.Value=0) or (DM1.Tb_TDVFTTFTIPO.Value=2) then //LINDOMAR

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
      if Trim(Frm_SQL.STG_CPO.Cells[3,x])=Trim(DM1.Tb_TDVFTTFCAMPO1.Value) then
         begin
         machou:=True;
         break;
         end;

//      minstrucao:=minstrucao+Frm_SQL.STG_CPO.Cells[01,x-1]+' as '+Frm_SQL.STG_CPO.Cells[03,x-1];
{
      if length(Trim(Frm_SQL.STG_CPO.Cells[1,x]))>length(DM1.Tb_TDVFTTFCAMPO1.Value) then
         begin
         mcinst:=Trim(Frm_SQL.STG_CPO.Cells[1,x]);
         mtam01:=length(mcinst);
         mtam02:=length(DM1.Tb_TDVFTTFCAMPO1.Value);
         ShowMessage(copy(mcinst,(mtam01-mtam02+1),mtam01)+' Atual: '+DM1.Tb_TDVFTTFCAMPO1.Value);

         if copy(mcinst,(mtam01-mtam02+1),mtam01)=DM1.Tb_TDVFTTFCAMPO1.Value then
            begin
            machou:=True;
            break;
            end;
         end;
}
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
      if DM1.Tb_TDVFTTFCOND1.Value='D' then
         mordemp:=mordemp+' desc ';
      mvirg:=',';
      end
   else
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Rows[x+1].Clear;
      // LINDOMAR
      Frm_SQL.STG_COND.Cells[00,x-1]:=DM1.Tb_TDVFTTFTAB01.Value;
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:=DM1.Tb_TDVFTTFCOND1.Value;
      if DM1.Tb_TDVFTTFTCAMPO2.Value='V' then
         begin
         if DM1.Tb_TDVFTTFTCAMPO1.Value='N' then
            Frm_SQl.STG_COND.Cells[03,x-1]:='VARNUM'
         else
            Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
         if DM1.Tb_TDVFTTFTCAMPO1.Value='D' then
            Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(DM1.Tb_TDVFTTFCAMPO2.Value))
         else
            Frm_SQl.STG_COND.Cells[04,x-1]:=DM1.Tb_TDVFTTFCAMPO2.AsString;
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         end
      else
         begin
         // lindomar
         Frm_SQL.STG_COND.Cells[03,x-1]:=DM1.Tb_TDVFTTFTAB02.Value;
         Frm_SQL.STG_COND.Cells[04,x-1]:=DM1.Tb_TDVFTTFCAMPO2.Value;
         if ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB02.Value)) and (DM2.Qr_TDVCA_STCTAB02N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB03.Value)) and (DM2.Qr_TDVCA_STCTAB03N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB04.Value)) and (DM2.Qr_TDVCA_STCTAB04N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB05.Value)) and (DM2.Qr_TDVCA_STCTAB05N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB06.Value)) and (DM2.Qr_TDVCA_STCTAB06N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB07.Value)) and (DM2.Qr_TDVCA_STCTAB07N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB08.Value)) and (DM2.Qr_TDVCA_STCTAB08N.Value=0)) or
            ((Trim(DM1.Tb_TDVFTTFTAB01.Value)=Trim(DM2.Qr_TDVCA_STCTAB09.Value)) and (DM2.Qr_TDVCA_STCTAB09N.Value=0)) then
            Frm_SQL.STG_COND.Cells[05,x-1]:='N'
         else
            Frm_SQL.STG_COND.Cells[05,x-1]:='S';
         end;
//AQUI LINDOMAR      Frm_SQL.STG_COND.Cells[06,x-1]:=DM1.Tb_TDVFTTFTAB01.Value;

      end;
   DM1.Tb_TDVFT.Next;
   end;
Frm_SQL.STG_TAB.rows[0].Clear;
Frm_Sql.STG_TAB.rows[1].Clear;
x:=1;
Frm_SQL.STG_TAB.RowCount:=x;
Frm_SQl.STG_TAB.Rows[x].Clear;
if Trim(DM2.Qr_TDVCA_STCDOC.Value)='NF' then
   begin
   Frm_SQL.STG_TAB.Cells[0,x-1]:='CADDAR';
   end
else
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

result:=Fmontasql(0,pInstAd);
end;



function fmontadiv(pdorigem,pdtabela,pnome,pmesref,panoref: String;ptipo:Integer):Boolean;
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


fltdvft(0,0,pdtabela,pnome,'6',pdorigem);


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
      Frm_SQL.STG_CPO.Cells[2,y-1]:='5';
      Frm_SQL.STG_CPO.Cells[3,y-1]:=DM1.Tb_TDVFTTFCAMPO1.Value+'_'+FormatFloat('00',x);

      y:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.RowCount:=Y+1;

      Frm_SQL.STG_CPO.Rows[y].Clear;
      Frm_SQl.STG_CPO.Cells[0,y-1]:='';
      Frm_SQl.STG_CPO.Cells[1,y-1]:=FormatFloat('00',mes[x]);
      Frm_SQL.STG_CPO.Cells[2,y-1]:='6';
      Frm_SQL.STG_CPO.Cells[3,y-1]:='MES_'+FormatFloat('00',x);

      y:=Frm_SQL.STG_CPO.RowCount;
      Frm_SQL.STG_CPO.RowCount:=Y+1;
      Frm_SQL.STG_CPO.Rows[y].Clear;
      Frm_SQl.STG_CPO.Cells[0,y-1]:='';
      Frm_SQl.STG_CPO.Cells[1,y-1]:=FormatFloat('0000',ano[x]);
      Frm_SQL.STG_CPO.Cells[2,y-1]:='6';
      Frm_SQL.STG_CPO.Cells[3,y-1]:='ANO_'+FormatFloat('00',x);
      end;
   DM1.Tb_TDVFT.Next;
   end;
result:=True;
end;
function fVerificaVendas(pTab,pDoc,pNome,pDt1,pDt2: String): Real;
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP0='+chr(39)+'Venda Periodo'+chr(39)
                  +' group by TOOP0');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',ptab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP1='+chr(39)+'Venda Periodo'+chr(39)
                  +' group by TOOP1');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP2='+chr(39)+'Venda Periodo'+chr(39)
                  +' group by TOOP2');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP3='+chr(39)+'Venda Periodo'+chr(39)
                  +' group by TOOP3');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CADTDV '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TCODEMP=0'+intToStr(codemp)+' and ')
                  +' TDOC='+chr(39)+pDoc+chr(39)
                  +' and TNOME='+chr(39)+pNome+chr(39)
                  +' and TCAMPO='+chr(39)+'Venda Periodo'+chr(39)
                  +' group by TCAMPO');
try
   DM1.Query1.Open;
except
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   end;
if DM1.Query1.eof then
   pVdaPer:=0
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
   pVdaPer:=fVendaPeriodo(0,la_Empresas,trim(pDt1),trim(pDt2));
   end;
// mes anterior
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP0='+chr(39)+'Venda Periodo Mes/Ant'+chr(39)
                  +' group by TOOP0');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',ptab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP1='+chr(39)+'Venda Periodo Mes/Ant'+chr(39)
                  +' group by TOOP1');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP2='+chr(39)+'Venda Periodo Mes/Ant'+chr(39)
                  +' group by TOOP2');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP3='+chr(39)+'Venda Periodo Mes/Ant'+chr(39)
                  +' group by TOOP3');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CADTDV '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TCODEMP=0'+intToStr(codemp)+' and ')
                  +' TDOC='+chr(39)+pDoc+chr(39)
                  +' and TNOME='+chr(39)+pNome+chr(39)
                  +' and TCAMPO='+chr(39)+'Venda Periodo Mes/Ant'+chr(39)
                  +' group by TCAMPO');
try
   DM1.Query1.Open;
except
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   end;
if DM1.Query1.eof then
   pVdaPerAnt:=0
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
   pVdaPerAnt:=fVendaPeriodo(10,la_Empresas,trim(pDt1),trim(pDt2));
   end;

// termino do mes anterior



DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP0='+chr(39)+'Venda Mes Ant/Ate Dt.Final'+chr(39)
                  +' group by TOOP0');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',ptab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP1='+chr(39)+'Venda Mes Ant/Ate Dt.Final'+chr(39)
                  +' group by TOOP1');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP2='+chr(39)+'Venda Mes Ant/Ate Dt.Final'+chr(39)
                  +' group by TOOP2');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP3='+chr(39)+'Venda Mes Ant/Ate Dt.Final'+chr(39)
                  +' group by TOOP3');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CADTDV '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TCODEMP=0'+intToStr(codemp)+' and ')
                  +' TDOC='+chr(39)+pDoc+chr(39)
                  +' and TNOME='+chr(39)+pNome+chr(39)
                  +' and TCAMPO='+chr(39)+'Venda Mes Ant/Ate Dt.Final'+chr(39)
                  +' group by TCAMPO');
try
   DM1.Query1.Open;
except
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   end;
if DM1.Query1.eof then
   pVdaMesAntAtedia:=0
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
   pVdaMesAntAtedia:=fVendaPeriodo(11,la_Empresas,trim(pDt1),trim(pDt2));
   end;
// mes anterior
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP0='+chr(39)+'Venda Mes/Ate Dt.Final'+chr(39)
                  +' group by TOOP0');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',ptab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP1='+chr(39)+'Venda Mes/Ate Dt.Final'+chr(39)
                  +' group by TOOP1');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP2='+chr(39)+'Venda Mes/Ate Dt.Final'+chr(39)
                  +' group by TOOP2');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CTDVOP '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TOCODEMP=0'+intToStr(codemp)+' and ')
                  +' TODOC='+chr(39)+pDoc+chr(39)
                  +' and TONOME='+chr(39)+pNome+chr(39)
                  +' and TOOP3='+chr(39)+'Venda Mes/Ate Dt.Final'+chr(39)
                  +' group by TOOP3');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQl.add('select 1 as DOC  from CADTDV '
                  +' where '+iif(DM1.Qr_tid.Locate('TINOME',pTab,[]),'',' TCODEMP=0'+intToStr(codemp)+' and ')
                  +' TDOC='+chr(39)+pDoc+chr(39)
                  +' and TNOME='+chr(39)+pNome+chr(39)
                  +' and TCAMPO='+chr(39)+'Venda Mes/Ate Dt.Final'+chr(39)
                  +' group by TCAMPO');
try
   DM1.Query1.Open;
except
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   end;
if DM1.Query1.eof then
   pVdaMesAtedia:=0
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
   pVdaMesAtedia:=fVendaPeriodo(1,la_Empresas,trim(pDt1),trim(pDt2));
   end;


// termino anterior



//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************
Result:=pVdaPer;
end;
procedure TFrm_SQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SQL.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_SQL.FormKeyDown(Sender: TObject; var Key: Word;
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
