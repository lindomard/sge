unit S_MVcto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, ComCtrls, db, dbtables, S_DM1, func,
  Grids, Buttons, S_LocJD, S_Impres;

type
  TFrm_MVcto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    LOTE: TEdit;
    Label2: TLabel;
    DATA: TMaskEdit;
    DESC: TEdit;
    Label3: TLabel;
    Label25: TLabel;
    QTDDOC: TEdit;
    Label26: TLabel;
    VCTO: TEdit;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBCALCULAR: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_JD01: TQuery;
    Qr_JD02: TQuery;
    Qr_JD02J2CODEMP: TFloatField;
    Qr_JD02J2TIPO: TFloatField;
    Qr_JD02J2LOTE: TFloatField;
    Qr_JD02J2SEQ: TFloatField;
    Qr_JD02J2DESC: TStringField;
    Qr_JD02J2VALOR: TFloatField;
    Qr_JD02J2DATA: TDateTimeField;
    Panel5: TPanel;
    STG1: TStringGrid;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    BitBtn6: TBitBtn;
    MDESCR: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MVALOR: TEdit;
    Label6: TLabel;
    MDATA: TMaskEdit;
    Qr_JD01J1CODEMP: TFloatField;
    Qr_JD01J1TIPO: TFloatField;
    Qr_JD01J1LOTE: TFloatField;
    Qr_JD01J1DESC: TStringField;
    Qr_JD01J1DATAR: TDateTimeField;
    Qr_JD01J1FATOR: TFloatField;
    BBIMPRIMIR: TBitBtn;
    Label7: TLabel;
    TOTDOC: TEdit;
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure MVALORExit(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure DESCExit(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBCALCULARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     function fcalcular(ptipo:Integer):Boolean;
     function fexcluir(ptipo: Integer):Boolean;

    { Private declarations }
  public
    { Public declarations }
    form_impres_mvcto: TFrm_Impres;
  end;

var
  Frm_MVcto: TFrm_MVcto;
  mop,mqtd,mchave,moper: Integer;
  mordemp: String;
  mqtdd,mtotal: Real;
implementation

{$R *.dfm}


procedure TFrm_MVcto.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=True;
BBCALCULAR.Enabled :=True;
panel3.Enabled     :=True;
panel5.Enabled     :=True;
panel4.Enabled     :=True;
DATA.Text:=FormatDatetime(fdt2,pdatasis);
DATA.SetFocus;
moper:=0;

Qr_JD01.Close;
Qr_JD01.Sql.Clear;
Qr_JD01.sQl.add('Select * from CADJD01 where J1CODEMP is null');
Qr_JD01.Open;
mchave:=0;

end;

procedure TFrm_MVcto.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin

if Frm_LocJD=nil then
      Application.CreateForm(TFrm_LocJD, Frm_LocJD)
   else
      begin
      Frm_LocJD.Free;
      Frm_LocJD:=nil;
      Application.CreateForm(TFrm_LocJD, Frm_LocJD);
      end;


   Frm_LocJd.ShowModal;
   mchave:=mlote;
   Frm_LocJd.Free;
   Frm_LocJD:=nil;

   end;
if mchave>0 then
   begin
   mordemp:='';
   Qr_JD01.Close;
   Qr_JD01.SQL.Clear;
   Qr_JD01.SQL.Add('Select * from CADJD01 where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADJD',[]) then
      begin
      Qr_JD01.SQL.Add(' J1CODEMP=0'+IntTostr(codemp)+' and ');
      mordemp:=' J1CODEMP,';
      end;

   Qr_JD01.SQL.add(' J1LOTE=0'+Inttostr(mchave)
                  +' and J1TIPO=0'+IntTostr(mtipo)
                  +' order by '+mordemp+' J1LOTE');
   Qr_Jd01.Open;
   if Qr_Jd01.Eof then
      begin
      ShowMessage('Chave não encontrado');
      exit;
      end;
   LOTE.Text:=Qr_JD01J1LOTE.AsString;
   DATA.Text:=FormatDateTime(fdt2,Qr_JD01J1DATAR.Value);
   DESC.Text:=Qr_JD01J1DESC.Value;

   Qr_JD02.Close;
   Qr_JD02.SQL.Clear;
   Qr_JD02.SQL.Add('Select * from CADJD02 where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADJD',[]) then
      begin
      Qr_JD02.SQL.Add(' J2CODEMP=0'+IntTostr(codemp)+' and ');
      mordemp:=' J2CODEMP,';
      end;
   Qr_JD02.SQL.add(' J2LOTE=0'+Inttostr(mchave)
                  +' and J2TIPO=0'+IntTostr(mtipo)
                  +' order by '+mordemp+' J2LOTE,J2SEQ');
   Qr_Jd02.Open;
   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Jd02.Eof do
      begin
      STG1.RowCount:=mqtd+1;
      STG1.Cells[00,mqtd]:=Qr_JD02J2DESC.Value;
      STG1.Cells[01,mqtd]:=FormatFloat('0.00',Qr_JD02J2VALOR.Value);
      STG1.Cells[02,mqtd]:=FormatDatetime(fdt2,Qr_JD02J2DATA.Value);
      mqtdd:=Qr_JD02J2DATA.Value-Qr_JD01J1DATAR.Value;
      STG1.Cells[03,mqtd]:=FloatToStr(mqtdd);
      STG1.Cells[04,mqtd]:=FormatFloat('0.00',Qr_JD02J2VALOR.Value*mqtdd);
      mqtd:=mqtd+1;
      STG1.Rows[mqtd].Clear;
      Qr_Jd02.Next;
      end;
   fcalcular(0);
   BBINCLUIR.Enabled  :=True;
   BBLOCALIZAR.Enabled:=True;
   BBALTERAR.Enabled  :=True;
   BBEXCLUIR.Enabled  :=True;
   BBIMPRIMIR.Enabled :=True;
   BBGRAVAR.Enabled   :=False;
   BBCALCULAR.Enabled :=true;
   end;
end;
function TFrm_MVcto.Fcalcular(ptipo:Integer):Boolean;
var
x: Integer;
mpeso,mtot,mtqtdoc,mtotdoc: Real;

begin
mtqtdoc:=0;
mtotdoc:=0;
mpeso:=0;
mtot:=0;

for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   mtqtdoc:=mtqtdoc+1;
   mtotdoc:=mtotdoc+StrToFloat('0'+ValReal(STG1.Cells[1,x]));
   mqtdd:=StrToDate(STG1.Cells[02,x])-StrToDate(DATA.Text);
   mtotal:=mqtdd*StrToFloat('0'+ValReal(STG1.Cells[01,x]));
   mpeso:=mpeso+mqtdd;
   mtot :=mtot+mtotal;
   STG1.cells[3,x]:=FormatFloat('0.00',mqtdd);
   STG1.cells[4,x]:=FormatFloat('0.00',mtotal);
   end;
mtotal:=mtot/mtotdoc;
mtotal:=arredonda(mtotal,0);
VCTO.Text:=FormatDateTime(Fdt2, StrtoDate(DATA.Text)+mtotal);
QTDDOC.Text:=FloatToStr(mtqtdoc);
TOTDOC.Text:=FormatFloat('0.00',mtotdoc);
result:=True;
end;


procedure TFrm_MVcto.ITEM_GRAVARClick(Sender: TObject);
begin
if Trim(MDESCR.Text)='' then
   begin
   ShowMessage('Favor digitar uma descrição valida');
   MDESCR.SetFocus;
   exit;
   end;
if Trim(MVALOR.Text)='' then
   begin
   ShowMessage('Favor digitar um valor valida');
   MVALOR.SetFocus;
   exit;
   end;

if Trim(MDATA.Text)='/  /' then
   begin
   ShowMessage('Favor digitar uma data valida');
   MDATA.SetFocus;
   exit;
   end;
if mop=1 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd+1].Clear;
   STG1.Rows[mqtd].Clear;
   end;
STG1.Cells[00,mqtd-1]:=MDESCR.Text;
STG1.Cells[01,mqtd-1]:=MVALOR.Text;
STG1.Cells[02,mqtd-1]:=MDATA.Text;
fcalcular(0);
// MDESCR.Text :='';
MVALOR.Text  :='';
// MDATA.Text   :=FormatDateTime(fdt2, pdatasis);
if mqtd>15 then
   STG1.TopRow:=mqtd-11;

mop:=0;
MDESCR.SetFocus;

end;

procedure TFrm_MVcto.MVALORExit(Sender: TObject);
begin
if Strtofloat('0'+Trim(mvalor.Text))<=0  then
   begin
   ShowMessage('Favor digitar um valor valido');
   end;
MVALOR.Text:=FormatFloat('0.00',StrtoFloat('0'+Trim(MVALOR.Text)));
end;

procedure TFrm_MVcto.MDATAExit(Sender: TObject);
begin
Try
   MDATA.Text:=FormatDateTime(fdt2,StrtoDate(MDATA.Text));
except
   ShowMessage('Data Invalida');
   MDATA.SetFocus;
   exit;
   end;

end;

procedure TFrm_MVcto.DATAExit(Sender: TObject);
begin
Try
   DATA.Text:=FormatDateTime(fdt2,StrtoDate(DATA.Text));
   if (STG1.RowCount>2) or (Trim(STG1.Cells[00,01])<>'') then
      fcalcular(0);
except
   ShowMessage('Data Invalida');
   DATA.SetFocus;
   end;   

end;

procedure TFrm_MVcto.DESCExit(Sender: TObject);
begin
if Trim(DESC.Text)='' then
   Begin
   ShowMessage('Favor digitar uma descrição valida');
   DESC.SetFocus;
   end;
end;

procedure TFrm_MVcto.BBGRAVARClick(Sender: TObject);
var
x,mqtdi: Integer;
begin
if Trim(STG1.Cells[00,01])='' then
   begin
   showMessage('Nada a ser gravado');
   exit;
   end;
if mchave=0 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Select max(J1LOTE) from CADJD01 where J1TIPO=0'+IntTostr(mtipo));
   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADJD01 where J1CODEMP=0'+Qr_JD01J1CODEMP.AsString
                     +' and J1TIPO=0'+Qr_JD01J1TIPO.AsString
                     +' and J1LOTE=0'+Qr_JD01J1LOTE.AsString);
   DM1.query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADJD02 where J2CODEMP=0'+Qr_JD01J1CODEMP.AsString
                     +' and J2TIPO=0'+Qr_JD01J1TIPO.AsString
                     +' and J2LOTE=0'+Qr_JD01J1LOTE.AsString);
   DM1.query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
