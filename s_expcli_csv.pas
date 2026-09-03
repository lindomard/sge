unit s_expcli_csv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls, Mask, ToolEdit, RLFilters, RLXLSFilter;

type
  TFrm_ExpCli_CSV = class(TForm)
    lbl_salva: TLabel;
    edt_narquivo: TFilenameEdit;
    Label1: TLabel;
    btn_salvar: TButton;
    btn_sair: TButton;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  Frm_ExpCli_CSV: TFrm_ExpCli_CSV;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure TFrm_ExpCli_CSV.btn_salvarClick(Sender: TObject);
var
  myFile : TextFile;
  text   : string;
  xCodemp: Integer;
begin
if codemp > 100 then
  xCodemp:=codemp-100
else
  xCodemp:=codemp;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select max(cemail) as cemail ');
DM1.Query1.SQL.Add(' from cadcli ');
DM1.Query1.SQL.Add(' where length(trim(cemail))>5 ');
DM1.Query1.SQL.Add(' and (ccodemp='+IntToStr(xCodemp)
                  +'      or ccodemp='+IntToStr(xCodemp+100)+')');
DM1.Query1.SQL.Add(' group by cemail ');
DM1.Query1.SQL.Add(' order by cemail ');
try
  DM1.Query1.Open;
except
  DM1.Query1.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
  Exit;
  end;

AssignFile(myFile,edt_narquivo.Text);
ReWrite(myFile);
WriteLn(myFile,'End. de email');
while not DM1.Query1.Eof do
  begin
  WriteLn(myFile,DM1.Query1.FieldByName('cemail').AsString);
  DM1.Query1.Next;
  end;
CloseFile(myFile);
fmensagem('Concluido!',0,['0'],0);
end;

procedure TFrm_ExpCli_CSV.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpCli_CSV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
