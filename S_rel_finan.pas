unit S_rel_finan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls,
  RLReport, ToolEdit;

type
  TFrm_Rel_Finan = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    RGTD: TRadioGroup;
    RG_TIPORES: TRadioGroup;
    modelo01: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    DataSource1: TDataSource;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand1: TRLBand;
    TP_REL01: TRLLabel;
    RLLabel2: TRLLabel;
    cb_pgpar: TCheckBox;
    Query1: TQuery;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    TOTALV: TRLLabel;
    TOTALE: TRLLabel;
    TOTALR: TRLLabel;
    TOTALP: TRLLabel;
    TOTAL: TRLLabel;
    Label1: TLabel;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    cb_empresas: TComboBox;
    RL_EMPRESA01: TRLLabel;
    Query2: TQuery;
    RL_PERIODO01: TRLLabel;
    Label2: TLabel;
    cb_modelo: TComboBox;
    TabSheet3: TTabSheet;
    cb_data: TComboBox;
    modelo02: TRLReport;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    TP_REL02: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RL_EMPRESA02: TRLLabel;
    RL_PERIODO02: TRLLabel;
    RLBand4: TRLBand;
    TOTAREC: TRLLabel;
    TOTAPAG: TRLLabel;
    TOTREC: TRLLabel;
    TOTPAG: TRLLabel;
    RLLabel16: TRLLabel;
    TabSheet4: TTabSheet;
    modelo03: TRLReport;
    RLDetailGrid3: TRLDetailGrid;
    RDB_MES: TRLDBText;
    RDB_TOTAL_R: TRLDBText;
    RDB_PAGO_R: TRLDBText;
    RDB_ABERTO_R: TRLDBText;
    RDB_DESC_R: TRLDBText;
    RLBand6: TRLBand;
    T_TOTAL_R: TRLLabel;
    T_PAGO_R: TRLLabel;
    T_ABERTO_R: TRLLabel;
    T_DESC_R: TRLLabel;
    RLLabel23: TRLLabel;
    RDB_JUROS_R: TRLDBText;
    T_JUROS_R: TRLLabel;
    RLBand5: TRLBand;
    TP_REL03: TRLLabel;
    RL_TOTAL_R: TRLLabel;
    RL_PAGO_R: TRLLabel;
    RL_ABERTO_R: TRLLabel;
    RL_DESC_R: TRLLabel;
    RL_EMPRESA03: TRLLabel;
    RL_PERIODO03: TRLLabel;
    RL_JUROS_R: TRLLabel;
    RL_JUROS_P: TRLLabel;
    RL_DESC_P: TRLLabel;
    RL_ABERTO_P: TRLLabel;
    RL_PAGO_P: TRLLabel;
    RL_TOTAL_P: TRLLabel;
    RDB_TOTAL_P: TRLDBText;
    RDB_DESC_P: TRLDBText;
    RDB_ABERTO_P: TRLDBText;
    RDB_PAGO_P: TRLDBText;
    RDB_JUROS_P: TRLDBText;
    T_TOTAL_P: TRLLabel;
    T_PAGO_P: TRLLabel;
    T_ABERTO_P: TRLLabel;
    T_DESC_P: TRLLabel;
    T_JUROS_P: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel10: TRLLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RGTDClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure cb_modeloSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_Finan: TFrm_Rel_Finan;
  VENDAS, ESTOQUE, RECEBER, PAGAR : REAL;
  TOTAL_R,PAGO_R,ABERTO_R,DESCONTOS_R,JUROS_R : REAL;
  TOTAL_P,PAGO_P,ABERTO_P,DESCONTOS_P,JUROS_P : REAL;
  dtp, dtr: string;
implementation

uses Math, S_DM1, func, Func2;

{$R *.dfm}


procedure TFrm_Rel_Finan.BitBtn1Click(Sender: TObject);
var
  emp: string;
begin
if cb_data.ItemIndex=0 then
  begin
  dtp:='CADTVCTO';
  dtr:='CRDTBX';
  end
else if cb_data.ItemIndex=1 then
  begin
  dtp:='CADTEMIS';
  dtr:='CRDTEMIS';
  end
else if cb_data.ItemIndex=2 then
  begin
  dtp:='CADTVCTO';
  dtr:='CRDTPAG';
  end
else if cb_data.ItemIndex=3then
  begin
  dtp:='CADTVCTO';
  dtr:='CRDTVCTO';
  end;
