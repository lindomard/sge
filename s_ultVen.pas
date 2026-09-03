unit s_ultVen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,db,dbtables,func,S_Pro,lerarq, Mask, Buttons,S_For,
  Grids, DBGrids,s_dm2, RLReport, S_SelEmp, RLFilters, RLXLSFilter,s_lerarq_geral,
  ComCtrls, CheckLst, ExtCtrls;

type
  TFrm_UltVen = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    rl_prod_comp: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rl_emp: TRLLabel;
    rl_data: TRLLabel;
    rl_fornecedores: TRLLabel;
    rl_produtos: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    rl_nomepro: TRLLabel;
    rl_dataped: TRLLabel;
    rl_codfor: TRLLabel;
    rl_razaofor: TRLLabel;
    rl_precouni: TRLLabel;
    rl_qtd: TRLLabel;
    rl_valtot: TRLLabel;
    rl_chaveped: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    Qr_UltVen: TQuery;
    Src_UltVen: TDataSource;
    rl_desc: TRLLabel;
    Qr_UltVenP1CHAVE: TFloatField;
    Qr_UltVenMAXP1CODCLI: TFloatField;
    Qr_UltVenMAXP1CODVEN: TFloatField;
    Qr_UltVenMAXP2LOTE: TStringField;
    Qr_UltVenMAXPDNOME: TStringField;
    Qr_UltVenMAIOR_PCOTAB: TFloatField;
    Qr_UltVenSOMADO_PCOTAB: TFloatField;
    Qr_UltVenMAIOR_QTD: TFloatField;
    Qr_UltVenSOMADO_QTD: TFloatField;
    Qr_UltVenMAIOR_PRECO: TFloatField;
    Qr_UltVenSOMADO_PRECO: TFloatField;
    Qr_UltVenMAIOR_TOTDES: TFloatField;
    Qr_UltVenSOMADO_TOTDES: TFloatField;
    Qr_UltVenMAIOR_DESCRAT: TFloatField;
    Qr_UltVenSOMADO_DESCRAT: TFloatField;
    Qr_UltVenMAIOR_TOTLIQ: TFloatField;
    Qr_UltVenSOMADO_TOTLIQ: TFloatField;
    Qr_UltVendesc_total: TFloatField;
    Qr_UltVenvalor_total: TFloatField;
    Qr_UltVennome_pro: TStringField;
    Qr_UltVennome_cli: TStringField;
    Qr_UltVenMAXP1FORMACE: TFloatField;
    Qr_UltVenpco_uni: TFloatField;
    Qr_UltVenqtd_uni: TFloatField;
    Qr_UltVenP2CODPRO: TFloatField;
    rl_lote: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    rl_Totqtd: TRLLabel;
    rl_Totvaltot: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    Qr_UltVenP1DATAP: TDateTimeField;
    Qr_UltVenP1DATDOC: TDateTimeField;
    lbl_P1DATDOC: TRLLabel;
    edt_P1DATDOC: TRLDBText;
    Qr_UltVenP1NUMNF: TFloatField;
    Qr_UltVenPDMARCA: TStringField;
    Qr_UltVenPDUND: TStringField;
    Qr_UltVenPDREFER: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    CODCLI: TEdit;
    nomcli: TEdit;
    UND: TEdit;
    CB_CONFIRMADAS: TCheckBox;
    bb_imprel: TBitBtn;
    bb_exportar: TBitBtn;
    edt_redcli: TEdit;
    edt_nomredcli: TEdit;
    cb_tipo_data: TComboBox;
    tsFiltros: TTabSheet;
    Panel1: TPanel;
    RG_TIPOPED: TCheckListBox;
    bbSalvarPadrao: TBitBtn;
    Label6: TLabel;
    cb_ordem: TComboBox;
    sbn_padrao_leitor: TSpeedButton;
    Label11: TLabel;
    MARCA: TEdit;
    lbx_marca: TListBox;
    OMITIR_MAR: TCheckBox;
    procedure bbAplicarClick(Sender: TObject);
    procedure bb_imprelClick(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_UltVenCalcFields(DataSet: TDataSet);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bb_exportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rl_prod_compBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_redcliExit(Sender: TObject);
    procedure edt_redcliKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure sbn_padrao_leitorClick(Sender: TObject);
    procedure MARCAExit(Sender: TObject);
    procedure lbx_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    { Private declarations }

    procedure fGravarTipoPedidosPadrao;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

const
ordem_apresentacao :array[0..4] of string = (
 'P1DATAP DESC, P1CHAVE DESC, MAX(PDNOME) DESC '
 ,'P1DATDOC DESC, P1CHAVE DESC, MAX(PDNOME) DESC '
 ,'P1DATAP, P1CHAVE, MAX(PDNOME) '
 ,'P1DATDOC, P1CHAVE, MAX(PDNOME) '
 ,'MAX(PDNOME),P1CHAVE  '
 );
  
var
  Frm_UltVen: TFrm_UltVen;
  mTotQtd, mTotVlr: Real;
implementation

uses uExport,  S_Login_Usuario, S_DM4, S_ent;

{$R *.dfm}

procedure TFrm_UltVen.bbAplicarClick(Sender: TObject);
var
  error:string;
    mtipo_data: string;

begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if bbSair.Focused then
   exit;

if cb_tipo_data.text='Nota' then
   mtipo_data:='P1DATDOC'
else
   mtipo_data:='P1DATAP';

CODPRO.Text:=fdeixanum2(CODPRO.Text);
if trim(CODPRO.text)<>'' then
   begin
   if not fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+Trim(CODPRO.Text),query_consulta) then
      begin
     fmensagem('Produto não cadastrado!',0,['0'],0);
     CODPRO.setfocus;
     exit;
     end
  else
     begin
     NOMPRO.Text:=query_consulta.fieldbyname('PDNOME').Asstring;
     UND.Text:=query_consulta.fieldbyname('PDUND').Asstring;
     UND.Text   :=DM1.Tb_ProPDUND.Value;
     end
  end
