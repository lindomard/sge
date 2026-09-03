unit s_PrecoExclusivoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, DBTables, ExtCtrls;

type
  TFrm_PrecoExclusivoCliente = class(TForm)
    lbl_cliente: TLabel;
    gb_filtros: TGroupBox;
    Label1: TLabel;
    edt_codpro: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label4: TLabel;
    edt_codgru: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    edt_codram: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label2: TLabel;
    edt_CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label3: TLabel;
    edt_pdnome: TEdit;
    bbAtualizar: TSpeedButton;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    Qr_cadpro_pcocli: TQuery;
    u_cadpro_pcocli: TUpdateSQL;
    DBGrid1: TDBGrid;
    src_cadpro_pcocli: TDataSource;
    Qr_cadpro_pcocliPEC_PRECO: TFloatField;
    Qr_cadpro_pcocliPEC_CODPRO: TFloatField;
    Qr_cadpro_pcocliPDNOME: TStringField;
    Qr_cadpro_pcocliPDUND: TStringField;
    Qr_cadpro_pcocliPDMARCA: TStringField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    snbIncluir: TSpeedButton;
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codramExit(Sender: TObject);
    procedure edt_codramKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_CODTIPExit(Sender: TObject);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Qr_cadpro_pcocliAfterInsert(DataSet: TDataSet);
    procedure Qr_cadpro_pcocliAfterEdit(DataSet: TDataSet);
    procedure Qr_cadpro_pcocliBeforePost(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Qr_cadpro_pcocliAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure Qr_cadpro_pcocliBeforeDelete(DataSet: TDataSet);
    procedure snbIncluirClick(Sender: TObject);
    procedure edt_pdnomeChange(Sender: TObject);
  private
    { Private declarations }


    mcodpro_ant: real;


    function fGerarold_form(ptipo: Integer): Boolean;
    function fGravarPrecoExclusivo: Boolean;
    function fDeletarPrecoExclusivo: Boolean;


    procedure fTestarFiltros;


    function fIncluirProdutosInexistentes: Boolean;

  public
    { Public declarations }
    mcodcli: real;

    procedure fLerPrecos;

  end;

var
  Frm_PrecoExclusivoCliente: TFrm_PrecoExclusivoCliente;

implementation

uses Func, lerarq, S_DM1, s_lerarq_geral, func_excecoes;

{$R *.dfm}

procedure TFrm_PrecoExclusivoCliente.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.text);

