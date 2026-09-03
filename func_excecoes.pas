unit func_excecoes;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,adodb;

function ex_erroSql(pTabela,pLinha: Integer; PUnit, PArquivo:String): Boolean;
function ex_erroSql_Novo(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;
function ex_erroSql_Novo_texto(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): String;

function ex_erroSql_ado(pTabela: TAdoQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;
function ex_erroSql_ado_proc(pTabela: TADOStoredProc; pLinha: Integer; PUnit, PArquivo:String): Boolean;

function ex_erroSql_richedit(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): String;

function FTestarCampos(pTabela: TQuery; pNomeTab:Array of String): String;
procedure fclassificararray(var Vetor: Array of string);
function fEnviarTextoWhatsApp(pSessionId, pWhatsapp, pTexto: String): boolean;
function fEnviarArquivoWhatsApp(pSessionId, pWhatsapp, pArquivo: String): boolean;
function fTratarStringWhatsApp(pValor: String): String;


var
pTabGrav: String;

implementation
uses S_DM1, Func, S_DM2,S_DM4, funcoes_especificas;
function ex_erroSql(pTabela,pLinha: Integer; PUnit, PArquivo:String): Boolean;


var
f: TextFile;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;
mLinha: String;
v: String;
begin
if not DirectoryExists('C:\SGE\ERROSQL') then
   CreateDir('C:\SGE\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:='C:\SGE\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
{
Parametros:
01 - DM1.Query1
}
AssignFile(f,pNomeArq);
Rewrite(f);
if pTabela=1 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);

   mlinha:='';
   for plid:=1 to length(DM1.Query1.Text) do
      begin
      if DM1.Query1.Text[plid]=',' then
         begin
         mlinha:=trim(mlinha)+',';
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM1.Query1.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');

   for plid:=0 to DM1.Query1.ParamCount-1 do
      begin
      mlinha:=DM1.Query1.Params[plid].Name+'='+DM1.Query1.Params[plid].AsString;
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=2 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);

   mlinha:='';
   for plid:=1 to length(DM1.Query2.Text) do
      begin
      if DM1.Query2.Text[plid]=',' then
         begin
         mlinha:=trim(mlinha)+',';
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM1.Query2.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');

   for plid:=0 to DM1.Query2.ParamCount-1 do
      begin
      mlinha:=DM1.Query2.Params[plid].Name+'='+DM1.Query2.Params[plid].AsString;
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=3 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);

   mlinha:='';
   for plid:=1 to length(DM2.Qr_Arq.Text) do
      begin
      if DM2.Qr_Arq.Text[plid]=',' then
         begin
         mlinha:=trim(mlinha)+',';
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM2.Qr_Arq.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');

   for plid:=0 to DM2.Qr_Arq.ParamCount-1 do
      begin
      mlinha:=DM2.Qr_Arq.Params[plid].Name+'='+DM2.Qr_Arq.Params[plid].AsString;
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=4 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);

   mlinha:='';
   for plid:=1 to length(DM1.Query4.Text) do
      begin
      if DM1.Query4.Text[plid]=',' then
         begin
         mlinha:=trim(mlinha)+',';
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM1.Query4.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');

   for plid:=0 to DM1.Query4.ParamCount-1 do
      begin
      mlinha:=DM1.Query4.Params[plid].Name+'='+DM1.Query4.Params[plid].AsString;
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=5 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncPed01.Text) do
      begin
      if DM4.Qr_IncPed01.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncPed01.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncPed01.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncPed01.Params[plid].Name+'='+DM4.Qr_IncPed01.Params[plid].AsString;
      if Trim(DM4.Qr_IncPed01.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncPed01.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncPed01.Params[plid].Name+'='+DM4.Qr_IncPed01.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=6 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncPed02.Text) do
      begin
      if DM4.Qr_IncPed02.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncPed02.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncPed02.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncPed02.Params[plid].Name+'='+DM4.Qr_IncPed02.Params[plid].AsString;
      if Trim(DM4.Qr_IncPed02.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncPed02.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncPed02.Params[plid].Name+'='+DM4.Qr_IncPed02.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=7 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_AltNSai.Text) do
      begin
      if DM4.Qr_AltNSai.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_AltNSai.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_AltNSai.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_AltNSai.Params[plid].Name+'='+DM4.Qr_AltNSai.Params[plid].AsString;
      if Trim(DM4.Qr_AltNSai.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_AltNSai.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_AltNSai.Params[plid].Name+'='+DM4.Qr_AltNSai.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=8 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncLDR.Text) do
      begin
      if DM4.Qr_IncLDR.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncLDR.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncLDR.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncLDR.Params[plid].Name+'='+DM4.Qr_IncLDR.Params[plid].AsString;
      if Trim(DM4.Qr_IncLDR.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncLDR.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncLDR.Params[plid].Name+'='+DM4.Qr_IncLDR.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=9 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_AltDAR.Text) do
      begin
      if DM4.Qr_AltDAR.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_AltDAR.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_AltDAR.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_AltDAR.Params[plid].Name+'='+DM4.Qr_AltDAR.Params[plid].AsString;
      if Trim(DM4.Qr_AltDAR.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_AltDAR.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_AltDAR.Params[plid].Name+'='+DM4.Qr_AltDAR.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=10 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_AltPed01.Text) do
      begin
      if DM4.Qr_AltPed01.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_AltPed01.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_AltPed01.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_AltPed01.Params[plid].Name+'='+DM4.Qr_AltPed01.Params[plid].AsString;
      if Trim(DM4.Qr_AltPed01.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_AltPed01.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_AltPed01.Params[plid].Name+'='+DM4.Qr_AltPed01.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=11 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM1.Query3.Text) do
      begin
      if DM1.Query3.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM1.Query3.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM1.Query3.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM1.Query3.Params[plid].Name+'='+DM1.Query3.Params[plid].AsString;
      if Trim(DM1.Query3.Params[plid].AsString)='' then
         mlinha:=DM1.Query3.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM1.Query3.Params[plid].Name+'='+DM1.Query3.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=12 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncFPCR.Text) do
      begin
      if DM4.Qr_IncFPCR.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncFPCR.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncFPCR.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncFPCR.Params[plid].Name+'='+DM4.Qr_IncFPCR.Params[plid].AsString;
      if Trim(DM4.Qr_IncFPCR.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncFPCR.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncFPCR.Params[plid].Name+'='+DM4.Qr_IncFPCR.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=13 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncChqCli.Text) do
      begin
      if DM4.Qr_IncChqCli.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncChqCli.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncChqCli.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncChqCli.Params[plid].Name+'='+DM4.Qr_IncChqCli.Params[plid].AsString;
      if Trim(DM4.Qr_IncChqCli.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncChqCli.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncChqCli.Params[plid].Name+'='+DM4.Qr_IncChqCli.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=14 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncFPCRDUP.Text) do
      begin
      if DM4.Qr_IncFPCRDUP.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncFPCRDUP.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncFPCRDUP.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncFPCRDUP.Params[plid].Name+'='+DM4.Qr_IncFPCRDUP.Params[plid].AsString;
      if Trim(DM4.Qr_IncFPCRDUP.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncFPCRDUP.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncFPCRDUP.Params[plid].Name+'='+DM4.Qr_IncFPCRDUP.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end
else if pTabela=15 then
   begin
   mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
          +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
   WriteLn(f,mlinha);
   mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
   WriteLn(f,mlinha);
   mlinha:='Usuario: '+IntTostr(codusr);
   WriteLn(f,mlinha);
   i:=0;
   mlinha:='';
   for plid:=1 to length(DM4.Qr_IncDAR.Text) do
      begin
      if DM4.Qr_IncDar.Text[plid]=',' then
         begin
         mlinha:=IntToStr(i)+' '+trim(mlinha)+',';
         i:=i+1;
         WriteLn(F,mlinha);
         mlinha:='';
         end
      else
         begin
         mlinha:=mlinha+DM4.Qr_IncDar.Text[plid];
         end;
      end;
   mlinha:=Trim(mlinha);
   if mlinha<>'' then
      begin
      WriteLn(F,IntToStr(i)+mlinha);
      mlinha:='';
      end;
   WriteLn(F,'Parametros e seus Valores');
   v:=' ';
   for plid:=0 to DM4.Qr_IncDar.ParamCount-1 do
      begin
//      mlinha:=IntToStr(plid)+' '+DM4.Qr_IncDar.Params[plid].Name+'='+DM4.Qr_IncDar.Params[plid].AsString;
      if Trim(DM4.Qr_IncDar.Params[plid].AsString)='' then
         mlinha:=DM4.Qr_IncDar.Params[plid].Name+'='+chr(39)+' '+chr(39)+v
      else
         mlinha:=DM4.Qr_IncDar.Params[plid].Name+'='+DM4.Qr_IncDar.Params[plid].AsString+v;
      v:=',';
      WriteLn(F, mlinha);
      end;
   end;







closefile(f);
MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);

