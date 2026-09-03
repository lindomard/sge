unit s_PLANOCTAEFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DBTables, DB, RxDBComb;

type
  TFrm_PLANOCTAEFD = class(TFrm_C)
    Src_PLANOCTAEFD: TDataSource;
    tb_PLANOCTAEFD: TQuery;
    tb_PLANOCTAEFDPC_COD_CTA: TStringField;
    tb_PLANOCTAEFDPC_COD_NAT_CC: TStringField;
    tb_PLANOCTAEFDPC_IND_CTA: TStringField;
    tb_PLANOCTAEFDPC_NOME_CTA: TStringField;
    tb_PLANOCTAEFDPC_COD_CTA_REF: TStringField;
    U_PLANOCTAEFD: TUpdateSQL;
    Label2: TLabel;
    DBE_PC_COD_CTA: TDBEdit;
    Label1: TLabel;
    DBE_PC_NOME_CTA: TDBEdit;
    RxDBCB_PC_IND_CTA: TRxDBComboBox;
    Label46: TLabel;
    Label3: TLabel;
    RxDBCB_PC_COD_NAT_CC: TRxDBComboBox;
    Label4: TLabel;
    DBE_PC_NIVEL: TDBEdit;
    Label5: TLabel;
    DBE_PC_COD_CTA_REF: TDBEdit;
    Label6: TLabel;
    DBE_PC_DATHOR_INC: TDBEdit;
    Label7: TLabel;
    DBE_PC_DATHOR_UEVE: TDBEdit;
    tb_PLANOCTAEFDPC_NIVEL: TFloatField;
    tb_PLANOCTAEFDPC_DATHOR_INC: TDateTimeField;
    tb_PLANOCTAEFDPC_DATHOR_UEVE: TDateTimeField;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }

    mcod_cta_Ant: string;
    mOper_bco: integer;

    function fExistePlanoDeContas(pCodPlano: String): boolean;



    function flcadplanocta(pTipo: integer; pValor: String): boolean;

  public
    { Public declarations }
    pla_ori: string;
  end;

var
  Frm_PLANOCTAEFD: TFrm_PLANOCTAEFD;

implementation

uses S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_PLANOCTAEFD.INCLUIRClick(Sender: TObject);
begin
  inherited;

  tb_PLANOCTAEFD.Append;
  tb_PLANOCTAEFDPC_DATHOR_INC.AsDateTime:=now;
  tb_PLANOCTAEFDPC_COD_NAT_CC.AsString := '01';
  tb_PLANOCTAEFDPC_IND_CTA.AsString := 'A';
  mcod_cta_Ant  := '';
  mOper_bco    := 0;
  DBE_PC_COD_CTA.Enabled := True;
  DBE_PC_COD_CTA.SetFocus;

  INCLUIR.Enabled  := False;
  ALTERAR.Enabled  := False;
  EXCLUIR.Enabled  := False;
  CANCELAR.Enabled := True;
  GRAVAR.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator1.Enabled := False;
  BBnAtu.Enabled:= false;


end;

procedure TFrm_PLANOCTAEFD.ALTERARClick(Sender: TObject);
begin
  inherited;
  if tb_PLANOCTAEFDPC_COD_CTA.IsNull then begin
     Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
     Exit;
  end;
  PC1.ActivePage := tsCad;

  tb_PLANOCTAEFD.Edit;
  tb_PLANOCTAEFDPC_DATHOR_UEVE.AsDateTime:=now;

  mcod_cta_Ant := tb_PLANOCTAEFDPC_COD_CTA.AsString;
  mOper_bco   := 1;
  DBE_PC_COD_CTA.Enabled   := False;
  DBE_PC_NOME_CTA.SetFocus;

  INCLUIR.Enabled  := False;
  ALTERAR.Enabled  := False;
  EXCLUIR.Enabled  := False;
  CANCELAR.Enabled := True;
  GRAVAR.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator1.Enabled := False;
  BBnAtu.Enabled:= false;

end;

procedure TFrm_PLANOCTAEFD.EXCLUIRClick(Sender: TObject);
begin
  inherited;
   inherited;
if tb_PLANOCTAEFDPC_COD_CTA.IsNull then begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin

   FAtualizaBanco(2,'CADPLANOCTAEFD','',''
                     ,['PC_COD_CTA'],[tb_PLANOCTAEFDPC_COD_CTA.AsString]
                     ,tb_PLANOCTAEFD);
   tb_PLANOCTAEFD.Delete;
   end;

end;


function TFrm_PLANOCTAEFD.fExistePlanoDeContas(pCodPlano: String): boolean;
var
query_conta: tQuery;
begin
result:=false;
query_conta:=tQuery.create(nil);
query_conta.DataBaseName := DM1.SG_ASSOC.databaseName;

