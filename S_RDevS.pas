unit S_RDevS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids,db,dbtables,S_DM1,func, Buttons;

type
  TFrm_RDevS = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    STG1: TStringGrid;
    Qr_Sel: TQuery;
    Qr_SelP1CHAVE: TFloatField;
    Qr_SelP1ORDEM: TFloatField;
    Qr_SelP1DATAP: TDateTimeField;
    Qr_SelP1CODCLI: TFloatField;
    Qr_SelP1TOTALL: TFloatField;
    Qr_SelCRAZAO: TStringField;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    SAIR: TBitBtn;
    Qr_SelP1TIPO: TFloatField;
    Qr_SelP1LOTSEQ: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RDevS: TFrm_RDevS;

  mqtd: Integer;
implementation

uses S_RDev;

{$R *.dfm}

procedure TFrm_RDevS.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[0,0]:='Sel';
STG1.Cells[1,0]:='Chave';
STG1.Cells[2,0]:='Ordem';
STG1.Cells[3,0]:='Data';
STG1.Cells[4,0]:='Cliente';
STG1.Cells[5,0]:='Valor';
STG1.Cells[6,0]:='Tipo Ped';
STG1.Cells[7,0]:='Lote Seq';
Qr_Sel.Close;
Qr_Sel.SQL.Clear;
Qr_Sel.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATAP,P1CODCLI,P1TOTALL,P1TIPO,CRAZAO '
              +'       from CADP01,CADCLI where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
              +' P1STATUS<8'
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntTostr(codemp)+' ')
              +' and CCODCLI=P1CODCLI ');
if Trim(Frm_RDev.CODCLI.Text)<>'' then
   Qr_Sel.SQL.Add(' and P1CODCLI=0'+Trim(Frm_RDev.CODCLI.Text));
if Trim(Frm_RDev.MDT1.Text)<>'/  /' then
   Qr_Sel.SQL.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt,StrtoDate(Frm_RDev.MDT1.Text))+chr(39));
if Trim(Frm_RDev.MDT2.Text)<>'/  /' then
   Qr_Sel.SQL.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrtoDate(Frm_RDev.MDT2.Text))+chr(39));
if Frm_RDev.RG_TIPO.ItemIndex<>2 then
   Qr_Sel.SQL.Add(' and P1SITAC=0'+IntToStr(Frm_RDev.RG_TIPO.itemIndex));
Qr_Sel.SQL.Add(' order by P1DATAP,P1CHAVE,P1ORDEM');
Qr_Sel.Open;
mqtd:=2;
While not Qr_Sel.Eof do
   begin
   STG1.RowCount:=mqtd;
   STG1.Cells[0,mqtd-1]:=' ';
   STG1.Cells[1,mqtd-1]:=Formatfloat('000000',Qr_SelP1CHAVE.Value);
   STG1.Cells[2,mqtd-1]:=Formatfloat('00',Qr_SelP1ORDEM.Value);
   STG1.Cells[3,mqtd-1]:=FormatDateTime(fdt2,Qr_SelP1DATAP.Value);
   STG1.Cells[4,mqtd-1]:=Qr_SelCRAZAO.Value;
   STG1.Cells[5,mqtd-1]:=insere(FormatFloat(mcasas, Qr_SelP1TOTALL.Value),' ',12);
   STG1.Cells[6,mqtd-1]:=tab_tped[Qr_SelP1TIPO.AsInteger];
   STG1.Cells[7,mqtd-1]:=Qr_SelP1LOTSEQ.AsString;
   mqtd:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.RowCount:=mqtd;
   Qr_Sel.Next;
   end;
end;

procedure TFrm_RDevS.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RDevS.SELECIONARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   STG1.Cells[0,x]:='X';
   end;
end;

procedure TFrm_RDevS.DESMARCARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   STG1.Cells[0,x]:=' ';
   end;
end;

procedure TFrm_RDevS.STG1DblClick(Sender: TObject);
var
mlin: Integer;
begin
mlin:=STG1.Row;
if mlin<1 then
   exit;
if STG1.Cells[0,mlin]='X' then
   STG1.Cells[0,mlin]:=' '
else
   STG1.Cells[0,mlin]:='X';
end;

procedure TFrm_RDevS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
