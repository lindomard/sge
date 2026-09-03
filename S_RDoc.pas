unit S_RDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, ComCtrls, db, dbtables, S_DM1, func,
  Grids, Buttons, S_LocRD, S_Impres,RDPrint;

type
  TFrm_RDoc = class(TForm)
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
    TOTDOC: TEdit;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBCALCULAR: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_RD01: TQuery;
    Qr_RD02: TQuery;
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
    BBIMPRIMIR: TBitBtn;
    Qr_RD01R1CODEMP: TFloatField;
    Qr_RD01R1LOTE: TFloatField;
    Qr_RD01R1DESC: TStringField;
    Qr_RD01R1DATA: TDateTimeField;
    Qr_RD02R2CODEMP: TFloatField;
    Qr_RD02R2LOTE: TFloatField;
    Qr_RD02R2SEQ: TFloatField;
    Qr_RD02R2DESC: TStringField;
    Qr_RD02R2VALOR: TFloatField;
    Qr_Res02: TQuery;
    Qr_Res02R2VALOR: TFloatField;
    Qr_Res02R2DESC: TStringField;
    CB_SUBTIT: TCheckBox;
    Qr_RD02R2DESC02: TStringField;
    DESC02: TEdit;
    Label6: TLabel;
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure MVALORExit(Sender: TObject);
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
    procedure DESCKeyPress(Sender: TObject; var Key: Char);
    procedure DESCExit(Sender: TObject);
    procedure MDESCRExit(Sender: TObject);
    procedure MDESCRKeyPress(Sender: TObject; var Key: Char);
    procedure DESC02Exit(Sender: TObject);
    procedure DESC02KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     function fcalcular(ptipo:Integer):Boolean;
     function fexcluir(ptipo: Integer):Boolean;
     function fimpsubtit(pcodemp,plote: Integer; pcoddoc: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
    form_impres_rdoc: tFrm_Impres;
  end;

var
  Frm_RDoc: TFrm_RDoc;
  mop,mqtd,mchave,moper: Integer;
  mordemp: String;
  mqtdd,mjuros: Real;
  mlin, mpag: Integer;

implementation

uses func_excecoes;

{$R *.dfm}


procedure TFrm_RDoc.BBINCLUIRClick(Sender: TObject);
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

Qr_RD01.Close;
Qr_RD01.Sql.Clear;
Qr_RD01.sQl.add('Select * from CADRD01 where R1CODEMP is null');
Qr_RD01.Open;
mchave:=0;

end;

procedure TFrm_RDoc.BBLOCALIZARClick(Sender: TObject);
var
minc: String;
begin
if moper<>3 then
   begin
   if frm_locRD=nil then
      Application.CreateForm(TFrm_LocRD, Frm_LocRD)
   else
      begin
      Frm_LocRD.Free;
      Frm_LocRD:=nil;
      Application.CreateForm(TFrm_LocRD, Frm_LocRD);
      end;
   Frm_LocRD.ShowModal;
   mchave:=mlote;
   Frm_LocRD.Free;
   Frm_LocRD:=nil;
   end;
if mchave>0 then
   begin
   mordemp:='';
   minc:=' where ';
   Qr_RD01.Close;
   Qr_RD01.SQL.Clear;
   Qr_RD01.SQL.Add('Select * from CADRD01 ');
   if not DM1.Qr_Tid.Locate('TINOME','CADRD',[]) then
      begin
      Qr_RD01.SQL.Add(minc+' R1CODEMP=0'+IntTostr(codemp));
      minc:=' and ';
      mordemp:=' R1CODEMP,';
      end;
   Qr_RD01.SQL.add(minc+' R1LOTE=0'+Inttostr(mchave)
                  +' order by '+mordemp+' R1LOTE');
   Qr_Rd01.Open;
   if Qr_Rd01.Eof then
      begin
      MessageDlg('Chave não encontrado!',mtWarning,[mbOk],0);
      exit;
      end;
   LOTE.Text:=Qr_RD01R1LOTE.AsString;
   DATA.Text:=FormatDateTime(fdt2,Qr_RD01R1DATA.Value);
   DESC.Text:=Qr_RD01R1DESC.Value;
   minc:=' where ';
   Qr_RD02.Close;
   Qr_RD02.SQL.Clear;
   Qr_RD02.SQL.Add('Select * from CADRD02 ');
   if not DM1.Qr_Tid.Locate('TINOME','CADRD',[]) then
      begin
      Qr_RD02.SQL.Add(minc+' R2CODEMP=0'+IntTostr(codemp));
      minc:=' and ';
      mordemp:=' R2CODEMP,';
      end;
   Qr_RD02.SQL.add(minc+' R2LOTE=0'+Inttostr(mchave)
                  +' order by '+mordemp+' R2LOTE,R2SEQ');
   Qr_RD02.Open;
   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Rd02.Eof do
      begin
      STG1.Cells[00,mqtd]:=Qr_RD02R2DESC.Value;
      STG1.Cells[01,mqtd]:=Qr_RD02R2DESC02.Value;
      STG1.Cells[02,mqtd]:=FormatFloat(mcasqtd,Qr_RD02R2VALOR.Value);
      mqtd:=mqtd+1;
      STG1.RowCount:=mqtd+1;
      STG1.Rows[mqtd].Clear;
      Qr_RD02.Next;
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
function TFrm_RDoc.Fcalcular(ptipo:Integer):Boolean;
var
x: Integer;
mtqtdoc,mtotdoc: Real;
begin
mtqtdoc:=0;
mtotdoc:=0;

for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   mtqtdoc:=mtqtdoc+1;
   mtotdoc:=mtotdoc+ValFloat(STG1.Cells[2,x]);
   end;
QTDDOC.Text:=FloatToStr(mtqtdoc);
TOTDOC.Text:=FormatFloat(mcasqtd,mtotdoc);
result:=True;
end;


procedure TFrm_RDoc.ITEM_GRAVARClick(Sender: TObject);
begin
if Trim(MDESCR.Text)='' then
   begin
   MessageDlg('Favor digitar uma descrição valida!',mtWarning,[mbOk],0);
   MDESCR.SetFocus;
   exit;
   end;
if Trim(MVALOR.Text)='' then
   begin
   MessageDlg('Favor digitar um valor valida!',mtWarning,[mbOk],0);
   MVALOR.SetFocus;
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
STG1.Cells[01,mqtd-1]:=DESC02.Text;
STG1.Cells[02,mqtd-1]:=MVALOR.Text;
fcalcular(0);
// MDESCR.Text :='';
MVALOR.Text  :='';
// MDATA.Text   :=FormatDateTime(fdt2, pdatasis);
if mqtd>15 then
   STG1.TopRow:=mqtd-11;

mop:=0;
MDESCR.SetFocus;

end;

procedure TFrm_RDoc.MVALORExit(Sender: TObject);
begin
if ValFloat(mvalor.Text)<=0  then
   begin
   MessageDlg('Favor digitar uma quantidade/valor válido!',mtWarning,[mbOk],0);
   end;
MVALOR.Text:=FormatFloat(mcasqtd,valfloat(MVALOR.Text));
end;

procedure TFrm_RDoc.BBGRAVARClick(Sender: TObject);
var
x,mqtdi: Integer;
begin
if Trim(STG1.Cells[00,01])='' then
   begin
   MessageDlg('Nada a ser gravado!',mtWarning,[mbOk],0);
   exit;
   end;
if mchave=0 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Select max(R1LOTE) from CADRD01');
   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADRD01 where R1CODEMP=0'+Qr_RD01R1CODEMP.AsString
                     +' and R1LOTE=0'+Qr_RD01R1LOTE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_RDoc','CADRD01');
      end;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Sql.add('Delete from CADRD02 where R2CODEMP=0'+Qr_RD01R1CODEMP.AsString
                     +' and R2LOTE=0'+Qr_RD01R1LOTE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,308,'Frm_Ped','CADRD02');
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
DM1.Query1.SQL.Add('Insert into CADRD01 ('
                  +' R1CODEMP, '
                  +' R1LOTE, '
                  +' R1DATA, '
                  +' R1DESC) values ('
                  +IntTostr(codemp)+','
                  +IntToStr(mchave)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(DATA.Text))+chr(39)+','
                  +':DESC)');
