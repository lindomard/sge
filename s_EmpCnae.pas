unit s_EmpCnae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_EmpCnae = class(TFrm_C)
    Tb_EmpCnae: TQuery;
    U_EmpCnae: TUpdateSQL;
    Src_EmpCnae: TDataSource;
    
    Tb_EmpCnaeECNAE_ID: TFloatField;
    Tb_EmpCnaeECNAE_ID_EMP: TFloatField;
    Tb_EmpCnaeECNAE_ID_CNAE: TStringField;
    Tb_EmpCnaeECNAE_PRINCIPAL: TFloatField;
    Tb_EmpCnaeECNAE_CODLC_SERV: TStringField;
    Tb_EmpCnaeECNAE_COD_SERV: TStringField;
    Tb_EmpCnaeECNAE_IND_OP: TStringField;
    Tb_EmpCnaeECNAE_CODNBS: TStringField;
    Tb_EmpCnaeECNAE_CST_PIS_COFINS: TStringField;
    Tb_EmpCnaeECNAE_CST_IBS_CBS: TStringField;
    Tb_EmpCnaeECNAE_PINSS: TFloatField;
    Tb_EmpCnaeECNAE_PCOFINS: TFloatField;
    Tb_EmpCnaeECNAE_PPIS: TFloatField;
    Tb_EmpCnaeECNAE_PCLSS: TFloatField;
    Tb_EmpCnaeECNAE_PIR: TFloatField;
    Tb_EmpCnaeECNAE_PISSQN: TFloatField;

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
    moper_empcnae: integer;

    function fJaExiste(pId: integer; pIdEmp: String; pCodCnae: String): boolean;
    function flcadempcnae_local(ptipo, ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    empcnae_ori: String;
  end;

var
  Frm_EmpCnae: TFrm_EmpCnae;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_EmpCnae.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_empcnae := 0;
  PC1.ActivePageIndex := 1; // Mantém focado na aba do Grid
  Tb_EmpCnae.Append;
  DBGrid1.SetFocus;
end;

procedure TFrm_EmpCnae.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_EmpCnae.IsEmpty then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_empcnae := 1;
  PC1.ActivePageIndex := 1;
  Tb_EmpCnae.Edit;
  DBGrid1.SetFocus;
end;

procedure TFrm_EmpCnae.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_EmpCnae.IsEmpty then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADEMP_CNAE', '', '', ['ECNAE_ID'], [Tb_EmpCnaeECNAE_ID.AsString], Tb_EmpCnae);
    Tb_EmpCnae.Delete;
  end;
end;

procedure TFrm_EmpCnae.GRAVARClick(Sender: TObject);
begin
  inherited;
  if Tb_EmpCnae.State in [dsEdit, dsInsert] then
  begin
    if (Tb_EmpCnaeECNAE_ID_CNAE.Value = '_') or (Tb_EmpCnaeECNAE_ID_CNAE.IsNull) then
    begin
      fmensagem('Código CNAE Inválido!', 0, ['1'], 0);
      DBGrid1.SetFocus;
      exit;
    end;

    if not fJaExiste(Tb_EmpCnaeECNAE_ID.AsInteger, Tb_EmpCnaeECNAE_ID_EMP.AsString, Tb_EmpCnaeECNAE_ID_CNAE.AsString) then
    begin
      if Tb_EmpCnaeECNAE_ID.AsInteger <= 0 then
        Tb_EmpCnaeECNAE_ID.AsInteger := fBuscarSequencia('CADEMP_CNAE_SEQ');

      FAtualizaBanco(moper_empcnae, 'CADEMP_CNAE', '', '', ['ECNAE_ID'], [Tb_EmpCnaeECNAE_ID.AsString], Tb_EmpCnae);
      Tb_EmpCnae.Post;
      CANCELAR.Click;
    end;
  end;
end;

procedure TFrm_EmpCnae.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_EmpCnae.State in [dsEdit, dsInsert] then
    Tb_EmpCnae.Cancel;
end;

procedure TFrm_EmpCnae.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_EmpCnae.fJaExiste(pId: integer; pIdEmp: String; pCodCnae: String): boolean;
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
  if (trim(pIdEmp) = '') then
    mMensagem := mMensagem + 'ID da Empresa é obrigatório!' + mQuebraLinha;
  if (trim(pCodCnae) = '') then
    mMensagem := mMensagem + 'Código do CNAE é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT ECNAE_ID from CADEMP_CNAE where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and ECNAE_ID <> ' + IntToStr(pId) + ' and ECNAE_ID_EMP = ' + QuotedStr(pIdEmp) + ' and ECNAE_ID_CNAE = ' + QuotedStr(pCodCnae));

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
    MessageDlg('Já existe um registro vinculado a esta Empresa com este CNAE! Id: ' + query_existe.fieldbyName('ECNAE_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_EmpCnae.FormCreate(Sender: TObject);
begin
  inherited;
  empcnae_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADEMP_CNAE') then
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
  DBNavigator1.DataSource := Src_EmpCnae;
  DBGrid1.DataSource := Src_EmpCnae;
  PC1.ActivePageIndex := 1; // Foca diretamente na aba do Grid
end;

procedure TFrm_EmpCnae.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadempcnae_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_EmpCnae.flcadempcnae_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_EmpCnae.Close;
  Tb_EmpCnae.Sql.clear;
  Tb_EmpCnae.Sql.add('Select * from CADEMP_CNAE where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_EmpCnae.SQl.Add(' and ECNAE_ID_CNAE = ' + QuotedStr(pvalor))
    else
      Tb_EmpCnae.SQl.Add(' and ECNAE_ID_CNAE like ' + QuotedStr(pvalor + '%'));
    Tb_EmpCnae.SQl.add(' order by ECNAE_ID_CNAE');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_EmpCnae.SQl.add(' and ECNAE_ID_EMP like ' + QuotedStr(pvalor + '%'));
    Tb_EmpCnae.SQl.add(' order by ECNAE_ID_EMP');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_EmpCnae.SQl.add(' and ECNAE_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_EmpCnae.SQl.Add(' order by ECNAE_ID');
  end;
  
  Tb_EmpCnae.open;
  if Tb_EmpCnae.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_EmpCnae.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if empcnae_ori <> '' then
    ModalResult := MrOk;
end;

procedure TFrm_EmpCnae.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 9) and (empcnae_ori <> '') then
  begin
    ModalResult := MrOk;
    abort;
  end;
end;

procedure TFrm_EmpCnae.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;

end.