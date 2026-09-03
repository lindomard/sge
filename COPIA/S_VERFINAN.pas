unit S_VERFINAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, OleCtrls, SHDocVw ,UrlMon, ComCtrls, WinInet,
  Menus, Db, DbTables, S_DM1;

type
  T_VERFINAN = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses Func, s_Princ, S_GerDup;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure VER_FINAN.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ VER_FINAN }

procedure T_VERFINAN.Execute;
var
  Query1, Query2, Query3, Query4: TQuery;
  Form_Gerdup : TFrm_Gerdup;
  xInicio: TDateTime;
begin
  { Place thread code here }
Query1 := TQuery.Create(nil);
Query1.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query2 := TQuery.Create(nil);
Query2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query3 := TQuery.Create(nil);
Query3.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query4 := TQuery.Create(nil);
Query4.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Frm_Princ.Timer3.Enabled:=False;
Query4.Close;
Query4.SQL.Clear;
Query4.SQL.Add(' SELECT * FROM CADEMP WHERE CODEMP='+IntToStr(iif(codemp>100,codemp-100,codemp)));
Query4.Open;
//if (DM1.SG_ASSOC.Connected) and (valfloat(Query4.FieldByName('CGC').AsString)>0) and (Query4.FieldByName('CGC').AsString='1596015000127') and (vThread('VERFINAN')) then
if (DM1.SG_ASSOC.Connected) and (valfloat(Query4.FieldByName('CGC').AsString)>0) and (vThread('VERFINAN')) then
  begin
  try
    Query4.Close;
    Query4.SQL.Clear;
    Query4.SQL.Add('select count(*) as total from cadexth where status<2 ');
    Query4.Open;
    if Query4.FieldByName('total').AsInteger<1 then
      begin
      Query4.Close;
      Query4.SQL.Clear;
      Query4.SQL.Add('select count(*) as total from cadexth ');
      Query4.Open;
      if Query4.FieldByName('total').AsInteger>1000 then
        begin
        Query4.Close;
        Query4.SQL.Clear;
        Query4.SQL.Add('delete from cadexth where status>1');
        try
          Query4.ExecSQL;
        except
          end;
        end;
      try
        Query4.Close;
        Query4.SQL.Clear;
        Query4.SQL.Add(' insert into CADEXTH(CODEMP, '
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
        Query4.ParamByName('pCODEMP').AsInteger:=codemp;
        Query4.ParamByName('pNOMETHREAD').AsString:='VERFINAN';
        Query4.ParamByName('pNOMEPC').AsString:=NomeComputador;
        Query4.ParamByName('pENDERMAC').AsString:=MacAddress;
        Query4.ParamByName('pHORAINICIO').AsString:=FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
        Query4.ParamByName('pSTATUS').AsInteger:=0;
        Query4.ExecSQL;
      except
        end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('SELECT * FROM CADDAR_CONF WHERE CRCVERIFICADO='+chr(39)+'N'+chr(39));
      Query1.Open;
      xInicio:=Now;
      Query4.Close;
      Query4.SQL.Clear;
      Query4.SQL.Add(' update CADEXTH set HORAINICIO=:pHORAINICIO, '
                        +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                        +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                        +' and ENDERMAC=:pENDERMAC and STATUS=0 ');
      Query4.ParamByName('pCODEMP').AsInteger:=codemp;
      Query4.ParamByName('pNOMETHREAD').AsString:='VERFINAN';
      Query4.ParamByName('pNOMEPC').AsString:=NomeComputador;
      Query4.ParamByName('pENDERMAC').AsString:=MacAddress;
      Query4.ParamByName('pHORAINICIO').AsString:=FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
      Query4.ParamByName('pSTATUS').AsInteger:=1;
      Query4.ExecSQL;
      while not Query1.Eof do
        begin
        if Now>xInicio+120 then
          begin
          Query4.Close;
          Query4.SQL.Clear;
          Query4.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                            +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                            +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                            +' and ENDERMAC=:pENDERMAC and STATUS=1 ');
          Query4.ParamByName('pCODEMP').AsInteger:=codemp;
          Query4.ParamByName('pNOMETHREAD').AsString:='VERFINAN';
          Query4.ParamByName('pNOMEPC').AsString:=NomeComputador;
          Query4.ParamByName('pENDERMAC').AsString:=MacAddress;
          Query4.ParamByName('pHORAFIM').AsString:=FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
          Query4.ParamByName('pSTATUS').AsInteger:=3;
          Query4.ExecSQL;
          Abort;
          end;
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add(' SELECT  SUM(CRVALOR) AS CRVALOR ');
        Query2.SQL.Add(' FROM CADDAR');
        Query2.SQL.Add(' WHERE CRNPED='+Query1.FieldByName('CRCCHAVE').AsString);
        Query2.SQL.Add('   and CRCODEMP='+Query1.FieldByName('CRCCODEMP').AsString);
        Query2.SQL.Add('   and CRORDEM='+Query1.FieldByName('CRCORDEM').AsString);
        Query2.SQL.Add(' GROUP BY CRVALOR, CRCODEMP, CRNPED ');
        Query2.Open;
        Query3.Close;
        Query3.SQL.Clear;
        Query3.SQL.Add(' SELECT * ');
        Query3.SQL.Add(' FROM CADDAR');
        Query3.SQL.Add(' WHERE CRNPED='+Query1.FieldByName('CRCCHAVE').AsString);
        Query3.SQL.Add('   and CRCODEMP='+Query1.FieldByName('CRCCODEMP').AsString);
        Query3.SQL.Add('   and CRORDEM='+Query1.FieldByName('CRCORDEM').AsString);
        Query3.SQL.Add('   and CRSTATUS=9 ');
        Query3.Open;
        try
          if (Query1.FieldByName('crcvalor').AsFloat<>Query2.FieldByName('CRVALOR').AsFloat)
            and (Query3.IsEmpty) then
            begin
            Application.CreateForm(TFrm_Gerdup, Form_Gerdup);
            Form_GerDup.edt_lotseq.Text :=Query1.FieldByName('CRCLOTSEQ').AsString;
            Form_GerDup.CHAVEPED.Text:=Query1.FieldByName('CRCCHAVE').AsString;
            Form_GerDup.mAceitaPergunta:=false;
            Form_GerDup.bbAjustar.Click;
            FreeAndNil(Form_Gerdup);
            end;                                          
          Query2.Close;
          Query2.SQL.Clear;
          Query2.SQL.Add(' update CADDAR_CONF SET CRCVERIFICADO='+chr(39)+'S'+chr(39));
          Query2.SQL.Add(' WHERE CRCCHAVE='+Query1.FieldByName('CRCCHAVE').AsString);
          Query2.SQL.Add('   and CRCCODEMP='+Query1.FieldByName('CRCCODEMP').AsString);
          Query2.SQL.Add('   and CRCLOTSEQ='+Query1.FieldByName('CRCLOTSEQ').AsString);
          Query2.SQL.Add('   and CRCORDEM='+Query1.FieldByName('CRCORDEM').AsString);
          Query2.ExecSQL;
        except
          FreeAndNil(Form_Gerdup);
          end;
        Query1.Next;
        end;
      Query4.Close;
      Query4.SQL.Clear;
      Query4.SQL.Add(' update CADEXTH set HORAFIM=:pHORAFIM, '
                        +' STATUS=:pSTATUS where CODEMP=:pCODEMP and  '
                        +' NOMETHREAD=:pNOMETHREAD and NOMEPC=:pNOMEPC '
                        +' and ENDERMAC=:pENDERMAC and STATUS=1 ');
      Query4.ParamByName('pCODEMP').AsInteger:=codemp;
      Query4.ParamByName('pNOMETHREAD').AsString:='VERFINAN';
      Query4.ParamByName('pNOMEPC').AsString:=NomeComputador;
      Query4.ParamByName('pENDERMAC').AsString:=MacAddress;
      Query4.ParamByName('pHORAFIM').AsString:=FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
      Query4.ParamByName('pSTATUS').AsInteger:=2;
      Query4.ExecSQL;
      end;
  except
    end;
  end;
FreeAndNil(Query1);
FreeAndNil(Query2);
FreeAndNil(Query3);
FreeAndNil(Query4);
Frm_Princ.Timer3.Enabled:=True;
end;

end.
