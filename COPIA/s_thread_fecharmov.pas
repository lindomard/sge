unit s_thread_fecharmov;

interface

uses
  Classes,db,dbtables,sysutils;

type
  thread_fecharmov = class(TThread)
  private
    { Private declarations }
    function fppalFecharMov(ptipo: Integer): Boolean;

  protected
    procedure Execute; override;
  end;

implementation

uses S_DM1, Func, S_DM4, lerarq, Math;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure s_thread_fecharmov.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ s_thread_fecharmov }

procedure thread_fecharmov.Execute;
begin
  { Place thread code here }
   fppalFecharMov(0);

end;


function thread_fecharmov.fppalFecharMov(ptipo: Integer): Boolean;
var
mData_Ant: TDatetime;
query_fdia: tQuery;
x_Tent: Integer;
mDataUltEnc: tDateTime;
begin
result:=true;
exit;

if flfilpad(-1,'fecharmov','DATAUENC') then
   mDataUltEnc:=StrtoDateTime(DM4.Tb_FilPad2FPVALOR.AsString)
else
   mDataUltEnc:=date-1;
if mDataUltEnc<date then
   begin
   fDeletaPadroes(-1,'fecharmov','DATAUENC');
   fGravaPadroes(-1,'DATAUENC'   ,'text'   ,'fecharmov',FormatDateTime(fdt2, mDataUltEnc));
   end;
query_fdia:=tQuery.Create(nil);
query_fdia.DatabaseName:='SG_ASSOC';
query_fdia.Close;
query_fdia.Sql.Clear;
query_fdia.Sql.add('Select max(FD_DATA) from CADFDIA ');
query_fdia.Open;
if query_fdia.Fields[0].IsNull then
   mData_Ant:=Date-1
else
   mData_Ant:=query_fdia.Fields[0].AsDateTime;

If mData_Ant>Date then
   begin
   FreeAndNil(query_fdia);
   result:=false;
   exit;
   end;

if mData_Ant<>Date then
   begin
   for x_Tent:=0 to 1 do
      begin
      query_fdia.Close;
      query_fdia.Sql.Clear;
      query_fdia.Sql.Add('Insert into CADFDIA ('
                        +' FD_DATA '
                        +',FD_ENCMES '
                        +',FD_DATAFEC '
                        +',FD_CODUSR  '
                        +',FD_DATAMOV '
                        +' ) values ('
                        +' :FD_DATA '
                        +',:FD_ENCMES '
                        +',:FD_DATAFEC '
                        +',:FD_CODUSR  '
                        +',:FD_DATAMOV '
                        +') ');
      query_fdia.ParamByName('FD_DATA').Value     :=date;
      if FormatDateTime('mm', mData_Ant)<>FormatDatetime('mm' ,date) then
         query_fdia.ParamByName('FD_ENCMES').Value:=2
      else
         query_fdia.ParamByName('FD_ENCMES').Value:=1;
      query_fdia.ParamByName('FD_DATAFEC').value  :=now;
      query_fdia.ParamByName('FD_CODUSR').Value   :=codusr;
      query_fdia.ParamByName('FD_DATAMOV').Value  :=mData_Ant;
      try
         query_fdia.ExecSQL;
         fdm1StartCommit;
         break;
      except on e : exception do
            begin
            if Pos('CADEST0',E.Message)>0 then
               begin
               fretiraduplicidade(['CECODEMP','CECODPRO'],
               ['CESALDO','CESALDOR','CEENTPEN','CESALDOC','CESALDOT','CESALDORES','CEBAIXO','CESALDO_PRAT','CESALDO_DEP','CESALDO_REP','CEQTD_ANALISE'],'CADEST');
               query_fdia.Close;
               query_fdia.SQL.Clear;
               query_fdia.SQL.Add('Update CADEST set CEFILIAL=1 WHERE (CEFILIAL is null or CEFILIAL<1) ');
               try
                  query_fdia.ExecSQL;
                  fdm1StartCommit;
               except
                  end;
               query_fdia.Close;
               query_fdia.SQL.Clear;
               query_fdia.SQL.Add('Delete from CADEDIA where (CED_FILIAL is null or CED_FILIAL<1) ');
               try
                  query_fdia.ExecSQL;
                  fdm1StartCommit;
               except
                  end;

               query_fdia.Close;
               query_fdia.SQL.Clear;
               query_fdia.SQL.Add('Delete from CADEGD where (CED_FILIAL is null or CED_FILIAL<1) ');
               try
                  query_fdia.ExecSQL;
                  fdm1StartCommit;
               except
                  end;
               end
            else if Pos('CADEDIA0',E.Message)>0 then
               begin
               query_fdia.Close;
               query_fdia.SQL.Clear;
               query_fdia.SQL.Add('Delete from CADEDIA where (CED_FILIAL is null or CED_FILIAL<1) ');
               try
                  query_fdia.ExecSQL;
                  fdm1StartCommit;
               except
                  end;

               if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
                  fretiraduplicidade(['CED_CODEMP','CED_CODPRO','CED_ANO','CED_MES','CED_FILIAL'],
                  [],'CADEDIA')
               else
                  fretiraduplicidade(['CED_CODPRO','CED_ANO','CED_MES','CED_FILIAL'],
                  [],'CADEDIA');

               end

            else if Pos('CADEGD0',E.Message)>0 then
               begin
               query_fdia.Close;
               query_fdia.SQL.Clear;
               query_fdia.SQL.Add('Delete from CADEGD where (CED_FILIAL is null or CED_FILIAL<1) ');
               try
                  query_fdia.ExecSQL;
                  fdm1StartCommit;
               except
                  end;

               if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
                  fretiraduplicidade(['CED_CODEMP','CED_CODPRO','CED_ANO','CED_MES','CED_FILIAL'],
                  [],'CADEGD')
               else
                  fretiraduplicidade(['CED_CODPRO','CED_ANO','CED_MES','CED_FILIAL'],
                  [],'CADEGD');

               end;
            end;
        end;
     end;
  if (DM4.Tb_Par01PCBLOQAUTO.AsInteger > 0) and ( not DM4.Tb_Par01PCBLOQAUTO.IsNull) then
     begin
     query_fdia.Close;
     query_fdia.SQL.Clear;
     query_fdia.SQL.Add('Update PARGER02 set PG2DTBLOQCX=:DTBLOQCX');
     query_fdia.ParamByName('DTBLOQCX').AsString:=FormatDateTime('DD/MM/YYYY',Now-DM4.Tb_Par01PCBLOQAUTO.AsInteger);
     try
       query_fdia.ExecSQL;
       fdm1StartCommit;
     except
       end;
     flparger02(0,0,'1');
     end;
     FreeAndNil(query_fdia);
   end;
result:=true;
end;


end.