DM1.Query1.SQL.Add('Insert into CADJD01 ('
                  +' J1CODEMP, '
                  +' J1TIPO, '
                  +' J1LOTE, '
                  +' J1DATAR, '
                  +' J1FATOR, '
                  +' J1DESC) values ('
                  +IntTostr(codemp)+','
                  +IntTostr(mtipo)+ ','
                  +IntToStr(mchave)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(DATA.Text))+chr(39)+','
                  +'0'+','
                  +':DESC)');
DM1.Query1.Params[0].AsString:=DESC.Text;
DM1.Query1.ExecSQL;
DM1.SG_ASSOC.Commit;
mqtdi:=0;
for x:=1 to STG1.RowCount do
   begin
   if (STG1.Cells[00,x])='' then
      Continue;
   mqtdi:=mqtdi+1;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
   DM1.Query1.SQL.Add('Insert into CADJD02 ('
                     +' J2CODEMP, '
                     +' J2TIPO, '
                     +' J2LOTE, '
                     +' J2SEQ, '
                     +' J2VALOR, '
                     +' J2DATA, '
                     +' J2DESC) values ('
                     +IntTostr(codemp)+','
                     +IntTostr(mtipo)+ ','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +mudavp('0'+Trim(STG1.Cells[01,x]))+','
                     +chr(39)+FormatDateTime(fdt, StrtoDate(STG1.Cells[02,x]))+chr(39)+','
                     +':DESC)');
   DM1.Query1.Params[0].AsString:=STG1.Cells[00,x];
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;

