unit s_cbs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_Cbs = class(TFrm_C)
    Tb_Cbs: TQuery;
    U_Cbs: TUpdateSQL;
    Src_Cbs: TDataSource;
    Tb_CbsCBS_ID: TFloatField;
    Tb_CbsCBS_CODIGO: TStringField;
    Tb_CbsCBS_NOME: TStringField;
    Label1: TLabel;
    DBE_CBS_ID: TDBEdit;
    Label2: TLabel;
    DBE_CBS_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CBS_NOME: TDBEdit;
    
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
    moper_cbs: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadcbs_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    cbs_ori: String;
  end;

var
  Frm_Cbs: TFrm_Cbs;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_Cbs.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_cbs := 0;
  Tb_Cbs.Append;
  mcodigo := Tb_CbsCBS_ID.AsString;
  DBE_CBS_ID.Enabled := True;
  DBE_CBS_CODIGO.SetFocus;
end;

procedure TFrm_Cbs.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_CbsCBS_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_cbs := 1;
  Tb_Cbs.Edit;
  DBE_CBS_CODIGO.SetFocus;
end;

procedure TFrm_Cbs.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_CbsCBS_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADCBS', '', '', ['CBS_ID'], [Tb_CbsCBS_ID.AsString], Tb_Cbs);
    Tb_Cbs.Delete;
  end;
end;

procedure TFrm_Cbs.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_CbsCBS_NOME.Value = '_') or (Tb_CbsCBS_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_CBS_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_CbsCBS_ID.AsInteger, Tb_CbsCBS_NOME.AsString, Tb_CbsCBS_CODIGO.AsString) then
  begin
    if Tb_CbsCBS_ID.AsInteger <= 0 then
      Tb_CbsCBS_ID.AsInteger := fBuscarSequencia('CADCBS_SEQ');

    FAtualizaBanco(moper_cbs, 'CADCBS', '', '', ['CBS_ID'], [Tb_CbsCBS_ID.AsString], Tb_Cbs);
    Tb_Cbs.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_Cbs.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_Cbs.State in [dsEdit, dsInsert] then
    Tb_Cbs.Cancel;
end;

procedure TFrm_Cbs.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_Cbs.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
    mMensagem := mMensagem + 'Código CBS é obrigatório!' + mQuebraLinha;
  if (trim(pNome) = '') then
    mMensagem := mMensagem + 'Nome da CBS é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT CBS_ID, CBS_NOME, CBS_CODIGO from CADCBS where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and CBS_ID <> ' + IntToStr(pId) + ' and (CBS_CODIGO = ' + QuotedStr(pCodigo) + ' or CBS_NOME = ' + QuotedStr(pNome) + ')');

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
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('CBS_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_Cbs.FormCreate(Sender: TObject);
begin
  inherited;
  cbs_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADCBS') then
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
  DBNavigator1.DataSource := Src_Cbs;
  DBGrid1.DataSource := Src_Cbs;
end;

procedure TFrm_Cbs.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadcbs_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_Cbs.flcadcbs_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_Cbs.Close;
  Tb_Cbs.Sql.clear;
  Tb_Cbs.Sql.add('Select * from CADCBS where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_Cbs.SQl.Add(' and CBS_NOME = ' + QuotedStr(pvalor))
    else
      Tb_Cbs.SQl.Add(' and CBS_NOME like ' + QuotedStr(pvalor + '%'));
    Tb_Cbs.SQl.add(' order by CBS_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_Cbs.SQl.add(' and CBS_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_Cbs.SQl.add(' order by CBS_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_Cbs.SQl.add(' and CBS_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_Cbs.SQl.Add(' order by CBS_ID');
  end;
  
  Tb_Cbs.open;
  if Tb_Cbs.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_Cbs.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if cbs_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_Cbs.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if cbs_ori = '' then
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

procedure TFrm_Cbs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;


procedure TFrm_Cbs.FormShow(Sender: TObject);
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

