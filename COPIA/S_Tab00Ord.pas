unit S_Tab00Ord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons,func;

type
  TFrm_Tab00Ord = class(TForm)
    Panel1: TPanel;
    STG_ORDEM: TStringGrid;
    Label1: TLabel;
    CB_ORDEM: TComboBox;
    GRAVAR: TBitBtn;
    EDITAR: TBitBtn;
    EXCLUIR: TBitBtn;
    SAIR: TBitBtn;
    CB_DECRESCENTE: TCheckBox;
    procedure SAIRClick(Sender: TObject);
    procedure CB_ORDEMExit(Sender: TObject);
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
  Frm_Tab00Ord: TFrm_Tab00Ord;
  mop: Integer;
  mqtd: Integer;
implementation

uses S_DM2, S_DM1, S_Tab00;

{$R *.dfm}

procedure TFrm_Tab00Ord.SAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab00Ord.CB_ORDEMExit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_ORDEM.Focused) then
   exit;

CB_ORDEM.Text:=CB_ORDEM.Items.Strings[CB_ORDEM.itemindex];
if trim(CB_ORDEM.Text)='' then
   begin
   MessageDlg('Campo 01. Campo Obritatório!',mtWarning,[mbOk],0);
   CB_ORDEM.SetFocus;
   end;

end;

procedure TFrm_Tab00Ord.FormCreate(Sender: TObject);
begin
mop:=0;
end;

procedure TFrm_Tab00Ord.GRAVARClick(Sender: TObject);
begin
CB_ORDEM.Text:=CB_ORDEM.Items.Strings[CB_ORDEM.itemindex];


if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_ORDEM.Text),[]) then
   begin
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Select count(*) from CTDVOP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                     +' TOTDET=99 '
                     +' and TODOC='+chr(39)+Frm_Tab00.Qr_RelTCDOC.Value+chr(39)
                     +' and TONOME='+chr(39)+Frm_Tab00.Qr_RelTCNOME.Value+chr(39)
                     +' and TOCOND01='+chr(39)+trim(CB_ORDEM.Text)+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.fields[0].AsInteger<=0 then
      begin
      Messagedlg('Campo 01. Preenchimento Obrigatório!',mtWarning,[mbok],0);
      CB_ORDEM.SetFocus;
      exit;
      end;
   end;

if mop=0 then
   begin
   mqtd:=STG_ORDEM.RowCount;
   STG_ORDEM.RowCount:=mqtd+1;
   STG_ORDEM.Rows[mqtd].Clear;
   mqtd:=mqtd-1;
   end;
STG_ORDEM.Cells[0,mqtd]:=CB_ORDEM.Text;
STG_ORDEM.Cells[1,mqtd]:=DM2.Tb_ArqCATITULO.Value;
if CB_DECRESCENTE.Checked then
   STG_ORDEM.Cells[2,mqtd]:='X'
else
   STG_ORDEM.Cells[2,mqtd]:=' ';



CB_ORDEM.Text:='';
CB_ORDEM.SetFocus;
mqtd:=mqtd+1;

mop:=0;


end;

procedure TFrm_Tab00Ord.EDITARClick(Sender: TObject);
begin
mqtd:=STG_ORDEM.Row;
CB_ORDEM.Text   :=STG_ORDEM.Cells[0,mqtd];
if STG_ORDEM.Cells[2,mqtd]='X' then
   CB_DECRESCENTE.Checked:=True
else
   CB_DECRESCENTE.Checked:=false;

CB_ORDEM.SetFocus;
mop:=1;
end;

procedure TFrm_Tab00Ord.EXCLUIRClick(Sender: TObject);
var
x:Integer;
begin
mqtd:=STG_ORDEM.Row;
if (STG_ORDEM.Cells[0,1]='') or (STG_ORDEM.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ORDEM.RowCount=2 then
   STG_ORDEM.Rows[1].Clear
else
   begin
   for x:=STG_ORDEM.Row to STG_ORDEM.RowCount-2 do
      begin
      STG_ORDEM.Cells[00,x]:=STG_ORDEM.Cells[00,x+1];
      STG_ORDEM.Cells[01,x]:=STG_ORDEM.Cells[01,x+1];
      STG_ORDEM.Cells[02,x]:=STG_ORDEM.Cells[02,x+1];
      end;
   STG_ORDEM.RowCount:=STG_ORDEM.RowCount-1;
   end;



end;

procedure TFrm_Tab00Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