if Trim(edt_codpro.Text)<>'' then
   begin
   flcadpro(1,0,0,edt_codpro.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      edt_codpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      edt_codpro.text := '';
      edt_codpro.setfocus;
      end;
   end;
fTestarFiltros;
end;

procedure TFrm_PrecoExclusivoCliente.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.text:=fChamaPro(0,'Frm_lpreco1',key);
   key:=#0;
   edt_codproExit(self);
   end;

end;

procedure TFrm_PrecoExclusivoCliente.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_PrecoExclusivoCliente.edt_codgruExit(Sender: TObject);
begin
edt_codgru.Text:=fdeixanum2(edt_codgru.text);
if Trim(edt_codgru.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',edt_CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      edt_CODGRU.SetFocus;
      exit;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codgru.text := '';
      edt_codgru.setfocus;
      end;
   end;
fTestarFiltros;   
end;

procedure TFrm_PrecoExclusivoCliente.edt_codgruKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   if valfloat(edt_CODGRU.Text)<>0 then
      begin
      edt_codgruExit(self);
      end;
   key:=#0;
   end;

end;

procedure TFrm_PrecoExclusivoCliente.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_PrecoExclusivoCliente.edt_codramExit(Sender: TObject);
begin
edt_CODRAM.Text:=fdeixanum2(edt_CODRAM.Text);
if ValFloat(edt_CODRAM.Text)<=0 then
   EXIT;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(edt_CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   edt_codram.text := '';
   edt_codram.setfocus;
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   edt_CODRAM.SetFocus;
   end;
fTestarFiltros;
end;

procedure TFrm_PrecoExclusivoCliente.edt_codramKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(edt_CODRAM.Text)<>0 then
      edt_codramExit(self);
   key:=#0;
   end;


end;

procedure TFrm_PrecoExclusivoCliente.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_PrecoExclusivoCliente.edt_CODTIPExit(Sender: TObject);
begin
edt_CODTIP.Text:=fdeixanum2(edt_CODTIP.Text);
if trim(edt_codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(edt_CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      edt_codtip.text := '';
      edt_CODTIP.SetFocus;
      end
   else
      begin
      fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
      edt_CODTIP.SetFocus;
      end;
   end;
fTestarFiltros;
end;

procedure TFrm_PrecoExclusivoCliente.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_PrecoExclusivoCliente.edt_CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODTIP.Text:=fChamaTipPro(0,'frm_lpreco1',key);
   if valfloat(edt_CODTIP.Text)<>0 then
      begin
      edt_CODTIPExit(self);
      end;
   key:=#0;
   end;

end;
procedure TFrm_PrecoExclusivoCliente.fLerPrecos;
var
mcomando_sql: string;
begin

Qr_cadpro_pcocli.close;
Qr_cadpro_pcocli.sql.clear;
Qr_cadpro_pcocli.sql.add('select PEC_CODPRO,PDNOME,PDUND,PDMARCA,PEC_PRECO from CADPRO_PCOCLI,CADPRO   '
                        +' WHERE PDCODPRO=PEC_CODPRO '
                        +' and PDCODEMP=PEC_CODEMP '
                        +' AND PEC_CODEMP='+Inttostr(codemp)
                        +' and PEC_CODCLI='+floattostr(mcodcli));
mcomando_sql:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcomando_sql)<>'' then
   Qr_cadpro_pcocli.SQL.Add(' and  PEC_CODPRO '+mcomando_sql);

mcomando_sql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcomando_sql)<>'' then
   Qr_cadpro_pcocli.SQL.Add(' and  PDCODGRU '+mcomando_sql);


mcomando_sql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcomando_sql)<>'' then
   Qr_cadpro_pcocli.SQL.Add(' and  PDCODRAM '+mcomando_sql);


mcomando_sql:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcomando_sql)<>'' then
   Qr_cadpro_pcocli.SQL.Add(' and  PDCODTIP '+mcomando_sql);
if trim(edt_pdnome.Text)<>'' then
   begin
   Qr_cadpro_pcocli.SQL.add(' and PDNOME like :NOME ');
   Qr_cadpro_pcocli.ParamByName('NOME').AsString := edt_pdnome.Text+'%';
   end;
try
   Qr_cadpro_pcocli.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_cadpro_pcocli,289,'SGE','CADPRO_PCOCLI');
   end;
   end;


end;

procedure TFrm_PrecoExclusivoCliente.bbAtualizarClick(Sender: TObject);
begin
fLerPrecos;

end;

procedure TFrm_PrecoExclusivoCliente.Qr_cadpro_pcocliAfterInsert(
  DataSet: TDataSet);
begin
    mcodpro_ant:=0;
end;

procedure TFrm_PrecoExclusivoCliente.Qr_cadpro_pcocliAfterEdit(
  DataSet: TDataSet);
begin
    mcodpro_ant:=Qr_cadpro_pcocliPEC_CODPRO.AsFloat;
end;

procedure TFrm_PrecoExclusivoCliente.Qr_cadpro_pcocliBeforePost(
  DataSet: TDataSet);
begin
if trim(Qr_cadpro_pcocliPDNOME.AsString)='' then
   begin
   Qr_cadpro_pcocli.Cancel;
   abort;
   exit;
   end;
if Qr_cadpro_pcocliPEC_PRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid1.SelectedField:=Qr_cadpro_pcocliPEC_PRECO;
   DBGrid1.SetFocus;
   exit;
   end;
