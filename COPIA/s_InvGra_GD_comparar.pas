unit s_InvGra_GD_comparar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, DBTables;

type
  TFrm_InvGra_GD_comparar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cb_inv01: TComboBox;
    Label2: TLabel;
    cb_inv02: TComboBox;
    BitBtn5: TBitBtn;
    BBSair: TBitBtn;
    Qr_inv: TQuery;
    DBGrid1: TDBGrid;
    src_inv: TDataSource;
    Qr_invPDNOME: TStringField;
    Qr_invPDUND: TStringField;
    Qr_invCODPRO: TFloatField;
    Qr_invLOTE: TStringField;
    Qr_invDTVCTO: TDateTimeField;
    Qr_invINV01: TFloatField;
    Qr_invINV02: TFloatField;
    Qr_invESTATU: TFloatField;
    Qr_invDIFERENCA: TFloatField;
    Panel2: TPanel;
    lbl_totais: TLabel;
    sbt_expexcel: TSpeedButton;
    Qr_invDIF01_02: TFloatField;
    procedure BBSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sbt_expexcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_InvGra_GD_comparar: TFrm_InvGra_GD_comparar;

implementation

uses S_DM1, lerarq, Func, func_excecoes, Math, Func2;

{$R *.dfm}

procedure TFrm_InvGra_GD_comparar.BBSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_InvGra_GD_comparar.FormCreate(Sender: TObject);
begin
cb_inv01.items.clear;
cb_inv02.items.clear;

if fLerGenerico_query('INVGRA_GD','IGNOMEINV,COUNT(*) AS QTD',' 1=1 GROUP BY IGNOMEINV',query_consulta) then
   begin
   While not query_consulta.eof do
      begin
      cb_inv01.items.Add(query_consulta.fieldbyname('IGNOMEINV').AsString);
      cb_inv02.items.Add(query_consulta.fieldbyname('IGNOMEINV').AsString);
      query_consulta.next;
      end;
   end;
if cb_inv01.items.count>0 then
   cb_inv01.itemindex:=0;
   
if cb_inv02.items.count>1 then
   cb_inv02.itemindex:=1
ELSE if cb_inv02.items.count>0 then
   cb_inv02.itemindex:=0;

end;

procedure TFrm_InvGra_GD_comparar.BitBtn5Click(Sender: TObject);
var
   mFiltros: string;
   mfiltrotemp: string;

   mchave_inv_orig: string;
begin



if not fLerGenerico_query('INVGRA_GD','IGNOMEINV','IGCODEMP=0'+IntToStr(codemp)+' and IGNOMEINV='+QuotedStr(cb_inv01.Text),query_consulta) then
   begin
   MessageDlg('Inventario 01 '+cb_inv01.text+' Inexistente!',mtWarning,[mbOk],0);
   exit;
   end;

if not fLerGenerico_query('INVGRA_GD','IGNOMEINV','IGCODEMP=0'+IntToStr(codemp)+' and IGNOMEINV='+QuotedStr(cb_inv02.Text),query_consulta) then
   begin
   MessageDlg('Inventario 02 '+cb_inv02.text+' Inexistente!',mtWarning,[mbOk],0);
   exit;
   end;

mchave_inv_orig:=cb_inv01.text;


mFiltros:='';
mfiltrotemp:='';

if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(mchave_inv_orig)+' and IG3TIPO='+QuotedStr('GRU')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=' PDCODGRU in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;


mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(mchave_inv_orig)+'  and IG3TIPO='+QuotedStr('RAM')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=' PDCODRAM in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;



mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(mchave_inv_orig)+'  and IG3TIPO='+QuotedStr('TIP')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=' PDCODTIP in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;

mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(mchave_inv_orig)+'  and IG3TIPO='+QuotedStr('CON')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=' PDCODCON in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;


mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(mchave_inv_orig)+'  and IG3TIPO='+QuotedStr('MARC')
                     +' AND LENGTH(IG3CODIGO)>1 '
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=' PDMARCA like  in '+QuotedStr(query_consulta.fieldbyname('IG3CODIGO').asstring+'%');
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;
   end;
if trim(mfiltros)<>'' then
   mfiltros:=' and '+mfiltros;


