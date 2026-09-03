unit funcoes_especificas;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,strUtils,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_Impres,WinSock,variants,
     Shellapi, filectrl,printers,Registry,S_Mensagem,RdPrint //declare estas das units!!!

     ,QuickRpt, QRCtrls, Grids, DBGrids, MaskUtils, Buttons, ToolEdit, CurrEdit,dateutils,

     jpeg,MMSystem,IdHTTP,ComObj, DBCtrls,RLRichText, TlHelp32, WinSvc, ADODB,zip,
     IdHashMessageDigest, idHash, FMTBcd, Provider,  DBClient, SqlExpr
     , ScktComp,S_Ocorrencias,IdCoderMIME;


const
 mNSE_OPERACAO_CANCELAMENTO='CANCELAMENTO';
 mNSE_OPERACAO_INUTILIZACAO='INUTILIZACAO';
 mNSE_OPERACAO_NFE='NFE';
 mNSE_OPERACAO_NFCE='NFCE';
 mNSE_OPERACAO_NFS='NFS';
 mNSE_OPERACAO_NFE_CARCOR='NFE_CARCOR';

function fExisteAplicacaoExternaJava: boolean;
function fbuscarValorCampoWhatsApp(pArquivo,pcampo,ptag: String): String;
function fAjustarChaveIdCaddar: boolean;
function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string; pDifCol: integer): Boolean;

function fExecutarWhatsAppExternoStart(pSessionId: String; out pRetorno:String ): boolean;
function fExecutarWhatsAppExternoSessionStatus(pSessionId: String; out pRetorno:String ): boolean;
function fExecutarWhatsAppExternoTerminate(pSessionId: String; out pRetorno:String ): boolean;
function fExecutarWhatsAppExternoSendMessage(pSessionId, pFoneDest, pMensagem: String;   out pRetorno:String ): boolean;

function fExecutarWhatsAppExternoSendFileBase64(pSessionId,pfoneDest,pArquivo: String;   out pRetorno:String ): boolean;

function LoadFileToBase64(const AFileName: string): String;

function fRetornaFoneParaWhatsApp(pFone: String): String;
function fTratarParametrosSpacos(pTexto: String): String;
function fTratarParametrosSpacosArquivo(pTexto: String): String;
function fExistePreRequisitoUsarSqlLdr: boolean;
function fExistePreRequisitoUsarSqlLdrSemJava: boolean;
function fValorStringSqlLdr(pTexto: String): String;
function fValorIntegerSqlLdr(pTexto: String): String;
function fValorDoubleSqlLdr(pTexto: String): String;
function fValorDateSqlLdr(pDate: tDateTime): String;
procedure fAjustarRowIdImagens;


implementation

uses Func, S_DM1, S_DM4, func_excecoes, Func2,s_Aviso, s_EventosWhatsApp,lerarq;





function fExisteAplicacaoExternaJava: boolean;
var
mVariaveisAmbiente: String;
mQtdDelPv: integer;
xDelPv: integer;
mAchouJava: boolean;

mPath: String;
mMensagem: string ;

begin
mMensagem:='';
result:=true;
mAchouJava:=false;
mVariaveisAmbiente := GetEnvironmentVariable('Path');
mVariaveisAmbiente := mVariaveisAmbiente+ ExtractFilePath(Application.ExeName);
mQtdDelPv := fQtd_PV(mVariaveisAmbiente);
for xDelPv:=1 to mQtdDelPv do
   begin
   mPath:= fBuscarValor_Del_PV(xDelPv,mVariaveisAmbiente);
   if trim(mPath)='' then
      continue;
   if mPath[length(mPath)]<>'\' then
      mPath:=mPath+'\';

   if not mAchouJava then
      begin
      if FileExists(mPath+'java.exe') then
         begin
         mAchouJava:=true;
         end;
      end;
    if (mAchouJava) then
       break;
   end;

if not mAchouJava then
   begin
   mMensagem:=mMensagem+centra('Não Encontrado JAVA.EXE ' + mPath,'@',80)+#13;
   result:=false;
   end;

//mNomeAplicacao_retorno := mpastaaplicacao + 'cadastrosbasicos.ret';

if not FileExists(mpastaaplicacao+mNomeProjettoJavaExterno) then
   begin
   if not fBaixarArquivoFtp(mNomeProjettoJavaExterno) then
      begin
      mMensagem:=mMensagem+centra('Não foi possivel baixar o arquivo '+mNomeProjettoJavaExterno,'*',80)+#13;
      result:=false;
      end;
   end;