result:=True;
end;

// INICIO

{
function ex_erroSql_Novo(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;
var
f: TextFile;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;         
mLinha: String;
v: String;
begin
if not DirectoryExists('C:\SGE\ERROSQL') then
   CreateDir('C:\SGE\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:='C:\SGE\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
{
Parametros:
01 - DM1.Query1
}
{
AssignFile(f,pNomeArq);
Rewrite(f);
mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
WriteLn(f,mlinha);
mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
WriteLn(f,mlinha);
mlinha:='Usuario: '+IntTostr(codusr);
WriteLn(f,mlinha);

mlinha:='';
for plid:=1 to length(pTabela.Text) do
   begin
   if pTabela.Text[plid]=',' then
      begin
      mlinha:=trim(mlinha)+',';
      WriteLn(F,mlinha);
      mlinha:='';
      end
   else
      begin
      mlinha:=mlinha+pTabela.Text[plid];
      end;
   end;
mlinha:=Trim(mlinha);
if mlinha<>'' then
   begin
   WriteLn(F,mlinha);
   mlinha:='';
   end;
WriteLn(F,'Parametros e seus Valores');
for plid:=0 to pTabela.ParamCount-1 do
   begin
   mlinha:=pTabela.Params[plid].Name+'='+pTabela.Params[plid].AsString;
   WriteLn(F, mlinha);
   end;

closefile(f);
MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);

result:=True;
end;
}

//  inicio nova rottina



//function ex_erroSql_Novo(pMostar: Boolean;pTabela: Tsqlquery; pLinha: Integer; PUnit, PArquivo:String): Boolean;


procedure fclassificararray(var Vetor: Array of string);
  var
    i: integer;
    temp: string;

    changed: Boolean;
  begin
    changed := True;

    while changed do
    begin
      changed := False;
      for i := Low(Vetor) to High(Vetor)-1 do
      begin
        if (length(vetor[i]) < length(Vetor[i+1])) then // Para ordem crescente altere o sinal para ">" nesta linha
        begin
          temp := Vetor[i+1];
          Vetor[i+1] := Vetor[i];
          Vetor[i] := temp;
          changed := True;
        end;
      end;
    end;
end;



function ex_erroSql_Novo(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;

var
pMostrar: boolean;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;
mLinha: String;
mlistbox: array of string;
v: String;
  memo_texto:TStrings;
mcomando: string;
   function stringtodatetimeoracle(pdatatime: tdatetime): string;
   begin
   result:='to_date('+QuotedStr( formatdatetime(fdathor, pdatatime))+','+quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end;
begin
pMostrar:=true;
memo_texto:=TStringList.Create();

if not DirectoryExists(ExtractFilePath(Application.ExeName)+ '\ERROSQL') then
   CreateDir(ExtractFilePath(Application.ExeName)+ '\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:=ExtractFilePath(Application.ExeName)+ '\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime('dd/mm/yyyy', Date)+' as '+FormatDateTime('hh:nn:ss', time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
memo_texto.Add(mLinha);

memo_texto.Add(pTabela.SQL.Text);





memo_texto.Add('Parametros e seus Valores');
mcomando:=pTabela.SQL.Text;
setlength(mlistbox,1);

for plid:=0 to pTabela.Params.Count-1 do
   begin
   memo_texto.Add(pTabela.Params[plid].Name+'='+pTabela.Params[plid].AsString);
   if (pTabela.Params[plid].DataType=ftInteger) or
      (pTabela.Params[plid].DataType=ftFloat) or
      (pTabela.Params[plid].DataType=ftCurrency) or
      (pTabela.Params[plid].DataType=ftWord) or
      (pTabela.Params[plid].DataType=ftSmallint) then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+mudavp( pTabela.Params[plid].AsString)+'|'+'float';
      end
   else if (pTabela.Params[plid].DataType=ftdate) or
           (pTabela.Params[plid].DataType=ftDateTime) or
           (pTabela.Params[plid].DataType=ftTimeStamp)  then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+ pTabela.Params[plid].AsString+'|'+'datetime';
      end
   else
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+
            fSubstituirtexto(pTabela.Params[plid].AsString,'|','[<PAIPO>]')+'|'+'string';
      end
   end;
for plid:=high(mlistbox) downto 1 do
   begin
   if fBuscarValor_paipo(3,mlistbox[plid])='' then
      continue;

   if fBuscarValor_paipo(3,mlistbox[plid])='float' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]),mudavp( fbuscarvalor_paipo(2,mlistbox[plid])))
   else if fBuscarValor_paipo(3,mlistbox[plid])='datetime' then
       mcomando:=fSubstituirtexto(mcomando, ':'+  fbuscarvalor_paipo(1,mlistbox[plid]), stringtodatetimeoracle(strtodatetime(fbuscarvalor_paipo(2,mlistbox[plid]))))
   else
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), QuotedStr(
       fSubstituirtexto(
       fbuscarvalor_paipo(2,mlistbox[plid])
       ,'[<PAIPO>]','|'
       )));
   end;


