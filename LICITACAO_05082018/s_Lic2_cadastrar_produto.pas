unit s_Lic2_cadastrar_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables;

type
  Tfrm_Lic2_cadastrar_produto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_nompro: TEdit;
    Label3: TLabel;
    edt_marca: TEdit;
    Label4: TLabel;
    edt_undpro: TEdit;
    Label5: TLabel;
    edt_codfor: TEdit;
    edt_nomfor: TEdit;
    Label6: TLabel;
    edt_codgru: TEdit;
    edt_nomgru: TEdit;
    Label7: TLabel;
    edt_codram: TEdit;
    edt_nomram: TEdit;
    Label8: TLabel;
    edt_codtip: TEdit;
    edt_nomtip: TEdit;
    Label9: TLabel;
    edt_codcon: TEdit;
    edt_nomcon: TEdit;
    gb_dados_fiscais: TGroupBox;
    Label10: TLabel;
    CB_CST_ICMS_DENTRO_ESTADO_REVENDA: TComboBox;
    Label11: TLabel;
    CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    CB_CST_ICMS_FORA_ESTADO_REVENDA: TComboBox;
    CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TComboBox;
    Label97: TLabel;
    Label100: TLabel;
    edt_PRED_ICMS_NORMAL_DENTRO_ESTADO: TEdit;
    edt_PRED_ICMS_NORMAL_FORA_ESTADO: TEdit;
    gb_csosn: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    CB_CSOSN_DENTRO_ESTADO_REVENDA: TComboBox;
    CB_CSOSN_DENTRO_ESTADO_CONSMIDOR: TComboBox;
    CB_CSOSN_FORA_ESTADO_REVENDA: TComboBox;
    CB_CSOSN_FORA_ESTADO_CONSUMIDOR: TComboBox;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    CB_CST_PISCOFINS_PARA_ENTRADA: TComboBox;
    CB_CST_PISCOFINS_PARA_SAIDA: TComboBox;
    EDT_ALIQ_PIS_ENTRADA: TEdit;
    Label106: TLabel;
    Label70: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    EDT_ALIQ_COFINS_ENTRADA: TEdit;
    EDT_ALIQ_PIS_SAIDA: TEdit;
    EDT_ALIQ_COFINS_SAIDA: TEdit;
    Label20: TLabel;
    CB_ORIGEM_PRODUTO: TComboBox;
    edt_codncm: TEdit;
    Label21: TLabel;
    CB_CEST: TComboBox;
    Label22: TLabel;
    GRAVAR: TBitBtn;
    SAIR: TBitBtn;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    edt_preco_venda: TEdit;
    Label24: TLabel;
    edt_preco_custo: TEdit;
    Query1: TQuery;
    procedure SAIRClick(Sender: TObject);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codramExit(Sender: TObject);
    procedure edt_codramKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codtipExit(Sender: TObject);
    procedure edt_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codconExit(Sender: TObject);
    procedure edt_codconKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ORIGEM_PRODUTOExit(Sender: TObject);
    procedure edt_codncmExit(Sender: TObject);
    procedure CB_CESTExit(Sender: TObject);
    procedure CB_CST_ICMS_DENTRO_ESTADO_REVENDAExit(Sender: TObject);
    procedure CB_CST_ICMS_DENTRO_ESTADO_CONSMIDORExit(Sender: TObject);
    procedure CB_CST_ICMS_FORA_ESTADO_REVENDAExit(Sender: TObject);
    procedure CB_CST_ICMS_FORA_ESTADO_CONSUMIDORExit(Sender: TObject);
    procedure CB_CSOSN_DENTRO_ESTADO_REVENDAExit(Sender: TObject);
    procedure CB_CSOSN_DENTRO_ESTADO_CONSMIDORExit(Sender: TObject);
    procedure CB_CSOSN_FORA_ESTADO_REVENDAExit(Sender: TObject);
    procedure CB_CSOSN_FORA_ESTADO_CONSUMIDORExit(Sender: TObject);
    procedure CB_CST_PISCOFINS_PARA_ENTRADAExit(Sender: TObject);
    procedure CB_CST_PISCOFINS_PARA_SAIDAExit(Sender: TObject);
    procedure edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit(Sender: TObject);
    procedure edt_PRED_ICMS_NORMAL_FORA_ESTADOExit(Sender: TObject);
    procedure EDT_ALIQ_PIS_ENTRADAExit(Sender: TObject);
    procedure EDT_ALIQ_COFINS_ENTRADAExit(Sender: TObject);
    procedure EDT_ALIQ_PIS_SAIDAExit(Sender: TObject);
    procedure EDT_ALIQ_COFINS_SAIDAExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    procedure fatualizarcest;


  public
    { Public declarations }
    mcodpro_nov: real;

    function pAcharCombo(pcombo: tcombobox;ptexto: string): integer;

  end;

