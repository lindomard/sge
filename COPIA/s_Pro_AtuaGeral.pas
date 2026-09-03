unit s_Pro_AtuaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids, DB,
  DBTables;

type
  TFrm_Pro_AtuaGeral = class(TForm)
    PageControl1: TPageControl;
    tsCampos: TTabSheet;
    tsFiltros: TTabSheet;
    GroupBox1: TGroupBox;
    cb_atu_ncm: TCheckBox;
    edt_codncm: TEdit;
    gb_cest: TGroupBox;
    CB_ATU_CEST: TCheckBox;
    CB_CEST: TComboBox;
    gb_ipi: TGroupBox;
    cb_atu_ipi: TCheckBox;
    edt_ipi: TEdit;
    gb_origem_do_produto: TGroupBox;
    CB_ATU_ORIGEM: TCheckBox;
    CB_ORIGEM_PRODUTO: TComboBox;
    gb_tabicm: TGroupBox;
    CB_ATU_TABICM: TCheckBox;
    CB_TABICM: TComboBox;
    gb_lista_piscofins: TGroupBox;
    CB_ATU_LISTA_PIS_COFINS: TCheckBox;
    CB_LISTA_PIS_COFINS: TComboBox;
    GB_CST_ICMS_DENTRO_ESTADO_REVENDA: TGroupBox;
    CB_ATU_CST_ICMS_DENTRO_ESTADO_REVENDA: TCheckBox;
    CB_CST_ICMS_DENTRO_ESTADO_REVENDA: TComboBox;
    GB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TGroupBox;
    CB_ATU_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TCheckBox;
    CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TComboBox;
    GB_CST_ICMS_FORA_ESTADO_REVENDA: TGroupBox;
    CB_ATU_CST_ICMS_FORA_ESTADO_REVENDA: TCheckBox;
    CB_CST_ICMS_FORA_ESTADO_REVENDA: TComboBox;
    GB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TGroupBox;
    CB_ATU_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TCheckBox;
    CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TComboBox;
    GB_CSOSN_DENTRO_ESTADO_REVENDA: TGroupBox;
    CB_ATU_CSOSN_DENTRO_ESTADO_REVENDA: TCheckBox;
    CB_CSOSN_DENTRO_ESTADO_REVENDA: TComboBox;
    GB_CSOSN_DENTRO_ESTADO_CONSMIDOR: TGroupBox;
    CB_ATU_CSOSN_DENTRO_ESTADO_CONSUMIDOR: TCheckBox;
    CB_CSOSN_DENTRO_ESTADO_CONSUMIDOR: TComboBox;
    GB_CSOSN_FORA_ESTADO_REVENDA: TGroupBox;
    CB_ATU_CSOSN_FORA_ESTADO_REVENDA: TCheckBox;
    CB_CSOSN_FORA_ESTADO_REVENDA: TComboBox;
    GB_CSOSN_FORA_ESTADO_CONSUMIDOR: TGroupBox;
    CB_ATU_CSOSN_FORA_ESTADO_CONSUMIDOR: TCheckBox;
    CB_CSOSN_FORA_ESTADO_CONSUMIDOR: TComboBox;
    GB_CST_PISCOFINS_PARA_SAIDAS: TGroupBox;
    CB_ATU_CST_PISCOFINS_PARA_SAIDA: TCheckBox;
    CB_CST_PISCOFINS_PARA_SAIDA: TComboBox;
    GB_CST_PISCOFINS_PARA_ENTRADA: TGroupBox;
    CB_ATU_CST_PISCOFINS_PARA_ENTRADA: TCheckBox;
    CB_CST_PISCOFINS_PARA_ENTRADA: TComboBox;
    GB_ALIQ_PIS_ENTRADA: TGroupBox;
    CB_ATU_ALIQ_PIS_ENTRADA: TCheckBox;
    EDT_ALIQ_PIS_ENTRADA: TEdit;
    GB_ALIQ_COFINS_ENTRADA: TGroupBox;
    CB_ATU_ALIQ_COFINS_ENTRADA: TCheckBox;
    EDT_ALIQ_COFINS_ENTRADA: TEdit;
    GB_ALIQ_PIS_SAIDA: TGroupBox;
    CB_ATU_ALIQ_PIS_SAIDA: TCheckBox;
    EDT_ALIQ_PIS_SAIDA: TEdit;
    GB_ALIQ_COFINS_SAIDA: TGroupBox;
    CB_ATU_ALIQ_COFINS_SAIDA: TCheckBox;
    EDT_ALIQ_COFINS_SAIDA: TEdit;
    GB_PRED_ICMS_NORMAL_DENTRO_ESTADO: TGroupBox;
    CB_ATU_PRED_ICMS_NORMAL_DENTRO_ESTADO: TCheckBox;
    GB_PRED_ICMS_NORMAL_FORA_ESTADO: TGroupBox;
    CB_ATU_PRED_ICMS_NORMAL_FORA_ESTADO: TCheckBox;
    Label1: TLabel;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODPRO: TEdit;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label4: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label14: TLabel;
    CODDEP: TEdit;
    lbx_coddep: TListBox;
    OMITIR_DEP: TCheckBox;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Panel1: TPanel;
    edt_PRED_ICMS_NORMAL_DENTRO_ESTADO: TEdit;
    edt_PRED_ICMS_NORMAL_FORA_ESTADO: TEdit;
    tsItensaSeremAtuaizados: TTabSheet;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Src_Atualizacao: TDataSource;
    Qr_Atualizacao: TQuery;
    DBGrid1: TDBGrid;
    bbVisualizar: TBitBtn;
    Label7: TLabel;
    codncm: TEdit;
    lbx_codncm: TListBox;
    omitir_codncm: TCheckBox;
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODDEPExit(Sender: TObject);
    procedure CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codncmExit(Sender: TObject);
    procedure edt_ipiExit(Sender: TObject);
    procedure CB_ORIGEM_PRODUTOExit(Sender: TObject);
    procedure CB_CESTExit(Sender: TObject);
    procedure edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit(Sender: TObject);
    procedure edt_PRED_ICMS_NORMAL_FORA_ESTADOExit(Sender: TObject);
    procedure EDT_ALIQ_PIS_SAIDAExit(Sender: TObject);
    procedure GB_ALIQ_COFINS_SAIDAExit(Sender: TObject);
    procedure EDT_ALIQ_PIS_ENTRADAExit(Sender: TObject);
    procedure EDT_ALIQ_COFINS_ENTRADAExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bbVisualizarClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure codncmExit(Sender: TObject);
    procedure codncmKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codncmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    mCampos_update: TStringList;
    mCampos_condicoes: TStringList;

    procedure fatualizarcest;

    function fSimulacao: boolean;

    function fAtualizarCadpro: boolean;

  public
    { Public declarations }
  end;

