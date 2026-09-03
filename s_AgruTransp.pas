unit s_AgruTransp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,db,dbtables;

type
  TFrm_AgruTransp = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    bbEfetivar: TBitBtn;
    edt_codtra: TEdit;
    edt_ncodtra: TEdit;
    edt_ccodtra: TEdit;
    edt_NNOMTRA: TEdit;
    edt_nomtra: TEdit;
    bbSair: TBitBtn;
    procedure bbEfetivarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codtraExit(Sender: TObject);
    procedure edt_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codtraKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ncodtraExit(Sender: TObject);
    procedure edt_ccodtraExit(Sender: TObject);
    procedure edt_ccodtraKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }

    function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;

  public
    { Public declarations }
  end;

var
  Frm_AgruTransp: TFrm_AgruTransp;

implementation

uses S_Agde, S_DM1, Func, func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_AgruTransp.bbEfetivarClick(Sender: TObject);
var
msaldo: Real;
mCampo_Chave,mCampo_Empresa: String;
mCampo_Manter, mCampo_Somar: Array of String;

x, mQtdArray: Integer;
query_exec: tQuery;
begin
bbEfetivar.Enabled:=False;

if (Trim(edt_ncodtra.Text)='') or (Trim(edt_ccodtra.text)='') then
   begin
   MessageDlg('Favor digitar um Código Valido!',mtWarning,[mbOk],0);
   edt_NCODTRA.SetFocus;
   exit;
   abort;
   end;


if Trim(edt_ncodtra.Text)<>Trim(edt_Ccodtra.Text) then
   begin
   MessageDlg('Novo Código diferente da Confirmação!',mtWarning,[mbOk],0);
   edt_ccodtra.SetFocus;
   exit;
   end;
if fsonumero(edt_codtra.Text)=fsonumero(edt_ncodtra.Text) then
   begin
   MessageDlg('Código da Transportadora tem que ser diferente no novo Código!',mtWarning,[mbOk],0);
   edt_codtra.SetFocus;
   exit;
   end;

query_exec:=tQuery.create(nil);
query_exec.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Aguarde. Efetuando Troca de Códigos!';
Frm_Agde.Label1.Update;
Frm_Agde.Show;


query_exec.Close;
query_exec.SQL.Clear;
query_exec.SQL.Add('Update CADPF1 SET PF1CODTRA='+Trim(edt_ncodtra.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' PF1CODEMP='+IntToStr(codemp)+' and ')
                  +' PF1CODTRA='+Trim(edt_codtra.Text));
try
   query_exec.ExecSQL;
   fdm1StartCommit;

except on e : exception do
   ex_erroSql_Novo(query_exec,89,'_agrutransp'+e.Message ,'CADPF1');
   end;



query_exec.Close;
query_exec.SQL.Clear;
query_exec.SQL.Add('Update CADCON01 SET C01CODTRA='+Trim(edt_ncodtra.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' C01CODEMP='+IntToStr(codemp)+' and ')
                  +' C01CODTRA='+Trim(edt_codtra.Text));
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 135 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


query_exec.Close;
query_exec.SQL.Clear;
query_exec.SQL.Add('Update CADCON02 SET C02CODTRA='+Trim(edt_ncodtra.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' C02CODEMP='+IntToStr(codemp)+' and ')
                  +' C02CODTRA='+Trim(edt_codtra.Text));
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 135 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