if cb_empresas.ItemIndex<>0 then
  begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select * from cademp where upper(razao)='+CHR(39)+UpperCase(cb_empresas.Text)+CHR(39));
  Query1.Open;
  emp:=Query1.fieldbyname('codemp').AsString;
  RL_EMPRESA01.caption:='Empresas..:'+query1.fieldbyname('razao').AsString;
  RL_EMPRESA02.caption:='Empresas..:'+query1.fieldbyname('razao').AsString;
  RL_EMPRESA03.caption:='Empresas..:'+query1.fieldbyname('razao').AsString;
  end
else
  begin
  RL_EMPRESA01.caption:='Empresas..: Todas as Empresas';
  RL_EMPRESA02.caption:='Empresas..: Todas as Empresas';
  RL_EMPRESA03.caption:='Empresas..: Todas as Empresas';
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' Create or replace view TEMP as ');


if cb_modelo.ItemIndex=0 then
  begin
  //VENDAS
  Query1.SQL.Add(' select sum(CRVALOR) as TOTVENDAS, ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS, ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER, ');
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAR ');
  Query1.sql.Add(' where CRSTATUS <9 ');
  Query1.SQL.Add(' AND CRNPED<>0  ');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CRCODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CRCODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //TOTAL ESTOQUE
  Query1.SQL.Add(' select 0 AS TOTVENDAS,  ');
  Query1.SQL.Add(' sum(CAVALOR) AS TOTCOMPRAS, ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER, ');
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAP ');
  Query1.sql.Add(' where CASTATUS <9 and CADUP<>5 ');
  Query1.SQL.Add(' AND CACHAVEP<>0   ');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CACODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CACODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //TOTAL RECEBER
  Query1.SQL.Add(' select 0 AS TOTVENDAS,  ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS, ');
  if RGTD.ItemIndex=0 then
    begin
    QUERY1.SQL.Add(' SUM(CRVALOR) AS TOTRECEBER, ');
    end
  else if RGTD.ItemIndex=1 then
    begin
    QUERY1.SQL.Add(' SUM(CRVALPAG+CRDEVOL) AS TOTRECEBER, ');
    end
  else if RGTD.ItemIndex=2 then
    begin
    QUERY1.SQL.Add(' SUM(CRVALOR-CRVALPAG-CRDEVOL+CRJUROS-CRDESC) AS TOTRECEBER, ');
    end;
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAR ');
  Query1.sql.add(' where CRCODEMP<>0 and crstatus<>9 ');
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'<='+chr(39)+MDT2.Text+chr(39));
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CRCODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CRCODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if RGTD.ItemIndex=1 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (crstatus > 0 AND CRSTATUS < 9)');
      end
    else if cb_pgpar.Checked=false then
      begin
      Query1.SQL.Add(' and (crstatus > 1 AND CRSTATUS < 9)');
      end;
    end
  else if RGTD.ItemIndex=2 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (crstatus=0 or crstatus=1) ');
      end
    else
      begin
      Query1.SQL.Add(' and crstatus=0 ');
      end;
    end;
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else IF RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //PAGAR
  Query1.SQL.Add(' select 0 AS TOTVENDAS,    ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS,          ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER,          ');
  if RGTD.ItemIndex=0 then
    begin
    QUERY1.SQL.Add(' sum(CAVALOR) AS TOTPAGAR, ');
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RGTD.ItemIndex=1 then
    begin
    QUERY1.SQL.Add(' sum(CAVALPAG+CADEVOL) AS TOTPAGAR, ');
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if rgtd.ItemIndex=2 then
    begin
    QUERY1.SQL.Add(' sum(CAVALOR-CAVALPAG-CADEVOL+CAJUROS-CADESC) AS TOTPAGAR, ');
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAP ');
  Query1.sql.Add(' where CACODEMP<>0 and CADUP<>5 ');
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'<='+chr(39)+MDT2.Text+chr(39));
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CACODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CACODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if RGTD.ItemIndex=1 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (castatus > 0 and castatus < 9) ');
      end
    else if cb_pgpar.Checked=false then
      begin
      Query1.SQL.Add(' and (castatus > 1 and castatus < 9) ');
      end;
    end
  else if RGTD.ItemIndex=2 then
    begin
    Query1.SQL.Add( ' and castatus = 0 ');
    end;
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  try
    Query1.ExecSQL;
  except
    Query1.SQL.SaveToFile('c:\sge\errosql0.txt');
    end;
  Query1.Close;
  Query1.sql.clear;
  Query1.sql.add(' Select GRUPO, ');
  Query1.sql.add(' sum(TOTVENDAS) as TOTVENDAS,   ');
  Query1.sql.add(' sum(TOTCOMPRAS) as TOTCOMPRAS, ');
  Query1.sql.add(' sum(TOTRECEBER) as TOTRECEBER, ');
  Query1.sql.add(' sum(TOTPAGAR) as TOTPAGAR      ');
  Query1.sql.add(' from TEMP                      ');
  Query1.sql.add(' group by GRUPO                 ');
  Query1.sql.add(' order by GRUPO                 ');
  try
    Query1.Open;
  except
    Query1.SQL.SaveToFile('c:\sge\errosql1.txt');
    end;
  (Query1.FieldByName('TOTVENDAS') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTCOMPRAS') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTRECEBER') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTPAGAR') as TFloatField).DisplayFormat := mcasas;
  VENDAS:=0;
  ESTOQUE:=0;
  RECEBER:=0;
  PAGAR:=0;
  while not Query1.Eof DO
    begin
    VENDAS  := Query1.fieldbyname('TOTVENDAS').Value+VENDAS;
    ESTOQUE := Query1.fieldbyname('TOTCOMPRAS').Value+ESTOQUE;
    RECEBER := Query1.fieldbyname('TOTRECEBER').Value+RECEBER;
    PAGAR   := Query1.fieldbyname('TOTPAGAR').Value+PAGAR;
    Query1.Next;
    end;
  if RG_TIPORES.ItemIndex=0 then
    begin
    TP_REL01.Caption:='DIA';
    TP_REL02.Caption:='DIA';
    TP_REL03.Caption:='DIA';
    end
  else IF RG_TIPORES.ItemIndex=1 then
    begin
    TP_REL01.Caption:='MES';
    TP_REL02.Caption:='MES';
    TP_REL03.Caption:='MES';
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    TP_REL01.Caption:='ANO';
    TP_REL02.Caption:='ANO';
    TP_REL03.Caption:='ANO';
    end;
  TOTALV.Caption:=FormatFloat('###,##0.00',VENDAS);
  TOTALE.Caption:=FormatFloat('###,##0.00',ESTOQUE);
  TOTALR.Caption:=FormatFloat('###,##0.00',RECEBER);
  TOTALP.Caption:=FormatFloat('###,##0.00',PAGAR);
  RL_PERIODO01.Caption:=fperiodo(0,mdt1.Text,mdt2.Text);

  modelo01.PreviewModal;
  end