var
  Frm_Pro_AtuaGeral: TFrm_Pro_AtuaGeral;

implementation

uses lerarq, Func, S_DM1, flerarq, s_lerarq_geral, S_DM6, S_DM1_ADO, Func2,
  func_excecoes;

{$R *.dfm}

procedure TFrm_Pro_AtuaGeral.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if not fLerGenerico_query('CADPRO','PDNOME,PDUND,PDCODPRO','PDCODPRO=0'+fdeixanum(CODPRO.Text),query_consulta) then
      begin
      MessageDlg('Produto '+CODPRO.Text+' não cadastrado!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',Query_consulta.fieldbyname('PDCODPRO').asfloat)
                                    +' - '+query_consulta.fieldbyname('PDNOME').asstring);
      codpro.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_Pro_AtuaGeral.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Lpreco1',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_lpreco1',key);
      CODPROExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODFORExit(Sender: TObject);
begin

CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not fLerGenerico_query('CADFOR','FRAZAO,FCODFOR','FCODFOR=0'+fdeixanum(CODFOR.Text),query_consulta) then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',query_consulta.FIELDBYNAME('FCODFOR').AsFloat)
                                    +' - '+query_consulta.fieldbyName('FRAZAO').asstring);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_Pro_AtuaGeral.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.text := fchamafor(0,'frm_lpreco',key);
   CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODTIPExit(Sender: TObject);
begin

CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      codtip.setfocus;
      end
   else
      begin
      fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end;
   end;


end;

procedure TFrm_Pro_AtuaGeral.CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_lpreco1',key);
   CODTIPExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODGRUExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      codgru.setfocus;
      end;
   end;

end;

procedure TFrm_Pro_AtuaGeral.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   CODGRUExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Pro_AtuaGeral.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   EXIT;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   codram.setfocus;
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_Pro_AtuaGeral.CODRAMKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   CODRAMExit(self);

   key:=#0;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=fdeixanum2(CODDEP.Text);
if Trim(CODDEP.Text)<>'' then
  begin
  if not flcadpro_dpto(1,0,CODDEP.Text) then
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end
  else
    begin
    lbx_coddep.Items.Add(FormatFloat('0000000', DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)
                             +' - '+DM6.Tb_Prod_DepPRODEP_NOME.AsString);
    CODDEP.text := '';
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end;
  end;

end;