// inicio nova rotina

// termino


memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));
memo_texto.add(mcomando);

memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));


memo_texto.SaveToFile(pNomeArq);
pTabela.SQL.SaveToFile(pnomearq+'t');

freeandnil(memo_texto);


if pMostrar then
   MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);

result:=True;
end;


// inicio result text

function ex_erroSql_Novo_texto(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): String;

var
pMostrar: boolean;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;
mLinha: String;
mlistbox: array of string;
v: String;
  memo_texto:TStrings;
mcomando: string;
   function stringtodatetimeoracle(pdatatime: tdatetime): string;
   begin
   result:='to_date('+QuotedStr( formatdatetime(fdathor, pdatatime))+','+quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end;
begin
pMostrar:=true;
memo_texto:=TStringList.Create();

if not DirectoryExists(ExtractFilePath(Application.ExeName)+ '\ERROSQL') then
   CreateDir(ExtractFilePath(Application.ExeName)+ '\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:=ExtractFilePath(Application.ExeName)+ '\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime('dd/mm/yyyy', Date)+' as '+FormatDateTime('hh:nn:ss', time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
memo_texto.Add(mLinha);

memo_texto.Add(pTabela.SQL.Text);





memo_texto.Add('Parametros e seus Valores');
mcomando:=pTabela.SQL.Text;
setlength(mlistbox,1);

for plid:=0 to pTabela.Params.Count-1 do
   begin
   memo_texto.Add(pTabela.Params[plid].Name+'='+pTabela.Params[plid].AsString);
   if (pTabela.Params[plid].DataType=ftInteger) or
      (pTabela.Params[plid].DataType=ftFloat) or
      (pTabela.Params[plid].DataType=ftCurrency) or
      (pTabela.Params[plid].DataType=ftWord) or
      (pTabela.Params[plid].DataType=ftSmallint) then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+mudavp( pTabela.Params[plid].AsString)+'|'+'float';
      end
   else if (pTabela.Params[plid].DataType=ftdate) or
           (pTabela.Params[plid].DataType=ftDateTime) or
           (pTabela.Params[plid].DataType=ftTimeStamp)  then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+ pTabela.Params[plid].AsString+'|'+'datetime';
      end
   else
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Params[plid].Name+'|'+
            fSubstituirtexto(pTabela.Params[plid].AsString,'|','[<PAIPO>]')+'|'+'string';
      end
   end;
for plid:=high(mlistbox) downto 1 do
   begin
   if fBuscarValor_paipo(3,mlistbox[plid])='' then
      continue;

   if fBuscarValor_paipo(3,mlistbox[plid])='float' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]),mudavp( fbuscarvalor_paipo(2,mlistbox[plid])))
   else if fBuscarValor_paipo(3,mlistbox[plid])='datetime' then
       mcomando:=fSubstituirtexto(mcomando, ':'+  fbuscarvalor_paipo(1,mlistbox[plid]), stringtodatetimeoracle(strtodatetime(fbuscarvalor_paipo(2,mlistbox[plid]))))
   else
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), QuotedStr(
       fSubstituirtexto(
       fbuscarvalor_paipo(2,mlistbox[plid])
       ,'[<PAIPO>]','|'
       )));
   end;