if trim(mMensagem)<>'' then
   MessageDlg(mMensagem,mtWarning,[mbOk],0);

end;




function fbuscarValorCampoWhatsApp(pArquivo,pcampo,ptag: String): String;
var
mpos_inidados: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';
mpos_inidados:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_inidados>0 then
   begin
   mRetorno:=copy(parquivo,mpos_inidados+length(pCampo)+3,length(parquivo));
   mRetorno:=trim(mRetorno);
   if (trim(mRetorno)[1]='"') or (trim(mRetorno)[1]=':') then
      mRetorno := copy(trim(mretorno),2,length(mretorno));

   if (trim(mRetorno)[1]='"') or (trim(mRetorno)[1]=':') then
      mRetorno := copy(trim(mretorno),2,length(mretorno));
   mpos_fin1:=pos('"',mRetorno);
   if mPos_fin1>0 then
      begin
      if (length(mRetorno)>mPos_fin1+1) then
         begin
         mRetorno:=copy(mRetorno,1,mpos_fin1-1);
         mRetorno:=trim(mRetorno);
         if mRetorno[length(mRetorno)]=',' then
            mRetorno:=copy(mRetorno,1,length(mRetorno)-1);
         end
      else
         mRetorno:=copy(mRetorno,1,mpos_fin1-1);
      end
   else
      begin
      mpos_fin1:=pos(',',mRetorno);
      if mPos_fin1>0 then
         mRetorno:=copy(mRetorno,1,mpos_fin1-2);
      if mpos_fin1<0 then
         mPos_fin1:=length(mRetorno);
      end;
   end;

result:=mretorno;
end;
{
function fbuscarValorCampoWhatsApp(pArquivo,pcampo,ptag: String): String;
var
mpos_inidados: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';
mpos_inidados:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_inidados>0 then
   begin
   mRetorno:=copy(parquivo,mpos_inidados+length(pCampo)+3,length(parquivo));
   mpos_fin1:=pos('"',mRetorno);
   if mPos_fin1>0 then
      mRetorno:=copy(mRetorno,1,mpos_fin1-2)
   else
      begin
      mpos_fin1:=pos(',',mRetorno);
      if mPos_fin1>0 then
         mRetorno:=copy(mRetorno,1,mpos_fin1-1);
      if mpos_fin1<0 then
         mPos_fin1:=length(mRetorno);
      end;
   end;

result:=mretorno;
end;


 }
function fAjustarChaveIdCaddar: boolean;
var
query_caddar: tQuery;
begin


query_caddar := tQuery.create(nil);
query_caddar.DatabaseName:=DM1.SG_ASSOC.databasename;
query_caddar.SQL.Clear;
query_caddar.SQL.Add(' MERGE INTO CADDAR t1 '
                    +'  USING ( '
                    +'   SELECT CRCHAVE_ID_ANO,CRCHAVE_ID_ANO AS ID_ANO ,CRCHAVE_ID,CRCODEMP,MIN(ROWID) AS CHAVE_ID, COUNT(*) AS QTD '
                    +'   FROM CADDAR '
                    +'   GROUP BY CRCHAVE_ID_ANO,CRCHAVE_ID,CRCODEMP '
                    +'    HAVING COUNT(*)>1) SS '
                    +'     ON (t1.ROWID = ss.CHAVE_ID '
                    +'     ) '
                    +' '
                    +'    WHEN MATCHED THEN '
                    +'     UPDATE SET t1.CRCHAVE_ID_ANO  = t1.CRCHAVE_ID_ANO + 2000 ');
try
   query_caddar.ExecSQL;
   fdm1StartCommit;
   result:=true;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_caddar,185,'_stru '+e.message,'user');
   result:=false;
   end;
   end;
query_caddar.close;
freeandnil(query_caddar);
end;




function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string; pDifCol: integer): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp,  Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r,mqtdcol: Integer;
  mNomeCsv: String;
const
  xlCSV = $00000006;
begin
  if uppercase(ExtractFileExt(AXLSFile))<>'.CSV' then
     begin
     mNomeCsv:=fRetiraExtensao(AXLSFile)+'.csv';
     if FileExists(mNomeCsv) then
        begin
        if Not DeleteFile(pchar(mNomeCsv)) then
           begin
           result:=false;
           exit;
           end;
        end;
     end
  else
     begin
     mNomeCsv:=AXLSFile;
     end;
  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(AXLSFile);

    if uppercase(ExtractFileExt(AXLSFile))<>'.CSV' then
       begin
       XLApp.Application.Workbooks[1].SaveAs(mNomeCsv, xlCSV );
       XLApp.DisplayAlerts := False;
       XLApp.Quit;
       XLApp.Workbooks.Open(mNomeCsv);
       end
    else
       mNomeCsv:=AXLSFile;


