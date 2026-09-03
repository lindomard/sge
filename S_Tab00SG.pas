unit S_Tab00SG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, Grids, ExtCtrls, StdCtrls, Buttons;

type
  TFrm_Tab00SG = class(TForm)
    Panel1: TPanel;
    STG_SG: TStringGrid;
    Label1: TLabel;
    CB_SG: TComboBox;
    GRAVAR: TBitBtn;
    EDITAR: TBitBtn;
    EXCLUIR: TBitBtn;
    SAIR: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure CB_SGExit(Sender: TObject);
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
  Frm_Tab00SG: TFrm_Tab00SG;
  mop: Integer;
  mqtd: Integer;
implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_Tab00SG.SAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab00SG.CB_SGExit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_SG.Focused) then
   exit;

CB_SG.Text:=CB_SG.Items.Strings[CB_SG.itemindex];
if trim(CB_SG.Text)='' then
   begin
   MessageDlg('Campo 01. Campo Obritatório!',mtWarning,[mbOk],0);
   CB_SG.SetFocus;
   end;

end;

procedure TFrm_Tab00SG.FormCreate(Sender: TObject);
begin
mop:=0;
end;

procedure TFrm_Tab00SG.GRAVARClick(Sender: TObject);
begin
CB_SG.Text:=CB_SG.Items.Strings[CB_SG.itemindex];

if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_SG.Text),[]) then
   begin
   Messagedlg('Campo 01. Preenchimento Obrigatório!',mtWarning,[mbok],0);
   CB_SG.SetFocus;
   exit;
   end;


if mop=0 then
   begin
   mqtd:=STG_SG.RowCount;
   STG_SG.RowCount:=mqtd+1;
   STG_SG.Rows[mqtd].Clear;
   mqtd:=mqtd-1;
   end;
STG_SG.Cells[0,mqtd]:=CB_SG.Text;
STG_SG.Cells[1,mqtd]:=DM2.Tb_ArqCATITULO.Value;

CB_SG.Text:='';
CB_SG.SetFocus;
mqtd:=mqtd+1;

mop:=0;


end;

procedure TFrm_Tab00SG.EDITARClick(Sender: TObject);
begin
mqtd:=STG_SG.Row;
CB_SG.Text   :=STG_SG.Cells[0,mqtd];
CB_SG.SetFocus;
mop:=1;
end;

procedure TFrm_Tab00SG.EXCLUIRClick(Sender: TObject);
var
x:Integer;
begin
mqtd:=STG_SG.Row;
if (STG_SG.Cells[0,1]='') or (STG_SG.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_SG.RowCount=2 then
   STG_SG.Rows[1].Clear
else
   begin
   for x:=STG_SG.Row to STG_SG.RowCount-2 do
      begin
      STG_SG.Cells[00,x]:=STG_SG.Cells[00,x+1];
      end;
   STG_SG.RowCount:=STG_SG.RowCount-1;
   end;



end;

procedure TFrm_Tab00SG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