else if (Trim(CODPRO.Text)='') then
  begin
  NOMPRO.Text:='***Todos os Produtos Cadastrados';
  UND.Text   :='';
  end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
//fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
//la_instrucao:=la_instrucao+' and ';
fInnerJoin4(0,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE'
                   ,'P2ORDEM','P1ORDEM');




la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_UltVen.Close;
Qr_UltVen.SQL.Clear;
Qr_UltVen.SQL.Add(' Select ');
Qr_UltVen.SQL.Add('       P1CHAVE, max(p1formace), max(P1CODCLI), max(p1codven), max(P1DATAP)  as P1DATAP, max(P1DATDOC) as P1DATDOC , max(P1NUMNF) as P1NUMNF ,');
Qr_UltVen.SQL.Add('       max(P2LOTE), P2CODPRO, max(pdnome), ');
Qr_UltVen.SQL.Add('       max(P2PCOTAB) as maior_pcotab, sum(P2PCOTAB) as somado_pcotab, ');
Qr_UltVen.SQL.Add('       max(decode(p1tipo_entsai,1,p2qtd*-1,p2qtd)) as maior_qtd, ');
Qr_UltVen.SQL.Add('       sum(decode(p1tipo_entsai,1,p2qtd*-1,p2qtd)) as somado_qtd, ');
Qr_UltVen.SQL.Add('       max(P2PRECO) as maior_preco, sum(P2PRECO) as somado_preco, ');
Qr_UltVen.SQL.Add('       max(P2TOTDES) as maior_totdes, sum(P2TOTDES) as somado_totdes, ');
Qr_UltVen.SQL.Add('       max(P2DESCRAT) as maior_descrat, sum(P2DESCRAT) as somado_descrat, ');
Qr_UltVen.SQL.Add('       max(P2TOTLIQ) as maior_totliq, sum(P2TOTLIQ) as somado_totliq ');
Qr_UltVen.SQL.Add('      ,max(PDMARCA) as PDMARCA, max(PDUND) as PDUND, max(PDREFER) as PDREFER ');
Qr_UltVen.SQL.Add(' from ');
Qr_UltVen.SQL.Add('     CADP01, CADPRO'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' and PDCODPRO=P2CODPRO '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntTostr(codemp)));
if ValFloat(CODPRO.Text)>0 then
  begin
  Qr_UltVen.SQL.Add(' and P2CODPRO='+CODPRO.Text);
  end;
if ValFloat(edt_redcli.Text)>0 then
  begin
  Qr_UltVen.SQL.Add(' and P1CODCLI IN (select CCODCLI from CADCLI where CCODRED='+edt_redcli.Text+')');
  end;

Qr_UltVen.SQL.Add(' and P1TIPO>0 and P1TIPO<>10 ');

if CB_CONFIRMADAS.Checked then
  Qr_UltVen.SQL.Add(' and P1EMIDOC=1 ');

