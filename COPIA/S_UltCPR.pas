unit S_UltCPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,db,dbtables,func,S_Pro,lerarq, Mask, Buttons,S_For,
  Grids, DBGrids,s_dm2, RLReport, S_SelEmp, RLFilters, RLXLSFilter, DBCtrls,
  ComCtrls;

type
  TFrm_UltCPR = class(TForm)
    Qr_UltCpr: TQuery;
    Qr_UltCprPF1DATA: TDateTimeField;
    Qr_UltCprPF1CODFOR: TFloatField;
    Qr_UltCprPF2QTDP: TFloatField;
    Qr_UltCprPF2PU: TFloatField;
    Qr_UltCprPF2TOTDES: TFloatField;
    Qr_UltCprPF2DESCRAT: TFloatField;
    Qr_UltCprFCODFOR: TFloatField;
    Qr_UltCprFRAZAO: TStringField;
    Src_UltCPR: TDataSource;
    Qr_UltCprpco_unit: TFloatField;
    Qr_UltCprvalor_total: TFloatField;
    Qr_UltCprPF2CODPRO: TFloatField;
    Qr_UltCprPF2CODEMP: TFloatField;
    Qr_UltCprPF2CHAVE: TFloatField;
    Qr_UltCprPF2LOTE: TStringField;
    Qr_UltCprPRAZO: TStringField;
    Qr_UltCprPF2ALIPI: TFloatField;
    Qr_UltCprPF2IPI: TFloatField;
    Qr_UltCprPF2NOMPRO: TStringField;
    RLXLSFilter1: TRLXLSFilter;
    Qr_UltCprpco_unit_comipi: TFloatField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CODPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    bb_imprel: TBitBtn;
    bb_exportar: TBitBtn;
    cb_filtro_confirmado: TComboBox;
    lbx_codpro: TListBox;
    cb_omitir: TCheckBox;
    cb_ipi: TCheckBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBE_prazo: TDBEdit;
    DBE_LOTE: TDBEdit;
    DBE_CODFOR: TDBEdit;
    DBE_RAZAO: TDBEdit;
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
    lbl_ipi: TRLLabel;
    lbl_vlripi: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Qr_UltCprPF2ICMSR: TFloatField;
    Qr_UltCprPF1DATANF: TDateTimeField;
    Label9: TLabel;
    cb_tipo_data: TComboBox;
    cb_PF1DATANF: TRLLabel;
    edt_PF1DATANF: TRLDBText;
    Qr_UltCprPF1NUMNF: TFloatField;
    Qr_UltCprPDMARCA: TStringField;
    Qr_UltCprPDREFER: TStringField;
    Qr_UltCprPDUND: TStringField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure Qr_UltCprCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure bb_imprelClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODFOREnter(Sender: TObject);
    procedure bb_exportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_tipo_dataExit(Sender: TObject);
  private
    { Private declarations }
  public
      { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;


var
  Frm_UltCPR: TFrm_UltCPR;

implementation

uses  uExport,s_lerarq_geral;

{$R *.dfm}

procedure TFrm_UltCPR.MDT1Exit(Sender: TObject);
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

procedure TFrm_UltCPR.MDT2Exit(Sender: TObject);
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

procedure TFrm_UltCPR.bbAplicarClick(Sender: TObject);
var
  error:   string;
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
   mtipo_data:='PF1DATANF'
else
   mtipo_data:='PF1DATA';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(0,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
la_instrucao:=la_instrucao+' and ';
fInnerJoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_ITEM','PF2ITEM');

la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');


la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_UltCpr.Close;
Qr_UltCpr.SQL.Clear;
Qr_UltCpr.SQL.Add(' Select PF1DATA,PF1DATANF,PF1CODFOR,PF1NUMNF,decode(PF2L_QTD,null,PF2QTDP,PF2L_QTD) AS PF2QTDP,PF2PU,'
                 +' PF2CODPRO,NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO,decode(PF2LOTE,NULL,PF2L_LOTE,PF2LOTE) AS PF2LOTE,   ');
Qr_UltCpr.SQL.Add('        PF2TOTDES,PF2DESCRAT,FCODFOR,FRAZAO, PF2CODEMP,PF2ALIPI,PF2IPI, PF2CHAVE,PF2ICMSR ');
Qr_UltCpr.SQL.Add(' ,PDUND,PDMARCA,PDREFER');

Qr_UltCpr.SQL.Add(' from CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PF1STATUS<9 ');

mcinst2:=fItensListBox(0,lbx_codpro,CB_OMITIR);
if trim(mcinst2)<>'' then
  begin
  Qr_UltCpr.SQL.Add(' and PDCODPRO '+mcinst2);
  mcinst2:='';
  end;
if cb_ipi.Checked then
   begin
   Qr_UltCpr.SQL.add(' and PF2IPI>0 ');
   end;

Qr_UltCpr.SQL.Add(' and '+fla_sqlmp('PDCODEMP',Form_SelEmp.CLB_EMPRESAS));
Qr_UltCpr.SQL.Add(' and '+fla_sqlmp('FCODEMP',Form_SelEmp.CLB_EMPRESAS));
Qr_UltCpr.SQL.Add(' and FCODFOR=PF1CODFOR ');

if cb_filtro_confirmado.ItemIndex=0 then
  begin
  Qr_UltCpr.SQL.Add(' and PF1STATUS>0 ');
  end
else if cb_filtro_confirmado.ItemIndex=1 then
  begin
  Qr_UltCpr.SQL.Add(' and PF1STATUS=0 ');
  end;

if Trim(MDT1.Text)<>'/  /' then
   Qr_UltCpr.SQL.Add(' and '+mtipo_data+'>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_UltCpr.SQL.Add(' and '+mtipo_data+'<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CODFOR.Text)<>'' then
   Qr_UltCpr.SQL.add(' and PF1CODFOR=0'+Trim(CODFOR.Text));
Qr_UltCpr.SQL.Add(' order by PF2NOMPRO, '+mtipo_data+' DESC, PF2PU');
//Qr_UltCpr.SQL.SaveToFile('c:\sql.txt');

try
  Qr_UltCpr.Open;
except
  Qr_UltCpr.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  end;
{if lbx_codpro.Items.Count>0 then
  begin
  DBGrid1.Columns[2].Visible:=False;
  DBGrid1.Columns[3].Visible:=False;
  end
else
  begin
  DBGrid1.Columns[2].Visible:=True;
  DBGrid1.Columns[3].Visible:=True;
  end; }
if trim(CODFOR.Text)<>'' then
  begin
  DBGrid1.Columns[9].Visible:=False;
  DBGrid1.Columns[10].Visible:=False;
  end
else
  begin
  DBGrid1.Columns[9].Visible:=True;
  DBGrid1.Columns[10].Visible:=True;
  end;


end;

procedure TFrm_UltCPR.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_UltCPR.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   codpro.Text:=fChamaPro(0,'ProdProduz',key);
   key:=#0;
   codproExit(Self);
   end;
end;

procedure TFrm_UltCPR.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_UItCPR',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_UltCPR.CODPROExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
codpro.Text:=fdeixanum2(codpro.Text);
if Trim(codpro.Text)<>'' then
   begin
   if not fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+Trim(CODPRO.Text),query_consulta) then
      begin
      fmensagem('Produto Acabado não Cadastrado!',0,['0'],0);
      codpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',valfloat(codpro.text))
                                    +' - '+query_consulta.fieldbyname('PDNOME').Asstring);
      codpro.text := '';
      codpro.setfocus;
      end;
   end;

