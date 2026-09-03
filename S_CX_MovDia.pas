unit S_CX_MovDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ComCtrls, Buttons, RLReport, DB, S_SelEmp,
  DBTables;

type
  TFrm_CX_MovDia = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Label37: TLabel;
    edt_codcai: TEdit;
    edt_caixa: TEdit;
    Label2: TLabel;
    edt_datmov: TDateEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLBand_CabGer: TRLBand;
    rllbl_nomemp: TRLLabel;
    lbl_dathor: TRLLabel;
    lbl_titulo: TRLLabel;
    lbl_data: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand_CabDet: TRLBand;
    RLBand1: TRLBand;
    src_movdia: TDataSource;
    qr_movdia: TQuery;
    dbe_nome: TRLDBText;
    lbl_nome: TRLLabel;
    lbl_RECEBIDO: TRLLabel;
    edt_RECEBIDO: TRLDBText;
    lbl_PAGOS: TRLLabel;
    edt_PAGOS: TRLDBText;
    lbl_saldo: TRLLabel;
    edt_saldo: TRLDBText;
    qr_movdiaDESCMOV: TStringField;
    qr_movdiaFORMA: TStringField;
    qr_movdiaRECEBIDO: TFloatField;
    qr_movdiaPAGOS: TFloatField;
    qr_movdiaACUMULADO: TFloatField;
    lbl_fpto: TRLLabel;
    edt_fpto: TRLDBText;
    RLBand_totais: TRLBand;
    lbltot_nome: TRLLabel;
    lbltot_fpto: TRLLabel;
    lbltot_RECEBIDO: TRLLabel;
    lbltot_PAGOS: TRLLabel;
    lbltot_saldo: TRLLabel;
    RLBand_rodape: TRLBand;
    procedure edt_codcaiExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_totaisBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1AfterPrint(Sender: TObject);
  private
    { Private declarations }
    mTotPagos,mtotRec: Real;
  public
    { Public declarations }
  end;

var
  Frm_CX_MovDia: TFrm_CX_MovDia;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_CX_MovDia.edt_codcaiExit(Sender: TObject);