procedure TFrm_Pro_AtuaGeral.CODDEPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDEP.Text:= fChamaDepto(0,'frm_LPreco1',key);
   key:=#0;
   CODDEPExit(Self);
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_coddepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_Pro_AtuaGeral.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   EXIT;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   codcon.setfocus;
   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_Pro_AtuaGeral.CODCONKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_lpreco1',key);
   CODCONExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codconKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;







procedure TFrm_Pro_AtuaGeral.fatualizarcest;
begin
CB_CEST.Items.clear;

if length(edt_codncm.text)>7 then
   begin
   if fLerGenerico_query('CADCLATABICM_CEST,CADCLATABICM','NCMCEST_CEST,CI_CEST','NCMCEST_CODNCM(+)=CICLASSIF and CICLASSIF='+QuotedStr(edt_codncm.Text )+' ORDER BY  NCMCEST_CEST',query_consulta) then
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

procedure TFrm_Pro_AtuaGeral.edt_codncmExit(Sender: TObject);
begin
edt_codncm.text:=fdeixanum(edt_codncm.Text);

if length(edt_codncm.text)>1 then
   begin
   if not fLerGenerico_query('CADCLATABICM','CICLASSIF','CICLASSIF='+QuotedStr(edt_codncm.Text ),query_consulta) then
      begin
      MessageDlg('NCM '+edt_codncm.Text+' nao cadastrado!',mtWarning,[mbOk],0);
      edt_codncm.SelectAll;
      edt_codncm.SetFocus;
      end
   else
      fatualizarcest;
   end;

end;

procedure TFrm_Pro_AtuaGeral.edt_ipiExit(Sender: TObject);
begin
edt_ipi.Text:=FormatFloat(mcasas_pct, valfloat(edt_ipi.Text));
end;

procedure TFrm_Pro_AtuaGeral.CB_ORIGEM_PRODUTOExit(Sender: TObject);
begin
 with CB_ORIGEM_PRODUTO do ItemIndex:=Items.IndexOf(CB_ORIGEM_PRODUTO.Text);
CB_ORIGEM_PRODUTO.text:=CB_ORIGEM_PRODUTO.Items.Strings[CB_ORIGEM_PRODUTO.ItemIndex];


end;

procedure TFrm_Pro_AtuaGeral.CB_CESTExit(Sender: TObject);
begin
 with CB_CEST do ItemIndex:=Items.IndexOf(CB_CEST.Text);
CB_CEST.text:=CB_CEST.Items.Strings[CB_CEST.ItemIndex];

end;

procedure TFrm_Pro_AtuaGeral.edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit(
  Sender: TObject);
begin
edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text:=FormatFloat(mcasas_pct, valfloat(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text));

end;

procedure TFrm_Pro_AtuaGeral.edt_PRED_ICMS_NORMAL_FORA_ESTADOExit(
  Sender: TObject);
begin
edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text:=FormatFloat(mcasas_pct, valfloat(edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text));

end;

procedure TFrm_Pro_AtuaGeral.EDT_ALIQ_PIS_SAIDAExit(Sender: TObject);
begin
EDT_ALIQ_PIS_SAIDA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_PIS_SAIDA.Text));

end;

procedure TFrm_Pro_AtuaGeral.GB_ALIQ_COFINS_SAIDAExit(Sender: TObject);
begin
EDT_ALIQ_cofins_SAIDA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_COFINS_SAIDA.Text));

end;

procedure TFrm_Pro_AtuaGeral.EDT_ALIQ_PIS_ENTRADAExit(Sender: TObject);
begin
EDT_ALIQ_PIS_ENTRADA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_PIS_ENTRADA.Text));

end;

procedure TFrm_Pro_AtuaGeral.EDT_ALIQ_COFINS_ENTRADAExit(Sender: TObject);
begin
EDT_ALIQ_COFINS_ENTRADA.Text:=FormatFloat(mcasas_pct, valfloat(EDT_ALIQ_COFINS_ENTRADA.Text));

end;

procedure TFrm_Pro_AtuaGeral.bbSairClick(Sender: TObject);
begin
close;
end;

function TFrm_Pro_AtuaGeral.fSimulacao:boolean;
var
mCampos: String;
mCampos_df: TStringList;
mQtdAtualizar: Integer;
mValor_novo: String;
x_cond: integer;

   procedure adicionar_campos_df(pcampos: String);
   begin
   mCampos_df.Add(pcampos);
   end;

   procedure fdisplaylabel;
   var
   x_cpo: integer;
   begin
   for x_cpo:=0 to mCampos_df.count-1 do
      begin
      Qr_Atualizacao.fieldbyname(fBuscarValor_paipo(1,mcampos_df[x_cpo])).displayLabel:=fBuscarValor_paipo(2,mcampos_df[x_cpo]);
      end;
   end;

