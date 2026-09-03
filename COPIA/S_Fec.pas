unit S_Fec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,S_DM1, StdCtrls, Buttons, ExtCtrls,func2;

type
  TFrm_Fec = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Fec: TQuery;
    Qr_FecDATA: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fec: TFrm_Fec;

implementation

{$R *.dfm}

procedure TFrm_Fec.BitBtn1Click(Sender: TObject);
var
mdata: TDateTime;
mmes: Integer;
mdataa: String;
begin
mdata:=date;
mmes:=StrToInt(FormatDateTime('mm',mdata));
While mmes=StrtoInt(FormatDateTime('mm',mdata)) do
   begin
   mdata:=mdata-1;
   end;

Qr_Fec.Close;
Qr_Fec.SQL.Clear;
Qr_Fec.SQL.add('Select PF1DATCONF as data from cadp01 '
              +' where PF1DATCONF<='+chr(39)+FormatDateTime(fdt, mdata)+chr(39)
              +' group by PF1DATCONF ');
Qr_Fec.SQL.Add(' union ');
Qr_Fec.SQL.add('Select PF1DATCONF as data from cadpf1 '
              +' where PF1DATCONF<='+chr(39)+FormatDateTime(fdt, mdata)+chr(39)
              +' group by PF1DATCONF ');
Qr_Fec.Open;

mdataa:='';
While not Qr_Fec.Eof do
   begin
   if Qr_FecDATA.IsNull then
      begin
      Qr_Fec.Next;
      Continue;
      end;
   if mdataa=FormatDateTime('yyyymm',Qr_FecDATA.Value) then
      begin
      Qr_Fec.Next;
      Continue;
      end;
   mdataa:=FormatDateTime('yyyymm',Qr_FecDATA.Value);
   Qr_Fec.Next;
   end;
MessageDlg('Concluido!',mtWarning,[mbOk],0);
end;

procedure TFrm_Fec.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Fec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
