unit s_cnae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_Cnae = class(TFrm_C)
    Tb_Cnae: TQuery;
    U_Cnae: TUpdateSQL;
    Src_Cnae: TDataSource;
    Tb_CnaeCNAE_ID: TFloatField;
    Tb_CnaeCNAE_CODCNAE: TStringField;
    Tb_CnaeCNAE_NOME: TStringField;
    Tb_CnaeCNAE_CODSERV_PRINC: TStringField;
    Label1: TLabel;
    DBE_CNAE_ID: TDBEdit;
    Label2: TLabel;
    DBE_CNAE_CODCNAE: TDBEdit;
    Label3: TLabel;
    DBE_CNAE_NOME: TDBEdit;
    Label4: TLabel;
    DBE_CNAE_CODSERV_PRINC: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    moper_cnae: integer;
    mcodigo: string;




    function fJaExiste(pId: integer; pNome: String; pCodcnae: String): boolean;


    function flcadcnae_local(ptipo,ppre: Integer; pvalor: String): Boolean;

  public

    { Public declarations }
  cnae_ori: String;

  end;

var
  Frm_Cnae: TFrm_Cnae;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_Cnae.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_cnae:=0;

Tb_Cnae.Append;
mcodigo:=Tb_CnaeCNAE_ID.AsString;
DBE_CNAE_ID.Enabled:=True;
DBE_CNAE_ID.SetFocus;

end;

procedure TFrm_Cnae.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_CnaeCNAE_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_cnae:=1;

Tb_Cnae.Edit;
DBE_CNAE_CODCNAE.SetFocus;


end;

procedure TFrm_Cnae.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_CnaeCNAE_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCNAE','',''
               ,['CNAE_ID'],[Tb_CnaeCNAE_ID.AsString]
               ,Tb_Cnae);

   Tb_Cnae.Delete;
   end;

end;

procedure TFrm_Cnae.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_CnaeCNAE_NOME.Value='_') or (Tb_CnaeCNAE_NOME.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBE_CNAE_CODCNAE.SetFocus;
   exit;
   end;


if not fJaExiste(Tb_CnaeCNAE_ID.AsInteger,Tb_CnaeCNAE_NOME.AsString,Tb_CnaeCNAE_CODCNAE.AsString) then
   begin
   if Tb_CnaeCNAE_ID.AsInteger<=0 then
      Tb_CnaeCNAE_ID.AsInteger := fBuscarSequencia('CADCNAE_SEQ');
   FAtualizaBanco(moper_cnae,'CADCNAE','',''
               ,['CNAE_ID'],[Tb_CnaeCNAE_ID.AsString]
               ,Tb_Cnae);
   Tb_Cnae.Post;
   CANCELAR.Click;
   end;


end;

procedure TFrm_Cnae.CANCELARClick(Sender: TObject);
begin
  inherited;
if Tb_Cnae.State in [dsEdit,dsInsert] then
   Tb_Cnae.Cancel;

end;

procedure TFrm_Cnae.SAIRClick(Sender: TObject);
begin
  inherited;
  close;

end;

function TFrm_Cnae.fJaExiste(pId: integer; pNome: String; pCodcnae: String): boolean;
var
query_existe: tQuery;
mMensagem: String;

   procedure pFechartudo;
   begin
   query_existe.close;
   freeandnil(query_existe);

   end;

begin

mMensagem := '';
if (trim(pCodCnae)='') then
   begin
   mMensagem:=mMensagem+'Código cnae é obrigatorio!'+mQuebraLinha;
   end;
if (trim(pNome)='') then
   begin
   mMensagem:=mMensagem+'Nome do cnae é obrigatorio!'+mQuebraLinha;
   end;
   
if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;


query_existe:=tQuery.Create(nil);
query_existe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_existe.sql.add('SELECT CNAE_ID,CNAE_NOME,CNAE_CODCNAE from CADCNAE where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and CNAE_ID='+IntToStr(pId));
    end;

if (trim(pNome)<>'') then
    begin
    query_existe.SQL.add(' and CNAE_NOME='+QuotedStr(pNome));
    end;

if (trim(pCodcnae)<>'') then
    begin
    query_existe.SQL.add(' and CNAE_CODCNAE='+QuotedStr(pCodcnae));
    end;

try
   query_existe.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_existe,169,'_stru '+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;
if query_existe.IsEmpty then
   begin
   result:=false;
   end
else
   begin
   MessageDlg('Ja Existe um Registro igual a este. Id '+query_existe.fieldbyName('CNAE_ID').AsString+' Nome: '+query_existe.fieldbyname('CNAE_NOME').AsString
   +' Nome: '+query_existe.fieldbyname('CNAE_CODCNAE').AsString,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;


end;



procedure TFrm_Cnae.FormCreate(Sender: TObject);
begin
  inherited;
cnae_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCNAE') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;
DBNavigator1.DataSource:=Src_Cnae;
DBGrid1.DataSource:=Src_Cnae;

end;

procedure TFrm_Cnae.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcnae_local(CAMPO.ItemIndex,1,Edit1.Text);
end;


function TFrm_Cnae.flcadcnae_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
Tb_Cnae.Close;
Tb_Cnae.Sql.clear;
Tb_Cnae.Sql.add('Select * from CADCNAE where 1=1 ');

if PTIPO<1 then
  begin
  if ppre=0 then
     Tb_Cnae.SQl.Add(' and CNAE_NOME = '+QuotedStr(pvalor))
   else
     Tb_Cnae.SQl.Add(' and CNAE_NOME like '+QuotedStr(pvalor+'%'));
    Tb_Cnae.SQl.add(' order by CNAE_NOME');

   end
else if (ptipo=1) then
   begin
   if (trim(pvalor)<>'') then
      Tb_Cnae.SQl.add(' and CNAE_CODCNAE like '+QuotedStr(pvalor+'%'));
    Tb_Cnae.SQl.add(' order by CNAE_CODCNAE');
  end
else
   begin
   if (trim(pvalor)<>'') then
      Tb_Cnae.SQl.add(' and CNAE_ID like '+fdeixanum('0'+pvalor+'%'));
   Tb_Cnae.SQl.Add(' order by CNAE_ID')
   end;
Tb_Cnae.open;
if Tb_Cnae.Eof then
   Result:=False
else
   Result:=True;
end;


procedure TFrm_Cnae.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cnae_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_Cnae.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if cnae_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_Cnae.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.


