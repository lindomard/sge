unit s_trib_mun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_trib_mun = class(TFrm_C)
    Tb_TribMun: TQuery;
    U_TribMun: TUpdateSQL;
    Src_TribMun: TDataSource;
    Label1: TLabel;
    DBE_TM_ID: TDBEdit;
    Label2: TLabel;
    DBE_TM_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_TM_NOME: TDBEdit;
    Tb_TribMunTM_CODIGO: TStringField;
    Tb_TribMunTM_NOME: TStringField;
    Tb_TribMunTM_ID: TFloatField;
    
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
    moper_trib: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
    function flcadtrib_local(ptipo, ppre: Integer; pvalor: String): Boolean;


  public
    { Public declarations }
    trib_ori: String;
  end;

var
  Frm_trib_mun: TFrm_trib_mun;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_trib_mun.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_trib := 0;
  Tb_tribMun.Append;
  mcodigo := Tb_tribMunTM_ID.AsString;
  DBE_TM_ID.Enabled := True;
  DBE_TM_CODIGO.SetFocus;
end;

procedure TFrm_trib_mun.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_tribMunTM_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_trib := 1;
  Tb_tribMun.Edit;
  DBE_TM_CODIGO.SetFocus;
end;

procedure TFrm_trib_mun.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_tribMunTM_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADTRIB_NAC', '', '', ['TM_ID'], [Tb_tribMunTM_ID.AsString], Tb_tribMun);
    Tb_tribMun.Delete;
  end;
end;

procedure TFrm_trib_mun.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_tribMunTM_NOME.Value = '_') or (Tb_tribMunTM_NOME.IsNull) then
  begin
    fmensagem('Nome Inválido!', 0, ['1'], 0);
    DBE_TM_NOME.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_tribMunTM_ID.AsInteger, Tb_tribMunTM_NOME.AsString, Tb_tribMunTM_CODIGO.AsString) then
  begin
    if Tb_tribMunTM_ID.AsInteger <= 0 then
      Tb_tribMunTM_ID.AsInteger := fBuscarSequencia('CADTRIB_NAC_SEQ');

    FAtualizaBanco(moper_trib, 'CADTRIB_NAC', '', '', ['TM_ID'], [Tb_tribMunTM_ID.AsString], Tb_tribMun);
    Tb_tribMun.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_trib_mun.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_tribMun.State in [dsEdit, dsInsert] then
    Tb_tribMun.Cancel;
end;

procedure TFrm_trib_mun.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_trib_mun.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
  query_existe.sql.add('SELECT TM_ID, TM_NOME, TM_CODIGO from CADTRIB_NAC where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and TM_ID <> ' + IntToStr(pId) + ' and (TM_CODIGO = ' + QuotedStr(pCodigo) + ' or TM_NOME = ' + QuotedStr(pNome) + ')');

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
    MessageDlg('Já existe um registro com este Código ou Nome! Id: ' + query_existe.fieldbyName('TM_ID').AsString, mtWarning, [mbOk], 0);
    result := true;
  end;
  pFechartudo;
end;

procedure TFrm_trib_mun.FormCreate(Sender: TObject);
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
  DBNavigator1.DataSource := src_tribMun;
  DBGrid1.DataSource := src_tribMun;
end;

procedure TFrm_trib_mun.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadtrib_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_trib_mun.flcadtrib_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_tribMun.Close;
  Tb_tribMun.Sql.clear;
  Tb_tribMun.Sql.add('Select * from CADTRIB_MUN where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_tribMun.SQl.Add(' and TM_NOME = ' + QuotedStr(pvalor))
    else
      Tb_tribMun.SQl.Add(' and TM_NOME like ' + QuotedStr(pvalor + '%'));
    Tb_tribMun.SQl.add(' order by TM_NOME');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_tribMun.SQl.add(' and TM_CODIGO like ' + QuotedStr(pvalor + '%'));
    Tb_tribMun.SQl.add(' order by TM_CODIGO');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_tribMun.SQl.add(' and TM_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_tribMun.SQl.Add(' order by TM_ID');
  end;
  
  Tb_tribMun.open;
  if Tb_tribMun.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_trib_mun.DBGrid1DblClick(Sender: TObject);
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

procedure TFrm_trib_mun.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_trib_mun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;

procedure TFrm_trib_mun.FormShow(Sender: TObject);
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
