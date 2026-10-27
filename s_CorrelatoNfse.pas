unit s_CorrelatoNfse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_CorrelatoNfse = class(TFrm_C)
    Tb_Correlato: TQuery;
    U_Correlato: TUpdateSQL;
    Src_Correlato: TDataSource;
    
    Tb_CorrelatoTC_ID: TFloatField;
    Tb_CorrelatoTC_C_TRIB_NAC: TStringField;
    Tb_CorrelatoTC_X_TRIB_NAC: TStringField;
    Tb_CorrelatoTC_C_CLASSTRIB: TStringField;
    Tb_CorrelatoTC_X_CLASSTRIB: TStringField;
    Tb_CorrelatoTC_C_ST_IBS_CBS: TStringField;
    Tb_CorrelatoTC_X_ST_IBS_CST: TStringField;
    Tb_CorrelatoTC_C_IND_OP: TStringField;
    Tb_CorrelatoTC_X_IND_OP: TStringField;
    Tb_CorrelatoTS_PS_ONEROSA: TFloatField;
    Tb_CorrelatoTS_ADQUIRIDA_EXTERIOR: TFloatField;
    Tb_CorrelatoTS_LOCAL_INCID_CBS: TStringField;
    Tb_CorrelatoTC_C_NBS: TStringField;
    Tb_CorrelatoTC_X_NBS: TStringField;

    Label1: TLabel;
    DBE_TC_ID: TDBEdit;
    Label2: TLabel;
    DBE_TC_C_TRIB_NAC: TDBEdit;
    Label3: TLabel;
    DBE_TC_X_TRIB_NAC: TDBEdit;
    Label6: TLabel;
    DBE_TC_C_CLASSTRIB: TDBEdit;
    Label7: TLabel;
    DBE_TC_X_CLASSTRIB: TDBEdit;
    Label8: TLabel;
    DBE_TC_C_ST_IBS_CBS: TDBEdit;
    Label9: TLabel;
    DBE_TC_X_ST_IBS_CST: TDBEdit;
    Label10: TLabel;
    DBE_TC_C_IND_OP: TDBEdit;
    Label11: TLabel;
    DBE_TC_X_IND_OP: TDBEdit;
    Label12: TLabel;
    DBE_TS_LOCAL_INCID_CBS: TDBEdit;
    Label13: TLabel;
    DBE_TC_C_NBS: TDBEdit;
    Label14: TLabel;
    DBE_TC_X_NBS: TDBEdit;

    DBC_PS_ONEROSA: TDBCheckBox;
    DBC_ADQUIRIDA_EXTERIOR: TDBCheckBox;

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
    procedure DBE_TC_C_TRIB_NACExit(Sender: TObject);
    procedure DBE_TC_C_TRIB_NACKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_TC_C_NBSExit(Sender: TObject);
    procedure DBE_TC_C_NBSKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_TC_C_CLASSTRIBExit(Sender: TObject);
    procedure DBE_TC_C_CLASSTRIBKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_TC_C_ST_IBS_CBSExit(Sender: TObject);
    procedure DBE_TC_C_ST_IBS_CBSKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_TC_C_IND_OPExit(Sender: TObject);
    procedure DBE_TC_C_IND_OPKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    moper_correlato: integer;
    mcodigo: string;

    function fJaExiste(pId: integer; pTribNac: String; pCodTrib: String): boolean;
    function flcadcorrelato_local(ptipo, ppre: Integer; pvalor: String): Boolean;


    function fExisteCadAtividadeTrib(pCodigo: String): boolean;

    function fExisteCadnbs(pCodigo: String): boolean;
    function fExisteCadclassTrib(pCodigo: String): boolean;
    function fExisteCadCstIbs(pCodigo: String): boolean;

    function fExisteCadIndOp(pCodigo: String): boolean;


  public
    { Public declarations }
    correlato_ori: String;
  end;

var
  Frm_CorrelatoNfse: TFrm_CorrelatoNfse;

implementation