if Trim(MDT1.Text)<>'/  /' then
  Qr_UltVen.SQL.Add(' and '+mtipo_data+'>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
  Qr_UltVen.SQL.Add(' and '+mtipo_data+'<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CODCLI.Text)<>'' then
  Qr_UltVen.SQL.add(' and P1CODCLI=0'+Trim(CODCLI.Text));

mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
if trim(mcinst2)<>'' then
   Qr_UltVen.sql.Add(' and PDMARCA '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_UltVen.SQL.Add(' and P1TIPO '+mcinst2);
Qr_UltVen.SQL.Add(' and P1TIPO>0 ');



Qr_UltVen.SQL.Add('  GROUP BY P1CHAVE,P2ITEM, P2CODPRO ');

Qr_UltVen.SQL.Add('  order by ' +ordem_apresentacao[cb_ordem.ItemIndex]);



if cb_tipo_data.text='Nota' then
   mtipo_data:='P1DATDOC'
else
   mtipo_data:='P1DATAP';

try
  Qr_UltVen.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Qr_UltVen.SQL.SaveToFile(error);
  ShowMessage('Foi Gerado um ErroSql '+error);
  end;
{
if trim(CODPRO.Text)<>'' then
  begin
  DBGrid1.Columns[3].Visible:=False;
  DBGrid1.Columns[4].Visible:=False;
  end
else
  begin
  DBGrid1.Columns[3].Visible:=True;
  DBGrid1.Columns[4].Visible:=True;
  end;
if trim(CODCLI.Text)<>'' then
  begin
  DBGrid1.Columns[2].Visible:=False;
  end
else
  begin
  DBGrid1.Columns[2].Visible:=True;
  end;
}
end;

procedure TFrm_UltVen.bb_imprelClick(Sender: TObject);
begin
bbAplicarClick(SELF);
rl_emp.Caption:=dm1.Tb_EmpRAZAO.AsString;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='Perido selecionado de '+MDT1.Text+' a '+MDT2.Text;
  end
else if (trim(MDT1.Text)<>'/  /') then
  begin
  rl_data.Caption:='Apartir do dia '+MDT1.Text;
  end
else if (trim(MDT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='Até o dia '+MDT2.Text;
  end
else
  begin
  rl_data.Caption:='Sem filtro de data';
  end;
if trim(CODCLI.Text)<>'' then
  begin
  rl_fornecedores.Caption:=NOMCLI.Text;
  end
else
  begin
  rl_fornecedores.Caption:='***Todos os Clientes';
  end;
if trim(CODPRO.Text)<>'' then
  begin
  rl_produtos.Caption:=NOMPRO.Text;
  end
else
  begin
  rl_produtos.Caption:='***Todos os Produtos';
  end;
rl_prod_comp.PreviewModal;
end;

procedure TFrm_UltVen.CODPROEnter(Sender: TObject);
begin
if Qr_UltVen.Active then
   Qr_UltVen.Close;
end;

procedure TFrm_UltVen.CODPROExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;


CODPRO.Text:=fdeixanum2(CODPRO.Text);


CODPRO.Text:=fdeixanum2(CODPRO.Text);
if trim(CODPRO.text)<>'' then
   begin
   if not fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+Trim(CODPRO.Text),query_consulta) then
      begin
     fmensagem('Produto não cadastrado!',0,['0'],0);
     CODPRO.setfocus;
     exit;
     end
  else
     begin
     NOMPRO.Text:=query_consulta.fieldbyname('PDNOME').Asstring;
     UND.Text:=query_consulta.fieldbyname('PDUND').Asstring;
     UND.Text   :=DM1.Tb_ProPDUND.Value;
     end
  end
else if (Trim(CODPRO.Text)='') then
  begin
  NOMPRO.Text:='***Todos os Produtos Cadastrados';
  UND.Text   :='';
  end;
end;

procedure TFrm_UltVen.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_UltCPR',key);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  begin
  key:=#0;
  end;
end;

procedure TFrm_UltVen.CODCLIExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODCLI.Text:=fdeixanum(CODCLI.Text);
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   nomcli.Text:='Todos...'
else
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_UltVen.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'frm_comp_comiss',Key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_UltVen.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;
end;

procedure TFrm_UltVen.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;
end;

procedure TFrm_UltVen.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_UltVen.FormCreate(Sender: TObject);
var
x: integer;

   procedure fbuscartipopedpadrao;
   var
   x: Integer;
   begin
   if flfilpad(0,'_ULTVEN','RG_TIPOPED') then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
         RG_TIPOPED.ItemIndex:=ValInt(mcinst);
         end;
      end;
   end;

begin
PageControl1.ActivePageIndex:=0;
Qr_UltVenMAIOR_PRECO.DisplayFormat      :=mcasaspu;
Qr_UltVenSOMADO_PRECO.DisplayFormat     :=mcasaspu;
Qr_UltVenpco_uni.DisplayFormat           :=mcasaspu;
Qr_UltVenMAIOR_TOTDES.DisplayFormat     :=mcasas;
Qr_UltVenSOMADO_TOTDES.DisplayFormat    :=mcasas;
Qr_UltVenMAIOR_DESCRAT.DisplayFormat    :=mcasas;
Qr_UltVenMAIOR_QTD.DisplayFormat        :=mcasqtd;
Qr_UltVenqtd_uni.DisplayFormat          :=mcasqtd;
Qr_UltVenSOMADO_QTD.DisplayFormat       :=mcasqtd;
Qr_UltVendesc_total.DisplayFormat       :=mcasas;
Qr_UltVenvalor_total.DisplayFormat      :=mcasas;
Qr_UltVenP1DATAP.DisplayFormat       :=fdt2;
Qr_UltVenP1DATDOC.DisplayFormat       :=fdt2;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.text:='01/'+FormatDateTime('mm/yyyy', date);
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0] := TRUE;
RG_TIPOPED.ItemIndex:=0;
fbuscartipopedpadrao;
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);


if flfilpad(0,'_ULTVEN','CB_ORDEM') then
   cb_ordem.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);


end;

procedure TFrm_UltVen.Qr_UltVenCalcFields(DataSet: TDataSet);
begin
if Qr_UltVenMAXP1FORMACE.AsInteger=1 then
  begin
  Qr_UltVenpco_uni.AsFloat:=Qr_UltVenSOMADO_PRECO.AsFloat;
  Qr_UltVenqtd_uni.AsFloat:=Qr_UltVenMAIOR_QTD.AsFloat;
  Qr_UltVendesc_total.AsFloat:=Qr_UltVenSOMADO_DESCRAT.AsFloat;
  Qr_UltVenvalor_total.AsFloat:=Qr_UltVenSOMADO_TOTLIQ.AsFloat;
  end
else if Qr_UltVenMAXP1FORMACE.AsInteger=0 then
  begin
  Qr_UltVenpco_uni.AsFloat:=Qr_UltVenMAIOR_PRECO.AsFloat;
  Qr_UltVenqtd_uni.AsFloat:=Qr_UltVenSOMADO_QTD.AsFloat;
  Qr_UltVendesc_total.AsFloat:=Qr_UltVenMAIOR_DESCRAT.AsFloat;
  Qr_UltVenvalor_total.AsFloat:=Qr_UltVenMAIOR_TOTLIQ.AsFloat;
  end;
dm1.Query1.Close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' select PDNOME  from CADPRO ');
dm1.Query1.SQL.Add(' where PDCODPRO='+Qr_UltVenP2CODPRO.AsString);
dm1.Query1.SQL.Add(codemp2('PDCODEMP',codemp));
dm1.Query1.Open;
Qr_UltVennome_pro.AsString:=dm1.Query1.fieldbyname('PDNOME').AsString;
if Qr_UltVenMAXP1CODCLI.AsFloat=1 then
   begin
   if not fLerGenerico_query('CADCSF','CFRAZAO as RAZSOC,CFCGC AS CNPJ','CFCHAVEP=0'+Qr_UltVenP1CHAVE.AsString,query_consulta) then
      fLerGenerico_query('CADCLI','CRAZAO as RAZSOC,CCNPJ AS CNPJ, CCPF AS CPF','CCODCLI=0'+Qr_UltVenMAXP1CODCLI.AsString,query_consulta);
   end
