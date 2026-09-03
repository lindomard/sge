unit S_Cnae_x_Lc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_Cnae_x_Lc = class(TFrm_C)
    Tb_cnae_x_lc: TQuery;
    u_cnae_x_lc: TUpdateSQL;
    src_cnae_x_lc: TDataSource;
    Tb_cnae_x_lcCNLC_ID: TFloatField;
    Tb_cnae_x_lcCNLC_CODCNAE: TStringField;
    Tb_cnae_x_lcnome_cnae: TStringField;
    Tb_cnae_x_lcCNLC_CODLC: TStringField;
    Tb_cnae_x_lcnome_lc: TStringField;
    Label1: TLabel;
    DBE_CNLC_ID: TDBEdit;
    Label2: TLabel;
    DBE_CNLC_CODCNAE: TDBEdit;
    Label3: TLabel;
    DBE_nome_cnae: TDBEdit;
    Label4: TLabel;
    DBE_CNLC_CODLC: TDBEdit;
    Label5: TLabel;
    DBe_nome_lc: TDBEdit;
    procedure DBE_CNLC_CODCNAEKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CNLC_CODCNAEExit(Sender: TObject);
    procedure DBE_CNLC_CODLCExit(Sender: TObject);
    procedure DBE_CNLC_CODLCKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_cnae_x_lcBeforePost(DataSet: TDataSet);
    procedure BBnAtuClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
  private
    { Private declarations }
     cnae_x_lc_ori: String;
    moper_cnae_x_lc: integer;

    function flcadcnae_x_lc_local(ptipo,ppre: Integer; pvalor: String): Boolean;


    function fJaExiste(pId: integer; pCodCnae: String; pCodlc: String): boolean;

  public
    { Public declarations }
  end;

var
  Frm_Cnae_x_Lc: TFrm_Cnae_x_Lc;

implementation

uses S_DM1, lerarq, Func, S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_Cnae_x_Lc.DBE_CNLC_CODCNAEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if (Tb_cnae_x_lc.State in [dsEdit,dsInsert]) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Tb_cnae_x_lcCNLC_CODCNAE.AsString:=fChamaCnae(0,'Frm_cnae_x_lc',key);
      if trim(Tb_cnae_x_lcCNLC_CODCNAE.AsString)<>'' then
         DBE_CNLC_CODCNAEExit(Self);
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_Cnae_x_Lc.DBE_CNLC_CODCNAEExit(Sender: TObject);
begin
  inherited;
if (Tb_cnae_x_lc.State in [dsEdit,dsInsert]) then
   begin
   if (length(Tb_cnae_x_lcCNLC_CODCNAE.AsString)>0) then
      begin
      if flqr1('CNAE_ID,CNAE_CODCNAE,CNAE_NOME','C','CADCNAE','N','CNAE_CODCNAE',Tb_cnae_x_lcCNLC_CODCNAE.AsString) then
         begin
         Tb_cnae_x_lcnome_cnae.Value:=DM1.query1.fieldbyname('CNAE_CODCNAE').asstring;
         end
      else
         begin
         fmensagem('Cnae  não Cadastrado!',0,['0'],0);
         DBE_CNLC_CODCNAE.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_Cnae_x_Lc.DBE_CNLC_CODLCExit(Sender: TObject);
begin
  inherited;
if (Tb_cnae_x_lc.State in [dsEdit,dsInsert]) then
   begin
   if (length(Tb_cnae_x_lcCNLC_CODLC.AsString)>0) then
      begin
      if flqr1('CNLC_ID,CNLC_CODIGO,CNLC_NOME','CNLC','CADCNAE_LC','N','CNLC_CODIGO',Tb_cnae_x_lcCNLC_CODLC.AsString) then
         begin
         Tb_cnae_x_lcnome_lc.Value:=DM1.query1.fieldbyname('CNLC_CODIGO').asstring;
         end
      else
         begin
         fmensagem('Cnae  não Cadastrado!',0,['0'],0);
         DBE_CNLC_CODLC.SetFocus;
         end;
      end
   else
      Tb_cnae_x_lcnome_lc.Value:='';
   end;

end;

procedure TFrm_Cnae_x_Lc.DBE_CNLC_CODLCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if Tb_cnae_x_lc.State in [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Tb_cnae_x_lcCNLC_CODCNAE.AsString:=fChamaCnae(0,'Frm_cnae_x_lc',key);
      if trim(Tb_cnae_x_lcCNLC_CODCNAE.AsString)<>'' then
         DBE_CNLC_CODCNAEExit(Self);
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;


end;


function TFrm_Cnae_x_Lc.flcadcnae_x_lc_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
Tb_cnae_x_lc.Close;
Tb_cnae_x_lc.Sql.clear;
Tb_cnae_x_lc.Sql.add('SELECT   CNLC_ID,  CNLC_CODCNAE,  CNAE_NOME as nome_cnae, '
                    +'  CNLC_CODLC,  CLC_NOME AS  nome_lc   FROM CADCNAE_X_LC '
                    +'   left join CADCNAE ON (CNAE_CODCNAE=CNLC_CODCNAE) '
                    +'   left join CADCNAE_LC ON (CLC_CODIGO=CNLC_CODLC)  where 1=1 ');




if PTIPO<1 then
   begin
   if (trim(pvalor)<>'') then
      Tb_cnae_x_lc.SQl.Add(' and CNLC_CODCNAE like '+QuotedStr(pvalor+'%'));
   Tb_cnae_x_lc.SQl.add(' order by CNLC_CODCNAE');
   end
else if (ptipo=1) then
   begin
   if (trim(pvalor)<>'') then
      Tb_cnae_x_lc.SQl.add(' and CNLC_CODLC like '+QuotedStr(pvalor+'%'));
    Tb_cnae_x_lc.SQl.add(' order by CNLC_CODLC');
  end
else
   begin
   if (trim(pvalor)<>'') then
      Tb_cnae_x_lc.SQl.add(' and CNLC_ID='+fdeixanum('0'+pvalor));
   Tb_cnae_x_lc.SQl.Add(' order by CNLC_ID')
   end;
try
    Tb_cnae_x_lc.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Tb_cnae_x_lc,179,'_stru '+e.message,'user');
   result:=false;
   end;
   end;
