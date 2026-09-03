unit S_IndEnv_OPSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBClient, Grids, DBGrids, DBTables,
  ADODB, Mask, ToolEdit, Buttons;

type
  TFrm_IndEnv_OPSimples = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cds_cadop02: TClientDataSet;
    cds_cadop02op2_codpro: TFloatField;
    cds_cadop02op2_qtd: TFloatField;
    cds_cadop02op2_chave: TFloatField;
    cds_cadop02op2_lotseq: TFloatField;
    cds_cadop02pdnome: TStringField;
    cds_cadop02pdund: TStringField;
    cds_cadop02pdmarca: TStringField;
    src_cadop02: TDataSource;
    DBGrid_op: TDBGrid;
    gb_mp: TGroupBox;
    src_mp: TDataSource;
    DBGrid_mp: TDBGrid;
    strProc: TADOStoredProc;
    strProcCODPRO: TFloatField;
    strProcLOTE: TStringField;
    strProcDTVCTO: TDateTimeField;
    strProcQTD: TFloatField;
    strProcTIPO_PROD: TFloatField;
    strProctipo_produto: TStringField;
    strProcpdnome: TStringField;
    strProcpdund: TStringField;
    strProcpdmarca: TStringField;
    Panel2: TPanel;
    edt_mp: TEdit;
    edt_prodprod: TEdit;
    edt_embalagem: TEdit;
    edt_cx_embarque: TEdit;
    edt_acabado: TEdit;
    edt_outros: TEdit;
    cds_cadop02imprimir: TStringField;
    cds_cadop02gerar: TStringField;
    cds_cadop02excluir: TStringField;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    edt_codpro: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label4: TLabel;
    edt_chaveini: TEdit;
    Label5: TLabel;
    edt_chavefin: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    cds_cadop02sitmp: TIntegerField;
    cds_cadop02sitmp_texto: TStringField;
    cds_cadop02sitacab: TIntegerField;
    cds_cadop02sitacab_text: TStringField;
    cds_cadop02op2_pu: TFloatField;
    cds_cadop02OP2_FAB_DTFAB: TDateTimeField;
    cds_cadop02OP2_FAB_VCTO: TDateTimeField;
    cds_cadop02OP2_FAB_LOTE: TStringField;
    strProcop3_pu: TFloatField;
    strProcop3_sitmp: TFloatField;
    procedure DBGrid_opColExit(Sender: TObject);
    procedure cds_cadop02BeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cds_cadop02AfterInsert(DataSet: TDataSet);
    procedure DBGrid_mpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure src_cadop02DataChange(Sender: TObject; Field: TField);
    procedure DBGrid_opDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_opCellClick(Column: TColumn);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure edt_chaveiniExit(Sender: TObject);
    procedure edt_chavefinExit(Sender: TObject);
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure cds_cadop02BeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    mvalidaredicao: Boolean;
    mbloqueiochange :boolean;
    pCodPro_lid: Real;
    function FAbrirCadop02: Boolean;




    function fLerFormula(pCodPro,pQtd,pChave,pLotSeq: Real;pLocArmazenamento: Integer): Boolean;



    function fAtualizarTabelas: boolean;


    function fGerarOP: Boolean;

    function fExcluir: Boolean;

    function fBaixarMP(pCancelamento: Boolean): Boolean;

    function fEntrarAcabado(pCancelamento: Boolean): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_IndEnv_OPSimples: TFrm_IndEnv_OPSimples;

implementation

uses lerarq, Func, S_DM1_ADO, S_DM1, flerarq,s_lerarq_geral, S_DM3,func_excecoes;

{$R *.dfm}

procedure TFrm_IndEnv_OPSimples.DBGrid_opColExit(Sender: TObject);
begin
if cds_cadop02.State in [dsedit,dsinsert] then
   begin
   if DBGrid_op.SelectedField=cds_cadop02op2_codpro then
      begin
      if not fLerGenerico_query('CADPRO','PDNOME,PDUND,PDMARCA','PDCODPRO=0'+cds_cadop02op2_codpro.AsString,query_consulta) then
         begin
         MessageDlg('Produto '+cds_cadop02op2_codpro.AsString+' não cadastrado!',mtWarning,[mbOk],0);
         cds_cadop02op2_codpro.asfloat:=0;
         DBGrid_op.SelectedField:=cds_cadop02op2_codpro;
         DBGrid_op.SetFocus;
         abort;
         end
      else
         begin
         cds_cadop02pdnome.AsString  :=query_consulta.fieldbyname('PDNOME').asstring;
         cds_cadop02pdmarca.AsString :=query_consulta.fieldbyname('PDMARCA').asstring;
         cds_cadop02pdund.AsString   :=query_consulta.fieldbyname('PDUND').asstring;
         if not fLerGenerico_query('CADCOMP,CADPRO','PDNOME,PDUND,PDMARCA','PDCODPRO=CPCODPRO and CPCODPRO=0'+cds_cadop02op2_codpro.AsString,query_consulta) then
            begin
            MessageDlg('Não existe uma formula para este produto!',mtWarning,[mbOk],0);
            abort;
            end
         else
            begin
            if cds_cadop02op2_qtd.AsFloat<=0 then
               cds_cadop02op2_qtd.AsFloat:=1;
            fLerFormula(cds_cadop02op2_codpro.AsFloat,cds_cadop02op2_qtd.AsFloat,cds_cadop02op2_chave.AsFloat,cds_cadop02op2_lotseq.AsFloat ,log_filial_padrao);

            end;
         end;
      end
   else if DBGrid_op.SelectedField=cds_cadop02op2_qtd then
      begin
      if cds_cadop02op2_qtd.AsFloat<=0 then
         cds_cadop02op2_qtd.AsFloat:=1;
      if cds_cadop02op2_codpro.AsFloat>0 then
         fLerFormula(cds_cadop02op2_codpro.AsFloat,cds_cadop02op2_qtd.AsFloat,cds_cadop02op2_chave.AsFloat,cds_cadop02op2_lotseq.AsFloat ,log_filial_padrao);
      end;
    end;
end;

function TFrm_IndEnv_OPSimples.fLerFormula(pCodPro,pQtd,pChave,pLotSeq: Real;pLocArmazenamento: Integer): Boolean;