//    exit;
//    XLApp.SaveAs('c:\test.csv', xlWorkbookDefault);
//    XLApp.saveas( w   orkbooks.SaveDC()
    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(mNomeCsv)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    try
    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    except
      if not VarIsEmpty(XLApp) then
         begin
      // XLApp.DisplayAlerts := False;
         XLApp.Quit;
         XLAPP := Unassigned;
         Sheet := Unassigned;
         end;
       result:=false;
       exit;
       end;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row+1;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column+1;


    // Set Stringgrid's row &col dimensions.

    if y<8 then
       y:=8;
    for mqtdcol:=0 to y do
       begin
       AGrid.Cells[mqtdcol+pDifCol,0]:=IntTostr(mqtdcol+1)+' celula '+DecToAlphal(mqtdcol+1);

       end;

    AGrid.RowCount := x;

    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X+pDifCol, Y]].Value;
    //  Define the loop for filling in the TStringGrid
    k := 1;
    repeat
      for r := 1 to y do
        begin
        try






          AGrid.Cells[((r+pDifCol) - 1), (k )] := RangeMatrix[K, R];


//          AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
        except
//          showmessage('range matriz ' + RangeMatrix[K, R]);
//          SHOWMESSage('agrid.cells '+inttostr(r+pDifCol)+' k' +inttostr(k));
          end;
        end;
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
       if uppercase(ExtractFileExt(AXLSFile))<>'.CSV' then
         DeleteFile(pchar(mNomeCsv));

      Result := True;
    end;
   end;
if  pDifcol>0 then
   begin
   for x:=0 to AGrid.rowcount do
      begin
      AGrid.Cells[0,x]:=inttostr(x);
      end;
    end;

end;

function fExecutarWhatsAppExternoSessionStatus(pSessionId: String; out pRetorno:String ): boolean;
var
mRetornoStatus: String;
mNomeAplicacao: string;
mRetornoStream: tStringList;
begin

mRetornoStatus := mpastaaplicacao + 'ret_status.ret';

if FileExists(mRetornoStatus) then
   DeleteFile(pchar(mRetornoStatus));

//mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno+' SessionStatus int12';
mNomeAplicacao := 'java -jar ' +mpastaaplicacao+ mNomeProjettoJavaExterno;


try
   result:=fexecprog_espera(mNomeAplicacao + ' SessionStatus '+pSessionId   ,0)=0;
   if FileExists(mRetornoStatus) then
      begin


      mRetornoStream:=tStringList.create;
      mRetornoStream.LoadFromFile(mRetornoStatus);
      pRetorno := mRetornoStream.text;
//      if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='false') then
//         begin
         pRetorno := fbuscarValorCampoWhatsApp(pRetorno,'message','');
//         end;
      freeandnil(mRetornoStream);
      result:=true;
      end
   else
      begin
      pRetorno :='nao foi encontrado o arquivo '+mRetornoStatus;
      messagedlg(pRetorno,mtWarning,[mbOk],0);

      result:=false;
      end;
except on e : exception do
   begin
   pRetorno := e.message;
   MessageDlg(e.message,mtError,[MbOk],0);
   result:=false;
   end;
   end;

if FileExists(mRetornoStatus) then
   DeleteFile(pchar(mRetornoStatus));
   
end;


function fExecutarWhatsAppExternoStart(pSessionId: String; out pRetorno:String ): boolean;

var
mNomeAplicacao: String;
mRetornoStatus: String;
mRetornoStream: tStringList;
mRetornoTerminate: String;
mRetornoStart: string;
mRetornoQrCode: string;
mCancelouChamada: boolean;


        function fSessionStartar(out pRetornoStart: string): boolean;
        var
        mRetornoStart: String;
        begin
        mRetornoStart := mpastaaplicacao + 'ret_start.ret';

        if FileExists(mRetornoStart) then
           DeleteFile(pchar(mRetornoStart));

        try
           result:=fexecprog_espera(mNomeAplicacao + ' SessionStart '+pSessionId   ,0)=0;
           if FileExists(mRetornoStart) then
              begin

              mRetornoStream:=tStringList.create;
              mRetornoStream.LoadFromFile(mRetornoStart);
              pRetornoStart := mRetornoStream.text;