else if cb_modelo.ItemIndex=1 then
  begin
  //VENDAS
  Query1.SQL.Add(' select sum(CRVALOR) as TOTVENDAS, ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS, ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER, ');
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAR ');
  Query1.sql.Add(' where CRSTATUS <9 ');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CRCODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CRCODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //TOTAL ESTOQUE
  Query1.SQL.Add(' select 0 AS TOTVENDAS,  ');
  Query1.SQL.Add(' sum(CAVALOR) AS TOTCOMPRAS, ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER, ');
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAP ');
  Query1.sql.Add(' where CASTATUS <9 AND CADUP<>5');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CACODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CACODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //TOTAL RECEBER
  Query1.SQL.Add(' select 0 AS TOTVENDAS,  ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS, ');
  QUERY1.SQL.Add(' SUM(CRVALPAG+CRDEVOL) AS TOTRECEBER, ');
  QUERY1.SQL.Add(' 0 AS TOTPAGAR,   ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAR ');
  Query1.sql.add(' where CRCODEMP<>0 and crstatus<>9 ');
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'<='+chr(39)+MDT2.Text+chr(39));
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CRCODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CRCODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if RGTD.ItemIndex=1 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (crstatus > 0 AND CRSTATUS < 9)');
      end
    else if cb_pgpar.Checked=false then
      begin
      Query1.SQL.Add(' and (crstatus > 1 AND CRSTATUS < 9)');
      end;
    end
  else if RGTD.ItemIndex=2 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (crstatus=0 or crstatus=1) ');
      end
    else
      begin
      Query1.SQL.Add(' and crstatus=0 ');
      end;
    end;
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else IF RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  //PAGAR
  Query1.SQL.Add(' select 0 AS TOTVENDAS,    ');
  Query1.SQL.Add(' 0 AS TOTCOMPRAS,          ');
  QUERY1.SQL.Add(' 0 AS TOTRECEBER,          ');
  QUERY1.SQL.Add(' sum(CAVALPAG+CADEVOL) AS TOTPAGAR, ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAP ');
  Query1.sql.Add(' where CACODEMP<>0 and CADUP<>5 ');
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'<='+chr(39)+MDT2.Text+chr(39));
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CACODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CACODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if RGTD.ItemIndex=1 then
    begin
    if cb_pgpar.Checked=true then
      begin
      Query1.SQL.Add(' and (castatus > 0 and castatus < 9) ');
      end
    else if cb_pgpar.Checked=false then
      begin
      Query1.SQL.Add(' and (castatus > 1 and castatus < 9) ');
      end;
    end
  else if RGTD.ItemIndex=2 then
    begin
    Query1.SQL.Add( ' and castatus = 0 ');
    end;
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  try
    Query1.ExecSQL;
   except
    Query1.SQL.SaveToFile('c:\sge\errosql1.txt');
    end;
  Query1.Close;
  Query1.sql.clear;
  Query1.sql.add(' Select GRUPO, ');
  Query1.sql.add(' sum(TOTVENDAS) as TOTVENDAS,   ');
  Query1.sql.add(' sum(TOTCOMPRAS) as TOTCOMPRAS, ');
  Query1.sql.add(' sum(TOTRECEBER) as TOTRECEBER, ');
  Query1.sql.add(' sum(TOTPAGAR) as TOTPAGAR      ');
  Query1.sql.add(' from TEMP                      ');
  Query1.sql.add(' group by GRUPO                 ');
  Query1.sql.add(' order by GRUPO                 ');
  try
    Query1.Open;
  except
    Query1.SQL.SaveToFile('c:\sge\errosql.txt');
    end;
  (Query1.FieldByName('TOTVENDAS') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTCOMPRAS') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTRECEBER') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTPAGAR') as TFloatField).DisplayFormat := mcasas;
  VENDAS:=0;
  ESTOQUE:=0;
  RECEBER:=0;
  PAGAR:=0;
  while not Query1.Eof DO
    begin
    VENDAS  := Query1.fieldbyname('TOTVENDAS').Value+VENDAS;
    ESTOQUE := Query1.fieldbyname('TOTCOMPRAS').Value+ESTOQUE;
    RECEBER := Query1.fieldbyname('TOTRECEBER').Value+RECEBER;
    PAGAR   := Query1.fieldbyname('TOTPAGAR').Value+PAGAR;
    Query1.Next;
    end;
  if RG_TIPORES.ItemIndex=0 then
    begin
    TP_REL01.Caption:='DIA';
    TP_REL02.Caption:='DIA';
    TP_REL03.Caption:='DIA';
    end
  else IF RG_TIPORES.ItemIndex=1 then
    begin
    TP_REL01.Caption:='MES';
    TP_REL02.Caption:='MES';
    TP_REL03.Caption:='MES';
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    TP_REL01.Caption:='ANO';
    TP_REL02.Caption:='ANO';
    TP_REL03.Caption:='ANO';
    end;
  TOTAREC.Caption:=FormatFloat('###,##0.00',VENDAS);
  TOTAPAG.Caption:=FormatFloat('###,##0.00',ESTOQUE);
  TOTREC.Caption:=FormatFloat('###,##0.00',RECEBER);
  TOTPAG.Caption:=FormatFloat('###,##0.00',PAGAR);
  RL_PERIODO02.Caption:=fperiodo(0,mdt1.text,mdt2.text);
  modelo02.PreviewModal;
  end
