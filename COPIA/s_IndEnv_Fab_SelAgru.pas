unit s_IndEnv_Fab_SelAgru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CheckLst, DB,
  DBTables;

type
  TFrm_IndEnv_Fab_SelAgru = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    bbPesq: TBitBtn;
    BBSAIR: TBitBtn;
    ordem_producao: TCheckListBox;
    Query1: TQuery;
    bbCancelar: TBitBtn;
    procedure BBSAIRClick(Sender: TObject);
    procedure bbPesqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mcancelou: boolean;
  end;

var
  Frm_IndEnv_Fab_SelAgru: TFrm_IndEnv_Fab_SelAgru;

implementation

uses lerarq, S_DM1, Func;

{$R *.dfm}

procedure TFrm_IndEnv_Fab_SelAgru.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndEnv_Fab_SelAgru.bbPesqClick(Sender: TObject);
var
query_op: tquery;
begin
query_op:=TQuery.Create(nil);
query_op.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_op.sql.clear;
query_op.sql.Add('Select * From CADOP01 where OP1_FABENV=0'
                +' and OP1_LOTSEQ=0'
                +' and OP1_CODEMP='+Inttostr(codemp));
if edt_datini.Date>pdatanula then
  query_op.SQL.Add(' and OP1_DATA>='+chr(39)+FormatDateTime(fdt, edt_datini.Date)+chr(39));
if edt_datfin.Date>pdatanula then
  query_op.SQL.Add(' and OP1_DATA<='+chr(39)+FormatDateTime(fdt, edt_datfin.Date)+chr(39));
query_op.SQL.add(' order by OP1_CODIGO ');

try
   query_op.Open;
except
   query_op.SQL.SaveToFile('c:\sql.txt');
   end;
ordem_producao.Items.clear;
While not query_op.Eof do
   begin
   ordem_producao.Items.add(formatfloat('000000', query_op.fieldbyname('OP1_CODIGO').AsFloat)+' - '+formatdatetime(fdt2, query_op.fieldbyname('OP1_DATA').asdatetime)+' '+ insere2(query_op.fieldbyname('OP1_NOME').AsString,' ',60));
   query_op.Next;
   end;
ordem_producao.Items.add('todos ');
ordem_producao:=Valida_CheckList(ordem_producao);

end;

procedure TFrm_IndEnv_Fab_SelAgru.FormCreate(Sender: TObject);
begin
mcancelou:=false;
edt_datini.Date:=date;
edt_datfin.Date:=date;
bbPesqClick(self);
end;

procedure TFrm_IndEnv_Fab_SelAgru.bbCancelarClick(Sender: TObject);
begin
    mcancelou:=true;
    close;

end;

end.
