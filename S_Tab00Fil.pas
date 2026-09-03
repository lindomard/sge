unit S_Tab00Fil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,S_DM2,db,dbtables,func;

type
  TFrm_Tab00Fil = class(TForm)
    Panel2: TPanel;
    STG_FILTRO: TStringGrid;
    Label1: TLabel;
    CB_CAMPO01: TComboBox;
    Label2: TLabel;
    CB_COND1: TComboBox;
    Label3: TLabel;
    CB_CAMPO02: TComboBox;
    EDITAR: TBitBtn;
    EXCLUIR: TBitBtn;
    SAIR: TBitBtn;
    GRAVAR: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure CB_CAMPO01Exit(Sender: TObject);
    procedure CB_COND1Exit(Sender: TObject);
    procedure CB_CAMPO02Exit(Sender: TObject);
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
  Frm_Tab00Fil: TFrm_Tab00Fil;
  mqtd,mop: Integer;
  mtab1,mtab2,mtp1,mtp2: String;
implementation

{$R *.dfm}

procedure TFrm_Tab00Fil.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab00Fil.CB_CAMPO01Exit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_FILTRO.Focused) then
   exit;

CB_CAMPO01.Text:=CB_CAMPO01.Items.Strings[CB_CAMPO01.itemindex];
if trim(CB_CAMPO01.Text)='' then
   begin
   MessageDlg('Campo 01. Campo Obritatório!',mtWarning,[mbOk],0);
   cb_CAMPO01.SetFocus;
   end;


end;

procedure TFrm_Tab00Fil.CB_COND1Exit(Sender: TObject);
begin
if (SAIR.Focused) or (editar.Focused) or (STG_FILTRO.Focused) then
   exit;

CB_COND1.Text:=CB_COND1.Items.Strings[CB_COND1.itemindex];
if trim(CB_COND1.Text)='' then
   begin
   MessageDlg('Filtro quando for. Campo com preenchimento Obritatório!',mtWarning,[mbOk],0);
   cb_COND1.SetFocus;
   end;

end;

procedure TFrm_Tab00Fil.CB_CAMPO02Exit(Sender: TObject);
var
mvalor: String;
begin
if (SAIR.Focused) or (editar.Focused) or (STG_FILTRO.Focused) then
   exit;
mvalor:=CB_CAMPO02.Text;
CB_CAMPO02.Text:=CB_CAMPO02.Items.Strings[CB_CAMPO02.itemindex];
if trim(CB_CAMPO02.Text)='' then
   begin
   CB_CAMPO02.Text:=mvalor;
   mtp2:='V';
   end;
end;

procedure TFrm_Tab00Fil.FormCreate(Sender: TObject);
begin
mop:=0;
end;

procedure TFrm_Tab00Fil.GRAVARClick(Sender: TObject);
var
x: integer;
begin
if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_CAMPO01.Text),[]) then
   begin
   Messagedlg('Campo 01. Preenchimento Obrigatório!',mtWarning,[mbok],0);
   CB_CAMPO01.SetFocus;
   exit;
   end
else
   begin
   mtp1:=DM2.Tb_ArqCATIPO.Value;
   mtab1:=DM2.Tb_ArqCANOMARQ.Value;
   end;
CB_COND1.Text:=CB_COND1.Items.Strings[CB_COND1.itemindex];
if trim(CB_COND1.Text)='' then
   begin
   MessageDlg('Filtro quando for. Campo com preenchimento Obritatório!',mtWarning,[mbOk],0);
   cb_COND1.SetFocus;
   exit;
   end;
if trim(CB_CAMPO02.Text)='' then
   begin
   Messagedlg('Campo 02. Preenchimento Obrigatório!',mtWarning,[mbok],0);
   CB_CAMPO02.Setfocus;
   exit;
   end
else if DM2.Tb_Arq.Locate('CANOMREG',trim(CB_CAMPO02.Text),[]) then
   begin
   mtp2:=DM2.Tb_ArqCATIPO.Value;
   mtab2:=DM2.Tb_ArqCANOMARQ.Value;
   end
else
   begin
   mtp2:='V';
   mtab2:='';
   end;
