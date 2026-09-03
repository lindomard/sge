unit S_ThReplica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, ToolEdit,
  DB, DBTables, Buttons, DBCtrls, RxMemDS, CheckLst;


type
  ThReplica = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    Nome_Tabela: String;
  end;

implementation

uses S_DM_Replica, S_DM1, Func, lerarq, s_Princ, S_DM4;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure ThReplica.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ ThReplica }

procedure ThReplica.Execute;
var
  Arq : TextFile;
  x: Integer;
  SqlInsert, SqlUpdate: String;
  TABELA, CAMPO1, CAMPO2: String;
  Query1: TQuery;
  Qr_Server, Temp_Server, Qr_Local, Temp_Local: TQuery;
  SERVICO, USUARIO: String;
  xInicio: TDateTime;
  DataBase: String;
begin
  { Place thread code here }
Frm_Princ.Timer5.Enabled:=FALSE;

Query1 := TQuery.Create(nil);
Query1.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Qr_Local := TQuery.Create(nil);
Qr_Local.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Temp_Local := TQuery.Create(nil);
Temp_Local.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Qr_Server := TQuery.Create(nil);
Qr_Server.DatabaseName:=DM_Replica.DB_REPLICA.DatabaseName;
Temp_Server := TQuery.Create(nil);
Temp_Server.DatabaseName:=DM_Replica.DB_REPLICA.DatabaseName;

if flfilpad(0,'_principal','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_SERVICO',[]) then
    SERVICO:=DM4.Tb_FilPad2FPVALOR.AsString;
  if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_USUARIO',[]) then
    USUARIO:=DM4.Tb_FilPad2FPVALOR.AsString;
  end;
try
  DM_REPLICA.DB_REPLICA.Connected:=False;
  DM_Replica.DB_REPLICA.Params[0]:='SERVER NAME='+trim(SERVICO);
  DM_Replica.DB_REPLICA.Params[1]:='USER NAME='+trim(USUARIO);
  DM_Replica.DB_REPLICA.Connected:=True;