// inicio nova rotina

// termino


memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));
memo_texto.add(mcomando);

memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));


//memo_texto.SaveToFile(pNomeArq);
//pTabela.SQL.SaveToFile(pnomearq+'t');

//freeandnil(memo_texto);


{
if pMostrar then
   MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);
 }
result:=memo_texto.Text;
end;



// termino result text


// inicio


function ex_erroSql_ado(pTabela: TAdoQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;

var
pMostrar: boolean;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;
mLinha: String;
mlistbox: array of string;
v: String;
  memo_texto:TStrings;
mcomando: string;
   function fVarianttoString(pValor: variant): string;
   begin
   try
      result:=pValor
   except
      result:='';
      end;
   end;
   function stringtodatetimeoracle(pdatatime: tdatetime): string;
   begin
   result:='to_date('+QuotedStr( formatdatetime(fdathor, pdatatime))+','+quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end;
begin
pMostrar:=true;
memo_texto:=TStringList.Create();

if not DirectoryExists(ExtractFilePath(Application.ExeName)+ '\ERROSQL') then
   CreateDir(ExtractFilePath(Application.ExeName)+ '\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:=ExtractFilePath(Application.ExeName)+ '\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime('dd/mm/yyyy', Date)+' as '+FormatDateTime('hh:nn:ss', time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
memo_texto.Add(mLinha);

memo_texto.Add(pTabela.SQL.Text);





memo_texto.Add('Parametros e seus Valores');
mcomando:=pTabela.SQL.Text;
setlength(mlistbox,1);

for plid:=0 to pTabela.Parameters.Count-1 do
   begin
   memo_texto.Add(pTabela.Parameters[plid].Name+'='+fVarianttoString(pTabela.Parameters[plid].Value));
   if (pTabela.Parameters[plid].DataType=ftInteger) or
      (pTabela.Parameters[plid].DataType=ftFloat) or
      (pTabela.Parameters[plid].DataType=ftCurrency) or
      (pTabela.Parameters[plid].DataType=ftWord) or
      (pTabela.Parameters[plid].DataType=ftSmallint) then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+mudavp( fVarianttoString(pTabela.Parameters[plid].Value))+'|'+'float';
      end
   else if (pTabela.Parameters[plid].DataType=ftdate) or
           (pTabela.Parameters[plid].DataType=ftDateTime) or
           (pTabela.Parameters[plid].DataType=ftTimeStamp)  then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+fVarianttoString(pTabela.Parameters[plid].Value)+'|'+'datetime';
      end
   else
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+ fVarianttoString(pTabela.Parameters[plid].Value)+'|'+'string';
      end
   end;
for plid:=high(mlistbox) downto 1 do
   begin
   if fBuscarValor_paipo(3,mlistbox[plid])='' then
      continue;

   if fBuscarValor_paipo(3,mlistbox[plid])='float' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]),mudavp( fbuscarvalor_paipo(2,mlistbox[plid])))
   else if fBuscarValor_paipo(3,mlistbox[plid])='datetime' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), stringtodatetimeoracle(strtodatetime(fbuscarvalor_paipo(2,mlistbox[plid])) ))
   else
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), fbuscarvalor_paipo(2,mlistbox[plid]));
   end;