LOTE.Text:=Inttostr(mchave);
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
BBCALCULAR.Enabled :=False;
panel3.Enabled     :=False;
panel5.Enabled     :=False;
panel4.Enabled     :=False;

moper:=3;
BBLOCALIZAR.Click;
moper:=0;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
end;

procedure TFrm_MVcto.ITEM_EDITARClick(Sender: TObject);
begin
mop:=1;
MDESCR.Text :=STG1.Cells[00,STG1.Row];
MVALOR.Text :=STG1.Cells[01,STG1.Row];
MDATA.Text  :=STG1.Cells[02,STG1.Row];
MDESCR.Setfocus;

end;

procedure TFrm_MVcto.ITEM_CANCELARClick(Sender: TObject);
begin
MDESCR.Text:='';
MVALOR.Text:='';
MDATA.Text :='';
mop:=0;
end;

procedure TFrm_MVcto.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;
if (STG1.Cells[0,1]='') or (STG1.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      STG1.Cells[02,x]:=STG1.Cells[02,x+1];
      STG1.Cells[03,x]:=STG1.Cells[03,x+1];
      STG1.Cells[04,x]:=STG1.Cells[04,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
end;

procedure TFrm_MVcto.BBALTERARClick(Sender: TObject);
begin
moper:=1;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBCALCULAR.Enabled :=True;
panel3.Enabled     :=True;
panel5.Enabled     :=True;
panel4.Enabled     :=True;
DATA.Text:=FormatDatetime(fdt2,pdatasis);
DATA.SetFocus;
end;

procedure TFrm_MVcto.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este lote?',0,['1','2'],2)<>mrYes then
   exit;
if not Qr_Jd01.Eof then
   fexcluir(1);
BBLIMPAR.Click;
ShowMessage('Lote Excluido');

end;

function TFrm_MVcto.fexcluir(ptipo: Integer):Boolean;
begin
Qr_JD01.First;
While not Qr_JD01.Eof do
   begin

   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADJD02 where J2CODEMP=0'+Qr_JD01J1CODEMP.AsString
                     +' and J2LOTE=0'+Qr_JD01J1LOTE.AsString);
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADJD01 where J1CODEMP=0'+Qr_JD01J1CODEMP.AsString
                     +' and J1LOTE=0'+Qr_JD01J1LOTE.AsString);
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   Qr_JD01.Next;
   end;
