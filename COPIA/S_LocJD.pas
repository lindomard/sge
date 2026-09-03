unit S_LocJD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons,S_DM1, db, dbtables,func;

type
  TFrm_LocJD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    STG1: TStringGrid;
    Label1: TLabel;
    CB_TPESQ: TComboBox;
    NOME: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_JD01: TQuery;
    Qr_JD01J1CODEMP: TFloatField;
    Qr_JD01J1TIPO: TFloatField;
    Qr_JD01J1LOTE: TFloatField;
    Qr_JD01J1DESC: TStringField;
    Qr_JD01J1DATAR: TDateTimeField;
    Qr_JD01J1FATOR: TFloatField;
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
  Frm_LocJD: TFrm_LocJD;
  mlote, mtipo,mqtd: Integer;
implementation

{$R *.dfm}

procedure TFrm_LocJD.BitBtn3Click(Sender: TObject);
begin
mlote:=0;
modalresult:=mrCancel;
end;

procedure TFrm_LocJD.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[0,0]:='Lote';
STG1.Cells[1,0]:='Data referencia';
STG1.Cells[2,0]:='Descrição';
STG1.Cells[3,0]:='Fator';

end;

procedure TFrm_LocJD.BitBtn1Click(Sender: TObject);
var
mordem: String;
begin
STG1.RowCount:=2;
STG1.Rows[1].Clear;
mordem:='';
Qr_JD01.Close;
Qr_Jd01.SQL.Clear;
Qr_Jd01.SQL.add('Select * from CADJD01 where ');
if not DM1.Qr_Tid.Locate('TINOME','CADJD',[]) then
   begin
   Qr_Jd01.SQL.Add(' J1CODEMP=0'+IntToStr(codemp)+' and ');
   mordem:=' J1CODEMP,';
   end;
Qr_jd01.SQL.add(' J1TIPO='+IntTostr(mtipo));
if CB_TPESQ.ItemIndex=0 then
   begin
   if Trim(NOME.Text)<>'' then
      Qr_Jd01.SQL.Add(' and J1LOTE=0'+Trim(NOME.Text));
   mordem:=mordem+'J1LOTE';
   end
else if CB_TPESQ.ItemIndex=1 then
   begin
   if Trim(NOME.Text)<>'' then
      Qr_Jd01.SQL.Add(' and J1DATAR='+chr(39)+FormatDateTime(fdt,StrToDate(NOME.Text))+chr(39));
   mordem:=mordem+'J1DATAR';
   end
else
   begin
   if Trim(NOME.Text)<>'' then
      Qr_Jd01.SQL.Add(' and J1DESC like '+chr(39)+NOME.Text+'%'+chr(39));
   mordem:=mordem+'J1DESC';
   end;
Qr_Jd01.Sql.Add(' order by '+mordem);
Qr_Jd01.Open;
if Qr_Jd01.Eof then
   begin
   ShowMessage('Nada encontrado');
   exit;
   end;
While not Qr_Jd01.Eof do
   begin
   mqtd:=STG1.RowCount;
   STG1.Cells[00,mqtd-1]:=FormatFloat('000000',Qr_JD01J1LOTE.Value);
   STG1.Cells[01,mqtd-1]:=FormatDateTime(fdt2, Qr_JD01J1DATAR.Value);
   STG1.Cells[02,mqtd-1]:=Qr_JD01J1DESC.Value;
   STG1.Cells[03,mqtd-1]:=FormatFloat('0.00',Qr_JD01J1FATOR.Value);
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   Qr_Jd01.Next;
   end;

end;

procedure TFrm_LocJD.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if CB_TPESQ.ItemIndex=0 then
   begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
   end;
end;

procedure TFrm_LocJD.NOMEExit(Sender: TObject);
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

procedure TFrm_LocJD.BitBtn2Click(Sender: TObject);
begin
mlote:=StrToInt('0'+Trim(STG1.Cells[00,STG1.Row]));
ModalResult:=MrOk;
end;

procedure TFrm_LocJD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