except
  if not DirectoryExists('c:\sge\erro_replica') then
    CreateDirectory('c:\sge\erro_replica',0);
  AssignFile(Arq,SALVA_NOME('c:\sge\erro_replica\','ErroReplica'));
  ReWrite(Arq);
  for X:=0 to DM_Replica.DB_REPLICA.Params.Count - 1 do
    begin
    WriteLn(Arq,DM_Replica.DB_REPLICA.Params[X]);
    end;
  CloseFile(Arq);
  Exit;
  end;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' SELECT * FROM CADEMP WHERE CODEMP='+IntToStr(iif(codemp>100,codemp-100,codemp)));
Query1.Open;
if (DM1.SG_ASSOC.Connected) and (valfloat(Query1.FieldByName('CGC').AsString)>0) and (vThread('REPLICA_'+Nome_Tabela)) then
  begin
  try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select count(*) as total from cadexth where status<2 and NOMETHREAD='+QuotedStr('REPLICA_'+Nome_Tabela));
    Query1.Open;
    if Query1.FieldByName('total').AsInteger<1 then
      begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select count(*) as total from cadexth where NOMETHREAD='+QuotedStr('REPLICA_'+Nome_Tabela));
      Query1.Open;
      if Query1.FieldByName('total').AsInteger>1000 then
        begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('delete from cadexth where status>1 and  NOMETHREAD='+QuotedStr('REPLICA_'+Nome_Tabela));
        try
          Query1.ExecSQL;
        except
          end;
        end;
      try
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add(' insert into CADEXTH(CODEMP, '
                          +'                     NOMETHREAD, '
                          +'                     NOMEPC, '
                          +'                     ENDERMAC, '
                          +'                     HORAINICIO, '
                          +'                     STATUS) '
                          +' values (:pCODEMP,  '
                          +'        :pNOMETHREAD, '
                          +'        :pNOMEPC, '
                          +'        :pENDERMAC, '
                          +'        :pHORAINICIO, '
                          +'        :pSTATUS) ');
        Query1.ParamByName('pCODEMP').AsInteger:=codemp;
        Query1.ParamByName('pNOMETHREAD').AsString:='REPLICA_'+Nome_Tabela;
        Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
        Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
        Query1.ParamByName('pHORAINICIO').AsString:=FormatDateTime('dd/mm/yyyy hh24:mi:ss',Now);
        Query1.ParamByName('pSTATUS').AsInteger:=0;
        Query1.ExecSQL;
      except
        end;
      try
        if Nome_Tabela='CADPRO' then
          begin
          TABELA:='CADPRO';
          CAMPO1:='PDCODEMP';
          CAMPO2:='PDCODPRO';
          //verifica se existe registro a ser replicado
          Qr_Server.Close;
          Qr_Server.SQL.Clear;
          Qr_Server.SQL.Add('Select * FROM '+TABELA+' where 1=1 ');
          if flfilpad(0,'_principal','') then
            if DM4.Tb_FilPad2.Locate('FPCOMP','DatHorRepPro',[]) then
              begin
              DataBase := 'to_date('+QuotedStr(DM4.Tb_FilPad2FPVALOR.AsString)+','+QuotedStr('dd/mm/yyyy hh24:mi:ss')+')';
              Qr_Server.SQL.Add(' and PDDATAUA > '+DataBase);
              end;
          //Qr_Server.SQL.add('  (  (PDDATA_REPLICA is null or PDDATA_REPLICA<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');
          //Qr_Server.SQL.add(' or  (PDDATA_REPLICA>='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+' and PDDATA_REPLICA<PDDATAUA ) )');
          if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
            Qr_Server.SQL.add(' and PDCODEMP=0'+IntToStr(codemp));
          Qr_Server.SQL.add(' order by PDNOME ');
          Qr_Server.open;
          end
        else
          begin
          TABELA:='CADCLI';
          CAMPO1:='CCODEMP';
          CAMPO2:='CCODCLI';
          //verifica se existe registro a ser replicado
          Qr_Server.Close;
          Qr_Server.SQL.Clear;
          Qr_Server.SQL.Add('Select * FROM '+TABELA+' where 1=1 ');
          if flfilpad(0,'_principal','') then
            if DM4.Tb_FilPad2.Locate('FPCOMP','DatHorRepCli',[]) then
              begin
              DataBase := 'to_date('+QuotedStr(DM4.Tb_FilPad2FPVALOR.AsString)+','+QuotedStr('dd/mm/yyyy hh24:mi:ss')+')';
              Qr_Server.SQL.Add(' and CDTALT > '+DataBase);
              end;
          //Qr_Server.SQL.add('  (  (CDATA_REPLICA is null or CDATA_REPLICA<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');
          //Qr_Server.SQL.add(' or  (CDATA_REPLICA>='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+' and CDATA_REPLICA<CDTALT ) )');
          if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
            Qr_Server.SQL.add(' and CCODEMP=0'+IntToStr(codemp));
          Qr_Server.SQL.add(' order by CRAZAO ');
          Qr_Server.open;
          end;
        if Qr_Server.IsEmpty then
          begin
          DM_Replica.DB_REPLICA.Connected:=False;
          Frm_Princ.Timer5.Enabled:=True;
          Exit;
          end;
        xInicio := Now;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add(' update CADEXTH set HORAINICIO=:pHORAINICIO, '
                          +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                          +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                          +' and ENDERMAC=:pENDERMAC and STATUS=0 ');
        Query1.ParamByName('pCODEMP').AsInteger:=codemp;
        Query1.ParamByName('pNOMETHREAD').AsString:='REPLICA_'+Nome_Tabela;
        Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
        Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
        Query1.ParamByName('pHORAINICIO').AsString:=FormatDateTime('dd/mm/yyyy hh24:mi:ss',xInicio);
        Query1.ParamByName('pSTATUS').AsInteger:=1;
        Query1.ExecSQL;
        if Qr_Server.IsEmpty then
          begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                            +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                            +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                            +' and ENDERMAC=:pENDERMAC and STATUS=1 ');
          Query1.ParamByName('pCODEMP').AsInteger:=codemp;
          Query1.ParamByName('pNOMETHREAD').AsString:='REPLICA_'+Nome_Tabela;
          Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
          Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
          Query1.ParamByName('pHORAFIM').AsString:=FormatDateTime('dd/mm/yyyy hh24:mi:ss',Now);
          Query1.ParamByName('pSTATUS').AsInteger:=3;
          Query1.ExecSQL;
          DM_Replica.DB_REPLICA.Connected:=False;
          Frm_Princ.Timer5.Enabled:=True;
          Exit;
          end;
      //Seleciona campos e tipos de campos para replicação
      Temp_Server.Close;
      Temp_Server.SQL.Clear;
      Temp_Server.SQL.Add(' select COLUMN_NAME, DATA_TYPE from USER_TAB_COLUMNS ');
      Temp_Server.SQL.Add(' where table_name='+QuotedStr(TABELA));
      if TABELA='CADPRO' then
        Temp_Server.SQL.Add(' and COLUMN_NAME not in ('
                          +QuotedStr('PDSALDO')+','
                          +QuotedStr('PDULTCPR')+','
                          +QuotedStr('PDDTULTSAI')+','
                          +QuotedStr('PDDTULTENT')+','
                          +QuotedStr('PDENTPEN')
                          + ')');
      Temp_Server.SQL.Add(' order by COLUMN_NAME ');
      Temp_Server.Open;
      //Monta Script de Insert padrão
      Temp_Server.First;
      SqlInsert:=' insert into '+TABELA+'('+Temp_Server.FieldByName('COLUMN_NAME').AsString;
      Temp_Server.Next;
      while not Temp_Server.Eof do
        begin
        SqlInsert:=SqlInsert+','+Temp_Server.FieldByName('COLUMN_NAME').AsString;
        Temp_Server.Next;
        end;
      Temp_Server.First;
      SqlInsert:=SqlInsert+') values (:p'+Temp_Server.FieldByName('COLUMN_NAME').AsString;
      Temp_Server.Next;
      while not Temp_Server.Eof do
        begin
        SqlInsert:=SqlInsert+',:p'+Temp_Server.FieldByName('COLUMN_NAME').AsString;
        Temp_Server.Next;
        end;
      SqlInsert:=SqlInsert+')';
      //Monta Script de Update padrão
      Temp_Server.First;
      while not Temp_Server.Eof do
        begin
        if (Temp_Server.FieldByName('COLUMN_NAME').AsString<>CAMPO1)
          and (Temp_Server.FieldByName('COLUMN_NAME').AsString<>CAMPO2) then
          begin
          SqlUpdate:=' update '+TABELA+' set '+Temp_Server.FieldByName('COLUMN_NAME').AsString
                                        +'=:p'+Temp_Server.FieldByName('COLUMN_NAME').AsString;
          Break;
          end;
        Temp_Server.Next;
        end;
      Temp_Server.First;
      Temp_Server.Next;
      while not Temp_Server.Eof do
        begin
        if (Temp_Server.FieldByName('COLUMN_NAME').AsString<>CAMPO1)
          and (Temp_Server.FieldByName('COLUMN_NAME').AsString<>CAMPO2) then
          begin
          SqlUpdate:=SqlUpdate+','+Temp_Server.FieldByName('COLUMN_NAME').AsString
                              +'=:p'+Temp_Server.FieldByName('COLUMN_NAME').AsString;
          end;
        Temp_Server.Next;
        end;
      SqlUpdate:=SqlUpdate+' where '+CAMPO1+'=:p'+CAMPO1+' and '+CAMPO2+'=:p'+CAMPO2;
      //Enquanto não finaliza todos os registros a serem replicados
      xInicio:=Now;
      while not Qr_Server.Eof do
        begin
        {if Now>xInicio+120 then
          begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                        +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                        +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                        +' and ENDERMAC=:pENDERMAC and STATUS=1 ');
          Query1.ParamByName('pCODEMP').AsInteger:=codemp;
          Query1.ParamByName('pNOMETHREAD').AsString:='REPLICA_'+Nome_Tabela;
          Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
          Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
          Query1.ParamByName('pHORAFIM').AsString:=FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
          Query1.ParamByName('pSTATUS').AsInteger:=3;
          Query1.ExecSQL;
          Abort;
          end;   }
        Qr_Local.Close;
        Qr_Local.SQL.Clear;
        Qr_Local.SQL.Add(' select * from '+TABELA+' where '+CAMPO2+'=0'+Qr_Server.FieldByName(CAMPO2).AsString);
        if not DM1.Qr_TID.locate('TINOME',TABELA,[]) then
          Qr_Local.SQL.add(' and '+CAMPO2+'=0'+Qr_Server.FieldByName(CAMPO2).AsString);
        Qr_Local.Open;
        if Qr_Local.IsEmpty then
          begin
          Temp_Local.Close;
          Temp_Local.SQL.Text:=SqlInsert;
          end
        else
          begin
          Temp_Local.Close;
          Temp_Local.SQL.Text:=SqlUpdate;
          end;
      Temp_Server.First;
      while not Temp_Server.Eof do
        begin
        if Temp_Server.FieldByName('DATA_TYPE').AsString='DATE' then
          Temp_Local.ParamByName('p'+Temp_Server.FieldByName('COLUMN_NAME').AsString).AsDateTime:=Qr_Server.FieldByName(Temp_Server.FieldByName('COLUMN_NAME').AsString).AsDateTime
        else if Temp_Server.FieldByName('DATA_TYPE').AsString='NUMBER' then
          Temp_Local.ParamByName('p'+Temp_Server.FieldByName('COLUMN_NAME').AsString).AsFloat:=Qr_Server.FieldByName(Temp_Server.FieldByName('COLUMN_NAME').AsString).AsFloat
        else if Temp_Server.FieldByName('DATA_TYPE').AsString='VARCHAR2' then
          Temp_Local.ParamByName('p'+Temp_Server.FieldByName('COLUMN_NAME').AsString).AsString:=Qr_Server.FieldByName(Temp_Server.FieldByName('COLUMN_NAME').AsString).AsString
        else
          Temp_Local.ParamByName('p'+Temp_Server.FieldByName('COLUMN_NAME').AsString).Value:=Qr_Server.FieldByName(Temp_Server.FieldByName('COLUMN_NAME').AsString).Value;
        Temp_Server.Next;
        end;
      try

        if Nome_Tabela='CADPRO' then
          begin
          if not Qr_Local.IsEmpty then
            if Qr_Server.FieldByName('PDDATAUA').AsDateTime >= Qr_Local.FieldByName('PDDATAUA').AsDateTime then
              begin
              Temp_Local.ExecSQL();
              Query1.Close;
              Query1.SQL.Clear;
              Query1.SQL.Add(' update '+TABELA+' set PDDATA_REPLICA=:pPDDATA_REPLICA ');
              Query1.SQL.Add(' where '+CAMPO2+'='+Qr_Server.FieldByName(CAMPO2).AsString);
              Query1.SQL.Add(' and '+CAMPO1+'='+Qr_Server.FieldByName(CAMPO1).AsString);
              Query1.ParamByName('pPDDATA_REPLICA').AsDateTime:=Now;
              Query1.ExecSql();
              end;
          end
        else if Nome_Tabela='CADCLI' then
          begin
          if not Qr_Local.IsEmpty then
            if Qr_Server.FieldByName('CDTALT').AsDateTime >= Qr_Local.FieldByName('CDTALT').AsDateTime then
              begin
              Temp_Local.ExecSQL();
              Query1.Close;
              Query1.SQL.Clear;
              Query1.SQL.Add(' update '+TABELA+' set CDATA_REPLICA=:pCDATA_REPLICA ');
              Query1.SQL.Add(' where '+CAMPO2+'='+Qr_Server.FieldByName(CAMPO2).AsString);
              Query1.SQL.Add(' and '+CAMPO1+'='+Qr_Server.FieldByName(CAMPO1).AsString);
              Query1.ParamByName('pCDATA_REPLICA').AsDateTime:=Now;
              Query1.ExecSql();
              end;
          end;
      except
        if not DirectoryExists('c:\sge\erro_replica') then
          CreateDirectory('c:\sge\erro_replica',0);
        AssignFile(Arq,SALVA_NOME('c:\sge\erro_replica\','ErroReplica'));
        ReWrite(Arq);
        WriteLn(Arq,Temp_Local.Sql.text);
        WriteLn(Arq,'Parametros');
        for X:=0 to Temp_Local.Params.Count - 1 do
          begin
          WriteLn(Arq,Temp_Local.Params[X].Name+'='+Temp_Local.Params[X].AsString);
          end;
        CloseFile(Arq);
  //      Exit;
        end;
      Qr_Server.NEXT;
      end;
    if Nome_Tabela='CADPRO' then
      begin
      fDeletaPadroes(0,'_principal','DatHorRepPro');
      fGravaPadroes(0,'DatHorRepPro'    ,'checked'   ,'_principal',FormatDateTime('dd/mm/yyyy hh24:mi:ss',xInicio));
      end
    else if Nome_Tabela='CADCLI' then
      begin
      fDeletaPadroes(0,'_principal','DatHorRepCli');
      fGravaPadroes(0,'DatHorRepCli'    ,'checked'   ,'_principal',FormatDateTime('dd/mm/yyyy hh24:mi:ss',xInicio));
      end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                  +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                  +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                  +' and ENDERMAC=:pENDERMAC and STATUS=1 ');
    Query1.ParamByName('pCODEMP').AsInteger:=codemp;
    Query1.ParamByName('pNOMETHREAD').AsString:='REPLICA_'+Nome_Tabela;
    Query1.ParamByName('pNOMEPC').AsString:=NomeComputador;
    Query1.ParamByName('pENDERMAC').AsString:=MacAddress;
    Query1.ParamByName('pHORAFIM').AsString:=FormatDateTime('dd/mm/yyyy hh24:mi:ss',Now);
    Query1.ParamByName('pSTATUS').AsInteger:=2;
    Query1.ExecSQL;
    except
      end;
    end;
  except
    end;
  end;
DM_Replica.DB_REPLICA.Connected:=False;
Frm_Princ.Timer5.Enabled:=True;
end;

end.
