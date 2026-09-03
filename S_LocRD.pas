unit S_LocRD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons,S_DM1, db, dbtables,func;

type
  TFrm_LocRD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    STG1: TStringGrid;
    Label1: TLabel;
    CB_TPESQ: TComboBox;
    NOME: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_RD01: TQuery;
    Qr_RD01R1CODEMP: TFloatField;
    Qr_RD01R1LOTE: TFloatField;
    Qr_RD01R1DESC: TStringField;
    Qr_RD01R1DATA: TDateTimeField;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure NOMEExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LocRD: TFrm_LocRD;
  mlote, mtipo,mqtd: Integer;
implementation

{$R *.dfm}

procedure TFrm_LocRD.BitBtn3Click(Sender: TObject);
begin
mlote:=0;
modalresult:=mrCancel;
end;

procedure TFrm_LocRD.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[0,0]:='Lote';
STG1.Cells[1,0]:='Data ';
STG1.Cells[2,0]:='Descrição';

end;

procedure TFrm_LocRD.BitBtn1Click(Sender: TObject);
var
mordem: String;
minc: String;
begin
STG1.RowCount:=2;
STG1.Rows[1].Clear;
mordem:='';
minc:=' where ';
Qr_RD01.Close;
Qr_RD01.SQL.Clear;
Qr_RD01.SQL.add('Select * from CADRD01 ');
if not DM1.Qr_Tid.Locate('TINOME','CADRD',[]) then
   begin
   Qr_RD01.SQL.Add(minc+' R1CODEMP=0'+IntToStr(codemp));
   mordem:=' R1CODEMP,';
   minc:=' and ';
   end;
if CB_TPESQ.ItemIndex=0 then
   begin
   if Trim(NOME.Text)<>'' then
      Qr_RD01.SQL.Add(minc+' R1LOTE=0'+Trim(NOME.Text));
   minc:=' and ';
   mordem:=mordem+'R1LOTE';
   end
else if CB_TPESQ.ItemIndex=1 then
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Qr_RD01.SQL.Add(minc+' R1DATA='+chr(39)+FormatDateTime(fdt,StrToDate(NOME.Text))+chr(39));
      minc:=' and ';
      end;
   mordem:=mordem+'R1DATA';
   end
else
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Qr_RD01.SQL.Add(minc+' R1DESC like '+chr(39)+NOME.Text+'%'+chr(39));
      minc:=' and ';
      end;
   mordem:=mordem+'R1DESC';
   end;

Qr_RD01.Sql.Add(' order by '+mordem);
Qr_RD01.Open;
if Qr_RD01.Eof then
   begin
   ShowMessage('Nada encontrado');
   exit;
   end;
While not Qr_RD01.Eof do
   begin
   mqtd:=STG1.RowCount;
   STG1.Cells[00,mqtd-1]:=FormatFloat('000000',Qr_RD01R1LOTE.Value);
   STG1.Cells[01,mqtd-1]:=FormatDateTime(fdt2, Qr_RD01R1DATA.Value);
   STG1.Cells[02,mqtd-1]:=Qr_RD01R1DESC.Value;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   Qr_RD01.Next;
   end;

end;

procedure TFrm_LocRD.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if CB_TPESQ.ItemIndex=0 then
   begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
   end;
end;

procedure TFrm_LocRD.NOMEExit(Sender: TObject);
begin
if CB_TPESQ.ItemIndex=1 then
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Try
         NOME.Text:=FormatDateTime(fdt2,StrtoDate(NOME.Text));
      Except
         ShowMessage('Data Invalida. Favor digitar no formato: '+fdt2+' inclusive as barras');
         NOME.SetFocus;
         end;
      end;
   end;
end;

procedure TFrm_LocRD.BitBtn2Click(Sender: TObject);
begin
mlote:=StrToInt('0'+Trim(STG1.Cells[00,STG1.Row]));
ModalResult:=MrOk;
end;

procedure TFrm_LocRD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
