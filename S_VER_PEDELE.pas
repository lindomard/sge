unit S_VER_PEDELE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, OleCtrls, SHDocVw ,UrlMon, ComCtrls, WinInet,
  Menus, Db, DbTables, S_DM1;

type
  T_VER_PEDELE = class(TThread)
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

procedure T_VER_PEDELE.Execute;
//var
//  Query_pedele: TQuery;
begin
  { Place thread code here }
DM1.Query10.Close;
DM1.Query10.SQL.Clear;
DM1.Query10.SQL.Add('SELECT count(*) FROM CADP01 '
                    +' WHERE TRIM(P1PEDORI1)<>'+QuotedStr(' ')+' AND P1STATUS=0 and p1tipo=0 and P1ORIGEM=2');
DM1.Query10.Open;
mPedEle_Qtd:=dm1.Query10.Fields[0].AsInteger;
{Query_pedele:=TQuery.Create(nil);
Query_pedele.DatabaseName:='SG_ASSOC';

Query_pedele.Close;
Query_pedele.SQL.Clear;
Query_pedele.SQL.Add('SELECT count(*) FROM CADP01 '
                    +' WHERE TRIM(P1PEDORI1)<>'+QuotedStr(' ')+' AND P1STATUS=0 and p1tipo=0 and P1ORIGEM=2');
try
   Query_pedele.Open;
   mPedEle_Qtd:=Query_pedele.Fields[0].AsInteger;
except
   mPedEle_Qtd:=0;
   end;
FreeAndNil(Query_pedele);}
end;

end.
