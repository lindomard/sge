unit S_ComisVend_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, ComCtrls, Buttons, DB, DBTables,
  Grids, DBGrids, RLReport, S_SelEmp;

type
  TFrm_ComisVend_Item = class(TForm)
    PageControl1: TPageControl;
    tsImpressao: TTabSheet;
    tsRelatorio: TTabSheet;
    Panel1: TPanel;
    lbl_nome: TLabel;
    edt_codven: TEdit;
    edt_nomven: TEdit;
    Label15: TLabel;
    MDATAI: TMaskEdit;
    Label16: TLabel;
    MDATAF: TMaskEdit;
    Label6: TLabel;
    PCOMIS: TEdit;
    Label3: TLabel;
    OBS1: TEdit;
    OBS2: TEdit;
    bbSair: TBitBtn;
    bbImprimir: TBitBtn;
    Qr_ComisVend: TQuery;
    Qr_ComisVendP1CODEMP: TFloatField;
    Qr_ComisVendP1CHAVE: TFloatField;
    Qr_ComisVendP1ORDEM: TFloatField;
    Qr_ComisVendP1LOTSEQ: TFloatField;
    Qr_ComisVendP1CODVEN: TFloatField;
    Qr_ComisVendP1TOTALL: TFloatField;
    Qr_ComisVendP1CODCLI: TFloatField;
    Qr_ComisVendP1NUMNF: TFloatField;
    Qr_ComisVendP1NUMCF: TFloatField;
    Qr_ComisVendVENDCOMIS: TFloatField;
    Qr_ComisVendTOTPED2: TFloatField;
    Qr_ComisVendtot_outvend: TFloatField;
    DBGrid1: TDBGrid;
    Src_ComisVend: TDataSource;
    Qr_ComisVendRAZSOC: TStringField;
    RLReport1: TRLReport;
    rlBand_CabIni: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo_Pag: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    lbl_cabrel: TRLLabel;
    lbl_periodo: TRLLabel;
    lbl_dathor: TRLLabel;
    rl_cabobs: TRLBand;
    lbl_obsl01: TRLLabel;
    lbl_obsl02: TRLLabel;
    rl_CabDet: TRLBand;
    rl_Detalhe: TRLBand;
    lbl_Chave: TRLLabel;
    lbl_documento: TRLLabel;
    Qr_ComisVenddocumento: TStringField;
    lbl_nomcli: TRLLabel;
    lbl_vlrtot: TRLLabel;
    lbl_basecomis: TRLLabel;
    lbl_vlrcomis: TRLLabel;
    lbl_data: TRLLabel;
    edt_Chave: TRLDBText;
    edt_documento: TRLDBText;
    edt_nomcli: TRLDBText;
    edt_data: TRLDBText;
    edt_vlrtot: TRLDBText;
    edt_basecomis: TRLDBText;
    edt_vlrcomis: TRLDBText;
    Qr_ComisVendvalor_comis: TFloatField;
    Qr_ComisVendP1DATDOC: TDateTimeField;
    Qr_ComisVendP1DATAP: TDateTimeField;
    rlRodape: TRLBand;
    lbl_vendedor: TRLLabel;
    RLBand1: TRLBand;
    tot_vlrcomis: TRLLabel;
    tot_nomcli: TRLLabel;
    Qr_ComisVenddatadoc: TStringField;
    Label37: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_ComisVendCalcFields(DataSet: TDataSet);
    procedure PCOMISExit(Sender: TObject);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure MDATAIExit(Sender: TObject);
    procedure MDATAFExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rl_DetalheAfterPrint(Sender: TObject);
    procedure rlRodapeBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ComisVend_Item: TFrm_ComisVend_Item;
  mPercComis: Real=0;
  Form_SelEmp: TFrm_SelEmp;
  mTotComis: Real;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_ComisVend_Item.bbImprimirClick(Sender: TObject);
var
mDataPesq: String;
begin
if fsonumero(edt_codven.Text)=0 then
   begin
   MessageDlg('Favor Digitar o Código do Vendedor!',mtWarning,[mbOk],0);
   exit;
   end;

