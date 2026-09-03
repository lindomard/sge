unit s_Lic2_GerarCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons, ExtCtrls;

type
  TFrm_Lic2_GerarCotacao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edt_chavelic: TEdit;
    Label3: TLabel;
    edt_datalic: TEdit;
    edt_nomcli: TEdit;
    Label4: TLabel;
    edt_cidadeuf: TEdit;
    Label5: TLabel;
    edt_valortotal: TEdit;
    Label6: TLabel;
    edt_qtditens: TEdit;
    Label7: TLabel;
    edt_qtdund: TEdit;
    GroupBox2: TGroupBox;
    GB_FORNECEDORES: TGroupBox;
    DBGrid_itens: TDBGrid;
    Qr_pro: TQuery;
    Qr_proLC2_CODPRO: TFloatField;
    Qr_proLC2_QTD: TFloatField;
    Qr_proLC2_UND: TStringField;
    Qr_proLC2_NOM01: TStringField;
    Qr_proLC2_MARCA: TStringField;
    Qr_proLC2_RMS: TStringField;
    Qr_proLC2_PCOAV: TFloatField;
    Qr_proLC2_PCOPZ: TFloatField;
    Qr_proLC2_DESCCOMP: TMemoField;
    Qr_proLC2_GANHOU: TStringField;
    Qr_proCODBAR: TFloatField;
    Qr_proCOTAR: TStringField;
    src_pro: TDataSource;
    cb_todos: TCheckBox;
    Qr_proLC2_ITEM: TFloatField;
    u_pro: TUpdateSQL;
    Panel1: TPanel;
    SAIR: TBitBtn;
    bbDuplicar: TBitBtn;
    Label8: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Qr_proLC2_PCOCPR: TFloatField;
    procedure cb_todosClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure Qr_proBeforePost(DataSet: TDataSet);
    procedure Qr_proAfterEdit(DataSet: TDataSet);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbDuplicarClick(Sender: TObject);
    procedure DBGrid_itensDblClick(Sender: TObject);
  private
    { Private declarations }
    mqtditens: Integer;
    mqtdselecionado: integer;
    mselecionado_ant: string;
    function  fGerarCotacao: boolean;

  public
    { Public declarations }
    mchave: integer;
    mchave_ano: integer;
    mcodemp: integer;


    procedure fLerCadLic(pMarcar: boolean);

    procedure LerdadosCabecalho;

  end;
const
   mcheched = 'v';
   muncheched = '';

var
  Frm_Lic2_GerarCotacao: TFrm_Lic2_GerarCotacao;

implementation

uses S_DM1, func_excecoes, Func, lerarq;

{$R *.dfm}

procedure TFrm_Lic2_GerarCotacao.fLerCadLic(pMarcar: boolean);

begin
Qr_pro.close;
Qr_pro.SQL.clear;
Qr_Pro.sql.add('Select LC2_CODPRO, '
              +'     LC2_QTD, '
             +'       LC2_UND,'
              +'      LC2_NOM01, '
              +'      LC2_MARCA, '
              +'      LC2_RMS, '
              +'      LC2_PCOAV, '
              +'      LC2_PCOPZ, '
              +'      LC2_DESCCOMP, '
              +'      LC2_GANHOU '
              +'     ,LC2_PCOCPR  '
              +'     ,LC2_ITEM '
              +'    , :COTAR AS COTAR '
              +'    ,CASE WHEN LC2_CODPRO>0 THEN '
              +'    (SELECT MAX(PDCODBAR) FROM CADPRO WHERE PDCODPRO=LC2_CODPRO ) '
              +'    ELSE 0 end CODBAR '
              +'  from CADLC2 where LC2_CODEMP=:CODEMP '
              +'  and LC2_CHAVE=:CHAVE '
              +'  and LC2_LOTSEQ=:CHAVE_ANO '
              +' order by LC2_ITEM ');
if pMarcar=true then
   begin
   Qr_pro.ParamByName('COTAR').AsString:=mcheched;
   mqtdselecionado:=mqtditens;
   end
else
   begin
   Qr_pro.ParamByName('COTAR').AsString:=muncheched;
   mqtdselecionado:=0;

   end;