var
  frm_Lic2_cadastrar_produto: Tfrm_Lic2_cadastrar_produto;

implementation

uses Func, lerarq, S_DM1, S_Ocorrencias, funcoes_especificas,
  func_excecoes;

{$R *.dfm}

procedure Tfrm_Lic2_cadastrar_produto.SAIRClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codforExit(Sender: TObject);
begin
if fsonumero(edt_codfor.Text)<>0 then
   begin
   if not flqr2('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',fdeixanum(edt_codfor.Text)) then
      begin
      verteclado(0);
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      edt_codfor.SetFocus;
      end
   else
      begin
      edt_nompro.Text:=DM1.query2.fieldbyname('FRAZAO').asstring;
      end;
   end;
end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'frm_Pro_Nov',Key);
   edt_codforExit(self);
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codgruExit(Sender: TObject);
begin
if fsonumero(edt_codgru.text)>0 then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',fdeixanum(edt_codgru.Text)) then
      begin
      verteclado(0);
      fMensagem('Grupo '+edt_codgru.Text+' não Cadastrado!',0,['0'],0);
      edt_codgru.SetFocus;
      end
   else
      begin
      edt_nomgru.Text:=DM1.Query1.fields[0].AsString;
      end;
   end;
end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codramExit(Sender: TObject);
begin
if fsonumero(edt_codram.Text)<>0 then
   begin
   if not flqr1('RNOME','R','CADRAM','N','RCODRAM',fdeixanum(edt_codram.Text)) then
      begin
      verteclado(0);
      fMensagem('Ramo não Cadastrado!',0,['0'],0);
      edt_codram.SetFocus;
      end
   else
      edt_nomram.Text:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codramKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    edt_codram.Text:=fChamaRamPro(0,'frm_Pro_Nov',Key);
    if Trim(edt_codram.Text) <> '' then
       edt_codramExit(Self);
    key:=#0;
    end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codtipExit(Sender: TObject);
begin
if fsonumero(edt_codtip.Text)>0 then
   begin
   if not flqr2('TNOME,TDESCAV','T','CADTP','N','TCODTIP',fdeixanum(edt_codtip.Text)) then
      begin
      verteclado(0);
      fMensagem('Tipo  não Cadastrado!',0,['0'],0);
      edt_codtip.SetFocus;
      end
   else
      begin
      edt_nomtip.Text:=DM1.Query2.fields[0].AsString;
      end;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codtipKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codtip.Text:=fChamaTipPro(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codtip.Text) <> 0 then
      edt_codtipExit(self);
   key:=#0;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codconExit(Sender: TObject);
begin
if fsonumero(edt_codcon.Text)>0 then
   begin
   if not flqr1('CCODCON,CNOME,CRESTCON','C','CADCON','N','CCODCON',fdeixanum(edt_codcon.Text)) then
      begin
      verteclado(0);
      fMensagem('Controle não Cadastrado!',0,['0'],0);
      edt_codcon.SetFocus;
      end
   else
      begin
      edt_nomcon.Text :=DM1.Query1.fields[1].AsString;
      end;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codconKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcon.Text:=fChamaTCon(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codcon.text) <> 0 then
      edt_codconExit(Self);
   key:=#0;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTOExit(
  Sender: TObject);