Qr_inv.Close;
Qr_inv.sql.Clear;
Qr_inv.sql.add('SELECT PDNOME,PDUND,CODPRO,LOTE,DTVCTO,SUM(INV01) AS INV01,SUM(INV02) AS INV02,SUM(ESTATU) AS ESTATU '
             +' , round(  round( SUM(INV02) ,3) ) - round( SUM(ESTATU) ,3) AS DIFERENCA '
             +' , round(  round( SUM(INV02) ,3) ) - round( SUM(INV01) ,3) AS DIF01_02 '


//             +' ,( round( SUM(INV01) ,3) - round( SUM(INV02) ,3) ) - round( SUM(ESTATU) ,3) AS DIFERENCA '
             +' FROM ('
             +' SELECT IGCODPRO AS CODPRO ,IGGRADE AS LOTE, IGDTVCTO AS DTVCTO, IGQTD AS INV01, 0 AS INV02, 0 AS ESTATU FROM INVGRA_GD '
             +'WHERE IGNOMEINV=:INV01'
             +' UNION ALL '
             +' SELECT IGCODPRO AS CODPRO,IGGRADE AS LOTE, IGDTVCTO AS DTVCTO, 0 AS INV01, IGQTD AS INV02, 0 AS ESTATU FROM INVGRA_GD '
             +' WHERE IGNOMEINV=:INV02 '
             +' UNION ALL '
             +' SELECT CLCODPRO AS CODPRO,CLNUMERO AS LOTE, CLDTVCTO AS  DTVCTO, 0 AS INV01, 0 AS INV02, CLQTD AS ESTATU FROM CADLGC,CADPRO '
             +' WHERE PDCODPRO=CLCODPRO '+mfiltros
             +' ), CADPRO WHERE PDCODPRO=CODPRO '
             +' GROUP BY PDNOME,PDUND,CODPRO,LOTE,DTVCTO '
             +' order by CODPRO,LOTE,DTVCTO  ');
qr_inv.parambyname('INV01').asstring := cb_inv01.Text;
qr_inv.parambyname('INV02').asstring := cb_inv02.Text;


try
   qr_inv.open;
except on e : exception do
   ex_erroSql_Novo(qr_inv,209,'func Erro:'+e.Message ,'INVGRA_GD');
   end;

DM1.Query1.close;
DM1.Query1.sql.clear;
DM1.Query1.sql.add('select sum(case when DIFERENCA=0 THEN 0 ELSE 1 END) AS COMDIF,  '
                  +' sum(case when DIFERENCA=0 THEN 1 ELSE 0 END) AS SEMDIF '
                  +' ,sum(case when INV02<0 THEN 1 ELSE 0 END) AS NEGATIVOS '
                  +' ,sum(case when INV02<0 and INV01>0 THEN 1 ELSE 0 END) AS NEGACOMEST '
                  +' ,sum(case when DIF01_02=0 THEN 1 ELSE 0 END) AS DIF01_02 '

                  +'  from (' +Qr_inv.SQL.Text+' )');
DM1.Query1.parambyname('INV01').asstring := cb_inv01.Text;
DM1.Query1.parambyname('INV02').asstring := cb_inv02.Text;

try
   DM1.Query1.open;
except on e : exception do
   ex_erroSql_Novo(DM1.query1,209,'func Erro:'+e.Message ,'INVGRA_GD');
   end;

lbl_totais.Caption:='Total com Erros '+DM1.Query1.fieldbyname('COMDIF').asstring+' sem diferencas '+DM1.Query1.fieldbyname('SEMDIF').AsString
                   +' Negativos '+DM1.Query1.fieldbyname('NEGATIVOS').asstring+' Negativos antes tinha estoque '+DM1.Query1.fieldbyname('NEGACOMEST').AsString
                   +' Diferenca 01-02 '+DM1.Query1.fieldbyname('DIF01_02').asstring

                   ;


end;

procedure TFrm_InvGra_GD_comparar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;   

end;

procedure TFrm_InvGra_GD_comparar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

//if RoundTo( (Qr_invINV01.AsFloat-Qr_invINV02.AsFloat),3)<> roundto(Qr_invESTATU.AsFloat,3) then
if Qr_invDIFERENCA.AsFloat<>0 then 
   begin
   DBGrid1.Canvas.Brush.Color := clSkyBlue;
//   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
   DBGrid1.Canvas.Font.Color := clBlack;
   end;

DBGrid1.Canvas.FillRect(Rect);
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);


if (Qr_invDIF01_02.AsFloat<>0) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end

end;

procedure TFrm_InvGra_GD_comparar.sbt_expexcelClick(Sender: TObject);
var
Campos: Array of string;
x_cpo: Integer;
begin
{
SetLength(Campos,Qr_inv.fields.Count);
for x_cpo:=0 to Qr_inv.fields.count-1 do
   begin
   Campos[x_cpo]:=Qr_inv.fields[x_cpo].FieldName;
   end;
fGerarPlanilhaExcel(Campos,Src_inv);
}

fGerarPlanilhaExcel([],Src_inv);

end;

end.
