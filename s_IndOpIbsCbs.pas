unit s_IndOpIbsCbs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_IndOpIbsCbs = class(TFrm_C)
    Tb_IndOp: TQuery;
    U_IndOp: TUpdateSQL;
    Src_IndOp: TDataSource;
    
    Tb_IndOpCIOP_ID: TFloatField;
    Tb_IndOpCIOP_CODIGO: TStringField;
    Tb_IndOpCIOP_NOME: TStringField;
    Tb_IndOpCIOP_ART11: TStringField;
    Tb_IndOpCIOP_LOCAL_OPERACAO: TStringField;
    Tb_IndOpCIOP_CARACTERISTICA: TStringField;
    Tb_IndOpCIOP_LOCAL_FORN: TStringField;

    Label1: TLabel;
    DBE_CIOP_ID: TDBEdit;
    Label2: TLabel;
    DBE_CIOP_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CIOP_NOME: TDBEdit;
    Label4: TLabel;
    DBE_CIOP_ART11: TDBEdit;
    Label5: TLabel;
    DBE_CIOP_LOCAL_OPERACAO: TDBEdit;
    Label6: TLabel;
    DBE_CIOP_CARACTERISTICA: TDBEdit;
    Label7: TLabel;
    DBE_CIOP_LOCAL_FORN: TDBEdit;
    lbl_filtros_extras: TLabel;
    edt_filtros_extras: TEdit;

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
  private
    { Private declarations }
    moper_indop: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadindop_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    indop_ori: String;
  end;

var
  Frm_IndOpIbsCbs: TFrm_IndOpIbsCbs;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_IndOpIbsCbs.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_indop := 0;
  Tb_IndOp.Append;
  mcodigo := Tb_IndOpCIOP_ID.AsString;
  DBE_CIOP_ID.Enabled := True;
  DBE_CIOP_CODIGO.SetFocus;
end;

procedure TFrm_IndOpIbsCbs.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_IndOpCIOP_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_indop := 1;
  Tb_IndOp.Edit;
  DBE_CIOP_CODIGO.SetFocus;
end;

procedure TFrm_IndOpIbsCbs.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_IndOpCIOP_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADINDOP_IBSCBS', '', '', ['CIOP_ID'], [Tb_IndOpCIOP_ID.AsString], Tb_IndOp);
    Tb_IndOp.Delete;
  end;
end;

procedure TFrm_IndOpIbsCbs.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_IndOpCIOP_NOME.Value = '_') or (Tb_IndOpCIOP_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_CIOP_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_IndOpCIOP_ID.AsInteger, Tb_IndOpCIOP_NOME.AsString, Tb_IndOpCIOP_CODIGO.AsString) then
  begin
    if Tb_IndOpCIOP_ID.AsInteger <= 0 then
      Tb_IndOpCIOP_ID.AsInteger := fBuscarSequencia('CADINDOP_IBSCBS_SEQ');

    FAtualizaBanco(moper_indop, 'CADINDOP_IBSCBS', '', '', ['CIOP_ID'], [Tb_IndOpCIOP_ID.AsString], Tb_IndOp);
    Tb_IndOp.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_IndOpIbsCbs.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_IndOp.State in [dsEdit, dsInsert] then
    Tb_IndOp.Cancel;
end;

procedure TFrm_IndOpIbsCbs.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_IndOpIbsCbs.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
    mMensagem := mMensagem + 'Código do indicador é obrigatório!' + mQuebraLinha;
  if (trim(pNome) = '') then
    mMensagem := mMensagem + 'Nome do indicador é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT CIOP_ID, CIOP_NOME, CIOP_CODIGO from CADINDOP_IBSCBS where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and CIOP_ID <> ' + IntToStr(pId) + ' and (CIOP_CODIGO = ' + QuotedStr(pCodigo) + ')')
  else
    query_existe.SQL.add(' and (CIOP_CODIGO = ' + QuotedStr(pCodigo) + ')');

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
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('CIOP_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_IndOpIbsCbs.FormCreate(Sender: TObject);
begin
  inherited;
  indop_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADINDOP_IBSCBS') then
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
  DBNavigator1.DataSource := Src_IndOp;
  DBGrid1.DataSource := Src_IndOp;
end;

procedure TFrm_IndOpIbsCbs.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadindop_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_IndOpIbsCbs.flcadindop_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_IndOp.Close;
  Tb_IndOp.Sql.clear;
  Tb_IndOp.Sql.add('Select * from CADINDOP_IBSCBS where 1=1 ');

if trim(edt_filtros_extras.Text)<>'' then
   Tb_IndOp.sql.add(' and '+edt_filtros_extras.Text);

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_IndOp.SQl.Add(' and CIOP_NOME = ' + QuotedStr(pvalor))
    else
      Tb_IndOp.SQl.Add(' and CIOP_NOME like ' + QuotedStr(pvalor + '%'));
    Tb_IndOp.SQl.add(' order by CIOP_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_IndOp.SQl.add(' and CIOP_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_IndOp.SQl.add(' order by CIOP_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_IndOp.SQl.add(' and CIOP_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_IndOp.SQl.Add(' order by CIOP_ID');
  end;
  
  Tb_IndOp.open;
  if Tb_IndOp.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_IndOpIbsCbs.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if indop_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_IndOpIbsCbs.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if indop_ori = '' then
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

procedure TFrm_IndOpIbsCbs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;

end.