begin
mQtdAtualizar:=0;
mCampos_df:=TStringList.Create;
mCampos_update.Clear;
mCampos_condicoes.Clear;

Qr_Atualizacao.Close;
Qr_Atualizacao.SQL.clear;
Qr_Atualizacao.SQL.Add('Select PDCODPRO,PDNOME,PDMARCA,PDUND ');
adicionar_campos_df('PDCODPRO|Código');
adicionar_campos_df('PDNOME|Descrição');
adicionar_campos_df('PDMARCA|Marca');
adicionar_campos_df('PDUND|Und');


if (cb_atu_ncm.Checked) and (trim(edt_codncm.Text)<>'') then
   begin
   mcampos:=',PDCLAS AS ANT_PDCLAS ';
   mCampos:=mCampos+','+QuotedStr(edt_codncm.Text)+' as NOV_PDCLAS ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDCLAS|Codigo NCM Anterior');
   adicionar_campos_df('NOV_PDCLAS|Codigo NCM novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDCLAS='+quotedstr(edt_codncm.Text) );
   mCampos_update.Add('PDCODNCM='+quotedstr(edt_codncm.Text) );

   end;

if (CB_ATU_CEST.Checked) and (trim(CB_CEST.Text)<>'') then
   begin
   mcampos:=',PDCEST AS ANT_PDCEST ';
   mCampos:=mCampos+','+QuotedStr(CB_CEST.Text)+' as NOV_PDCEST ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDCEST|CEST NCM Anterior');
   adicionar_campos_df('NOV_PDCEST|CEST NCM novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDCEST='+quotedstr(CB_CEST.Text) );

   end;


if (cb_atu_ipi.Checked)  then
   begin
   mcampos:=',PDIPI AS ANT_PDIPI ';
   mCampos:=mCampos+','+mudavp(edt_ipi.Text)+' as NOV_PDIPI ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDIPI|IPI anterior');
   adicionar_campos_df('NOV_PDIPI|IPI novo');
   mQtdAtualizar:=mQtdAtualizar+1;

   mCampos_update.Add('PDIPI='+mudavp(edt_ipi.text));

   end;

if (CB_ATU_ORIGEM.Checked)   then
   begin
   mcampos:=',PDFIS_ORIGEM AS ANT_PDFIS_ORIGEM ';
   mCampos:=mCampos+','+inttostr(CB_ORIGEM_PRODUTO.ItemIndex)+' as NOV_PDFIS_ORIGEM ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_ORIGEM|Origem do Produto Anterior');
   adicionar_campos_df('NOV_PDFIS_ORIGEM|Origem do Produto novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_ORIGEM='+inttostr(CB_ORIGEM_PRODUTO.ItemIndex));

   end;

if (CB_ATU_LISTA_PIS_COFINS.Checked)   then
   begin
   mcampos:=',PDLISTA AS ANT_PDLISTA ';
   mCampos:=mCampos+','+inttostr(CB_LISTA_PIS_COFINS.ItemIndex)+' as NOV_PDLISTA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDLISTA|Lista de Pis Cofins Anterior');
   adicionar_campos_df('NOV_PDLISTA|Lista de Pis Cofins novo');
   mQtdAtualizar:=mQtdAtualizar+1;

   mCampos_update.Add('PDLISTA='+Inttostr(CB_LISTA_PIS_COFINS.ItemIndex));

   end;



if (CB_ATU_PRED_ICMS_NORMAL_DENTRO_ESTADO.Checked)   then
   begin
   mcampos:=',PDFIS_PRED_ICMS_EST AS ANT_PDFIS_PRED_ICMS_EST ';
   mCampos:=mCampos+','+mudavp(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text)+' as NOV_PDFIS_PRED_ICMS_EST ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_PRED_ICMS_EST|% Redução ICMS Normal Dentro Estado Anterior');
   adicionar_campos_df('NOV_PDFIS_PRED_ICMS_EST|% Redução ICMS Normal Dentro Estado Novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_PRED_ICMS_EST='+mudavp(edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text));

   end;


if (CB_ATU_PRED_ICMS_NORMAL_FORA_ESTADO.Checked)   then
   begin
   mcampos:=',PDFIS_PRED_ICMS_INT AS ANT_PDFIS_PRED_ICMS_INT ';
   mCampos:=mCampos+','+mudavp(edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text)+' as NOV_PDFIS_PRED_ICMS_INT ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_PRED_ICMS_INT|% Redução ICMS Normal Fora do Estado Anterior');
   adicionar_campos_df('NOV_PDFIS_PRED_ICMS_INT|% Redução ICMS Normal Fora do Estado Novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_PRED_ICMS_INT='+mudavp(edt_PRED_ICMS_NORMAL_FORA_ESTADO.Text));

   end;