// inicio nova rotina

// termino


memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));
memo_texto.add(mcomando);

memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));


memo_texto.SaveToFile(pNomeArq);
pTabela.SQL.SaveToFile(pnomearq+'t');

freeandnil(memo_texto);


if pMostrar then
   MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);

result:=True;
end;


// termino




function ex_erroSql_ado_proc(pTabela: TADOStoredProc; pLinha: Integer; PUnit, PArquivo:String): Boolean;

var
pMostrar: boolean;
pAliasAnt: String;
pNomeArq: String;
i,plid: Integer;
mLinha: String;
mlistbox: array of string;
v: String;
  memo_texto:TStrings;
mcomando: string;
   function fVarianttoString(pValor: variant): string;
   begin
   try
      result:=pValor
   except
      result:='';
      end;
   end;
   function stringtodatetimeoracle(pdatatime: tdatetime): string;
   begin
   result:='to_date('+QuotedStr( formatdatetime(fdathor, pdatatime))+','+quotedstr('DD/MM/YYYY HH24:MI:SS')+')';
   end;
begin
pMostrar:=true;
memo_texto:=TStringList.Create();

if not DirectoryExists(ExtractFilePath(Application.ExeName)+ '\ERROSQL') then
   CreateDir(ExtractFilePath(Application.ExeName)+ '\ERROSQL');