result:=True;
end;



procedure TFrm_MVcto.BBLIMPARClick(Sender: TObject);
begin
LOTE.Text    :='';
DATA.Text    :=FormatDateTime(fdt2, pdatasis);
DESC.Text    :='';
stg1.RowCount:=2;
STG1.Rows[1].Clear;
MDESCR.Text  :='';
MVALOR.Text  :='';
MDATA.Text   :='/  /';
QTDDOC.Text  :='';
TOTDOC.Text  :='';
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
BBCALCULAR.Enabled :=False;
panel3.Enabled     :=False;
panel5.Enabled     :=False;
panel4.Enabled     :=False;

end;

procedure TFrm_MVcto.BBCALCULARClick(Sender: TObject);
begin
fcalcular(0);
end;

procedure TFrm_MVcto.FormCreate(Sender: TObject);
begin
mtipo:=1;
STG1.RowCount:=2;
STG1.Cells[00,00]:='Descriçao';
STG1.Cells[01,00]:='Valor';
STG1.Cells[02,00]:='Data';
STG1.Cells[03,00]:='dias';
STG1.Cells[04,00]:='peso';

end;

procedure TFrm_MVcto.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MVcto.BBIMPRIMIRClick(Sender: TObject);
var
mtotj, mtotdoc: Real;
begin
mtotj:=0;
mtotdoc:=0;
Qr_Jd02.First;
testeform := TFrm_MVcto(FindGlobalComponent('form_impres_mvcto'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_mvcto);
   end;

form_impres_mvcto.mlin:=0;
form_impres_mvcto.mpag:=0;
form_impres_mvcto.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Jd02.Eof do
   begin
   if form_impres_mvcto.mlin=0 then
      begin
      form_impres_mvcto.mpag:=form_impres_mvcto.mpag+1;
      form_impres_mvcto.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_mvcto.Rdprint1.Impf(01,65,'Pagina.:    '+FormatFloat('0000',form_impres_mvcto.mpag),mnormal);
      form_impres_mvcto.Rdprint1.ImpF(02,01,'Calculo Medio de Vencimentos.',mnormal);
      form_impres_mvcto.Rdprint1.ImpF(02,65,'Data: '+FormatDateTime(fdt2, pdatasis),mnormal);
      form_impres_mvcto.RDprint1.ImpF(03,01,Centra('Data Referencia: '+FormatDateTime(fdt2,Qr_JD01J1DATAR.Value)+' '+Trim(Qr_JD01J1DESC.Value)+'. Lote.: '+Qr_JD01J1LOTE.AsString,' ',80),mneg);
      form_impres_mvcto.Rdprint1.Impf(04,01,'+------------------------------+--------------+----------+------+',mnormal);
      form_impres_mvcto.RDprint1.Impf(05,01,'|  Descricao                   | Vlr.Documento|  D a t a |Q.dias|',mnormal);
      form_impres_mvcto.mlin:=5;
      end;
   form_impres_mvcto.mlin:=form_impres_mvcto.mlin+1;
   mqtdd:=Qr_JD02J2DATA.Value-Qr_JD01J1DATAR.Value;
   mtotdoc:=mtotdoc+Qr_JD02J2VALOR.Value;
   form_impres_mvcto.Rdprint1.ImpF(form_impres_mvcto.mlin,01,'|'+insere2(Qr_JD02J2DESC.Value,' ',30)+'|'
                           +insere(FormatFloat('#,##0.00',Qr_JD02J2VALOR.Value),' ',14)+'|'
                           +FormatDateTime(fdt2, Qr_JD02J2DATA.Value)+'|'
                           +insere(FloatTostr(mqtdd),' ',6)+'|',mnormal);
   Qr_JD02.Next;
   if Qr_Jd02.Eof then
      begin
      form_impres_mvcto.mlin:=form_impres_mvcto.mlin+1;
      form_impres_mvcto.RDprint1.ImpF(form_impres_mvcto.mlin,01,'| - Totais.....................|'
                              +insere(FormatFloat('#,##0.00', mtotdoc),' ',14)
                              +'|          |      |',mnormal);
      form_impres_mvcto.mlin:=form_impres_mvcto.mlin+1;
      form_impres_mvcto.Rdprint1.Impf(form_impres_mvcto.mlin,01,'+------------------------------+--------------+----------+------+',mnormal);
      form_impres_mvcto.mlin:=form_impres_mvcto.mlin+1;
      form_impres_mvcto.RDprint1.ImpF(form_impres_mvcto.mlin,01,'- Vencimento Medio dos documentos: '+VCTO.Text,mneg);
      if form_impres_mvcto.RDprint1.Setup then form_impres_mvcto.RDprint1.Fechar;
      form_impres_mvcto.free;
      form_impres_mvcto:=nil;      
      end
   else if form_impres_mvcto.mlin>60 then
      begin
      form_impres_mvcto.mlin:=form_impres_mvcto.mlin+1;
      form_impres_mvcto.Rdprint1.Impf(form_impres_mvcto.mlin,01,'+Continua...-------------------+--------------+----------+------+',mnormal);
      form_impres_mvcto.mlin:=0;
      end;
   end;
end;

procedure TFrm_MVcto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