begin
if mbloqueiochange then
   begin
   result:=true;
   exit;
   end;

if pcodpro=0 then
   begin
   strProc.close;
   pcodpro_lid:=0;
   result:=true;
   exit;
   end;

if not DM1_ADO.ADOConnection1.Connected=true then
   DM1_ADO.ADOConnection1.Open;
if DM1_ADO.ADOConnection1.Connected=false then
   begin
   MessageDlg('erro na conexao!', mtError,[mbOk],0);
   exit;
   end;


strProc := TADOStoredProc.Create(self);
try
  strProc.Connection:= DM1_ADO.ADOConnection1;
  try
     strProc.Close;
     strProc.ProcedureName:= 'DADOSOP';
     strProc.Parameters.CreateParameter('p_codpro',ftFloat,pdInput,SizeOf(Double), pCodPro);
     strProc.Parameters.CreateParameter('P_CODEMP_FILIAL',ftFloat,pdInput,SizeOf(Double),codemp);
     strProc.Parameters.CreateParameter('P_QTD',ftFloat,pdInput,SizeOf(Double), pQtd);
     strProc.Parameters.CreateParameter('P_CHAVE_OP',ftFloat,pdInput,SizeOf(Double), pChave);
     strProc.Parameters.CreateParameter('P_LOTSEQ_OP',ftFloat,pdInput,SizeOf(Double), pLotSeq);
     strProc.Open; //<--Error: Parameter 'Abbr' not found.


     strProcCODPRO.DisplayLabel       := 'Códigodigo';
     strProcLOTE.DisplayLabel         := 'Lote';
     strProcDTVCTO.DisplayLabel       := 'Dt.Vcto';
     strProcQTD.DisplayLabel          := 'Qtde';
     strProcTIPO_PROD.DisplayLabel    := 'Tipo Prod';
     strProctipo_produto.DisplayLabel := 'Tipo do Produto';
     strProcpdnome.DisplayLabel       := 'Descrição';
     strProcpdund.DisplayLabel         := 'Und';
     strProcpdmarca.DisplayLabel      := 'Marca';
     strProcop3_pu.DisplayLabel       :='Pço.Unit';;
     strProcop3_sitmp.DisplayLabel    :='op3_sitmp';


     src_mp.DataSet:=strProc;
  finally
     end;
  finally
  end;




end;

{ antigo


function TFrm_IndEnv_OPSimples.fLerFormula(pCodPro,pQtd: Real;pLocArmazenamento: Integer): Boolean;

begin
if mbloqueiochange then
   begin
   result:=true;
   exit;
   end;

if pcodpro=0 then
   begin
   strProc.close;
   pcodpro_lid:=0;
   result:=true;
   exit;
   end;

if not DM1_ADO.ADOConnection1.Connected=true then
   DM1_ADO.ADOConnection1.Open;
if DM1_ADO.ADOConnection1.Connected=false then
   begin
   MessageDlg('erro na conexao!', mtError,[mbOk],0);
   exit;
   end;


strProc := TADOStoredProc.Create(self);
try
  strProc.Connection:= DM1_ADO.ADOConnection1;
  try
     strProc.Close;
     strProc.ProcedureName:= 'DADOSOP';
     strProc.Parameters.CreateParameter('p_codpro',ftFloat,pdInput,SizeOf(Double), pCodPro);
     strProc.Parameters.CreateParameter('P_CODEMP_FILIAL',ftFloat,pdInput,SizeOf(Double),codemp);
     strProc.Parameters.CreateParameter('P_QTD',ftFloat,pdInput,SizeOf(Double), pQtd);
     strProc.Open; //<--Error: Parameter 'Abbr' not found.
     src_mp.DataSet:=strProc;
  finally
     end;
  finally
  end;




end;

}


procedure TFrm_IndEnv_OPSimples.cds_cadop02BeforePost(DataSet: TDataSet);
begin
if cds_cadop02op2_codpro.AsFloat<=0 then
   begin
   cds_cadop02.Cancel;
   abort;
   end;

if cds_cadop02op2_qtd.AsFloat<=0 then
   begin
   cds_cadop02op2_qtd.AsFloat:=1;
   end;

end;

procedure TFrm_IndEnv_OPSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_IndEnv_OPSimples.FormCreate(Sender: TObject);
begin
mbloqueiochange:=false;
cds_cadop02.CreateDataSet;
FAbrirCadop02;
edt_datini.date:=date;
edt_datfin.date:=edt_datini.Date;
mvalidaredicao:=true;

end;



function TFrm_IndEnv_OPSimples.FAbrirCadop02: Boolean;
begin
cds_cadop02.Close;
cds_cadop02.open;
cds_cadop02.EmptyDataSet;

end;

procedure TFrm_IndEnv_OPSimples.cds_cadop02AfterInsert(DataSet: TDataSet);
begin
cds_cadop02op2_qtd.AsFloat:=1;

end;

procedure TFrm_IndEnv_OPSimples.DBGrid_mpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{
if strProc.FieldByName('CODPRO').isnull=false then
   begin
   if strProc.FieldByName('TIPO_PROD').AsInteger=2 then // caixa de embarque
      begin
      DBGrid_mp.Canvas.Brush.Color := edt_cx_embarque.Color;
      DBGrid_mp.Canvas.Font.Color    := edt_cx_embarque.Font.Color;
      end
   else if strProc.FieldByName('TIPO_PROD').AsInteger=1 then // embalagem
      begin
      DBGrid_mp.Canvas.Brush.Color := edt_embalagem.Color;
      DBGrid_mp.Canvas.Font.Color    := edt_embalagem.Font.Color;
      end
   else if strProc.FieldByName('TIPO_PROD').AsInteger=0 then // produto acabado
      begin
      DBGrid_mp.Canvas.Brush.Color := edt_acabado.Color;
      DBGrid_mp.Canvas.Font.Color    := edt_acabado.Font.Color;
      end
   else if strProc.FieldByName('TIPO_PROD').AsInteger=3 then // produto em producao
      begin
      DBGrid_mp.Canvas.Brush.Color := edt_prodprod.Color;
      DBGrid_mp.Canvas.Font.Color    := edt_prodprod.Font.Color;
      end
   else  //  outros
      begin
      DBGrid_mp.Canvas.Brush.Color := edt_outros.Color;
      DBGrid_mp.Canvas.Font.Color    := edt_outros.Font.Color;
      end;
   DBGrid_mp.Canvas.FillRect(Rect);
   DBGrid_mp.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
   }