query_conta.Close;
query_conta.SQL.Clear;
query_conta.SQL.Add('Select PC_NOME_CTA from CADPLANOCTAEFD where '
                        +' PC_COD_CTA=:PC_COD_CTA ');
query_conta.ParambyName('PC_COD_CTA').AsString := pCodPlano;
try
   query_conta.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_conta,147,'SGE','CADPLANOCTAEFD');
   query_conta.close;
   freeandnil(query_conta);
   result:=false;
   exit;
   end;
   end;


if not Query_conta.IsEmpty then
   begin
   fmensagem('Este Codigo ja esta Cadastrado. Nome: '+Query_conta.FieldbyName('PC_NOME_CTA').AsString+' cancelar ou mudar o codigo!',0,['0'],0);
   query_conta.close;
   freeandnil(query_conta);

   result := true;
   exit;
   end;

query_conta.close;
freeandnil(query_conta);
end;

procedure TFrm_PLANOCTAEFD.GRAVARClick(Sender: TObject);
begin
  inherited;
if (tb_PLANOCTAEFDPC_COD_CTA.Isnull) then
   begin
   fmensagem('Favor informar o Código do Plano de Contas!',0,['0'],0);
   DBE_PC_COD_CTA.SetFocus;
   exit;
   end;

if (tb_PLANOCTAEFDPC_NOME_CTA.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   DBE_PC_NOME_CTA.SetFocus;
   exit;
   end;

tb_PLANOCTAEFDPC_DATHOR_UEVE.AsDateTime:=now;

if (mOper_bco=0) or (mcod_cta_Ant<>tb_PLANOCTAEFDPC_COD_CTA.AsString) then
   begin
   if fExistePlanoDeContas(tb_PLANOCTAEFDPC_COD_CTA.asstring) then
      exit;
   end;

FAtualizaBanco(mOper_bco,'CADPLANOCTAEFD','',''
               ,['PC_COD_CTA'],[tb_PLANOCTAEFDPC_COD_CTA.AsString]
               ,tb_PLANOCTAEFD);


tb_PLANOCTAEFD.Post;

mOper_bco:=-1;
cancelarClick(self);

end;

procedure TFrm_PLANOCTAEFD.CANCELARClick(Sender: TObject);
begin
  inherited;

   if tb_PLANOCTAEFD.State in [dsEdit,dsInsert] then
      tb_PLANOCTAEFD.Cancel;

   INCLUIR.Enabled  := bbinc_true;
   ALTERAR.Enabled  := bbalt_true;
   EXCLUIR.Enabled  := bbexc_true;
   CANCELAR.Enabled := False;
   GRAVAR.Enabled   := False;
   DBGrid1.Enabled      := True;
   DBNavigator1.Enabled := True;
   BBnAtu.Enabled:= true;
   mOper_bco            := -1;

end;

procedure TFrm_PLANOCTAEFD.SAIRClick(Sender: TObject);
begin
  inherited;
  if pla_ori = '' then close;


end;

procedure TFrm_PLANOCTAEFD.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if GRAVAR.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes : gravar.Click;
     else
          CANCELAR.Click;
     end;
  end;
  flcadplanocta(CAMPO.ItemIndex,Edit1.Text);

end;


function TFrm_PLANOCTAEFD.flcadplanocta(pTipo: integer; pValor: String): boolean;
begin



tb_PLANOCTAEFD.Close;
tb_PLANOCTAEFD.SQL.Clear;
tb_PLANOCTAEFD.Sql.add('Select * from CADPLANOCTAEFD where 1=1 ');
if (trim(pvalor)<>'')  then
   begin
   if PTIPO<1 then
       tb_PLANOCTAEFD.SQL.Add('  and PC_NOME_CTA like '+chr(39)+UpperCase(pvalor+'%')+chr(39)+' order by PC_NOME_CTA')
    else
       tb_PLANOCTAEFD.SQL.Add('  and PC_COD_CTA = '+chr(39)+UpperCase(pvalor)+chr(39)
       +' order by PC_COD_CTA')
    end;
tb_PLANOCTAEFD.Open;
result := tb_PLANOCTAEFD.IsEmpty=false;

end;

procedure TFrm_PLANOCTAEFD.FormCreate(Sender: TObject);
begin
  inherited;
tb_PLANOCTAEFDPC_DATHOR_INC.DisplayFormat := fdatHor;
tb_PLANOCTAEFDPC_DATHOR_UEVE.DisplayFormat := fdatHor;

end;

procedure TFrm_PLANOCTAEFD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_PLANOCTAEFD.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If tb_PLANOCTAEFD.State in [dsInsert, dsEdit] then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELARClick(Self);
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_PLANOCTAEFD.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if pla_ori='' then
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

procedure TFrm_PLANOCTAEFD.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pla_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

end.
