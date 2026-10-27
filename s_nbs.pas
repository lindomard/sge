unit s_nbs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_Nbs = class(TFrm_C)
    Tb_Nbs: TQuery;
    U_Nbs: TUpdateSQL;
    Src_Nbs: TDataSource;
    
    Tb_NbsNBS_ID: TFloatField;
    Tb_NbsNBS_CODIGO: TStringField;
    Tb_NbsNBS_NOME: TStringField;

    Label1: TLabel;
    DBE_NBS_ID: TDBEdit;
    Label2: TLabel;
    DBE_NBS_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_NBS_NOME: TDBEdit;
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

    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    moper_nbs: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadnbs_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    nbs_ori: String;
  end;

var
  Frm_Nbs: TFrm_Nbs;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_Nbs.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_nbs := 0;
  Tb_Nbs.Append;
  mcodigo := Tb_NbsNBS_ID.AsString;
  DBE_NBS_ID.Enabled := True;
  DBE_NBS_CODIGO.SetFocus;
end;

procedure TFrm_Nbs.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_NbsNBS_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_nbs := 1;
  Tb_Nbs.Edit;
  DBE_NBS_CODIGO.SetFocus;
end;

procedure TFrm_Nbs.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_NbsNBS_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADNBS', '', '', ['NBS_ID'], [Tb_NbsNBS_ID.AsString], Tb_Nbs);
    Tb_Nbs.Delete;
  end;
end;

procedure TFrm_Nbs.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_NbsNBS_NOME.Value = '_') or (Tb_NbsNBS_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_NBS_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_NbsNBS_ID.AsInteger, Tb_NbsNBS_NOME.AsString, Tb_NbsNBS_CODIGO.AsString) then
  begin
    if Tb_NbsNBS_ID.AsInteger <= 0 then
      Tb_NbsNBS_ID.AsInteger := fBuscarSequencia('CADNBS_SEQ');

    FAtualizaBanco(moper_nbs, 'CADNBS', '', '', ['NBS_ID'], [Tb_NbsNBS_ID.AsString], Tb_Nbs);
    Tb_Nbs.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_Nbs.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_Nbs.State in [dsEdit, dsInsert] then
    Tb_Nbs.Cancel;
end;

procedure TFrm_Nbs.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_Nbs.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
    mMensagem := mMensagem + 'Código NBS é obrigatório!' + mQuebraLinha;
  if (trim(pNome) = '') then
    mMensagem := mMensagem + 'Nome da NBS é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT NBS_ID, NBS_NOME, NBS_CODIGO from CADNBS where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and NBS_ID <> ' + IntToStr(pId) + ' and (NBS_CODIGO = ' + QuotedStr(pCodigo) + ' or NBS_NOME = ' + QuotedStr(pNome) + ')');

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
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('NBS_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_Nbs.FormCreate(Sender: TObject);
begin
  inherited;
  nbs_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADNBS') then
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
  DBNavigator1.DataSource := Src_Nbs;
  DBGrid1.DataSource := Src_Nbs;
end;

procedure TFrm_Nbs.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadnbs_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_Nbs.flcadnbs_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_Nbs.Close;
  Tb_Nbs.Sql.clear;
  Tb_Nbs.Sql.add('Select * from CADNBS where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_Nbs.SQl.Add(' and NBS_NOME = ' + QuotedStr(pvalor))
    else
      Tb_Nbs.SQl.Add(' and NBS_NOME like ' + QuotedStr(pvalor + '%'));
    if trim(edt_filtros_extras.Text)<>'' then
       Tb_Nbs.sql.add(' and '+edt_filtros_extras.Text);
    Tb_Nbs.SQl.add(' order by NBS_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_Nbs.SQl.add(' and NBS_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_Nbs.SQl.add(' order by NBS_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_Nbs.SQl.add(' and NBS_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_Nbs.SQl.Add(' order by NBS_ID');
  end;
  
  Tb_Nbs.open;
  if Tb_Nbs.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_Nbs.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if nbs_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_Nbs.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if nbs_ori = '' then
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

procedure TFrm_Nbs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;

procedure TFrm_nbs.FormShow(Sender: TObject);
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