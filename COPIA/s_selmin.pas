unit S_selmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBTables, Grids, DBGrids, Mask, ExtCtrls;

type
  TFrm_Selmin = class(TForm)
    Panel1: TPanel;
    codtra: TEdit;
    nometra: TEdit;
    DATAINI: TMaskEdit;
    DATAFIN: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSCADMIN2: TDataSource;
    CADMIN2: TQuery;
    UPCADMIN2: TUpdateSQL;
    BitBtn3: TBitBtn;
    CADMIN2CM2CODEMP: TFloatField;
    CADMIN2CM2CODMIN: TFloatField;
    CADMIN2CM2SEQ: TFloatField;
    CADMIN2CM2TIPO: TStringField;
    CADMIN2CM2NUMERO: TFloatField;
    CADMIN2CM2CLIFOR: TStringField;
    CADMIN2CM2CODIGO: TFloatField;
    CADMIN2CM2TIPDOC: TStringField;
    CADMIN2CM2NUMDOC: TFloatField;
    CADMIN2CM2VALOR: TFloatField;
    CADMIN2CM2OBS02: TStringField;
    CADMIN2CM2OBS03: TStringField;
    CADMIN2CM2DTCONF: TDateTimeField;
    CADMIN2CM2USRCONF: TFloatField;
    CADMIN2CM2LOTSEQ: TFloatField;
    CADMIN2CM2LOTSEQ_CP: TFloatField;
    CADMIN2CM2QTDVOL: TFloatField;
    CADMIN2CM2PESOB: TFloatField;
    CADMIN2CM2PESOL: TFloatField;
    CADMIN2CRAZAO: TStringField;
    CADMIN2OK: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BUSCA_CADMIN2;
    procedure nometraChange(Sender: TObject);
    procedure DATAINIExit(Sender: TObject);
    procedure DATAFINExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mitem  : INTEGER;
    mchave : integer;
  end;

var
  Frm_Selmin: TFrm_Selmin;

implementation

uses S_min3, S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_Selmin.FormCreate(Sender: TObject);
begin
    DATAINI.Text := frm_min3.MDATA.text;
    DATAFIN.Text := frm_min3.MDATAF.text;
    BUSCA_CADMIN2;
end;

procedure TFrm_Selmin.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     If CADMIN2OK.AsString = 'X' then
     begin
         DBGrid1.Canvas.Brush.Color := clRed;
         DBGrid1.Canvas.Font.Color  := clInfoBk;
     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_Selmin.DBGrid1CellClick(Column: TColumn);
begin
        CADMIN2.Edit;
        IF CADMIN2OK.AsString <> 'X' THEN
           CADMIN2OK.ASSTRING := 'X'
           ELSE CADMIN2OK.ASSTRING := '';

end;
procedure TFrm_Selmin.BitBtn3Click(Sender: TObject);
begin
    close;
end;

procedure TFrm_Selmin.BUSCA_CADMIN2;
begin
    CADMIN2.Close;
    CADMIN2.SQL.clear;
    CADMIN2.SQL.add('SELECT  CM2CODEMP,CM2CODMIN ,CM2SEQ ,CM2TIPO ,CM2NUMERO ,CM2CLIFOR ,CM2CODIGO ,CM2TIPDOC');
    CADMIN2.SQL.add('       ,CM2NUMDOC,CM2VALOR  ,CM2OBS02 ,CM2OBS03 ,CM2DTCONF ,CM2USRCONF ,CM2LOTSEQ');
    CADMIN2.SQL.add('       ,CM2LOTSEQ_CP ,CM2QTDVOL ,CM2PESOB,CM2PESOL, CRAZAO ,'' '' OK ');
    CADMIN2.SQL.add('FROM CADMIN2, CADCLI WHERE ');
    CADMIN2.SQL.add('    CM2CODIGO = CCODCLI ');
    CADMIN2.SQL.add('and CM2CODEMP =  '+''''+frm_min3.empresa_aux.Text+'''');

    if DATAfIN.text <> '  /  /    ' then
    begin
         CADMIN2.SQL.add('and CM2DTCONF >=  '+''''+DATAINI.text+''''  );
         CADMIN2.SQL.add('and CM2DTCONF <=  '+''''+DATAFIN.text+'''' );
    end
    else CADMIN2.SQL.add('and CM2DTCONF >=  '+''''+DATAINI.text+''''  );
    CADMIN2.SQL.add('order by  cm2codmin,cm2dtconf ');

//    IF STRTOINT(frm_min3.CHAVE.text) > 0 THEN
//       CADMIN2.SQL.add('  and CM2CODMIN  =  '+''''+frm_min3.CHAVE.text+''''  );

    CADMIN2.Open;

end;

procedure TFrm_Selmin.nometraChange(Sender: TObject);
begin
    CADMIN2.Close;
    CADMIN2.SQL.clear;
    CADMIN2.SQL.add('SELECT  CM2CODEMP,CM2CODMIN ,CM2SEQ ,CM2TIPO ,CM2NUMERO ,CM2CLIFOR ,CM2CODIGO ,CM2TIPDOC');
    CADMIN2.SQL.add('       ,CM2NUMDOC,CM2VALOR  ,CM2OBS02 ,CM2OBS03 ,CM2DTCONF ,CM2USRCONF ,CM2LOTSEQ');
    CADMIN2.SQL.add('       ,CM2LOTSEQ_CP ,CM2QTDVOL ,CM2PESOB,CM2PESOL, CRAZAO ,'' '' OK ');
    CADMIN2.SQL.add('FROM CADMIN2, CADCLI WHERE ');
    CADMIN2.SQL.add('    CM2CODIGO = CCODCLI ');
    CADMIN2.SQL.add('and CM2CODEMP =  '+''''+frm_min3.empresa_aux.Text+'''');
    CADMIN2.SQL.add('and CRAZAO  LIKE '+''''+nometra.Text+'%''');

    if DATAFIN.text <> '  /  /    ' then
    begin
         CADMIN2.SQL.add('and CM2DTCONF >=  '+''''+frm_min3.MDATA.text+''''  );
         CADMIN2.SQL.add('and CM2DTCONF <=  '+''''+DATAFIN.text+'''' );
    end
    else CADMIN2.SQL.add('and CM2DTCONF >=  '+''''+frm_min3.MDATA.text+''''  );

    IF CODTRA.Text <> '' THEN
       CADMIN2.SQL.add('  and CM2CODIGO  =  '+''''+CODTRA.text+''''  );
    CADMIN2.SQL.add('order by  cm2codmin,cm2dtconf ');
    CADMIN2.Open;

end;

procedure TFrm_Selmin.DATAINIExit(Sender: TObject);
begin
try
  DATAINI.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(DATAINI.Text));
except
  ShowMessage('Data Invalida!');
  DATAINI.SetFocus;
  end;

end;

procedure TFrm_Selmin.DATAFINExit(Sender: TObject);
begin
try
  DATAFIN.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(DATAFIN.Text));
except
  ShowMessage('Data Invalida!');
  DATAFIN.SetFocus;
  end;

end;

procedure TFrm_Selmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

END.