//              Showmessage('retorno '+ pRetorno);

              if (fbuscarValorCampoWhatsApp(pRetornoStart,'success','')='false') then
                 begin
  //               messagedlg('retorno '+pRetorno, mtWarning,[mbOk],0);
                 end;

              freeandnil(mRetornoStream);

              result:=true;
              end
           else
              begin
//              messagedlg('nao foi encontrado o arquivo '+mRetornoStatus,mtWarning,[mbOk],0);

              result:=false;
              end;
        except on e : exception do
           begin
           MessageDlg(e.message,mtError,[MbOk],0);
           result:=false;
           end;
           end;
{
        if FileExists(mRetornoStart) then
           DeleteFile(pchar(mRetornoStart));
 }
        verteclado_02(0);
        end;

        function fPegarCodigosQrCode(out pRetornoQrCode: String): boolean;
        var
        mRetornoQrCod: String;
        mDatahora: tDatetime;
        begin
        result:=true;

        mDataHora := now();

//        While dif

        mRetornoQrCod := mpastaaplicacao + 'ret_qr_code_text.ret';

        try

           While secondsBetween(mDatahora,now)<60 do
              begin
//              Showmessage('valor '  + inttostr(secondsBetween(mDatahora,now)));

              sleep(1000);

              if FileExists(mRetornoQrCod) then
                 begin
                 if not DeleteFile(pchar(mRetornoQrCod)) then
                    begin
                    MessageDlg('Não Foi Possivel Deletar o arquivo '+mRetornoQrCod,mtError,[mbOk],0);
                    break;
                    result:=false;
                    end;
                 end;


              result:=fexecprog_espera(mNomeAplicacao + ' SessionQrCodeText '+pSessionId   ,0)=0;


              if FileExists(mRetornoQrCod) then
                 begin

                 mRetornoStream:=tStringList.create;
                 mRetornoStream.LoadFromFile(mRetornoQrCod);
                 pRetornoQrCode := mRetornoStream.text;
    //             Showmessage('retorno '+ pRetorno);

                 if (fbuscarValorCampoWhatsApp(pRetornoQrCode,'success','')='false') then
                    begin
                    continue;
                    end
                 else
                    begin
                    Application.CreateForm(TFrm_EventosWhatsApp, Frm_EventosWhatsApp);
                    Frm_EventosWhatsApp.psession  := pSessionId;
    //                Frm_EventosWhatsApp.memo_base64.Lines.Text:=fbuscarValorCampo(pRetorno,'qr','');
    //                showmessage('valor do qr  '+fbuscarValorCampoWhatsApp(pRetorno,'qr',''));


                    Frm_EventosWhatsApp.Update(fbuscarValorCampoWhatsApp(pRetornoQrCode,'qr',''));

                    Frm_EventosWhatsApp.ShowModal;
                    mCancelouChamada:=Frm_EventosWhatsApp.mCanceladoChamada;
                    freeandnil(Frm_EventosWhatsApp);
                    end;
                 freeandnil(mRetornoStream);
                 result:=mCancelouChamada=false;
                 break;
                 end
              else
                 begin
                 messagedlg('nao foi encontrado o arquivo '+mRetornoQrCod,mtWarning,[mbOk],0);
                 result:=false;
                 exit;
                 end;
           end;
        except on e : exception do
           begin
           MessageDlg(e.message,mtError,[MbOk],0);
           result:=false;
           end;
           end;
        if FileExists(mRetornoQrCod) then
           DeleteFile(pchar(mRetornoQrCod));

        end;






begin

mRetornoStatus := mpastaaplicacao + 'ret_status.ret';

if FileExists(mRetornoStatus) then
   DeleteFile(pchar(mRetornoStatus));

//mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno+' SessionStatus int12';
mNomeAplicacao := 'java -jar ' +mpastaaplicacao+ mNomeProjettoJavaExterno;


try
   result:=fexecprog_espera(mNomeAplicacao + ' SessionStatus '+pSessionId   ,0)=0;
   if FileExists(mRetornoStatus) then
      begin




      mRetornoStream:=tStringList.create;
      mRetornoStream.LoadFromFile(mRetornoStatus);
      pRetorno := mRetornoStream.text;
//      ShowMessage('valor success ['+fbuscarValorCampoWhatsApp(pRetorno,'success',''));

      if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='false') then
         begin
//         messagedlg('tentando acionar o whatsapp',mtWarning,[mbOk],0);