uses S_mensagem, S_DM1, func_excecoes, Func, lerarq, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_CorrelatoNfse.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper_correlato := 0;
  Tb_Correlato.Append;
  mcodigo := Tb_CorrelatoTC_ID.AsString;
  DBE_TC_ID.Enabled := True;
  DBE_TC_C_TRIB_NAC.SetFocus;
end;

procedure TFrm_CorrelatoNfse.ALTERARClick(Sender: TObject);
begin
  inherited;
  if Tb_CorrelatoTC_ID.IsNull then
  begin
    fmensagem('Não há registro a ser alterado', 0, ['1'], 0);
    exit;
  end;
  moper_correlato := 1;
  Tb_Correlato.Edit;
  DBE_TC_C_TRIB_NAC.SetFocus;
end;

procedure TFrm_CorrelatoNfse.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if Tb_CorrelatoTC_ID.IsNull then
  begin
    fmensagem('Não há registro a ser excluído!', 0, ['1'], 0);
    exit;
  end;

  if fmensagem('Quer Realmente Excluir este Registro?', 0, ['1', '2'], 2) = mrYes then
  begin
    FAtualizaBanco(2, 'CADCORRELATO_DADOS_NFSE', '', '', ['TC_ID'], [Tb_CorrelatoTC_ID.AsString], Tb_Correlato);
    Tb_Correlato.Delete;
  end;
end;

procedure TFrm_CorrelatoNfse.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (Tb_CorrelatoTC_X_TRIB_NAC.Value = '_') or (Tb_CorrelatoTC_X_TRIB_NAC.IsNull) then
  begin
    fmensagem('Nome/Descrição da Tributação Nacional Inválida!', 0, ['1'], 0);
    DBE_TC_X_TRIB_NAC.SetFocus;
    exit;
  end;

  if not fJaExiste(Tb_CorrelatoTC_ID.AsInteger, Tb_CorrelatoTC_X_TRIB_NAC.AsString, Tb_CorrelatoTC_C_TRIB_NAC.AsString) then
  begin
    if Tb_CorrelatoTC_ID.AsInteger <= 0 then
      Tb_CorrelatoTC_ID.AsInteger := fBuscarSequencia('CADCORRELATO_DADOS_NFSE_SEQ');

    FAtualizaBanco(moper_correlato, 'CADCORRELATO_DADOS_NFSE', '', '', ['TC_ID'], [Tb_CorrelatoTC_ID.AsString], Tb_Correlato);
    Tb_Correlato.Post;
    CANCELAR.Click;
  end;
end;

procedure TFrm_CorrelatoNfse.CANCELARClick(Sender: TObject);
begin
  inherited;
  if Tb_Correlato.State in [dsEdit, dsInsert] then
    Tb_Correlato.Cancel;
end;

procedure TFrm_CorrelatoNfse.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_CorrelatoNfse.fJaExiste(pId: integer; pTribNac: String; pCodTrib: String): boolean;
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
  if (trim(pCodTrib) = '') then
    mMensagem := mMensagem + 'Código de Tributação Nacional é obrigatório!' + mQuebraLinha;
  if (trim(pTribNac) = '') then
    mMensagem := mMensagem + 'Nome de Tributação Nacional é obrigatório!' + mQuebraLinha;

  if trim(mMensagem) <> '' then
  begin
    MessageDlg(mMensagem, mtWarning, [mbOk], 0);
    result := false;
    exit;
  end;

  query_existe := tQuery.Create(nil);
  query_existe.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  query_existe.sql.add('SELECT TC_ID, TC_X_TRIB_NAC, TC_C_TRIB_NAC from CADCORRELATO_DADOS_NFSE where 1=1 ');
  
  if (pId <> 0) then
    query_existe.SQL.add(' and TC_ID <> ' + IntToStr(pId) + ' and (TC_C_TRIB_NAC = ' + QuotedStr(pCodTrib) + ')')
  else
    query_existe.SQL.add(' and (TC_C_TRIB_NAC = ' + QuotedStr(pCodTrib) + ')');



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
//    MessageDlg('Já existe um registro com este Código ou Nome de Tributação! Id: ' + query_existe.fieldbyName('TC_ID').AsString, mtWarning, [mbOk], 0);
    result := FALSE;
  end;
  pFechartudo;