plid:=0;
While true do
   begin
   pNomeArq:=ExtractFilePath(Application.ExeName)+ '\ERROSQL\EX'+IntToStr(plid);
   if not FileExists(pNomeArq) then
      break;
   plid:=plid+1;
   end;
mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime('dd/mm/yyyy', Date)+' as '+FormatDateTime('hh:nn:ss', time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
memo_texto.Add(mLinha);






memo_texto.Add('Parametros e seus Valores');
setlength(mlistbox,1);

for plid:=0 to pTabela.Parameters.Count-1 do
   begin
   memo_texto.Add(pTabela.Parameters[plid].Name+'='+fVarianttoString(pTabela.Parameters[plid].Value));
   if (pTabela.Parameters[plid].DataType=ftInteger) or
      (pTabela.Parameters[plid].DataType=ftFloat) or
      (pTabela.Parameters[plid].DataType=ftCurrency) or
      (pTabela.Parameters[plid].DataType=ftWord) or
      (pTabela.Parameters[plid].DataType=ftSmallint) then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+mudavp( fVarianttoString(pTabela.Parameters[plid].Value))+'|'+'float';
      end
   else if (pTabela.Parameters[plid].DataType=ftdate) or
           (pTabela.Parameters[plid].DataType=ftDateTime) or
           (pTabela.Parameters[plid].DataType=ftTimeStamp)  then
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+fVarianttoString(pTabela.Parameters[plid].Value)+'|'+'datetime';
      end
   else
      begin
      setlength(mlistbox,high(mlistbox)+2);
      mlistbox[high(mlistbox)]:=pTabela.Parameters[plid].Name+'|'+ fVarianttoString(pTabela.Parameters[plid].Value)+'|'+'string';
      end
   end;
for plid:=high(mlistbox) downto 1 do
   begin
   if fBuscarValor_paipo(3,mlistbox[plid])='' then
      continue;

   if fBuscarValor_paipo(3,mlistbox[plid])='float' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]),mudavp( fbuscarvalor_paipo(2,mlistbox[plid])))
   else if fBuscarValor_paipo(3,mlistbox[plid])='datetime' then
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), stringtodatetimeoracle(strtodatetime(fbuscarvalor_paipo(2,mlistbox[plid])) ))
   else
       mcomando:=fSubstituirtexto(mcomando,':'+ fbuscarvalor_paipo(1,mlistbox[plid]), fbuscarvalor_paipo(2,mlistbox[plid]));
   end;


// inicio nova rotina

// termino


memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));
memo_texto.add(mcomando);

memo_texto.add(insere('*','*',80));
memo_texto.add(insere('*','*',80));


memo_texto.SaveToFile(pNomeArq);
//pTabela.SQL.SaveToFile(pnomearq+'t');

freeandnil(memo_texto);


if pMostrar then
   MessageDlg('Houve um erro não identificado. Foi Gerado um arquivo de log'+#13
          +'com o nome de: '+pNomeArq+' Este Arquivo deverá ser enviado '+#13
          +'para facilitar na correçãos.'+#13
          +'OBSERVAÇÕES: NÃO DEIXE DE ENVIAR ESTE ARQUIVO A INTERSYS'
         ,mtError,[mbOk],0);

result:=True;
end;


function ex_erroSql_richedit(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): String;
var

pAliasAnt: String;

i,plid: Integer;
mLinha: String;
v: String;
begin

Result:='';



mlinha:='Erro de Excecao Ocasionado em: '+FormatDateTime(fdt2, Date)+' as '+FormatDateTime(fhr, time)
       +' no Formulario: '+PUnit+' Arquivo: '+PArquivo+' Linha: '+IntToStr(pLinha);
result:=result+mlinha+chr(10)+chr(13);
mlinha:='Empresa: '+IntTostr(codemp)+'-'+DM1.Tb_EmpRAZAO.Value+' CNPJ:'+DM1.Tb_Empcnpj_masc.Value;
result:=result+mlinha+chr(10)+chr(13);
mlinha:='Usuario: '+IntTostr(codusr);
result:=result+mlinha+chr(10)+chr(13);

