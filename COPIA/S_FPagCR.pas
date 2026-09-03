unit S_FPagCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, db, dbtables, S_DM1, func,lerarq;

type
  TFrm_FPagCr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    STGFP: TStringGrid;
    BitBtn1: TBitBtn;
    Qr_FPDup: TQuery;
    Qr_FPDupFPCODEMP: TFloatField;
    Qr_FPDupFPSEQ: TFloatField;
    Qr_FPDupFPLOTE: TFloatField;
    Qr_FPDupFPNUMERO: TFloatField;
    Qr_FPDupFPDESD: TStringField;
    Qr_FPDupFPTIPO: TFloatField;
    Qr_FPDupFPCODCLI: TFloatField;
    Qr_FPDupFPDTEMIS: TDateTimeField;
    Qr_FPDupFPCAIXA: TFloatField;
    Qr_FPDupFPCODUSR: TFloatField;
    Qr_FPDupFPVALOR: TFloatField;
    Qr_FPDupFPJUROS: TFloatField;
    Qr_FPDupFPDESC: TFloatField;
    Qr_FPDupnomcli: TStringField;
    Qr_FPDupvaldup: TFloatField;
    Qr_FP: TQuery;
    Qr_FPFPCODEMP: TFloatField;
    Qr_FPFPSEQ: TFloatField;
    Qr_FPFPDATA: TDateTimeField;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPNUMERO: TFloatField;
    Qr_FPFPBANCO: TFloatField;
    Qr_FPFPSERIE: TStringField;
    Qr_FPFPVALOR: TFloatField;
    Qr_FPFPLOTE: TFloatField;
    Qr_FPFPCC: TStringField;
    Qr_FPFPTIPO: TFloatField;
    Qr_FPFPCAIXA: TFloatField;
    Qr_FPFPCODLDR: TFloatField;
    Qr_FPDupFPDATPAG: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Qr_FPDupCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure STGFPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_FPagCr: TFrm_FPagCr;
  mpos, pptipo: Integer;
  fplote, fpLotSeq: Real;
implementation



{$R *.dfm}

procedure TFrm_FPagCr.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_FPagCr.Qr_FPDupCalcFields(DataSet: TDataSet);
begin
if Qr_FPDupFPCODCLI.Value>0 then
   begin
   if pptipo=1 then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_FPDupFPCODCLI.AsString)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_FPDupFPCODCLI.AsString);
   Qr_FPDupnomcli.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_FPagCr.FormActivate(Sender: TObject);
var
mini,mqtdd,mqtdf: Integer;

begin
While not DM1.Query2.Eof do
   begin
   Qr_FPDup.Close;
   Qr_FPDup.SQL.Clear;
   if pptipo=1 then
      begin
      Qr_FPDup.SQL.Add('Select FPCODEMP, FPSEQ,FPLOTE,FPNUMERO,FPDESD, '
                      +' FPCODFOR AS FPCODCLI,FPDTEMIS,FPTIPO,FPCAIXA,FPCODUSR, '
                      +' FPVALOR,FPJUROS,FPDESC, FPDTEMIS AS FPDATPAG from FPCPDUP where ');

      if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
         Qr_FPDup.SQL.Add(' FPCODEMP=0'+DM1.Query2.Fields[1].AsString+' and ');
//      if Trim(la_Empresas)<>'' then
//         Qr_FPDup.SQL.Add(la_Empresas+' and ');
      Qr_FPDup.sql.Add(' FPLOTSEQ=0'+FloatToStr(fpLotSeq)+' and ');
      end
   else
      begin
      Qr_FPDup.SQL.Add('Select * from FPCRDUP where ');
      if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
         Qr_FPDup.SQL.Add(' FPCODEMP=0'+DM1.Query2.Fields[1].AsString+' and ');