if (CB_ATU_TABICM.Checked)  then
   begin
   mcampos:=',PDTABICM AS ANT_PDTABICM ';
   mCampos:=mCampos+','+QuotedStr(CB_TABICM.Text)+' as NOV_PDTABICM ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDTABICM|Tabela de ICMS Anterior');
   adicionar_campos_df('NOV_PDTABICM|Tabela de ICMS novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDTABICM='+QuotedStr(CB_TABICM.Text));
   end;


if (CB_ATU_CST_ICMS_DENTRO_ESTADO_REVENDA.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Text,1,2);
   mcampos:=',PDFIS_CST_ICMS_EST_REV AS ANT_PDFIS_CST_ICMS_EST_REV ';
   mCampos:=mCampos+','+QuotedStr(mValor_novo)+' as NOV_PDFIS_CST_ICMS_EST_REV ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_ICMS_EST_REV|CST ICMS dentro do estado Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_ICMS_EST_REV|CST ICMS dentro do estado novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CST_ICMS_EST_REV='+QuotedStr(mValor_novo));

   end;


if (CB_ATU_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text,1,2);

   mcampos:=',PDFIS_CST_ICMS_EST_CF AS ANT_PDFIS_CST_ICMS_EST_CF ';
   mCampos:=mCampos+','+QuotedStr(CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text)+' as NOV_PDFIS_CST_ICMS_EST_CF ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_ICMS_EST_CF|CST ICMS para dentro do estado consumidor Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_ICMS_EST_CF|CST ICMS para dentro do estado consumidor novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CST_ICMS_EST_CF='+QuotedStr(mValor_novo));

   end;


if (CB_ATU_CST_ICMS_FORA_ESTADO_REVENDA.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_ICMS_FORA_ESTADO_REVENDA.Text,1,2);
   mcampos:=',PDFIS_CST_ICMS_INT_REV AS ANT_PDFIS_CST_ICMS_INT_REV ';
   mCampos:=mCampos+','+QuotedStr(CB_CST_ICMS_FORA_ESTADO_REVENDA.Text)+' as NOV_PDFIS_CST_ICMS_INT_REV ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_ICMS_INT_REV|CST ICMS fora do estado para Revenda Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_ICMS_INT_REV|CST ICMS fora do estado para Revenda novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CST_ICMS_INT_REV='+QuotedStr(mValor_novo));
   end;

if (CB_ATU_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Text,1,2);
   mcampos:=',PDFIS_CST_ICMS_INT_CF AS ANT_PDFIS_CST_ICMS_INT_CF ';
   mCampos:=mCampos+','+QuotedStr(CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.Text)+' as NOV_PDFIS_CST_ICMS_INT_CF ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_ICMS_INT_CF|CST ICMS fora do estado consumidor Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_ICMS_INT_CF|CST ICMS fora do estado consumidor novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CST_ICMS_INT_CF='+QuotedStr(mValor_novo));
   end;

if (CB_ATU_CSOSN_DENTRO_ESTADO_REVENDA.Checked)  then
   begin
   mValor_novo:=copy(CB_CSOSN_DENTRO_ESTADO_REVENDA.Text,1,3);
   mcampos:=',PDFIS_CSOSN_EST_REV AS ANT_PDFIS_CSOSN_EST_REV ';
   mCampos:=mCampos+','+QuotedStr(CB_CSOSN_DENTRO_ESTADO_REVENDA.Text)+' as NOV_PDFIS_CSOSN_EST_REV ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CSOSN_EST_REV|CSOSN dentro estado revenda Anterior');
   adicionar_campos_df('NOV_PDFIS_CSOSN_EST_REV|CSOSN dentro estado revenda novo');
   mCampos_update.Add('PDFIS_CSOSN_EST_REV='+QuotedStr(mValor_novo));
   mQtdAtualizar:=mQtdAtualizar+1;
   end;

if (CB_ATU_CSOSN_DENTRO_ESTADO_CONSUMIDOR.Checked)  then
   begin
   mValor_novo:=copy(CB_CSOSN_DENTRO_ESTADO_CONSUMIDOR.Text,1,3);
   mcampos:=',PDFIS_CSOSN_EST_CF AS ANT_PDFIS_CSOSN_EST_CF ';
   mCampos:=mCampos+','+QuotedStr(CB_CSOSN_DENTRO_ESTADO_CONSUMIDOR.Text)+' as NOV_PDFIS_CSOSN_EST_CF ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CSOSN_EST_CF|CSOSN dentro estado consumidor Anterior');
   adicionar_campos_df('NOV_PDFIS_CSOSN_EST_CF|CSOSN dentro estado consumidor novo');
   mCampos_update.Add('PDFIS_CSOSN_EST_CF='+QuotedStr(mValor_novo));
   mQtdAtualizar:=mQtdAtualizar+1;
   end;