//      if (fbuscarValorCampoWhatsApp(pRetorno,'message','')='session_connected') then
         fExecutarWhatsAppExternoTerminate(pSessionId,mRetornoTerminate);
         fSessionStartar(mRetornoStart);
         if mCancelouChamada then
            begin
            MessageDlg('Chamada Para Conexao com o WhatsApp Cancelada',mtWarning,[mbOk],0);
            result:=false;
            exit;
            end;
         if (fbuscarValorCampoWhatsApp(mRetornoStart,'success','')='false') then
             begin
             MessageDlg('Erro ao dar o Start no Servidor!',mtWarning,[mbOk],0);
             result:=false;
             exit;
             end
          else
            begin
            if fPegarCodigosQrCode(mRetornoQrCode)=false then
               begin
               MessageDlg('Chamada Para Conexao com o WhatsApp Cancelada',mtWarning,[mbOk],0);
               freeandnil(mRetornoStream);
               result:=false;
               exit;

               end;
            end;

         end;

      freeandnil(mRetornoStream);

      result:=true;
      end
   else
      begin
      messagedlg('nao foi encontrado o arquivo '+mRetornoStatus,mtWarning,[mbOk],0);

      result:=false;
      end;
except on e : exception do
   begin
   MessageDlg(e.message,mtError,[MbOk],0);
   result:=false;
   end;
   end;
if FileExists(mRetornoStatus) then
   DeleteFile(pchar(mRetornoStatus));

end;



function fExecutarWhatsAppExternoTerminate(pSessionId: String; out pRetorno:String ): boolean;

var
mNomeAplicacao: String;
mNomeAplicacao_retorno: String;

mRetornoStream: tStringList;





begin

mNomeAplicacao_retorno := mpastaaplicacao + 'ret_terminate.ret';

if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

//mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno+' SessionStatus int12';
mNomeAplicacao := 'java -jar ' +mpastaaplicacao+ mNomeProjettoJavaExterno;

//   result:=fexecprog_espera(mNomeAplicacao + ' SessionStatus '+pSessionId   ,0)=0;

try
   result:=fexecprog_espera(mNomeAplicacao +' SessionTerminate '+pSessionId ,0)=0;
   if FileExists(mNomeAplicacao_retorno) then
      begin
      mRetornoStream:=tStringList.create;
      mRetornoStream.LoadFromFile(mNomeAplicacao_retorno);
      pRetorno := mRetornoStream.text;

      if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='false') then
         begin
         end;

      freeandnil(mRetornoStream);

      result:=true;
      end
   else
      begin
      messagedlg('nao foi encontrado o arquivo '+mNomeAplicacao_retorno,mtWarning,[mbOk],0);

      result:=false;
      end;
except on e : exception do
   begin
   MessageDlg(e.message,mtError,[MbOk],0);
   result:=false;
   end;
   end;

if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

end;



function fExecutarWhatsAppExternoSendMessage(pSessionId, pFoneDest, pMensagem: String;   out pRetorno:String ): boolean;

var
mNomeAplicacao: String;
mNomeAplicacao_retorno: String;

mRetornoStream: tStringList;

x: integer;



begin
pFoneDest:=fRetornaFoneParaWhatsApp(pFoneDest);


mNomeAplicacao_retorno := mpastaaplicacao + 'ret_send_mensagem.ret';

if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

//mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno+' SessionStatus int12';
mNomeAplicacao := 'java -jar ' +mpastaaplicacao+ mNomeProjettoJavaExterno;

//   result:=fexecprog_espera(mNomeAplicacao + ' SendMessage '+pSessionId   ,0)=0;

result:=true;

try

   for x:=0 to 1 do
      begin
      result:=fexecprog_espera(mNomeAplicacao +' SendMessage '+pSessionId+' '+pFoneDest+' '+ fTratarParametrosSpacos(pMensagem) ,0)=0;
      if FileExists(mNomeAplicacao_retorno) then
         begin
         mRetornoStream:=tStringList.create;
         mRetornoStream.LoadFromFile(mNomeAplicacao_retorno);
         pRetorno := mRetornoStream.text;
         freeandnil(mRetornoStream);
         if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='false') then
            begin
            if pos(fbuscarValorCampoWhatsApp(pRetorno,'message',''),'code: 400')>0 then
               begin
               messagedlg('Erro na estrutruras do envio  '+ fTratarParametrosSpacos(pMensagem),mtError,[mbOk],0);
               result:=false;
               break;
               end
            else if not fExecutarWhatsAppExternoStart(pSessionId,pRetorno) then
               begin
               messagedlg('Erro ao tentar conectar ao servidor de whatsapp',mtError,[mbOk],0);
               result:=false;
               break;
               end;
            continue;
            end;
         break;   
         end
      else
         begin
         messagedlg('nao foi encontrado o arquivo '+mNomeAplicacao_retorno,mtWarning,[mbOk],0);
         result:=false;
         end;
      end;
