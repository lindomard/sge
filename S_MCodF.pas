unit S_MCodF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, S_DM1, db, dbtables, func, S_Agde,lerarq;


type
  TFrm_MCodF = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    bbEfetivar: TBitBtn;
    CODFOR: TEdit;
    NCODFOR: TEdit;
    CCODFOR: TEdit;
    NNOMFOR: TEdit;
    NOMFOR: TEdit;
    bbSair: TBitBtn;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure NCODFORExit(Sender: TObject);
    procedure NCODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CCODFORExit(Sender: TObject);
    procedure CCODFORKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa: String;pCampo_Somar: array of string):Boolean;


var
  Frm_MCodF: TFrm_MCodF;

implementation

{$R *.dfm}

function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;
var
x: Integer;
begin
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   DM1.Query1.Sql.add(pCampo_Empresa+' and ');
   end;
DM1.Query1.Sql.add(pCampo_Chave+'='+pCodAnt);
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if DM1.query1.Fields[0].AsInteger<1 then
   begin
   result:=true;
   exit;
   end;

DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   DM1.Query1.Sql.add(pCampo_Empresa+' and ');
   end;
DM1.Query1.Sql.add(pCampo_Chave+'='+pCodNov);
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if DM1.query1.Fields[0].AsInteger<1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Update '+pTabela+' set '+pcampo_chave+'='+pCodNov);
   DM1.Query1.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      DM1.Query1.SQL.add(pCampo_Empresa+' and ');
   DM1.Query1.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
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

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update '+pTabela+' set ');
      mcinst:='';
      for x:=0 to high(pCampo_Somar)-1 do
         begin
         DM1.Query1.SQL.Add( mcinst+pCampo_Somar[x]+'='+mudavp(DM1.Query2.Fields[x].AsString));
         mcinst:=',';
         end;
      DM1.Query1.SQL.Add(' where ');
      if Trim(pCampo_Empresa)<>'' then
         DM1.Query1.SQL.add(pCampo_Empresa+' and ');
      DM1.Query1.SQL.add(pCampo_Chave+'='+pCodNov);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
         MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from '+pTabela);
   DM1.Query1.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      DM1.Query1.SQL.add(pCampo_Empresa+' and ');
   DM1.Query1.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
result:=true;
end;


procedure TFrm_MCodF.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.text);
if bbSair.Focused then
   exit;
if not flcadfor(1,0,CODFOR.Text) then
   begin
   if fmensagem('Este Fornecedor Não Existe Quer Continuar?',0,['1','2'],2)=mrYES then
      NOMFOR.Text:='Fornecedor Inexistente'
   else
      begin
      fmensagem('Favor Selecionar um Código Válido!',0,['0'],0);
      CODFOR.SetFocus;
      end;
   end
else
   NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
end;

procedure TFrm_MCodF.CODFORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113)  then
   CODFOR.Text:=fChamaFor(0,'Frm_MCodF','');
end;

procedure TFrm_MCodF.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      CODFOR.Text:=fChamaFor(0,'Frm_MCodF',key);
      key:=#0;
      end;
end;

procedure TFrm_MCodF.NCODFORExit(Sender: TObject);
var
nome: String;
begin
NCODFOR.Text:=fdeixanum2(NCODFOR.text);
if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(NCODFOR.Text)) then
   begin
   NNOMFOR.Text:=DM1.Query1.Fields[0].AsString;
   nome:='Este Código é do Fornecedor:'+DM1.Query1.Fields[0].AsString+#13
        +'Quer Continuar e Efetivar a Troca?';
   if fmensagem(nome,0,['1','2'],2)<>mrYES then
      begin
      NCODFOR.Text:='';
      NCODFOR.SetFocus;
      exit;
      end;
   end
else
   NNOMFOR.Text:='';
end;

procedure TFrm_MCodF.NCODFORKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      NCODFOR.Text:=fChamaFor(0,'Frm_MCodF',key);
      key:=#0;
      end;
end;

