unit S_ManBal_GerInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, RXDBCtrl,db,dbtables;

type
  TFrm_ManBal_GerInv = class(TForm)
    Label1: TLabel;
    edt_nominv: TEdit;
    Label2: TLabel;
    cb_preco: TComboBox;
    bbSair: TBitBtn;
    bbSalvar: TBitBtn;
    Label4: TLabel;
    edt_datinv: TDateEdit;
    procedure bbSairClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_nominvExit(Sender: TObject);
  private
    { Private declarations }

    procedure fGerarInventarioNormal;

    procedure fGerarInventarioGrade;

  public
    { Public declarations }
    mChave_Bal: Integer;
    mInventariocomGrade: boolean;
  end;

var
  Frm_ManBal_GerInv: TFrm_ManBal_GerInv;


implementation

uses S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ManBal_GerInv.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManBal_GerInv.bbSalvarClick(Sender: TObject);
begin
if mInventariocomGrade=true then
   fGerarInventarioGrade
else
   fGerarInventarioNormal;

end;


procedure TFrm_ManBal_GerInv.fGerarInventarioNormal;

var
mPreco: String;
query_exe: TQuery;
begin

query_exe:=tquery.create(nil);
query_exe.databasename:=DM1.sg_assoc.databasename;


query_exe.close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Select count(*) from INVGRA '
                  +' where '
                  +' IGNOMEINV=:NOMEINV ');
query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
query_exe.Open;
if query_exe.Fields[0].AsInteger>0 then
   begin
   if Application.MessageBox(pchar(edt_nominv.Text+' ja existe no arquivo deseja sobrepor?'),'Confirmação?',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   query_exe.close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Delete from INVGRA '
                     +' where '
                     +' IGNOMEINV=:NOMEINV ');
   query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


if cb_preco.ItemIndex=0 then
   mPreco:='PDPRECO1'
else if cb_preco.ItemIndex=1 then
   mPreco:='PDPRECO2'
else if cb_preco.ItemIndex=2 then
   mPreco:='PDPRECO3'
else if cb_preco.ItemIndex=3 then
   mPreco:='PDPRECOC'
else if cb_preco.ItemIndex=4 then
   mPreco:='PDPCOFAB'
else if cb_preco.ItemIndex=5 then
   mPreco:='PDPMC'
else if cb_preco.ItemIndex=5 then
   mPreco:='PDUCPR'
else
   mPreco:='PDPRECOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','B2CODEMP','PDCODPRO','B2CODPRO');


query_exe.close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Insert into INVGRA ('
                  +' IGCODEMP '
                  +',IGNOMEINV '
                  +',IGCODPRO '
                  +',IGSIT  '
                  +',IGCODTIP '
                  +',IGPRECO '
                  +',IGQTD '
                  +',IGVALOR_TRANSP '
                  +',IGDATAEMI '
                  +') select '
                  +Inttostr(codemp)
                  +',:NOMEINV '
                  +',B2CODPRO AS IGCODPRO '
                  +',max(PDSIT) as IGSIT '
                  +',max(PDCODTIP) as IGCODTIP '
                  +',max('+mPreco+') as IGPRECO '
                  +',sum(B2QTD) as QTD '
                  +',0 as IGVALOR_TRANSP '
                  +',:DATAINV '
                  +' from CADBAL02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' B2CHAVE='+IntTosTr(mChave_Bal));
query_exe.SQL.Add(' Group by PDNOME,B2CODPRO '
                  +' order by PDNOME,B2CODPRO ');
query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
query_exe.parambyName('DATAINV').AsDateTime :=edt_datinv.Date;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   query_exe.close;
   freeandnil(query_exe);

   ex_erroSql_Novo(query_exe,105,'func2','CADBAL02');
   exit;
   end;
query_exe.close;
freeandnil(query_exe);

MessageDlg('Inventario '+edt_nominv.Text+' Gravado!',mtWarning,[mbOk],0);
close;

end;





procedure TFrm_ManBal_GerInv.fGerarInventarioGrade;

var
mPreco: String;
query_exe: TQuery;
begin

query_exe:=tquery.create(nil);
query_exe.databasename:=DM1.sg_assoc.databasename;


query_exe.close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Select count(*) from INVGRA_GD '
                  +' where '
                  +' IGNOMEINV=:NOMEINV ');
