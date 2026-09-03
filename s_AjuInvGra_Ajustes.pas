unit s_AjuInvGra_Ajustes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables;

type
  TFrm_AjuInvGra_Ajustes = class(TForm)
    Label1: TLabel;
    cb_atuestoque: TCheckBox;
    cb_atuprecovenda: TCheckBox;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Query1: TQuery;
    procedure cb_atuestoqueClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNomeInventario: String;
  end;

var
  Frm_AjuInvGra_Ajustes: TFrm_AjuInvGra_Ajustes;

implementation

uses S_DM1, func_excecoes;

{$R *.dfm}

procedure TFrm_AjuInvGra_Ajustes.cb_atuestoqueClick(Sender: TObject);
begin
if (cb_atuestoque.Checked=true) or  (cb_atuprecovenda.Checked=true) then
   bbAtualizar.Enabled:=true
else
   bbAtualizar.Enabled:=false;

end;

procedure TFrm_AjuInvGra_Ajustes.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuInvGra_Ajustes.bbAtualizarClick(Sender: TObject);
var
query_exe: TQuery;
begin
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=dm1.SG_ASSOC.DatabaseName;


if cb_atuestoque.Checked=true then
   begin
   query_exe.Close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Delete from CADLGC ');
   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,837,'_lerarq','CADLGC');
      end;
      end;





   query_exe.SQL.clear;


   query_exe.SQL.Add('Update CADPRO set PDSALDO=(select IGQTD from INVGRA where IGNOMEINV=:NOMEINV and IGCODPRO=PDCODPRO)  '
                    +' WHERE EXISTS (select IGQTD from INVGRA where IGNOMEINV=:NOMEINV and IGCODPRO=PDCODPRO)');
   query_exe.parambyname('NOMEINV').asstring:=mNomeInventario;

   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,819,'_lerarq','CADPRO');
      end;
      end;
   query_exe.close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Update CADEST set CESALDO=(select PDSALDO from CADPRO where CECODPRO=PDCODPRO) '
                    +' where exists (select PDSALDO from CADPRO where CECODPRO=PDCODPRO) ');
   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,832,'_lerarq','CADEST');
      end;
      end;

   query_exe.close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Update CADEST set CESALDO=0 where CESALDO is null');
   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,840,'_lerarq','CADEST');
      end;
      end;
   query_exe.close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Update CADPRO set PDSALDO=0 where PDSALDO is null');
   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,853,'_lerarq','CADPRO');
      end;
      end;
   end;

if cb_atuprecovenda.Checked=true then
   begin
   query_exe.close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Update CADPRO set PDPRECO1=(select MAX(IGPRECO) from INVGRA where IGNOMEINV=:NOMEINV and IGCODPRO=PDCODPRO) '
                    +' where exists (select MAX(IGPRECO) from INVGRA where IGNOMEINV=:NOMEINV and IGCODPRO=PDCODPRO) ');
   query_exe.parambyname('NOMEINV').asstring:=mNomeInventario;

   try
      query_exe.ExecSQL;
   except on e: exception do
      begin
      ex_erroSql_Novo(Query_exe,135,'_lerarq','CADPRO');
      end;
      end;
   end;
query_exe.close;
freeandnil(query_exe);
close;
end;

end.
