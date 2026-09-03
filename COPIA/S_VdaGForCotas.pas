unit S_VdaGForCotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, RxMemDS,
  ComCtrls, RLReport, S_SelEmp;

type
  TFrm_VdaGForCotas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_mescpr: TEdit;
    Label2: TLabel;
    edt_anocpr: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edt_mesvda: TEdit;
    edt_anovda: TEdit;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    mem_cadgfor: TRxMemoryData;
    src_cadgfor: TDataSource;
    mem_cadgforCODGFOR: TFloatField;
    mem_cadgforNOMGFOR: TStringField;
    mem_cadgforVALOR_VDA: TFloatField;
    mem_cadgforPERC_LIB: TFloatField;
    mem_cadgforVALOR_LIB: TFloatField;
    mem_cadgforVALOR_AQUI: TFloatField;
    mem_cadgforVALOR_DISP: TFloatField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    CODGFOR: TEdit;
    lbx_codgfor: TListBox;
    OMITIR_GFOR: TCheckBox;
    lbl_vdaper: TLabel;
    PageControl1: TPageControl;
    TsFiltros: TTabSheet;
    TsRelatorio: TTabSheet;
    gb_Resumo: TGroupBox;
    DBGrid1: TDBGrid;
    RLReport1: TRLReport;
    RLBand_cabger: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLBand_cabinfo: TRLBand;
    rlmemo_titulo: TRLMemo;
    RLBand_cabdet: TRLBand;
    lbl_codgfor: TRLLabel;
    lbl_nomgfor: TRLLabel;
    lbl_perccpr: TRLLabel;
    lbl_vlrlib: TRLLabel;
    lbl_VlrGasto: TRLLabel;
    lbl_vlrdisp: TRLLabel;
    RLBand_det: TRLBand;
    txt_codgfor: TRLDBText;
    txt_nomgfor: TRLDBText;
    txt_perccpr: TRLDBText;
    txt_vlrlib: TRLDBText;
    txt_vlrdisp: TRLDBText;
    RLBand_cablogo: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLDBText3: TRLDBText;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLImage1: TRLImage;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLMemo1: TRLMemo;
    RLBand_final: TRLBand;
    txt_VlrGasto: TRLDBText;
    mem_cadgforPERC_AQUI: TFloatField;
    mem_cadgforPERC_DISP: TFloatField;
    lbl_PercGasto: TRLLabel;
    lbl_Percdisp: TRLLabel;
    txt_PercGasto: TRLDBText;
    txt_Percdisp: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure edt_mescprExit(Sender: TObject);
    procedure edt_anocprExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure CODGFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_VdaGForCotas: TFrm_VdaGForCotas;
  mValorVda_Periodo:Real;

implementation

uses S_DM1, Func, func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_VdaGForCotas.FormCreate(Sender: TObject);
begin
edt_mescpr.Text:=FormatDateTime('mm',date);
edt_anocpr.Text:=FormatDateTime('yyyy',date);
if valint(edt_mescpr.Text)<2 then
   begin
   edt_mesvda.Text:='12';
   edt_anovda.Text:=FormatDateTime('yyyy',Date);
   end
else
   begin
   edt_mesvda.Text:=FormatFloat('00', valint(edt_mescpr.text)-1);
   edt_anovda.Text:=FormatFloat('0000',valint(edt_anocpr.text));
   end;

mem_cadgforVALOR_VDA.DisplayFormat :=mcasas;
mem_cadgforPERC_LIB.DisplayFormat  :=mcasas_pct;
mem_cadgforVALOR_LIB.DisplayFormat :=mcasas;
mem_cadgforVALOR_AQUI.DisplayFormat:=mcasas;
mem_cadgforPERC_AQUI.DisplayFormat :=mcasas_pct;

mem_cadgforVALOR_DISP.DisplayFormat:=mcasas;
mem_cadgforPERC_DISP.DisplayFormat  :=mcasas_pct;

if codusr=1111 then
   TsRelatorio.TabVisible:=true
else
   TsRelatorio.TabVisible:=false;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_VdaGForCotas.edt_mescprExit(Sender: TObject);
begin
if (valint(edt_mescpr.Text)<1) or (valint(edt_mescpr.Text)>12) then
   begin
   fmensagem('mês inválido!',0,['0'],0);
   edt_mescpr.SetFocus;
   end;
end;

procedure TFrm_VdaGForCotas.edt_anocprExit(Sender: TObject);
begin
if valint(edt_anocpr.text)<=0 then
   FormatFloat('0000', date);
FormatFloat('0000', valint(edt_anocpr.text));
end;

procedure TFrm_VdaGForCotas.Panel1Exit(Sender: TObject);
begin
if valint(edt_mescpr.Text)>0 then
   begin
   if valint(edt_mescpr.Text)<2 then
      begin
      edt_mesvda.Text:='12';
      edt_anovda.Text:=FormatFloat('00', valint(edt_anocpr.text)-1);
      end
   else
      begin
      edt_mesvda.Text:=FormatFloat('00', valint(edt_mescpr.text)-1);
      edt_anovda.Text:=FormatFloat('00', valint(edt_anocpr.text));
      end;
   end;
