unit s_financeiro;
//GERAR JSON
//GERARJSON
//CRIAR JSON
//CRIAR JSON
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, WinInet, uLkJSON, DB, DBClient,
  Grids, DBGrids;

type
  Tfrm_financeiro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lbl_atencao: TLabel;
    Timer_atencao: TTimer;
    Panel3: TPanel;
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Memo2: TMemo;
    Label1: TLabel;
    edt_cnpj: TEdit;
    cds_uf: TClientDataSet;
    cds_ufUFSigla: TStringField;
    cds_ufUFNome: TStringField;
    BitBtn3: TBitBtn;
    Memo3: TMemo;
    cds_financeiro: TClientDataSet;
    cds_financeirocridNew: TIntegerField;
    cds_financeirocrnumero: TIntegerField;
    cds_financeirocrvalor: TFloatField;
    cds_financeirocrdtemis: TDateTimeField;
    cds_financeirocrdtvcto: TDateTimeField;
    cds_financeirocrjurd: TFloatField;
    cds_financeirocrvalpag: TFloatField;
    cds_financeirocrdescf: TFloatField;
    cds_financeirocrdtdescf: TDateTimeField;
    cds_financeirocrmulta: TFloatField;
    cds_financeiroqtdatraso: TIntegerField;
    cds_financeiroccodcli: TIntegerField;
    cds_financeirocrazao: TStringField;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    cds_financeirocrdesd: TStringField;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_valor_entrada: TEdit;
    edt_qtdparc: TEdit;
    edt_intervalo: TEdit;
    bbGerar: TBitBtn;
    DBGrid2: TDBGrid;
    cds_proposta: TClientDataSet;
    cds_propostadatapgto: TDateField;
    cds_propostavalor: TFloatField;
    src_proposta: TDataSource;
    cds_financeirocrapagar: TFloatField;
    GroupBox3: TGroupBox;
    cb_aplicar_desconto: TCheckBox;
    cb_aplicar_multa: TCheckBox;
    cb_aplicar_juros: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Timer_atencaoTimer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure cb_aplicar_descontoClick(Sender: TObject);
  private
    { Private declarations }

      mTotalGeral: real;
      mTotalPago: Real;
      mTotalDescFin: Real;

      mTotalMulta  : Real;
      mTotalJuros  : Real;

      mQtdTitulos: integer;

      mRetornoFinanceiro: String;

      function fBuscarFinanceiro(pCnpj: String): boolean;


      function FormatJson(Jso: TlkJSONbase; Level:Integer): String;


      procedure fAtualizarRichedit;


      procedure fGerarJson;


      procedure fGerarCds;


      procedure fDisplayFormat;


      procedure fTotalizar;




  public
    { Public declarations }
    mUrlPix: String;
  end;

var
  frm_financeiro: Tfrm_financeiro;


  
implementation

uses Func, S_DM1;

{$R *.dfm}

procedure Tfrm_financeiro.FormShow(Sender: TObject);
begin
fTotalizar();

Timer_atencao.Enabled:=true;





end;

procedure Tfrm_financeiro.Timer_atencaoTimer(Sender: TObject);
begin
lbl_atencao.Visible := lbl_atencao.Visible = false;
end;

procedure Tfrm_financeiro.BitBtn1Click(Sender: TObject);
var
pCnpj: String;
begin

pCnpj:='02.299.715/0001-12';
pCnpj:=edt_cnpj.text;
fBuscarFinanceiro(pCnpj);
end;

function Tfrm_financeiro.fBuscarFinanceiro(pCnpj: String): boolean;
var
NetHandle: HINTERNET;
  UrlHandle: HINTERNET;
  Buffer: array[0..1024] of Char;
  BytesRead: dWord;
  mUrl: ansistring;

  mResult: string;
  mConteudo : string;
  mdatasit: string;