pcodpro_lid:=cds_cadop02op2_codpro.AsFloat;

end;

procedure TFrm_IndEnv_OPSimples.src_cadop02DataChange(Sender: TObject;
  Field: TField);
begin
if pcodpro_lid<>cds_cadop02op2_codpro.AsFloat then
   begin
   fLerFormula(cds_cadop02op2_codpro.AsFloat,cds_cadop02op2_qtd.AsFloat,cds_cadop02op2_chave.AsFloat,cds_cadop02op2_lotseq.AsFloat ,log_filial_padrao);
   end;

end;

procedure TFrm_IndEnv_OPSimples.DBGrid_opDrawColumnCell(Sender: TObject;  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
begin
if Column.FieldName = 'gerar' then
   begin
   DBGrid_op.Canvas.FillRect(Rect);
   BUTTON := 0;
   R:=Rect;
   InflateRect(R,-2,-2); //Diminue o tamanho do Botão
   DrawFrameControl(DBGrid_op.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
   end
else if Column.FieldName = 'imprimir' then
   begin
   DBGrid_op.Canvas.FillRect(Rect);
   BUTTON := 0;
   R:=Rect;
   InflateRect(R,-2,-2); //Diminue o tamanho do Botão
   DrawFrameControl(DBGrid_op.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
   end
else if Column.FieldName = 'excluir' then
   begin
   DBGrid_op.Canvas.FillRect(Rect);
   BUTTON := 0;
   R:=Rect;
   InflateRect(R,-2,-2); //Diminue o tamanho do Botão
   DrawFrameControl(DBGrid_op.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
   end;

end;

procedure TFrm_IndEnv_OPSimples.DBGrid_opCellClick(Column: TColumn);
begin
if DBGrid_op.SelectedField.FieldName = 'gerar' then
   begin
   fGerarOP;
   end;
if DBGrid_op.SelectedField.FieldName = 'imprimir' then
   begin
   if cds_cadop02op2_chave.AsFloat=0 then
      fGerarOP;
   if cds_cadop02op2_chave.AsFloat>0 then
      begin
      fImprimirWord_lerarq(cds_cadop02op2_codpro.AsFloat,cds_cadop02op2_chave.AsFloat,cds_cadop02op2_lotseq.AsInteger);
      end;
  end;

if DBGrid_op.SelectedField.FieldName = 'excluir' then
   begin
   fExcluir;
  end;

end;

function TFrm_IndEnv_OPSimples.fExcluir: Boolean;
var
query_excluir: TQuery;
begin
if cds_cadop02op2_chave.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir a ordem de produção '+cds_cadop02op2_chave.AsString+'?'),'confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
mvalidaredicao:=false;
if cds_cadop02sitacab.AsInteger=1 then
   fEntrarAcabado(true);
if cds_cadop02sitmp.AsInteger=1 then
   fBaixarMP(true);

query_excluir:=TQuery.Create(nil);
query_excluir.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADOPET where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OPE_FABENV=0'
                  +' and OPE_LOTSEQ=0'+cds_cadop02op2_lotseq.AsString
                  +' and OPE_CODIGO=0'+cds_cadop02op2_chave.AsString);
Try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_EXCLUIR,469,'func Erro:'+e.Message ,'CADOPET');
   end;



query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADOP03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP3_FABENV=0 or OP3_FABENV=1) '
                  +' and OP3_LOTSEQ=0'+cds_cadop02op2_lotseq.AsString
                  +' and OP3_CODIGO=0'+cds_cadop02op2_chave.AsString);
Try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,498,'Frm_Ped','CADOP03');
   end;
query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADOP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP2_FABENV=0 or OP2_FABENV=1) '
                  +' and OP2_LOTSEQ=0'+cds_cadop02op2_lotseq.AsString
                  +' and OP2_CODIGO=0'+cds_cadop02op2_chave.AsString);
Try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1662,'Frm_IndEnv_Fab','CADOP02');
   end;

query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADOP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP1_FABENV=0 or OP1_FABENV=1) '
                  +' and OP1_LOTSEQ=0'+cds_cadop02op2_lotseq.AsString
                  +' and OP1_CODIGO=0'+cds_cadop02op2_chave.AsString);
Try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1676,'Frm_IndEnv_Fab','CADOP01');
   end;


cds_cadop02.Delete;
mvalidaredicao:=true;

result:=true;
end;

function TFrm_IndEnv_OPSimples.fBaixarMP(pCancelamento: Boolean): Boolean;
var
mItem: Integer;
query_sit: TQuery;
begin
strProc.First;
mItem:=0;
While not strProc.Eof do
   begin
   mItem:=mItem+1;
   fBaixarMercadorias(codemp
                 ,log_filial_padrao
                 ,mItem // item
                 ,04 // docori
                 ,codusr
                 ,0 //pcontesp
                 ,Log_TipoProdPad //ptipoprod
                 ,cds_cadop02op2_chave.AsFloat // chave
                 ,cds_cadop02op2_lotseq.AsFloat
                 ,strProc.fieldbyname('QTD').AsFloat // qtd
                 ,strProc.fieldbyname('CODPRO').AsString
                 ,iif(pcancelamento=true,'E','S')  // estoque normal
                 ,'N'  // estoque reservado
                 ,strProc.fieldbyname('LOTE').AsString
                 ,strProc.fieldbyname('DTVCTO').AsDateTime
                 ,'' // lote re
                 ,iif(pcancelamento=true,'Exclusao da ordem de produção','Ordem deProducao')  // estoque normal
                 );
   strProc.Next;
   end;
query_sit:=TQuery.Create(nil);
query_sit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP03 set OP3_SITMP=:SITMP '
                 +' where OP3_CODIGO=:CHAVE '
                 +' and OP3_LOTSEQ=:LOTSEQ '
                 +' and OP3_CODEMP=:CODEMP ');