end;

procedure TFrm_VdaGForCotas.bbAplicarClick(Sender: TObject);
var
mDataIni_Vda,mDataFin_Vda: TDateTime;
mDataIni_CPR,mDataFin_CPR: TDateTime;
pDataPesq: String;
begin
mDataIni_CPR:=StrToDate('01/'+
                      FormatFloat('00',valint(edt_mescpr.text))
                      +'/'
                      +FormatFloat('0000',valint(edt_anocpr.text))
                      );
mDataFin_CPR:=fultdiames(mDataIni_CPR);

mDataIni_Vda:=StrToDate('01/'+
                      FormatFloat('00',valint(edt_mesvda.text))
                      +'/'
                      +FormatFloat('0000',valint(edt_anovda.text))
                      );
mDataFin_Vda:=fultdiames(mDataIni_Vda);



dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add('SELECT GFCODGRU,GFNOME,GFPERCPRFAT FROM CADGFOR ');
if not DM1.Qr_TID.Locate('TINOME','CADGRU',[]) then
   begin
   dm1.Query2.SQL.Add(' where GFCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end
else
   mcinst:=' where ';
mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   DM1.Query2.SQL.Add(mcinst+' GFCODGRU '+mcinst2);

DM1.Query2.SQL.add(' order by GFNOME');
try
   DM1.Query2.Open;
except
   ex_erroSql_Novo(DM1.Query2,144,'frm_vdagforcotas','CADGFOR');
   exit;
   end;
mem_cadgfor.Close;
mem_cadgfor.Open;
mem_cadgfor.append;
mem_cadgforCODGFOR.Value   :=0;
mem_cadgforNOMGFOR.Value   :='Sem Grupo';
mem_cadgforVALOR_VDA.Value :=0;
mem_cadgforPERC_LIB.Value  :=0;
mem_cadgforVALOR_LIB.Value :=0;
mem_cadgforVALOR_AQUI.Value:=0;
mem_cadgforVALOR_DISP.Value:=0;
mem_cadgfor.Post;
While not DM1.Query2.Eof do
   begin
   mem_cadgfor.append;
   mem_cadgforCODGFOR.Value   :=DM1.Query2.fieldbyName('GFCODGRU').AsFloat;
   mem_cadgforNOMGFOR.Value   :=DM1.Query2.fieldbyName('GFNOME').AsString;
   mem_cadgforVALOR_VDA.Value :=0;
   mem_cadgforPERC_LIB.Value  :=DM1.Query2.fieldbyName('GFPERCPRFAT').AsFloat;
   mem_cadgforVALOR_LIB.Value :=0;
   mem_cadgforVALOR_AQUI.Value:=0;
   mem_cadgforVALOR_DISP.Value:=0;
   mem_cadgfor.Post;
   DM1.Query2.Next;
   end;

if DM1.Qr_Tid.Locate('TINOME','CADdAR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

mValorVda_Periodo:=fVendaPeriodo(0,la_Empresas,FormatDateTime(fdt2, mDataIni_Vda)
                    ,FormatDateTime(fdt2, mDatafin_Vda));
lbl_vdaper.Caption:='Venda do Periodo: '+Formatfloat(mcasas, mValorVda_Periodo);
lbl_vdaPer.visible:=true;
la_tabelas  :='';
la_instrucao:='';
la_join     :='';



pDataPesq:='PF1DATAENT';

if DM1.Qr_Tid.Locate('TINOME','CADPF1',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(0,'CADFOR','FCODEMP','PF2CODEMP','FCODFOR','PF1CODFOR');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADGFOR','GFCODEMP','FCODEMP','GFCODGRU','FCODGFOR');

DM1.Query3.close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select GFCODGRU,GFNOME,GFPERCPRFAT,sum(PF1TOTLIQ) AS VALOR_CPR '
                  +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas

                 +'       '+la_Join
                 +'       where PF1STATUS<9 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
DM1.Query3.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt, mDataIni_CPR)+chr(39));
DM1.Query3.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt, mDataFin_CPR)+chr(39));

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   DM1.Query3.SQL.Add(' and GFCODGRU '+mcinst2);
DM1.Query3.SQL.add(' group by GFCODGRU,GFNOME,GFPERCPRFAT ');

//DM1.Query3.SQL.savetofile('c:\sql.txt');

try
   DM1.Query3.Open;
except
   DM1.Query3.SQL.savetofile('c:\sql.txt');
   end;