if mtp2<>'V' then
   begin
   if mtp1<>mtp2 then
      begin
      MessageDlg('Campos com Tipos diferentes. Invalido!',mtWarning,[mbOk],0);
      CB_CAMPO02.SetFocus;
      exit;
      end;
   end
else
   begin
   if mtp1='N' then
      begin
      for x:=1 to length(CB_CAMPO02.Text) do
         begin
         if not (CB_CAMPO02.Text[x] in ['0'..'9']) and not (CB_CAMPO02.Text[x]=DecimalSeparator) then
            begin
            MessageDlg('O Campo/Valor tem que ser um valor. Invalido!',mtWarning,[mbOk],0);
            CB_CAMPO02.SetFocus;
            exit;
            end;
         end;
      end
   else if mtp1='D' then
      begin
      Try
         CB_CAMPO02.Text:=FormatDatetime(fdt2, StrToDate(CB_CAMPO02.Text));
      except
         Messagedlg('Favor digitar uma data valida no campo/valor',mtWarning,[],0);
         CB_CAMPO02.SetFocus;
         exit;
         end;
      end;
   end;


if mop=0 then
   begin
   mqtd:=STG_FILTRO.RowCount;
   STG_FILTRO.RowCount:=mqtd+1;
   STG_FILTRO.Rows[mqtd].Clear;
   mqtd:=mqtd-1;
   end;
STG_FILTRO.Cells[0,mqtd]:=CB_CAMPO01.Text;
STG_FILTRO.Cells[1,mqtd]:=CB_COND1.Text;
STG_FILTRO.Cells[2,mqtd]:=CB_CAMPO02.Text;
STG_FILTRO.Cells[3,mqtd]:=mtp1;
STG_FILTRO.Cells[4,mqtd]:=mtp2;
STG_FILTRO.Cells[5,mqtd]:=mtab1;
STG_FILTRO.Cells[6,mqtd]:=mtab2;
mqtd:=mqtd+1;
mop:=0;
CB_CAMPO01.Text:='';
CB_CAMPO02.Text:='';
CB_COND1.Text  :='';
CB_CAMPO01.SetFocus;

end;

procedure TFrm_Tab00Fil.EDITARClick(Sender: TObject);
begin
mqtd:=STG_FILTRO.Row;
CB_CAMPO01.Text :=STG_FILTRO.Cells[0,mqtd];
CB_COND1.Text   :=STG_FILTRO.Cells[1,mqtd];
CB_CAMPO02.Text :=STG_FILTRO.Cells[2,mqtd];
mtp1            :=STG_FILTRO.Cells[3,mqtd];
mtp2            :=STG_FILTRO.Cells[4,mqtd];
mtab1           :=STG_FILTRO.Cells[5,mqtd];
mtab2           :=STG_FILTRO.Cells[6,mqtd];
mop:=1;
CB_CAMPO01.SetFocus;
end;

procedure TFrm_Tab00Fil.EXCLUIRClick(Sender: TObject);
var
x:Integer;
begin
mqtd:=STG_FILTRO.Row;
if (STG_FILTRO.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_FILTRO.RowCount=2 then
   STG_FILTRO.Rows[1].Clear
else
   begin
   for x:=STG_FILTRO.Row to STG_FILTRO.RowCount-2 do
      begin
      STG_FILTRO.Cells[00,x]:=STG_FILTRO.Cells[00,x+1];
      STG_FILTRO.Cells[01,x]:=STG_FILTRO.Cells[01,x+1];
      STG_FILTRO.Cells[02,x]:=STG_FILTRO.Cells[02,x+1];
      STG_FILTRO.Cells[03,x]:=STG_FILTRO.Cells[03,x+1];
      STG_FILTRO.Cells[04,x]:=STG_FILTRO.Cells[04,x+1];
      STG_FILTRO.Cells[05,x]:=STG_FILTRO.Cells[05,x+1];
      STG_FILTRO.Cells[06,x]:=STG_FILTRO.Cells[06,x+1];
      end;
   STG_FILTRO.RowCount:=STG_FILTRO.RowCount-1;
   end;


end;

procedure TFrm_Tab00Fil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