//ex_erroSql_Novo(Tb_cnae_x_lc,179,'_stru ','user');


if Tb_cnae_x_lc.Eof then
   Result:=False
else
   Result:=True;
end;

procedure TFrm_Cnae_x_Lc.FormCreate(Sender: TObject);
begin
  inherited;
cnae_x_lc_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCNAE_X_LC') then
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
DBNavigator1.DataSource:=src_cnae_x_lc;
DBGrid1.DataSource:=src_cnae_x_lc;


end;

procedure TFrm_Cnae_x_Lc.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cnae_x_lc_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_Cnae_x_Lc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if cnae_x_lc_ori='' then
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

procedure TFrm_Cnae_x_Lc.Tb_cnae_x_lcBeforePost(DataSet: TDataSet);
begin
  inherited;
if not fJaExiste(Tb_cnae_x_lcCNLC_ID.AsInteger,Tb_cnae_x_lcCNLC_CODCNAE.AsString,Tb_cnae_x_lcCNLC_CODLC.AsString) then
   begin
   if Tb_cnae_x_lcCNLC_ID.AsInteger<=0 then
      Tb_cnae_x_lcCNLC_ID.AsInteger := fBuscarSequencia('CADCNAE_X_LC_SEQ')
   end
else
   abort;

end;


function TFrm_Cnae_x_Lc.fJaExiste(pId: integer; pCodCnae: String; pCodlc: String): boolean;
var
query_existe: tQuery;
mMensagem: string;

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
if (trim(pCodlc)='') then
   begin
   mMensagem:=mMensagem+'Código da lei complementar é obrigatorio!'+mQuebraLinha;
   end;
if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
query_existe:=tQuery.Create(nil);
query_existe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_existe.sql.add('SELECT CNLC_ID,CNLC_CODCNAE,CNLC_CODLC from CADCNAE_X_LC where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and CNLC_ID='+IntToStr(pId));
    end;

if (trim(pCodCnae)<>'') then
    begin
    query_existe.SQL.add(' and CNLC_CODCNAE='+QuotedStr(pCodCnae));
    end;

if (trim(pCodlc)<>'') then
    begin
    query_existe.SQL.add(' and CNLC_CODLC='+QuotedStr(pCodlc));
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
   MessageDlg('Ja Existe um Registro igual a este. Id '+query_existe.fieldbyName('CNLC_ID').AsString
   +' Codigo Cnae: '+query_existe.fieldbyname('CNAE_CODCNAE').AsString
      +' Codigo LC: '+query_existe.fieldbyname('CNAE_CODLC').AsString
   ,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;


end;


procedure TFrm_Cnae_x_Lc.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcnae_x_lc_local(CAMPO.ItemIndex,1,Edit1.Text);
end;

procedure TFrm_Cnae_x_Lc.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrm_Cnae_x_Lc.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_cnae_x_lc:=0;

Tb_cnae_x_lc.Append;
mcodigo:=Tb_cnae_x_lcCNLC_ID.AsString;
DBE_CNLC_CODCNAE.SetFocus;

end;

procedure TFrm_Cnae_x_Lc.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_cnae_x_lcCNLC_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_cnae_x_lc:=1;

Tb_cnae_x_lc.Edit;
DBE_CNLC_CODCNAE.SetFocus;

end;

procedure TFrm_Cnae_x_Lc.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_cnae_x_lcCNLC_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCNAE_X_LC','',''
               ,['CNLC_ID'],[Tb_cnae_x_lcCNLC_ID.AsString]
               ,Tb_cnae_x_lc);

   Tb_cnae_x_lc.Delete;
   end;

end;

procedure TFrm_Cnae_x_Lc.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_cnae_x_lcCNLC_CODCNAE.Value='_') or (Tb_cnae_x_lcCNLC_CODCNAE.IsNull)
   OR (Tb_cnae_x_lcCNLC_CODLC.Value='_') or (Tb_cnae_x_lcCNLC_CODLC.IsNull)  then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBE_CNLC_CODCNAE.SetFocus;
   exit;
   end;


if not fJaExiste(Tb_cnae_x_lcCNLC_ID.AsInteger,Tb_cnae_x_lcCNLC_CODCNAE.AsString,Tb_cnae_x_lcCNLC_CODLC.AsString) then
   begin
   if Tb_cnae_x_lcCNLC_ID.AsInteger<=0 then
      Tb_cnae_x_lcCNLC_ID.AsInteger := fBuscarSequencia('CADCNAE_X_LC_SEQ');
   FAtualizaBanco(moper_cnae_x_lc,'CADCNAE_X_LC','',''
               ,['CNLC_ID'],[Tb_cnae_x_lcCNLC_ID.AsString]
               ,Tb_cnae_x_lc);
   Tb_cnae_x_lc.Post;
   CANCELAR.Click;
   end;

end;

procedure TFrm_Cnae_x_Lc.CANCELARClick(Sender: TObject);
begin
  inherited;
if Tb_cnae_x_lc.State in [dsEdit,dsInsert] then
   Tb_cnae_x_lc.Cancel;

end;

end.