DM1.Query1.Params[0].AsString:=DESC.Text;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,329,'Frm_Rdoc','CADRD02');
   end;
mqtdi:=0;
for x:=1 to STG1.RowCount do
   begin
   if (STG1.Cells[00,x])='' then
      Continue;
   mqtdi:=mqtdi+1;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DESC02',ptinput);
   DM1.Query1.SQL.Add('Insert into CADRD02 ('
                     +' R2CODEMP, '
                     +' R2LOTE, '
                     +' R2SEQ, '
                     +' R2VALOR, '
                     +' R2DESC,'
                     +' R2DESC02) values ('
                     +IntTostr(codemp)+','
                     +IntToStr(mchave)+','
                     +IntTostr(mqtdi)+','
                     +mudavp(STG1.Cells[02,x])+','
                     +':DESC,'
                     +':DESC02)');
   DM1.Query1.ParamByName('DESC').AsString:=STG1.Cells[00,x];
   DM1.Query1.ParamByName('DESC02').AsString:=STG1.Cells[01,x];
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,361,'Frm_RDoc','CADRD02');
      end;

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
end;

procedure TFrm_RDoc.ITEM_EDITARClick(Sender: TObject);
begin
mop:=1;
MDESCR.Text :=STG1.Cells[00,STG1.Row];
DESC02.Text :=STG1.Cells[01,STG1.Row];
MVALOR.Text :=STG1.Cells[02,STG1.Row];
MDESCR.Setfocus;

