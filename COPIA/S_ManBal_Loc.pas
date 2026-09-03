unit S_ManBal_loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons,S_DM1, db, dbtables,func,
  DBGrids;

type
  TFrm_ManBal_Loc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CB_TPESQ: TComboBox;
    NOME: TEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_Bal01: TQuery;
    Src_Bal01: TDataSource;
    Qr_Bal01B1CODEMP: TFloatField;
    Qr_Bal01B1CHAVE: TFloatField;
    Qr_Bal01B1DATA: TDateTimeField;
    Qr_Bal01B1MOT01: TStringField;
    Qr_Bal01B1MOT02: TStringField;
    Qr_Bal01B1MOT03: TStringField;
    Qr_Bal01B1STATUS: TFloatField;
    Qr_Bal01B1DATAAJU: TDateTimeField;
    DBGrid1: TDBGrid;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure NOMEExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ManBal_Loc: TFrm_ManBal_Loc;
  mlote, mtipo,mqtd: Integer;
implementation

{$R *.dfm}

procedure TFrm_ManBal_Loc.BitBtn3Click(Sender: TObject);
begin
mlote:=0;
modalresult:=mrCancel;
end;

procedure TFrm_ManBal_Loc.BitBtn1Click(Sender: TObject);
var
mordem: String;
begin
mordem:='';
Qr_Bal01.Close;
Qr_Bal01.SQL.Clear;
Qr_Bal01.SQL.add('Select * from CADBAL01 ');
mcinst:=' where ';
if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
   begin
   Qr_Bal01.SQL.Add(mcinst+' B1CODEMP=0'+IntToStr(codemp));
   mordem:=' B1CODEMP,';
   mcinst:=' and ';
   end;
if CB_TPESQ.ItemIndex=0 then
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Qr_Bal01.SQL.Add(mcinst+' B1CHAVE=0'+Trim(NOME.Text));
      mcinst:=' and ';
      end;
   mordem:=mordem+'B1CHAVE';
   end
else if CB_TPESQ.ItemIndex=1 then
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Qr_Bal01.SQL.Add(mcinst+' B1DATA='+chr(39)+FormatDateTime(fdt,StrToDate(NOME.Text))+chr(39));
      mcinst:=' and ';
      end;
   mordem:=mordem+'B1DATA';
   end
else
   begin
   if Trim(NOME.Text)<>'' then
      begin
      Qr_Bal01.SQL.Add(mcinst+' B1MOT01 like '+chr(39)+NOME.Text+'%'+chr(39));
      end;
   mordem:=mordem+'B1MOT01';
   end;
Qr_Bal01.Sql.Add(' order by '+mordem);
Qr_Bal01.Open;
if Qr_Bal01.Eof then
   begin
   MessageDlg('Não foi encontrado nenhum registro!',mtWarning,[mbOk],0);
   exit;
   end;
end;

procedure TFrm_ManBal_Loc.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if CB_TPESQ.ItemIndex=0 then
   begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
   end;
end;

procedure TFrm_ManBal_Loc.NOMEExit(Sender: TObject);
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

procedure TFrm_ManBal_Loc.bbSairClick(Sender: TObject);
begin
mlote:=Qr_Bal01B1CHAVE.AsInteger;
ModalResult:=MrOk;
end;

procedure TFrm_ManBal_Loc.DBGrid1DblClick(Sender: TObject);
begin
bbSair.Click;

end;

procedure TFrm_ManBal_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
