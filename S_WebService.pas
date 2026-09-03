unit S_WebService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, SOAPConn,MidasLib,lerarq,func, DBTables, StdCtrls;

type
  TFrm_WebService = class(TForm)
    SoapConnection1: TSoapConnection;
    ClientDataSet1: TClientDataSet;
    Table1: TTable;
    lbl_localconexao: TLabel;
    lbl_encontrado: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fWS_CriaOracle(pNomeTab: String): Boolean;
    function fWS_CriaParadox(pNomeTab: String): Boolean;


  public
    { Public declarations }
    function fWS_Conectar(ptipo: Integer): Boolean;
    function fWS_CadCli(ptipo: Integer;pCnpj,pCPF: String): String;
    function fWS_CEP(ptipo: Integer;pLog,pBai,pCid,pUF,pCep: String): String;
    function fWS_CADPRO_UPDATE(ptipo: Integer;pCodpro,pCodemp,pPreco01,pPreco02,pPreco03:Real): String;

    function fAtualizaPrecosProdFilial(ptipo: Integer;
    pCodpro,pCodemp,
    pCodBar,pNivel,pPreco01,pPmc,pPreco02,pPmc02,pPreco03,pPmc03,pDesFin,pCodGru,
    pCodCon,pCodRam,pCodTip,pLista,pPrecoC,pPcoMC,pPcoFab,pEmbPad,pEmbMul,pComis,
    pUcpr,pPesoB,pPesoL
    ,pFracao,pCodFor,pQtdM3,pUndVda,pVdaMax,pIPI,pPrzVal_Anos,pPrzVal,
    pPrzVal_Dias,pPrazo: Real;
    pNome,pNome2,pMarca,pSit,pUnd,pTabIcm,pRegMs,pClas,pCodNcm,pSitCf
    ,pRefer,pApres: String;pDtuatp1,pDtuatp2,pDtuatp3
    ,pDATA_REPLICA,pDATAUA: TDateTime): String;

  end;


var
  Frm_WebService: TFrm_WebService;
  mConexao_URL: String;
//  PROVIDER_NAME é o nome do database
implementation

uses S_DM1, S_CliOutFil, S_DM5, S_DM6;

{$R *.dfm}

function tFrm_WebService.fWS_Conectar(ptipo: Integer): Boolean;
begin
if SoapConnection1.Connected then
   SoapConnection1.Connected:=false;

SoapConnection1.URL:='http://'+mConexao_URL+'/webservice_sge/SGE_WEBSERVER.exe/soap/IAppserver';
//Frm_CliOutFil.edit1.Text:=Frm_WebService.SoapConnection1.URL;
//Frm_CliOutFil.Update;
try
   SoapConnection1.Connected:=true;
   result:=true;
except
   result:=false;
   end;
end;

function TFrm_WebService.fWS_CADPRO_UPDATE(ptipo: Integer;pCodpro,pCodemp,pPreco01,pPreco02,pPreco03:Real): String;
// ptipo=1 tabela paradox
//       0 Tabela Oracle
var
mTabRetorno: String;
begin
if ClientDataSet1.Active then
   ClientDataSet1.Close;
ClientDataSet1.ProviderName:='dps_cadpro_update';

ClientDataSet1.Params.Clear;
ClientDataSet1.Params.CreateParam(ftString,'PRECO1',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'CODPRO',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'CODEMP',ptInput);
ClientDataSet1.Params[0].AsFloat :=pPreco01;

ClientDataSet1.Params[1].AsFloat:=pCodpro;
ClientDataSet1.Params[2].AsFloat:=pCodemp;

try
   ClientDataSet1.Execute;
except
  result:='-2'; // erro ao tentar ler
  exit;
  end;
result:='-1'; // erro ao tentar ler
end;


function TFrm_WebService.fWS_CadCli(ptipo: Integer;pCnpj,pCPF: String): String;
// ptipo=1 tabela paradox
//       0 Tabela Oracle
var
mTabRetorno: String;
begin
if ClientDataSet1.Active then
   ClientDataSet1.Close;
ClientDataSet1.ProviderName:='Oracle_dpsClientes';


ClientDataSet1.Params.Clear;
ClientDataSet1.Params.CreateParam(ftString,'CNPJ',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'CPF',ptInput);
ClientDataSet1.Params[0].AsString:=pCnpj;
ClientDataSet1.Params[1].AsString :=pCPF;

try
   ClientDataSet1.Open;
except
  result:='-2'; // erro ao tentar ler
  exit;
  end;
if ClientDataSet1.IsEmpty then
   result:='-1'
else
   begin
   if ptipo=0 then // sem tabela
      begin
      mTabRetorno:='-0' // Retorno valores no dataset;
      end
   else if ptipo=0 then // oracle
      begin
      mTabRetorno:=fProcTemp(01);
      if not fWS_CriaOracle(mTabRetorno) then
         mTabRetorno:='-3' // erro ao gerar o arquivo;
      end
   else // paradox
      begin
      mTabRetorno:=fProcTemp(11);
      end;
   result:=mTabRetorno;
   end;

end;


function TFrm_WebService.fWS_CEP(ptipo: Integer;pLog,pBai,pCid,pUF,pCep: String): String;