end;

procedure TFrm_CorrelatoNfse.FormCreate(Sender: TObject);
begin
  inherited;
  correlato_ori := '';
  if flcadactab(0, 0, IntToStr(codcar), 'CADCORRELATO_DADOS_NFSE') then
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
  DBNavigator1.DataSource := Src_Correlato;
  DBGrid1.DataSource := Src_Correlato;
end;

procedure TFrm_CorrelatoNfse.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcadcorrelato_local(CAMPO.ItemIndex, 1, Edit1.Text);
end;

function TFrm_CorrelatoNfse.flcadcorrelato_local(ptipo, ppre: Integer; pvalor: String): Boolean;
begin
  Tb_Correlato.Close;
  Tb_Correlato.Sql.clear;
  Tb_Correlato.Sql.add('Select * from CADCORRELATO_DADOS_NFSE where 1=1 ');

  if PTIPO < 1 then
  begin
    if ppre = 0 then
      Tb_Correlato.SQl.Add(' and TC_X_TRIB_NAC = ' + QuotedStr(pvalor))
    else
      Tb_Correlato.SQl.Add(' and TC_X_TRIB_NAC like ' + QuotedStr(pvalor + '%'));
    Tb_Correlato.SQl.add(' order by TC_X_TRIB_NAC');
  end
  else if (ptipo = 1) then
  begin
    if (trim(pvalor) <> '') then
      Tb_Correlato.SQl.add(' and TC_C_TRIB_NAC like ' + QuotedStr(pvalor + '%'));
    Tb_Correlato.SQl.add(' order by TC_C_TRIB_NAC');
  end
  else
  begin
    if (trim(pvalor) <> '') then
      Tb_Correlato.SQl.add(' and TC_ID like ' + fdeixanum('0' + pvalor + '%'));
    Tb_Correlato.SQl.Add(' order by TC_ID');
  end;
  
  Tb_Correlato.open;
  if Tb_Correlato.Eof then
    Result := False
  else
    Result := True;
end;

procedure TFrm_CorrelatoNfse.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if correlato_ori = '' then
  begin
    PC1.ActivePageIndex := 0;
    ALTERAR.SetFocus;
  end
  else
  begin
    ModalResult := MrOk;
  end;
end;

procedure TFrm_CorrelatoNfse.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 9 then
  begin
    if correlato_ori = '' then
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

procedure TFrm_CorrelatoNfse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (FormState <> [fsModal]) then
    Action := caFree;
end;



procedure TFrm_CorrelatoNfse.FormShow(Sender: TObject);
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

procedure TFrm_CorrelatoNfse.DBE_TC_C_TRIB_NACExit(Sender: TObject);
begin
  inherited;
if (GRAVAR.Enabled) and (Tb_CorrelatoTC_C_TRIB_NAC.AsString<>'') then
   begin
   if not fExisteCadAtividadeTrib(Tb_CorrelatoTC_C_TRIB_NAC.AsString) then
      DBE_TC_C_TRIB_NAC.SetFocus;
    end;  

end;



function TFrm_CorrelatoNfse.fExisteCadAtividadeTrib(pCodigo: String): boolean;
var
query_ativ_trib: tQuery;
begin
result:=true;
if trim(pCodigo)<>'' then
   begin
   query_ativ_trib:=tQuery.create(nil);
   query_ativ_trib.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_ativ_trib.sql.add('select tm_codigo,TM_NOME FROM cadtrib_mun WHERE TM_CODIGO=:CODIGO ');
   query_ativ_trib.parambyname('CODIGO').AsString:=pCodigo;
   try
      query_ativ_trib.Open;
      if query_ativ_trib.isempty then
         begin
         MessageDlg('C�digo da Atividade Municipio  '+pCodigo+' n�o Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end
      else
         begin
         Tb_CorrelatoTC_X_TRIB_NAC.value:= query_ativ_trib.fieldbyName('TM_NOME').AsString;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_ativ_trib,36638,'_stru '+e.message,'user');
      end;
      end;
   query_ativ_trib.close;
   freeandnil(query_ativ_trib);
   end;