query_sit.ParamByName('SITMP').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=cds_cadop02op2_chave.AsFloat;
query_sit.ParamByName('LOTSEQ').AsInteger  :=cds_cadop02op2_lotseq.AsInteger;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP01 set OP1_SITMP=:SITMP '
                 +' where OP1_CODIGO=:CHAVE '
                 +' and OP1_LOTSEQ=:LOTSEQ '
                 +' and OP1_CODEMP=:CODEMP ');
query_sit.ParamByName('SITMP').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=cds_cadop02op2_chave.AsFloat;
query_sit.ParamByName('LOTSEQ').AsInteger  :=cds_cadop02op2_lotseq.AsInteger;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.Close;
FreeAndNil(query_sit);

if not (cds_cadop02.State in [dsedit,dsinsert]) then
   cds_cadop02.Edit;
cds_cadop02sitmp.Value:=iif(pCancelamento=true,0,1);
cds_cadop02.Post;
result:=true;
end;


function TFrm_IndEnv_OPSimples.fEntrarAcabado(pCancelamento: Boolean): Boolean;
var
query_sit:TQuery;
mItem: Integer;
begin
mItem:=0;
if cds_cadop02op2_codpro.AsFloat>0 then
   begin
   mItem:=mItem+1;
   fBaixarMercadorias(codemp
                 ,log_filial_padrao
                 ,mItem // item
                 ,04 // docori
                 ,codusr
                 ,0 //pcontesp
                 ,Log_TipoProdPad //ptipoprod
                 ,cds_cadop02op2_chave.AsFloat // chave
                 ,cds_cadop02op2_lotseq.AsFloat
                 ,cds_cadop02op2_qtd.AsFloat // qtd
                 ,cds_cadop02op2_codpro.AsString
                 ,iif(pcancelamento=true,'S','E')  // estoque normal
                 ,'N'  // estoque reservado
                 ,cds_cadop02OP2_FAB_LOTE.AsString
                 ,cds_cadop02OP2_FAB_VCTO.AsDateTime
                 ,'' // lote re
                 ,iif(pcancelamento=false,'Exclusao da ordem de produção','Ordem deProducao')  // estoque normal
                 );
   end;



query_sit:=TQuery.Create(nil);
query_sit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP02 set OP2_SITACAB=:SITACAB '
                 +' where OP2_CODIGO=:CHAVE '
                 +' and OP2_LOTSEQ=:LOTSEQ '
                 +' and OP2_CODEMP=:CODEMP ');
query_sit.ParamByName('SITACAB').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=cds_cadop02op2_chave.AsFloat;
query_sit.ParamByName('LOTSEQ').AsInteger  :=cds_cadop02op2_lotseq.AsInteger;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;



query_sit.close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP01 set OP1_SITACAB=:SITACAB '
                 +' where OP1_CODIGO=:CHAVE '
                 +' and OP1_LOTSEQ=:LOTSEQ '
                 +' and OP1_CODEMP=:CODEMP ');
query_sit.ParamByName('SITACAB').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=cds_cadop02op2_chave.AsFloat;
query_sit.ParamByName('LOTSEQ').AsInteger  :=cds_cadop02op2_lotseq.AsInteger;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.Close;
FreeAndNil(query_sit);

if not (cds_cadop02.State in [dsedit,dsinsert]) then
   cds_cadop02.Edit;
cds_cadop02sitacab.Value:=iif(pCancelamento=true,0,1);
cds_cadop02.Post;

result:=true;
end;


function TFrm_IndEnv_OPSimples.fGerarOP: Boolean;
var
query_gravarop: TQuery;

mChaveOp: Integer;
mSeq: Integer;
mTotalPREV: Real;
mTotalREAL: Real;

mQtdPREV: Real;
mQtdREAL: Real;

begin

if (cds_cadop02op2_chave.AsFloat>0) and ( (cds_cadop02sitmp.AsInteger>0) or (cds_cadop02sitacab.AsInteger>0)) then
   begin
   MessageDlg('Ordem de Produção ja gerada chave: '+cds_cadop02op2_chave.asstring,mtWarning,[mbOk],0);
   result:=true;
   exit;
   end;

query_gravarop:=TQuery.create(nil);
query_gravarop.DatabaseName:=DM1.SG_ASSOC.DatabaseName;



if cds_cadop02op2_chave.AsFloat>0 then
   begin
   mChaveOp:=cds_cadop02op2_chave.AsInteger;
   query_gravarop.Close;
   query_gravarop.SQL.Clear;
   query_gravarop.SQL.Add('Delete from CADOP02 where '
                         +' OP2_CODEMP=:CODEMP '
                         +' and OP2_FABENV=:FABENV '
                         +' and OP2_LOTSEQ=:LOTSEQ '
                         +' and OP2_CODIGO=:CODIGO ');
   query_gravarop.ParamByName('CODEMP').AsInteger:=codemp;
   query_gravarop.ParamByName('FABENV').AsInteger:=0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger:=ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsInteger :=cds_cadop02op2_chave.AsInteger;
   try
      query_gravarop.ExecSQL;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,441,'func Erro:'+e.Message ,'CADP01');
      end;

   query_gravarop.Close;
   query_gravarop.SQL.Clear;
   query_gravarop.SQL.Add('Delete from CADOP03 where '
                         +' OP3_CODEMP=:CODEMP '
                         +' and OP3_FABENV=:FABENV '
                         +' and OP3_LOTSEQ=:LOTSEQ '
                         +' and OP3_CODIGO=:CODIGO ');
   query_gravarop.ParamByName('CODEMP').AsInteger:=codemp;
   query_gravarop.ParamByName('FABENV').AsInteger:=0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger:=ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsInteger :=cds_cadop02op2_chave.AsInteger;
   try
      query_gravarop.ExecSQL;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,441,'func Erro:'+e.Message ,'CADP01');
      end;
   end
else
   begin
   mChaveOp:=fBuscarChaveOrdemProducao;
   end;

