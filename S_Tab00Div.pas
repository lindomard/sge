unit S_Tab00Div;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, Grids, ExtCtrls, StdCtrls, Buttons;

type
  TFrm_Tab00Div = class(TForm)
    Panel1: TPanel;
    STG_DIV: TStringGrid;
    Label1: TLabel;
    CB_DIV: TComboBox;
    GRAVAR: TBitBtn;
    EDITAR: TBitBtn;
    EXCLUIR: TBitBtn;
    SAIR: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure CB_DIVExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EDITARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab00Div: TFrm_Tab00Div;
  mop: Integer;
  mqtd: Integer;
implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_Tab00Div.SAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab00Div.CB_DIVExit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_DIV.Focused) then
   exit;

CB_DIV.Text:=CB_DIV.Items.Strings[CB_DIV.itemindex];
if trim(CB_DIV.Text)='' then
   begin
   MessageDlg('Campo 01. Campo Obritatório!',mtWarning,[mbOk],0);
   CB_DIV.SetFocus;
   end;

end;

procedure TFrm_Tab00Div.FormCreate(Sender: TObject);
begin
mop:=0;
end;

procedure TFrm_Tab00Div.GRAVARClick(Sender: TObject);
begin
CB_DIV.Text:=CB_DIV.Items.Strings[CB_DIV.itemindex];

if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_DIV.Text),[]) then
   begin
   Messagedlg('Campo 01. Preenchimento Obrigatório!',mtWarning,[mbok],0);
   CB_DIV.SetFocus;
   exit;
   end;


if mop=0 then
   begin
   mqtd:=STG_DIV.RowCount;
   STG_DIV.RowCount:=mqtd+1;
   STG_DIV.Rows[mqtd].Clear;
   mqtd:=mqtd-1;
   end;
STG_DIV.Cells[0,mqtd]:=CB_DIV.Text;
STG_DIV.Cells[1,mqtd]:=DM2.Tb_ArqCATITULO.Value;

CB_DIV.Text:='';
CB_DIV.SetFocus;
mqtd:=mqtd+1;

mop:=0;


end;

procedure TFrm_Tab00Div.EDITARClick(Sender: TObject);
begin
mqtd:=STG_DIV.Row;
CB_DIV.Text   :=STG_DIV.Cells[0,mqtd];
CB_DIV.SetFocus;
mop:=1;
end;

procedure TFrm_Tab00Div.EXCLUIRClick(Sender: TObject);
var
x:Integer;
begin
mqtd:=STG_DIV.Row;
if (STG_DIV.Cells[0,1]='') or (STG_DIV.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_DIV.RowCount=2 then
   STG_DIV.Rows[1].Clear
else
   begin
   for x:=STG_DIV.Row to STG_DIV.RowCount-2 do
      begin
      STG_DIV.Cells[00,x]:=STG_DIV.Cells[00,x+1];
      end;
   STG_DIV.RowCount:=STG_DIV.RowCount-1;
   end;



end;

procedure TFrm_Tab00Div.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