if (CB_ATU_CSOSN_FORA_ESTADO_REVENDA.Checked)  then
   begin
   mValor_novo:=copy(CB_CSOSN_FORA_ESTADO_REVENDA.Text,1,3);
   mcampos:=',PDFIS_CSOSN_INT_REV AS ANT_PDFIS_CSOSN_INT_REV ';
   mCampos:=mCampos+','+QuotedStr(CB_CSOSN_FORA_ESTADO_REVENDA.Text)+' as NOV_PDFIS_CSOSN_INT_REV ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CSOSN_INT_REV|CSOSN fora estado revenda Anterior');
   adicionar_campos_df('NOV_PDFIS_CSOSN_INT_REV|CSOSN fora estado revenda novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CSOSN_INT_REV='+QuotedStr(mValor_novo));
   end;



if (CB_ATU_CSOSN_FORA_ESTADO_CONSUMIDOR.Checked)  then
   begin
   mValor_novo:=copy(CB_CSOSN_FORA_ESTADO_CONSUMIDOR.Text,1,3);
   mcampos:=',PDFIS_CSOSN_INT_CF AS ANT_PDFIS_CSOSN_INT_CF ';
   mCampos:=mCampos+','+QuotedStr(CB_CSOSN_FORA_ESTADO_CONSUMIDOR.Text)+' as NOV_PDFIS_CSOSN_INT_CF ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CSOSN_INT_CF|CSOSN fora estado revenda Anterior');
   adicionar_campos_df('NOV_PDFIS_CSOSN_INT_CF|CSOSN fora estado revenda novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CSOSN_INT_CF='+QuotedStr(mValor_novo));
   end;



if (CB_ATU_CST_PISCOFINS_PARA_ENTRADA.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_PISCOFINS_PARA_ENTRADA.Text,1,2);
   mcampos:=',PDFIS_CST_PISCOF_ENTRADA AS ANT_PDFIS_CST_PISCOF_ENTRADA ';
   mCampos:=mCampos+','+QuotedStr(CB_CST_PISCOFINS_PARA_ENTRADA.Text)+' as NOV_PDFIS_CST_PISCOF_ENTRADA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_PISCOF_ENTRADA|CST pis / cofins para entrada Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_PISCOF_ENTRADA|CST pis / cofins para entrada novo');
   mCampos_update.Add('PDFIS_CST_PISCOF_ENTRADA='+QuotedStr(mValor_novo));
   mQtdAtualizar:=mQtdAtualizar+1;
   end;


if (CB_ATU_CST_PISCOFINS_PARA_SAIDA.Checked)  then
   begin
   mValor_novo:=copy(CB_CST_PISCOFINS_PARA_SAIDA.Text,1,2);
   mcampos:=',PDFIS_CST_PISCOF_SAIDA AS ANT_PDFIS_CST_PISCOF_SAIDA ';
   mCampos:=mCampos+','+QuotedStr(CB_CST_PISCOFINS_PARA_SAIDA.Text)+' as NOV_PDFIS_CST_PISCOF_SAIDA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_CST_PISCOF_SAIDA|CST pis / cofins para SAIDA Anterior');
   adicionar_campos_df('NOV_PDFIS_CST_PISCOF_SAIDA|CST pis / cofins para SAIDA novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_CST_PISCOF_SAIDA='+QuotedStr(mValor_novo));
   end;


if (CB_ATU_ALIQ_PIS_ENTRADA.Checked)  then
   begin
   mcampos:=',PDFIS_PIS_ALIQ_ENTRADA AS ANT_PDFIS_PIS_ALIQ_ENTRADA ';
   mCampos:=mCampos+','+mudavp(edt_ALIQ_PIS_ENTRADA.Text)+' as NOV_PDFIS_PIS_ALIQ_ENTRADA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_PIS_ALIQ_ENTRADA|Aliquota PIS Entrada Anterior');
   adicionar_campos_df('NOV_PDFIS_PIS_ALIQ_ENTRADA|Aliquota PIS Entrada novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_PIS_ALIQ_ENTRADA='+mudaVP(edt_ALIQ_PIS_ENTRADA.Text));
   end;