else if cb_modelo.ItemIndex=2 then
  begin
  //VENDAS
  Query1.SQL.Add(' select sum(CRVALOR) AS TOTAL_R, ');
  Query1.SQL.Add(' SUM(CRVALPAG+CRDEVOL) AS PAGO_R, ');
  QUERY1.SQL.Add(' SUM(CRVALOR-CRVALPAG-CRDEVOL+CRJUROS-CRDESC) AS ABERTO_R, ');
  QUERY1.SQL.Add(' SUM(CRDESC) AS DESCONTOS_R, ');
  QUERY1.SQL.Add(' SUM(CRJUROS) AS JUROS_R, ');
  QUERY1.SQL.Add(' 0 AS TOTAL_P, ');
  QUERY1.SQL.Add(' 0 AS PAGO_P, ');
  QUERY1.SQL.Add(' 0 AS ABERTO_P, ');
  QUERY1.SQL.Add(' 0 AS DESCONTOS_P, ');
  QUERY1.SQL.Add(' 0 AS JUROS_P, ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAR ');
  Query1.sql.Add(' where CRSTATUS <9 ');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CRCODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CRCODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtr+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtr+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  //UNIR TABELAS
  Query1.SQL.Add(' UNION ');
  Query1.SQL.Add(' select 0 AS TOTAL_R, ');
  Query1.SQL.Add(' 0 AS PAGO_R, ');
  QUERY1.SQL.Add(' 0 AS ABERTO_R, ');
  QUERY1.SQL.Add(' 0 AS DESCONTOS_R, ');
  QUERY1.SQL.Add(' 0 AS JUROS_R, ');
  QUERY1.SQL.Add(' sum(CAVALOR) AS TOTAL_P, ');
  QUERY1.SQL.Add(' SUM(CAVALPAG+CADEVOL) AS PAGO_P, ');
  QUERY1.SQL.Add(' SUM(CAVALOR-CAVALPAG-CADEVOL+CAJUROS-CADESC) AS ABERTO_P, ');
  QUERY1.SQL.Add(' SUM(CADESC) AS DESCONTOS_P, ');
  QUERY1.SQL.Add(' SUM(CAJUROS) AS JUROS_P, ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+') as GRUPO ');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+') as GRUPO ');
    end;
  Query1.sql.add(' from CADDAP ');
  Query1.sql.Add(' where CASTATUS <9 and CADUP<>5 ');
  if cb_empresas.ItemIndex<>0 then
    begin
    Query1.SQL.Add(' AND CACODEMP='+emp);
    end
  else
    begin
    query2.Close;
    query2.SQL.Clear;
    query2.sql.Add(' SELECT * FROM CADEMP WHERE BLOQ=1');
    query2.Open;
    while not query2.Eof do
      begin
      Query1.SQL.Add(' AND CACODEMP<>'+query2.fieldbyname('codemp').AsString);
      query2.next;
      end;
    end;
  if trim(MDT1.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'>='+chr(39)+MDT1.Text+chr(39));
  if trim(MDT2.Text)<>'/  /' then
    Query1.SQL.Add(' and '+dtp+'<='+chr(39)+MDT2.Text+chr(39));
  Query1.SQL.Add(' group by ');
  if RG_TIPORES.ItemIndex=0 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'DD'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=1 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'MM'+CHR(39)+')');
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    Query1.SQL.Add(' to_char('+dtp+','+CHR(39)+'yyyy'+CHR(39)+')');
    end;
  try
    Query1.ExecSQL;
   except
    Query1.SQL.SaveToFile('c:\sge\errosql1.txt');
    end;
  Query1.Close;
  Query1.sql.clear;
  Query1.sql.add(' Select GRUPO,                    ');
  Query1.sql.add(' sum(TOTAL_R) as TOTAL_R,         ');
  Query1.sql.add(' sum(PAGO_R) as PAGO_R,           ');
  Query1.sql.add(' sum(ABERTO_R) as ABERTO_R,       ');
  Query1.sql.add(' sum(DESCONTOS_R) as DESCONTOS_R, ');
  Query1.sql.add(' sum(JUROS_R) as JUROS_R,         ');
  Query1.sql.add(' sum(TOTAL_P) as TOTAL_P,         ');
  Query1.sql.add(' sum(PAGO_P) as PAGO_P,           ');
  Query1.sql.add(' sum(ABERTO_P) as ABERTO_P,       ');
  Query1.sql.add(' sum(DESCONTOS_P) as DESCONTOS_P, ');
  Query1.sql.add(' sum(JUROS_P) as JUROS_P          ');
  Query1.sql.add(' from TEMP                        ');
  Query1.sql.add(' group by GRUPO                   ');
  Query1.sql.add(' order by GRUPO                   ');
  try
    Query1.Open;
  except
    Query1.SQL.SaveToFile('c:\sge\errosql2.txt');
    end;
  (Query1.FieldByName('TOTAL_R') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('PAGO_R') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('ABERTO_R') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('DESCONTOS_R') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('JUROS_R') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('TOTAL_P') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('PAGO_P') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('ABERTO_P') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('DESCONTOS_P') as TFloatField).DisplayFormat := mcasas;
  (Query1.FieldByName('JUROS_P') as TFloatField).DisplayFormat := mcasas;
  TOTAL_R    :=0;
  PAGO_R     :=0;
  ABERTO_R   :=0;
  DESCONTOS_R:=0;
  JUROS_R    :=0;
  TOTAL_P    :=0;
  PAGO_P     :=0;
  ABERTO_P   :=0;
  DESCONTOS_P:=0;
  JUROS_P    :=0;
  while not Query1.Eof DO
    begin
    TOTAL_R    :=Query1.fieldbyname('TOTAL_R').Value+TOTAL_R;
    PAGO_R     :=Query1.fieldbyname('PAGO_R').Value+PAGO_R;
    ABERTO_R   :=Query1.fieldbyname('ABERTO_R').Value+ABERTO_R;
    DESCONTOS_R:=Query1.fieldbyname('DESCONTOS_R').Value+DESCONTOS_R;
    JUROS_R    :=Query1.fieldbyname('JUROS_R').Value+JUROS_R;
    TOTAL_P    :=Query1.fieldbyname('TOTAL_P').Value+TOTAL_P;
    PAGO_P     :=Query1.fieldbyname('PAGO_P').Value+PAGO_P;
    ABERTO_P   :=Query1.fieldbyname('ABERTO_P').Value+ABERTO_P;
    DESCONTOS_P:=Query1.fieldbyname('DESCONTOS_P').Value+DESCONTOS_P;
    JUROS_P    :=Query1.fieldbyname('JUROS_P').Value+JUROS_P;
    Query1.Next;
    end;
  if RG_TIPORES.ItemIndex=0 then
    begin
    TP_REL01.Caption:='DIA';
    TP_REL02.Caption:='DIA';
    TP_REL03.Caption:='DIA';
    end
  else IF RG_TIPORES.ItemIndex=1 then
    begin
    TP_REL01.Caption:='MES';
    TP_REL02.Caption:='MES';
    TP_REL03.Caption:='MES';
    end
  else if RG_TIPORES.ItemIndex=2 then
    begin
    TP_REL01.Caption:='ANO';
    TP_REL02.Caption:='ANO';
    TP_REL03.Caption:='ANO';
    end;
  T_TOTAL_R.Caption:=FormatFloat('###,##0.00',TOTAL_R);
  T_PAGO_R.Caption:=FormatFloat('###,##0.00',PAGO_R);
  T_ABERTO_R.Caption:=FormatFloat('###,##0.00',ABERTO_R);
  T_DESC_R.Caption:=FormatFloat('###,##0.00',DESCONTOS_R);
  T_JUROS_R.Caption:=FormatFloat('###,##0.00',JUROS_R);
  T_TOTAL_P.Caption:=FormatFloat('###,##0.00',TOTAL_P);
  T_PAGO_P.Caption:=FormatFloat('###,##0.00',PAGO_P);
  T_ABERTO_P.Caption:=FormatFloat('###,##0.00',ABERTO_P);
  T_DESC_P.Caption:=FormatFloat('###,##0.00',DESCONTOS_P);
  T_JUROS_P.Caption:=FormatFloat('###,##0.00',JUROS_P);
  RL_PERIODO03.Caption:=fperiodo(0,mdt1.text,mdt2.text);
  modelo03.PreviewModal;
  end;