query_gravarop.Close;
query_gravarop.SQL.Clear;
query_gravarop.SQL.Add('Insert Into CADOP02 ('
                  +'OP2_CODEMP, '
                  +'OP2_FABENV, '
                  +'OP2_LOTSEQ, '
                  +'OP2_CODIGO, '
                  +'OP2_SEQ, '
                  +'OP2_CODPRO,'
                  +'OP2_QTDPREV, '
                  +'OP2_QTDPROD, '
                  +'OP2_PU, '
                  +'OP2_FAB_CHORI,'
                  +'OP2_FAB_CODIGO,'
                  +'OP2_FAB_QTD,'
                  +'OP2_FAB_PU,'
                  +'OP2_SITACAB,'
                  +'OP2_ORIGEM,'
                  +'OP2_NUMERO,'
                  +'OP2_FAB_DTFAB,'
                  +'OP2_FAB_VCTO,'
                  +'OP2_FAB_LOTE'
                  +') values ('
                  +':CODEMP ,'
                  +':FABENV,'
                  +':LOTSEQ, '
                  +':CODIGO ,'
                  +':SEQ,'
                  +':CODPRO,' // codigo do produto
                  +':QTDPREV,' // quantidade prevista
                  +':QTDPROD,' // quantidade produzada
                  +':PU,' // preco unitario
                  +':FAB_CHORI,' // chave de origem
                  +':FAB_CODIGO,' // codigo de origem
                  +':FAB_QTD,' // quantidade de origem
                  +':FAB_PU,' // preco unitario
                  +':SITACAB,' // Situacao do produto acabado
                  +':ORIGEM,' // origem das materias primas 0-normal 1-terceiros
                  +':NUMERO, '
                  +':FAB_DTFAB,'
                  +':FAB_VCTO,'
                  +':FAB_LOTE'
                  +')');

query_gravarop.ParamByName('CODEMP').AsInteger  :=codemp;
query_gravarop.ParamByName('FABENV').AsInteger  :=0;
query_gravarop.ParamByName('LOTSEQ').AsInteger  :=ls_lotfab;
query_gravarop.ParamByName('CODIGO').AsInteger  :=mChaveOp;
query_gravarop.ParamByName('SEQ').AsInteger     :=1;
query_gravarop.ParamByName('CODPRO').AsFloat    :=cds_cadop02op2_codpro.AsFloat;  // codigo do produto
query_gravarop.ParamByName('QTDPREV').AsFloat   :=cds_cadop02op2_qtd.AsFloat;  // quantidade prevista
query_gravarop.ParamByName('QTDPROD').AsFloat   :=cds_cadop02op2_qtd.AsFloat; // quantidade produzada
query_gravarop.ParamByName('PU').AsFloat        :=cds_cadop02op2_pu.AsFloat; // preco unitario
query_gravarop.ParamByName('FAB_CHORI').AsFloat :=0; // chave de origem
query_gravarop.ParamByName('FAB_CODIGO').AsFloat:=0; // codigo de origem
query_gravarop.ParamByName('FAB_QTD').AsFloat    :=0; // quantidade de origem
query_gravarop.ParamByName('FAB_PU').asfloat    :=0;  // preco unitario
query_gravarop.ParamByName('SITACAB').asfloat   :=0; // Situacao do produto acabado
query_gravarop.ParamByName('ORIGEM').AsFloat    :=0; //  origem das materias primas 0-normal 1-terceiros
query_gravarop.ParamByName('NUMERO').AsString        :=' '; //
query_gravarop.ParamByName('FAB_DTFAB').AsDateTime   :=cds_cadop02OP2_FAB_DTFAB.AsDateTime; //
query_gravarop.ParamByName('FAB_VCTO').AsDateTime    :=cds_cadop02OP2_FAB_VCTO.AsDateTime; //
query_gravarop.ParamByName('FAB_LOTE').AsString      :=cds_cadop02OP2_FAB_LOTE.AsString; //
Try
   query_gravarop.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_gravarop,28259,'func Erro:'+e.Message ,'CADP02_LOTES');
   end;


query_gravarop.Close;
query_gravarop.SQL.Clear;
query_gravarop.SQL.Add('Insert Into CADOP03 ('
              +'OP3_CODEMP, '
              +'OP3_FABENV, '
              +'OP3_LOTSEQ, '
              +'OP3_CODIGO, '
              +'OP3_SEQ, '
              +'OP3_CODMAT,'
              +'OP3_QTDPREV, '
              +'OP3_QTDUTIL, '
              +'OP3_PU, '
              +'OP3_SITMP,'
              +'OP3_ORIGEM,'
              +'OP3_NUMERO,'
              +'OP3_LOTE, '
              +'OP3_DTVCTO,'
              +'OP3_LOTE_RE ) values ('
              +':CODEMP,'
              +':FABENV,' // materias primas utilizadas para produção
              +':LOTSEQ,'
              +':CODIGO,'
              +':SEQ,'
              +':CODMAT,'
              +':QTDPREV,'
              +':QTDUTIL,'
              +':PU,'
              +':SITMP'+',' // Situacao do produto acabado
              +':ORIGEM'+',' // origem das materias primas 0-normal 1-terceiros
              +':NUMERO,'
              +':LOTE,'
              +':DTVCTO,'
              +':LOTE_RE)');
strProc.First;
mSeq:=0;
While not strProc.Eof do
   begin
   mSeq:=mSeq+1;
   query_gravarop.Close;
   query_gravarop.ParamByName('CODEMP').AsInteger := codemp;
   query_gravarop.ParamByName('FABENV').AsInteger := 0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger := ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsFloat   := mChaveOp;
   query_gravarop.ParamByName('SEQ').AsInteger    := mSeq;
   query_gravarop.ParamByName('CODMAT').AsFloat   := strProc.fieldbyname('CODPRO').AsFloat;
   query_gravarop.ParamByName('QTDPREV').AsFloat  := strProc.fieldbyname('QTD').AsFloat;
   query_gravarop.ParamByName('QTDUTIL').AsFloat  := strProc.fieldbyname('QTD').AsFloat;
   query_gravarop.ParamByName('PU').AsFloat       := strProc.fieldbyname('op3_pu').AsFloat;
   query_gravarop.ParamByName('SITMP').AsFloat    := strProc.fieldbyname('op3_sitmp').AsFloat;
   query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
   query_gravarop.ParamByName('NUMERO').AsString  := ' ';
   query_gravarop.ParamByName('LOTE').AsString    := strProc.fieldbyname('LOTE').AsString;
   query_gravarop.ParamByName('DTVCTO').AsDateTime:= strProc.fieldbyname('DTVCTO').AsDateTime;
   query_gravarop.ParamByName('LOTE_RE').AsString := ' ';
   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,603,'func Erro:'+e.Message ,'CADP03');
      end;
   strProc.Next;
   end;