procedure TFrm_MCodF.CCODFORExit(Sender: TObject);
begin
bbEfetivar.Enabled:=True;
if not NCODFOR.Focused then
   bbEfetivar.SetFocus;
end;

procedure TFrm_MCodF.CCODFORKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_MCodF.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MCodF.bbEfetivarClick(Sender: TObject);
var
  mCampo_Chave,mCampo_Empresa: String;
  mCampo_Somar: Array of String;
begin
if fdeixanum(NCODFOR.Text)=fdeixanum(CCODFOR.Text) then
  begin
  mCampo_Chave:='';
  mCampo_Somar:=nil;
  SetLength(mcampo_Somar,1);
  mCampo_Empresa:=fRetInstMECadastro('CADFOR','FCODEMP',codemp);
  mCampo_Chave:='FCODFOR';
  if not fAgruparItems('CADFOR',CODFOR.Text,NCODFOR.Text,mcampo_chave,mCampo_Empresa,mCampo_Somar) then
     begin
     exit;
     end;
  dm1.Query2.Close;
  dm1.Query2.SQL.Clear;
  dm1.Query2.SQL.Add(' update CADDAP set CASEQ=:CODFOR_NOVO ');
  dm1.Query2.SQL.Add(' where CACODFOR=:CODFOR_ANT');
  dm1.Query2.ParamByName('CODFOR_NOVO').AsFloat:=fsonumero(NCODFOR.Text);
  dm1.Query2.ParamByName('CODFOR_ANT').AsFloat:=fsonumero(CODFOR.Text);
  try
    dm1.Query2.ExecSQL;
  except
    dm1.Query2.Sql.SaveToFile(mpastatemp +'sql.txt');
    end;

  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' select table_name, column_name from USER_TAB_COLUMNS ');
  dm1.Query1.SQL.Add(' where column_name like '+chr(39)+'%CODFOR'+chr(39));
  dm1.Query1.Open;




  dm1.Query1.First;
  while not dm1.Query1.Eof do
    begin
    dm1.Query2.Close;
    dm1.Query2.SQL.Clear;
    dm1.Query2.SQL.Add(' update '+dm1.Query1.FieldbyName('TABLE_NAME').AsString);
    dm1.Query2.SQL.Add(' set '+dm1.Query1.FieldbyName('column_name').AsString+'='+NCODFOR.Text);
    dm1.Query2.SQL.Add(' where '+dm1.Query1.FieldbyName('column_name').AsString+'='+CODFOR.Text);

    try
      dm1.Query2.ExecSQL;
    except
      dm1.Query2.Sql.SaveToFile(mpastatemp +'sql.txt');
      end;
    dm1.Query1.Next;
    end;


  dm1.Query2.Close;
  dm1.Query2.SQL.Clear;
  dm1.Query2.SQL.Add(' update CADLDR set CODIGO=:CODFOR_NOVO ');
  dm1.Query2.SQL.Add(' ,NOME=:NOME ');

  dm1.Query2.SQL.Add(' where CODIGO=:CODFOR_ANT and TIPO='+QuotedStr('FR'));
  dm1.Query2.ParamByName('CODFOR_NOVO').AsFloat:=fsonumero(NCODFOR.Text);
  dm1.Query2.ParamByName('CODFOR_ANT').AsFloat:=fsonumero(CODFOR.Text);
  dm1.Query2.parambyname('NOME').asstring := copy(NNOMFOR.TEXT,1,60);
  try
    dm1.Query2.ExecSQL;
  except
    dm1.Query2.Sql.SaveToFile(mpastatemp +'sql.txt');
    end;

    
  fmensagem('Concluido!!!',0,['0'],0);
  CODFOR.Clear;
  NOMFOR.Clear;
  NCODFOR.Clear;
  NNOMFOR.Clear;
  CCODFOR.Clear;
  end
else
  begin
  fmensagem('Codigo de Confirmação não confere!!!',0,['0'],0);
  CCODFOR.SetFocus;
  end;
end;

procedure TFrm_MCodF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
