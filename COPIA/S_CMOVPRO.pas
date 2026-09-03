unit S_CMOVPRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, RXDBCtrl, StdCtrls, ExtCtrls, DB, DBTables,
  Grids, DBGrids,s_lerarq_geral;

type
  TFrm_CMOVPRO = class(TForm)
    Panel1: TPanel;
    btn_ras: TButton;
    edt_codpro: TEdit;
    Label1: TLabel;
    edt_nome_produto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1FORMULARIO: TStringField;
    Query1CODIGO: TFloatField;
    Query1MOV: TStringField;
    Query1SALDO_ANTERIOR: TFloatField;
    Query1SALDO: TFloatField;
    Query1OBSERVAO: TStringField;
    btn_imp: TButton;
    btn_close: TButton;
    DTINI: TDateEdit;
    DTFIN: TDateEdit;
    Query1DATA: TDateTimeField;
    Query1ENTRADA: TFloatField;
    Query1SAIDA: TFloatField;
    procedure btn_rasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_impClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codproExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CMOVPRO: TFrm_CMOVPRO;

implementation

uses S_DM1, lerarq, Func;

{$R *.dfm}

procedure TFrm_CMOVPRO.btn_rasClick(Sender: TObject);
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' SELECT                                '
              +'      cmpform as formulario,           '
              +'      cmpdata as data,                 '
              +'      cmpcodpro as codigo,             '
              +'      case when cmptpmov=0             '
              +'      then '+chr(39)+'Entrada'+chr(39)
              +'      when cmptpmov=1                  '
              +'      then '+chr(39)+'Saida'+chr(39)
              +'      end as Mov,                      '
              +'      cmpestant as Saldo_Anterior,        '
              +'      DECODE(cmptpmov,0,cmpqtd,0) AS ENTRADA, '
              +'      DECODE(cmptpmov,0,0,cmpqtd) AS SAIDA,   '
              +'      case when cmptpmov=0             '
              +'      then cmpestant+cmpqtd            '
              +'      when cmptpmov=1                  '
              +'      then cmpestant-cmpqtd            '
              +'      end as SALDO,                    '
              +'      cmpobs as Observação             '
              +' FROM CMOVPRO                          '
              +' where CMPCODEMP IS NOT NULL           ');
if valfloat(edt_codpro.Text)>0 then
  Query1.SQL.Add(' and CMPCODPRO='+edt_codpro.Text);
if Trim(DTINI.Text)<>'/  /' then
  Query1.SQL.Add(' and to_date(to_char(cmpdata,'+chr(39)+'dd/mm/yyyy'+chr(39)+'))>='+chr(39)+DTINI.Text+chr(39));
if Trim(DTFIN.Text)<>'/  /' then
  Query1.SQL.Add(' and to_date(to_char(cmpdata,'+chr(39)+'dd/mm/yyyy'+chr(39)+'))<='+chr(39)+DTFIN.Text+chr(39));
Query1.SQL.Add(' order by data                      ');
//Query1.sql.savetofile('c:\sql001.txt');

try
  Query1.Open;
except
  end;
end;

procedure TFrm_CMOVPRO.FormActivate(Sender: TObject);
begin
dtini.Clear;
dtfin.Clear;
end;

procedure TFrm_CMOVPRO.btn_impClick(Sender: TObject);
begin
btn_rasClick(self);
end;

procedure TFrm_CMOVPRO.btn_closeClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CMOVPRO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CMOVPRO.edt_codproKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    if DM1.Tb_PargerPPCOGRA.Value=1 then
      fChamaPro(2,'Frm_CMOVPRO',key)
    else
      fChamaPro(0,'Frm_MOVPRO',key);
    edt_codpro.Text:=FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat);
    edt_nome_produto.Text:=DM1.Tb_ProPDNOME.AsString;
    edt_codpro.setfocus;
    key:=#0;
    end;
  end;
end;

procedure TFrm_CMOVPRO.edt_codproExit(Sender: TObject);
begin
if Trim(edt_codpro.Text)<>'' then
  begin
  flcadpro(1,0,0,edt_codpro.Text);
  if DM1.Tb_Pro.Eof then
    begin
    fmensagem('Produto nao Cadastrado!',0,['0'],0);
    edt_nome_produto.Text:='*** produto não cadastrado!!!';
    edt_codpro.SetFocus;
    end
  else
    begin
    edt_codpro.Text:=FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat);
    edt_nome_produto.Text:=DM1.Tb_ProPDNOME.AsString;
    end;
  end;
end;

end.