// ptipo=1 tabela paradox
//       0 Tabela Oracle
var
mTabRetorno: String;
begin
if ClientDataSet1.Active then
   ClientDataSet1.Close;
ClientDataSet1.ProviderName:='Oracle_dpsCEP';

ClientDataSet1.Params.Clear;
ClientDataSet1.Params.CreateParam(ftString,'DESC02',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'BAI',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'CID',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'UF',ptInput);
ClientDataSet1.Params.CreateParam(ftString,'CEP',ptInput);
ClientDataSet1.Params[0].AsString :=fPreencherVazio(pLog);
ClientDataSet1.Params[1].AsString :=fPreencherVazio(pBai);
ClientDataSet1.Params[2].AsString :=fPreencherVazio(pCid);
if trim(pUF)='' then
   ClientDataSet1.Params[3].AsString :='%'
else
   ClientDataSet1.Params[3].AsString :=pUF;
if trim(pCep)='' then
   ClientDataSet1.Params[4].AsString :='%'
else
   ClientDataSet1.Params[4].AsString :=pCep;


try
   ClientDataSet1.Open;
except
  result:='-2'; // erro ao tentar ler
  exit;
  end;
if ClientDataSet1.IsEmpty then
   result:='-1'
else
   begin
   if ptipo=0 then // sem tabela
      begin
      mTabRetorno:='-0' // Retorno valores no dataset;
      end
   else if ptipo=0 then // oracle
      begin
      mTabRetorno:=fProcTemp(01);
      if not fWS_CriaOracle(mTabRetorno) then
         mTabRetorno:='-3' // erro ao gerar o arquivo;
      end
   else // paradox
      begin
      mTabRetorno:=fProcTemp(11);
      end;
   result:=mTabRetorno;
   end;

end;