begin
edt_codcai.Text:=fdeixanum2(edt_codcai.Text);
if Trim(edt_codcai.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codcai.Text) then
      begin
      fmensagem('Caixa não cadastrado!',0,['0'],0);
      edt_codcai.SetFocus;
      end
   else
      begin
      edt_caixa.Text:=FormatFloat('0000000',StrToFloat(edt_codcai.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString;
      end;
   end;


end;

procedure TFrm_CX_MovDia.FormCreate(Sender: TObject);
begin
tsRelatorio.TabVisible:=false;
edt_datmov.Text:=FormatDateTime(fdt2,Date);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
RLBand_CabGer.Borders.DrawLeft:=true;
RLBand_CabGer.Borders.DrawRight:=true;
RLBand_CabGer.Borders.DrawTop:=true;

RLBand_CabDet.Borders.DrawLeft:=true;
RLBand_CabDet.Borders.DrawRight:=true;
RLBand_CabDet.Borders.DrawTop:=true;
RLBand_CabDet.Borders.DrawBottom:=true;


RLBand1.Borders.DrawLeft:=true;
RLBand1.Borders.DrawRight:=true;

RLBand_totais.Borders.DrawLeft:=true;
RLBand_totais.Borders.DrawRight:=true;
RLBand_totais.Borders.Drawbottom:=true;

RLBand_rodape.Borders.DrawLeft  :=true;
RLBand_rodape.Borders.DrawRight :=true;
RLBand_rodape.Borders.DrawTop   :=true;
RLBand_rodape.Borders.Drawbottom:=true;

lbl_fpto.Borders.DrawLeft:=true;
lbl_RECEBIDO.Borders.DrawLeft:=true;
lbl_PAGOS.Borders.DrawLeft:=true;
lbl_saldo.Borders.DrawLeft:=true;

edt_fpto.Borders.DrawLeft:=true;
edt_RECEBIDO.Borders.DrawLeft:=true;
edt_PAGOS.Borders.DrawLeft:=true;
edt_saldo.Borders.DrawLeft:=true;


lbltot_fpto.Borders.DrawLeft:=true;
lbltot_RECEBIDO.Borders.DrawLeft:=true;
lbltot_PAGOS.Borders.DrawLeft:=true;
lbltot_saldo.Borders.DrawLeft:=true;

qr_movdiaRECEBIDO.DisplayFormat:=mcasas;
qr_movdiaPAGOS.DisplayFormat:=mcasas;
qr_movdiaACUMULADO.DisplayFormat:=mcasas;


end;

procedure TFrm_CX_MovDia.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_MovDia.bbImprimirClick(Sender: TObject);
var
query_ini: tQuery;
mSaldo_ini:Real;
begin
if edt_datmov.Date<=pdatanula then
   begin
   MessageDlg('Data do movimento Campo Obrigatorio!',mtWarning,[mbOk],0);
   edt_datmov.SetFocus;
   exit;
   end;
if valint(edt_codcai.Text)=0 then
   begin
   MessageDlg('Código do Caixa Campo Obrigatório!',mtWarning,[mbOk],0);
   edt_codcai.SetFocus;
   exit;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CA_CODEMP',Form_SelEmp.CLB_EMPRESAS);

query_ini:=tQuery.create(nil);
query_ini.DatabaseName:='SG_ASSOC';
query_ini.SQL.add('Select CA_VALOR_ABRE from CADLDR_ABERT '
                 +' where CA_DATAMOV=:DATMOV '
                 +' and CA_CODBCO=:CODBCO ');
query_ini.ParamByName('DATMOV').AsDateTime:=edt_datmov.Date;
query_ini.ParamByName('CODBCO').AsInteger :=valint(edt_codcai.text);

if trim(la_Empresas)<>'' then
   query_ini.SQL.add(' and '+la_Empresas);
query_ini.Open;
if query_ini.IsEmpty then
   mSaldo_Ini:=0
else
   mSaldo_Ini:=Query_ini.fieldbyname('CA_VALOR_ABRE').AsFloat;
FreeAndNil(query_ini);
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

qr_movdia.Close;
qr_movdia.SQL.clear;
qr_movdia.SQL.Add('select NOME ||'+QuotedStr(' ')+'|| DESCMV ||'+quotedstr(' ')+'||NUMDOC AS DESCMOV, NUMDOC2 AS FORMA '
                 +' ,RECEBIDO, PAGOS ,SUM( RECEBIDO-PAGOS ) '
                 +' OVER( ORDER BY RECEBIDO,PAGOS ROWS '
                 +' BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) ACUMULADO '
                 +'  from '
                 +' ( '
                 +' SELECT 00 AS COL,'+quotedstr('  ')+' AS NOME,'+QuotedStr('CAIXA INICIAL')+' AS DESCMV,'
                 +quotedstr(' ')+' AS NUMDOC,'+QuotedStr('DINHEIRO')+' AS NUMDOC2 '
                 +','+mudaVP(FloatToStr(mSaldo_ini))+' AS RECEBIDO '
                 +',0 AS RECEBER '
                 +',0 AS PAGOS '
                 +',0 AS PAGAR '
                 +' FROM DUAL '
                 +' UNION '
                 +' Select ROWNUM AS COL,NOME,DESCMV,NUMDOC, NUMDOC2 '
                 +' ,CASE WHEN NVL(VALORR,0)<>0 AND NATDC='+quotedstr('C')+' THEN VALORR ELSE 0 END AS RECEBIDO '
                 +' ,CASE WHEN NVL(VALORR,0)=0 AND NATDC='+quotedstr('C')+' THEN VALORP ELSE 0 END AS RECEBER '
                 +' ,CASE WHEN NVL(VALORR,0)<>0 AND NATDC='+quotedstr('D')+' THEN VALORR ELSE 0 END AS PAGOS '
                 +' ,CASE WHEN NVL(VALORR,0)=0 AND NATDC='+quotedstr('D')+' THEN VALORP ELSE 0  END AS PAGAR '
                 +' FROM CADLDR where DATAREF=:DATAREF and STATUS<>9'
                 +iif(la_Empresas='','',' and '+la_Empresas));
if valint(edt_codcai.Text)<>0 then
   begin
   qr_movdia.SQL.Add(' and CODBCO=:CODBCO ');
   qr_movdia.ParamByName('CODBCO').AsInteger:=VALINT(EDT_CODCAI.text);
   end;

qr_movdia.ParamByName('DATAREF').AsDateTime:=edt_datmov.Date;

qr_movdia.SQL.Add(') order by COL' );


try
   qr_movdia.Open;
except
   qr_movdia.SQL.SaveToFile(mpastatemp +'sqlMD.TXT');
   end;
//qr_movdia.SQL.SaveToFile(mpastatemp +'sqlMD.TXT');

rllbl_nomemp.Caption:=DM1.Tb_EmpRAZAO_CAB.AsString;
lbl_dathor.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);

lbl_titulo.Caption:='MOVIMENTO DO CAIXA '+edt_caixa.Text+' em '+FormatDateTime(fdt2, date)+'.';

RLReport1.PreviewModal;


end;

procedure TFrm_CX_MovDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CX_MovDia.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mTotPagos:=0;
    mtotRec  :=0;

end;

procedure TFrm_CX_MovDia.RLBand_totaisBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbltot_RECEBIDO.Caption:=FormatFloat(mcasas, mtotRec);
lbltot_PAGOS.Caption:=FormatFloat(mcasas, mTotPagos);
lbltot_saldo.Caption:=FormatFloat(mcasas, mtotRec-mTotPagos);

mTotPagos:=0;
mtotRec  :=0; 

end;

procedure TFrm_CX_MovDia.RLBand1AfterPrint(Sender: TObject);
begin
    mTotPagos:=mTotPagos+qr_movdiaPAGOS.AsFloat;
    mtotRec  :=mtotRec+qr_movdiaRECEBIDO.AsFloat;

end;

end.
