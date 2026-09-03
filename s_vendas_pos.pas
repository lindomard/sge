unit s_vendas_pos;

interface

uses
SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls,uLkJSON,
  Menus,IdHTTP, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient
  ,   Variants,  Forms, uPayGoTypes;


type
   tFormVendasPos = class

   private



    function fTextaNome2( pTexto: AnsiString): AnsiString;




   public

   function fEnviarPos(pUrl, pJson: String): String;



   function AguardarRespostaPos(pIdVenda: integer; pUrl: String; const ATimeout: Integer): TRetornoPayGo;



   end;





implementation



function tFormVendasPos.fEnviarPos(pUrl, pJson: String): String;

var lParams :TStringList;
lResponse : TStringStream;

idHttp1 : TIdHTTP;

AData: AnsiString;
sstream: TStringStream;
Jso: TlkJSONbase;

mUrl : string;

begin
lParams := TStringList.Create;
lResponse := TStringStream.Create('');
idHttp1 := TIdHTTP.Create(nil);

try
   mUrl := pUrl;

   pJson := StringReplace(pJson, #13#10, ' ', [rfReplaceAll]);


   lParams.add(fTextaNome2(pJson));

   idHttp1.ProtocolVersion := pv1_0;
   idHttp1.Request.Accept := 'application/json, text/plain, */*';
   idHttp1.Request.AcceptEncoding := 'gzip, deflate, br, zstd';
   idHttp1.Request.ContentType := 'application/json';

    IdHTTP1.Request.Accept := 'application/json';

   IdHTTP1.Request.ContentEncoding := 'utf-8';
   sstream := TStringStream.Create(lParams.text);
   idHttp1.Post(mUrl, sstream, lResponse);
   lResponse.Position := 0;
   result:=lResponse.DataString;

except
   on E: EIdHTTPProtocolException do
   begin
//   Memo_json_resposta.Lines.Text := e.ErrorMessage;
   ShowMessage(      e.ErrorMessage);
   end;
   end;
lParams.Free();
lResponse.Free();
end;



function tFormVendasPos.fTextaNome2( pTexto: AnsiString): AnsiString;

//Insere um Caracter qtd vezes em uma string
var
  x: Integer;
  nt: AnsiString;
  tecla: Char;
  qtd: integer;
begin
nt:='';
qtd:=length(pTexto);
for x:=1 to Qtd do
   begin
   tecla:=ptexto[x];
   if (tecla in ['A'..'Z']) or (tecla in ['a'..'z']) or (tecla in ['0'..'9'] ) or (tecla in ['<','>','?','/','\','.',',','=','"',':','-','+','*','%',' ','}','{','[',']','_','n','r'] )  then
      nt:=nt+tecla
   else
      nt:=nt+'';
   end;
result:=nt;
end;





function tFormVendasPos.AguardarRespostaPos(pIdVenda: integer; pUrl: String; const ATimeout: Integer): TRetornoPayGo;
var
  TempoInicio: DWORD;
  mBuscasConcluidas: boolean;

     function fGerarJson(pChaveId: Integer): String;
     var
       JsonRoot: TlkJSONobject;
       JsonList: TlkJSONlist;
       ItemObj: TlkJSONobject;
       I: Integer;
       S: String;
     begin
       JsonRoot := TlkJSONobject.Create;
       JsonList := TlkJSONlist.Create;
       try
         // Create and add child objects to the list
         JsonRoot.Add('vendaId', pChaveId);

         // Generate output text
         I := 0;
         S := TlkJSON.GenerateText(JsonRoot);
         result:=s;
       finally
         JsonRoot.Free; // Frees the root and all owned child objects/lists
       end;





     end;

     function fVerficarRecebimento: boolean;
     var
     dadosRetorno: tStrings;
     mRetorno: String;
     begin

        mRetorno := fEnviarPos(pUrl+'api/pos/retorno', fGerarJson(pIdVenda));

//   function fEnviarPos(pUrl, pJson: String): String;

        dadosRetorno:=TStringList.create;
        dadosRetorno.Text:=mRetorno;
        dadosRetorno.SaveToFile('c:\sge\retpos.txt');
        freeandnil(dadosRetorno);
        result:=false;



     end;
begin

mBuscasConcluidas :=false;



TempoInicio := GetTickCount;
while (mBuscasConcluidas=false) and  ( (GetTickCount - TempoInicio) < DWORD(ATimeout * 1000)) do
   begin
   Application.ProcessMessages;
   Sleep(100);
   fVerficarRecebimento;
   end;
end;






end.