if (CB_ATU_ALIQ_COFINS_ENTRADA.Checked)  then
   begin
   mcampos:=',PDFIS_COFINS_ALIQ_ENTRADA AS ANT_PDFIS_COFINS_ALIQ_ENTRADA ';
   mCampos:=mCampos+','+mudavp(edt_ALIQ_COFINS_ENTRADA.Text)+' as NOV_PDFIS_COFINS_ALIQ_ENTRADA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_COFINS_ALIQ_ENTRADA|Aliquota COFIN para Entrada Anterior');
   adicionar_campos_df('NOV_PDFIS_COFINS_ALIQ_ENTRADA|Aliquota COFIN para Entrada novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_COFINS_ALIQ_ENTRADA='+mudaVP(edt_ALIQ_COFINS_ENTRADA.Text));
   end;

if (CB_ATU_ALIQ_PIS_SAIDA.Checked)  then
   begin
   mcampos:=',PDFIS_PIS_ALIQ_SAIDA AS ANT_PDFIS_PIS_ALIQ_SAIDA ';
   mCampos:=mCampos+','+mudavp(edt_ALIQ_PIS_SAIDA.Text)+' as NOV_PDFIS_PIS_ALIQ_SAIDA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_PIS_ALIQ_SAIDA|Aliquota Pis para SAIDA Anterior');
   adicionar_campos_df('NOV_PDFIS_PIS_ALIQ_SAIDA|Aliquota Pis para SAIDA novo');
   mCampos_update.Add('PDFIS_PIS_ALIQ_SAIDA='+mudaVP(edt_ALIQ_PIS_SAIDA.Text));
   mQtdAtualizar:=mQtdAtualizar+1;
   end;

if (CB_ATU_ALIQ_COFINS_SAIDA.Checked)  then
   begin
   mcampos:=',PDFIS_COFINS_ALIQ_SAIDA AS ANT_PDFIS_COFINS_ALIQ_SAIDA ';
   mCampos:=mCampos+','+mudavp(edt_ALIQ_COFINS_SAIDA.Text)+' as NOV_PDFIS_COFINS_ALIQ_SAIDA ';
   Qr_Atualizacao.sql.add(mCampos);
   adicionar_campos_df('ANT_PDFIS_COFINS_ALIQ_SAIDA|Aliquota cofins para SAIDA Anterior');
   adicionar_campos_df('NOV_PDFIS_COFINS_ALIQ_SAIDA|Aliquota cofins para SAIDA novo');
   mQtdAtualizar:=mQtdAtualizar+1;
   mCampos_update.Add('PDFIS_COFINS_ALIQ_SAIDA='+mudaVP(edt_ALIQ_COFINS_SAIDA.Text));
   end;




if lbx_codfor.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODFOR|Código do Fornecedor');
   adicionar_campos_df('PDNOMFOR|Nome do Fornecedor');
   mCampos:=',PDCODFOR,PDNOMFOR ';
   Qr_Atualizacao.sql.add(mCampos);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODFOR '+mcinst2);
      end;


   end;

if lbx_codtip.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODTIP|Código do Tipo');
   adicionar_campos_df('PDNOMTIP|Nome do Tipo');
   mCampos:=',PDCODTIP,PDNOMTIP ';
   Qr_Atualizacao.sql.add(mCampos);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODTIP '+mcinst2);
      end;


   end;

if lbx_codgru.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODGRU|Código do Grupo');
   adicionar_campos_df('PDNOMGRU|Nome do Grupo');
   mCampos:=',PDCODGRU,PDNOMGRU ';
   Qr_Atualizacao.sql.add(mCampos);
   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODGRU '+mcinst2);
      end;


   end;

if lbx_codram.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODRAM|Código do Ramo');
   adicionar_campos_df('PDNOMRAM|Nome do Ramo');
   mCampos:=',PDCODRAM,PDNOMRAM ';
   Qr_Atualizacao.sql.add(mCampos);
   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODRAM '+mcinst2);
      end;

   end;





if lbx_coddep.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODDEP|Código do Departamento');
   adicionar_campos_df('PDNOMDEP|Nome do Departamento');
   mCampos:=',PDCODDEP,PDNOMDEP ';
   Qr_Atualizacao.sql.add(mCampos);
   mcinst2:=fItensListBox(0,lbx_coddep,OMITIR_DEP);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODDEP '+mcinst2);
      end;


   end;

if lbx_codcon.Items.Count>0 then
   begin
   adicionar_campos_df('PDCODCON|Código do Controle');
   adicionar_campos_df('PDNOMCON|Nome do Controle');
   mCampos:=',PDCODCON,PDNOMCON ';
   Qr_Atualizacao.sql.add(mCampos);
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODCON '+mcinst2);
      end;
   end;