mlinha:='';
for plid:=1 to length(pTabela.Text) do
   begin
   if pTabela.Text[plid]=',' then
      begin
      mlinha:=trim(mlinha)+',';
      result:=result+mlinha+chr(10)+chr(13);
      mlinha:='';
      end
   else
      begin
      mlinha:=mlinha+pTabela.Text[plid];
      end;
   end;
mlinha:=Trim(mlinha);
if mlinha<>'' then
   begin
   result:=result+mlinha+chr(10)+chr(13);
   mlinha:='';
   end;
result:=result+'Parametros e seus Valores'+chr(10)+chr(13);
for plid:=0 to pTabela.ParamCount-1 do
   begin
   mlinha:=pTabela.Params[plid].Name+'='+pTabela.Params[plid].AsString;
   result:=result+mlinha+chr(10)+chr(13);
   end;

result:=result+insere('*','*',100)+chr(10)+chr(13);
result:=result+insere('*','*',100)+chr(10)+chr(13);
result:=result+insere('*','*',100)+chr(10)+chr(13);

end;



// TERMINO




{
pTipoProd=0-Produto
          1-Servico
}

{
Variaveis Publicas que seram preenchidas no inicio do pedido
mPed0_AliqIcmsTrib0A: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0B: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0C: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0E: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0E: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0F: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0G: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0H: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0I: Real; // Aliquota de Icms p/Produtos Tributados
mPed0_AliqIcmsTrib0J: Real; // Aliquota de Icms p/Produtos Tributados


mPed1_AliqIcmsTrib0A: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0B: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0C: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0E: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0E: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0F: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0G: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0H: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0I: Real; // Aliquota de Icms p/Produtos Tributados
mPed1_AliqIcmsTrib0J: Real; // Aliquota de Icms p/Produtos Tributados

mPed0_pRedTribA: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribB: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribC: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribD: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribE: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribF: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribG: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribH: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribI: Real; // percentual de reducao de Icms para Produtos Tributados
mPed0_pRedTribJ: Real; // percentual de reducao de Icms para Produtos Tributados

mPed1_pRedTribA: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribB: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribC: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribD: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribE: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribF: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribG: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribH: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribI: Real; // percentual de reducao de Icms para Produtos Tributados
mPed1_pRedTribJ: Real; // percentual de reducao de Icms para Produtos Tributados

mPed0_St_RedIcmA: Real=0;
mPed0_St_RedIcmB: Real=0;
mPed0_St_RedIcmC: Real=0;
mPed0_St_RedIcmD: Real=0;
mPed0_St_RedIcmE: Real=0;
mPed0_St_RedIcmF: Real=0;
mPed0_St_RedIcmG: Real=0;
mPed0_St_RedIcmH: Real=0;
mPed0_St_RedIcmI: Real=0;
mPed0_St_RedIcmJ: Real=0;

mPed1_St_RedIcmA: Real=0;
mPed1_St_RedIcmB: Real=0;
mPed1_St_RedIcmC: Real=0;
mPed1_St_RedIcmD: Real=0;
mPed1_St_RedIcmE: Real=0;
mPed1_St_RedIcmF: Real=0;
mPed1_St_RedIcmG: Real=0;
mPed1_St_RedIcmH: Real=0;
mPed1_St_RedIcmI: Real=0;
mPed1_St_RedIcmJ: Real=0;


mPed0_AliqRepas : Real=0;
mPed0_ST_AliqCred: Real=0;
mPed0_ST_AliqDeb: Real=0;
mPed0_St_IVA_Pos: Real=0;
mPed0_St_IVA_NEG: Real=0;
mPed0_St_IVA_INA: Real=0;


mPed1_AliqRepas : Real=0;
mPed1_ST_AliqCred: Real=0;
mPed1_ST_AliqDeb: Real=0;
mPed1_St_IVA_Pos: Real=0;
mPed1_St_IVA_NEG: Real=0;
mPed1_St_IVA_INA: Real=0;

mPed0_Cfo_Ret    : Real;
mPed0_Cfo_Trib   : Real;
mPed0_Cfo_Isento : Real;

mPed1_Cfo_Ret    : Real;
mPed1_Cfo_Trib   : Real;
mPed1_Cfo_Isento : Real;

}