except on e : exception do
   begin
   MessageDlg(e.message,mtError,[MbOk],0);
   result:=false;
   end;
   end;
if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

end;



function fExecutarWhatsAppExternoSendFileBase64(pSessionId,pfoneDest,pArquivo: String;   out pRetorno:String ): boolean;

var
mNomeAplicacao: String;
mNomeAplicacao_retorno: String;

mRetornoStream: tStringList;


Decoder:TIdDecoderMIME;
x: integer;

//mArqBase64: Ansistring;
begin
if not FileExists(pArquivo) then
   begin
   pRetorno:='Arquivo '+pArquivo+' não Encontrado!';
   result:=false;
   exit;
   end;

pFoneDest:=fRetornaFoneParaWhatsApp(pFoneDest);

mNomeAplicacao_retorno := mpastaaplicacao + 'ret_send_file_base64.ret';

if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

//mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno+' SessionStatus int12';
mNomeAplicacao := 'java -jar ' +mpastaaplicacao+ mNomeProjettoJavaExterno;

//   result:=fexecprog_espera(mNomeAplicacao + ' SendMessage '+pSessionId   ,0)=0;

result:=true;

try
   for x:=0 to 1 do
      begin
      result:=fexecprog_espera(mNomeAplicacao +' SendFileBase64 '+pSessionId+' '+pfoneDest +' '+fTratarParametrosSpacosArquivo(pArquivo) ,0)=0;
      if FileExists(mNomeAplicacao_retorno) then
         begin
         mRetornoStream:=tStringList.create;
         mRetornoStream.LoadFromFile(mNomeAplicacao_retorno);
         pRetorno := mRetornoStream.text;
         freeandnil(mRetornoStream);

{
          if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='false') then
             begin
             MessageDlg('Mensagem Não Enviada!',mtWarning,[mbOk],0);
             result:=false;
             end;

}

         if (fbuscarValorCampoWhatsApp(pRetorno,'success','')='true') then
            break
         else
            begin
            if pos(fbuscarValorCampoWhatsApp(pRetorno,'message',''),'code: 400')>0 then
               begin
               messagedlg('Erro na estrutruras do envio do arquivo '+ fTratarParametrosSpacos(pArquivo),mtError,[mbOk],0);
               result:=false;
               break;
               end
            else if not fExecutarWhatsAppExternoStart(pSessionId,pRetorno) then
                begin
               messagedlg('Erro ao tentar conectar ao servidor de whatsapp',mtError,[mbOk],0);
               result:=false;
               break;
               end;
            end;
          end
      else
         begin
         messagedlg('nao foi encontrado o arquivo '+mNomeAplicacao_retorno,mtWarning,[mbOk],0);
         result:=false;
         break;
         end;

      end;
except on e : exception do
   begin
   MessageDlg(e.message,mtError,[MbOk],0);
   result:=false;
   end;
   end;
if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(pchar(mNomeAplicacao_retorno));

end;


function LoadFileToBase64(const AFileName: string): String;
var
//  stream: TMemoryStream;
  Encoder: TIdEncoderMIME;
  Base64String: String;
  LStream: TMemoryStream;
begin
  Encoder := TIdEncoderMIME.Create(nil);
  LStream := TMemoryStream.Create;
  try
    LStream.LoadFromFile(AFileName);
    result:= Encoder.Encode(LStream);
//    memo1.Lines.Text:=Base64String;
  finally
    FreeAndNil(Encoder);
    FreeAndNil(LStream);
  end; // try finally

end;


function fRetornaFoneParaWhatsApp(pFone: String): String;
var
mFone: string;
mFoneteste: string;
begin


mFone:=fDeixanum(MaskFone(pFone));

if length(mFone)<9 then
   begin
   mFone:='62'+mFone;
   mFone:=fDeixanum(MaskFone(pFone));
   end;
if length(mFone)=11 then
   mFone:=copy(mFone,1,2)+copy(mFone,4,8);

mFoneTeste:=MaskFone(mFone);
result:='55'+mfone;


end;


function fTratarParametrosSpacos(pTexto: String): String;
begin



pTexto:=fTratarStringWhatsApp(trim(pTexto));

result := pTexto;
//result  := StringReplace(pTexto, ' ', '%20', [rfReplaceAll, rfIgnoreCase]);
//result  := StringReplace(result, #10, '', [rfReplaceAll, rfIgnoreCase]);


