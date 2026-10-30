unit S_ThEmiteNFSEBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, ToolEdit,
  DB, DBTables, Buttons, DBCtrls, RxMemDS, CheckLst,DBClient;


type
  ThEmiteNFSEBoleto = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    mconcluiu: boolean;
  end;

implementation

uses S_DM_Replica, Func, S_DM1, func_excecoes, func_emitir_notas, S_DM4;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure ThReplica.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ ThReplica }

procedure ThEmiteNFSEBoleto.Execute;
var
query_temp: TQuery;
query_nf: TQuery;
query_bol: TQuery;
mmensagem: string;
mArqGerar: string;
ParametrosNfce: tParametrosNfce;

      function fEmitiuDcoumento(pDocumento: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('select '+pDocumento+' from CADTHRED_DOCSPEND '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR '
                      +' and NVL(length('+pDocumento+'),0)>1');
      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

      try
         query_nf.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,58,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;
      if query_nf.IsEmpty then
         result:=false
      else
         result:=true

      end;

      function fConfirmarEmissaoDcoumento(pDocumento,pDestino: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' '+pDocumento+'=:DESTINO '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR '
                      +' and NVL(length('+pDocumento+'),0)<1');
      query_nf.ParamByName('DESTINO').AsString          := pDestino;

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;
      if query_nf.IsEmpty then
         result:=false
      else
         result:=true

      end;



      function fErroEmissaoDcoumento(pDocumento,pDestino: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' '+pDocumento+'=:DESTINO '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR ');
      query_nf.ParamByName('DESTINO').AsString          := copy(pDestino,1,254);

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

//         ex_erroSql_Novo(query_nf,96,'_con_serv' ,'CADTHRED_DOCSPEND');

      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;
      if query_nf.IsEmpty then
         result:=false
      else
         result:=true

      end;



begin
  { Place thread code here }
query_nf:=TQuery.create(nil);
query_nf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_bol:=TQuery.create(nil);
query_bol.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.Clear;
query_temp.sql.Add('select * from CADTHRED_DOCSPEND '
                  +' where DP_COMPUTADOR=:DP_COMPUTADOR '
                  +' and (DP_DATHOR_ENVIOU_EMAIL is null or DP_DATHOR_ENVIOU_EMAIL<:DP_DATHOR_ENVIOU_EMAIL) '
                  +' order by DP_DATHOR_INCLUSAO ');
query_temp.parambyname('DP_COMPUTADOR').AsString:=NomeComputador;
query_temp.parambyname('DP_DATHOR_ENVIOU_EMAIL').Asdatetime:=strtodate('01/01/2000');
try
   query_temp.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,52,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   exit;
   end;
   end;

query_temp.first;
While not query_temp.eof do
   begin
   if not fEmitiuDcoumento('DP_ANEXO_NF') then
      begin
      mArqGerar:=query_temp.fieldbyname('DP_PASTA_DEST').AsString+'NF_CHDPED_'
                              +query_temp.fieldbyname('DP_CHAVE_PED').AsString+'_'+query_temp.fieldbyname('DP_CODEMP').asstring+'.pdf';

      ParametrosNfce.pChave := query_temp.fieldbyname('DP_CHAVE_PED').asinteger;
      ParametrosNfce.pChave_ano :=query_temp.fieldbyname('DP_CHAVE_PED_ANO').asinteger;
      ParametrosNfce.pCodemp := query_temp.fieldbyname('DP_CODEMP').asinteger;
      ParametrosNfce.pSalvarPDFPara := mArqGerar;
      parametrosNfce.pAmbiente := iif(DM4.Tb_ParGer02PG2USANFE.AsInteger<2,2,1);

      if fEmitirNotadeServico(ParametrosNfce).pOk then
         begin
         fConfirmarEmissaoDcoumento('DP_ANEXO_NF',mArqGerar);
         end
      else
         fErroEmissaoDcoumento('DP_RESULTADO_NF',mmensagem);

      end;
   if not fEmitiuDcoumento('DP_ANEXO_BOL') then
      begin

      mArqGerar:=query_temp.fieldbyname('DP_PASTA_DEST').AsString+'BOL_CHDPED_'
                              +query_temp.fieldbyname('DP_CHAVE_PED').AsString+'_'+query_temp.fieldbyname('DP_CODEMP').asstring+'.pdf';

      ParametrosNfce.pChave := query_temp.fieldbyname('DP_CHAVE_PED').asinteger;
      ParametrosNfce.pChave_ano :=query_temp.fieldbyname('DP_CHAVE_PED_ANO').asinteger;
      ParametrosNfce.pCodemp := query_temp.fieldbyname('DP_CODEMP').asinteger;
      ParametrosNfce.pSalvarPDFPara := mArqGerar;

{
      if fEmitirBoletoBancario(ParametrosNfce).pOk then
         begin
         fConfirmarEmissaoDcoumento('DP_ANEXO_BOL',mArqGerar);
         end
      else
         fErroEmissaoDcoumento('DP_RESULTADO_BOL',mmensagem);
 }
      end;


//   showmessage(query_temp.FieldByName('dp_chave_ped').AsString);
   query_temp.next;
   end;
mconcluiu:=true;

{
 mthred_pend_bolemi   :=0;
 mthred_pend_nfemi    :=0;
 mthred_pend_email_fat:=0;


query_temp.Close;
query_temp.sql.clear;
}
end;

end.