else
   fLerGenerico_query('CADCLI','CRAZAO as RAZSOC,case when CCPF>0 THEN CCPF else CCNPJ end as CNPJ','CCODCLI=0'+Qr_UltVenMAXP1CODCLI.AsString,query_consulta);
Qr_UltVennome_cli.AsString:=Query_consulta.fieldbyname('RAZSOC').AsString+' '+MaskCPFCNPJ(query_consulta.fieldbyname('CNPJ').AsString);
end;

procedure TFrm_UltVen.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_nomepro.Caption:='Produto...: '+Qr_UltVenP2CODPRO.AsString+' - '+Qr_UltVennome_pro.AsString;
end;

procedure TFrm_UltVen.bb_exportarClick(Sender: TObject);
begin
Application.CreateForm(TfExport, fExport);
fExport.DataSet1 := Src_UltVen.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
end;

procedure TFrm_UltVen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

Form_SelEmp.Free;
Form_SelEmp:=nil;

end;

procedure TFrm_UltVen.DBGrid1DblClick(Sender: TObject);
begin
//brir_Pedido(frm_formulario, chave_p, lotseq_p, ordem_p : Integer)
//Abrir_Pedido(1,Qr_UltVenP1CHAVE.AsInteger,0,0);
end;

procedure TFrm_UltVen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_UltVen.rl_prod_compBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mTotQtd:=0;
  mTotVlr:=0;