end;

procedure TFrm_RDoc.ITEM_CANCELARClick(Sender: TObject);
begin
MDESCR.Text:='';
DESC02.Text:='';
MVALOR.Text:='';
mop:=0;
end;

procedure TFrm_RDoc.BitBtn6Click(Sender: TObject);
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
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
end;

procedure TFrm_RDoc.BBALTERARClick(Sender: TObject);
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

procedure TFrm_RDoc.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este lote?',0,['1','2'],2)<>mrYes then
   exit;
if not Qr_Rd01.Eof then
   fexcluir(1);
BBLIMPAR.Click;
ShowMessage('Lote Excluido');

end;

function TFrm_RDoc.fexcluir(ptipo: Integer):Boolean;
begin
Qr_RD01.First;
While not Qr_RD01.Eof do
   begin

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADRD02 where R2CODEMP=0'+Qr_RD01R1CODEMP.AsString
                     +' and R2LOTE=0'+Qr_RD01R1LOTE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,466,'Frm_RDoc','CADRD02');
      end;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Delete From CADRD01 where R1CODEMP=0'+Qr_RD01R1CODEMP.AsString
                     +' and R1LOTE=0'+Qr_RD01R1LOTE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,477,'Frm_RDoc','CADRD01');
      end;
   Qr_RD01.Next;
   end;
end;


procedure TFrm_RDoc.BBLIMPARClick(Sender: TObject);
begin
LOTE.Text    :='';
DATA.Text    :=FormatDateTime(fdt2, pdatasis);
DESC.Text    :='';
stg1.RowCount:=2;
STG1.Rows[1].Clear;
MDESCR.Text  :='';
DESC02.Text  :='';
MVALOR.Text  :='';
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

procedure TFrm_RDoc.BBCALCULARClick(Sender: TObject);
begin
fcalcular(0);
end;

