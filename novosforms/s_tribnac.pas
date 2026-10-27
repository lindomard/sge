unit s_TribNac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_TribNac = class(TFrm_C)
    Tb_TribNac: TQuery;
    U_TribNac: TUpdateSQL;
    Src_TribNac: TDataSource;
    Tb_TribNacTN_ID: TFloatField;
    Tb_TribNacTN_CODIGO: TStringField;
    Tb_TribNacTN_NOME: TStringField;
    Label1: TLabel;
    DBE_TN_ID: TDBEdit;
    Label2: TLabel;
    DBE_TN_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_TN_NOME: TDBEdit;
    
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
    moper_trib: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadtrib_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    trib_ori: String;
  end;

var
  Frm_TribNac: TFrm_TribNac;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_TribNac.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_trib := 0;
  Tb_TribNac.Append;
  mcodigo := Tb_TribNacTN_ID.AsString;
  DBE_TN_ID.Enabled := True;
  DBE_TN_CODIGO.SetFocus;
end;

procedure TFrm_TribNac.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_TribNacTN_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_trib := 1;
  Tb_TribNac.Edit;
  DBE_TN_CODIGO.SetFocus;
end;

procedure TFrm_TribNac.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_TribNacTN_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADTRIB_NAC', '', '', ['TN_ID'], [Tb_TribNacTN_ID.AsString], Tb_TribNac);
    Tb_TribNac.Delete;
  end;
end;

procedure TFrm_TribNac.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_TribNacTN_NOME.Value = '_') or (Tb_TribNacTN_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_TN_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_TribNacTN_ID.AsInteger, Tb_TribNacTN_NOME.AsString, Tb_TribNacTN_CODIGO.AsString) then
  begin
    if Tb_TribNacTN_ID.AsInteger <= 0 then
      Tb_TribNacTN_ID.AsInteger := fBuscarSequencia('CADTRIB_NAC_SEQ');

    FAtualizaBanco(moper_trib, 'CADTRIB_NAC', '', '', ['TN_ID'], [Tb_TribNacTN_ID.AsString], Tb_TribNac);
    Tb_TribNac.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_TribNac.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_TribNac.State in [dsEdit, dsInsert] then
    Tb_TribNac.Cancel;
end;

procedure TFrm_TribNac.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_TribNac.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
    mMensagem := mMensagem + 'Código tributo é obrigatório!' + mQuebraLinha;
  if (trim(pNome) = '') then
    mMensagem := mMensagem + 'Nome do tributo é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT TN_ID, TN_NOME, TN_CODIGO from CADTRIB_NAC where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and TN_ID <> ' + IntToStr(pId) + ' and (TN_CODIGO = ' + QuotedStr(pCodigo) + ' or TN_NOME = ' + QuotedStr(pNome) + ')');

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
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('TN_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_TribNac.FormCreate(Sender: TObject);
begin
  inherited;
  trib_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADTRIB_NAC') then
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
  DBNavigator1.DataSource := Src_TribNac;
  DBGrid1.DataSource := Src_TribNac;
end;

procedure TFrm_TribNac.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadtrib_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_TribNac.flcadtrib_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_TribNac.Close;
  Tb_TribNac.Sql.clear;
  Tb_TribNac.Sql.add('Select * from CADTRIB_NAC where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_TribNac.SQl.Add(' and TN_NOME = ' + QuotedStr(pvalor))
    else
      Tb_TribNac.SQl.Add(' and TN_NOME like ' + QuotedStr(pvalor + '%'));
    Tb_TribNac.SQl.add(' order by TN_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_TribNac.SQl.add(' and TN_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_TribNac.SQl.add(' order by TN_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_TribNac.SQl.add(' and TN_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_TribNac.SQl.Add(' order by TN_ID');
  end;
  
  Tb_TribNac.open;
  if Tb_TribNac.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_TribNac.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if trib_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_TribNac.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if trib_ori = '' then
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

procedure TFrm_TribNac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;

end.