mTotalPREV:=0;
mTotalREAL:=0;
mQtdPREV  :=0;
mQtdREAL  :=0;


if fLerGenerico_query('CADOP03','sum(OP3_QTDPREV) as QTDPREV, sum(OP3_QTDUTIL) as QTDUTIL '
                               +',SUM(ROUND( (OP3_QTDPREV*OP3_PU),2) ) AS TOTALPREV '
                               +',SUM(ROUND( (OP3_QTDUTIL*OP3_PU),2) ) AS TOTALUTIL '
                               ,'OP3_CODIGO=0'+FloatToStr(mChaveOp)
                               +' and OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                               +' AND OP3_FABENV=0 ',query_consulta) then
   begin
   mTotalPREV:=query_consulta.fieldbyname('TOTALPREV').asfloat;
   mTotalREAL:=query_consulta.fieldbyname('TOTALUTIL').asfloat;
   mTotalPREV:=query_consulta.fieldbyname('QTDPREV').asfloat;
   mTotalREAL:=query_consulta.fieldbyname('QTDUTIL').asfloat;
   end;

query_gravarop.Close;
query_gravarop.SQL.Clear;


if cds_cadop02op2_chave.AsFloat>0 then
   begin
   query_gravarop.SQL.Add('Update CADOP01 set '
                       +' OP1_TMPPREV=:QTDPREV,'
                       +' OP1_TMPUTIL=:QTDREAL,'
                       +' OP1_TOTPREV=:TOTALPREV,'
                       +' OP1_TOTPROD=:TOTALPROD,'
                       +' OP1_QTDMAN = OP1_QTDMAN + 1, '

                       +' OP1_SITMP=:SITMP,'
                       +' OP1_SITACAB=:SITACAB'
                       +' where OP1_CODEMP=:CODEMP '
                       +' and OP1_FABENV=:FABENV  '
                       +' and OP1_LOTSEQ =:LOTSEQ  '
                       +' and OP1_CODIGO =:CHAVE  ');
   query_gravarop.ParamByName('QTDPREV').AsFloat := mQtdPREV;
   query_gravarop.ParamByName('QTDREAL').AsFloat := mQtdREAL;
   query_gravarop.ParamByName('TOTALPREV').AsFloat := mTotalPREV;
   query_gravarop.ParamByName('TOTALPROD').AsFloat := mTotalREAL;

   query_gravarop.ParamByName('CODEMP').AsFloat := codemp;
   query_gravarop.ParamByName('CHAVE').AsFloat := cds_cadop02op2_chave.AsFloat;
   query_gravarop.ParamByName('FABENV').AsFloat := 0;
   query_gravarop.ParamByName('SITMP').AsFloat := cds_cadop02sitmp.AsInteger;
   query_gravarop.ParamByName('SITACAB').AsFloat := cds_cadop02sitacab.AsInteger;
   query_gravarop.ParamByName('LOTSEQ').AsFloat := ls_lotfab;
   query_gravarop.ParamByName('LOTSEQ').AsFloat := ls_lotfab;
   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,664,'func Erro:'+e.Message ,'CADOP01');
      end;
   end
else
   begin
   query_gravarop.SQL.Add('Insert Into CADOP01 ('
                    +' OP1_CODEMP,'
                    +' OP1_FABENV,'
                    +' OP1_LOTSEQ,'
                    +' OP1_CODIGO,'
                    +' OP1_TMPPREV,'
                    +' OP1_TMPUTIL,'
                    +' OP1_TOTPREV,'
                    +' OP1_TOTPROD,'
                    +' OP1_STATUS,'
                    +' OP1_ORIGEM,'
                    +' OP1_SITMP, '
                    +' OP1_SITACAB, '
                    +' OP1_DATA, '
                    +' OP1_DATAPREV, '
                    +' OP1_LOTE, '
                    +' OP1_DATAVEN, '
                    +' OP1_OBS01, '
                    +' OP1_OBS02, '
                    +' OP1_OBS03, '
                    +' OP1_OBS04, '
                    +' OP1_OBS05, '
                    +' OP1_OBS06, '
                    +' OP1_OBS07, '
                    +' OP1_OBS08, '
                    +' OP1_OBS09, '
                    +' OP1_OBS10, '
                    +' OP1_NOME '
                    +',OP1_QTDMAN '
                    +',OP1_SITUACAO '

                    +' ) Values ('
                    +':CODEMP ,'
                    +':FABENV ,'
                    +':LOTSEQ, '
                    +':CHAVE, '
                    +':TMPPREV,'
                    +':TMPUTIL,'
                    +':TOTPREV,'
                    +':TOTPROD,'
                    +':STATUS,'  // status
                    +':ORIGEM,' // origem da materia prima 0-normal 1-de terceiros
                    +':SITMP, '
                    +':SITACAB,' // Situacao do produto acabado
                    +':DATA, '
                    +':DATAPREV, '
                    +':LOTE, '
                    +':DATAVEN, '
                    +':OBS01, '
                    +':OBS02, '
                    +':OBS03, '
                    +':OBS04, '
                    +':OBS05, '
                    +':OBS06, '
                    +':OBS07, '
                    +':OBS08, '
                    +':OBS09, '
                    +':OBS10, '
                    +':NOME'
                    +',:QTDMAN '
                    +',:SITUACAO '
                    +')');
   query_gravarop.ParamByName('CODEMP').AsFloat := codemp;
   query_gravarop.ParamByName('FABENV').AsFloat := 0;
   query_gravarop.ParamByName('LOTSEQ').AsFloat := ls_lotfab;
   query_gravarop.ParamByName('CHAVE').AsFloat  :=mChaveOp;

   query_gravarop.ParamByName('TMPPREV').AsFloat := mQtdPREV;
   query_gravarop.ParamByName('TMPUTIL').AsFloat := mQtdREAL;
   query_gravarop.ParamByName('TOTPREV').AsFloat := mTotalPREV;
   query_gravarop.ParamByName('TOTPROD').AsFloat := mTotalREAL;

   query_gravarop.ParamByName('STATUS').AsFloat   := 0;
   query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
   query_gravarop.ParamByName('SITMP').AsFloat    := cds_cadop02sitmp.AsInteger;
   query_gravarop.ParamByName('SITACAB').AsFloat  := cds_cadop02sitacab.AsInteger;
   query_gravarop.ParamByName('DATA').AsDateTime     := Date;
   query_gravarop.ParamByName('DATAPREV').AsDateTime := Date;
   query_gravarop.ParamByName('LOTE').AsString     := ' ';
   query_gravarop.ParamByName('DATAVEN').AsDateTime:=pdatanula;
   query_gravarop.ParamByName('OBS01').AsString    := 'PRODUCAO: '+cds_cadop02pdnome.AsString;
   query_gravarop.ParamByName('OBS02').AsString     := ' ';
   query_gravarop.ParamByName('OBS03').AsString     := ' ';
   query_gravarop.ParamByName('OBS04').AsString     := ' ';
   query_gravarop.ParamByName('OBS05').AsString     := ' ';
   query_gravarop.ParamByName('OBS06').AsString     := ' ';
   query_gravarop.ParamByName('OBS07').AsString     := ' ';
   query_gravarop.ParamByName('OBS08').AsString     := ' ';
   query_gravarop.ParamByName('OBS09').AsString     := ' ';
   query_gravarop.ParamByName('OBS10').AsString     := ' ';
   query_gravarop.ParamByName('NOME').AsString      := ' ';
   query_gravarop.ParamByName('QTDMAN').AsFloat     := 1;
   query_gravarop.ParamByName('SITUACAO').AsFloat   := 0;

   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,7667,'func Erro:'+e.Message ,'CADOP01');
      end;
   end;