query_exec.Close;
query_exec.SQL.Clear;
query_exec.SQL.Add('Update CADCLI SET CCODTRA='+Trim(edt_ncodtra.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CCODTRA='+Trim(edt_codtra.Text));
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 122 ao Trocar Codigos  transportadora!',mtError,[mbOk],0);
   exit;
   end;

   
query_exec.Close;
query_exec.SQL.Clear;
query_exec.SQL.Add('Update CADP01 SET P1CODTRA='+Trim(edt_ncodtra.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1CODTRA='+Trim(edt_codtra.Text));
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 189 ao Trocar Codigos transportadora!',mtError,[mbOk],0);
   exit;
   end;


// cadTRA
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADTRA',[]) then
   mCampo_Empresa:='TRODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='TRCODTRA';

if not fAgruparItems('CADTRA',edt_codtra.Text,edt_ncodtra.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI

query_exec.close;
freeandnil(query_exec);


Frm_Agde.Free;
Frm_Agde:=nil;
edt_codtra.Text:='';
edt_Ncodtra.Text:='';
edt_ccodtra.Text:='';
edt_NOMTRA.Text:='';
edt_NNOMTRA.Text:='';


end;



function TFrm_AgruTransp.fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;
var
x: Integer;
query_atu: tQuery;
begin

query_atu:=tQuery.create(nil);
query_atu.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_atu.close;
query_atu.Sql.Clear;
query_atu.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   query_atu.Sql.add(pCampo_Empresa+' and ');
   end;
query_atu.Sql.add(pCampo_Chave+'='+pCodAnt);
try
   query_atu.Open;
except
   query_atu.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if query_atu.Fields[0].AsInteger<1 then
   begin
   result:=true;
   exit;
   end;

query_atu.close;
query_atu.Sql.Clear;
query_atu.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   query_atu.Sql.add(pCampo_Empresa+' and ');
   end;
query_atu.Sql.add(pCampo_Chave+'='+pCodNov);
try
   query_atu.Open;
except
   query_atu.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if query_atu.Fields[0].AsInteger<1 then
   begin
   query_atu.Close;
   query_atu.SQL.clear;
   query_atu.SQL.Add('Update '+pTabela+' set '+pcampo_chave+'='+pCodNov);
   query_atu.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      query_atu.SQL.add(pCampo_Empresa+' and ');
   query_atu.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      query_atu.ExecSQL;
      fdm1StartCommit;
   except
      query_atu.SQL.SaveToFile(mpastatemp +'sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end
else
   begin
   if high(pcampo_somar)>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      DM1.Query2.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to high(pCampo_Somar)-1 do
         begin
         DM1.Query2.SQL.Add(mcinst+' sum(decode('+pCampo_Somar[x]+',null,0,'+pCampo_Somar[x]+')) as '+pCampo_Somar[x]);
         mcinst:=',';
         end;
      DM1.Query2.SQL.Add(' from '+pTabela+' where ');
      if Trim(pCampo_Empresa)<>'' then
         DM1.Query2.SQL.add(pCampo_Empresa+' and ');
      DM1.Query2.SQL.add('('+pCampo_Chave+'='+pCodAnt);
      DM1.Query2.SQL.add(' or '+ pCampo_Chave+'='+pCodNov+')');
      try
         DM1.Query2.Open;
      except
         DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.txt');
         MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
         result:=false;
         exit;
         end;

      query_atu.Close;
      query_atu.SQL.clear;
      query_atu.SQL.Add('Update '+pTabela+' set ');
      mcinst:='';
      for x:=0 to high(pCampo_Somar)-1 do
         begin
         query_atu.SQL.Add( mcinst+pCampo_Somar[x]+'='+mudavp(DM1.Query2.Fields[x].AsString));
         mcinst:=',';
         end;
      query_atu.SQL.Add(' where ');
      if Trim(pCampo_Empresa)<>'' then
         query_atu.SQL.add(pCampo_Empresa+' and ');
      query_atu.SQL.add(pCampo_Chave+'='+pCodNov);
      try
         query_atu.ExecSQL;
         fdm1StartCommit;
      except
         query_atu.SQL.SaveToFile(mpastatemp +'sql.txt');
         MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   query_atu.Close;
   query_atu.SQL.clear;
   query_atu.SQL.Add('Delete from '+pTabela);
   query_atu.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      query_atu.SQL.add(pCampo_Empresa+' and ');
   query_atu.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      query_atu.ExecSQL;
      fdm1StartCommit;
   except
      query_atu.SQL.SaveToFile(mpastatemp +'sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
query_atu.close;
freeandnil(query_atu);
result:=true;
end;



procedure TFrm_AgruTransp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_AgruTransp.edt_codtraExit(Sender: TObject);
begin
edt_codtra.Text:=fdeixanum2(edt_codtra.text);
if bbSair.Focused then
   exit;
if not flcadtra(1,0,edt_codtra.Text) then
   begin
   if fmensagem('Esta Transportadorae Não Existe Quer Continuar?',0,['1','2'],2)=mrYES then
      edt_nomtra.Text:='Produto Inexistente'
   else
      begin
      MessageDlg('Favor Selecionar um Código Válido!',mtWarning,[mbOk],0);
      edt_nomtra.SetFocus;
      end;
   end
else
   edt_nomtra.Text:=DM1.Tb_TraTRRAZTRA.Value;

end;

procedure TFrm_AgruTransp.edt_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113)  then
   edt_codtra.Text:=fChamatra(0,'Frm_MCodCli','');

end;

procedure TFrm_AgruTransp.edt_codtraKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codtra.Text:=fChamatra(0,'Frm_Ped',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_AgruTransp.edt_ncodtraExit(Sender: TObject);
var
nome: String;
begin
edt_ncodtra.Text:=fdeixanum2(edt_ncodtra.text);
if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Trim(edt_NCODTRA.Text)) then
   begin
   edt_NNOMTRA.Text:=DM1.Query1.Fields[0].AsString;
   nome:='Este Código é da Transportadora'+DM1.Query1.Fields[0].AsString+#13
        +'Quer Continuar e Efetivar a Troca?';
   if fmensagem(pchar(nome),0,['1','2'],2)<>mrYES then
      begin
      edt_ncodtra.Text:='';
      edt_ncodtra.SetFocus;
      exit;
      end;
   end
else
   edt_NNOMTRA.Text:='';

end;

procedure TFrm_AgruTransp.edt_ccodtraExit(Sender: TObject);
begin
bbEfetivar.Enabled:=True;
if not edt_ncodtra.Focused then
   bbEfetivar.SetFocus;

end;

procedure TFrm_AgruTransp.edt_ccodtraKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AgruTransp.bbSairClick(Sender: TObject);
begin
close;
end;

end.