//      if Trim(la_Empresas)<>'' then
//         Qr_FPDup.SQL.Add(la_Empresas+' and ');
      Qr_FPDup.sql.Add(' FPLOTSEQ=0'+FloatToStr(fpLotSeq)+' and ');

      end;
   Qr_FPDup.sql.Add(' FPLOTE=0'+DM1.Query2.Fields[0].AsString);
   try
     Qr_FPDup.Open;
   except
     Qr_FPDup.SQL.SaveToFile('c:\sql.txt');
     Exit;
     end;
   mini:=STGFP.RowCount-1;
   mqtdd:=0;
   mqtdf:=0;
   While not Qr_FPDup.Eof do
      begin
      STGFP.Cells[00,mini+mqtdd]:=FloatToStr(Qr_FPDupFPNUMERO.Value)+'/'+Qr_FPDupFPDESD.Value;
      if pptipo=1 then
        STGFP.Cells[01,mini+mqtdd]:='NO TITULO'
      else
        STGFP.Cells[01,mini+mqtdd]:=FormatDateTime('DD/MM/YYYY',Qr_FPDupFPDATPAG.AsDateTime);
      STGFP.Cells[02,mini+mqtdd]:=FormatFloat('0.00',Qr_FPDupFPVALOR.Value);
      STGFP.Cells[03,mini+mqtdd]:=FormatFloat('0.00',Qr_FPDupFPJUROS.Value);
      STGFP.Cells[04,mini+mqtdd]:=FormatFloat('0.00',Qr_FPDupFPDESC.Value);
      STGFP.Cells[08,mini+mqtdd]:=Qr_FPDupnomcli.Value;
      STGFP.Cells[09,mini+mqtdd]:=ptpdoc[Qr_FPDupFPTIPO.asInteger];
      STGFP.Cells[11,mini+mqtdd]:=Qr_FPDupFPLOTE.AsString;
      mqtdd:=mqtdd+1;
      STGFP.RowCount:=mini+mqtdd+1;
      Qr_FPDup.Next;
      end;
   Qr_FP.Close;
   Qr_FP.Sql.clear;
   if pptipo=1 then
      begin
      Qr_FP.SQL.Add('Select * from FPCP where ');
      if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
         Qr_FP.SQL.Add(' FPCODEMP=0'+DM1.Query2.Fields[1].AsString+' and ');

//      if Trim(la_Empresas)<>'' then
//         Qr_FPDup.SQL.Add(la_Empresas+' and ');
      Qr_FP.sql.Add(' FPLOTSEQ=0'+FloatToStr(fpLotSeq)+' and ');
      end
   else
      begin
      Qr_FP.SQL.Add('Select * from FPCR where ');
      if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
         Qr_FP.SQL.Add(' FPCODEMP=0'+DM1.Query2.Fields[1].AsString+' and ');

//      if Trim(la_Empresas)<>'' then
//         Qr_FPDup.SQL.Add(la_Empresas+' and ');
      Qr_FPDup.sql.Add(' FPLOTSEQ=0'+FloatToStr(fpLotSeq)+' and ');
      end;
   Qr_FP.SQL.add(' FPLOTE=0'+DM1.Query2.Fields[0].AsString);
   Qr_FP.Open;
   While not Qr_FP.Eof do
      begin
      DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
//      STGFP.Cells[01,mini+mqtdf]:=FormatDateTime(fdt2,Qr_FPFPDATA.Value);
      STGFP.Cells[05,mini+mqtdf]:=DM1.Qr_FPFPDESC.Value;
      STGFP.Cells[07,mini+mqtdf]:=FormatFloat('0.00',Qr_FPFPVALOR.Value);
      STGFP.Cells[06,mini+mqtdf]:=Qr_FPFPNUMERO.AsString;
      mqtdf:=mqtdf+1;
      if mqtdf>mqtdd then
         STGFP.RowCount:=mini+mqtdf+1;
      Qr_FP.Next;
      end;
   DM1.Query2.Next;
   end;
end;

procedure TFrm_FPagCr.STGFPDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
//if aCol>4 then
//   STGFP.Canvas.Font.Color:=clBlue;
//if (arow>0) and (acol>4) then
if (acol>4) and (STGFP.Cells[07,Arow]<>'') then
   begin
   STGFP.Canvas.Brush.Color:=$00FF8000;
   STGFP.Canvas.Font.Color:=clWhite;
   STGFP.Canvas.TextRect(Rect, Rect.Left, rect.Top,STGFP.Cells[acol,arow]);

   end;


if (arow>0) and ((aCol=0) or (Acol=2) or (Acol=3) or (Acol=4) or (Acol=6)
   or (Acol=7)  or (Acol=9)) then
   begin

//Pega o texto da célula
  Texto := STGFP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STGFP.Canvas.TextWidth(Texto);
  AlturaTexto := STGFP.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STGFP.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_FPagCr.FormCreate(Sender: TObject);
begin
STGFP.RowCount:=2;
STGFP.Cells[00,00]:='Titulo';
STGFP.Cells[01,00]:='Dt.Pgto';
STGFP.Cells[02,00]:='Valor Pago';
STGFP.Cells[03,00]:='Juros';
STGFP.Cells[04,00]:='Descontos';
STGFP.Cells[05,00]:='Forma Pagamento';
STGFP.Cells[06,00]:='Numero';
STGFP.Cells[07,00]:='Valor';
STGFP.Cells[08,00]:='Emitente';
STGFP.Cells[09,00]:='Documento';
STGFP.Cells[10,00]:='Valor';
STGFP.Cells[11,00]:='Lote';

if not DM1.Qr_Fp.Active then
   begin
   DM1.Qr_FP.Close;
   DM1.Qr_FP.SQL.Clear;
   DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
   DM1.Qr_FP.Open;
   end;

end;

procedure TFrm_FPagCr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
