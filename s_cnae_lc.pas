unit s_cnae_lc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_CNAE_LC = class(TFrm_C)
    Tb_Cnae_lc: TQuery;
    U_cnae_lc: TUpdateSQL;
    Src_cnae_lc: TDataSource;
    Tb_Cnae_lcCLC_ID: TFloatField;
    Tb_Cnae_lcCLC_CODIGO: TStringField;
    Tb_Cnae_lcCLC_NOME: TStringField;
    Label1: TLabel;
    DBE_CLC_ID: TDBEdit;
    Label2: TLabel;
    DBE_CLC_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CLC_NOME: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    moper_canae_lc: integer;

    bbinc_true:boolean;
   bbalt_true:boolean;
   bbexc_true:boolean;

    function flcadcnae_lc_local(ptipo,ppre: Integer; pvalor: String): Boolean;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;


  public
    { Public declarations }
      cnae_lc_ori: String;

  end;

var
  Frm_CNAE_LC: TFrm_CNAE_LC;

implementation

uses S_DM1, S_DM4, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_CNAE_LC.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_canae_lc:=0;

Tb_Cnae_lc.Append;
mcodigo:=Tb_Cnae_lcCLC_CODIGO.AsString;
DBE_CLC_CODIGO.SetFocus;

end;

procedure TFrm_CNAE_LC.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_Cnae_lcCLC_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_canae_lc:=1;

Tb_Cnae_lc.Edit;
DBE_CLC_CODIGO.SetFocus;


end;

procedure TFrm_CNAE_LC.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_Cnae_lcCLC_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCNAE_LC','',''
               ,['CLC_ID'],[Tb_Cnae_lcCLC_ID.AsString]
               ,Tb_Cnae_lc);

   Tb_Cnae_lc.Delete;
   end;

end;

procedure TFrm_CNAE_LC.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_Cnae_lcCLC_NOME.Value='_') or (Tb_Cnae_lcCLC_NOME.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBE_CLC_CODIGO.SetFocus;
   exit;
   end;

if not fJaExiste(Tb_Cnae_lcCLC_ID.AsInteger,Tb_Cnae_lcCLC_NOME.AsString,Tb_Cnae_lcCLC_CODIGO.AsString) then
   begin
   if Tb_Cnae_lcCLC_ID.AsInteger<=0 then
      Tb_Cnae_lcCLC_ID.AsInteger := fBuscarSequencia('CADCNAE_LC_SEQ');
   FAtualizaBanco(moper_canae_lc,'CADCNAE_LC','',''
               ,['CLC_ID'],[Tb_Cnae_lcCLC_ID.AsString]
               ,Tb_Cnae_lc);
   Tb_Cnae_lc.Post;
   CANCELAR.Click;
   end;


end;

procedure TFrm_CNAE_LC.CANCELARClick(Sender: TObject);
begin
  inherited;
if Tb_Cnae_lc.State in [dsEdit,dsInsert] then
   Tb_Cnae_lc.Cancel;

end;

procedure TFrm_CNAE_LC.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_CNAE_LC.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcnae_lc_local(CAMPO.ItemIndex,1,Edit1.Text);

end;



function TFrm_CNAE_LC.flcadcnae_lc_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
Tb_Cnae_lc.Close;
Tb_Cnae_lc.Sql.clear;
Tb_Cnae_lc.Sql.add('Select * from CADCNAE_LC where 1=1 ');

if PTIPO<1 then
  begin
  if ppre=0 then
     Tb_Cnae_lc.SQl.Add(' and CLC_NOME like '+QuotedStr(pvalor+'%'))
   else
     Tb_Cnae_lc.SQl.Add(' and CLC_NOME like '+QuotedStr(pvalor+'%'));
    Tb_cnae_lc.SQl.add(' order by CLC_NOME');

   end
else if (ptipo=1) then
   begin
   if (trim(pvalor)<>'') then
      Tb_cnae_lc.SQl.add(' and CLC_CODIGO like '+QuotedStr(pvalor+'%'));
    Tb_cnae_lc.SQl.add(' order by CLC_CODIGO');
  end
else
   begin
   if (trim(pvalor)<>'') then
      Tb_cnae_lc.SQl.add(' and CLC_ID='+fdeixanum('0'+pvalor));
   Tb_cnae_lc.SQl.Add(' order by CLC_ID')
   end;
Tb_cnae_lc.open;
if Tb_cnae_lc.Eof then
   Result:=False
else
   Result:=True;
end;



function TFrm_CNAE_LC.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
var
query_existe: tQuery;

   procedure pFechartudo;
   begin
   query_existe.close;
   freeandnil(query_existe);

   end;

begin

query_existe:=tQuery.Create(nil);
query_existe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_existe.sql.add('SELECT CLC_ID,CLC_NOME,CLC_CODIGO from CADCNAE_LC where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and CLC_ID='+IntToStr(pId));
    end;

if (trim(pNome)<>'') then
    begin
    query_existe.SQL.add(' and CLC_NOME='+QuotedStr(pNome));
    end;

if (trim(pCodigo)<>'') then
    begin
    query_existe.SQL.add(' and CLC_CODIGO='+QuotedStr(pCodigo));
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
   +' Nome: '+query_existe.fieldbyname('CNAE_CODIGO').AsString,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;


end;

procedure TFrm_CNAE_LC.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cnae_lc_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_CNAE_LC.FormCreate(Sender: TObject);
begin
  inherited;
cnae_lc_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCNAE_LC') then
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
DBNavigator1.DataSource:=Src_cnae_lc;
DBGrid1.DataSource:=Src_cnae_lc;

end;

procedure TFrm_CNAE_LC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