end;



procedure TFrm_CorrelatoNfse.DBE_TC_C_TRIB_NACKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (GRAVAR.Enabled) and
    ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))  then
  begin
  Tb_CorrelatoTC_C_TRIB_NAC.Value:=fChamaCbsCst(0,'_venda',key,'');
  key:=#0;
  DBE_TC_C_TRIB_NACExit(self);
  end;

end;

procedure TFrm_CorrelatoNfse.DBE_TC_C_NBSExit(Sender: TObject);
begin
  inherited;
if (GRAVAR.Enabled) and (Tb_CorrelatoTC_C_NBS.AsString<>'') then
   begin
   if not fExisteCadnbs(Tb_CorrelatoTC_C_NBS.AsString) then
      DBE_TC_C_NBS.SetFocus;
    end;

end;




function TFrm_CorrelatoNfse.fExisteCadnbs(pCodigo: String): boolean;
var
query_nbs: tQuery;
begin
result:=true;
if trim(pCodigo)<>'' then
   begin
   query_nbs:=tQuery.create(nil);
   query_nbs.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_nbs.sql.add('select NBS_codigo,NBS_NOME FROM cadNBS WHERE NBS_CODIGO=:CODIGO ');
   query_nbs.parambyname('CODIGO').AsString:=pCodigo;
   try
      query_nbs.Open;
      if query_nbs.isempty then
         begin
         MessageDlg('C�digo do Nbs  '+pCodigo+' n�o Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end
      else
         begin
         Tb_CorrelatoTC_X_NBS.value:= query_nbs.fieldbyName('NBS_NOME').AsString;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_nbs,36638,'_stru '+e.message,'user');
      end;
      end;
   query_nbs.close;
   freeandnil(query_nbs);
   end;
end;


procedure TFrm_CorrelatoNfse.DBE_TC_C_NBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (GRAVAR.Enabled) and
    ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))  then
  begin
  Tb_CorrelatoTC_C_NBS.Value:=fChamaNbs(0,'_venda',key,'');
  key:=#0;
  DBE_TC_C_NBSExit(self);
  end;

end;

procedure TFrm_CorrelatoNfse.DBE_TC_C_CLASSTRIBExit(Sender: TObject);
begin
  inherited;
if (GRAVAR.Enabled) and (Tb_CorrelatoTC_C_CLASSTRIB.AsString<>'') then
   begin
   if not fExisteCadclassTrib(Tb_CorrelatoTC_C_CLASSTRIB.AsString) then
      DBE_TC_C_CLASSTRIB.SetFocus;
    end;

end;

procedure TFrm_CorrelatoNfse.DBE_TC_C_CLASSTRIBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (GRAVAR.Enabled) and
    ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))  then
  begin
  Tb_CorrelatoTC_C_CLASSTRIB.Value:=fChamaclasstrib(0,'_venda',key,'');
  key:=#0;
  DBE_TC_C_CLASSTRIBExit(self);
  end;

end;



function TFrm_CorrelatoNfse.fExisteCadclassTrib(pCodigo: String): boolean;
var
query_classtrib: tQuery;
begin
result:=true;
if trim(pCodigo)<>'' then
   begin
   query_classtrib:=tQuery.create(nil);
   query_classtrib.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_classtrib.sql.add('select CT_codigo,CT_NOME FROM CADclasstrib WHERE CT_CODIGO=:CODIGO ');
   query_classtrib.parambyname('CODIGO').AsString:=pCodigo;
   try
      query_classtrib.Open;
      if query_classtrib.isempty then
         begin
         MessageDlg('C�digo do Nbs  '+pCodigo+' n�o Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end
      else
         begin
         Tb_CorrelatoTC_X_classtrib.value:= query_classtrib.fieldbyName('CT_NOME').AsString;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_classtrib,36638,'_stru '+e.message,'user');
      end;
      end;
   query_classtrib.close;
   freeandnil(query_classtrib);
   end;
