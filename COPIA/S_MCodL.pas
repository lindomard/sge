unit S_MCodL;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, S_DM1, db, dbtables, func, S_Agde,lerarq;
type
  TFrm_MCodL = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    bbEfetivar: TBitBtn;
    CODLOC: TEdit;
    NCODLOC: TEdit;
    CCODLOC: TEdit;
    NNOMLOC: TEdit;
    NOMLOC: TEdit;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure NCODLOCExit(Sender: TObject);
    procedure NCODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CCODLOCExit(Sender: TObject);
    procedure CCODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;
  

var
  Frm_MCodL: TFrm_MCodL;

implementation

uses flerarq, S_Dar, Func2;

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
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
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
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
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
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
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
         DM1.Query2.SQL.SaveToFile('c:\sql.txt');
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
         DM1.Query1.SQL.SaveToFile('c:\sql.txt');
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
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
result:=true;
end;



procedure TFrm_MCodL.bbSairClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_MCodL.bbEfetivarClick(Sender: TObject);
var
  mCampo_Chave,mCampo_Empresa: String;
  mCampo_Somar: Array of String;
begin
if fdeixanum(NCODLOC.Text)=fdeixanum(CCODLOC.Text) then
  begin
  mCampo_Chave:='';
  mCampo_Somar:=nil;
  SetLength(mcampo_Somar,1);
  mCampo_Empresa:=fRetInstMECadastro('CADLOC','LCODEMP',codemp);
  mCampo_Chave:='LCODLOC';
  if not fAgruparItems('CADLOC',CODLOC.Text,NCODLOC.Text,mcampo_chave,mCampo_Empresa,mCampo_Somar) then
    begin
    exit;
    end;
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' select table_name, column_name from USER_TAB_COLUMNS ');
  dm1.Query1.SQL.Add(' where column_name like '+chr(39)+'%CODLOC'+chr(39));
  dm1.Query1.Open;
  dm1.Query1.First;
  while not dm1.Query1.Eof do
    begin
    dm1.Query2.Close;
    dm1.Query2.SQL.Clear;
    dm1.Query2.SQL.Add(' update '+dm1.Query1.FieldbyName('TABLE_NAME').AsString);
    dm1.Query2.SQL.Add(' set '+dm1.Query1.FieldbyName('column_name').AsString+'='+NCODLOC.Text);
    dm1.Query2.SQL.Add(' where '+dm1.Query1.FieldbyName('column_name').AsString+'='+CODLOC.Text);
    try
      dm1.Query2.ExecSQL;
    except
      dm1.Query2.Sql.SaveToFile('c:\sql.txt');
      end;
    dm1.Query1.Next;
    end;
  fmensagem('Concluido!!!',0,['0'],0);
  CODLOC.Clear;
  NOMLOC.Clear;
  NCODLOC.Clear;
  NNOMLOC.Clear;
  CCODLOC.Clear;
  end
else
  begin
  fmensagem('Codigo de Confirmação não confere!!!',0,['0'],0);
  CCODLOC.SetFocus;
  end;
end;

procedure TFrm_MCodL.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.text);
if bbSair.Focused then
   exit;
if not flcadloc(1,0,CODLOC.Text) then
   begin
   if fmensagem('Esta cidade não esta cadastrada. Deseja continuar?',0,['1','2'],2)=mrYES then
      NOMLOC.Text:='Cidade inexistente'
   else
      begin
      fmensagem('Favor Selecionar um Código Válido!',0,['0'],0);
      CODLOC.SetFocus;
      end;
   end
else
   NOMLOC.Text:=DM1.Tb_LocLNOME.Value;
end;

procedure TFrm_MCodL.CODLOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113)  then
   CODLOC.Text:=fChamaLoc(0,'Frm_MCodL','');
end;

procedure TFrm_MCodL.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      CODLOC.Text:=fChamaLoc(0,'Frm_MCodL',key);
      key:=#0;
      end;
end;

procedure TFrm_MCodL.NCODLOCExit(Sender: TObject);
var
nome: String;
begin
NCODLOC.Text:=fdeixanum2(NCODLOC.text);
if flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(NCODLOC.Text)) then
   begin
   NNOMLOC.Text:=DM1.Query1.Fields[0].AsString;
   nome:='Este Código é da Localidade:'+DM1.Query1.Fields[0].AsString+#13
        +'Quer Continuar e Efetivar a Troca?';
   if fmensagem(nome,0,['1','2'],2)<>mrYES then
      begin
      NCODLOC.Text:='';
      NCODLOC.SetFocus;
      exit;
      end;
   end
else
   NNOMLOC.Text:='';
end;

procedure TFrm_MCodL.NCODLOCKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      NCODLOC.Text:=fChamaLoc(0,'Frm_MCodL',key);
      key:=#0;
      end;
end;

procedure TFrm_MCodL.CCODLOCExit(Sender: TObject);
begin
bbEfetivar.Enabled:=True;
if not NCODLOC.Focused then
   bbEfetivar.SetFocus;

end;

procedure TFrm_MCodL.CCODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_MCodL.BitBtn1Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;

flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
      fmensagem('Esta Faltando o Parametro de devolução (CADDARD), '+#13
      +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end;

testeform := TFrm_MCodL(FindGlobalComponent('frm_dar'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Dar, Frm_Dar);
if Frm_Dar.WindowState=WsMinimized then
   Frm_Dar.WindowState:=WsNormal
else
   frm_Dar.Show;

end;

procedure TFrm_MCodL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
