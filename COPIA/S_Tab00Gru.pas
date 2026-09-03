unit S_Tab00Gru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons,func;

type
  TFrm_Tab00Gru = class(TForm)
    Panel1: TPanel;
    STG_GRUPO: TStringGrid;
    Label1: TLabel;
    CB_GRUPO: TComboBox;
    GRAVAR: TBitBtn;
    EDITAR: TBitBtn;
    EXCLUIR: TBitBtn;
    SAIR: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure CB_GRUPOExit(Sender: TObject);
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
  Frm_Tab00Gru: TFrm_Tab00Gru;
  mop: Integer;
  mqtd: Integer;
implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_Tab00Gru.SAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab00Gru.CB_GRUPOExit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_GRUPO.Focused) then
   exit;

CB_GRUPO.Text:=CB_GRUPO.Items.Strings[CB_GRUPO.itemindex];
if trim(CB_GRUPO.Text)='' then
   begin
   MessageDlg('Campo 01. Campo Obritatório!',mtWarning,[mbOk],0);
   CB_GRUPO.SetFocus;
   end;

end;

procedure TFrm_Tab00Gru.FormCreate(Sender: TObject);
begin
mop:=0;
end;

procedure TFrm_Tab00Gru.GRAVARClick(Sender: TObject);
begin
CB_GRUPO.Text:=CB_GRUPO.Items.Strings[CB_GRUPO.itemindex];

if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_GRUPO.Text),[]) then
   begin
   Messagedlg('Campo 01. Preenchimento Obrigatório!',mtWarning,[mbok],0);
   CB_GRUPO.SetFocus;
   exit;
   end;


if mop=0 then
   begin
   mqtd:=STG_GRUPO.RowCount;
   STG_GRUPO.RowCount:=mqtd+1;
   STG_GRUPO.Rows[mqtd].Clear;
   mqtd:=mqtd-1;
   end;
STG_GRUPO.Cells[0,mqtd]:=CB_GRUPO.Text;
STG_GRUPO.Cells[1,mqtd]:=DM2.Tb_ArqCATITULO.Value;

CB_GRUPO.Text:='';
CB_GRUPO.SetFocus;
mqtd:=mqtd+1;

mop:=0;


end;

procedure TFrm_Tab00Gru.EDITARClick(Sender: TObject);
begin
mqtd:=STG_GRUPO.Row;
CB_GRUPO.Text   :=STG_GRUPO.Cells[0,mqtd];
CB_GRUPO.SetFocus;
mop:=1;
end;

procedure TFrm_Tab00Gru.EXCLUIRClick(Sender: TObject);
var
x:Integer;
begin
mqtd:=STG_GRUPO.Row;
if (STG_GRUPO.Cells[0,1]='') or (STG_GRUPO.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_GRUPO.RowCount=2 then
   STG_GRUPO.Rows[1].Clear
else
   begin
   for x:=STG_GRUPO.Row to STG_GRUPO.RowCount-2 do
      begin
      STG_GRUPO.Cells[00,x]:=STG_GRUPO.Cells[00,x+1];
      end;
   STG_GRUPO.RowCount:=STG_GRUPO.RowCount-1;
   end;



end;

procedure TFrm_Tab00Gru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