end;


procedure TFrm_CorrelatoNfse.DBE_TC_C_ST_IBS_CBSExit(Sender: TObject);
begin
  inherited;
if (GRAVAR.Enabled) and (Tb_CorrelatoTC_C_ST_IBS_CBS.AsString<>'') then
   begin
   if not fExisteCadCstIbs(Tb_CorrelatoTC_C_ST_IBS_CBS.AsString) then
      DBE_TC_C_ST_IBS_CBS.SetFocus;
    end;

end;





function TFrm_CorrelatoNfse.fExisteCadCstIbs(pCodigo: String): boolean;
var
query_cbs_cst: tQuery;
begin
result:=true;
if trim(pCodigo)<>'' then
   begin
   query_cbs_cst:=tQuery.create(nil);
   query_cbs_cst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_cbs_cst.sql.add('select CBS_codigo,CBS_NOME FROM CADCBS_CST WHERE CBS_CODIGO=:CODIGO ');
   query_cbs_cst.parambyname('CODIGO').AsString:=pCodigo;
   try
      query_cbs_cst.Open;
      if query_cbs_cst.isempty then
         begin
         MessageDlg('C�digo do Nbs  '+pCodigo+' n�o Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end
      else
         begin
         Tb_CorrelatoTC_X_ST_IBS_CST.value:= query_cbs_cst.fieldbyName('CBS_NOME').AsString;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_cbs_cst,36638,'_stru '+e.message,'user');
      end;
      end;
   query_cbs_cst.close;
   freeandnil(query_cbs_cst);
   end;
end;



procedure TFrm_CorrelatoNfse.DBE_TC_C_ST_IBS_CBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (GRAVAR.Enabled) and
    ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))  then
  begin
  Tb_CorrelatoTC_C_ST_IBS_CBS.Value:=fChamaCbsCst(0,'_venda',key,'');
  key:=#0;
  DBE_TC_C_ST_IBS_CBSExit(self);
  end;

end;

procedure TFrm_CorrelatoNfse.DBE_TC_C_IND_OPExit(Sender: TObject);
begin
  inherited;
if (GRAVAR.Enabled) and (Tb_CorrelatoTC_C_IND_OP.AsString<>'') then
   begin
   if not fExisteCadIndOp(Tb_CorrelatoTC_C_IND_OP.AsString) then
      DBE_TC_C_IND_OP.SetFocus;
    end;

end;



function TFrm_CorrelatoNfse.fExisteCadIndOp(pCodigo: String): boolean;
var
query_CIOP_cst: tQuery;
begin
result:=true;
if trim(pCodigo)<>'' then
   begin
   query_CIOP_cst:=tQuery.create(nil);
   query_CIOP_cst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_CIOP_cst.sql.add('select CIOP_codigo,CIOP_NOME FROM CADINDOP_IBSCBS WHERE CIOP_CODIGO=:CODIGO ');
   query_CIOP_cst.parambyname('CODIGO').AsString:=pCodigo;
   try
      query_CIOP_cst.Open;
      if query_CIOP_cst.isempty then
         begin
         MessageDlg('C�digo do CIOP '+pCodigo+' n�o Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end
      else
         begin
         Tb_CorrelatoTC_X_IND_OP.value:= query_CIOP_cst.fieldbyName('CIOP_NOME').AsString;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_CIOP_cst,36638,'_stru '+e.message,'user');
      end;
      end;
   query_CIOP_cst.close;
   freeandnil(query_CIOP_cst);
   end;
end;


procedure TFrm_CorrelatoNfse.DBE_TC_C_IND_OPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (GRAVAR.Enabled) and
    ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))  then
  begin
  Tb_CorrelatoTC_C_IND_OP.Value:=fChamaIndOpIbsCbs(0,'_venda',key,'');
  key:=#0;
  DBE_TC_C_IND_OPExit(self);
  end;

end;

end.