end;


function fTratarParametrosSpacosArquivo(pTexto: String): String;
begin



pTexto:='"'+trim(pTexto)+'"';

result := pTexto;
//result  := StringReplace(pTexto, ' ', '%20', [rfReplaceAll, rfIgnoreCase]);
//result  := StringReplace(result, #10, '', [rfReplaceAll, rfIgnoreCase]);


end;



function fExistePreRequisitoUsarSqlLdr: boolean;
var
mVariaveisAmbiente: String;
mQtdDelPv: integer;
xDelPv: integer;
mAchouSqlLdr: boolean;
mAchouJava: boolean;

mPath: String;
mMensagem: string ;

begin
mMensagem:='';
result:=true;
mAchouSqlLdr:=false;
mAchouSqlLdr:=false;
mVariaveisAmbiente := GetEnvironmentVariable('Path');
mVariaveisAmbiente := mVariaveisAmbiente+ ExtractFilePath(Application.ExeName);
mQtdDelPv := fQtd_PV(mVariaveisAmbiente);
for xDelPv:=1 to mQtdDelPv do
   begin
   mPath:= fBuscarValor_Del_PV(xDelPv,mVariaveisAmbiente);
   if trim(mPath)='' then
      continue;
   if mPath[length(mPath)]<>'\' then
      mPath:=mPath+'\';
   if not mAchouSqlLdr then
      begin
      if FileExists(mPath+'sqlldr.exe') then
         begin
         mAchouSqlLdr:=true;
         end;

      end;

   if not mAchouJava then
      begin
      if FileExists(mPath+'java.exe') then
         begin
         mAchouJava:=true;
         end;
      end;
    if (mAchouSqlLdr) and (mAchouJava) then
       break;
   end;
if not mAchouSqlLdr then
   begin
   mMensagem:=mMensagem+centra('Não Encontrado SQLLDR.EXE ' + mPath,'@',80)+#13;
   mMensagem:=mMensagem+centra('Oracle tem ser instalado completo!' + mPath,'*',80)+#13;
   result:=false;
   end;

if not mAchouJava then
   begin
   mMensagem:=mMensagem+centra('Não Encontrado JAVA.EXE ' + mPath,'@',80)+#13;
   result:=false;
   end;

if not FileExists(mpastaaplicacao+mNomeProjettoJavaExterno) then
   begin
   if not fBaixarArquivoFtp(mNomeProjettoJavaExterno) then
      begin
      mMensagem:=mMensagem+centra('Não foi possivel baixar o arquivo '+mNomeProjettoJavaExterno,'*',80)+#13;
      result:=false;
      end;
   end;



if trim(mMensagem)<>'' then
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
end;




function fExistePreRequisitoUsarSqlLdrSemJava: boolean;
var
mVariaveisAmbiente: String;
mQtdDelPv: integer;
xDelPv: integer;
mAchouSqlLdr: boolean;

mPath: String;
mMensagem: string ;

begin
mMensagem:='';
result:=true;
mAchouSqlLdr:=false;
mAchouSqlLdr:=false;
mVariaveisAmbiente := GetEnvironmentVariable('Path');
mVariaveisAmbiente := mVariaveisAmbiente+ ExtractFilePath(Application.ExeName);
mQtdDelPv := fQtd_PV(mVariaveisAmbiente);
for xDelPv:=1 to mQtdDelPv do
   begin
   mPath:= fBuscarValor_Del_PV(xDelPv,mVariaveisAmbiente);
   if trim(mPath)='' then
      continue;
   if mPath[length(mPath)]<>'\' then
      mPath:=mPath+'\';
   if not mAchouSqlLdr then
      begin
      if FileExists(mPath+'sqlldr.exe') then
         begin
         mAchouSqlLdr:=true;
         end;

      end;

    if (mAchouSqlLdr) then
       break;
   end;
if not mAchouSqlLdr then
   begin
   mMensagem:=mMensagem+centra('Não Encontrado SQLLDR.EXE ' + mPath,'@',80)+#13;
   mMensagem:=mMensagem+centra('Oracle tem ser instalado completo!' + mPath,'*',80)+#13;
   result:=false;
   end;

if not FileExists(mpastaaplicacao+mNomeProjettoJavaExterno) then
   begin
   if not fBaixarArquivoFtp(mNomeProjettoJavaExterno) then
      begin
      mMensagem:=mMensagem+centra('Não foi possivel baixar o arquivo '+mNomeProjettoJavaExterno,'*',80)+#13;
      result:=false;
      end;
   end;