end;

procedure TFrm_UltCPR.CODFORExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODFOR.Text:=fdeixanum(CODFOR.Text);
if ValFloat(CODFOR.Text)<=0 then
   CODFOR.Text:='';

if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_UltCPR.Qr_UltCprCalcFields(DataSet: TDataSet);
begin
if not (Qr_UltCprPF2QTDP.IsNull) and not (Qr_UltCprPF2PU.IsNull)  then
  begin
  Qr_UltCprvalor_total.Value:=Qr_UltCprPF2QTDP.Value*Qr_UltCprPF2PU.Value;
  end;
if not (Qr_UltCprvalor_total.IsNull) and not (Qr_UltCprPF2TOTDES.IsNull)  then
  begin
  Qr_UltCprvalor_total.Value:=Qr_UltCprvalor_total.Value-Qr_UltCprPF2TOTDES.Value;
  end;
if not (Qr_UltCprvalor_total.IsNull) and not (Qr_UltCprPF2QTDP.IsNull) then
  begin
  Qr_UltCprpco_unit.Value:=Qr_UltCprvalor_total.Value/Qr_UltCprPF2QTDP.Value;

  Qr_UltCprpco_unit_comipi.Value:=arredonda( (Qr_UltCprpco_unit.AsFloat+
                                  ((Qr_UltCprPF2IPI.AsFloat+Qr_UltCPRPF2ICMSR.Asfloat)
                                     /Qr_UltCprPF2QTDP.AsFloat)), DM1.Tb_PargerPCASASPU.AsInteger);

  end;