{
function ReplaceTags(var Editor: TWPRichText; LocTexto: String): TWPRichText;
var
Localizar : String;
BlobStream: TStream;
Texto_Novo: TWPRichText;
begin

//Texto_Novo:= TWPRichText.Create(Self);
Texto_Novo:= TWPRichText.Create(nil);


Localizar := '['+LocTexto+']';
with Editor.Finder do
   begin
   wildcard := '*';
   ToStart;

   try
     Texto_Novo.Finder.ToStart;
     while Texto_Novo.Finder.Next(Localizar) do
        begin
        Texto_Novo.CPPosition       := Texto_Novo.Finder.FoundPosition;
        Texto_Novo.Finder.FoundText := '';
//          fCriarGrades(0);
//          fCriarGrades(1);
//          fCriarGrades(2);
         end;
     Texto_Novo.DelayedReformat;
   finally
//     FreeAndNil(wprt);
      end;
   end;
Editor.Refresh;
result:=Texto_Novo;
FreeAndNil(Texto_Novo);

end;
}



function FTestarCampos(pTabela: TQuery; pNomeTab:Array of String): String;
//CAMPOS FALTANDO
var
x: Integer;
mResult: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.CLEAR;
DM1.Query1.SQL.Add('Select * from USER_TAB_COLUMNS where (TABLE_NAME='+chr(39)+pNomeTab[0]+chr(39));
for x:=1 to high(pNomeTab) do
   begin
   DM1.Query1.Sql.add(' or TABLE_NAME='+chr(39)+pnometab[x]+chr(39));
   end;
DM1.Query1.Sql.add(' )');


DM1.Query1.Open;
mResult:='';
for x:=0 to pTabela.Fields.Count-1 do
   begin
   if pTabela.Fields[x].FieldKind=fkCalculated then
      Continue;
   if not DM1.Query1.Locate('COLUMN_NAME',uppercase(pTabela.Fields[x].FieldName),[]) then
      begin
      mResult:=mResult+pTabela.Fields[x].FieldName+' ';
      end;
   end;
result:=mResult;
end;



function fEnviarTextoWhatsApp(pSessionId, pWhatsapp, pTexto: String): boolean;
var
mRetorno: String;
begin
result:=true;
if not fExisteAplicacaoExternaJava then
   begin
   result:=false;
   exit;
   end;







if not fExecutarWhatsAppExternoSendMessage(pSessionId, pWhatsapp, pTexto,  mRetorno) then
   begin
   MessageDlg('Erro ao Buscar Iniciar Sessão '+mRetorno,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;



end;

function fEnviarArquivoWhatsApp(pSessionId, pWhatsapp, pArquivo: String): boolean;
var
mRetorno: String;
begin
if not fExisteAplicacaoExternaJava then
   begin
   result:=false;
   exit;
   end;







if not fExecutarWhatsAppExternoSendFileBase64(pSessionId, pWhatsapp, pArquivo,  mRetorno) then
   begin
   MessageDlg('Erro ao Buscar Iniciar Sessão '+mRetorno,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;

result:=true;

end;

function fTratarStringWhatsApp(pValor: String): String;
var
mtam,x: Integer;
mTextoSai: String;
begin

mtam:=length(pValor);
mTextoSai:='';
for x:=1 to mtam do
   begin
   if pValor[x]='&' then
      mTextoSai:=mTextoSai+'&'
   else if (pValor[x] in ['a'..'z']) or
      (pValor[x] in ['A'..'Z']) or
      (pValor[x] in ['0'..'9']) or
      (pValor[x] in ['?','[',']','-','_','*','%','$','@',' ','/','.',',','+',':',
                     'á','é','í','ó','ú','à','è','ì','ò',
                     'ù','â','ê','î','ô','û','ä','ë','ï',
                     'ö','ü','ã','õ','ñ','ç','Á','É','Í',
                     'Ó','Ú','À','È','Ì','Ò','Ù','Â','Ê',
                     'Î','Ô','Û','Ä','Ë','Ï','Ö','Ü','Ã',
                     'Õ','Ñ','Ç']) then
       mTextoSai:=mTextoSai+pvalor[x]
   else
       mTextoSai:=mTextoSai+'';
   end;


result:='"'+mTextoSai+'"';
end;


end.
