unit S_PontoCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, DBTables, Grids, DBGrids, S_SelEmp,
  ComCtrls, RLReport;

type
  TFrm_PontoCorte = class(TForm)
    Qr_PontoCorte: TQuery;
    Src_PontoCorte: TDataSource;
    Qr_PontoCorteQTDRESERVA: TFloatField;
    Qr_PontoCorteQTDORCAM: TFloatField;
    Qr_PontoCorteESTOQUE: TFloatField;
    Qr_PontoCortePDNOME: TStringField;
    Qr_PontoCortePDUND: TStringField;
    Qr_PontoCorteP2CODPRO: TFloatField;
    Qr_PontoCortepontocorte: TFloatField;
    PageControl1: TPageControl;
    tsGerais: TTabSheet;
    tsRelatorio: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    NUMINI: TEdit;
    NUMFIN: TEdit;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_CORTE: TCheckBox;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    rl_obscab: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand_cabgru: TRLBand;
    lbl_codpro: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_und: TRLLabel;
    lbl_entradas: TRLLabel;
    lbl_saidas: TRLLabel;
    lbl_saldo: TRLLabel;
    RLBand_detail: TRLBand;
    edt_codpro: TRLDBText;
    edt_descricao: TRLDBText;
    edt_und: TRLDBText;
    edt_entradas: TRLDBText;
    edt_saidas: TRLDBText;
    edt_saldo: TRLDBText;
    RL_Rodape: TRLBand;
    lbl_emitido: TRLLabel;
    RLRodPag: TRLBand;
    lbl_reserva: TRLLabel;
    edt_reserva: TRLDBText;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NUMINIExit(Sender: TObject);
    procedure NUMFINExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_PontoCorteCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_PontoCorte: TFrm_PontoCorte;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_PontoCorte.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)='/  /' then
   MDT1.Text:=FormatDatetime(fdt2, date);