Qr_UltCprvalor_total.Value:=Qr_UltCprvalor_total.Value+Qr_UltCprPF2IPI.AsFloat+Qr_UltCprPF2ICMSR.AsFloat;

Qr_UltCprPRAZO.AsString:='';
dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select PF1VDATAV-PF1DATANF as data from CADPF1V, CADPF1 ');
dm1.Query2.SQL.Add(' where PF1VCHAVE='+Qr_UltCprPF2CHAVE.AsString);
dm1.Query2.SQL.Add(' and PF1VCODEMP=PF1VCODEMP and PF1VCHAVE=PF1CHAVE');
dm1.Query2.SQL.Add(' and PF1VCODEMP='+Qr_UltCprPF2CODEMP.AsString);
try
  dm1.Query2.Open;
  while not dm1.Query2.Eof do
    begin
    if Qr_UltCprPRAZO.AsString='' then
      Qr_UltCprPRAZO.AsString:='Prazos..: '+dm1.Query2.FieldByName('DATA').AsString
    else
      Qr_UltCprPRAZO.AsString:=Qr_UltCprPRAZO.AsString+' / '+dm1.Query2.FieldByName('DATA').AsString;
    dm1.Query2.Next;
    end;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  dm1.Query2.SQL.SaveToFile(error);
  fmensagem('Gerado Errosql '+error,0,['0'],0);
  end;
end;

procedure TFrm_UltCPR.FormCreate(Sender: TObject);
begin
tsRelatorio.TabVisible:=false;
Qr_UltCprpco_unit_comipi.DisplayFormat      :=mcasaspu;
Qr_UltCprvalor_total.DisplayFormat      :=mcasas;
Qr_UltCprPF2PU.DisplayFormat      :=mcasaspu;
Qr_UltCprPF2TOTDES.DisplayFormat  :=mcasas;
Qr_UltCprPF2DESCRAT.DisplayFormat :=mcasas;
Qr_UltCprPF2QTDP.DisplayFormat    :=mcasqtd;
Qr_UltCprvalor_total.DisplayFormat:=mcasas;
Qr_UltCprpco_unit.DisplayFormat   :=mcasaspu;
Qr_UltCprPF1DATA.DisplayFormat    :=fdt2;
Qr_UltCprPF2ALIPI.DisplayFormat   :=mcasas_pct;
Qr_UltCprPF2IPI.DisplayFormat     :=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_UltCPR.CODPROEnter(Sender: TObject);
begin
if Qr_UltCpr.Active then
   Qr_UltCpr.Close;
end;

procedure TFrm_UltCPR.bb_imprelClick(Sender: TObject);
begin
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
if trim(CODFOR.Text)<>'' then
  begin
  rl_fornecedores.Caption:=NOMFOR.Text;
  end
else
  begin
  rl_fornecedores.Caption:='***Todos os Fornecedores';
  end;

rl_prod_comp.PreviewModal;
end;

procedure TFrm_UltCPR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_nomepro.Caption:='Produto...: '+Qr_UltCprPF2CODPRO.AsString+' - '+Qr_UltCprPF2NOMPRO.AsString;
end;

procedure TFrm_UltCPR.CODFOREnter(Sender: TObject);
begin
if Qr_UltCpr.Active then
   Qr_UltCpr.Close;
end;

procedure TFrm_UltCPR.bb_exportarClick(Sender: TObject);
begin
Application.CreateForm(TfExport, fExport);
fExport.DataSet1 := Src_UltCPR.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
end;

procedure TFrm_UltCPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
  begin
  Action := caFree;
  Frm_UltCPR:=nil;
  end;
end;

procedure TFrm_UltCPR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=27 then
   begin
   modalresult:=mrOk;
   close;
   end
else
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
end;

procedure TFrm_UltCPR.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codpro.ItemIndex>=0 then
    lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);
end;

procedure TFrm_UltCPR.cb_tipo_dataExit(Sender: TObject);
begin

if trim(cb_tipo_data.Text)<>'' then
   with cb_tipo_data do ItemIndex:=Items.IndexOf(cb_tipo_data.Text);





end;

end.