procedure TFrm_RDoc.FormCreate(Sender: TObject);
begin
mtipo:=0;
STG1.RowCount:=2;
STG1.Cells[00,00]:='Título';
STG1.Cells[01,00]:='Sub-Título';
STG1.Cells[02,00]:='Quantidade/Valor';

end;

procedure TFrm_RDoc.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RDoc.BBIMPRIMIRClick(Sender: TObject);
var
mtotj, mtotdoc: Real;
begin
mlin:=0;
mpag:=0;
mtotj:=0;
mtotdoc:=0;
Qr_Res02.Close;
Qr_Res02.SQL.Clear;
Qr_Res02.SQL.add('Select SUM(R2VALOR) AS R2VALOR,R2DESC from CADRD02 '
                +' where R2CODEMP=0'+Qr_RD02R2CODEMP.AsString
                +' and R2LOTE=0'+Qr_RD02R2LOTE.AsString
                +' Group by R2DESC ');
Qr_Res02.Open;
testeform := TFrm_RDoc(FindGlobalComponent('form_impres_rdoc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_rdoc);
form_impres_rdoc.fimpresajustaimp(3,80,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Res02.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_rdoc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_rdoc.Rdprint1.Impf(01,65,'Pagina.:    '+FormatFloat('0000',mpag),mnormal);
      form_impres_rdoc.Rdprint1.ImpF(02,01,'Resumo de Documentos.',mnormal);
      form_impres_rdoc.Rdprint1.ImpF(02,65,'Data: '+FormatDateTime(fdt2, pdatasis),mnormal);
      form_impres_rdoc.Rdprint1.ImpF(03,65,'Data: '+FormatDateTime(fdt2, pdatasis),mnormal);
      form_impres_rdoc.RDprint1.ImpF(03,01,Centra(Trim(DESC.Text),' ',60),mneg);
      form_impres_rdoc.RDprint1.ImpF(04,01,insere('-','-',80),mnormal);

//      form_impres_rdoc.RDprint1.ImpF(04,12,'+--------------------------------+----------------+',mnormal);
//      form_impres_rdoc.RDprint1.ImpF(05,12,'| Descricao                      | Quantid/Valor  |',mnormal);
      form_impres_rdoc.RDprint1.ImpF(05,01,'Descricao                                                       Quantidade/Valor',mnormal);





      mlin:=5;
      end;
   mlin:=mlin+1;
   mtotdoc:=mtotdoc+Qr_Res02R2VALOR.Value;
   mtotj  :=mtotj+mjuros;
   if CB_SUBTIT.Checked then
      form_impres_rdoc.Rdprint1.ImpF(mlin,01,insere2(Qr_Res02R2DESC.Value,' ',40)
                           +insere2(' ',' ',26)
                           +insere(FormatFloat(mcasqtd,Qr_Res02R2VALOR.Value),' ',14)
                           ,mneg)
   else
      form_impres_rdoc.Rdprint1.ImpF(mlin,01,insere2(Qr_Res02R2DESC.Value,' ',40)
                           +insere2(' ',' ',26)
                           +insere(FormatFloat(mcasqtd,Qr_Res02R2VALOR.Value),' ',14)
                           ,mnormal);

   if CB_SUBTIT.Checked then
      fimpsubtit(Qr_RD02R2CODEMP.AsInteger,Qr_RD02R2LOTE.AsInteger,Qr_Res02R2DESC.Value);

   Qr_Res02.Next;
   if Qr_Res02.Eof then
      begin
      mlin:=mlin+1;
      if CB_SUBTIT.Checked then
         form_impres_rdoc.RDprint1.ImpF(mlin,01,insere2('- Totais','.',66)
                              +insere(FormatFloat(mcasqtd, mtotdoc),' ',14)
                              ,mneg)
      else
         form_impres_rdoc.RDprint1.ImpF(mlin,01,insere2('- Totais','.',66)
                              +insere(FormatFloat(mcasqtd, mtotdoc),' ',14)
                              ,mnormal);

      mlin:=mlin+1;
      form_impres_rdoc.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      if form_impres_rdoc.RDprint1.Setup then form_impres_rdoc.RDprint1.Fechar;
      form_impres_rdoc.Free;
      form_impres_rdoc:=nil;
      end
   else if mlin>60 then
      begin
      mlin:=mlin+1;
      form_impres_rdoc.RDprint1.ImpF(mlin,12,insere2('Continua','.',80),mnormal);
      form_impres_rdoc.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
end;

procedure TFrm_RDoc.DESCKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,DESC.Text,key) then
   key:=#0;
end;

procedure TFrm_RDoc.DESCExit(Sender: TObject);
begin
if not fTestaTam(0,40,DESC.Text,'') then
   DESC.Text:=copy(DESC.Text,1,40);

end;

procedure TFrm_RDoc.MDESCRExit(Sender: TObject);
begin
if not fTestaTam(1,30,MDESCR.Text,'') then
   MDESCR.Text:=copy(MDESCR.Text,1,30);

end;

procedure TFrm_RDoc.MDESCRKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(0,30,MDESCR.Text,key) then
   key:=#0;

end;

procedure TFrm_RDoc.DESC02Exit(Sender: TObject);
begin
if not fTestaTam(0,10,DESC02.Text,'') then
   DESC02.Text:=copy(DESC02.Text,1,10);

end;

procedure TFrm_RDoc.DESC02KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,10,DESC02.Text,key) then
   key:=#0;

end;

function TFrm_RDoc.fimpsubtit(pcodemp,plote: Integer; pcoddoc: String): Boolean;
var
mlinha1,mlinha2,mlinha3: String;
mdoc: String;
mnum: String;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'DESC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LOTE',ptInput);
DM1.Query2.Sql.add('Select R2DESC02,sum(R2VALOR) as R2VALOR from CADRD02 '
                  +' where R2CODEMP=:CODEMP '
                  +' and   R2LOTE  =:LOTE '
                  +' and   R2DESC  =:DESC '
                  +' Group by R2DESC02');