if lbx_codpro.Items.Count>0 then
   begin
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCODPRO '+mcinst2);
      end;
   end;

if lbx_codncm.Items.Count>0 then
   begin
   mcinst2:=fItensListBox(1,lbx_codncm,OMITIR_CODNCM);
   if trim(mcinst2)<>'' then
      begin
      mCampos_condicoes.Add(' and PDCLAS '+mcinst2);
      end;
   end;

Qr_Atualizacao.SQL.add(' from CADPRO where 1=1 ');

for x_cond:=0 to mCampos_condicoes.Count-1 do
   begin
   Qr_Atualizacao.SQL.add(mCampos_condicoes[x_cond]);
   end;

// ex_erroSql_Novo(Qr_atualizacao,875,'SGE','CADPRO');


try
   Qr_Atualizacao.Open;
   fdisplaylabel;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_atualizacao,875,'SGE','CADPRO');
   end;
   end;

if mQtdAtualizar<1 then
   begin
   MessageDlg('Nao foi selecionado nenbum campo para atualizar!',mtInformation,[mbOk],0);
   result:=false;
   end
else if Qr_Atualizacao.IsEmpty then
   begin
   MessageDlg('Nao ha registro a ser atualizado na condicao solicitada!',mtInformation,[mbOk],0);
   result:=false;
   end
else
   result:=true;


end;
procedure TFrm_Pro_AtuaGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Pro_AtuaGeral.FormCreate(Sender: TObject);
begin
    mCampos_update   := TStringList.create;
    mCampos_condicoes:= TStringList.create;

end;

procedure TFrm_Pro_AtuaGeral.bbVisualizarClick(Sender: TObject);
begin
if not fSimulacao then
   exit;
if Qr_Atualizacao.IsEmpty=false then
   begin
   PageControl1.ActivePage:=tsItensaSeremAtuaizados;
   bbAtualizar.Enabled:=true;
   end;

end;

procedure TFrm_Pro_AtuaGeral.bbAtualizarClick(Sender: TObject);
begin
if Application.MessageBox('Quer realmente fazer a atualização no cadastro?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
if fAtualizarCadpro then
   begin
   MessageDlg('Atualização Realizada!',mtInformation,[mbOk],0);
   Qr_Atualizacao.close;
   end
else
   begin
   MessageDlg('Erro ao Atualizar!',mtError,[mbOk],0);
   end;

end;

function TFrm_Pro_AtuaGeral.fAtualizarCadpro: boolean;
var
query_exe: TQuery;
x_cpo: Integer;
mvirg: string;
begin
mvirg:='';
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_exe.SQL.add('Update cadpro set ');
for x_cpo:=0 to mCampos_update.Count-1 do
   begin
   query_exe.SQL.add(mvirg+mCampos_update[x_cpo]);
   mvirg:=',';
   end;
query_exe.SQL.Add(' where 1=1 ');

for x_cpo:=0 to mCampos_condicoes.Count-1 do
   begin
   query_exe.SQL.add(mCampos_condicoes[x_cpo]);
   end;

try
   query_exe.ExecSQL;
   fdm1StartCommit;
   MessageDlg('Concluido!',mtWarning,[mbOk],0);
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,1111,'SGE','CADPRO');
   result:=false;
   end;
   end;
query_exe.close;
freeandnil(query_exe);

end;

procedure TFrm_Pro_AtuaGeral.FormShow(Sender: TObject);
begin
Height:=559;
end;

procedure TFrm_Pro_AtuaGeral.codncmExit(Sender: TObject);
begin
codncm.Text:=fdeixanum2(codncm.Text);
if ValFloat(codncm.Text)<=0 then
   EXIT;
if fLerGenerico_query('CADCLATABICM','CICLASSIF_NOME,CICLASSIF','CICLASSIF=0'+codncm.Text,query_consulta) then
   BEGIN
   lbx_codncm.Items.Add(FormatFloat('0000000',valfloat(codncm.TEXT))
                                 +' - '+query_consulta.Fieldbyname('CICLASSIF').AsString);
   codncm.text := '';
   codncm.setfocus;
   END
else
   begin
   fmensagem('Codigo do NCM invalido!',0,['0'],0);
   codncm.SetFocus;
   end;

end;

procedure TFrm_Pro_AtuaGeral.codncmKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   codncm.Text:=fChamaNCM(0,'frm_pro_atuageral',key);
   codncmExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_AtuaGeral.lbx_codncmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codncm.ItemIndex>=0 then
      lbx_codncm.Items.Delete(lbx_codncm.ItemIndex);


end;

end.