end;

procedure TFrm_UltVen.RLBand3AfterPrint(Sender: TObject);
begin
  mTotQtd:=mTotQtd+Qr_UltVenqtd_uni.AsFloat;
  mTotVlr:=mTotVlr+Qr_UltVenvalor_total.AsFloat;

end;

procedure TFrm_UltVen.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_Totqtd.Caption:=FormatFloat(mcasqtd, mTotQtd);
rl_Totvaltot.Caption:=FormatFloat(mcasas, mTotVlr);
mTotQtd:=0;
mTotVlr:=0;
end;

procedure TFrm_UltVen.edt_redcliExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
edt_redcli.Text:=fdeixanum(edt_redcli.Text);
if ValFloat(edt_redcli.Text)<=0 then
   edt_redcli.Text:='';
if Trim(edt_redcli.Text)='' then
   edt_nomredcli.Text:='Todos...'
else
   begin
   if not flqr1('RDNOME','RD','CADRED ','N','RDCODRED ',edt_redcli.Text) then
      begin
      fmensagem('Rede de cliente não Cadastrado!',0,['0'],0);
      edt_redcli.SetFocus;
      end
   else
      edt_nomredcli.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_UltVen.edt_redcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_redcli.Text:=fChamaRedCli(0,'frm_comp_comiss',Key);
   if trim(edt_redcli.Text)<>'' then
      edt_redcliExit(Self);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_UltVen.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;




procedure TFrm_UltVen.fGravarTipoPedidosPadrao;
var
x: Integer;
begin
fDeletaPadroes(0,'_ULTVEN','');

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if (trim(mcinst2)<>'') and (RG_TIPOPED.Checked[RG_TIPOPED.Items.Count-1]=false) then
   begin
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
   fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_ULTVEN',mcinst2);
   end;

end;


procedure TFrm_UltVen.bbSalvarPadraoClick(Sender: TObject);
begin
fGravarTipoPedidosPadrao;
MessageDlg('Arquivo Salvo!',mtWarning,[mbOK],0);

end;

procedure TFrm_UltVen.sbn_padrao_leitorClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_ULTVEN','CB_ORDEM');
   fGravaPadroes(0,'CB_ORDEM'    ,'text'   ,'_ULTVEN',inttostr(cb_ordem.ItemIndex));

end;

procedure TFrm_UltVen.MARCAExit(Sender: TObject);
var
query_marca: tQuery;
begin
if Trim(MARCA.Text)='' then
   MARCA.Text:=''
else
   begin
   query_marca:=tQuery.Create(nil);
   query_marca.databaseName:=DM1.SG_ASSOC.databasename;

   query_marca.Close;
   query_marca.SQL.Clear;
   MARCA.Text:=fRetAspas(MARCA.Text);
   query_marca.SQL.Add('Select PDMARCA from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDMARCA like '+chr(39)+MARCA.Text+'%'+chr(39));
   query_marca.Open;
   if query_marca.IsEmpty then
      begin
      fmensagem('Marca nao Encontrada!',0,['0'],0);
      MARCA.SetFocus;
      end
   else
      begin
      lbx_marca.Items.Add(query_marca.Fields[0].AsString);

      MARCA.text := '';
      MARCA.SetFocus;
      end;
   query_marca.close;
   freeandnil(query_marca);

   end;


end;

procedure TFrm_UltVen.lbx_marcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_marca.ItemIndex>=0 then
      lbx_marca.Items.Delete(lbx_marca.ItemIndex);

end;

end.