While not DM1.Query3.Eof do
   begin
   mem_cadgfor.First;
   if mem_cadgfor.Locate('CODGFOR',DM1.Query3.fieldbyName('GFCODGRU').asFloat,[]) then
      mem_cadgfor.edit
   else
      begin
      mem_cadgfor.append;
      mem_cadgforCODGFOR.Value   :=DM1.Query3.fieldbyName('GFCODGRU').AsFloat;
      mem_cadgforNOMGFOR.Value   :=DM1.Query3.fieldbyName('GFNOME').AsString;
      mem_cadgforVALOR_VDA.Value :=0;
      mem_cadgforPERC_LIB.Value  :=DM1.Query3.fieldbyName('GFPERCPRFAT').AsFloat;
      mem_cadgforVALOR_LIB.Value :=0;
      mem_cadgforVALOR_AQUI.Value:=0;
      mem_cadgforVALOR_DISP.Value:=0;
      end;
   mem_cadgforVALOR_AQUI.Value :=mem_cadgforVALOR_AQUI.Value+
                               DM1.Query3.fieldbyName('VALOR_CPR').AsFloat;
   mem_cadgfor.Post;
   DM1.Query3.Next;

   end;

mem_cadgfor.First;
While not mem_cadgfor.Eof do
   begin
   mem_cadgfor.Edit;

   mem_cadgforVALOR_VDA.AsFloat:=mValorVda_Periodo;
   mem_cadgforVALOR_LIB.AsFloat:=Arredonda( (mValorVda_Periodo*mem_cadgforPERC_LIB.AsFloat/100) , DM1.Tb_PargerPCASAS.AsInteger);

   mem_cadgforVALOR_DISP.AsFloat:=mem_cadgforVALOR_LIB.AsFloat-
                               mem_cadgforVALOR_AQUI.AsFloat;
   mem_cadgfor.Post;
   mem_cadgfor.Next;
   end;





end;

procedure TFrm_VdaGForCotas.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_VdaGForCotas.CODGFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFOR(0,'frm_Vend_RelGFor',Key);
   if trim(CODGFOR.Text)<>'' then
      CODGFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_VdaGForCotas.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VdaGForCotas.bbImprimirClick(Sender: TObject);
var
x: Integer;
mboolean: boolean;
begin

DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'CABREL'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');
DM1.Query2.Open;
RLBand_cablogo.Visible:=false;
RLBand_cabger.Visible :=true;

if not DM1.Query2.IsEmpty then
   begin
   if not (DM1.Query2.Fields[0].IsNull)  and  (DM1.Query2.Fields[0].AsString<>'') then
      begin
      (DM1.Query2.FieldbyName('LSLOGO') as TBlobField).SaveToFile('C:\SGE\CABREL.JPG');
      RLImage1.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      RLBand_cablogo.Visible:=true;
      RLBand_cabger.Visible :=false;
      end;
   end;
rlmemo_titulo.Lines.Clear;
rlmemo_titulo.Lines.Add('Compras do Mês '+edt_mescpr.Text+'/'+edt_anocpr.Text);
rlmemo_titulo.Lines.Add('Comparado as Vendas do Mês '+edt_mesvda.Text+'/'+edt_anovda.Text+'. Valor da Venda: '+lbl_vdaper.Caption);
mboolean:=true;
RLReport1.Borders.DrawLeft       :=mboolean;
RLReport1.Borders.DrawTop        :=mboolean;
RLReport1.Borders.DrawRight      :=mboolean;
RLReport1.Borders.DrawBottom     :=mboolean;
RLBand_cablogo.Borders.DrawBottom:=mboolean;
RLBand_cabger.Borders.DrawBottom :=mboolean;
RLBand_cabinfo.Borders.DrawBottom:=mboolean;
RLImage1.Borders.DrawRight       :=mboolean;

lbl_codgfor.Borders.DrawRight    :=mboolean;
lbl_nomgfor.Borders.DrawRight    :=mboolean;
lbl_perccpr.Borders.DrawRight    :=mboolean;
lbl_vlrlib.Borders.DrawRight     :=mboolean;
lbl_VlrGasto.Borders.DrawRight   :=mboolean;
//lbl_vlrdisp.Borders.DrawRight    :=mboolean;


txt_codgfor.Borders.DrawRight    :=mboolean;
txt_nomgfor.Borders.DrawRight    :=mboolean;
txt_perccpr.Borders.DrawRight    :=mboolean;
txt_vlrlib.Borders.DrawRight     :=mboolean;
txt_VlrGasto.Borders.DrawRight   :=mboolean;
//txt_vlrdisp.Borders.DrawRight    :=mboolean;
RLBand_final.Borders.DrawTop     :=mboolean;







if lbx_codgfor.Items.Count>0 then
   begin
   for x:=0 to lbx_codgfor.items.count-1 do
      begin
      rlmemo_titulo.Lines.Add(iif(OMITIR_GFOR.Checked,'Sem o ','')+'Grupo de Fornecedor: '+ lbx_codgfor.Items[x]);
      end;
   end;
RLReport1.PreviewModal;
end;

procedure TFrm_VdaGForCotas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (DataCol=2) or (DataCol=3) then
   DBGrid1.Canvas.Brush.Color := $0000FF80
else if (DataCol=4) or (DataCol=5) then
   DBGrid1.Canvas.Brush.Color := $009B9BFF
else if (DataCol=6) or (DataCol=7) then
   DBGrid1.Canvas.Brush.Color := $0000FF80;
DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_VdaGForCotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_VdaGForCotas.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