try
   MDT1.Text:=FormatDatetime(fdt2, StrtoDate(MDT1.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDT1.SetFocus;
   end;

end;

procedure TFrm_PontoCorte.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)='/  /' then
   MDT2.Text:=FormatDatetime(fdt2, date);
try
   MDT2.Text:=FormatDatetime(fdt2, StrtoDate(MDT2.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDT2.SetFocus;
   end;

end;

procedure TFrm_PontoCorte.NUMINIExit(Sender: TObject);
begin
NUMINI.Text:=fdeixanum2(NUMINI.Text);

end;

procedure TFrm_PontoCorte.NUMFINExit(Sender: TObject);
begin
NUMFIN.Text:=fdeixanum2(NUMFIN.Text);

end;

procedure TFrm_PontoCorte.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;


end;

procedure TFrm_PontoCorte.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PontoCorte.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_PontoCorte.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PontoCorte.bbAplicarClick(Sender: TObject);
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
if (Trim(NUMINI.Text)<>'') and (Trim(NUMFIN.Text)<>'') then
   begin
   if fsonumero(NUMINI.Text)>fsonumero(NUMFIN.Text) then
      begin
      fmensagem('Chave Inicial Maior que final, Invalido!',0,['0'],0);
      NUMINI.SetFocus;
      exit;
      end;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');


Qr_PontoCorte.Close;
Qr_PontoCorte.Sql.Clear;
Qr_PontoCorte.Sql.Add('select sum(decode(P1TIPO,0,0,p2qtd)) as qtdreserva '
                     +',sum(DECODE(P1TIPO,0,p2qtd,0)) as qtdorcam '
                     +',p2codpro '
                     +',pdsaldo as estoque '
                     +',pdnome,pdund '
                     +'from cadp01 '
                     +iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' P1STATUS<2'
                     +' and P1EMIDOC=0');
if trim(MDT1.Text)<>'/  /' then
   Qr_PontoCorte.SQL.Add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_PontoCorte.SQL.Add(' and P1DATAP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

if trim(NUMINI.Text)<>'' then
   Qr_PontoCorte.SQL.Add(' and P1CHAVE>='+trim(NUMINI.Text));
if trim(NUMFIN.Text)<>'' then
   Qr_PontoCorte.SQL.Add(' and P1CHAVE<='+trim(NUMFIN.Text));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_PontoCorte.SQL.Add(' and P1CODCLI '+mcinst2);

Qr_PontoCorte.Sql.Add(' group by pdnome,pdund,pdsaldo,p2codpro ');
if CB_CORTE.Checked then
   Qr_PontoCorte.Sql.Add('having (sum(DECODE(P1TIPO,0,p2qtd,0))-PDSALDO) >0 ');
Qr_PontoCorte.Sql.Add(' order by pdnome,pdund');

//   Qr_PontoCorte.Sql.Add(' having sum(DECODE(P1TIPO,0,p2qtd,0))>0');
//Qr_PontoCorte.SQL.SaveToFile('C:\SQL.TXT');

try
   Qr_PontoCorte.Open;
except
   Qr_PontoCorte.SQL.SaveToFile('C:\SQL.TXT');
   end;

end;

procedure TFrm_PontoCorte.FormCreate(Sender: TObject);
begin
tsRelatorio.TabVisible:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=FormatDateTime(fdt2, date);
Qr_PontoCorteQTDORCAM.DisplayFormat  :=mcasqtd;
Qr_PontoCorteQTDRESERVA.DisplayFormat:=mcasqtd;
Qr_PontoCorteESTOQUE.DisplayFormat   :=mcasqtd;
Qr_PontoCortepontocorte.DisplayFormat:=mcasqtd;




end;

procedure TFrm_PontoCorte.Qr_PontoCorteCalcFields(DataSet: TDataSet);
begin
Qr_PontoCortepontocorte.AsFloat:=Qr_PontoCorteQTDORCAM.AsFloat-Qr_PontoCorteESTOQUE.AsFloat;
if Qr_PontoCortepontocorte.AsFloat<0 then
   Qr_PontoCortepontocorte.value:=0;
end;

procedure TFrm_PontoCorte.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_PontoCortepontocorte.AsFloat<>0 then
   begin
   DBGrid1.Canvas.Brush.Color:=clSkyBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_PontoCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PontoCorte.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_PontoCorte.bbImprimirClick(Sender: TObject);
begin
rl_obscab.Caption:='Relação de Produtos em Ponto de Corte.'+fperiodo(0,MDT1.Text,MDT1.Text);

mboolean:=true;
RLBand_cab.Borders.DrawLeft     :=mboolean;
RLBand_cab.Borders.DrawRight    :=mboolean;
RLBand_cab.Borders.DrawTop      :=mboolean;
RLBand_cab.Borders.DrawBottom   :=mboolean;
RLBand_cabgru.Borders.DrawLeft  :=mboolean;
RLBand_cabgru.Borders.DrawRight :=mboolean;
RLBand_cabgru.Borders.DrawBottom:=mboolean;

RLBand_detail.Borders.DrawLeft  :=mboolean;
RLBand_detail.Borders.DrawRight :=mboolean;

lbl_codpro.Borders.DrawRight    :=mboolean;
lbl_descricao.Borders.DrawRight :=mboolean;
lbl_reserva.Borders.DrawRight       :=mboolean;
lbl_und.Borders.DrawRight       :=mboolean;
lbl_entradas.Borders.DrawRight  :=mboolean;
lbl_saidas.Borders.DrawRight    :=mboolean;

edt_codpro.Borders.DrawRight    :=mboolean;
edt_descricao.Borders.DrawRight :=mboolean;
edt_reserva.Borders.DrawRight       :=mboolean;
edt_und.Borders.DrawRight       :=mboolean;
edt_entradas.Borders.DrawRight  :=mboolean;
edt_saidas.Borders.DrawRight    :=mboolean;
RLRodPag.Borders.DrawTop        :=mboolean;

RLReport1.PreviewModal;
end;

end.