end;
procedure TFrm_Rel_Finan.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Rel_Finan.RGTDClick(Sender: TObject);
begin
if  RGTD.ItemIndex=0 then
  begin
  cb_pgpar.Enabled:=false;
  cb_pgpar.Checked:=false;
  end
else
  begin
  cb_pgpar.Enabled:=true;
  end
end;

procedure TFrm_Rel_Finan.FormShow(Sender: TObject);
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('select * from cademp where bloq=0 ');
Query1.Open;
cb_empresas.Clear;
cb_empresas.Items.Add('TODAS AS EMPRESAS');
while not Query1.Eof do
  begin
  cb_empresas.Items.Add(Query1.fieldbyname('RAZAO').AsString);
  Query1.Next;
  end;
cb_empresas.ItemIndex:=0;
end;

procedure TFrm_Rel_Finan.MDT1Exit(Sender: TObject);
begin
   if mdt1.Text <> '  /  /    ' then
      mdt1.Text := formatdatetime('dd/mm/yyyy',mdt1.Date);
end;

procedure TFrm_Rel_Finan.MDT2Exit(Sender: TObject);
begin
   if mdt2.Text <> '  /  /    ' then
      mdt2.Text := formatdatetime('dd/mm/yyyy',mdt2.Date);
end;

procedure TFrm_Rel_Finan.cb_modeloSelect(Sender: TObject);
begin
if cb_modelo.ItemIndex=0 then
  begin
  rgtd.ItemIndex:=0;
  RGTD.Enabled:=true;
  end
else
  begin
  rgtd.ItemIndex:=-1;
  RGTD.Enabled:=false;
  end
end;

procedure TFrm_Rel_Finan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
