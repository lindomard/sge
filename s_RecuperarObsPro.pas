unit s_RecuperarObsPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, ComCtrls, Gauges;

type
  Tfrm_RecuperarObsPro = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    qr_ler: TQuery;
    query_executar: TQuery;
    gb_progresso: TGroupBox;
    Gauge1: TGauge;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RecuperarObsPro: Tfrm_RecuperarObsPro;

implementation

uses S_DM1, func_excecoes, Func;

{$R *.dfm}

procedure Tfrm_RecuperarObsPro.BitBtn1Click(Sender: TObject);
var
mObsStream: TMemoryStream;
mQtdLid: integer;
mQtdTot: integer;
begin
qr_ler.close;
qr_ler.sql.clear;
qr_ler.sql.add('select pdcodpro,pdobs,(select count(*) from cadpro where not pdobs is null) as qtdreg '
              +' from cadpro where not pdobs is null'
              );
//              +' and PDCODPRO = 1 '

try
   qr_ler.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ler,42,'SGE','CADMOV_PROD_REPETIDO');
   exit;
   end;
   end;
mQtdLid :=0;

mQtdtot:=qr_ler.fieldbyname('qtdreg').asinteger;
gb_progresso.Visible:=true;
query_executar.Close;
query_executar.SQL.Clear;
query_executar.sql.Add('UPDATE CADPRO SET PDOBS_NEW=:OBS_NEW WHERE PDCODPRO=:CODPRO ');

mObsStream := TMemoryStream.Create;
While not qr_ler.eof do
   begin
   mQtdLid:=mQtdLid+1;
   query_executar.Close;
   Gauge1.Progress:=mQtdLid*100 div mQtdTot;
   verteclado(0);


   (qr_ler.FieldByName('PDOBS') As TBlobField).SaveToStream(mObsStream);

   query_executar.ParamByName('OBS_NEW').LoadFromStream(mObsStream, ftMemo);
   query_executar.ParamByName('CODPRO').Value := qr_ler.fieldbyname('PDCODPRO').Asfloat;
   query_executar.ExecSQL;
   mObsStream.Clear;
   qr_ler.next;
   end;
qr_ler.close;
ShowMessage('Concluido!');
gb_progresso.Visible:=false;


end;

end.
