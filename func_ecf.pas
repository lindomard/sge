unit func_ecf;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls,lerarq,func,S_DM1;

function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External  'BEMAFI32.DLL';
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall
; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';


// Funções dos Relatórios Fiscais

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function ftestaecf(ptipo: Integer): Boolean;
function fverestimp(ptipo: Integer): Integer;
function ftestaUf(puf: String): Boolean;
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';

function fverificaRedZ(ptipo: Integer): TDateTime;
function fReducaoZ(ptipo: Integer; PData: TDateTime): Boolean;
function FECF_Maparesumo(ptipo: Integer; pData: TDateTime): Boolean;

function Bematech_FI_DadosSintegra( DataInicio: string; DataFinal: string ): Integer; StdCall; External 'BEMAFI32.DLL';


//function Bematech_FI_DadosSintegra( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
var
iRetorno: Integer;

implementation

uses func_excecoes;

function ftestaecf(ptipo: Integer): Boolean;
var
iConta,iRetorno: Integer;
NumeroSerie: String;

begin
result:=True;
if DecimalSeparator<>',' then
   begin
   MessageDlg('O Símbolo decimal tem que ser ",", entre no painel de controle e Ajuste!',mtWarning,[mbOk],0);
   Result:=False;
   end;

iRetorno := Bematech_FI_VerificaImpressoraLigada();
if iRetorno<>1 then
   begin
   MessageDlg('Impressora desliqada ou Cabo desconectado!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
// Exemplo em Delphi
if not flcadecf(1,0,IntTostr(codecf)) then
   begin
   MessageDlg('Não ha impressora fiscal aberta!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
for iConta := 1 to 15 do
    begin
      NumeroSerie := NumeroSerie + ' ';
    end;
iRetorno := Bematech_FI_NumeroSerie( NumeroSerie );
if Trim(NumeroSerie)<>Trim(DM1.Tb_ECFCFSERIE.Value) then
   begin
   MessageDlg('O número de serie da impressora não confere!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
serieecf:=NumeroSerie;
moddocecf:=DM1.Tb_ECFCFMODDOC.Value;
end;

function fverestimp(ptipo: Integer): Integer;
var
iAck,iSt1,iSt2: Integer;
{ parametros de entrada
ptipo=0-normal
      1-nao avisa pouco papel
      2-Verifica capacidade de aliquotas
valores de retorno
0-Normal
1-alerta de pouco papel acionado
8-Impressora sem papel
9-Erro fatal

}
begin
iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
if iRetorno<>1 then
   begin
   MessageDlg('Erro Número: '+IntToStr(iRetorno)+' ao testar a impressora fiscal!',mtWarning,[mbOk],0);
   result:=9;
   exit;
   end;


If iSt2 >= 64 Then                        // bit 6
   begin
   MessageDlg('Memoria fiscal da impressora Lotada!',mtWarning,[mbOk],0);
   result:=9
   end
else if iSt2>= 32 Then                        // bit 5
   begin
   MessageDlg('Erro na Memoria RAM da impressora Fiscal!',mtWarning,[mbOk],0);
   result:=9
   end
else if iSt2 >= 16 Then                        // bit 4
   begin
   MessageDlg('Não ha alíquotas programadas na impressora fiscal!',mtWarning,[mbOk],0);
   result:=9
   end
else if iSt2 >= 8 Then                        // bit 3
   begin
   if ptipo=2 then
      begin
      MessageDlg('Capacidade de cadastrar alíquotas esgotadas!',mtWarning,[mbOk],0);
      result:=9
      end
   else
      result:=0;
   end
else if iSt1 >= 128 Then                        // bit 7
   begin
   MessageDlg('Impressora fiscal sem papel!',mtWarning,[mbOk],0);
   result:=8;
   end
else if iSt1 >= 64 Then                        // bit 6
   begin
   if ptipo<>1 then
      begin
      MessageDlg('Impressora fiscal com pouco papel!',mtWarning,[mbOk],0);
      result:=1;
      end
   else
      result:=0;
   end
else if iSt1 >= 32 Then                        // bit 5
   begin
   MessageDlg('Erro no Relógio da Impressora fiscal!',mtWarning,[mbOk],0);
   result:=0;
   end
else if iSt1 >= 16 Then                        // bit 4
   begin
   MessageDlg('Erro Código: '+IntToStr(iSt1)+' na Impressora fiscal!',mtWarning,[mbOk],0);
   result:=9;
   end
else if Ist1>= 8 Then                        // bit 3
   begin
   MessageDlg('Erro Código: '+IntToStr(iSt1)+' Comando não iniciado com ESC!',mtWarning,[mbOk],0);
   result:=9;
   end
else
   result:=0;
end;
function ftestaUf(puf: String): Boolean;
begin
result:=true;
DM1.Tb_UF.Close;
DM1.Tb_Uf.SQL.Clear;
DM1.Tb_UF.Sql.Add('Select * from CADUF where '+iif(DM1.Qr_Tid.Locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and '));
if Trim(DM1.Tb_EmpUF.Value)='' then
   begin
   MessageDlg('Cadastro da Empresa esta Sem a UF, favor corrigir!',mtWarning,[mbOk],0);
   result:=false
   end
else
   begin
   DM1.Tb_UF.SQL.Add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39))
   end;
DM1.Tb_Uf.Open;
if DM1.Tb_UF.Eof then
   begin
   MessageDlg('UF do Cadastro da Empresa: '+DM1.Tb_EmpUF.Value+' não foi encontrado, favor cadastra-lo!',mtWarning,[mbOk],0);
   result:=false
   end;

if DM1.Tb_UfPICMSA.AsInteger<=0 then
   begin
   MessageDlg('Tabela A de icms no cadastro de estado não Cadastrada',mtWarning,[mbOk],0);
   result:=false;
   end;
if DM1.Tb_UfPICMSB.AsInteger<=0 then
   begin
   MessageDlg('Tabela B de icms no cadastro de estado não Cadastrada',mtWarning,[mbOk],0);
   result:=false;
   end;

end;

function fverificaRedZ(ptipo: Integer): TDateTime;
var
mdtmov: String;
iConta: Integer;
mdataMov: TDateTime;
begin

for iConta := 1 to 6 do
    begin
      mdtmov := mdtmov + ' ';
    end;

iConta:=Bematech_FI_DataMovimento(mdtmov);
if iConta<>1 then
   begin
   MessageDlg('Erro ao Capturar a Data do Movimento: '+IntToStr(iConta),mtWarning,[mbOk],0);
   mdataMov:=Date;
   end
else if (valfloat(mdtmov)<=0) and (DM1.Tb_ECFCFDTULTMOV.Value<date) then
   begin
   iRetorno := Bematech_FI_AberturaDoDia( pchar( '0,00' ), pchar( 'Dinheiro' ) );
   for iConta := 1 to 6 do
      begin
         mdtmov := mdtmov + ' ';
       end;
   iConta:=Bematech_FI_DataMovimento(mdtmov);
   if iConta<>1 then
      begin
      MessageDlg('Erro ao Capturar a Data do Movimento: '+IntToStr(iConta),mtWarning,[mbOk],0);
      mdataMov:=Date;
      end
   else
      begin
      if valFloat(mdtmov)>0 then
         mdatamov:=StrToDate(copy(mdtmov,1,2)+'/'+copy(mdtmov,3,2)+'/'+copy(mdtmov,5,2))
      else
         mdatamov:=date;
      end
   end
else
   begin
   if ValFloat(mdtmov)>0 then
      mdatamov:=StrToDate(copy(mdtmov,1,2)+'/'+copy(mdtmov,3,2)+'/'+copy(mdtmov,5,2))
   else
      mdatamov:=date;
   end;
Result:=mDataMov;
end;

function fReducaoZ(ptipo: Integer; PData: TDateTime): Boolean;
// ptipo=0 Fecha e Mapa Resumo
//       1 Somente Reducao Z
//       2 Somente Mapa REsumo
var
  iConta: Integer;
  NumeroSerie,marq,buffer: String;
  m_aliq, m_valor: Real;
  mhora, mdtmov: String;
  mdatmov: TDateTime;
  mhorimp: TTime;
  mdifhor: Real;
begin

if ptipo<>2 then
   begin
   for iConta := 1 to 6 do
      begin
        mdtmov := mdtmov + ' ';
      end;
   for iConta := 1 to 6 do
      begin
      mhora:=mhora+ ' ';
     end;
   if DM1.Tb_ECFCFMAPARES.Value=0 then
      begin
      iRetorno := Bematech_FI_DataHoraImpressora( mdtmov, mHora );
      if valfloat(mdtmov)<=0 then
         begin
         mdatmov:=Date;
         mhorimp:=time;
         end
      else
         begin
         mdatmov:=StrToDate(copy(mdtmov,1,2)+'/'+copy(mdtmov,3,2)+'/'+copy(mdtmov,5,2));
         mhorimp:=StrToTime(copy(mhora,1,2)+':'+copy(mhora,3,2)+':'+copy(mhora,5,2));
         end;
      mdifhor:=time-mhorimp;
      if mdifhor<0 then
         mdifhor:=mdifhor*-1;
      if ((mdatmov)<>Date) or (mdifhor>4999) then
         begin
         MessageDlg('Data da Impressora: '+FormatDateTime(fdt2, mdatmov)+' hora: '+FormatDateTime('hh:hh:ss', mhorimp)+#13
                   +'Data do Sistema Operacional: '+FormatDateTime(fdt2, date)+' hora: '+FormatDateTime('hh:hh:ss', time)+#13
                   +'Favor ajustar a data e hora do sistema operacional!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end;
      end;
//   iRetorno := Bematech_FI_ReducaoZ( pchar( FormatDateTime('dd/mm/yyyy',date) ), pchar( FormatDateTime('hh:nn/ss',time) ) );

   iRetorno := Bematech_FI_FechamentoDoDia();
   if iRetorno<>1 then
      begin
      MessageDlg('Erro Número: '+IntToStr(iRetorno)+' ao tentar realizar o fechamento!',mtWarning,[mbOk],0);
      end;
    end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADECF set CFDTULTREDZ='+chr(39)+FormatDateTime(fdt, Pdata)+chr(39)
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CFCAIXA=0'+IntToStr(codecf));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,319,'Func_ecf','CADECF');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADECF set CFDTULTMOV='+chr(39)+FormatDateTime(fdt, date)+chr(39)
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CFCAIXA=0'+IntToStr(codecf));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,319,'Func_ecf','CADECF');
   end;

if DM1.Tb_ECFCFMAPARES.Value=0 then
   begin
   if ptipo<>1 then
      begin
      if FECF_Maparesumo(0, PData) then
         begin
         MessageDlg('Fechamento Realizado com Sucesso!',mtWarning,[mbOk],0);
         end
      else
         begin
         MessageDlg('Erro ao Gerar o Mapa Resumo!',mtWarning,[mbOk],0);
         end;
      end;
   end;
result:=true;
end;


function FECF_Maparesumo(ptipo: Integer; pData: TDateTime): Boolean;
var
  iConta: Integer;
  F: TextFile;
  mconred, mcoo,mcro,mcoo_final,mvdabrut,mvdaliq,mcupcan,macrecup,mdescup,misscup,misentas,mnaoinc,msubtri: Real;
  mvdabacum,mvdalacum: Real;
  mSerEcf,mModDoc,buffer: String;
  m_aliq, m_valor: Real;
  mcodecf: Integer;
  mdata: TDateTime;

begin
if ppconsemp then
   begin
   result:=true;
   exit;
   end;

mconred   :=0;
mcoo      :=0;
mcro      :=0;
mcoo_final:=0;
mvdabrut  :=0;
mvdaliq   :=0;
mcupcan   :=0;
macrecup  :=0;
mdescup   :=0;
misscup   :=0;
misentas  :=0;
mnaoinc   :=0;
msubtri   :=0;
mSerEcf   :=DM1.Tb_ECFCFSERIE.Value;
mModDoc   :=DM1.Tb_ECFCFMODDOC.Value;
mvdabacum :=0;
mvdalacum :=0;
mdata:=pData;


iRetorno := Bematech_FI_RelatorioTipo60Analitico();
buffer:='\RETORNO.TXT';
if FileExists(buffer) then
   begin
   AssignFile(F,buffer);
   Reset(F);
   while not eof(f) do
      begin
      ReadLn(f,buffer);
      if valfloat(copy(buffer,1,4))>0 then
         break;
      if LowerCase(copy(buffer,1,16))='contador de redu' then
         mconred:=valfloat(copy(buffer,47,06))
      else if LowerCase(copy(buffer,1,9))='coo inici' then
         mcoo:=valfloat(copy(buffer,47,06))
      else if LowerCase(copy(buffer,1,9))='coo final' then
         mcoo_final:=valfloat(copy(buffer,47,06))
      else if LowerCase(copy(buffer,1,16))='reinicio de oper' then
         mcro:=valfloat(copy(buffer,47,06))
      else if LowerCase(copy(buffer,1,14))='Data de emiss' then
         begin
         try
            mdata:=StrToDate(copy(buffer,43,10));
         except
            mdata:=pData;
            end
         end
      else if LowerCase(copy(buffer,3,09))='mero de s' then
         mSerEcf:=trim(copy(buffer,29,26))
      else if LowerCase(copy(buffer,3,19))='mero do equipamento' then
         mcodecf :=ValInt(copy(buffer,47,06))
      else if LowerCase(copy(buffer,1,20))='Modelo do documento' then
         mModDoc :=copy(buffer,51,02)
      else if copy(buffer,1,11)='Venda Bruta' then
         mvdabacum:=valfloat(copy(buffer,33,20))
      else if copy(buffer,1,11)='Totalizador' then
         mvdalacum:=valfloat(copy(buffer,33,20))
      end;
   CloseFile(f);
   DeleteFile('\RETORNO.TXT');
   end;


iRetorno := Bematech_FI_MapaResumo();
buffer:='\RETORNO.TXT';
if not FileExists(buffer) then
   begin
   MessageDlg('Erro ao tentar ler a redução Z!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
AssignFile(F,buffer);
Reset(F);
while not eof(f) do
   begin
   ReadLn(f,buffer);
   if valfloat(copy(buffer,1,4))>0 then
      break;
   if copy(buffer,1,4)='Cont' then
      mconred:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,4)='COO.' then
      mcoo:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,7)='Venda B' then
      mvdabrut:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,7)='Venda L' then
      mvdaliq:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,7)='Cancela' then
      mcupcan:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,3)='Acr' then
      macrecup:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,7)='Descont' then
      mdescup:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,3)='ISS' then
      misscup:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,4)='Isen' then
      misentas:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,1)='N' then
      mnaoinc:=valfloat(copy(buffer,26,15))
   else if copy(buffer,1,4)='Subs' then
      msubtri:=valfloat(copy(buffer,26,15))
   end;

