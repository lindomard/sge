unit S_DiasMeses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, Grids,func,S_Impres,s_dm1;

type
  TFrm_DiasMeses = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    panel_dig: TPanel;
    bbIniciar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    MCOMENT: TEdit;
    MQTDD: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MQTDMES: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label6: TLabel;
    MTOTD: TEdit;
    Label7: TLabel;
    MTOTMES: TEdit;
    STG1: TStringGrid;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbIniciarClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fdiasmesescalc(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_Impres_DiasMeses: TFrm_Impres;
  end;

var
  Frm_DiasMeses: TFrm_DiasMeses;
  mqtd,mop: Integer;
implementation

{$R *.dfm}

procedure TFrm_DiasMeses.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DiasMeses.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   MQTDD.Text:=FormatFloat('0', StrtoDate(MDT2.Text)-StrToDate(MDT1.Text));
   MQTDMES.Text:=FormatFloat('0', Truncar(ValFloat(MQTDD.Text)/30,0));
   end;
end;

procedure TFrm_DiasMeses.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   MQTDD.Text:=FormatFloat('0', StrtoDate(MDT2.Text)-StrToDate(MDT1.Text));
   MQTDMES.Text:=FormatFloat('0', Truncar(ValFloat(MQTDD.Text)/30,0));
   end;

end;

procedure TFrm_DiasMeses.ITEM_GRAVARClick(Sender: TObject);
begin
if Trim(MDT1.Text)='/  /'  then
   begin
   MessageDlg('Primeira data Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
if Trim(MDT2.Text)='/  /'  then
   begin
   MessageDlg('Segunda data Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
   end;
MQTDD.Text:=FormatFloat('0', StrtoDate(MDT2.Text)-StrToDate(MDT1.Text));
MQTDMES.Text:=FormatFloat('0', Truncar(ValFloat(MQTDD.Text)/30,0));

if mop=1 then
   begin
   mqtd:=STG1.Row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   end;
STG1.Cells[00,mqtd-1]:=MDT1.Text;
STG1.Cells[01,mqtd-1]:=MDT2.Text;
STG1.Cells[02,mqtd-1]:=MCOMENT.Text;
STG1.Cells[03,mqtd-1]:=MQTDD.Text;
STG1.Cells[04,mqtd-1]:=MQTDMES.Text;

MDT1.Text   :='/  /';
MDT2.Text   :='/  /';
MCOMENT.Text:='';
MQTDD.Text  :='';
MQTDMES.Text:='';

if mqtd>12 then
   STG1.TopRow:=mqtd-11;

mop:=0;
fdiasmesescalc(0);
MDT1.SetFocus;
if bbImprimir.Enabled=false then
   bbImprimir.Enabled:=true;


end;
function TFrm_DiasMeses.fdiasmesescalc(ptipo: Integer): Boolean;
var
mqtddias: Integer;
x: Integer;
begin
mqtddias:=0;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      Continue;
   mqtddias:=mqtddias+ValInt(STG1.Cells[3,x]);
   end;
MTOTD.Text:=IntToStr(mqtddias);
MTOTMES.Text:=FormatFloat('0', Truncar(mqtddias/30,0));
result:=True;
end;
procedure TFrm_DiasMeses.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[0,0]:='Prim. data';
STG1.Cells[1,0]:='Seg. data';
STG1.Cells[2,0]:='Comentários';
STG1.Cells[3,0]:='Qtd.Dias';
STG1.Cells[4,0]:='Qtd.Meses';
STG1.Rows[1].Clear;

end;

procedure TFrm_DiasMeses.bbIniciarClick(Sender: TObject);
begin
if STG1.RowCount>2  then
   begin
   if fmensagem('Existe dados digitados!, posso exlui-los?',0,['1','2'],2)<>mrYes then
      exit;
   end;
STG1.RowCount:=2;
STG1.Cells[0,0]:='Prim. data';
STG1.Cells[1,0]:='Seg. data';
STG1.Cells[2,0]:='Comentários';
STG1.Cells[3,0]:='Qtd.Dias';
STG1.Cells[4,0]:='Qtd.Mêses';
STG1.Rows[1].Clear;
panel_dig.Enabled:=true;
MDT1.SetFocus;

end;

procedure TFrm_DiasMeses.ITEM_EDITARClick(Sender: TObject);
begin
mop:=1;
MDT1.Text    :=STG1.Cells[00,STG1.Row];
MDT2.Text    :=STG1.Cells[01,STG1.Row];
MQTDD.Text   :=STG1.Cells[02,STG1.Row];
MQTDMES.Text :=STG1.Cells[03,STG1.Row];

MDT1.SetFocus;

end;

procedure TFrm_DiasMeses.ITEM_CANCELARClick(Sender: TObject);
begin
MDT1.Text   :='/  /';
MDT2.Text   :='/  /';
MQTDD.Text  :='';
MQTDMES.Text:='';
mop:=0;

end;

procedure TFrm_DiasMeses.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;

if (STG1.Cells[00,1]='') or (STG1.Cells[0,mqtd]='') then
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

procedure TFrm_DiasMeses.bbImprimirClick(Sender: TObject);
var
mlin, mpag: Integer;
x: Integer;
begin
testeform := TFrm_DiasMeses(FindGlobalComponent('form_Impres_DiasMeses'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_DiasMeses);
form_Impres_DiasMeses.fimpresajustaimp(3,80,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpag:=0;
mlin:=0;
for x:=1 to STG1.RowCount do
   begin
   if (STG1.Cells[0,x])='' then
      Continue;
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_Impres_DiasMeses.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mnormal);
      form_Impres_DiasMeses.RDprint1.ImpF(01,60,'Pagina:   '+FormatFloat('0000',mpag),mnormal);
      form_Impres_DiasMeses.RDprint1.impf(02,01,'Dias/meses entre datas.',mnormal);
      form_Impres_DiasMeses.Rdprint1.ImpF(02,60,'Data: '+FormatDatetime(fdt2, Date),mnormal);
      form_Impres_DiasMeses.RDprint1.impf(03,01,insere2('=','=',80),mnormal);
      mlin:=4;
      form_Impres_DiasMeses.Rdprint1.ImpF(mlin,01,'+------------+------------+----------------------------------+---------+-------+',mnormal);
      mlin:=mlin+1;
      form_Impres_DiasMeses.Rdprint1.ImpF(mlin,01,'| Prim. data | Seg. data  | Comentarios                      | Qtd.dias|Qtd.Mes|',mnormal);
      mlin:=mlin+1;
      form_Impres_DiasMeses.Rdprint1.ImpF(mlin,01,'+------------+------------+----------------------------------+---------+-------+',mnormal);
      end;
   mlin:=mlin+1;
   form_Impres_DiasMeses.RDprint1.ImpF(mlin,01,'| '+STG1.Cells[0,x]
                           +' | '+STG1.Cells[1,x]+' | '
                           +insere2(STG1.Cells[2,x],' ',32)+' | '
                           +insere(STG1.cells[3,x],' ',7)+' |'
                           +insere(STG1.cells[4,x],' ',7)+' |',mnormal);
   if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_DiasMeses.Rdprint1.ImpF(mlin,01,'+Continua...-+------------+----------------------------------+---------+-------+',mnormal);
      form_Impres_DiasMeses.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if mpag=0 then
   form_Impres_DiasMeses.RDprint1.ImpF(01,01,'Nada ha ser Impresso!',mneg)
else
   begin
   mlin:=mlin+1;
   form_Impres_DiasMeses.RDprint1.ImpF(mlin,01,'| Totais.... | .......... | ................................ | '
                           +insere(MTOTD.Text,' ',7)+' |'
                           +insere(MTOTMES.Text,' ',7)+' |',mnormal);
      mlin:=mlin+1;
      form_Impres_DiasMeses.Rdprint1.ImpF(mlin,01,'+Fim.--------+------------+----------------------------------+---------+-------+',mnormal);

   end;                        
if form_Impres_DiasMeses.RDprint1.Setup then form_Impres_DiasMeses.RDprint1.Fechar;
form_Impres_DiasMeses.free;
form_Impres_DiasMeses:=nil;
end;

procedure TFrm_DiasMeses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
