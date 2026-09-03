unit BaixarTitulo;

interface

function fBaixarTitulo(pChave,pChaveAno,pCodEmp: real): boolean;


implementation


uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst, func,  RDPrint,
     Func2, S_DM1,lerarq,func_excecoes, S_BDev;



function fBaixarTitulo(pChave,pChaveAno,pCodEmp: real): boolean;
var
 pCodldr_Tarban:tChaveIdLdr;
 pCodLdr_local:tChaveIdLdr;
begin


DM1.Tb_Dar.Close;
DM1.Tb_Dar.Sql.clear;
DM1.Tb_Dar.SQL.add('Select CADDAR.*,CADDAR.ROWID AS IDDAR  from CADDAR where CRSTATUS<>9 '
                  +' and CRNPED='+floattostr(pChave)
                  +' and CRLOTSEQ_CP='+floattostr(pChaveAno)
                  +' and CRCODEMP='+floattostr(pCodEmp)
                  );
try
   DM1.Tb_Dar.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(DM1.Tb_dar,27,'_stru '+e.message,'caddar');
   end;
   end;

if Frm_BDev=nil then
   Application.CreateForm(TFrm_BDev, Frm_BDev)
else
   begin
   Frm_BDev.Free;
   Frm_BDev:=nil;
   Application.CreateForm(TFrm_BDev, Frm_BDev);
   end;
DM1.Tb_Dar.First;
While not DM1.Tb_dar.eof do
   begin
   fBaixarDevolucao_bdev(
   0, // valdes
   0, // val juros
   DM1.Tb_DarCRVALOR.AsFloat // valor recebido
     ,codcai //cod caixa
     ,Date   // data pagamento
     ,Date   // data da baixa
     ,Date   // data do caixa
     ,0, // tarifa bancaria
     pCodldr_Tarban // chave id ldr
     ,pCodLdr_local);
   DM1.Tb_dar.Next;
   end;
//function fBaixarDevolucao_bdev(pValDes,pValJur,pValRec: Real;pCodCai: Integer;pDataPag,pDataBai:TDateTime;pDataCx:TDateTime; pTarBan: Real;
//out pCodldr_Tarban:tChaveIdLdr; out pCodLdr_local: tChaveIdLdr): Boolean;


freeandnil(Frm_BDev);

end;
end.
