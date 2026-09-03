unit s_verificar_tabelas;

interface

function VerificaPendencias: boolean;
function fMoverTabelasAtuais: boolean;

implementation

uses S_DM_CDS, Classes, DB, DBClient,Windows, SysUtils, Dialogs, func,
  DateUtils;



function VerificaPendencias: boolean;
var
mExistePendencias: boolean;
begin
result:=true;

if (DM_CDS.cds_config_tef.Active=false) then
   begin
   DM_CDS.cds_config_tef.Open;
   end;
if DateOf(DM_CDS.cds_config_tefcf_data_ult_bkp.Value) > Dateof(date) then
   begin
   exit;
   end;


mExistePendencias :=false;
DM_CDS.fTestarPedidoCab;
DM_CDS.cds_pedido_cab.Filtered:=false;;
DM_CDS.cds_pedido_cab.First;
while not DM_CDS.cds_pedido_cab.Eof DO
   begin
   if DM_CDS.cds_recebstatus.AsInteger=0 then
      begin
      mExistePendencias:=true;
      exit;
      end;
   DM_CDS.cds_pedido_cab.Next;
   end;
if not mExistePendencias then
   begin
   result:=fMoverTabelasAtuais;
   end;

end;


function fMoverTabelasAtuais: boolean;
var
mPastaDestino : string;
mCompleArq : string;
mMensagem: string;
   function fNomeNovoTabela(pNomeTabela: String): String;
   begin
   result := StringReplace(pNomeTabela, '.dbf', mCompleArq+'.dbf', [rfIgnoreCase, rfReplaceAll])
   end;
begin
mCompleArq:='_'+FormatDateTime('ddmm', DM_CDS.cds_config_tefcf_data_ult_bkp.Value);
mPastaDestino := IncludeTrailingPathDelimiter(DM_CDS.pathConfig + 'BKP'+formatdatetime('yyyy', date));
ForceDirectories(mPastaDestino);
DM_CDS.cds_receb.Close;
DM_CDS.cds_pedido_cab.Close;
DM_CDS.cds_pedido_formas.Close;

if CopyFile(PChar(DM_CDS.mNomeArquivoPedidoCab), PChar(mPastaDestino+fNomeNovoTabela(mPedido_Cab)), false) then
   begin
   if not DeleteFile(DM_CDS.mNomeArquivoPedidoCab) then
      mMensagem := mMensagem + 'Erro ao deletar o arquivo ' + DM_CDS.mNomeArquivoPedidoCab+mQuebraLinha;
   end
else
   mMensagem := mMensagem + 'Erro ao copiar o arquivo ' + DM_CDS.mNomeArquivoPedidoCab+mQuebraLinha;

if CopyFile(PChar(DM_CDS.mNomeArquivoPedidoFormas), PChar(mPastaDestino+fNomeNovoTabela(mPedidoFormas)), false) then
   begin
   if not DeleteFile(DM_CDS.mNomeArquivoPedidoFormas) then
      mMensagem := mMensagem + 'Erro ao deletar o arquivo ' + DM_CDS.mNomeArquivoPedidoFormas+mQuebraLinha;
   end
else
   mMensagem := mMensagem + 'Erro ao copiar o arquivo ' + DM_CDS.mNomeArquivoPedidoFormas+mQuebraLinha;

if CopyFile(PChar(DM_CDS.mNomeArquivoReceb), PChar(mPastaDestino+fNomeNovoTabela(mCadReceb)), false) then
   begin
   if not DeleteFile(DM_CDS.mNomeArquivoReceb) then
     mMensagem := mMensagem + 'Erro ao deletar o arquivo ' + DM_CDS.mNomeArquivoReceb+mQuebraLinha;

   end
else
     mMensagem := mMensagem + 'Erro ao copiar o arquivo ' + DM_CDS.mNomeArquivoReceb+mQuebraLinha;
DM_CDS.fTestarPedidoCab;
DM_CDS.fTestarPedidoFormas;
DM_CDS.fTestarReceb;
if mMensagem<>'' then
   begin
   result:=false;
   MessageDlg(mMensagem,mtError,[mbOk],0);
   end
else
   begin
   DM_CDS.cds_config_tef.edit;
   DM_CDS.cds_config_tefcf_data_ult_bkp.Value := DateOf(date);
   DM_CDS.cds_config_tef.Post;
   result:=true;
   end;
end;


end.
