unit reguad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, StdCtrls, Buttons, jpeg, ExtCtrls, DB, DBTables, Grids, DBGrids,
  Gauges;

type
  TFrm_regua_degrade = class(TForm)
    Panel1: TPanel;
    REGUA1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Query1: TQuery;
    Database1: TDatabase;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image1: TImage;
    regua2: TGauge;
    procedure regua_degrade(valor_regua : Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    reg            : INTEGER;
    percentual     : integer;
    percentual_ant : integer;
    contador       : integer;
    primeira       : Boolean;
    max_value      : integer;
  end;

var
  Frm_regua_degrade: TFrm_regua_degrade;

implementation

{$R *.dfm}


procedure TFrm_regua_degrade.regua_degrade(valor_regua: Integer);
var
    i : integer;
    contaux : string;
begin

    if primeira then
    begin
        percentual     := 0;
        REGUA1.Width   := 0;
        reg            := 0;
        percentual_ant := 0;
        contador       := 0;
        max_value      := 0;
        label1.Caption := '';
        label1.update;
        regua1.update;
        primeira       := false;
    end;

    reg                := reg + 1;
    percentual         := trunc((reg/(valor_regua))*100);

    if (percentual > 0) and (percentual <= 101) then
    if  percentual <> percentual_ant then
    begin
        percentual_ant := percentual;
        contaux := inttostr(panel1.Width);
        for i := 1 to strtoint(copy(contaux,1,1)) do
        begin
            contador       := contador+1;
            regua1.Width   := contador;
        end;
        Label1.Caption := 'Intersys Sistemas '+inttostr(percentual)+' % ';
        label1.Width   := contador;
        REGUA1.Update;
        label1.update;
    end;
    if valor_regua < 100 then
    if valor_regua = reg then
    begin
        IF (100+CONTADOR+PERCENTUAL+10) < 600 THEN
            max_value := panel1.Width-(100+CONTADOR+PERCENTUAL+10);
        REGUA1.Width   := 100+CONTADOR+PERCENTUAL+10+max_value;
        label1.Caption := 'Intersys Sistemas 100 %';
        label1.Width   := 100+CONTADOR+PERCENTUAL+10+max_value;// 100;
        label1.update;
        regua1.update;
    end;

end;

procedure TFrm_regua_degrade.Button1Click(Sender: TObject);
begin

   regua2.MaxValue := 0;
   primeira := true;
   query1.First;
   regua2.MaxValue := query1.RecordCount;
   while not query1.eof do
   begin
         regua_degrade(query1.RecordCount);
         regua2.Progress := regua2.progress +1;
         query1.next;

   end;

end;

procedure TFrm_regua_degrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