begin
if CB_ORIGEM_PRODUTO.ItemIndex<0 then
   begin
   with CB_ORIGEM_PRODUTO do ItemIndex := Items.IndexOf(CB_ORIGEM_PRODUTO.Text);
   end;
CB_ORIGEM_PRODUTO.Text:=CB_ORIGEM_PRODUTO.Items[CB_ORIGEM_PRODUTO.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_codncmExit(Sender: TObject);
begin
fatualizarcest;

end;


procedure Tfrm_Lic2_cadastrar_produto.fatualizarcest;
begin
CB_CEST.Items.clear;

if length(EDT_CODNCM.text)>7 then
   begin
   if fLerGenerico_query('CADCLATABICM_CEST,CADCLATABICM','NCMCEST_CEST,CI_CEST','NCMCEST_CODNCM(+)=CICLASSIF and CICLASSIF='+QuotedStr(EDT_CODNCM.text)+' ORDER BY  NCMCEST_CEST',query_consulta) then
      begin
      if trim(query_consulta.fieldbyname('CI_CEST').Asstring)<>'' then
         CB_CEST.Items.Add(query_consulta.fieldbyname('CI_CEST').Asstring);
      While not query_consulta.Eof do
         begin
         CB_CEST.Items.Add(query_consulta.fieldbyname('NCMCEST_CEST').Asstring);
         query_consulta.Next;
         end;
      end;
   end;

end;



procedure Tfrm_Lic2_cadastrar_produto.CB_CESTExit(Sender: TObject);
begin

if (CB_CEST.ItemIndex<0) and (trim(CB_CEST.Text)<>'') then
   begin
   with CB_CEST do
      ItemIndex := Items.IndexOf(CB_CEST.Text);
  end;
if CB_CEST.ItemIndex<0 then
   begin
   MessageDlg('CEST '+CB_CEST.Text+' é invalido para o NCM '+edt_codncm.Text,mtWarning,[mbOk],0);
   CB_CEST.Clear;
   end;

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDAExit(
  Sender: TObject);
begin
if CB_CST_ICMS_DENTRO_ESTADO_REVENDA.ItemIndex<0 then
   begin
   with CB_CST_ICMS_DENTRO_ESTADO_REVENDA do ItemIndex := Items.IndexOf(CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Text);
   end;
CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Text:=CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Items[CB_CST_ICMS_DENTRO_ESTADO_REVENDA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDORExit(
  Sender: TObject);
begin
if CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.ItemIndex<0 then
   begin
   with CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR do ItemIndex := Items.IndexOf(CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text);
   end;
CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text:=CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Items[CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.itemindex];


end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDAExit(
  Sender: TObject);
begin
if CB_CST_ICMS_FORA_ESTADO_REVENDA.ItemIndex<0 then
   begin
   with CB_CST_ICMS_FORA_ESTADO_REVENDA do ItemIndex := Items.IndexOf(CB_CST_ICMS_FORA_ESTADO_REVENDA.Text);
   end;
CB_CST_ICMS_FORA_ESTADO_REVENDA.Text:=CB_CST_ICMS_FORA_ESTADO_REVENDA.Items[CB_CST_ICMS_FORA_ESTADO_REVENDA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDORExit(
  Sender: TObject);
begin
if CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.ItemIndex<0 then
   begin
   with CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR do ItemIndex := Items.IndexOf(CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Text);
   end;
CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Text:=CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Items[CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDAExit(
  Sender: TObject);
begin
if CB_CSOSN_DENTRO_ESTADO_REVENDA.ItemIndex<0 then
   begin
   with CB_CSOSN_DENTRO_ESTADO_REVENDA do ItemIndex := Items.IndexOf(CB_CSOSN_DENTRO_ESTADO_REVENDA.Text);
   end;
CB_CSOSN_DENTRO_ESTADO_REVENDA.Text:=CB_CSOSN_DENTRO_ESTADO_REVENDA.Items[CB_CSOSN_DENTRO_ESTADO_REVENDA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDORExit(
  Sender: TObject);
begin
if CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.ItemIndex<0 then
   begin
   with CB_CSOSN_DENTRO_ESTADO_CONSMIDOR do ItemIndex := Items.IndexOf(CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.Text);
   end;
CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.Text:=CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.Items[CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDAExit(
  Sender: TObject);
begin
if CB_CSOSN_FORA_ESTADO_REVENDA.ItemIndex<0 then
   begin
   with CB_CSOSN_FORA_ESTADO_REVENDA do ItemIndex := Items.IndexOf(CB_CSOSN_FORA_ESTADO_REVENDA.Text);
   end;
CB_CSOSN_FORA_ESTADO_REVENDA.Text:=CB_CSOSN_FORA_ESTADO_REVENDA.Items[CB_CSOSN_FORA_ESTADO_REVENDA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDORExit(
  Sender: TObject);
begin
if CB_CSOSN_FORA_ESTADO_CONSUMIDOR.ItemIndex<0 then
   begin
   with CB_CSOSN_FORA_ESTADO_CONSUMIDOR do ItemIndex := Items.IndexOf(CB_CSOSN_FORA_ESTADO_CONSUMIDOR.Text);
   end;
CB_CSOSN_FORA_ESTADO_CONSUMIDOR.Text:=CB_CSOSN_FORA_ESTADO_CONSUMIDOR.Items[CB_CSOSN_FORA_ESTADO_CONSUMIDOR.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADAExit(
  Sender: TObject);
begin
if CB_CST_PISCOFINS_PARA_ENTRADA.ItemIndex<0 then
   begin
   with CB_CST_PISCOFINS_PARA_ENTRADA do ItemIndex := Items.IndexOf(CB_CST_PISCOFINS_PARA_ENTRADA.Text);
   end;
CB_CST_PISCOFINS_PARA_ENTRADA.Text:=CB_CST_PISCOFINS_PARA_ENTRADA.Items[CB_CST_PISCOFINS_PARA_ENTRADA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDAExit(
  Sender: TObject);
begin
if CB_CST_PISCOFINS_PARA_SAIDA.ItemIndex<0 then
   begin
   with CB_CST_PISCOFINS_PARA_SAIDA do ItemIndex := Items.IndexOf(CB_CST_PISCOFINS_PARA_SAIDA.Text);
   end;
CB_CST_PISCOFINS_PARA_SAIDA.Text:=CB_CST_PISCOFINS_PARA_SAIDA.Items[CB_CST_PISCOFINS_PARA_SAIDA.itemindex];

end;

procedure Tfrm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit(
  Sender: TObject);
begin
edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text:=FormatFloat(mcasas_pct, valfloat(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.text));
end;

procedure Tfrm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_FORA_ESTADOExit(
  Sender: TObject);
begin
edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text:=FormatFloat(mcasas_pct, valfloat(edt_PRED_ICMS_NORMAL_FORA_ESTADO.text));
end;

procedure Tfrm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_ENTRADAExit(
  Sender: TObject);
begin
EDT_ALIQ_PIS_ENTRADA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_PIS_ENTRADA.text));

end;

procedure Tfrm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_ENTRADAExit(
  Sender: TObject);
begin
EDT_ALIQ_COFINS_ENTRADA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_COFINS_ENTRADA.text));

end;

procedure Tfrm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_SAIDAExit(
  Sender: TObject);
begin
EDT_ALIQ_PIS_SAIDA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_PIS_SAIDA.text));

end;

procedure Tfrm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_SAIDAExit(
  Sender: TObject);
begin
EDT_ALIQ_COFINS_SAIDA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_COFINS_SAIDA.text));

end;

function Tfrm_Lic2_cadastrar_produto.pAcharCombo(pcombo: tcombobox;ptexto: string): integer;
var
x_combo: integer;
begin
result:=0;

for x_combo:=0 to pCombo.Items.Count-1 do
   begin
   if pos(ptexto,pcombo.Items[x_combo])=1 then
      begin
      result:=x_combo;
      break;
      end;
   end;
end;


procedure Tfrm_Lic2_cadastrar_produto.GRAVARClick(Sender: TObject);
var
form_ocorrencias: TFrm_Ocorrencias;
query_pro: TQuery;
   procedure fIncluirProduto;
   begin
   query_pro.close;
   query_pro.sql.clear;
   query_pro.sql.add('insert into CADPRO ('
                   +'PDNOME '
                   +',PDCODPRO '
                   +',PDMARCA '
                   +',PDUND '
                   +',PDCODFOR '
                   +',PDNOMFOR '
                   +',PDCODGRU '
                   +',PDNOMGRU '
                   +',PDCODRAM '
                   +',PDNOMRAM '
                   +',PDCODTIP '
                   +',PDNOMTIP '
                   +',PDCODCON '
                   +',PDNOMCON '
                   +',PDFIS_ORIGEM '
                   +',PDCLAS '
                   +',PDCODNCM '
                   +',PDCEST '
                   +',PDFIS_CST_ICMS_EST_REV'
                   +',PDFIS_CST_ICMS_EST_CF'
                   +',PDFIS_PRED_ICMS_EST'
                   +',PDFIS_CST_ICMS_INT_REV'
                   +',PDFIS_CST_ICMS_INT_CF'
                   +',PDFIS_PRED_ICMS_INT'
                   +',PDFIS_CSOSN_EST_REV'
                   +',PDFIS_CSOSN_EST_CF'
                   +',PDFIS_CSOSN_INT_REV'
                   +',PDFIS_CSOSN_INT_CF'
                   +',PDFIS_CST_PISCOF_ENTRADA'
                   +',PDFIS_CST_PISCOF_SAIDA'
                   +',PDFIS_PIS_ALIQ_ENTRADA '
                   +',PDFIS_PIS_ALIQ_SAIDA'
                   +',PDFIS_COFINS_ALIQ_ENTRADA '
                   +',PDFIS_COFINS_ALIQ_SAIDA'
                   +',PDNIVEL'

                   +') values ('
                   +' :PDNOME '

                   +',:PDCODPRO '
                   +',:PDMARCA '
                   +',:PDUND '
                   +',:PDCODFOR '
                   +',:PDNOMFOR '
                   +',:PDCODGRU '
                   +',:PDNOMGRU '
                   +',:PDCODRAM '
                   +',:PDNOMRAM '
                   +',:PDCODTIP '
                   +',:PDNOMTIP '
                   +',:PDCODCON '
                   +',:PDNOMCON '
                   +',:PDFIS_ORIGEM '
                   +',:PDCLAS '
                   +',:PDCODNCM '
                   +',:PDCEST '
                   +',:PDFIS_CST_ICMS_EST_REV'
                   +',:PDFIS_CST_ICMS_EST_CF'
                   +',:PDFIS_PRED_ICMS_EST'
                   +',:PDFIS_CST_ICMS_INT_REV'
                   +',:PDFIS_CST_ICMS_INT_CF'
                   +',:PDFIS_PRED_ICMS_INT'
                   +',:PDFIS_CSOSN_EST_REV'
                   +',:PDFIS_CSOSN_EST_CF'
                   +',:PDFIS_CSOSN_INT_REV'
                   +',:PDFIS_CSOSN_INT_CF'
                   +',:PDFIS_CST_PISCOF_ENTRADA'
                   +',:PDFIS_CST_PISCOF_SAIDA'
                   +',:PDFIS_PIS_ALIQ_ENTRADA '
                   +',:PDFIS_PIS_ALIQ_SAIDA'
                   +',:PDFIS_COFINS_ALIQ_ENTRADA '
                   +',:PDFIS_COFINS_ALIQ_SAIDA'
                   +',:PDNIVEL'

                   +') ');

   query_pro.ParamByName('PDNOME').AsString  := edt_nompro.Text;
   query_pro.ParamByName('PDCODPRO').AsFloat := mcodpro_nov;
   query_pro.ParamByName('PDMARCA').AsString := edt_marca.Text;
   query_pro.ParamByName('PDUND').AsString   :=edt_undpro.Text;
   query_pro.ParamByName('PDCODFOR').AsFloat :=ValFloat(edt_codfor.Text);
   query_pro.ParamByName('PDNOMFOR').AsString:=edt_nomfor.Text;
   query_pro.ParamByName('PDCODGRU').AsFloat :=ValFloat(edt_codgru.Text);
   query_pro.ParamByName('PDNOMGRU').AsString := edt_nomfor.Text;
   query_pro.ParamByName('PDCODRAM').AsFloat  :=ValFloat(edt_codram.Text);
   query_pro.ParamByName('PDNOMRAM').AsString :=edt_nomram.Text;
   query_pro.ParamByName('PDCODTIP').AsFloat  := valfloat(edt_codtip.Text);
   query_pro.ParamByName('PDNOMTIP').AsString :=edt_nomtip.Text;
   query_pro.ParamByName('PDCODCON').AsFloat  :=ValFloat(edt_codcon.Text);
   query_pro.ParamByName('PDNOMCON').AsString :=edt_nomcon.Text;
   query_pro.ParamByName('PDFIS_ORIGEM').AsInteger := CB_ORIGEM_PRODUTO.ItemIndex;
   query_pro.ParamByName('PDCLAS').AsString        := edt_codncm.Text;
   query_pro.ParamByName('PDCODNCM').AsString       := edt_codncm.Text;
   query_pro.ParamByName('PDCEST').AsString        := CB_CEST.Text;
   query_pro.ParamByName('PDFIS_CST_ICMS_EST_REV').AsString:=copy(CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Text,1,2);
   query_pro.ParamByName('PDFIS_CST_ICMS_EST_CF').AsString :=copy(CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text,1,2);
   query_pro.ParamByName('PDFIS_PRED_ICMS_EST').AsFloat    :=valfloat(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text);
   query_pro.ParamByName('PDFIS_CST_ICMS_INT_REV').asstring :=copy(CB_CST_ICMS_FORA_ESTADO_REVENDA.text,1,2);
   query_pro.ParamByName('PDFIS_CST_ICMS_INT_CF').asstring  :=copy(CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.text,1,2);
   query_pro.ParamByName('PDFIS_PRED_ICMS_INT').asfloat     :=valfloat(edt_PRED_ICMS_NORMAL_FORA_ESTADO.text);
   query_pro.ParamByName('PDFIS_CSOSN_EST_REV').AsString    :=copy(CB_CSOSN_DENTRO_ESTADO_REVENDA.text,1,3);
   query_pro.ParamByName('PDFIS_CSOSN_EST_CF').AsString     :=copy(CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.text,1,3);
   query_pro.ParamByName('PDFIS_CSOSN_INT_REV').asfloat     :=valint(copy(CB_CSOSN_FORA_ESTADO_REVENDA.text,1,3));
   query_pro.ParamByName('PDFIS_CSOSN_INT_CF').asfloat      :=valint(copy(CB_CSOSN_FORA_ESTADO_CONSUMIDOR.text,1,3));
   query_pro.ParamByName('PDFIS_CST_PISCOF_ENTRADA').asstring:=copy(CB_CST_PISCOFINS_PARA_ENTRADA.text,1,2);
   query_pro.ParamByName('PDFIS_CST_PISCOF_SAIDA').AsString :=copy(CB_CST_PISCOFINS_PARA_SAIDA.text,1,2);
   query_pro.ParamByName('PDFIS_PIS_ALIQ_ENTRADA').AsFloat  :=valfloat(EDT_ALIQ_PIS_ENTRADA.text);
   query_pro.ParamByName('PDFIS_COFINS_ALIQ_ENTRADA').AsFloat:=valfloat(EDT_ALIQ_COFINS_ENTRADA.text);
   query_pro.ParamByName('PDFIS_PIS_ALIQ_SAIDA').AsFloat    :=valfloat(EDT_ALIQ_PIS_SAIDA.text);
   query_pro.ParamByName('PDFIS_COFINS_ALIQ_SAIDA').AsFloat :=valfloat(EDT_ALIQ_COFINS_SAIDA.text);
   query_pro.ParamByName('PDNIVEL').AsString                :='04';
   try
      query_pro.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_pro,590,'_stru'+e.message,'user');
      end;
      end;

   end;