DM1.Query2.ParamByName('DESC').AsString :=pcoddoc;
DM1.Query2.ParamByName('CODEMP').AsFloat:=pcodemp;
DM1.Query2.ParamByName('LOTE').AsFloat  :=plote;
DM1.Query2.Open;
mlinha1:='';
mlinha2:='';
mlinha3:='';

While not DM1.Query2.Eof do
   begin
   mlinha1:=mlinha1+Centra(DM1.Query2.FieldByName('R2DESC02').AsString,' ',10)+'   ';
   mlinha2:=mlinha2+insere2('-','-',10)+'   ';
   mlinha3:=mlinha3+Centra(DM1.Query2.FieldByName('R2VALOR').AsString,' ',10)+'   ';
   if length(mlinha1)>120 then
      begin
      mlin:=mlin+1;
      form_impres_rdoc.RDprint1.impf(mlin,01,mlinha1,mreduz);
      mlin:=mlin+1;
      form_impres_rdoc.RDprint1.impf(mlin,01,mlinha2,mreduz);
      mlin:=mlin+1;
      form_impres_rdoc.RDprint1.impf(mlin,01,mlinha3,mreduz);
      end;
   DM1.Query2.Next;
   end;

if length(mlinha1)>0 then
   begin
   mlin:=mlin+1;
   form_impres_rdoc.RDprint1.impf(mlin,01,mlinha1,mreduz);
   mlin:=mlin+1;
   form_impres_rdoc.RDprint1.impf(mlin,01,mlinha2,mreduz);
   mlin:=mlin+1;
   form_impres_rdoc.RDprint1.impf(mlin,01,mlinha3,mreduz);
   end;
result:=True;
end;
procedure TFrm_RDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
