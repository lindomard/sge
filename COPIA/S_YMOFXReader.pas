unit S_YMOFXReader;

interface

uses classes, SysUtils, Controls,dialogs,func;

type
  TOFXItem = class
    MovType : string;
    MovDate : TDate;
    Valor : double;
    ID : string;
    Document : string;
    Desc : string;
    Conta : string;
    Banco_codigo : Integer;
    Banco_Nome : string;
    Agencia: String;
  end;

  TYMOFXReader = class(TComponent) 
  public 
    BankID : integer; 
    AccountID : string;
    AccountType : string; 
    InitialBalance : double; 
    FinalBalance : double; 
    constructor Create( AOwner: TComponent ); override; 
    destructor Destroy; override; 
    function Process: boolean; 
    function Get(iIndex: integer): TOFXItem;
    function Count: integer; 
  private 
    FOFXFile : string; 
    FListItems : TList; 
    procedure Clear; 
    procedure Delete( iIndex: integer ); 
    function Add: TOFXItem; 
    function PrepareFloat( sString : string ) : string; 
    function InfLine ( sLine : string ): string; 
    function FindString ( sSubString, sString : string ): boolean;
    function ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
  protected 
  published 
    property OFXFile: string read FOFXFile write FOFXFile; 
  end; 

procedure Register; 

implementation 

constructor TYMOFXReader.Create(AOwner: TComponent); 
begin 
  inherited Create(AOwner); 
  FListItems := TList.Create;
end; 

destructor TYMOFXReader.Destroy; 
begin 
  FListItems.Free; 
  inherited Destroy; 
end; 

procedure TYMOFXReader.Delete( iIndex: integer ); 
begin
  TOFXItem(FListItems.Items[iIndex]).Free;
  FListItems.Delete( iIndex ); 
end; 

procedure TYMOFXReader.Clear; 
//var 
//  i: integer; 
//  oPointer : Pointer; 
begin 
  while FListItems.Count > 0 do 
    Delete(0); 
  FListItems.Clear; 
end; 

function TYMOFXReader.Count: integer; 
begin
  Result := FListItems.Count;
end;

function TYMOFXReader.Get(iIndex: integer): TOFXItem;
begin
  Result := TOFXItem(FListItems.Items[iIndex]);
end;


function fNomeTag(pTexto: String): String;
var
mPosIni: Integer;
mPosFin: Integer;
begin
mPosIni := Pos('<', pTexto);
mPosFin := Pos('>', pTexto);
if (mPosIni=0) or (mPosFin=0) then
   result:=''
else
   result:=copy(pTexto,mPosIni,mPosFin-mPosIni+1);

end;
function TYMOFXReader.Process: boolean;
var
  oFile : TStringList;
  i : integer;
  oItem : TOFXItem;
  sLine : string;
  dBalance : double;
  mTag: String;
  mValTag: String;
  NomeBanco: String;
  Agencia: String;
begin
Result := false;
Clear;
if not FileExists(FOFXFile) then
  exit;
oFile := TStringList.Create;
oFile.LoadFromFile(FOFXFile);
dBalance := 0;
i := 0;
while i < oFile.Count do
    begin
    sLine := oFile.Strings[i];
    mTag  := fNomeTag(sLine);
    if trim(mTag)='' then
       begin
       Inc(i);
       continue;
       end;
    mValTag:=InfLine (sLine);
    if mTag='<BANKID>'  then // id do banco
       BankID := valint(mValTag)
    else if mTag='<BRANCHID>'  then // id do banco
       Agencia := mValTag
    else if mTag='<ACCTID>' then  // AccountID
       AccountID:= mValTag
    else if mTag='<ORG>' then  // Nome do Banco
       NomeBanco:= mValTag
    else if mTag='<ACCTTYPE>' then // AccountType
       AccountType:= mValTag
    else if mTag='<LEDGER>'  then // FinalBalance
       FinalBalance:= valfloat(mValTag)
    else if mTag='<STMTTRN>' then
       begin
       oItem := Add;
       oItem.Banco_Codigo:=bankID;
       oItem.Banco_Nome  :=NomeBanco;
       oItem.Conta       :=AccountID;
       oItem.Agencia     :=Agencia;
       end
    else if mTag='<TRNTYPE>' then
       oItem.MovType:= mValTag
    else if mTag='<DTPOSTED>' then
       oItem.MovDate:= EncodeDate(StrToIntDef(copy(mValTag,1,4), 0),
                       StrToIntDef(copy(mValTag,5,2), 0),
                       StrToIntDef(copy(mValTag,7,2), 0))
    else if mTag='<TRNAMT>' then
       begin
       oItem.Valor := valfloat(mudapv(mValTag));
       dBalance := dBalance - oItem.Valor;
       end
    else if mTag='<FITID>' then
       oItem.ID := mValTag
    else if mTag='<CHKNUM>' then
       oItem.Document := mValTag
    else if mTag='<MEMO>' then
       oItem.Desc := mValTag;
    Inc(i);
  end;
  InitialBalance := FinalBalance + dBalance;
  if oFile.Count>0 then
     Result := true
  else
     Result := false;

end;

function TYMOFXReader.PrepareFloat( sString : string ) : string;
begin 
  Result := sString; 
  Result := ReplaceString(Result, '.', DecimalSeparator); 
  Result := ReplaceString(Result, ',', DecimalSeparator); 
end; 

function TYMOFXReader.ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
var 
   iPosition: integer ; 
   sTempNew: string ; 
begin 
   iPosition := 1;
   sTempNew := ''; 
   while (iPosition > 0) do
   begin 
      if bInsensitive then 
        iPosition := AnsiPos(UpperCase(sOld),UpperCase(sString))
      else 
        iPosition := AnsiPos(sOld,sString); 
      if (iPosition > 0) then 
      begin
         sTempNew := sTempNew + copy(sString, 1, iPosition - 1) + sNew; 
         sString := copy(sString, iPosition + Length(sOld), Length(sString) ); 
      end; 
   end; 
   sTempNew := sTempNew + sString;
   Result := (sTempNew);
end;

function TYMOFXReader.InfLine ( sLine : string ): string;
var
  iTemp : integer;
  mValTemp: String;
begin
  Result := '';
  sLine := Trim(sLine);
  if FindString('>', sLine) then
  begin
    sLine := Trim(sLine);
    iTemp := Pos('>', sLine);
    mValTemp:=copy(sLine, iTemp+1, Length(sLine)-iTemp+1);
    iTemp := Pos('<', mValTemp);
    if iTemp=0 then
       Result := mValTemp
    else
       Result := copy(mValTemp,1,itemp-1);
  end;
end;

function TYMOFXReader.Add: TOFXItem;
var 
  oItem : TOFXItem; 
begin 
  oItem := TOFXItem.Create; 
  FListItems.Add(oItem); 
  Result := oItem; 
end; 

function TYMOFXReader.FindString ( sSubString, sString : string ): boolean; 
begin 
  Result := Pos(UpperCase(sSubString), UpperCase(sString)) > 0; 
end; 

procedure Register; 
begin 
  RegisterComponents('YoungArts', [TYMOFXReader]); 
end; 

end.