query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
query_exe.Open;
if query_exe.Fields[0].AsInteger>0 then
   begin
   if Application.MessageBox(pchar(edt_nominv.Text+' ja existe no arquivo deseja sobrepor?'),'Confirmação?',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   query_exe.close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Delete from INVGRA_GD '
                     +' where '
                     +' IGNOMEINV=:NOMEINV ');
   query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


if cb_preco.ItemIndex=0 then
   mPreco:='PDPRECO1'
else if cb_preco.ItemIndex=1 then
   mPreco:='PDPRECO2'
else if cb_preco.ItemIndex=2 then
   mPreco:='PDPRECO3'
else if cb_preco.ItemIndex=3 then
   mPreco:='PDPRECOC'
else if cb_preco.ItemIndex=4 then
   mPreco:='PDPCOFAB'
else if cb_preco.ItemIndex=5 then
   mPreco:='PDPMC'
else if cb_preco.ItemIndex=5 then
   mPreco:='PDUCPR'
else
   mPreco:='PDPRECOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','B2CODEMP','PDCODPRO','B2CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADBAL01','B1CODEMP','B2CODEMP','B1CHAVE','B2CHAVE');


query_exe.close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Insert into INVGRA_GD ('
                  +' IGCODEMP '
                  +',IGNOMEINV '
                  +',IGCODPRO '
                  +',IGSIT  '
                  +',IGCODTIP '
                  +',IGPRECO '
                  +',IGQTD '
                  +',IGVALOR_TRANSP '
                  +',IGDATAEMI '
                  +',IGGRADE '
                  +',IGDTVCTO '
                  +',IGFILIAL '
                  +') select '
                  +Inttostr(codemp)
                  +',:NOMEINV '
                  +',B2CODPRO AS IGCODPRO '
                  +',max(PDSIT) as IGSIT '
                  +',max(B1TIPOPRO)'
                  +',max('+mPreco+') as IGPRECO '
                  +',sum(B2QTD) as QTD '
                  +',0 as IGVALOR_TRANSP '
                  +',:DATAINV '
                  +',B2NUMERO '
                  +',B2DTVCTO '
                  +',max(B1LOCAL) '

                  +' from CADBAL02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' B2CHAVE='+IntTosTr(mChave_Bal));
query_exe.SQL.Add(' Group by PDNOME,B2CODPRO ,B2NUMERO ,B2DTVCTO '

                  +' order by PDNOME,B2CODPRO ');
query_exe.parambyName('NOMEINV').AsString   :=edt_nominv.Text;
query_exe.parambyName('DATAINV').AsDateTime :=edt_datinv.Date;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   query_exe.close;
   freeandnil(query_exe);

   ex_erroSql_Novo(query_exe,105,'func2','CADBAL02');
   exit;
   end;
query_exe.close;
query_exe.sql.clear;
query_exe.SQL.add('insert into INVGRA_GD03 ('
                 +' IG3CODEMP '
                 +',IG3CHAVE '
                 +',IG3SEQ '
                 +',IG3CODIGO  '
                 +',IG3TIPO '
                 +',IG3OMITIR  '
                 +') select '
                 +' B3CODEMP '
                 +',:B3CHAVE '
                 +',B3SEQ '
                 +',B3CODIGO  '
                 +',B3TIPO '
                 +',B3OMITIR  '
                 +' from CADBAL03 where '
                  +' B3CHAVE='+IntTosTr(mChave_Bal));
query_exe.parambyname('B3CHAVE').asstring :=edt_nominv.Text;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   query_exe.close;
   freeandnil(query_exe);
   ex_erroSql_Novo(query_exe,307,'func2','CADBAL03');
   exit;
   end;


query_exe.close;
freeandnil(query_exe);

MessageDlg('Inventario '+edt_nominv.Text+' Gravado!',mtWarning,[mbOk],0);
close;

end;

procedure TFrm_ManBal_GerInv.FormCreate(Sender: TObject);
begin
    mInventariocomGrade:=false;

end;

procedure TFrm_ManBal_GerInv.edt_nominvExit(Sender: TObject);
begin

edt_nominv.Text:=RetiraAcentos(edt_nominv.Text);
end;

end.