Qr_pro.ParamByName('CODEMP').AsInteger:=mcodemp;
Qr_pro.ParamByName('CHAVE').AsInteger:=mchave;
Qr_pro.ParamByName('CHAVE_ANO').AsInteger:=mchave_ano;
try
   Qr_pro.open;
except on e : exception do
   ex_erroSql_Novo(qr_pro,104,'func Erro:'+e.Message ,'CADLC2');
   end;
end;

procedure TFrm_Lic2_GerarCotacao.cb_todosClick(Sender: TObject);
begin
fLerCadLic(cb_todos.Checked);

end;

procedure TFrm_Lic2_GerarCotacao.LerdadosCabecalho;
var
query_dados: tQuery;
begin
    mqtditens      :=0;
    mqtdselecionado:=0;

query_dados:=tQuery.create(nil);
query_dados.DatabaseName:=DM1.SG_ASSOC.Databasename;
query_dados.sql.add('SELECT LC1_NOMCLI,LC1_NOMLOC,LC1_UF,LC1_DTEMIS '
                   +',sum(LC2_QTD) AS QTDUND '
                   +',count(*) as qtditens '
                   +',sum( round( (LC2_QTD*LC2_PCOAV) ,2)) as total_lic '
                   +'from CADLC1,CADLC2 '
                   +' where LC1_CHAVE=:CHAVE '
                   +' and LC1_LOTSEQ=:CHAVE_ANO '
                   +' and LC1_CODEMP=:CODEMP '
                   +' and LC2_CHAVE=LC1_CHAVE '
                   +' and LC2_CODEMP=LC1_CODEMP '
                   +' AND LC2_LOTSEQ=LC2_LOTSEQ '
                   +' GROUP BY  LC1_NOMCLI,LC1_NOMLOC,LC1_UF,LC1_DTEMIS ');

query_dados.ParamByName('CODEMP').AsInteger:=mcodemp;
query_dados.ParamByName('CHAVE').AsInteger:=mchave;
query_dados.ParamByName('CHAVE_ANO').AsInteger:=mchave_ano;
try
   query_dados.open;
   edt_chavelic.Text:=InttosTr(mchave);
   edt_datalic.Text :=Formatdatetime(fdt2, query_dados.fieldbyname('LC1_DTEMIS').AsDateTime);
   edt_nomcli.Text  :=query_dados.fieldbyname('LC1_NOMCLI').AsString;
   edt_cidadeuf.Text  :=query_dados.fieldbyname('LC1_NOMLOC').AsString+'-'+query_dados.fieldbyname('LC1_UF').AsString;;
   edt_valortotal.Text :=Formatfloat(mcasas, query_dados.fieldbyname('total_lic').Asfloat);
   edt_qtditens.Text   :=query_dados.fieldbyname('qtditens').AsString;
   edt_qtdund.Text   :=query_dados.fieldbyname('qtdund').AsString;
   mqtditens         :=query_dados.fieldbyname('qtditens').AsInteger;

except on e : exception do
   ex_erroSql_Novo(query_dados,145,'func Erro:'+e.Message ,'CADLC1,CADLC2');
   end;
query_dados.close;
freeandnil(query_dados);
end;

procedure TFrm_Lic2_GerarCotacao.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Lic2_GerarCotacao.Qr_proBeforePost(DataSet: TDataSet);
begin
if mselecionado_ant<>Qr_proCOTAR.asstring then
   begin
   if mselecionado_ant=mcheched then
      mqtdselecionado:=mqtdselecionado-1
   else
      mqtdselecionado:=mqtdselecionado+1;
   end;


end;

procedure TFrm_Lic2_GerarCotacao.Qr_proAfterEdit(DataSet: TDataSet);
begin
    mselecionado_ant:=Qr_proCOTAR.asstring;

end;

procedure TFrm_Lic2_GerarCotacao.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      codfor.setfocus;
      end;
   end;


end;

procedure TFrm_Lic2_GerarCotacao.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      begin
      CODFORExit(self);
      end;
   CODFOR.text := '';
   key:=#0;
   end;


end;

procedure TFrm_Lic2_GerarCotacao.CODFORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';