function TFrm_WebService.fWS_CriaOracle(pNomeTab: String): Boolean;
var
x: Integer;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Create Table '+pNomeTab+'(');
mcinst:='';
for x:=0 to ClientDataSet1.FieldCount-1 do
   begin
   if (ClientDataSet1.Fields[x].DataType=ftFloat) or
      (ClientDataSet1.Fields[x].DataType=ftCurrency) or
      (ClientDataSet1.Fields[x].DataType=ftBCD) then
       DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcFloat)
   else if (ClientDataSet1.Fields[x].DataType=ftinteger) or
      (ClientDataSet1.Fields[x].DataType=ftWord) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcInteger)
   else if (ClientDataSet1.Fields[x].DataType=ftString) then
      begin
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcString);
      if ClientDataSet1.Fields[x].Size>0 then
         DM1.Query2.Sql.add('('+InttoStr(ClientDataSet1.Fields[x].Size)+')');
      end
   else if (ClientDataSet1.Fields[x].DataType=ftDate) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcData)
   else if (ClientDataSet1.Fields[x].DataType=ftDateTime) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcDataHora)
   else if (ClientDataSet1.Fields[x].DataType=ftTime) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcTime)
   else if (ClientDataSet1.Fields[x].DataType=ftBlob) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcBlob)
   else if (ClientDataSet1.Fields[x].DataType=ftMemo) then
      DM1.Query2.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pcMemo)
   else
      begin
      if ClientDataSet1.Fields[x].DataType=ftUnknown then
         mcinst2:='ftunknown'
      else if ClientDataSet1.Fields[x].DataType=ftString then
         mcinst2:='ftString'
      else if ClientDataSet1.Fields[x].DataType=ftSmallint then
         mcinst2:='ftSmallint'
      else if ClientDataSet1.Fields[x].DataType=ftInteger then
         mcinst2:='ftInteger'
      else if ClientDataSet1.Fields[x].DataType=ftWord then
         mcinst2:='ftWord'
      else if ClientDataSet1.Fields[x].DataType=ftBoolean then
         mcinst2:='ftBoolean'
      else if ClientDataSet1.Fields[x].DataType=ftFloat then
         mcinst2:='ftFloat'
      else if ClientDataSet1.Fields[x].DataType=ftCurrency then
         mcinst2:='ftCurrency'
      else if ClientDataSet1.Fields[x].DataType=ftBCD then
         mcinst2:='ftBCD'
      else if ClientDataSet1.Fields[x].DataType=ftDate then
         mcinst2:='ftDate'
      else if ClientDataSet1.Fields[x].DataType=ftTime then
         mcinst2:='ftTime'
      else if ClientDataSet1.Fields[x].DataType=ftDateTime then
         mcinst2:='ftDateTime'
      else if ClientDataSet1.Fields[x].DataType=ftBytes then
         mcinst2:='ftBytes'
      else if ClientDataSet1.Fields[x].DataType=ftVarBytes then
         mcinst2:='ftVarBytes'
      else if ClientDataSet1.Fields[x].DataType=ftAutoInc then
         mcinst2:='ftAutoInc'
      else if ClientDataSet1.Fields[x].DataType=ftBlob then
         mcinst2:='ftBlob'
      else if ClientDataSet1.Fields[x].DataType=ftMemo then
         mcinst2:='ftMemo'
      else if ClientDataSet1.Fields[x].DataType=ftGraphic then
         mcinst2:='ftGraphic'
      else if ClientDataSet1.Fields[x].DataType=ftFmtMemo then
         mcinst2:='ftFmtMemo'
      else if ClientDataSet1.Fields[x].DataType=ftParadoxOle then
         mcinst2:='ftParadoxOle'
      else if ClientDataSet1.Fields[x].DataType=ftDBaseOle then
         mcinst2:='ftDBaseOle'
      else if ClientDataSet1.Fields[x].DataType=ftTypedBinary then
         mcinst2:='ftTypedBinary'
      else if ClientDataSet1.Fields[x].DataType=ftCursor then
         mcinst2:='ftCursor'
      else if ClientDataSet1.Fields[x].DataType=ftFixedChar then
         mcinst2:='ftFixedChar'
      else if ClientDataSet1.Fields[x].DataType=ftWideString then
         mcinst2:='ftWideString'
      else if ClientDataSet1.Fields[x].DataType=ftLargeint then
         mcinst2:='ftLargeint'
      else if ClientDataSet1.Fields[x].DataType=ftADT then
         mcinst2:='ftADT'
      else if ClientDataSet1.Fields[x].DataType=ftArray then
         mcinst2:='ftArray'
      else if ClientDataSet1.Fields[x].DataType=ftReference then
         mcinst2:='ftReference'
      else if ClientDataSet1.Fields[x].DataType=ftDataSet then
         mcinst2:='ftDataSet'
      else if ClientDataSet1.Fields[x].DataType=ftOraBlob then
         mcinst2:='ftOraBlob'
      else if ClientDataSet1.Fields[x].DataType=ftOraClob then
         mcinst2:='ftOraClob'
      else if ClientDataSet1.Fields[x].DataType=ftVariant then
         mcinst2:='ftVariant'
      else if ClientDataSet1.Fields[x].DataType=ftInterface then
         mcinst2:='ftInterface'
      else if ClientDataSet1.Fields[x].DataType=ftIDispatch then
         mcinst2:='ftIDispatch'
      else if ClientDataSet1.Fields[x].DataType=ftGuid then
         mcinst2:='ftGuid'
      else if ClientDataSet1.Fields[x].DataType=ftTimeStamp then
         mcinst2:='ftTimeStamp'
      else if ClientDataSet1.Fields[x].DataType=ftFMTBcd then
         mcinst2:='ftFMTBcd'
      else
         mcinst2:='Nenhum acima';
      MessageDlg('Campo não Identificado: '+ClientDataSet1.Fields[x].FieldName
                +#13+' Valor: '+ClientDataSet1.Fields[x].AsString
                +#13+' tipo : '+mcinst2,mtWarning, [mbOk],0);
      result:=false;
      exit;
      end;
   mcinst:=',';
   end;
DM1.Query2.SQL.add(')');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
if Table1.Active then
   Table1.Close;
Table1.DatabaseName:='SG_ASSOC';
Table1.TableName:=pNomeTab;
Table1.Open;
ClientDataSet1.First;
While not ClientDataSet1.Eof do
   begin
   Table1.Append;
   for x:=0 to ClientDataSet1.FieldCount-1 do
      begin
      Table1.FieldByName(ClientDataSet1.Fields[x].FieldName).Value:=ClientDataSet1.Fields[x].Value;
      end;
   Table1.Post;
   ClientDataSet1.Next;
   end;
Table1.Close;
result:=true;
end;

function TFrm_WebService.fWS_CriaParadox(pNomeTab: String): Boolean;
var
x: Integer;
begin
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create Table '+pNomeTab+'(');
mcinst:='';
for x:=0 to ClientDataSet1.FieldCount-1 do
   begin
   if (ClientDataSet1.Fields[x].DataType=ftFloat) or
      (ClientDataSet1.Fields[x].DataType=ftCurrency) or
      (ClientDataSet1.Fields[x].DataType=ftBCD) then
       DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcFloat)
   else if (ClientDataSet1.Fields[x].DataType=ftinteger) or
      (ClientDataSet1.Fields[x].DataType=ftWord) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcInteger)
   else if (ClientDataSet1.Fields[x].DataType=ftString) then
      begin
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcString);
      if ClientDataSet1.Fields[x].Size>0 then
         DM5.Query1.Sql.add('('+InttoStr(ClientDataSet1.Fields[x].Size)+')');
      end
   else if (ClientDataSet1.Fields[x].DataType=ftDate) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcData)
   else if (ClientDataSet1.Fields[x].DataType=ftDateTime) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcDataHora)
   else if (ClientDataSet1.Fields[x].DataType=ftTime) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcHora)
   else if (ClientDataSet1.Fields[x].DataType=ftBlob) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcBlob)
   else if (ClientDataSet1.Fields[x].DataType=ftMemo) then
      DM5.Query1.SQL.Add(mcinst+ClientDataSet1.Fields[x].FieldName+' '+pTmpcMemo)
   else
      begin
      if ClientDataSet1.Fields[x].DataType=ftUnknown then
         mcinst2:='ftunknown'
      else if ClientDataSet1.Fields[x].DataType=ftString then
         mcinst2:='ftString'
      else if ClientDataSet1.Fields[x].DataType=ftSmallint then
         mcinst2:='ftSmallint'
      else if ClientDataSet1.Fields[x].DataType=ftInteger then
         mcinst2:='ftInteger'
      else if ClientDataSet1.Fields[x].DataType=ftWord then
         mcinst2:='ftWord'
      else if ClientDataSet1.Fields[x].DataType=ftBoolean then
         mcinst2:='ftBoolean'
      else if ClientDataSet1.Fields[x].DataType=ftFloat then
         mcinst2:='ftFloat'
      else if ClientDataSet1.Fields[x].DataType=ftCurrency then
         mcinst2:='ftCurrency'
      else if ClientDataSet1.Fields[x].DataType=ftBCD then
         mcinst2:='ftBCD'
      else if ClientDataSet1.Fields[x].DataType=ftDate then
         mcinst2:='ftDate'
      else if ClientDataSet1.Fields[x].DataType=ftTime then
         mcinst2:='ftTime'
      else if ClientDataSet1.Fields[x].DataType=ftDateTime then
         mcinst2:='ftDateTime'
      else if ClientDataSet1.Fields[x].DataType=ftBytes then
         mcinst2:='ftBytes'
      else if ClientDataSet1.Fields[x].DataType=ftVarBytes then
         mcinst2:='ftVarBytes'
      else if ClientDataSet1.Fields[x].DataType=ftAutoInc then
         mcinst2:='ftAutoInc'
      else if ClientDataSet1.Fields[x].DataType=ftBlob then
         mcinst2:='ftBlob'
      else if ClientDataSet1.Fields[x].DataType=ftMemo then
         mcinst2:='ftMemo'
      else if ClientDataSet1.Fields[x].DataType=ftGraphic then
         mcinst2:='ftGraphic'
      else if ClientDataSet1.Fields[x].DataType=ftFmtMemo then
         mcinst2:='ftFmtMemo'
      else if ClientDataSet1.Fields[x].DataType=ftParadoxOle then
         mcinst2:='ftParadoxOle'
      else if ClientDataSet1.Fields[x].DataType=ftDBaseOle then
         mcinst2:='ftDBaseOle'
      else if ClientDataSet1.Fields[x].DataType=ftTypedBinary then
         mcinst2:='ftTypedBinary'
      else if ClientDataSet1.Fields[x].DataType=ftCursor then
         mcinst2:='ftCursor'
      else if ClientDataSet1.Fields[x].DataType=ftFixedChar then
         mcinst2:='ftFixedChar'
      else if ClientDataSet1.Fields[x].DataType=ftWideString then
         mcinst2:='ftWideString'
      else if ClientDataSet1.Fields[x].DataType=ftLargeint then
         mcinst2:='ftLargeint'
      else if ClientDataSet1.Fields[x].DataType=ftADT then
         mcinst2:='ftADT'
      else if ClientDataSet1.Fields[x].DataType=ftArray then
         mcinst2:='ftArray'
      else if ClientDataSet1.Fields[x].DataType=ftReference then
         mcinst2:='ftReference'
      else if ClientDataSet1.Fields[x].DataType=ftDataSet then
         mcinst2:='ftDataSet'
      else if ClientDataSet1.Fields[x].DataType=ftOraBlob then
         mcinst2:='ftOraBlob'
      else if ClientDataSet1.Fields[x].DataType=ftOraClob then
         mcinst2:='ftOraClob'
      else if ClientDataSet1.Fields[x].DataType=ftVariant then
         mcinst2:='ftVariant'
      else if ClientDataSet1.Fields[x].DataType=ftInterface then
         mcinst2:='ftInterface'
      else if ClientDataSet1.Fields[x].DataType=ftIDispatch then
         mcinst2:='ftIDispatch'
      else if ClientDataSet1.Fields[x].DataType=ftGuid then
         mcinst2:='ftGuid'
      else if ClientDataSet1.Fields[x].DataType=ftTimeStamp then
         mcinst2:='ftTimeStamp'
      else if ClientDataSet1.Fields[x].DataType=ftFMTBcd then
         mcinst2:='ftFMTBcd'
      else
         mcinst2:='Nenhum acima';
      MessageDlg('Campo não Identificado: '+ClientDataSet1.Fields[x].FieldName
                +#13+' Valor: '+ClientDataSet1.Fields[x].AsString
                +#13+' tipo : '+mcinst2,mtWarning, [mbOk],0);
      result:=false;
      exit;
      end;
   mcinst:=',';
   end;
DM5.Query1.SQL.add(')');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
if Table1.Active then
   Table1.Close;
Table1.DatabaseName:='C:\SGE\TEMP';
Table1.TableName:=pNomeTab;
Table1.Open;
ClientDataSet1.First;
While not ClientDataSet1.Eof do
   begin
   Table1.Append;
   for x:=0 to ClientDataSet1.FieldCount-1 do
      begin
      Table1.FieldByName(ClientDataSet1.Fields[x].FieldName).Value:=ClientDataSet1.Fields[x].Value;
      end;
   Table1.Post;
   ClientDataSet1.Next;
   end;
Table1.Close;
result:=true;
end;

procedure TFrm_WebService.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;


function TFrm_WebService.fAtualizaPrecosProdFilial(ptipo: Integer;
pCodpro,pCodemp,
pCodBar,pNivel,pPreco01,pPmc,pPreco02,pPmc02,pPreco03,pPmc03,pDesFin,pCodGru,
pCodCon,pCodRam,pCodTip,pLista,pPrecoC,pPcoMC,pPcoFab,pEmbPad,pEmbMul,pComis,
pUcpr,pPesoB,pPesoL
,pFracao,pCodFor,pQtdM3,pUndVda,pVdaMax,pIPI,pPrzVal_Anos,pPrzVal,
pPrzVal_Dias,pPrazo: Real;
pNome,pNome2,pMarca,pSit,pUnd,pTabIcm,pRegMs,pClas,pCodNcm,pSitCf
,pRefer,pApres: String;
pDtuatp1,pDtuatp2,pDtuatp3,pDATA_REPLICA,pDATAUA: TDateTime): String;
// resultados -1 ok
//            -2 erro
var
mResult: string;
begin
mResult:='-1';
if not DM6.mem_parlcd.Active then
   begin
   DM6.Tb_ParLCD.Close;
   DM6.Tb_ParLCD.SQL.clear;
   DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
   DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
   DM6.Tb_ParLCD.Open;
   DM6.mem_parlcd.Close;
   DM6.mem_parlcd.Open;

   While not DM6.Tb_ParLCD.Eof do
      begin
      DM6.mem_parlcd.Append;
      DM6.mem_parlcddescloc.AsString:=DM6.Tb_ParLCDdescloc.AsString;
      DM6.mem_parlcdendloc.AsString :=DM6.Tb_ParLCDendloc.AsString;
      DM6.mem_parlcdativo.AsString  :='S';
      DM6.mem_parlcd.Post;
      DM6.Tb_ParLCD.Next;
      end;
   end;
DM6.mem_parlcd.First;
if DM6.mem_parlcd.IsEmpty then
   begin
   mResult:='-2';
   exit;
   end;

While not DM6.mem_parlcd.Eof do
   begin
   if Trim(DM6.mem_parlcdendloc.AsString)='' then
      begin
      DM6.mem_parlcd.Next;
      Continue;
      end;
   if dm6.mem_parlcdativo.AsString='N' then
      begin
      DM6.mem_parlcd.Next;
      Continue;
      end;
   mConexao_URL:=DM6.mem_parlcdendloc.AsString;
   lbl_localconexao.Caption:='Pesquisando em: '+DM6.mem_parlcddescloc.Value;
   Update;
   if not fWS_Conectar(0) then
      begin
      mResult:='-2';
      if fmensagem('Não foi possivel conectar: '+DM6.mem_parlcddescloc.AsString
               +' Deseja que continue Tentando?',0,['1','2'],1)=mrNo then
         begin
         DM6.mem_parlcd.Edit;
         DM6.mem_parlcdativo.AsString  :='N';
         DM6.mem_parlcd.Post;
         DM6.mem_parlcd.Next;
         continue;
         end
      else
         begin
         DM6.mem_parlcd.Next;
         Continue;
         end;
      end;
   if ClientDataSet1.Active then
      ClientDataSet1.Close;
   ClientDataSet1.ProviderName:='dps_cadpro_conta';
   ClientDataSet1.Params.Clear;
   ClientDataSet1.Params.CreateParam(ftString,'PDCODPRO',ptInput);
   ClientDataSet1.Params.CreateParam(ftString,'PDCODEMP',ptInput);
   ClientDataSet1.Params.ParamByName('PDCODPRO').AsString:=FloatToStr(pCodpro);
   ClientDataSet1.Params.ParamByName('PDCODEMP').AsString:=FloatToStr(pCodemp);
   try
      ClientDataSet1.Open;
   except
      mResult:='-2';
      if fmensagem('Não foi possivel conectar: '+DM6.mem_parlcddescloc.AsString
               +' Deseja que continue Tentando?',0,['1','2'],1)=mrNo then
         begin
         DM6.mem_parlcd.Edit;
         DM6.mem_parlcdativo.AsString  :='N';
         DM6.mem_parlcd.Post;
         DM6.mem_parlcd.Next;
         continue;
         end
      else
         begin
         DM6.mem_parlcd.Next;
         Continue;
         end;
      end;
   if ClientDataSet1.IsEmpty then
//   if ClientDataSet1.fields[0].AsInteger<1 then
   // se nao encontrou entao sera incluso
      begin
      if ClientDataSet1.Active then
         ClientDataSet1.Close;
      ClientDataSet1.ProviderName:='dps_cadpro_insert';
      ClientDataSet1.Params.Clear;
      ClientDataSet1.Params.CreateParam(ftString,'PDCODPRO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODEMP',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODBAR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNIVEL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO1',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC02',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC03',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDESFIN',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODGRU',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODCON',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODRAM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODTIP',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDLISTA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECOC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPCOMC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPCODFAB',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDEMBPAD',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDEMBMUL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCOMIS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUCPR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPESOB',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPESOL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNOME',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNOME2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDMARCA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDSIT',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUND',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDTABICM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDREGMS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCLAS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODNCM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDSITCF',ptInput);

      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP1',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDREFER',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDAPRES',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDFRACAO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODFOR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDQTDM3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUNDVDA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDVDAMAXM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDIPI',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL_ANOS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL_DIAS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRAZO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDATA_REPLICA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDATAUA',ptInput);




      ClientDataSet1.Params.ParamByName('PDCODPRO').AsFloat:=pCodpro;
      ClientDataSet1.Params.ParamByName('PDCODEMP').AsFloat:=pCodemp;
      ClientDataSet1.Params.ParamByName('PDCODBAR').AsFloat:=pCodBar;
      ClientDataSet1.Params.ParamByName('PDNIVEL').AsFloat:=pNivel;
      ClientDataSet1.Params.ParamByName('PDPRECO1').AsFloat:=pPreco01;
      ClientDataSet1.Params.ParamByName('PDPMC').AsFloat:=pPmc;
      ClientDataSet1.Params.ParamByName('PDPRECO2').AsFloat:=pPreco02;
      ClientDataSet1.Params.ParamByName('PDPMC02').AsFloat:=pPmc02;
      ClientDataSet1.Params.ParamByName('PDPRECO3').AsFloat:=pPreco03;
      ClientDataSet1.Params.ParamByName('PDPMC03').AsFloat:=pPmc03;
      ClientDataSet1.Params.ParamByName('PDDESFIN').AsFloat:=pDesFin;
      ClientDataSet1.Params.ParamByName('PDCODGRU').AsFloat:=pCodGru;
      ClientDataSet1.Params.ParamByName('PDCODCON').AsFloat:=pCodCon;
      ClientDataSet1.Params.ParamByName('PDCODRAM').AsFloat:=pCodRam;
      ClientDataSet1.Params.ParamByName('PDCODTIP').AsFloat:=pCodTip;
      ClientDataSet1.Params.ParamByName('PDLISTA').AsFloat:=pLista;
      ClientDataSet1.Params.ParamByName('PDPRECOC').AsFloat:=pPrecoC;
      ClientDataSet1.Params.ParamByName('PDPCOMC').AsFloat :=pPcoMC;
      ClientDataSet1.Params.ParamByName('PDPCODFAB').AsFloat:=pPcoFab;
      ClientDataSet1.Params.ParamByName('PDEMBPAD').AsFloat:=pEmbPad;
      ClientDataSet1.Params.ParamByName('PDEMBMUL').AsFloat:=pEmbMul;
      ClientDataSet1.Params.ParamByName('PDCOMIS').AsFloat:=pComis;
      ClientDataSet1.Params.ParamByName('PDUCPR').AsFloat:=pUcpr;
      ClientDataSet1.Params.ParamByName('PDPESOB').AsFloat:=pPesoB;
      ClientDataSet1.Params.ParamByName('PDPESOL').AsFloat:=pPesoL;
      ClientDataSet1.Params.ParamByName('PDNOME').AsString :=pNome;
      ClientDataSet1.Params.ParamByName('PDNOME2').AsString:=pNome2;
      ClientDataSet1.Params.ParamByName('PDMARCA').AsString:=pMarca;
      ClientDataSet1.Params.ParamByName('PDSIT').AsString:=pSit;
      ClientDataSet1.Params.ParamByName('PDUND').AsString:=pUnd;
      ClientDataSet1.Params.ParamByName('PDTABICM').AsString:=pTabIcm;
      ClientDataSet1.Params.ParamByName('PDREGMS').AsString:=pRegMs;
      ClientDataSet1.Params.ParamByName('PDCLAS').AsString:=pClas;
      ClientDataSet1.Params.ParamByName('PDCODNCM').AsString:=pCodNcm;
      ClientDataSet1.Params.ParamByName('PDSITCF').AsString:=pSitCf;

      ClientDataSet1.Params.ParamByName('PDDTUATP1').Value:=pDtuatp1;
      ClientDataSet1.Params.ParamByName('PDDTUATP2').Value:=pDtuatp2;
      ClientDataSet1.Params.ParamByName('PDDTUATP3').Value:=pDtuatp3;

      ClientDataSet1.Params.ParamByName('PDREFER').AsString:=pRefer;


      ClientDataSet1.Params.ParamByName('PDAPRES').AsString:=pApres;
      ClientDataSet1.Params.ParamByName('PDFRACAO').AsFloat:=pFracao;
      ClientDataSet1.Params.ParamByName('PDCODFOR').AsFloat:=pCodFor;
      ClientDataSet1.Params.ParamByName('PDQTDM3').AsFloat:=pQtdM3;

      ClientDataSet1.Params.ParamByName('PDUNDVDA').AsFloat:=pUndVda;

      ClientDataSet1.Params.ParamByName('PDVDAMAXM').AsFloat:=pVdaMax;

      ClientDataSet1.Params.ParamByName('PDIPI').AsFloat:=pIPI;
      ClientDataSet1.Params.ParamByName('PDPRZVAL_ANOS').AsFloat:=pPrzVal_Anos;
      ClientDataSet1.Params.ParamByName('PDPRZVAL').AsFloat:=pPrzVal;
      ClientDataSet1.Params.ParamByName('PDPRZVAL_DIAS').AsFloat:=pPrzVal_Dias;
      ClientDataSet1.Params.ParamByName('PDPRAZO').AsFloat:=pPrazo;
      ClientDataSet1.Params.ParamByName('PDDATA_REPLICA').Value:=pDATA_REPLICA;
      ClientDataSet1.Params.ParamByName('PDDATAUA').Value      :=pDATAUA;

      try
         ClientDataSet1.Execute;
      except
         mResult:='-2';
         DM6.mem_parlcd.Next;
         Continue;
         end;
      end
   else
   // se encontrou entao sera alterado
      begin
      if ClientDataSet1.Active then
         ClientDataSet1.Close;
      ClientDataSet1.ProviderName:='dps_cadpro_update';
      ClientDataSet1.Params.Clear;
      ClientDataSet1.Params.CreateParam(ftString,'PDCODBAR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNIVEL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO1',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC02',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECO3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPMC03',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDESFIN',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODGRU',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODCON',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODRAM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODTIP',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDLISTA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRECOC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPCOMC',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPCODFAB',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDEMBPAD',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDEMBMUL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCOMIS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUCPR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPESOB',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPESOL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNOME',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDNOME2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDMARCA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDSIT',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUND',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDTABICM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDREGMS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCLAS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODNCM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDSITCF',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP1',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP2',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDTUATP3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDREFER',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDAPRES',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDFRACAO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODFOR',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDQTDM3',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDUNDVDA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDVDAMAXM',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDIPI',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL_ANOS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRZVAL_DIAS',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDPRAZO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDATA_REPLICA',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDDATAUA',ptInput);

      ClientDataSet1.Params.CreateParam(ftString,'PDCODPRO',ptInput);
      ClientDataSet1.Params.CreateParam(ftString,'PDCODEMP',ptInput);


//      ClientDataSet1.Params.ParamByName('PDCODPRO').AsString:=FloatToStr(pCodpro);
//      ClientDataSet1.Params.ParamByName('PDCODEMP').AsString:=FloatToStr(pCodemp);

      ClientDataSet1.Params.ParamByName('PDCODBAR').AsFloat:=pCodBar;
      ClientDataSet1.Params.ParamByName('PDNIVEL').AsFloat:=pNivel;
      ClientDataSet1.Params.ParamByName('PDPRECO1').AsFloat:=pPreco01;
      ClientDataSet1.Params.ParamByName('PDPMC').AsFloat:=pPmc;
      ClientDataSet1.Params.ParamByName('PDPRECO2').AsFloat:=pPreco02;
      ClientDataSet1.Params.ParamByName('PDPMC02').AsFloat:=pPmc02;
      ClientDataSet1.Params.ParamByName('PDPRECO3').AsFloat:=pPreco03;
      ClientDataSet1.Params.ParamByName('PDPMC03').AsFloat:=pPmc03;
      ClientDataSet1.Params.ParamByName('PDDESFIN').AsFloat:=pDesFin;
      ClientDataSet1.Params.ParamByName('PDCODGRU').AsFloat:=pCodGru;
      ClientDataSet1.Params.ParamByName('PDCODCON').AsFloat:=pCodCon;
      ClientDataSet1.Params.ParamByName('PDCODRAM').AsFloat:=pCodRam;
      ClientDataSet1.Params.ParamByName('PDCODTIP').AsFloat:=pCodTip;
      ClientDataSet1.Params.ParamByName('PDLISTA').AsFloat:=pLista;
      ClientDataSet1.Params.ParamByName('PDPRECOC').AsFloat:=pPrecoC;
      ClientDataSet1.Params.ParamByName('PDPCOMC').AsFloat :=pPcoMC;
      ClientDataSet1.Params.ParamByName('PDPCODFAB').AsFloat:=pPcoFab;
      ClientDataSet1.Params.ParamByName('PDEMBPAD').AsFloat:=pEmbPad;
      ClientDataSet1.Params.ParamByName('PDEMBMUL').AsFloat:=pEmbMul;
      ClientDataSet1.Params.ParamByName('PDCOMIS').AsFloat:=pComis;
      ClientDataSet1.Params.ParamByName('PDUCPR').AsFloat:=pUcpr;
      ClientDataSet1.Params.ParamByName('PDPESOB').AsFloat:=pPesoB;
      ClientDataSet1.Params.ParamByName('PDPESOL').AsFloat:=pPesoL;
      ClientDataSet1.Params.ParamByName('PDNOME').AsString :=pNome;
      ClientDataSet1.Params.ParamByName('PDNOME2').AsString:=pNome2;
      ClientDataSet1.Params.ParamByName('PDMARCA').AsString:=pMarca;
      ClientDataSet1.Params.ParamByName('PDSIT').AsString:=pSit;
      ClientDataSet1.Params.ParamByName('PDUND').AsString:=pUnd;
      ClientDataSet1.Params.ParamByName('PDTABICM').AsString:=pTabIcm;
      ClientDataSet1.Params.ParamByName('PDREGMS').AsString:=pRegMs;
      ClientDataSet1.Params.ParamByName('PDCLAS').AsString:=pClas;
      ClientDataSet1.Params.ParamByName('PDCODNCM').AsString:=pCodNcm;
      ClientDataSet1.Params.ParamByName('PDSITCF').AsString:=pSitCf;


      ClientDataSet1.Params.ParamByName('PDDTUATP1').Value:=pDtuatp1;
      ClientDataSet1.Params.ParamByName('PDDTUATP2').Value:=pDtuatp2;
      ClientDataSet1.Params.ParamByName('PDDTUATP3').Value:=pDtuatp3;

      ClientDataSet1.Params.ParamByName('PDREFER').AsString:=pRefer;


      ClientDataSet1.Params.ParamByName('PDAPRES').AsString:=pApres;
      ClientDataSet1.Params.ParamByName('PDFRACAO').AsFloat:=pFracao;
      ClientDataSet1.Params.ParamByName('PDCODFOR').AsFloat:=pCodFor;
      ClientDataSet1.Params.ParamByName('PDQTDM3').AsFloat:=pQtdM3;

      ClientDataSet1.Params.ParamByName('PDUNDVDA').AsFloat:=pUndVda;

      ClientDataSet1.Params.ParamByName('PDVDAMAXM').AsFloat:=pVdaMax;

      ClientDataSet1.Params.ParamByName('PDIPI').AsFloat:=pIPI;
      ClientDataSet1.Params.ParamByName('PDPRZVAL_ANOS').AsFloat:=pPrzVal_Anos;
      ClientDataSet1.Params.ParamByName('PDPRZVAL').AsFloat:=pPrzVal;
      ClientDataSet1.Params.ParamByName('PDPRZVAL_DIAS').AsFloat:=pPrzVal_Dias;
      ClientDataSet1.Params.ParamByName('PDPRAZO').AsFloat:=pPrazo;

      ClientDataSet1.Params.ParamByName('PDDATA_REPLICA').Value:=pDATA_REPLICA;
      ClientDataSet1.Params.ParamByName('PDDATAUA').Value      :=pDATAUA;

      ClientDataSet1.Params.ParamByName('PDCODPRO').AsFloat:=pCodpro;
      ClientDataSet1.Params.ParamByName('PDCODEMP').AsFloat:=pCodemp;

      try
         ClientDataSet1.Execute;
         mResult:='-2';
      except
         DM6.mem_parlcd.Next;
         Continue;
         end;
      end;
   DM6.mem_parlcd.Next;
   end;

result:=mResult;

{

pDCodpro
,pDCodemp
,pDCodBar
,pDNivel
,pDPreco1
,pDPmc
,pDPreco2
,pDPmc02
,pDPreco3
,pDPmc03
,pDDesFin
,pDCodGru
,pDCodCon
,pDCodRam
,pDCodTip
,pDLista
,pDPrecoC
,pDPcoMC
,pDPcoFab
,pDEmbPad
,pDEmbMul
,pDComis
,pDUcpr
,pDPesoB
,pDPesoL
,pDNome
,pDNome2
,pDMarca
,pDSit
,pDUnd
,pDTabIcm
,pDRegMs
,pDClas
,pDCodNcm
,pDSitCf


Insert into CADPRO
(
pDCodpro
,pDCodemp
,pDCodBar
,pDNivel
,pDPreco1
,pDPmc
,pDPreco2
,pDPmc02
,pDPreco3
,pDPmc03
,pDDesFin
,pDCodGru
,pDCodCon
,pDCodRam
,pDCodTip
,pDLista
,pDPrecoC
,pDPcoMC
,pDPcoFab
,pDEmbPad
,pDEmbMul
,pDComis
,pDUcpr
,pDPesoB
,pDPesoL
,pDNome
,pDNome2
,pDMarca
,pDSit
,pDUnd
,pDTabIcm
,pDRegMs
,pDClas
,pDCodNcm
,pDSitCf


) values (
:pDCodpro
,:pDCodemp
,:pDCodBar
,:pDNivel
,:pDPreco1
,:pDPmc
,:pDPreco2
,:pDPmc02
,:pDPreco3
,:pDPmc03
,:pDDesFin
,:pDCodGru
,:pDCodCon
,:pDCodRam
,:pDCodTip
,:pDLista
,:pDPrecoC
,:pDPcoMC
,:pDPcoFab
,:pDEmbPad
,:pDEmbMul
,:pDComis
,:pDUcpr
,:pDPesoB
,:pDPesoL
,:pDNome
,:pDNome2
,:pDMarca
,:pDSit
,:pDUnd
,:pDTabIcm
,:pDRegMs
,:pDClas
,:pDCodNcm
,:pDSitCf
)


      end;

   if Frm_WebService.ClientDataSet1.Active then
      Frm_WebService.ClientDataSet1.Close;
   Frm_WebService.ClientDataSet1.ProviderName:='dps_cadpro_conta';

      end;
   else
   begin
   if ptipo=0 then // sem tabela
      begin
      mTabRetorno:='-0' // Retorno valores no dataset;
      end
   else if ptipo=0 then // oracle
      begin
      mTabRetorno:=fProcTemp(01);
      if not Frm_WebService.fWS_CriaOracle(mTabRetorno) then
         mTabRetorno:='-3' // erro ao gerar o arquivo;
      end
   else // paradox
      begin
      mTabRetorno:=fProcTemp(11);
      end;
   result:=mTabRetorno;
   end;


   mcinst2:=fWS_CADPRO_UPDATE(0,pCodpro,pcodemp,pPreco01,pPreco02,pPreco03);

   if mcinst2='-1' then
      begin
      DM6.mem_parlcd.Next;
      Continue;
      end
   else if mcinst2='-2' then
      begin
      Frm_WebService.lbl_encontrado.Caption:='Erro ao Tentar atualizar o arquivo de produtos!';
      exit;
      end;
   DM6.mem_parlcd.Next;
   end;
}
result:='-1';
end;

end.
