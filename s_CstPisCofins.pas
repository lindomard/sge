unit s_CstPisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_CstPisCofins = class(TFrm_C)
    Tb_CstPisCofins: TQuery;
    U_CstPisCofins: TUpdateSQL;
    Src_CstPisCofins: TDataSource;
    
    Tb_CstPisCofinsCSTC_ID: TFloatField;
    Tb_CstPisCofinsCSTC_CODIGO: TStringField;
    Tb_CstPisCofinsCSTC_NOME: TStringField;
    Tb_CstPisCofinsCSTC_DESCRICAO: TMemoField;

    Label1: TLabel;
    DBE_CSTC_ID: TDBEdit;
    Label2: TLabel;
    DBE_CSTC_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CSTC_NOME: TDBEdit;
    Label4: TLabel;
    DBM_CSTC_DESCRICAO: TDBMemo;

    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
    moper_cst: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadcst_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    cst_ori: String;
  end;

var
  Frm_CstPisCofins: TFrm_CstPisCofins;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_CstPisCofins.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_cst := 0;
  Tb_CstPisCofins.Append;
  mcodigo := Tb_CstPisCofinsCSTC_ID.AsString;
  DBE_CSTC_ID.Enabled := True;
  DBE_CSTC_CODIGO.SetFocus;
end;

procedure TFrm_CstPisCofins.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_CstPisCofinsCSTC_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_cst := 1;
  Tb_CstPisCofins.Edit;
  DBE_CSTC_CODIGO.SetFocus;
end;

procedure TFrm_CstPisCofins.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_CstPisCofinsCSTC_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADCST_PISCOFINS', '', '', ['CSTC_ID'], [Tb_CstPisCofinsCSTC_ID.AsString], Tb_CstPisCofins);
    Tb_CstPisCofins.Delete;
  end;
end;

procedure TFrm_CstPisCofins.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_CstPisCofinsCSTC_NOME.Value = '_') or (Tb_CstPisCofinsCSTC_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_CSTC_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_CstPisCofinsCSTC_ID.AsInteger, Tb_CstPisCofinsCSTC_NOME.AsString, Tb_CstPisCofinsCSTC_CODIGO.AsString) then
  begin
    if Tb_CstPisCofinsCSTC_ID.AsInteger <= 0 then
      Tb_CstPisCofinsCSTC_ID.AsInteger := fBuscarSequencia('CADCST_PISCOFINS_SEQ');

    FAtualizaBanco(moper_cst, 'CADCST_PISCOFINS', '', '', ['CSTC_ID'], [Tb_CstPisCofinsCSTC_ID.AsString], Tb_CstPisCofins);
    Tb_CstPisCofins.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_CstPisCofins.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_CstPisCofins.State in [dsEdit, dsInsert] then
    Tb_CstPisCofins.Cancel;
end;

procedure TFrm_CstPisCofins.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_CstPisCofins.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
  if (trim(pCodigo) = '') then
    mMensagem := mMensagem + 'Código CST PIS/COFINS é obrigatório!' + mQuebraLinha;
  if (trim(pNome) = '') then
    mMensagem := mMensagem + 'Nome do CST PIS/COFINS é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT CSTC_ID, CSTC_NOME, CSTC_CODIGO from CADCST_PISCOFINS where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and CSTC_ID <> ' + IntToStr(pId) + ' and (CSTC_CODIGO = ' + QuotedStr(pCodigo) + ' or CSTC_NOME = ' + QuotedStr(pNome) + ')');

  try
    query_existe.Open;
  except
    ON E: Exception do
    begin
      ex_erroSql_Novo(query_existe, 169, '_stru ' + e.message, 'user');
      pfechartudo;
      result := false;
      exit;
    end;
  end;

  if query_existe.IsEmpty then
  begin
    result := false;
  end
  else
  begin
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('CSTC_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_CstPisCofins.FormCreate(Sender: TObject);
begin
  inherited;
  cst_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADCST_PISCOFINS') then
  begin
    if DM4.Tb_AcTabAT_INC.Value = 1 then bbinc_true := False;
    if DM4.Tb_AcTabAT_ALT.Value = 1 then bbalt_true := False;
    if DM4.Tb_AcTabAT_EXC.Value = 1 then bbexc_true := False;
  end
  else
  begin
    bbinc_true := true;
    bbalt_true := true;
    bbexc_true := true;
  end;

  INCLUIR.Enabled := bbinc_true;
  ALTERAR.Enabled := bbalt_true;
  EXCLUIR.Enabled := bbexc_true;
  DBNavigator1.DataSource := Src_CstPisCofins;
  DBGrid1.DataSource := Src_CstPisCofins;
end;

procedure TFrm_CstPisCofins.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadcst_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_CstPisCofins.flcadcst_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_CstPisCofins.Close;
  Tb_CstPisCofins.Sql.clear;
  Tb_CstPisCofins.Sql.add('Select * from CADCST_PISCOFINS where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_CstPisCofins.SQl.Add(' and CSTC_NOME = ' + QuotedStr(pvalor))
    else
      Tb_CstPisCofins.SQl.Add(' and CSTC_NOME like ' + QuotedStr(pvalor + '%'));
    Tb_CstPisCofins.SQl.add(' order by CSTC_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_CstPisCofins.SQl.add(' and CSTC_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_CstPisCofins.SQl.add(' order by CSTC_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_CstPisCofins.SQl.add(' and CSTC_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_CstPisCofins.SQl.Add(' order by CSTC_ID');
  end;
  
  Tb_CstPisCofins.open;
  if Tb_CstPisCofins.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_CstPisCofins.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if cst_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_CstPisCofins.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if cst_ori = '' then
    begin
      PC1.ActivePageIndex := 0;
      ALTERAR.SetFocus;
    end
    else
    begin
      ModalResult := MrOk;
    end;
    abort;
  end;
end;

procedure TFrm_CstPisCofins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;


procedure TFrm_CstPisCofins.FormShow(Sender: TObject);
begin
if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end;
if CAMPO.ItemIndex=-1 then
   CAMPO.ItemIndex:=0;
if mtipo<>1 then
   BBnAtu.Click;
end;




end.