end;

procedure TFrm_Lic2_GerarCotacao.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Lic2_GerarCotacao.bbDuplicarClick(Sender: TObject);
var
mMensagem: String;
begin
mMensagem:='';
if lbx_codfor.Items.Count<1 then
   mMensagem:=mMensagem+'Favor Selecionar pelo menos 1 fornecedor para ser cotado'+#13;
if mqtdselecionado<1 then
   mMensagem:=mMensagem+'Favor Selecionar pelo menos 1 item para ser cotado'+#13;
if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   exit;
   end;
if fGerarCotacao then
   close;

end;


function  TFrm_Lic2_GerarCotacao.fGerarCotacao: boolean;
var
query_dados: tQuery;
mchave_nova: integer;
mNumItem: Integer;
x_for: integer;
   function fRetornoarCodigoFornecedor(pItem: Integer): Real;
   var
   mpos: integer;


   begin
   mpos:=pos('-',lbx_codfor.Items[pItem]);
   if mpos>0 then
      result:=fsonumero(copy(lbx_codfor.Items[pItem],1,mpos-1))
   else
      result:=0;
   end;

   procedure pfechartudo;
   begin
   query_dados.close;
   freeandnil(query_dados);
   end;
begin
result:=false;
query_dados:=tQuery.create(nil);
query_dados.DatabaseName:=DM1.SG_ASSOC.Databasename;

query_dados.SQL.Add(' select max(NVL(CCT1CHAVE,0))+1 ');
query_dados.SQL.Add(' as CHAVE from CADCOT1 where 1=1');
query_dados.SQL.Add(' and CCT1CODEMP='+IntToStr(codemp));
query_dados.SQL.Add(' ');

try
   query_dados.Open;
   mchave_nova:=query_dados.fieldbyname('chave').asinteger;
except on e : exception do
   begin
   ex_erroSql_Novo(query_dados,321,'func Erro:'+e.Message ,'CADLC1');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;

query_dados.close;
query_dados.sql.clear;



query_dados.sql.add('Insert into CADCOT1 ('
                   +'CCT1CODEMP'
                   +',CCT1CHAVE'
                   +',CCT1LOTSEQ'
                   +',CCT1OBS'
                   +',CCT1DATA'
                   +',CCT1CASAS'
                   +') values  ('
                   +':CCT1CODEMP'
                   +',:CCT1CHAVE'
                   +',:CCT1LOTSEQ'
                   +',:CCT1OBS'
                   +',sysdate'
                   +',:CCT1CASAS'
                   +') ');
query_dados.parambyname('CCT1CODEMP').AsInteger:=codemp;
query_dados.parambyname('CCT1CHAVE').AsInteger :=mchave_nova;
query_dados.parambyname('CCT1LOTSEQ').AsInteger:=0;
query_dados.parambyname('CCT1OBS').asstring    :='Gerado a partir da licitação chave '+Inttostr(mchave)+'/'+Inttostr(mchave_ano)+'-'+Inttostr(mcodemp);
query_dados.parambyname('CCT1CASAS').AsInteger:=DM1.Tb_PargerPCASASPU.AsInteger;
try
   query_dados.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_dados,321,'func Erro:'+e.Message ,'CADLC1');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;

query_dados.Close;
query_dados.SQL.clear;
query_dados.sql.add('Insert into CADCOT2 ('
                   +'CCT2CODEMP'
                   +',CCT2CHAVE'
                   +',CCT2LOTSEQ'
                   +',CCT2CODPRO'
                   +',CCT2QTD'
                   +',CCT2OBS'
                   +',CCT2NOMPRO'
                   +',CCT2ITEM    '
                   +',CCT2UNDPRO '

                   +') values ('
                   +':CCT2CODEMP'
                   +',:CCT2CHAVE'
                   +',:CCT2LOTSEQ'
                   +',:CCT2CODPRO'
                   +',:CCT2QTD'
                   +',:CCT2OBS'
                   +',:CCT2NOMPRO'
                   +',:CCT2ITEM    '
                   +',:CCT2UNDPRO '

                   +') ');
Qr_pro.First;
mNumItem:=0;