mDataPesq:='P1DATDOC';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
la_instrucao:=la_instrucao+' and ';
fInnerJoin4(0,'CADP02' ,'P2CODEMP','P1CODEMP' ,'P2LOTSEQ' ,'P1LOTSEQ','P2CHAVE' ,'P1CHAVE','P2ORDEM' ,'P1ORDEM');
la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'CADCSF' ,'CFCODEMP(+)','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_ComisVend.Close;
Qr_ComisVend.SQL.Clear;
Qr_ComisVend.SQL.Add('select P1CODEMP,P1CHAVE,P1ORDEM,P1LOTSEQ, P1CODVEN,P1TOTALL,P1CODCLI '
                    +',P1DATDOC,P1DATAP '
                    +' ,decode(CFRAZAO,null,CRAZAO,CFRAZAO) as RAZSOC,P1NUMNF,P1NUMCF '
                    +' ,max(P2CODVEN) VENDCOMIS,sum(P2TOTLIQ) AS TOTPED2 '
                    +' FROM CADP01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<9 ');
if trim(MDATAI.Text)<>'/  /' then
   begin
   Qr_ComisVend.SQL.add(' and '+mDataPesq+'>=:DATAI');
   Qr_ComisVend.ParamByName('DATAI').Value:=StrtoDate(MDATAI.Text);
   end;
if trim(MDATAF.Text)<>'/  /' then
   begin
   Qr_ComisVend.SQL.add(' and '+mDataPesq+'<=:DATAF');
   Qr_ComisVend.ParamByName('DATAF').Value:=StrtoDate(MDATAF.Text);
   end;


mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_ComisVend.SQL.Add(' and P1CX_CODCAI '+mcinst2);

if fsonumero(edt_codven.Text)<>0 then
   Qr_ComisVend.SQL.add(' and ( (P1CODVEN='+edt_codven.Text+' and P2CODVEN=0) OR (P2CODVEN='+edt_codven.Text+'))');
Qr_ComisVend.SQL.add(' GROUP BY P1CODEMP,P1CHAVE,P1ORDEM,P1LOTSEQ, P1CODVEN,P1TOTALL,P1CODCLI '
                    +' ,CRAZAO,CFRAZAO,P1NUMNF,P1NUMCF,P1DATDOC,P1DATAP ');
try
   Qr_ComisVend.Open;
except
   Qr_ComisVend.SQL.SaveToFile('c:\sql.txt');
   end;
rlBand_CabIni.Borders.DrawLeft:=true;
rlBand_CabIni.Borders.DrawRight:=true;
rlBand_CabIni.Borders.DrawTop:=true;
rlBand_CabIni.Borders.DrawBottom:=true;
rl_cabobs.Borders.DrawBottom:=true;
rl_cabobs.Borders.DrawRight:=true;
rl_cabobs.Borders.DrawLeft:=true;
rl_cabdet.Borders.DrawRight:=true;
rl_cabdet.Borders.DrawLeft:=true;
rl_cabdet.Borders.DrawBottom:=true;

rl_Detalhe.Borders.DrawRight:=true;
rl_Detalhe.Borders.DrawLeft:=true;
rlRodape.Borders.DrawTop:=true;

lbl_Chave.Borders.DrawRight:=true;
lbl_documento.Borders.DrawRight:=true;
lbl_nomcli.Borders.DrawRight:=true;
lbl_data.Borders.DrawRight:=true;
lbl_vlrtot.Borders.DrawRight:=true;
lbl_basecomis.Borders.DrawRight:=true;

edt_Chave.Borders.DrawRight:=true;
edt_documento.Borders.DrawRight:=true;
edt_nomcli.Borders.DrawRight:=true;
edt_data.Borders.DrawRight:=true;
edt_vlrtot.Borders.DrawRight:=true;
edt_basecomis.Borders.DrawRight:=true;
lbl_obsl01.Caption:=OBS1.Text;
lbl_obsl02.Caption:=OBS2.Text;
lbl_periodo.Caption:=fperiodo(0,MDATAI.Text,MDATAF.Text);
lbl_vendedor.Caption:=edt_codven.Text+' - '+edt_nomven.Text;
mTotComis:=0;
RLReport1.PreviewModal;


end;