if mcoo_final=0 then
   mcoo_final:=mcoo+mcro;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADECF set CFDTULTMOV='+chr(39)+FormatDateTime(fdt, date)+chr(39)
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CFCAIXA=0'+IntToStr(codecf));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,68409,'Frm_PPal','CADECF');
   end;

if flcadmi01(2,0,IntToStr(codecf),FormatDateTime(fdt, pData)) then
   begin
   if fmensagem('Ja foi feito o fechamento para esta impressora, mesmo assim quer continuar',0,['1','2'],2)<>mrYes then
      begin
      MessageDlg('Cancelado!',mtWarning,[mbOk],0);
      exit;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CMCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CMCODIMP=0'+IntToStr(codecf)
                     +' and CMDATA='+chr(39)+FormatDateTime(fdt, pData)+chr(39));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,485,'frm_Ppal','CADMI01');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CM2CODIMP=0'+IntToStr(codecf)
                     +' and CM2DATA='+chr(39)+FormatDateTime(fdt, pData)+chr(39));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,1577,'frm_Ppal','CADMI02');
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADMI01 ('
                  +'CMCODEMP, '
                  +'CMCODIMP, '
                  +'CMDATA, '
                  +'CMSERIE, '
                  +'CMMODDOC, '
                  +'CMORDEM, '
                  +'CMCONRED, '
                  +'CMCOO, '
                  +'CMCOO_FINAL, '
                  +'CMCRO, '
                  +'CMVDABRUT, '
                  +'CMVDALIQ, '
                  +'CMCUPCAN, '
                  +'CMACRECUP, '
                  +'CMDESCUP, '
                  +'CMISSCUP, '
                  +'CMISENTAS, '
                  +'CMNAOINC, '
                  +'CMSUBTRI, '
                  +'CMLEMAT) values ('
                  +IntTostr(codemp)+','
                  +IntToStr(codecf)+','
                  +chr(39)+FormatDateTime(fdt, pData)+chr(39)+','
                  +chr(39)+mSerEcf+chr(39)+','
                  +chr(39)+mModDoc+chr(39)+','
                  +mudaVP(FloatToStr(codecf))+','
                  +mudaVP(FloatToStr(mconred))+','
                  +mudaVP(FloatToStr(mcoo))+','
                  +mudaVP(FloatToStr(mcoo_final))+','
                  +mudaVP(FloatToStr(mcro))+','
                  +mudaVP(FloatTostr(mvdabrut))+','
                  +mudaVP(FloatToStr(mvdaliq))+','
                  +mudaVP(FloatToStr(mcupcan))+','
                  +mudaVP(FloatTostr(macrecup))+','
                  +mudaVP(FloatToStr(mdescup))+','
                  +mudaVP(FloatToStr(misscup))+','
                  +mudaVP(FloatToStr(misentas))+','
                  +mudaVP(FloatToStr(mnaoinc))+','
                  +mudavp(FloatToStr(msubtri))
                  +',0' // lote de envio para matriz
                  +')');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1615,'frm_Ppal','CADMI01');
   end;
while not eof(f) do
   begin
   if valfloat(copy(buffer,1,4))<=0 then
      begin
      ReadLn(f,buffer);
      Continue;
      end;
   m_aliq :=valfloat(copy(buffer,01,04));
   m_valor:=valfloat(copy(buffer,26,15));
   m_aliq:=m_aliq/100;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.add('Insert into CADMI02 ('
                     +' CM2CODEMP, '
                     +' CM2CODIMP, '
                     +' CM2DATA, '
                     +' CM2ALIQ, '
                     +' CM2VALOR) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(codecf)+','
                     +chr(39)+FormatDateTime(fdt, pData)+chr(39)+','
                     +mudavp(FloatToStr(m_aliq))+','
                     +mudavp(FloatToStr(m_valor))+')');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,1644,'frm_Ppal','CADMI02');
      end;
   ReadLn(f,buffer);
   end;
CloseFile(f);
DeleteFile('\RETORNO.TXT');
result:=true;

end;


end.