mvalidaredicao:=false;
if cds_cadop02op2_chave.AsFloat=0 then
   begin
   if not (cds_cadop02.State in [dsedit,dsinsert]) then
      begin
      cds_cadop02.Edit;
      end;
   cds_cadop02op2_chave.AsFloat:=mChaveOp;
   cds_cadop02op2_lotseq.AsFloat:=ls_lotfab;
   cds_cadop02.Post;
   end;
if not (cds_cadop02.State in [dsedit,dsinsert])  then
   cds_cadop02.Edit;
if cds_cadop02sitmp.AsInteger=0 then
   fBaixarMP(false);

if cds_cadop02sitacab.AsInteger=0 then
   fEntrarAcabado(false);

if not (cds_cadop02.State in [dsedit,dsinsert]) then
   cds_cadop02.Edit;

if cds_cadop02sitacab.Value=0 then
   cds_cadop02sitacab_text.Text:='Pendente'
else if cds_cadop02sitacab.Value=1 then
   cds_cadop02sitacab_text.Text:='Entrou no Estoque'
else
   cds_cadop02sitacab_text.Text:='Indefinido';

if cds_cadop02sitmp.Value=0 then
   cds_cadop02sitmp_texto.Text:='Pendente'
else if cds_cadop02sitmp.Value=1 then
   cds_cadop02sitmp_texto.Text:='Baixou Materias Primas'
else
   cds_cadop02sitmp_texto.Text:='Indefinido';
if (cds_cadop02.State in [dsedit,dsinsert])  then
   cds_cadop02.Post;
mvalidaredicao:=true;
//lindomar
end;



procedure TFrm_IndEnv_OPSimples.edt_datiniExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)>0 then
   begin
   try
      edt_datini.date:=StrToDate(edt_datini.text);
      if fsonumero(edt_datfin.Text)>0 then
         begin
         if edt_datini.date>edt_datfin.Date then
            edt_datfin.date:=edt_datini.Date;
         end;
   except
      MessageDlg('Data '+edt_datini.Text+' é uma data invalida!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   end;
end;

procedure TFrm_IndEnv_OPSimples.edt_datfinExit(Sender: TObject);
begin
if fsonumero(edt_datfin.Text)>0 then
   begin
   try
      edt_datfin.date:=StrToDate(edt_datfin.text);
      if fsonumero(edt_datini.Text)>0 then
         begin
         if edt_datini.date>edt_datfin.Date then
            edt_datini.date:=edt_datfin.Date;
         end;
   except
      MessageDlg('Data '+edt_datfin.Text+' é uma data invalida!',mtWarning,[mbOk],0);
      edt_datfin.SetFocus;
      end;
   end;

end;

procedure TFrm_IndEnv_OPSimples.edt_chaveiniExit(Sender: TObject);
begin
edt_chaveini.Text:=fdeixanum(edt_chaveini.Text);

if fsonumero(edt_chaveini.Text)>0 then
   begin
   if fsonumero(edt_chavefin.Text)>0 then
      begin
      if fsonumero(edt_chaveini.Text)>fsonumero(edt_chavefin.Text) then
         edt_chavefin.Text:=edt_chaveini.Text;
      end;
   end;


end;

procedure TFrm_IndEnv_OPSimples.edt_chavefinExit(Sender: TObject);
begin
edt_chavefin.Text:=fdeixanum(edt_chavefin.Text);

if fsonumero(edt_chavefin.Text)>0 then
   begin
   if fsonumero(edt_chaveini.Text)>0 then
      begin
      if fsonumero(edt_chaveini.Text)>fsonumero(edt_chavefin.Text) then
         edt_chaveini.Text:=edt_chavefin.Text;
      end;
   end;

end;

procedure TFrm_IndEnv_OPSimples.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.Text);
if Trim(edt_codpro.Text)<>'' then
   begin
   if fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+edt_codpro.Text,query_consulta) then
      begin
      MessageDlg('Produto nao Cadastrado!',mtWarning,[mbOk],0);
      edt_codpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000', fsonumero(edt_codpro.Text))
                                    +' - '+query_consulta.fieldbyname('PDNOME').AsString);
      edt_codpro.text := '';
      edt_codpro.setfocus;
      end;
   end;

