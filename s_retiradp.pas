unit s_retiradp;

interface
uses SysUtils;

function fParametrizarCaracteres(pTexto: String):String;


implementation


function fParametrizarCaracteres(pTexto: String):String;
var
  Cont: Integer;
  Resp: String;
  mcar: string;
  const
  mQuebraLinha = #13;
  mFimLinha = #10;


begin
{
result:=pTexto;
exit;
}
// lindomar061112025
//lindomarretirar

{
ptexto  := StringReplace(ptexto, '"', '\"', [rfReplaceAll, rfIgnoreCase]);
ptexto  := StringReplace(ptexto, mQuebraLinha , '', [rfReplaceAll, rfIgnoreCase]);
ptexto  := StringReplace(ptexto, mFimLinha, '', [rfReplaceAll, rfIgnoreCase]);

result:=ptexto;
exit;
}
resp:='';
for Cont := 1 to length(pTexto) do
  begin
    case pTexto [cont] of
    ' ' : mcar := '%20';
    '!' : mcar := '%21';
    '"' : mcar := '%22';
    '#' : mcar := '%23';
    '$' : mcar := '%24';
    '%' : mcar := '%25';
    '&' : mcar := '%26';
    '''' : mcar := '%27';
    '(' : mcar := '%28';
    ')' : mcar := '%29';
    '*' : mcar := '%2A';
    '+' : mcar := '%2B';
    ',' : mcar := '%2C';
    '-' : mcar := '%2D';
    '.' : mcar := '%2E';
    '/' : mcar := '%2F';
    ':' : mcar := '%3A';
    ';' : mcar := '%3B';
    '<' : mcar := '%3C';
    '=' : mcar := '%3D';
    '>' : mcar := '%3E';
    '?' : mcar := '%3F';
    '@' : mcar := '%40';
    '[' : mcar := '%5B';
    '\' : mcar := '%5C';
    ']' : mcar := '%5D';
    '^' : mcar := '%5E';
    '_' : mcar := '%5F';
    '`' : mcar := '%60';
    '{' : mcar := '%7B';
    '|' : mcar := '%7C';

 //   '}' : mcar := '%7D';

    '~' : mcar := '%7E';
    'Ç' : mcar := '%E2%80%9A';
    'É' : mcar := '%C6%92';
    'Ñ' : mcar := '%E2%80%9E';
    'Ö' : mcar := '%E2%80%A6';
    'Ü' : mcar := '%E2%80%A0';
    'á' : mcar := '%E2%80%A1';
    'à' : mcar := '%CB%86';
    'â' : mcar := '%E2%80%B0';
    'ä' : mcar := '%C5%A0';
    'ã' : mcar := '%E2%80%B9';
    'å' : mcar := '%C5%92';
    'ç' : mcar := '%C5%8D';
    'é' : mcar := '%C5%BD';
    'ë' : mcar := '%E2%80%98';
    'í' : mcar := '%E2%80%99';
    'ì' : mcar := '%E2%80%9C';
    'î' : mcar := '%E2%80%9D';
    'ï' : mcar := '%E2%80%A2';
    'ñ' : mcar := '%E2%80%93';
    'ó' : mcar := '%E2%80%94';
    'ò' : mcar := '%CB%9C';
    'ô' : mcar := '%E2%84';
    'ö' : mcar := '%C5%A1';
    'õ' : mcar := '%E2%80';
    'ú' : mcar := '%C5%93';
    'û' : mcar := '%C5%BE';
    'ü' : mcar := '%C5%B8';
    '°' : mcar := '%C2%A1';
    '¢' : mcar := '%C2%A2';
    '£' : mcar := '%C2%A3';
    '§' : mcar := '%C2%A4';
    '•' : mcar := '%C2%A5';
    '¶' : mcar := '%C2%A6';
    'ß' : mcar := '%C2%A7';
    '®' : mcar := '%C2%A8';
    '©' : mcar := '%C2%A9';
    '™' : mcar := '%C2%AA';
    '´' : mcar := '%C2%AB';
    '¨' : mcar := '%C2%AC';
    '≠' : mcar := '%C2%AD';
    'Æ' : mcar := '%C2%AE';
    'Ø' : mcar := '%C2%AF';
    '∞' : mcar := '%C2%B0';
    '±' : mcar := '%C2%B1';
    '≤' : mcar := '%C2%B2';
    '≥' : mcar := '%C2%B3';
    '¥' : mcar := '%C2%B4';
    'µ' : mcar := '%C2%B5';
    '∂' : mcar := '%C2%B6';
    '∑' : mcar := '%C2%B7';
    '∏' : mcar := '%C2%B8';
    'π' : mcar := '%C2%B9';
    '∫' : mcar := '%C2%BA';
    'ª' : mcar := '%C2%BB';
    'º' : mcar := '%C2%BC';
    'Ω' : mcar := '%C2%BD';
    'æ' : mcar := '%C2%BE';
    'ø' : mcar := '%C2%BF';
    '¿' : mcar := '%C3%80';
    '¡' : mcar := '%C3%81';
    '¬' : mcar := '%C3%82';
    '√' : mcar := '%C3%83';
    'ƒ' : mcar := '%C3%84';
    '≈' : mcar := '%C3%85';
    '∆' : mcar := '%C3%86';
    '«' : mcar := '%C3%87';
    '»' : mcar := '%C3%88';
    '…' : mcar := '%C3%89';
    ' ' : mcar := '%C3%8A';
    'À' : mcar := '%C3%8B';
    'Ã' : mcar := '%C3%8C';
    'Õ' : mcar := '%C3%8D';
    'Œ' : mcar := '%C3%8E';
    'œ' : mcar := '%C3%8F';
    '–' : mcar := '%C3%90';
    '—' : mcar := '%C3%91';
    '“' : mcar := '%C3%92';
    '”' : mcar := '%C3%93';
    '‘' : mcar := '%C3%94';
    '’' : mcar := '%C3%95';
    '÷' : mcar := '%C3%96';
    '◊' : mcar := '%C3%97';
    'ÿ' : mcar := '%C3%98';
    'Ÿ' : mcar := '%C3%99';
    '⁄' : mcar := '%C3%9A';
    '€' : mcar := '%C3%9B';
    '‹' : mcar := '%C3%9C';
    '›' : mcar := '%C3%9D';
    'ﬁ' : mcar := '%C3%9E';
    'ﬂ' : mcar := '%C3%9F';
    '‡' : mcar := '%C3%A0';
    '·' : mcar := '%C3%A1';
    '‚' : mcar := '%C3%A2';
    '„' : mcar := '%C3%A3';
    '‰' : mcar := '%C3%A4';
    'Â' : mcar := '%C3%A5';
    'Ê' : mcar := '%C3%A6';
    'Á' : mcar := '%C3%A7';
    'Ë' : mcar := '%C3%A8';
    'È' : mcar := '%C3%A9';
    'Í' : mcar := '%C3%AA';
    'Î' : mcar := '%C3%AB';
    'Ï' : mcar := '%C3%AC';
    'Ì' : mcar := '%C3%AD';
    'Ó' : mcar := '%C3%AE';
    'Ô' : mcar := '%C3%AF';
    '' : mcar := '%C3%B0';
    'Ò' : mcar := '%C3%B1';
    'Ú' : mcar := '%C3%B2';
    'Û' : mcar := '%C3%B3';
    'Ù' : mcar := '%C3%B4';
    'ı' : mcar := '%C3%B5';
    'ˆ' : mcar := '%C3%B6';
    '˜' : mcar := '%C3%B7';
    '¯' : mcar := '%C3%B8';
    '˘' : mcar := '%C3%B9';
    '˙' : mcar := '%C3%BA';
    '˚' : mcar := '%C3%BB';
    '¸' : mcar := '%C3%BC';
    '˝' : mcar := '%C3%BD';
    '˛' : mcar := '%C3%BE';
    'ˇ' : mcar := '%C3%BF';
   else
     mcar := pTexto [cont];
     end;
  resp:=resp+mcar;
  end;


Result:=Resp;

end;

end.