begin
result:=false;
mUrl := 'http://localhost:4257/caddarLista?pCnpj=' + fdeixanum(pCnpj);
mResult := '';
mRetornoFinanceiro:='';
Memo1.Lines.Clear;
NetHandle := InternetOpen('Delphi 7.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

if Assigned(NetHandle) then
   begin
   UrlHandle := InternetOpenUrl(NetHandle, PChar(mUrl), nil, 0, INTERNET_FLAG_RELOAD, 0);
   if Assigned(UrlHandle) then
       { UrlHandle valid? Proceed with download }
      begin
      FillChar(Buffer, SizeOf(Buffer), 0);
        repeat
        mResult :=   mResult + Buffer;
        FillChar(Buffer, SizeOf(Buffer), 0);
        InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
         until BytesRead = 0;
         InternetCloseHandle(UrlHandle);
      end
   else
     { UrlHandle is not valid. Raise an exception. }
     raise Exception.CreateFmt('Cannot open URL %s', [mUrl]);
     InternetCloseHandle(NetHandle);
   end
else
  { NetHandle is not valid. Raise an exception }
  raise Exception.Create('Unable to initialize Wininet');


if trim(mResult)<>'' then
   begin

   mRetornoFinanceiro:=mRetornoFinanceiro+mResult;
   Memo1.Lines.Add(mResult);
   result:=true;
   end
else
   result:=false;


end;


procedure tFrm_financeiro.fGerarJson;
var
  js: TlkJSONobject;
  s: string;
  i : Integer;

begin


   cds_uf.First;
  js := TlkJSONobject.Create;

  try

    js.Add('estado', TlkJSONobject.Create);

    while not cds_uf.Eof do begin

      with TlkJSONobject(TlkJSONobject(js['estado'])) do begin
        Add('sigla', cds_uf.FieldByName('UFSigla').AsString);
        Add('nome', cds_uf.FieldByName('UFNome').AsString);
      end;

      cds_uf.Next;

    end;//while

    i := 0;
    s := GenerateReadableText(js, i);
//    Memo2.Lines.Clear;
//    Memo2.Lines.Add(s);
//    Clipboard.SetTextBuf(PChar(s));

  finally
    js.Free;
  end;

end;


procedure Tfrm_financeiro.fGerarCds;
var
x: integer;
   procedure fAdicionar(pSigla,pNome: String);
   begin
   cds_uf.Append;
   cds_ufUFSigla.Value:=pSigla;
   cds_ufUFNome.Value :=pNome;
   cds_uf.post;

   end;
begin
cds_uf.CreateDataSet;
cds_uf.open;
fAdicionar('GO','GOIAS');
fAdicionar('DF','DISTRITO FEDERAL');
fAdicionar('MA','MARANHAO');

for x:=0 to 99 do
   begin
   fAdicionar(inttostr(x),'ESTADO '+inttostr(x));
   end;

end;

procedure Tfrm_financeiro.FormCreate(Sender: TObject);
var
Jso: TlkJSONbase;

begin
cds_financeiro.CreateDataSet;
cds_financeiro.Open;
//fBuscarFinanceiro(DM1.Tb_EmpCCGC.asstring);
//fBuscarFinanceiro('1536747001527');
fBuscarFinanceiro('19001876000180');
if trim(mRetornoFinanceiro)<>'' then
   begin
   Jso := TlkJSON.ParseText(mRetornoFinanceiro);
   try
      FormatJson(Jso,0);
   finally
      Jso.Free;
      end;
   end;

fDisplayFormat;

end;


function Tfrm_financeiro.FormatJson(Jso: TlkJSONbase; Level:Integer): String;
var
I:Integer;
mNome: String;
mValue: String;
begin
mNome :='';
mValue:='';

if (jso=nil) then
   begin
   exit;
   end;

if Jso is TlkJSONobjectmethod then
   begin
   with TlkJSONobjectMethod(Jso) do
      begin
      Result:='"'+Name+'" : ';
      mNome:=Name;
      Jso:=ObjValue;
      end;
	 end
else
   Result:='';
//TlkJSONObject(Jso).IndexOfName()
if Jso is TlkJSONObject then
   begin
   cds_financeiro.append;
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
//      mValue:=mValue+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';
   cds_financeiro.post;

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
	    if I<>Jso.Count-1 then
         Result:=Result+','#13#10
      else
   	     Result:=Result+#13#10;
     	end;
   Result:=Result+StringOfChar(#9,Level)+']';
   end
else
   begin
   if Jso.SelfType=jsString then
      begin
      Result:=Result+'"'+Jso.Value+'"';
      mValue:=Jso.Value;
      end
   else
      begin
      mValue:=VarToStr(Jso.Value);
  	   Result:=Result+VarToStr(Jso.Value);
      end;
   end;
if trim(mNome)<>'' then
   begin
   try
      cds_financeiro.FieldByName(mNome).Value:=mValue;
   except
      end;
   end;
end;


procedure tFrm_Financeiro.fDisplayFormat;
begin
cds_financeirocrvalor.DisplayFormat   :=mcasas;
cds_financeirocrjurd.DisplayFormat    :=mcasas;
cds_financeirocrvalpag.DisplayFormat  :=mcasas;
cds_financeirocrdtemis.DisplayFormat  :=fdt2;
cds_financeirocrdtvcto.DisplayFormat  :=fdt2;
cds_financeirocrdescf.DisplayFormat   :=mcasas;
cds_financeirocrdtdescf.DisplayFormat :=fdt2;
cds_financeirocrvalpag.DisplayFormat  :=mcasas;
cds_financeirocrmulta.DisplayFormat   :=mcasas;
cds_financeirocrapagar.DisplayFormat  :=mcasas;

end;

procedure tFrm_Financeiro.fTotalizar;

begin

mTotalGeral  :=0;
mTotalPago   :=0;
mTotalDescFin:=0;
mQtdTitulos  :=0;
mTotalMulta  :=0;
mTotalJuros  :=0;
cds_financeiro.First;
While not cds_financeiro.eof do
   begin
   cds_financeiro.Edit;
   cds_financeirocrapagar.AsFloat:=cds_financeirocrapagar.AsFloat+cds_financeirocrvalor.AsFloat-cds_financeirocrvalpag.AsFloat;

   if (cb_aplicar_multa.Checked) and   (cds_financeirocrdtvcto.AsDateTime<Date) then
      begin
      cds_financeirocrapagar.AsFloat:=cds_financeirocrapagar.AsFloat+cds_financeirocrmulta.AsFloat;
      mTotalMulta:=mTotalMulta+cds_financeirocrmulta.AsFloat;
      end;

   if (cb_aplicar_desconto.Checked) or   (cds_financeirocrdtdescf.AsDateTime>=Date) then
      begin
      mTotalDescFin :=mTotalDescFin  +cds_financeirocrdescf.AsFloat;
      cds_financeirocrapagar.AsFloat:=cds_financeirocrapagar.AsFloat-cds_financeirocrdescf.AsFloat;
      end;

   if (cb_aplicar_juros.Checked) or   (cds_financeiroqtdatraso.AsInteger>0) then
      begin
      cds_financeirocrapagar.AsFloat:=cds_financeirocrapagar.AsFloat
         +  (cds_financeirocrjurd.AsFloat * cds_financeiroqtdatraso.AsInteger);
         mTotalJuros:=mTotalJuros
                  +  (cds_financeirocrjurd.AsFloat * cds_financeiroqtdatraso.AsInteger);
      end;

   cds_financeirocrapagar.AsFloat:=cds_financeirocrapagar.AsFloat - cds_financeirocrvalpag.AsFloat;
   cds_financeiro.post;
   cds_financeiro.Next;
   end;


cds_financeiro.First;
mQtdTitulos:=0;
While not cds_financeiro.eof do
   begin
   mQtdTitulos:=mQtdTitulos+1;
   mTotalGeral:=mTotalGeral    +cds_financeirocrvalor.AsFloat;
   mTotalPago :=mTotalPago     +cds_financeirocrvalpag.AsFloat;
   cds_financeiro.next;
   end;

fAtualizarRichedit;
end;

procedure Tfrm_financeiro.fAtualizarRichedit;
var
mTexto: String;

begin

try
   mTexto:='{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1046{\fonttbl{\f0\fnil\fcharset0 Calibri;}}'
                        +'{\colortbl ;\red255\green0\blue0;}'
                        +'{\*\generator Riched20 10.0.22621}\viewkind4\uc1'
                        +'\pard\sa200\sl276\slmult1\qj\f0\fs32\lang22 Encontramos [[[vTitulo]]] valor principal '
                        +'do d\''e9bito \cf1 r$[[[vLiq]]]\cf0 , '
                        +'para efetuar o pagamento agora seu d\''e9bito \''e9 de \cf1 r$[[[vPag]]]\cf0 .\par'
                        +'}';

   mTexto := fSubstituirtexto(mTexto,'[[[vTitulo]]]',inttostr(mQtdTitulos) + iif(mQtdTitulos>1,' titulos em abertos', ' titulo em aberto '));
   mTexto := fSubstituirtexto(mTexto,'[[[vLiq]]]','(Total Titulos '+FormatFloat(mcasas, mTotalGeral)
   +iif(mTotalMulta+mTotalJuros>0,' Juros e Multa '+Formatfloat(mcasas, mTotalMulta+mTotalJuros),'')
   +iif(mTotalDescFin>0,' Descontos '+Formatfloat(mcasas, mTotalDescFin),'')
   +iif(mTotalPago>0,' Pago Anteriormente '+Formatfloat(mcasas, mTotalPago),'')
   +') '
    );
   mTexto := fSubstituirtexto(mTexto,'[[[vPag]]]',FormatFloat(mcasas, mTotalGeral-(mTotalPago+mTotalDescFin)+(mTotalJuros+mTotalMulta) ) );


   RichEdit1.Lines.Text:=mTexto;

except
   end;

end;

procedure Tfrm_financeiro.bbGerarClick(Sender: TObject);
var
mDataVcto: tDatetime;
mValorParc: Real;
mDifParc: real;
mValorAPagar: Real;
    procedure fAdicionarParcela(pValor: real; pDataPgto: tDatetime);
    begin
    cds_proposta.append;
    cds_propostadatapgto.value:=pDataPgto;
    cds_propostavalor.value   :=pValor;
    cds_proposta.Post;

    end;

begin
mValorAPagar:=(mTotalGeral-(mtotalPago+mTotalDescFin+valfloat(edt_valor_entrada.text)));
mValorParc:=arredonda( (mValorApagar / valint(edt_qtdparc.text)), 2);
mDifParc:=mValorApagar- (mValorParc*valint(edt_qtdparc.text));

mDataVcto:=Date;
fAdicionarParcela(valfloat(edt_valor_entrada.text), mDataVcto);
cds_proposta.First;
while not cds_proposta.Eof do
   begin
   mDataVcto:=mDataVcto+valint(edt_intervalo.text);
   fAdicionarParcela(mValorParc+mDifParc, mDataVcto);
   mDifParc:=0;
   cds_proposta.next;
   end;



end;

procedure Tfrm_financeiro.cb_aplicar_descontoClick(Sender: TObject);
begin
fTotalizar();
end;











end.