procedure TFrm_ComisVend_Item.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ComisVend_Item.FormCreate(Sender: TObject);
begin
Qr_ComisVendP1TOTALL.DisplayFormat   :=mcasas;
Qr_ComisVendTOTPED2.DisplayFormat    :=mcasas;
Qr_ComisVendtot_outvend.DisplayFormat:=mcasas;
Qr_ComisVendvalor_comis.DisplayFormat:=mcasas;
Qr_ComisVendP1DATDOC.DisplayFormat   :=fdt2;
Qr_ComisVendP1DATAP.DisplayFormat    :=fdt2;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
tsRelatorio.TabVisible:=false;
end;

procedure TFrm_ComisVend_Item.Qr_ComisVendCalcFields(DataSet: TDataSet);
begin
Qr_ComisVendtot_outvend.AsFloat:=Qr_ComisVendP1TOTALL.AsFloat-Qr_ComisVendTOTPED2.AsFloat;
if Qr_ComisVendP1NUMNF.AsFloat>0 then
   Qr_ComisVenddocumento.Value:='NF: '+Qr_ComisVendP1NUMNF.AsString
else if Qr_ComisVendP1NUMCF.AsFloat>0 then
   Qr_ComisVenddocumento.Value:='CF: '+Qr_ComisVendP1NUMCF.AsString
else
   Qr_ComisVenddocumento.Value:='Ped: '+Qr_ComisVendP1CHAVE.AsString;
if Qr_ComisVendP1CODEMP.AsInteger>100 then
   Qr_ComisVenddocumento.AsString:='*'+Qr_ComisVenddocumento.AsString;
if mPercComis=0 then
   Qr_ComisVendvalor_comis.AsFloat:=0
else if Qr_ComisVendTOTPED2.AsFloat=0 then
   Qr_ComisVendvalor_comis.AsFloat:=0
else
   Qr_ComisVendvalor_comis.AsFloat:=(Qr_ComisVendTOTPED2.AsFloat*mPercComis)/100;
if Qr_ComisVendP1DATDOC.AsDateTime>pdatanula then
   Qr_ComisVenddatadoc.Value:=FormatDateTime(fdt2, Qr_ComisVendP1DATDOC.AsDateTime)
else
   Qr_ComisVenddatadoc.Value:=FormatDateTime(fdt2, Qr_ComisVendP1DATAP.AsDateTime);

end;

procedure TFrm_ComisVend_Item.PCOMISExit(Sender: TObject);
begin
mPercComis:=Valfloat(pcomis.Text);
PCOMIS.Text:=FormatFloat(mcasas_pct, mPercComis);
end;

procedure TFrm_ComisVend_Item.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum(edt_codven.Text);
if trim(edt_codven.Text)='' then
   edt_nomven.Text:=''
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(edt_codven.Text)) then
      edt_nomven.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      MessageDlg('Vendedor não cadastrado!',mtWarning,[mbOk],0);
      edt_codven.SetFocus;
      end;
   end;

end;

procedure TFrm_ComisVend_Item.edt_codvenKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codven.Text:=fChamaVen(0,'frm_ComVV',Key);
   edt_codvenExit(self);
   key:=#0;
   end;

end;

procedure TFrm_ComisVend_Item.MDATAIExit(Sender: TObject);
begin
if trim(MDATAI.Text)<>'/  /' then
   begin
   try
      MDATAI.Text:=FormatDateTime(fdt2, StrToDate(MDATAI.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      end;
   end;
end;

procedure TFrm_ComisVend_Item.MDATAFExit(Sender: TObject);
begin
if trim(MDATAF.Text)<>'/  /' then
   begin
   try
      MDATAF.Text:=FormatDateTime(fdt2, StrToDate(MDATAF.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      end;
   end;

end;

procedure TFrm_ComisVend_Item.FormKeyDown(Sender: TObject; var Key: Word;
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
{         if ce_qtdemp<2 then
           begin
           lbl_cheio.Visible:=true;
           end
        else
           begin
           lbl_cheio.Visible:=false;
           end; }
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;

end;

procedure TFrm_ComisVend_Item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ComisVend_Item.rl_DetalheAfterPrint(Sender: TObject);
begin
mTotComis:=mTotComis+Qr_ComisVendvalor_comis.AsFloat;

end;

procedure TFrm_ComisVend_Item.rlRodapeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
tot_vlrcomis.Caption:=FormatFloat(mcasas, mTotComis);
mTotComis:=0;
end;

procedure TFrm_ComisVend_Item.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_ComisVend_Item.CODBCOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ComisVend_Item.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

end.