While not Qr_pro.eof do
   begin
   if Qr_proCOTAR.AsString<>mcheched then
      begin
      Qr_pro.next;
      continue;
      end;

   mNumItem:=mNumItem+1;
   query_dados.close;
   query_dados.ParamByName('CCT2ITEM').asinteger :=mNumItem;
   query_dados.ParamByName('CCT2CODEMP').AsInteger:=codemp;
   query_dados.ParamByName('CCT2CHAVE').asinteger :=mchave_nova;
   query_dados.ParamByName('CCT2LOTSEQ').asinteger :=0;
   query_dados.ParamByName('CCT2CODPRO').AsFloat :=Qr_proLC2_CODPRO.AsFloat;
   query_dados.ParamByName('CCT2QTD').AsFloat :=Qr_proLC2_QTD.AsFloat;
   query_dados.ParamByName('CCT2OBS').AsString:='';
   query_dados.ParamByName('CCT2NOMPRO').AsString :=Qr_proLC2_NOM01.AsString;
   query_dados.ParamByName('CCT2UNDPRO').AsString :=Qr_proLC2_UND.AsString;

   try
      query_dados.ExecSQL;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_dados,401,'func Erro:'+e.Message ,'CADLC2');
      pfechartudo;
      result:=false;
      exit;
      end;
      end;
   Qr_pro.Next;
   end;

Qr_pro.First;
mNumItem:=0;

query_dados.Close;
query_dados.SQL.clear;
query_dados.sql.add('Insert into CADCOT3 ('
                   +'CCT3CODEMP'
                   +',CCT3CHAVE'
                   +',CCT3LOTSEQ'
                   +',CCT3CODFOR'
                   +',CCT3CODPRO'
                   +',CCT3PRECO'
                   +',CCT3QTD'
                   +',CCT3OBS'
                   +',CCT3PRAZO'
                   +',CCT3ITEM'
                   +') values ('
                   +' :CCT3CODEMP'
                   +',:CCT3CHAVE'
                   +',:CCT3LOTSEQ'
                   +',:CCT3CODFOR'
                   +',:CCT3CODPRO'
                   +',:CCT3PRECO'
                   +',:CCT3QTD'
                   +',:CCT3OBS'
                   +',:CCT3PRAZO'
                   +',:CCT3ITEM'
                   +') ');




While not Qr_pro.eof do
   begin
   mNumItem:=mNumItem+1;
   for x_for:=0 to lbx_codfor.Items.count-1 do
      begin
      query_dados.Close;
      query_dados.parambyname('CCT3CODEMP').AsInteger:=codemp;
      query_dados.parambyname('CCT3CHAVE').AsInteger:=mchave_nova;
      query_dados.parambyname('CCT3LOTSEQ').AsInteger:=0;
      query_dados.parambyname('CCT3CODFOR').AsFloat:=fRetornoarCodigoFornecedor(x_for);
      query_dados.parambyname('CCT3CODPRO').AsFloat  :=Qr_proLC2_CODPRO.AsFloat;
      query_dados.parambyname('CCT3PRECO').AsFloat   :=0;
      query_dados.parambyname('CCT3QTD').AsFloat     :=Qr_proLC2_QTD.AsFloat;
      query_dados.parambyname('CCT3OBS').AsString   :=' ';
      query_dados.parambyname('CCT3PRAZO').AsFloat   :=0;
      query_dados.parambyname('CCT3ITEM').AsFloat    :=mNumItem;
      try
         query_dados.ExecSQL;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_dados,476,'func Erro:'+e.Message ,'CADLC2');
         pfechartudo;
         result:=false;
         exit;
         end;
         end;
      end;
   Qr_pro.Next;
   end;
pfechartudo;
Messagedlg('Cotaçao gerada chave '+floattostr(mchave_nova),mtWarning,[mbOk],0);


end;

procedure TFrm_Lic2_GerarCotacao.DBGrid_itensDblClick(Sender: TObject);
begin
Qr_pro.Edit;
if Qr_proCOTAR.AsString=mcheched then
   Qr_proCOTAR.AsString:=muncheched
else
   Qr_proCOTAR.AsString:=mcheched;
Qr_pro.Post;



end;

end.