begin

Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
Form_Ocorrencias.mErros:=false;
form_ocorrencias.ListView1.Clear;




edt_nompro.Text:=trim(edt_nompro.Text);
if (length(edt_nompro.Text)<2) then
   Form_Ocorrencias.adicionaItemListView('Descrição do Produto é Obrigatorio, deve conter no minimo 10 letras!');
if (length(edt_nompro.Text)>100) then
   Form_Ocorrencias.adicionaItemListView('Descrição do Produto deve ter no maximo 100 caracteres!');

if (length(edt_undpro.Text)<1) or (length(edt_undpro.Text)>3) then
   edt_undpro.Text:='UND';

if length(trim(edt_codncm.Text))<>8 then
   Form_Ocorrencias.adicionaItemListView('O Codigo NCM do Produto '+edt_codncm.Text+' é invalido!');

if (valfloat(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text)<0) or (valfloat(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual de redução de icms normal dentro do estado '+edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text+' é invalido!');

if (valfloat(edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text)<0) or (valfloat(edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual de redução de icms normal fora do estado '+edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text+' é invalido!');

if (valfloat(EDT_ALIQ_PIS_ENTRADA.Text)<0) or (valfloat(EDT_ALIQ_PIS_ENTRADA.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual do pis para entrada  '+EDT_ALIQ_PIS_ENTRADA.Text+' é invalido!');

if (valfloat(EDT_ALIQ_PIS_SAIDA.Text)<0) or (valfloat(EDT_ALIQ_PIS_SAIDA.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual do pis para Saida  '+EDT_ALIQ_PIS_SAIDA.Text+' é invalido!');


if (valfloat(EDT_ALIQ_COFINS_ENTRADA.Text)<0) or (valfloat(EDT_ALIQ_COFINS_ENTRADA.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual do COFINS para entrada  '+EDT_ALIQ_COFINS_ENTRADA.Text+' é invalido!');

if (valfloat(EDT_ALIQ_COFINS_SAIDA.Text)<0) or (valfloat(EDT_ALIQ_COFINS_SAIDA.Text)>99) then
   Form_Ocorrencias.adicionaItemListView('O Percentual do COFINS para Saida  '+EDT_ALIQ_COFINS_SAIDA.Text+' é invalido!');

if (valfloat(edt_preco_venda.Text)<=0) or (valfloat(edt_preco_venda.Text)>999999999) then
   Form_Ocorrencias.adicionaItemListView('O Preco de Venda  '+edt_preco_venda.Text+' é invalido!');

if (valfloat(edt_preco_custo.Text)<=0) or (valfloat(edt_preco_custo.Text)>999999999) then
   Form_Ocorrencias.adicionaItemListView('O Preco de custo  '+edt_preco_custo.Text+' é invalido!');

if Form_Ocorrencias.ListView1.Items.Count>0 then
   begin
   Form_Ocorrencias.ShowModal;
   FreeAndNil(form_ocorrencias);
   exit;
   end;


query_pro:=TQuery.create(nil);
query_pro.DatabaseName:='SG_ASSOC';

While true do
   begin
   mcodpro_nov:=flBuscarCodigos(0,'CADPRO');
   if DM1.Tb_PargerPDCADPRO.Value=1 then
      mcodpro_nov:=Digito(mcodpro_nov);

   query_pro.Close;
   query_pro.Sql.Clear;
   query_pro.Sql.Add('select count(*) from CADPRO where '
                     +fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP',' and ')
                     +' PDCODPRO=0'+FloatTostr(mcodpro_nov));
   query_pro.Open;
   if query_pro.Fields[0].AsInteger<=0 then
      begin
      break;
      end;
   end;

fIncluirProduto;


query_pro.close;
freeandnil(query_pro);

close;

end;

procedure Tfrm_Lic2_cadastrar_produto.FormShow(Sender: TObject);
begin
CB_CEST.items.Clear;
CB_CEST.text:='';
end;

end.
