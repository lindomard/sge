unit VOPadrao;

interface

uses DBXJSON, DBXJSONReflect; // ,sysutils;

type
  TVOPadrao = class
    public
      class function ObjectToJSON<O : class>(objeto: O): TJSONValue;
      class function JSONToObject<O : class>(json: TJSONValue): O;
  end;

implementation

{
const
JsonUt8  ='"  u0438\u0441\u043a \u043f\u043e \u0444\u0430\u043c\u0438\u043b\u0438\u0438, \u0438\u043c\u0435\u043d\u0438 (\u043e\u0442\u0447\u0435\u0441\u0442\u0432\u0443"';
 }
class function TVOPadrao.JSONToObject<O>(json: TJsonValue):O;
var
  deserializa: TJSONUnMarshal;
    LJSONValue: TJSONValue;

begin

if json is TJSONNull then
  Exit(nil);

deserializa := TJSONUnMarshal.Create;
try
//  json:=TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(JsonUt8),0);
//    LJSONObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(GJSONString), 0) as TJSONObject;

  Exit(O(deserializa.Unmarshal(json)))
finally
  deserializa.Free
  end;
end;

class function TVOPadrao.ObjectToJSON<O>(objeto: O): TJSONValue;
var
  serializa: TJSONMarshal;
begin
if Assigned(objeto) then
  begin
  serializa := TJSONMarshal.Create(TJSONConverter.Create);
  try
    Exit(serializa.Marshal(objeto));
  finally
    serializa.Free;
    end;
  end
else
  Exit(TJSONNull.Create);
end;

end.