if trim(mMensagem)<>'' then
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
end;

function fValorStringSqlLdr(pTexto: String): String;
begin
result:= fSubstituirtexto(pTexto,'|','_');
end;



function fValorIntegerSqlLdr(pTexto: String): String;
begin
result:=pTexto;
end;

function fValorDoubleSqlLdr(pTexto: String): String;
begin
result:=fSubstituirtexto( pTexto,',','.');
end;

function fValorDateSqlLdr(pDate: tDateTime): String;
begin
if pDate<=pDataNula then
   result:='null'
else
   result:=FormatDateTime(fdt2, pDate);

end;



procedure fAjustarRowIdImagens;
var
mComando: String;

mMotivo: string;



begin

mComando:='UPDATE CADFOR_IMAGEM SET FI_ID_FOR=(select max(FCODFOR) from '
          +' cadfor WHERE (CADFOR.ROWID = FI_ROWID)) '
          +' WHERE FI_ID_FOR=0 '
          +' AND EXISTS ( '
          +' select FCODFOR,FRAZAO FROM CADFOR WHERE CADFOR.ROWID = FI_ROWID) ';

mMotivo:='Ajustando rowid ';
if not fExecutarComandoSQL(true,mComando,mMotivo,145) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;

mComando:='UPDATE CADCLI_IMAGEM SET CI_ID_CLI=(select max(CCODCLI) from '
          +' cadcli WHERE (CADCLI.ROWID = CI_ROWID)) '
          +' WHERE CI_ID_CLI=0 '
          +' AND EXISTS ( '
          +' select CCODCLI FROM CADCLI WHERE CADCLI.ROWID = CI_ROWID) ';

if not fExecutarComandoSQL(true,mComando,mMotivo,1157) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;

mComando:='UPDATE CADDAP_IMAGEM SET PI_ID_DAP=(select max(CAID_NEW) from '
         +' CADDAP WHERE (CADDAP.ROWID = PI_ROWID)) '
         +' WHERE PI_ID_DAP=0 '
         +' AND EXISTS ( '
         +' select CANUMERO FROM CADDAP WHERE CADDAP.ROWID = PI_ROWID) ';

if not fExecutarComandoSQL(true,mComando,mMotivo,1169) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;

mComando := 'UPDATE CADDAR_IMAGEM SET RI_ID_DAR_NEW=(select max(CRID_NEW) from '
            +' CADDAR WHERE (CADDAR.ROWID = RI_ROWID)) '
            +' WHERE RI_ID_DAR_NEW=0 '
            +' AND EXISTS ( '
            +' select CRNUMERO FROM CADDAR WHERE CADDAR.ROWID = RI_ROWID) ';

if not fExecutarComandoSQL(true,mComando,mMotivo,1181) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;

mComando := 'UPDATE CADIMO01_IMAGEM SET II_ID_IMO=(select max(IM1CODIMO) from '
           +' CADIMO01 WHERE (CADIMO01.ROWID = II_ROWID)) '
           +' WHERE II_ID_IMO=0 '
           +' AND EXISTS ( '
           +' select IM1CODIMO FROM CADIMO01 WHERE CADIMO01.ROWID = II_ROWID) ';

if not fExecutarComandoSQL(true,mComando,mMotivo,1192) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;

mComando:= 'UPDATE CADLIC_IMAGEM SET LI_ID_LC1_NEW=(select max(LC1_ID_NEW) from '
           +' CADLC1 WHERE (CADLC1.ROWID = LI_ROWID)) '
           +' WHERE LI_ID_NEW=0 '
           +' AND EXISTS ( '
           +' select LC1_ID_NEW FROM CADLC1 WHERE CADLC1.ROWID =LI_ROWID) ';

if not fExecutarComandoSQL(true,mComando,mMotivo,1205) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;


mComando := 'UPDATE CADPF_IMAGEM SET PF_ID_PF01_NEW=(select max(PF1ID_NEW) from '
           +'  CADPF1 WHERE (CADPF1.ROWID = PF_ROWID)) '
           +' WHERE PF_ID_NEW=0 '
           +' AND EXISTS ( '
           +' select PF1ID_NEW FROM CADPF1 WHERE CADPF1.ROWID =PF_ROWID) ';


if not fExecutarComandoSQL(true,mComando,mMotivo,1219) then
   begin
   MessageDlg('Erro ao executar: '+mMotivo,mtWarning,[mbOk],0 );
   exit;
   end;





end;
end.