if Qr_cadpro_pcocliPEC_CODPRO.AsFloat<>mcodpro_ant then
   begin
    if fLerGenerico_query('CADPRO_PCOCLI','PEC_PRECO','PEC_CODPRO=0'+Qr_cadpro_pcocliPEC_CODPRO.AsString+' and PEC_CODEMP=0'+Inttostr(codemp) ,query_consulta) then
       begin
       if Application.MessageBox(pchar('O Produto '+Qr_cadpro_pcocliPDNOME.AsString+' ja esta cadastrado com o valor de r$ '
            +formatfloat(mcasaspu, query_consulta.fieldbyname('PEC_PRECO').AsFloat)+' Quer sobrepor?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
          begin
          Qr_cadpro_pcocli.Cancel;
          DBGrid1.SelectedField:=Qr_cadpro_pcocliPEC_CODPRO;
          DBGrid1.SetFocus;
          abort;
          exit;
          end;
       end;
   end;
if mcodpro_ant<>0 then
   fGerarold_form(8);


end;

procedure TFrm_PrecoExclusivoCliente.DBGrid1ColExit(Sender: TObject);
begin
if Qr_cadpro_pcocli.State in [dsedit,dsinsert] then
   begin
   if DBGrid1.SelectedField=Qr_cadpro_pcocliPEC_CODPRO then
      begin
      if Qr_cadpro_pcocliPEC_CODPRO.AsFloat>0 then
         begin
         if not fLerGenerico_query('CADPRO','PDNOME,PDUND,PDPRECO1,PDMARCA','PDCODPRO=0'+Qr_cadpro_pcocliPEC_CODPRO.AsString,query_consulta) then
            begin
            MessageDlg('Codigo '+Qr_cadpro_pcocliPEC_CODPRO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
            DBGrid1.SelectedField:=Qr_cadpro_pcocliPEC_CODPRO;
            Qr_cadpro_pcocliPEC_CODPRO.AsFloat:=0;
            abort;
            exit;
            end
         else
            begin
            Qr_cadpro_pcocliPEC_PRECO.AsFloat:=query_consulta.fieldbyname('PDPRECO1').asfloat;
            Qr_cadpro_pcocliPDNOME.AsString  :=query_consulta.fieldbyname('PDNOME').AsString;
            Qr_cadpro_pcocliPDMARCA.AsString :=query_consulta.fieldbyname('PDMARCA').AsString;
            Qr_cadpro_pcocliPDUND.AsString   :=query_consulta.fieldbyname('PDUND').AsString;
            end;
         end;
      end;
   end;
end;

procedure TFrm_PrecoExclusivoCliente.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['0'..'9']) and
   (DBGrid1.SelectedField=Qr_cadpro_pcocliPEC_CODPRO) and
   (Qr_cadpro_pcocli.State in [dsBrowse]) then
   begin
   if Qr_cadpro_pcocliPEC_CODPRO.IsNull then
      begin
      Qr_cadpro_pcocli.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid1.SelectedField=Qr_cadpro_pcocliPEC_CODPRO) then
   begin
   if not (Qr_cadpro_pcocli.State in [dsEdit,dsInsert]) then
      begin
      if Qr_cadpro_pcocliPEC_CODPRO.IsNull then
         Qr_cadpro_pcocli.Append
      else
         Qr_cadpro_pcocli.Edit;
      end;
   Qr_cadpro_pcocliPEC_CODPRO.AsString:=fChamaPesqPro(0,'_venda',key);
   key:=#0;
   end;

end;

procedure TFrm_PrecoExclusivoCliente.SpeedButton1Click(Sender: TObject);
begin
if Qr_cadpro_pcocli.State in [dsinsert] then
   begin
   Qr_cadpro_pcocli.Cancel;
   end
else if not Qr_cadpro_pcocliPEC_CODPRO.IsNull then
   begin
   if Application.MessageBox(pchar('quer realmente excluir o item '+Qr_cadpro_pcocliPDNOME.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      Qr_cadpro_pcocli.Delete;
      end;
   end;
end;


function TFrm_PrecoExclusivoCliente.fGravarPrecoExclusivo: Boolean;
var

mselect_campos: string;
mupdate_campos: string;
minsert_campos: string;
minsert_values: string;
minsert_condicoes: string;

mtabela: string;
begin
mtabela:='CADPRO_PCOCLI';
minsert_condicoes:=' T1.PEC_CODEMP = SS.PEC_CODEMP and T1.PEC_CODPRO = SS.PEC_CODPRO  and  T1.PEC_CODCLI = SS.PEC_CODCLI';

minsert_campos:='pec_codemp, pec_codcli, pec_codpro, pec_preco, pec_dathor_inc,pec_codusr_inc, pec_nomusr_inc';
minsert_values:='ss.pec_codemp, ss.pec_codcli, ss.pec_codpro, ss.pec_preco, ss.pec_dathor_inc,ss.pec_codusr_inc, ss.pec_nomusr_inc';

mupdate_campos:='t1.pec_codcli=ss.pec_codcli,  t1.pec_preco=ss.pec_preco ';
mselect_campos:='Select '+inttostr(codemp)+' as pec_codemp, '
               +floattostr(mcodcli)+' as  pec_codcli,'
               +Qr_cadpro_pcocliPEC_CODPRO.AsString+' as  pec_codpro, '
               +mudavp(Qr_cadpro_pcocliPEC_PRECO.AsString)+' as pec_preco, '
               +' sysdate as pec_dathor_inc, '
               +inttostr(codusr)+' as pec_codusr_inc ,'
               +QuotedStr(nomusr)+' as  pec_nomusr_inc '
               +' from dual ';


fIncluirDadosnoBanco_String(mtabela,minsert_condicoes,
                    'INSERT ('+minsert_campos+') values ('+minsert_values+')'
                    ,'UPDATE SET  '+mupdate_campos
                    , mselect_campos,'precosexclusivocliente485');




end;




function TFrm_PrecoExclusivoCliente.fDeletarPrecoExclusivo: Boolean;
var


mexcluir_comando: string;
mMensagem: String;
begin
mexcluir_comando:='Delete from CADPRO_PCOCLI where PEC_CODEMP='+Inttostr(codemp)
                 +' and PEC_CODPRO='+Qr_cadpro_pcocliPEC_CODPRO.AsString;

if not fExecutarComandoSQL(true,mexcluir_comando,mmensagem,508) then

   begin
   MessageDlg('Erro o excluir item '+mMensagem,mtWarning,[mbOK],0);
   exit;
   end;


end;


function TFrm_PrecoExclusivoCliente.fGerarold_form(ptipo: Integer): Boolean;
var
mCondicao_old: String;
mChave_Old: Integer;

begin

mCondicao_old:=' where PEC_CODEMP='+Inttostr(codemp)
               +' and PEC_CODPRO='+Qr_cadpro_pcocliPEC_CODPRO.AsString;

mChave_Old:=fGerarTabelas_Old_NOVO(ptipo //status
               ,0 //codigo novo valor chave
               ,'PEC_CODNOV' //nome do campo do novo valor (chave)
               ,'PEC_DATHOR_EVE' // nome do campo data e hora do evento
               ,'PEC_CODUSR_EVE' // nome do campo do usuario
               ,'PEC_NOMUSR_EVE' // nome do campo do usuario
               ,'PEC_STATUS_EVE' // nome do campo de status
               ,'CADPRO_PCOCLI' // nome da tabela
               ,mCondicao_old);
result:=true;

end;
procedure TFrm_PrecoExclusivoCliente.Qr_cadpro_pcocliAfterPost(
  DataSet: TDataSet);
begin
fGravarPrecoExclusivo;

end;

procedure TFrm_PrecoExclusivoCliente.FormCreate(Sender: TObject);
begin
Qr_cadpro_pcocliPEC_PRECO.DisplayFormat:=mcasaspu;
end;

procedure TFrm_PrecoExclusivoCliente.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PrecoExclusivoCliente.Qr_cadpro_pcocliBeforeDelete(
  DataSet: TDataSet);
begin
fDeletarPrecoExclusivo;
end;

procedure TFrm_PrecoExclusivoCliente.snbIncluirClick(Sender: TObject);
begin
if application.MessageBox(pchar('Quer realmente incluir os produtos que nao existem de acordo com os filtros acima?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
fIncluirProdutosInexistentes;
end;


procedure TFrm_PrecoExclusivoCliente.fTestarFiltros;
begin
snbIncluir.Enabled:=(lbx_codpro.Count+lbx_codgru.Count
                    +lbx_codram.Count+lbx_codtip.Count+length(edt_pdnome.text))>0;

end;

procedure TFrm_PrecoExclusivoCliente.edt_pdnomeChange(Sender: TObject);
begin
fTestarFiltros;
end;






function TFrm_PrecoExclusivoCliente.fIncluirProdutosInexistentes: Boolean;
var

mselect_campos: string;
mupdate_campos: string;
minsert_campos: string;
minsert_values: string;
minsert_condicoes: string;

mtabela: string;

mComando_Sql: String;
mFiltros: String;
begin
mtabela:='CADPRO_PCOCLI';
minsert_condicoes:=' T1.PEC_CODEMP = SS.PEC_CODEMP and T1.PEC_CODPRO = SS.PEC_CODPRO  and  T1.PEC_CODCLI = SS.PEC_CODCLI';
minsert_campos:='pec_codemp, pec_codcli, pec_codpro, pec_preco, pec_dathor_inc,pec_codusr_inc, pec_nomusr_inc';
minsert_values:='ss.pec_codemp, ss.pec_codcli, ss.pec_codpro, ss.pec_preco, ss.pec_dathor_inc,ss.pec_codusr_inc, ss.pec_nomusr_inc';

mupdate_campos:='t1.pec_codcli=ss.pec_codcli,  t1.pec_preco=ss.pec_preco ';
mselect_campos:='Select '+inttostr(codemp)+' as pec_codemp, '
               +floattostr(mcodcli)+' as  pec_codcli,'
               +'PDCODPRO as  pec_codpro, '
               +'PDPRECO1 as pec_preco, '
               +' sysdate as pec_dathor_inc, '
               +inttostr(codusr)+' as pec_codusr_inc ,'
               +QuotedStr(nomusr)+' as  pec_nomusr_inc '
               +' from CADPRO where 1 = 1 ';


mFiltros:='';

mcomando_sql:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcomando_sql)<>'' then
   mFiltros:=mFiltros+' and  PEC_CODPRO '+mcomando_sql;

mcomando_sql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcomando_sql)<>'' then
   mFiltros:=mFiltros+' and  PDCODGRU '+mcomando_sql;


mcomando_sql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcomando_sql)<>'' then
   mFiltros:=mFiltros+' and  PDCODRAM '+mcomando_sql;


mcomando_sql:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcomando_sql)<>'' then
   mFiltros:=mFiltros+' and  PDCODTIP '+mcomando_sql;
if trim(edt_pdnome.Text)<>'' then
   begin
   mFiltros:=mFiltros+' and PDNOME like '+QuotedStr(edt_pdnome.Text+'%');
   end;

mselect_campos:=mselect_campos+mFiltros;
   
mupdate_campos:='UPDATE SET  '+mupdate_campos;
mupdate_campos:='';

fIncluirDadosnoBanco_String(mtabela,minsert_condicoes,
                    'INSERT ('+minsert_campos+') values ('+minsert_values+')'
                    ,mupdate_campos
                    , mselect_campos,'precosexclusivocliente641');

bbAtualizarClick(self);


end;


end.
