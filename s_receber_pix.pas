unit s_receber_pix;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, WinInet, uLkJSON,StrUtils, DB,

  Grids, DBGrids, DBClient, IdBaseComponent,dateUtils, ScktComp, DBCtrls, Spin
 ,DelphiZXingQRCode,  ClipBrd, IdMultipartFormData;

type
  TMyHTTP = class(TIdHTTP)
 public
    procedure Delete(AURL: string; AResponseContent: TStream); overload;
    function Delete(AURL: string): string; overload;
  end;
type
  TFrm_Receber_pix = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    PageControl1: TPageControl;
    tsReceber: TTabSheet;
    tsCredenciais: TTabSheet;
    tsWebhook: TTabSheet;
    tsCertificados: TTabSheet;
    Label2: TLabel;
    edt_developer_key: TEdit;
    Label3: TLabel;
    edt_client_id: TEdit;
    Label4: TLabel;
    edt_client_secret: TEdit;
    Label5: TLabel;
    edt_certificado: TEdit;
    Label6: TLabel;
    edt_cert_password: TEdit;
    bbCredenciaisSalvar: TBitBtn;
    Button1: TButton;
    Label7: TLabel;
    edt_id: TEdit;
    src_webhook: TDataSource;
    cds_webhook: TClientDataSet;
    DBGrid_receber_pix: TDBGrid;
    Panel3: TPanel;
    cds_webhookdathor_criacao: TDateTimeField;
    cds_webhookurl: TStringField;
    bbExcluir: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    edt_url: TEdit;
    bbIncluir: TBitBtn;
    cds_webhookid: TIntegerField;
    cds_webhooknome: TStringField;
    cds_webhookchave: TStringField;
    cds_webhookcodBanco: TStringField;
    cb_chave_pix: TComboBox;
    src_certificados: TDataSource;
    cds_certificados: TClientDataSet;
    DBGrid_certificado: TDBGrid;
    Panel4: TPanel;
    Label11: TLabel;
    bbExcluirCertificado: TBitBtn;
    edt_nome_certificado: TEdit;
    bbPesquisarCertificado: TBitBtn;
    cds_certificadosid: TIntegerField;
    opd1: TOpenDialog;
    cds_certificadosconteudoCertificado: TStringField;
    cds_certificadosnomeCertificado: TStringField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    cb_receber_chave_pix: TComboBox;
    Label13: TLabel;
    edt_txid: TEdit;
    Label14: TLabel;
    spn_tamfonteobsnfe: TSpinEdit;
    Label15: TLabel;
    edt_valor_pix: TEdit;
    Label16: TLabel;
    edt_tipo_servico: TEdit;
    GroupBox3: TGroupBox;
    bbGerarQrCode: TBitBtn;
    bbSair: TBitBtn;
    PaintBox1: TPaintBox;
    src_receber: TDataSource;
    cds_receber: TClientDataSet;
    cds_recebercriacao: TDateTimeField;
    cds_receberexpiracao: TIntegerField;
    cds_recebertxid: TStringField;
    cds_receberrevisao: TIntegerField;
    cds_recebercnpj: TStringField;
    cds_recebernome: TStringField;
    cds_receberstatus: TStringField;
    cds_receberoriginal: TFloatField;
    cds_receberchave: TStringField;
    cds_recebersolicitacaoPagador: TStringField;
    cds_receberpixCopiaECola: TStringField;
    DBMemo_copia_e_cola: TDBMemo;
    Label12: TLabel;
    ClientSocket1: TClientSocket;
    BitBtn1: TBitBtn;
    Label17: TLabel;
    bbConsultarTxId: TBitBtn;
    cds_receberendToEndId: TStringField;
    cds_receberhorario: TDateTimeField;
    cds_receberinfoPagador: TStringField;
    Timer_webSocket: TTimer;
    lbl_consulta_txid: TLabel;
    cds_retorno_recebimento: TClientDataSet;
    cds_retorno_recebimentocriacao: TDateTimeField;
    cds_retorno_recebimentoexpiracao: TIntegerField;
    cds_retorno_recebimentotxid: TStringField;
    cds_retorno_recebimentorevisao: TIntegerField;
    cds_retorno_recebimentocnpj: TStringField;
    cds_retorno_recebimentonome: TStringField;
    cds_retorno_recebimentostatus: TStringField;
    cds_retorno_recebimentooriginal: TFloatField;
    cds_retorno_recebimentochave: TStringField;
    cds_retorno_recebimentosolicitacaoPagador: TStringField;
    cds_retorno_recebimentopixCopiaECola: TStringField;
    cds_retorno_recebimentoendToEndId: TStringField;
    cds_retorno_recebimentohorario: TDateTimeField;
    cds_retorno_recebimentoinfoPagador: TStringField;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    src_retorno_recebimento: TDataSource;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    lbl_timer2: TLabel;
    lbl_timer2_inicio: TLabel;
    SpinEdit1: TSpinEdit;
    Label18: TLabel;
    bbCancelarEspera: TBitBtn;
    lbl_espera: TLabel;
    procedure bbCredenciaisSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure src_webhookDataChange(Sender: TObject; Field: TField);
    procedure cb_chave_pixChange(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure edt_nome_certificadoChange(Sender: TObject);
    procedure bbPesquisarCertificadoClick(Sender: TObject);
    procedure src_certificadosDataChange(Sender: TObject; Field: TField);
    procedure bbExcluirCertificadoClick(Sender: TObject);
    procedure edt_valor_pixExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbGerarQrCodeClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure cb_receber_chave_pixChange(Sender: TObject);
    procedure edt_valor_pixChange(Sender: TObject);
    procedure DBMemo_copia_e_colaClick(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer_webSocketTimer(Sender: TObject);
    procedure bbConsultarTxIdClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bbCancelarEsperaClick(Sender: TObject);
  private
    { Private declarations }





    mTextoRecebe: String;

    mCanceladoEspera: boolean;

    mSegundosPercorridos : integer;


    mQtdTent: integer;
    mQtdVezes: integer;
    mDathorIni: tDatetime;
    QRCodeBitmap: TBitmap;


    mRetornoFinanceiro: string;

    mRetornoChavePix: String;

    mRetornoCertificados: String;

    mRetornoWebHook: String;


    function fGerarJsonCredenciais: string;
    function fGerarJsonCobrancaBB(pValor: Real; pTxId: String): string;


    function FormatJsonCredenciais(Jso: TlkJSONbase; Level:Integer): String;

    function FormatJsonQrCode(Jso: TlkJSONbase; Level:Integer; cds_QrCode:TClientDataSet): String;

    function fBuscarCredenciais: boolean;



    function fBuscarRecebimento(pTxId: String): boolean;


    function fBuscarQrCode(pChave: integer; pTxtId: String): boolean;



    function FormatJsonChavePix(Jso: TlkJSONbase; Level:Integer): String;




    function FormatJsonWebHook(Jso: TlkJSONbase; Level:Integer): String;

    function fBuscarChavesPix: boolean;

    function fIncluirCredenciais: boolean;



    function fBaixarWebHook(pChave: integer): boolean;


    function fGerarTxId(pCnpj: String; pNumDoc:Integer): string;






    procedure fBaixarDados;


    procedure fAtualizarChavesPix;


    function fDeletarWebHook(pChave: integer): boolean;
    function fIncluirWebHook(pChave: integer; pUrl: String): boolean;

    function fGerarWebHookUrl(pUrl: String): string;


    function fBuscarCertificados: boolean;
    function FormatJsonCertificados(Jso: TlkJSONbase; Level:Integer): String;
    function fDeletarCertificados(pChave: integer): boolean;
    function fIncluirCertificados: boolean;


    procedure QrCodeUpdate(pQrCode:String );



    function fBuscarChavePix(pNomeChave: String): integer;

    function fRecebeArq(pDados: String): Boolean;


    procedure fAtivaWebSocket;


  public
    mUrlPix: String;
    { Public declarations }


  end;

const
   mTimeOutSeg = 3200;

var
  Frm_Receber_pix: TFrm_Receber_pix;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Receber_pix.bbCredenciaisSalvarClick(Sender: TObject);
begin
fBaixarDados;

end;


function TFrm_Receber_pix.fGerarJsonCobrancaBB(pValor: Real; pTxId: String): string;
var
  jsDentro: TlkJSONobject;
  jsRaiz: TlkJSONobject;
  s: string;
  i : Integer;

begin
  result:='';

  jsDentro := TlkJSONobject.Create;
  jsRaiz := TlkJSONobject.Create;

  try
      with jsDentro do begin
        Add('original', mudaVp( FormatFloat('#################0.00', pValor)));
      end;


      jsRaiz.add('valor', jsDentro);
      if trim(pTxId)<>'' then
         begin
         jsRaiz.add('txId', pTxId);
         end;


    i := 0;
    s := GenerateReadableText(jsRaiz, i);
    result:=s;

  finally
    jsDentro.Free;
  end;

end;


function TFrm_Receber_pix.fGerarJsonCredenciais: string;
var
  js: TlkJSONobject;
  s: string;
  i : Integer;

begin
  result:='';

  js := TlkJSONobject.Create;

  try
      with js do begin
        if valint(edt_id.Text)>0 then
           Add('id', edt_id.Text);
        Add('developerApplicationKey', edt_developer_key.Text);
        Add('clientId', edt_client_id.Text);
        Add('clientSecret', edt_client_secret.Text);
        Add('certPath', edt_certificado.Text);
        Add('certPass', edt_cert_password.Text);
      end;


    i := 0;
    s := GenerateReadableText(js, i);
    result:=s;

  finally
    js.Free;
  end;

end;

function TFrm_Receber_pix.fGerarWebHookUrl(pUrl: String): string;
var
  js: TlkJSONobject;
  s: string;
  i : Integer;

begin
  result:='';

  js := TlkJSONobject.Create;

  try
      with js do begin
        Add('webhookUrl', pUrl);
      end;


    i := 0;
    s := GenerateReadableText(js, i);
    result:=s;

  finally
    js.Free;
  end;

end;


function TFrm_Receber_pix.fBuscarCredenciais: boolean;
var

NetHandle: HINTERNET;
UrlHandle: HINTERNET;
Buffer: array[0..1024] of Char;
BytesRead: dWord;
mUrl: ansistring;

mResult: string;
mConteudo : string;
mdatasit: string;

Jso: TlkJSONbase;

begin

mUrl := mUrlPix + '/credenciais';

result:=false;
mResult := '';
mRetornoFinanceiro:='';
//Memo1.Lines.Clear;
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

   if trim(mRetornoFinanceiro)<>'' then
      begin
      Jso := TlkJSON.ParseText(mRetornoFinanceiro);
      try
         FormatJsonCredenciais(Jso,0);
      finally
         Jso.Free;
         end;
      end;



//   Memo1.Lines.Add(mResult);
   result:=true;
   end
else
   result:=false;




end;

procedure TFrm_Receber_pix.FormCreate(Sender: TObject);
begin
mQtdVezes:=0;
  mTextoRecebe:='';
  QRCodeBitmap := TBitmap.Create;

cds_retorno_recebimento.CreateDataSet;
cds_retorno_recebimento.open;
  
cds_webhook.CreateDataSet;
cds_webhook.Open;

cds_receber.CreateDataSet;
cds_receber.Open;

cds_certificados.CreateDataSet;
cds_certificados.Open;

mUrlPix := 'http://localhost:8080';
if not fBuscarChavesPix then
   begin
   MessageDlg('Erro ao buscar chaves pix',mtError,[mbOk],0);
   end;


if not fBuscarCredenciais then
  begin
  MessageDlg('Erro ao buscar credenciais',mtError,[mbOk],0);
  end;


if not fBuscarCertificados then
   begin
   MessageDlg('Erro ao buscar certificados',mtError,[mbOk],0);
   end;

mCanceladoEspera:=false;


end;



function TFrm_Receber_pix.FormatJsonCredenciais(Jso: TlkJSONbase; Level:Integer): String;
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
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJsonCredenciais(Jso.Child[I],Level+1);
//      mValue:=mValue+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJsonCredenciais(Jso.Child[I],Level+1);
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
      case AnsiIndexStr(mNome,
      ['developerApplicationKey','clientId','clientSecret','certPath','certPass','id'])
         of
         0: edt_developer_key.Text := mValue;
         1: edt_client_id.Text := mValue;
         2: edt_client_secret.Text := mValue;
         3: edt_certificado.Text := mValue;
         4: edt_cert_password.text := mValue;
         5: edt_id.text := mValue;
      end;

   except
      end;
   end;
end;


function TFrm_Receber_pix.fIncluirCredenciais: boolean;
var

NetHandle: HINTERNET;
UrlHandle: HINTERNET;
Buffer: array[0..1024] of Char;
BytesRead: dWord;
mUrl: ansistring;

mResult: string;
mConteudo : string;
mdatasit: string;

Jso: TlkJSONbase;

begin
mUrl := mUrlPix + '/credenciais';



result:=false;
mResult := '';
mRetornoFinanceiro:='';
//Memo1.Lines.Clear;
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

   if trim(mRetornoFinanceiro)<>'' then
      begin
      Jso := TlkJSON.ParseText(mRetornoFinanceiro);
      try
         FormatJsonCredenciais(Jso,0);
      finally
         Jso.Free;
         end;
      end;



//   Memo1.Lines.Add(mResult);
   result:=true;
   end
else
   result:=false;




end;




procedure TFrm_Receber_pix.fBaixarDados;


var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);

try

   lParams.add(fGerarJsonCredenciais);
   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';
   sstream := TStringStream.Create(lParams.text);
   idHttp1.Post(mUrlPix + '/credenciais', sstream, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      Jso := TlkJSON.ParseText(lResponse.DataString);
      try
         FormatJsonCredenciais(Jso,0);
      finally
         Jso.Free;
         end;
      end;
except on e : exception do
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  end;
lParams.Free();
lResponse.Free();
end;


function TFrm_Receber_pix.fBuscarChavesPix: boolean;
var
NetHandle: HINTERNET;
UrlHandle: HINTERNET;
Buffer: array[0..1024] of Char;
BytesRead: dWord;
mUrl: ansistring;

mResult: string;
mConteudo : string;
mdatasit: string;

Jso: TlkJSONbase;


begin
result:=false;
mUrl := mUrlPix + '/chave-pix';
mResult := '';
mRetornoChavePix:='';
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
   mRetornoChavePix:=mRetornoChavePix+mResult;

   if trim(mRetornoChavePix)<>'' then
      begin
      Jso := TlkJSON.ParseText(mRetornoChavePix);
      try
         FormatJsonChavePix(Jso,0);
      finally
         Jso.Free;
         end;
      end;



   result:=true;
   end
else
   result:=false;

fAtualizarChavesPix;
end;


function TFrm_Receber_pix.FormatJsonChavePix(Jso: TlkJSONbase; Level:Integer): String;
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
   cds_webhook.append;
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJsonChavePix(Jso.Child[I],Level+1);
//      mValue:=mValue+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';
   if (cds_webhookid.AsInteger>0) and (length(cds_webhookurl.AsString)<1) then
      begin
      fBaixarWebHook(cds_webhookid.AsInteger);
      end;

   cds_webhook.post;

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJsonChavePix(Jso.Child[I],Level+1);
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
      cds_webhook.FieldByName(mNome).Value:=mValue;
   except
      end;
   end;
end;




function TFrm_Receber_pix.fBaixarWebHook(pChave: integer): boolean;
var
NetHandle: HINTERNET;
UrlHandle: HINTERNET;
Buffer: array[0..1024] of Char;
BytesRead: dWord;
mUrl: ansistring;

mResult: string;
mConteudo : string;
mdatasit: string;

Jso: TlkJSONbase;


begin
result:=false;
mUrl := mUrlPix + '/webhook-bb/consulta?idChave='+inttostr(pchave);
mResult := '';
mRetornoWebHook:='';
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
   mRetornoWebHook:=mRetornoWebHook+mResult;

   if trim(mRetornoWebHook)<>'' then
      begin
      Jso := TlkJSON.ParseText(mRetornoWebHook);
      try
         FormatJsonWebHook(Jso,0);
      finally
         Jso.Free;
         end;
      end;



   result:=true;
   end
else
   result:=false;


end;



function TFrm_Receber_pix.FormatJsonWebHook(Jso: TlkJSONbase; Level:Integer): String;
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
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJsonWebHook(Jso.Child[I],Level+1);
//      mValue:=mValue+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJsonWebHook(Jso.Child[I],Level+1);
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
      case AnsiIndexStr(mNome,
      ['chave','criacao','webhookUrl'])
         of
         0: cds_webhookchave.Value := mValue;
         1: try
               cds_webhook.fieldbyName('dathor_criacao').Value := fStringToDateJson(mValue);
            Except
               end;
         2: cds_webhookurl.Value := mValue;
      end;

   except
      end;
   end;
end;


procedure TFrm_Receber_pix.src_webhookDataChange(Sender: TObject;
  Field: TField);
begin
bbExcluir.Enabled:=cds_webhookid.IsNull=false;
end;

procedure TFrm_Receber_pix.cb_chave_pixChange(Sender: TObject);
begin
bbIncluir.Enabled :=  (length(trim(cb_chave_pix.text))>0) and (length(trim(edt_url.Text))>0);

end;


procedure TFrm_Receber_pix.fAtualizarChavesPix;
begin
cds_webhook.First;
cb_chave_pix.Items.Clear;
cb_receber_chave_pix.Items.Clear;
While not cds_webhook.Eof do
   begin
   cb_receber_chave_pix.Items.add(cds_webhookchave.AsString);
   cb_chave_pix.Items.Add(cds_webhookchave.AsString);
   cds_webhook.Next;
   end;
if cb_chave_pix.Items.Count>0 then
   begin
   cb_receber_chave_pix.ItemIndex:=0;
   cb_chave_pix.itemindex:=0;
   end
else
   cb_chave_pix.clear;
end;

function TFrm_Receber_pix.fDeletarWebHook(pChave: integer): boolean;


var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);
cds_webhook.EmptyDataSet;
try

   lParams.add(fGerarJsonCredenciais);
   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';
   sstream := TStringStream.Create('[]');
   idHttp1.Post(mUrlPix + '/webhook-bb/deletarPost?chave='+inttostr(pChave), sstream, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      showmessage(lResponse.DataString + idHttp1.ResponseText );
      end;
except on e : exception do
  begin
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  result:=false;
  end;
  end;
lParams.Free();
lResponse.Free();

end;

procedure TMyHTTP.Delete(AURL: string; AResponseContent: TStream);
begin


  DoRequest(hmDelete, AURL, nil, AResponseContent);
end;

function TMyHTTP.Delete(AURL: string): string;
var
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
    Delete(AURL, Stream);
    SetLength(Result, Stream.Size);
    Move(PChar(Stream.Memory)^, PChar(Result)^, Stream.Size);
  finally
    Stream.Free;
  end;
end;

procedure TFrm_Receber_pix.bbExcluirClick(Sender: TObject);
begin
if (cds_webhook.IsEmpty) or (cds_webhookurl.IsNull) then
   exit;

if Application.MessageBox(pchar('Quer Realmente excluir o webhook de url '+cds_webhookurl.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
If fDeletarWebHook(cds_webhookid.AsInteger) then
   begin
   if not fBuscarChavesPix then
      begin
      MessageDlg('Erro ao buscar chaves pix',mtError,[mbOk],0);
      end
   else
      ShowMessage('Chave webhook excluida!');
   end;

end;




function TFrm_Receber_pix.fIncluirWebHook(pChave: integer; pUrl: String): boolean;

var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);
cds_webhook.EmptyDataSet;
try

   lParams.add(fGerarWebHookUrl(pUrl));

   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := '*/*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br';
   idHttp1.Request.ContentType := 'application/json';
   idHttp1.Request.Connection := 'keep-alive';
   sstream := TStringStream.Create(lParams.text);

   idHttp1.Post(mUrlPix + '/webhook-bb/incluir?chave='+inttostr(pChave), sstream, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      showmessage(lResponse.DataString + idHttp1.ResponseText );
      end;
except on e : exception do
  begin
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  result:=false;
  end;
  end;
lParams.Free();
lResponse.Free();

end;

procedure TFrm_Receber_pix.bbIncluirClick(Sender: TObject);
begin
if cds_webhookid.AsInteger>0 then
   begin
   if fIncluirWebHook(cds_webhookid.AsInteger,edt_url.Text) then
      begin
      if not fBuscarChavesPix then
         begin
         MessageDlg('Erro ao buscar chaves pix',mtError,[mbOk],0);
         end
      else
         ShowMessage('Chave webhook incluida!');
      end
   else
      MessageDlg('Erro ao Incluir o webhook',mtWarning,[mbOk],0);
   end;

end;

// inicio certifificados buscar


function TFrm_Receber_pix.fBuscarCertificados: boolean;
var
NetHandle: HINTERNET;
UrlHandle: HINTERNET;
Buffer: array[0..1024] of Char;
BytesRead: dWord;
mUrl: ansistring;

mResult: string;
mConteudo : string;
mdatasit: string;

Jso: TlkJSONbase;


begin
result:=false;
mUrl := mUrlPix + '/certificados';
mResult := '';
mRetornoCertificados:='';
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
   mRetornoCertificados:=mRetornoCertificados+mResult;

   if trim(mRetornoCertificados)<>'' then
      begin
      Jso := TlkJSON.ParseText(mRetornoCertificados);
      try
         FormatJsonCertificados(Jso,0);
      finally
         Jso.Free;
         end;
      end;



   result:=true;
   end
else
   result:=false;

end;



function TFrm_Receber_pix.FormatJsonCertificados(Jso: TlkJSONbase; Level:Integer): String;
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
   cds_certificados.append;
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJsonCertificados(Jso.Child[I],Level+1);
//      mValue:=mValue+StringOfChar(#9,Level+1)+FormatJson(Jso.Child[I],Level+1);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';

   cds_certificados.post;

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJsonCertificados(Jso.Child[I],Level+1);
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
      cds_certificados.FieldByName(mNome).Value:=mValue;
   except
      end;
   end;

end;


// termino certificados buscar


procedure TFrm_Receber_pix.edt_nome_certificadoChange(Sender: TObject);
begin
bbPesquisarCertificado.Enabled :=  (length(trim(edt_nome_certificado.text))>0);

end;

procedure TFrm_Receber_pix.bbPesquisarCertificadoClick(Sender: TObject);
begin
if opd1.Execute then
   begin
   fIncluirCertificados;
   end;
end;



function TFrm_Receber_pix.fIncluirCertificados: boolean;

var
lParams: TIdMultipartFormDataStream;
//lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);



try
   lParams := TIdMultipartFormDataStream.Create;
   lParams.AddFormField('nome_certificado', edt_nome_certificado.Text);
   lParams.AddFile('conteudo_certificado', opd1.FileName, 'application/octet-stream');
   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := '*/*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br';
   idHttp1.Request.ContentType := 'application/json';
   idHttp1.Request.Connection := 'keep-alive';
//   sstream := TStringStream.Create('');

   idHttp1.Post(mUrlPix + '/certificados/upload', lParams, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      showmessage(lResponse.DataString + idHttp1.ResponseText );
      end;
except on e : exception do
  begin
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  result:=false;
  end;
  end;
lParams.Free();
lResponse.Free();

end;




procedure TFrm_Receber_pix.src_certificadosDataChange(Sender: TObject;
  Field: TField);
begin
bbExcluirCertificado.Enabled:=cds_certificadosid.IsNull=false;

end;

procedure TFrm_Receber_pix.bbExcluirCertificadoClick(Sender: TObject);
begin

If fDeletarCertificados(cds_certificadosid.AsInteger) then
   begin
   if not fBuscarCertificados then
      begin
      MessageDlg('Erro ao buscar Certificados',mtError,[mbOk],0);
      end
   else
      ShowMessage('Certificado excluido!');
   end;


end;



function TFrm_Receber_pix.fDeletarCertificados(pChave: integer): boolean;


var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);
try

   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';
   sstream := TStringStream.Create('[]');
   idHttp1.Post(mUrlPix + '/certificados/deletePost/'+inttostr(pChave), sstream, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      showmessage(lResponse.DataString + idHttp1.ResponseText );
      end;

except on e : exception do
  begin
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  result:=false;
  end;
  end;
lParams.Free();
lResponse.Free();

end;



procedure TFrm_Receber_pix.edt_valor_pixExit(Sender: TObject);
begin
edt_valor_pix.text := Formatfloat(mcasas , valfloat(edt_valor_pix.Text));
end;

procedure TFrm_Receber_pix.bbSairClick(Sender: TObject);
begin
close;
end;



function TFrm_Receber_pix.fBuscarQrCode(pChave: integer; pTxtId: String): boolean;

var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);

try

   lParams.add(fGerarJsonCobrancaBB(valfloat(edt_valor_pix.Text),pTxtId));


   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';
   sstream := TStringStream.Create(lParams.text);
   idHttp1.Post(mUrlPix + '/cobranca-bb/test?idChave='+inttoStr(pChave), sstream, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      Jso := TlkJSON.ParseText(lResponse.DataString);
      try
         cds_receber.EmptyDataSet;
         cds_receber.Append;
         FormatJsonQrCode(Jso,0,cds_receber);
         cds_receber.Post;
         if length(trim(cds_receberpixCopiaECola.Value))>1 then
            begin
            QrCodeUpdate(cds_receberpixCopiaECola.Value);
            PaintBox1Paint(self);
            end;

      finally
         Jso.Free;
         end;
      end;
except on e : exception do
  showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
  end;
lParams.Free();
lResponse.Free();
end;



function TFrm_Receber_pix.FormatJsonQrCode(Jso: TlkJSONbase; Level:Integer; cds_QrCode:TClientDataSet): String;

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
   Result:=Result
   +'{'#13#10;
   mValue:='';
   for I := 0 to Jso.Count - 1 do
      begin
      Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,cds_QrCode);
      if I<>Jso.Count-1 then
	       Result:=Result+','#13#10
      else
	       Result:=Result+#13#10;
      end;
   Result:=Result+StringOfChar(#9,Level)+'}';

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;
   for I := 0 to Jso.Count - 1 do
      begin
   	  Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,cds_QrCode);
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
      case AnsiIndexStr(mNome,
      ['criacao','expiracao','txid','revisao','cnpj','nome','status','original','chave','solicitacaoPagador'
      ,'pixCopiaECola','endToEndId','horario','infoPagador'])
         of
         0: cds_qrCode.fieldbyname('criacao').Value            := fStringToDateJson(mValue);
         1: cds_qrCode.fieldbyname('expiracao').value          := valint(mValue);
         2: cds_qrCode.fieldbyname('txid').value               := mValue;
         3: cds_qrCode.fieldbyname('revisao').value            := valint(mValue);
         4: cds_qrCode.fieldbyname('cnpj').value               := mValue;
         5: cds_qrCode.fieldbyname('nome').value               := mValue;
         6: cds_qrCode.fieldbyname('status').value             := mValue;
         7: cds_qrCode.fieldbyname('original').value           := valfloat(mValue);
         8: cds_qrCode.fieldbyname('chave').Value              := mValue;
         9: cds_qrCode.fieldbyname('solicitacaoPagador').Value := mValue;
         10: cds_qrCode.fieldbyname('pixCopiaECola').Value     := mValue;
         11: cds_qrCode.fieldbyname('endToEndId').Value        := mValue;
         12: cds_qrCode.fieldbyname('horario').Value           := fStringToDateJson(mValue);
         13: cds_qrCode.fieldbyname('infoPagador').Value       := mValue;
      end;

   except
      end;
   end;
end;

procedure TFrm_Receber_pix.bbGerarQrCodeClick(Sender: TObject);
var
mChave: integer;
begin
if length(trim(edt_txid.Text))<1 then
   edt_txid.Text:=fGerarTxId(cb_chave_pix.Text,strtoInt(FormatDateTime('yymmdd',now)));
mChave:=fBuscarChavePix(cb_receber_chave_pix.text);

if not fBuscarQrCode(mChave,edt_txid.text) then
   begin
   MessageDlg('Erro ao buscar qr-code',mtError,[mbOk],0);
   end
else
   begin
   mCanceladoEspera:=false;
   fAtivaWebSocket;
   end;



end;

function TFrm_Receber_pix.fBuscarChavePix(pNomeChave: String): integer;
begin
result:=-1;
cds_webhook.First;
While not cds_webhook.Eof do
   begin
   if cds_webhookchave.AsString=pNomeChave then
      begin
      result:=cds_webhookid.AsInteger;
      break;
      end;
   cds_webhook.Next;   
   end;
end;


procedure TFrm_Receber_pix.QrCodeUpdate(pQrCode:String );


var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := pQrCode;
    QRCode.Encoding := TQRCodeEncoding(0); // cmbEncoding.ItemIndex
    QRCode.QuietZone := StrToIntDef('4', 4); // edtQuietZone.Text
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;


procedure TFrm_Receber_pix.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap .Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;


end;

procedure TFrm_Receber_pix.cb_receber_chave_pixChange(Sender: TObject);
begin
bbGerarQrCode.Enabled :=  (length(trim(cb_receber_chave_pix.text))>0) and (valfloat(edt_valor_pix.Text)>0);
end;




procedure TFrm_Receber_pix.edt_valor_pixChange(Sender: TObject);
begin
bbGerarQrCode.Enabled :=  (length(trim(cb_receber_chave_pix.text))>0) and (valfloat(edt_valor_pix.Text)>0);
end;

procedure TFrm_Receber_pix.DBMemo_copia_e_colaClick(Sender: TObject);
begin
  Clipboard.AsText := cds_receberpixCopiaECola.AsString;

end;

procedure TFrm_Receber_pix.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
var
 Buf         : string;
 y,x: Integer;
  MsgLen, LenReceived: Integer;
  KbReceived: Integer;

begin

MsgLen := Socket.ReceiveLength;
   // prepare a buffer and get message
SetLength( Buf, MsgLen );
LenReceived := Socket.ReceiveBuf( Buf[1], MsgLen );

   // **always** adjust for actually received # of bytes!
Buf := Copy( Buf, 1, LenReceived );
inc( KbReceived, LenReceived );

fRecebeArq(buf);

end;

function TFrm_Receber_pix.fRecebeArq(pDados: String): Boolean;
begin
mTextoRecebe := mTextoRecebe + pDados;
ShowMessage('Recebido até agora '+ mTextoRecebe);
result:=True;
end;


procedure TFrm_Receber_pix.BitBtn1Click(Sender: TObject);
begin


if not ClientSocket1.Active then
   begin
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      end;
   end;

Label17.Caption:='Server socket '+IIF(ClientSocket1.Active=true,' ativo ', '***DESATIADO***');
end;

procedure TFrm_Receber_pix.Timer_webSocketTimer(Sender: TObject);

begin

if mCanceladoEspera then
   begin
   Timer_webSocket.Enabled:=false;
   bbCancelarEspera.Enabled:=false;
   lbl_consulta_txid.Caption:='Parado em '+Formatdatetime(fdathor, now);
   lbl_espera.Caption:='cancelado pelo usuario';
   QrCodeUpdate('');
   PaintBox1Paint(self);
   end
else if (length(trim(edt_txid.Text)))>0 then
   begin
   Timer_webSocket.Enabled:=false;
   lbl_consulta_txid.Caption:='Aguardando retorno pix '+FormatDateTime(fdathor, Now)
   +' segundos percorridos '+inttostr(mSegundosPercorridos) ;
   if not fBuscarRecebimento(edt_txid.Text) then
      begin
      MessageDlg('Erro ao buscar retorno pix',mtWarning,[mbOk],0);
      bbCancelarEspera.Enabled:=false;
      exit;
      end;
   if cds_retorno_recebimentostatus.AsString<>'ATIVA' then
      begin
      if length(cds_retorno_recebimentostatus.AsString)>1 then
         begin
         Showmessage(cds_retorno_recebimentostatus.Value);
         lbl_consulta_txid.Caption:='Parado em '+Formatdatetime(fdathor, now);
         QrCodeUpdate('');
         PaintBox1Paint(self);
         bbCancelarEspera.Enabled:=false;
         exit;
         end;
      end;
   mQtdTent:=mQtdTent+1;
   mSegundosPercorridos :=    SecondsBetween(now,mDathorIni);
   lbl_espera.Caption:='Tentativas '+IntToStr(mQtdTent)+' segundos faltantes '+inttostr(mTimeOutSeg-mSegundosPercorridos);
   if (mTimeOutSeg-mSegundosPercorridos)<0 then
      begin
      lbl_consulta_txid.Caption:='Tempo limite Esgotado!';
      QrCodeUpdate('');
      PaintBox1Paint(self);
      bbCancelarEspera.Enabled:=false;
      exit;
      end;
   Timer_webSocket.Enabled:=true;
   end;


end;



function TFrm_Receber_pix.fBuscarRecebimento(pTxId: String): boolean;

var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

begin
result:=true;
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);

try



   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';
   idHttp1.Get(mUrlPix + '/cobranca-bb/'+pTxId, lResponse);
   lResponse.Position := 0;

   if trim(lResponse.DataString)<>'' then
      begin
      Jso := TlkJSON.ParseText(lResponse.DataString);
      try
         cds_retorno_recebimento.EmptyDataSet;
         cds_retorno_recebimento.Append;
         FormatJsonQrCode(Jso,0,cds_retorno_recebimento);
         cds_retorno_recebimento.Post;
{
         if length(cds_retorno_recebimentostatus.AsString)>1 then
            bbConsultarTxIdClick(self);
 }

      finally
         Jso.Free;
         end;
      end;
except on e : exception do
   begin
   showmessage(e.Message+' '+lResponse.DataString + idHttp1.ResponseText );
   result:=false;
   end;
   end;
lParams.Free();
lResponse.Free();
end;


procedure TFrm_Receber_pix.bbConsultarTxIdClick(Sender: TObject);
begin
fAtivaWebSocket;
end;

procedure TFrm_Receber_pix.fAtivaWebSocket;
begin
if Timer_webSocket.Enabled = true then
   begin
   lbl_consulta_txid.Caption:='Parado em '+Formatdatetime(fdathor, now);
   end
else
   begin
   mQtdTent               :=0;
   mSegundosPercorridos   :=0;
   mDathorIni             :=now;
   Timer_webSocket.Interval:=SpinEdit1.Value*1000;
   bbCancelarEspera.enabled :=true;
   end;
Timer_webSocket.Enabled  := true;
bbCancelarEspera.Enabled := true;
end;

procedure TFrm_Receber_pix.BitBtn2Click(Sender: TObject);
begin
if Timer1.Enabled = false then
   begin
   Sleep(SpinEdit1.Value*1000);
   timer1.Interval := SpinEdit1.Value*1000;
   lbl_timer2_inicio.Caption:='Iniciado em '+Formatdatetime(fdathor, now);
   mQtdVezes:=0;
   end;

Timer1.Enabled := Timer1.Enabled = false;

end;

procedure TFrm_Receber_pix.Timer1Timer(Sender: TObject);
begin
mQtdVezes:=mQtdVezes+1;
lbl_timer2.Caption:='Atualizado'+FormatDateTime(fdathor, Now)+' '+inttoStr(mQtdVezes);

end;

procedure TFrm_Receber_pix.bbCancelarEsperaClick(Sender: TObject);
begin

if Application.MessageBox('Quer realmente cancelar a espera do pix?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
mCanceladoEspera:=true;

end;

function TFrm_Receber_pix.fGerarTxId(pCnpj: String; pNumDoc:Integer): string;
begin
result :=insere(pcnpj,'0',12)+insere(inttostr(pNumDoc),'0',8)+FormatDateTime('yymmddhhnnss', now);


end;

end.
