unit S_PedPart_Pend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls, RLReport,db,dbtables;

type
  TFrm_PedPart_Pend = class(TForm)
    PageControl1: TPageControl;
    tsPrincipal: TTabSheet;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    CHAVE: TEdit;
    NOMCLI: TEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbImprimir: TBitBtn;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLImage_cab: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbl_cabempresa: TRLLabel;
    lbl_titulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLSubDet_Resumo: TRLSubDetail;
    RLBand_cabres01: TRLBand;
    RLLabel1: TRLLabel;
    lbl_resumo_pedido: TRLLabel;
    RLBand_cabres02: TRLBand;
    lbl_res_codpro: TRLLabel;
    lbl_res_descricao: TRLLabel;
    lbl_res_und: TRLLabel;
    lbl_res_qtdped: TRLLabel;
    lbl_res_qtdfab: TRLLabel;
    lbl_res_qtdres: TRLLabel;
    RLBand_res_det: TRLBand;
    edt_res_codpro: TRLDBText;
    edt_res_descricao: TRLDBText;
    edt_res_und: TRLDBText;
    edt_res_qtdped: TRLDBText;
    edt_res_qtdfab: TRLDBText;
    edt_res_qtdres: TRLDBText;
    RLBand_resumo_total: TRLBand;
    tot_res_codpro: TRLLabel;
    tot_res_descricao: TRLLabel;
    tot_res_und: TRLLabel;
    tot_res_qtdped: TRLLabel;
    tot_res_qtdfab: TRLLabel;
    tot_res_qtdres: TRLLabel;
    Src_Query5: TDataSource;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand_res_detAfterPrint(Sender: TObject);
    procedure RLBand_resumo_totalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function fGradeRelatorio(pGrade: Boolean): boolean;

  public
    { Public declarations }
  end;

var
  Frm_PedPart_Pend: TFrm_PedPart_Pend;
  mtotped: Real=0;
  mtotfab: Real=0;

implementation

uses S_PedPart, Func, S_DM1;

{$R *.dfm}

procedure TFrm_PedPart_Pend.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedPart_Pend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PedPart_Pend.bbImprimirClick(Sender: TObject);
begin
DM1.Query5.close;
DM1.Query5.sql.clear;
DM1.Query5.sql.add('Select count(*) from CADEMP ');
DM1.Query5.Open;


lbl_cabempresa.Caption:=DM1.Tb_EmpRAZAO.AsString;
lbl_titulo.Caption   :='Pedido Comparado a Produção';
lbl_resumo_pedido.Caption:=CHAVE.Text+'/'+NOMCLI.Text;
fGradeRelatorio(true);
Frm_PedPart.Tb_Ped.First;
mtotped :=0;
mtotfab :=0;
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'CABREL'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');

DM1.Query2.Open;
if not DM1.Query2.Eof then
   begin
   if not (DM1.Query2.Fields[0].IsNull)  and  (DM1.Query2.Fields[0].AsString<>'') then
      begin
      (DM1.Query2.FieldbyName('LSLOGO') as TBlobField).SaveToFile('C:\SGE\CABREL.JPG');
      RLImage_cab.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      RLImage_cab.Visible:=true;
      end
   else
      RLImage_cab.Visible:=false;
   end
else
   RLImage_cab.Visible:=false;
RLReport1.PreviewModal;
end;


function tFrm_PedPart_Pend.fGradeRelatorio(pGrade: Boolean): boolean;
begin
lbl_cabempresa.Borders.DrawBottom     :=pGrade;

RLReport1.Borders.DrawLeft            :=pGrade;
RLReport1.Borders.DrawRight           :=pGrade;
RLReport1.Borders.DrawTop             :=pGrade;
RLReport1.Borders.DrawBottom          :=pGrade;
RLBand_cab.Borders.DrawBottom         :=pGrade;
RLBand_cabres01.Borders.DrawBottom    :=pGrade;
RLBand_cabres02.Borders.DrawBottom    :=pGrade;
lbl_res_codpro.Borders.DrawRight      :=pGrade;
edt_res_codpro.Borders.DrawRight      :=pGrade;
tot_res_codpro.Borders.DrawRight      :=pGrade;
lbl_res_descricao.Borders.DrawRight   :=pGrade;
edt_res_descricao.Borders.DrawRight   :=pGrade;
tot_res_descricao.Borders.DrawRight   :=pGrade;
lbl_res_und.Borders.DrawRight         :=pGrade;
edt_res_und.Borders.DrawRight         :=pGrade;
tot_res_und.Borders.DrawRight         :=pGrade;

lbl_res_qtdped.Borders.DrawRight      :=pGrade;
edt_res_qtdped.Borders.DrawRight      :=pGrade;
tot_res_qtdped.Borders.DrawRight      :=pGrade;

lbl_res_qtdfab.Borders.DrawRight      :=pGrade;
edt_res_qtdfab.Borders.DrawRight      :=pGrade;
tot_res_qtdfab.Borders.DrawRight      :=pGrade;
RLBand_resumo_total.Borders.DrawTop   :=pGrade;
RLBand_resumo_total.Borders.DrawBottom:=pGrade;
RLImage_cab.Borders.DrawRight         :=pGrade;

end;

procedure TFrm_PedPart_Pend.RLBand_res_detAfterPrint(Sender: TObject);
begin
mtotped:=mtotped+Frm_PedPart.Tb_PedQTD.AsFloat;
mtotfab:=mtotfab+Frm_PedPart.Tb_Pedqtdrom.AsFloat;

end;

procedure TFrm_PedPart_Pend.RLBand_resumo_totalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
tot_res_qtdped.Caption:=FormatFloat(mcasqtd, mtotped);
tot_res_qtdfab.Caption:=FormatFloat(mcasqtd, mtotfab);
tot_res_qtdres.Caption:=FormatFloat(mcasqtd, mtotped-mtotfab);
mtotped:=0;
mtotfab:=0;

end;

procedure TFrm_PedPart_Pend.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;
end;

end.
