unit func_bde;


interface
uses  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,dbtables, BDE;

Procedure ModifyBDE(Path,Chave,Valor:String);

implementation


//Procedimento para modificar o BDe em tempo de execussão:
(*                                                                                                    *)
Procedure ModifyBDE(Path,Chave,Valor:String);
var ParamList: TParamList;
Lista:TStringList;
cfgMode:TConfigMode;
i:Integer;
begin
Lista:=TStringList.Create;
//Recupera Lista de Configurações
Session.GetConfigParams(Path,'',Lista);
//Verifica na lista, onde a chave modificada se encontra
For i:=0 to Lista.Count-1 do
   If Pos(UpperCase(Chave),UpperCase(Lista[i]))<>0 Then
      Lista[i]:=UpperCase(Chave)+'='+Valor;

//Salva o atual modo de configuração da variável de sessão
cfgMode:=Session.ConfigMode;
//Coloca em modo de alteração
Session.ConfigMode:=cmPersistent;
//Cria lista de parâmetros
ParamList := TParamList.Create(Lista);
//Chama API do BDE para modificar as configurações
Check(DbiCfgModifyRecord(nil, PChar(Path), ParamList.FieldCount,
PFLDDesc(ParamList.FieldDescs), ParamList.Buffer));
//Recupera o modo de configuração da variável de sessão
Session.ConfigMode:=cfgMode;
//Salva as configurações da sessão
Session.SaveConfigFile;
ParamList.Free;

Lista.Free;
End;




end.