end;

procedure TFrm_IndEnv_OPSimples.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'_indenv_opsimples',key);
   key:=#0;
   edt_codproExit(Self);
   end;

end;

procedure TFrm_IndEnv_OPSimples.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

function TFrm_IndEnv_OPSimples.fAtualizarTabelas: boolean;
var
query_op02: TQuery;

mcampo_data: string;
begin
query_op02:=TQuery.Create(nil);
query_op02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_op02.SQL.Clear;
query_op02.SQL.Add('Select OP2_CODIGO, OP2_SEQ,OP2_LOTSEQ '
                  +',OP2_CODPRO,OP2_QTDPREV, OP2_QTDPROD '
                  +',OP2_SITACAB,OP2_ORIGEM,OP2_NUMERO,OP2_FAB_DTFAB, '
                  +'OP2_FAB_VCTO,OP2_FAB_LOTE '
                  +',OP1_SITACAB' // Situação dos Produtos Acabados 0-Pendentes 1-Entrou no Estoque
                  +',OP1_SITMP ' // Situação das Materias Primas 0-Pendentes 1-Baixada
                  +',PDNOME,PDMARCA,PDUND '
                  +' from CADOP01,CADOP02,CADPRO '
                  +' where OP2_LOTSEQ=OP1_LOTSEQ '
                  +' and OP2_CODEMP=OP1_CODEMP '
                  +' and OP2_FABENV=OP1_FABENV '
                  +' and OP2_LOTSEQ=OP1_LOTSEQ '
                  +' and OP2_CODIGO=OP1_CODIGO '
                  +' and PDCODPRO=OP2_CODPRO '
                  +' and OP1_CODEMP='+IntToStr(codemp)
                  );

mcampo_data:='OP1_DATA';
if fsonumero(edt_datini.text)>0 then
   begin
   query_op02.SQL.add(' and '+mcampo_data+' >= :DATINI ');
   query_op02.ParamByName('DATINI').Asdatetime:=edt_datini.Date;
   end;

if fsonumero(edt_datfin.text)>0 then
   begin
   query_op02.SQL.add(' and '+mcampo_data+' <= :DATFIN ');
   query_op02.ParamByName('DATFIN').Asdatetime:=edt_datfin.Date;
   end;

if fsonumero(edt_chaveini.text)>0 then
   begin
   query_op02.SQL.add(' and OP1_NUMERO >= :NUMINI ');
   query_op02.ParamByName('NUMINI').AsFloat:=fsonumero(edt_chaveini.Text);
   end;

if fsonumero(edt_chavefin.text)>0 then
   begin
   query_op02.SQL.add(' and OP1_NUMERO <= :NUMFIN ');
   query_op02.ParamByName('NUMFIN').AsFloat:=fsonumero(edt_chavefin.Text);
   end;

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   query_op02.SQL.Add(' and PDCODPRO '+mcinst2);

try
   query_op02.Open;
except on e : exception do
   begin
   query_op02.sql.savetofile('c:\sql.txt');
   result:=false;
   end;
   end;
mbloqueiochange:=true;
cds_cadop02.EmptyDataSet;
query_op02.First;
While not query_op02.Eof do
   begin
   cds_cadop02.Append;
   cds_cadop02op2_codpro.Value := query_op02.fieldbyname('OP2_CODPRO').AsFloat;
   cds_cadop02op2_qtd.Value    := query_op02.fieldbyname('OP2_QTDPREV').AsFloat;
   cds_cadop02op2_chave.Value  := query_op02.fieldbyname('OP2_CODIGO').AsFloat;
   cds_cadop02op2_lotseq.Value := query_op02.fieldbyname('OP2_LOTSEQ').AsFloat;
   cds_cadop02pdnome.Value     := query_op02.fieldbyname('PDNOME').AsString;
   cds_cadop02pdund.Value      := query_op02.fieldbyname('PDUND').AsString;
   cds_cadop02pdmarca.Value    := query_op02.fieldbyname('PDMARCA').AsString;
   cds_cadop02sitmp.Value      := query_op02.fieldbyname('OP1_SITMP').AsInteger;
   if cds_cadop02sitmp.Value=0 then
      cds_cadop02sitmp_texto.Text:='Pendente'
   else if cds_cadop02sitmp.Value=1 then
      cds_cadop02sitmp_texto.Text:='Baixou Estoque'
   else
      cds_cadop02sitmp_texto.Text:='Indefinido';
   cds_cadop02sitacab.Value    := query_op02.fieldbyname('OP1_SITACAB').AsInteger;
   if cds_cadop02sitacab.Value=0 then
      cds_cadop02sitacab_text.Text:='Pendente'
   else if cds_cadop02sitacab.Value=1 then
      cds_cadop02sitacab_text.Text:='Entrou no Estoque'
   else
      cds_cadop02sitacab_text.Text:='Indefinido';

   cds_cadop02.Post;
   query_op02.Next;
   end;
query_op02.close;
freeandnil(query_op02);
mbloqueiochange:=false;


end;


procedure TFrm_IndEnv_OPSimples.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndEnv_OPSimples.bbAtualizarClick(Sender: TObject);
begin
fAtualizarTabelas;

end;

procedure TFrm_IndEnv_OPSimples.cds_cadop02BeforeEdit(DataSet: TDataSet);
var
mobs: string;
begin
if mvalidaredicao=true then
   begin
   if (cds_cadop02sitmp.AsInteger>0) or (cds_cadop02sitacab.AsInteger>0) then
      begin
      if (cds_cadop02sitmp.AsInteger>0) and (cds_cadop02sitacab.AsInteger>0) then
          mobs:='Ja baixou as materias primas e entrou os produtos acabados'
      else if (cds_cadop02sitmp.AsInteger>0) then
          mobs:='Ja baixou as materias primas'
      else if (cds_cadop02sitacab.AsInteger>0) then
          mobs:='Entrou os proudtos acabados';
      MessageDlg('Ordem de Produção '+cds_cadop02op2_chave.asstring+', não pode ser alterada '+mobs,mtWarning,[mbOk],0);
      abort;
      end;
   end;
end;

end.
