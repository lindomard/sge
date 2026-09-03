unit S_PedxIndustria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  RxMemDS, Mask, ToolEdit, CurrEdit, Menus, ComCtrls, RLReport,S_ConsLot
  ,s_lerarq_geral;

type
  TFrm_PedxIndustria = class(TForm)
    src_subtot: TDataSource;
    qr_pedida: TQuery;
    qr_pedidaP2CODPRO: TFloatField;
    qr_pedidaPDNOME: TStringField;
    qr_pedidaPDUND: TStringField;
    qr_pedidaP2PRECO: TFloatField;
    qr_pedidaP2TOTDES: TFloatField;
    qr_pedidaP2TOTLIQ: TFloatField;
    qr_pedidaP2QTD: TFloatField;
    mem_subtot: TRxMemoryData;
    mem_subtotP2CODPRO: TFloatField;
    mem_subtotPDNOME: TStringField;
    mem_subtotPDUND: TStringField;
    mem_subtotP2PRECO: TFloatField;
    mem_subtotP2TOTDES: TFloatField;
    mem_subtotP2TOTLIQ: TFloatField;
    mem_subtotP2QTDPED: TFloatField;
    mem_subtotP2QTDFAB: TFloatField;
    mem_subtotP2QTDREST: TFloatField;
    qr_op01: TQuery;
    qr_op01OP01_CODEMP: TFloatField;
    qr_op01OP01_LOTSEQ: TFloatField;
    qr_op01OP01_CHAVE: TFloatField;
    qr_op01OP01_CHAVEOP: TFloatField;
    qr_op01OP01_DATAHORA: TDateTimeField;
    qr_op01OP01_CODPRO: TFloatField;
    qr_op01OP01_QTDPREV: TFloatField;
    qr_op01OP01_QTDREAL: TFloatField;
    qr_op01PDNOME: TStringField;
    qr_op01PDMARCA: TStringField;
    qr_op01PDUND: TStringField;
    src_op01: TDataSource;
    qr_op02: TQuery;
    src_op02: TDataSource;
    qr_op02OP02_CODEMP: TFloatField;
    qr_op02OP02_LOTSEQ: TFloatField;
    qr_op02OP02_CHAVE: TFloatField;
    qr_op02OP02_CHAVEOP: TFloatField;
    qr_op02OP02_CODMP: TFloatField;
    qr_op02OP02_QTDPREV: TFloatField;
    qr_op02OP02_QTDUTIL: TFloatField;
    qr_op02PDNOME: TStringField;
    qr_op02PDMARCA: TStringField;
    qr_op02PDUND: TStringField;
    mem_subtotP2CODEMP: TFloatField;
    mem_subtotP2LOTSEQ: TFloatField;
    mem_subtotP2CHAVE: TFloatField;
    mem_editmp: TRxMemoryData;
    src_edittmp: TDataSource;
    mem_editmpOP2_CODEMP: TFloatField;
    mem_editmpOP2_LOTSEQ: TFloatField;
    mem_editmpOP2_CHAVE: TFloatField;
    mem_editmpOP2_CHAVEOP: TFloatField;
    mem_editmpOP2_CODMP: TFloatField;
    mem_editmpOP2_QTDPREV: TFloatField;
    mem_editmpOP2_QTDUTIL: TFloatField;
    mem_editmpNOMPRO: TStringField;
    mem_editmpUND: TStringField;
    mem_editmpMARCA: TStringField;
    pop_mp: TPopupMenu;
    ExluirItem1: TMenuItem;
    PageControl1: TPageControl;
    tsGerais: TTabSheet;
    tsRelatorio: TTabSheet;
    gb_rodape: TGroupBox;
    Panel_cabedit: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    edt_codpro: TEdit;
    edt_nompro: TEdit;
    edt_qtd: TCurrencyEdit;
    gb_editormp: TGroupBox;
    Panel_digmp: TPanel;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    edt_codmp: TEdit;
    edt_nommp: TEdit;
    edt_qtdmp: TCurrencyEdit;
    Panel_gridmp: TPanel;
    DBGrid_editmp: TDBGrid;
    gb_opcoes: TGroupBox;
    bbIncluir: TBitBtn;
    bbAlterar: TBitBtn;
    bbExcluir: TBitBtn;
    bbGravar: TBitBtn;
    bbCancelar: TBitBtn;
    Panel_mp: TPanel;
    gb_op01: TGroupBox;
    DBGrid_op01: TDBGrid;
    gb_mputilizadas: TGroupBox;
    DBGrid_op02: TDBGrid;
    Panel_perdidas: TPanel;
    gb_pedidas: TGroupBox;
    DBGrid_subtot: TDBGrid;
    gb_cabecalho: TGroupBox;
    Label1: TLabel;
    Label18: TLabel;
    SB1: TSpeedButton;
    edt_chave: TEdit;
    edt_nomcli: TEdit;
    edt_cidade: TEdit;
    edt_lotseq: TEdit;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLImage_cab: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbl_cabempresa: TRLLabel;
    lbl_titulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    Src_Impres: TDataSource;
    Qr_Impres: TQuery;
    RLSubDet_Resumo: TRLSubDetail;
    RLBand_cabres01: TRLBand;
    RLBand_cabres02: TRLBand;
    RLLabel1: TRLLabel;
    lbl_resumo_pedido: TRLLabel;
    RLBand_res_det: TRLBand;
    lbl_res_codpro: TRLLabel;
    edt_res_codpro: TRLDBText;
    lbl_res_descricao: TRLLabel;
    edt_res_descricao: TRLDBText;
    lbl_res_und: TRLLabel;
    edt_res_und: TRLDBText;
    lbl_res_qtdped: TRLLabel;
    edt_res_qtdped: TRLDBText;
    lbl_res_qtdfab: TRLLabel;
    edt_res_qtdfab: TRLDBText;
    lbl_res_qtdres: TRLLabel;
    edt_res_qtdres: TRLDBText;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLBand_resumo_total: TRLBand;
    tot_res_codpro: TRLLabel;
    tot_res_descricao: TRLLabel;
    tot_res_und: TRLLabel;
    tot_res_qtdped: TRLLabel;
    tot_res_qtdfab: TRLLabel;
    tot_res_qtdres: TRLLabel;
    bbAtualizar: TBitBtn;
    bbCancEstoque: TBitBtn;
    qr_op01OP01_STATUS: TFloatField;
    qr_op01OP01_LOTE: TStringField;
    qr_op01OP01_DTVCTO: TDateTimeField;
    qr_op02OP02_LOTE: TStringField;
    qr_op02OP02_DTVCTO: TDateTimeField;
    st_lote: TStaticText;
    st_dtvcto: TStaticText;
    edt_lote: TEdit;
    edt_dtvcto: TMaskEdit;
    stmp_lote: TStaticText;
    edtmp_lote: TEdit;
    stmp_dtvcto: TStaticText;
    edtmp_dtvcto: TMaskEdit;
    mem_editmpOP2_LOTE: TStringField;
    mem_editmpOP2_DTVCTO: TDateTimeField;
    procedure SB1Click(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure src_subtotDataChange(Sender: TObject; Field: TField);
    procedure src_op01DataChange(Sender: TObject; Field: TField);
    procedure edt_codmpKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codmpExit(Sender: TObject);
    procedure edt_qtdmpExit(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure DBGrid_editmpExit(Sender: TObject);
    procedure edt_codmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExluirItem1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand_res_detAfterPrint(Sender: TObject);
    procedure RLBand_resumo_totalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure DBGrid_op01DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbAtualizarClick(Sender: TObject);
    procedure edtmp_loteExit(Sender: TObject);
    procedure edtmp_loteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbCancEstoqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fGradeRelatorio(pGrade: Boolean): boolean;
    function fAtualizarEstoque(ptipo: Integer):Boolean;

  public
    { Public declarations }
    form_conslot_pedxindustria: TFrm_ConsLot;
    function fCarregarTempMP(ptipo: Integer): Boolean;
    function fGravarMateriasPrimas(ptipo: Integer): Boolean;

  end;
function fPedxIndCarregaDados(pTipo: Integer): Boolean;

var
  Frm_PedxIndustria: TFrm_PedxIndustria;
  mpedind_codemp: Integer=0;
  moper_itemmp: Integer=0;
  mPos_itemMp: TBookmark;

  moper_itemOp01: Integer=0;
  mPos_itemOP01: TBookmark;
  mChave_Op: Real=0;
  mtotped: Real=0;
  mtotfab: Real=0;

implementation

uses S_PedCli, Func, lerarq, S_DM1, func_excecoes, Math;

{$R *.dfm}

procedure TFrm_PedxIndustria.SB1Click(Sender: TObject);
begin
if Frm_PedCli=nil then
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
Frm_PedCli.ShowModal;
edt_chave.Text:=Frm_PedCli.chave.Text;
mpedind_codemp:=Frm_PedCli.Tb_PedP1CODEMP.AsInteger;
edt_lotseq.Text:=Frm_PedCli.Tb_PedP1LOTSEQ.AsString;
Frm_PedCli.Free;
Frm_PedCli:=nil;
if fsonumero(edt_chave.Text)>0 then
   begin
   if not flcadp01(0,mpedind_codemp,valint(edt_lotseq.Text),edt_chave.Text,'') then
      begin
      fmensagem('Chave não Encontrada!',0,['0'],0);
      edt_chave.SetFocus;
      end
   else
      begin
      fPedxIndCarregaDados(1);
      end;
   end;

end;
function fPedxIndCarregaDados(pTipo: Integer): Boolean;
begin
DM1.Query2.close;
DM1.Query2.SQL.clear;
DM1.Query2.SQL.Add('Select CRAZAO,CDENOM,CCIDADE,CUF from CADCLI '
                  +' where '+
                 fla_EmpBaixaAlta(0,'CADCLI','',DM1.Tb_Ped01P1CODEMP.AsInteger,'CCODEMP',' and ')
                 +' CCODCLI=0'+DM1.Tb_Ped01P1CODCLI.AsString);
try
   DM1.Query2.Open;
except
   end;
Frm_PedxIndustria.edt_nomcli.Text:=DM1.Query2.fieldbyName('CRAZAO').AsString+'-'
                                  +DM1.Query2.fieldbyName('CDENOM').AsString+'['
                                  +DM1.Tb_Ped01P1CODCLI.AsString+']';

Frm_PedxIndustria.edt_cidade.Text:=DM1.Query2.fieldbyName('CCIDADE').AsString+'-'
                                  +DM1.Query2.fieldbyName('CUF').AsString;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString;
fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

Frm_PedxIndustria.qr_pedida.Close;
Frm_PedxIndustria.qr_pedida.SQL.Clear;
Frm_PedxIndustria.qr_pedida.SQL.add('Select P2CODPRO,PDNOME,PDUND, '
                                   +' max(P2PRECO) as P2PRECO,sum(P2TOTDES) as P2TOTDES'
                                   +',sum(P2TOTLIQ) as  P2TOTLIQ'
                                   +',sum(P2QTD) as P2QTD '
                                   +' FROM CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                   +'       '+la_Join
                                   +'       where '+la_instrucao
                                   +iif(la_instrucao='','',' and ')
                                   +' P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                                   +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                                   +' and P2ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                                   +' group by P2CODPRO,PDNOME,PDUND '

                                   );
Frm_PedxIndustria.qr_pedida.Open;
Frm_PedxIndustria.mem_subtot.Close;
Frm_PedxIndustria.mem_subtot.Open;
While not Frm_PedxIndustria.qr_pedida.Eof do
   begin
   if not Frm_PedxIndustria.mem_subtot.Locate('P2CODPRO',
                             Frm_PedxIndustria.qr_pedidaP2CODPRO.AsFloat,[]) then
      begin
      Frm_PedxIndustria.mem_subtot.Append;
      Frm_PedxIndustria.mem_subtotP2CODPRO.AsFloat:=Frm_PedxIndustria.qr_pedidaP2CODPRO.AsFloat;
      Frm_PedxIndustria.mem_subtotPDNOME.AsString :=Frm_PedxIndustria.qr_pedidaPDNOME.AsString;
      Frm_PedxIndustria.mem_subtotPDUND.AsString  :=Frm_PedxIndustria.qr_pedidaPDUND.AsString;
      Frm_PedxIndustria.mem_subtotP2PRECO.AsFloat :=Frm_PedxIndustria.qr_pedidaP2PRECO.AsFloat;
      Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat   :=0;
      Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat   :=0;
      Frm_PedxIndustria.mem_subtotP2QTDREST.AsFloat  :=0;

      Frm_PedxIndustria.mem_subtotP2TOTDES.AsFloat   :=0;
      Frm_PedxIndustria.mem_subtotP2TOTLIQ.AsFloat   :=0;
      end
   else
      Frm_PedxIndustria.mem_subtot.Edit;
   Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat   :=Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat
                                                  +Frm_PedxIndustria.qr_pedidaP2QTD.AsFloat;

   Frm_PedxIndustria.mem_subtotP2QTDREST.AsFloat  :=Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat
                                                  -Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat;

   Frm_PedxIndustria.mem_subtotP2TOTDES.AsFloat:=Frm_PedxIndustria.mem_subtotP2TOTDES.AsFloat
                                                +Frm_PedxIndustria.qr_pedidaP2TOTDES.AsFloat;
   Frm_PedxIndustria.mem_subtotP2TOTLIQ.AsFloat:=Frm_PedxIndustria.mem_subtotP2TOTLIQ.AsFloat
                                                +Frm_PedxIndustria.qr_pedidaP2TOTLIQ.AsFloat;
   Frm_PedxIndustria.mem_subtot.Post;

   Frm_PedxIndustria.qr_pedida.Next;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString;
fInnerJoin(0,'CADPRO','PDCODEMP','OP01_CODEMP','PDCODPRO','OP01_CODPRO');
DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('SELECT sum(OP01_QTDREAL) as QTDPROD '
                  +' ,max(OP01_CODPRO) AS CODPRO, PDNOME,PDMARCA,PDUND '
                  +' FROM CADP02_OP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao
                  +iif(la_instrucao='','',' and ')
                  +' OP01_LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                  +' and OP01_CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                  +' group by OP01_CODPRO,PDNOME,PDMARCA,PDUND '  );
try
   DM1.Query2.Open;
except
   DM1.Query2.sql.savetofile('c:\sql.txt');
   end;
While not DM1.Query2.eof do
   begin
   if not Frm_PedxIndustria.mem_subtot.Locate('P2CODPRO',DM1.Query2.fieldbyName('CODPRO').AsFloat,[]) then
      begin
      Frm_PedxIndustria.mem_subtot.Append;
      Frm_PedxIndustria.mem_subtotP2CODPRO.AsFloat:=DM1.Query2.fieldbyName('CODPRO').AsFloat;
      Frm_PedxIndustria.mem_subtotPDNOME.AsString :=DM1.Query2.fieldbyName('PDNOME').AsString;
      Frm_PedxIndustria.mem_subtotPDUND.AsString  :=DM1.Query2.fieldbyName('PDUND').AsString;
      Frm_PedxIndustria.mem_subtotP2PRECO.AsFloat :=0;
      Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat   :=0;
      Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat   :=DM1.Query2.fieldbyName('QTDPROD').AsFloat;
      Frm_PedxIndustria.mem_subtotP2QTDREST.AsFloat  :=0;

      Frm_PedxIndustria.mem_subtotP2TOTDES.AsFloat   :=0;
      Frm_PedxIndustria.mem_subtotP2TOTLIQ.AsFloat   :=0;
      end
   else
      Frm_PedxIndustria.mem_subtot.Edit;
   Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat   :=Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat
                                                  +DM1.Query2.fieldbyName('QTDPROD').AsFloat;
   Frm_PedxIndustria.mem_subtotP2QTDREST.AsFloat  :=Frm_PedxIndustria.mem_subtotP2QTDPED.AsFloat
                                                  -Frm_PedxIndustria.mem_subtotP2QTDFAB.AsFloat;

   Frm_PedxIndustria.mem_subtot.Post;
   DM1.Query2.Next;

   end;

result:=true;


end;

procedure TFrm_PedxIndustria.edt_chaveExit(Sender: TObject);
begin
edt_chave.Text:=fdeixanum2(edt_chave.text);
if fsonumero(edt_chave.Text)>0 then
   begin
   if not flcadp01(0,mpedind_codemp,valint(edt_lotseq.Text),edt_chave.Text,'') then
      begin
      fmensagem('Chave não Encontrada!',0,['0'],0);
      edt_chave.SetFocus;
      end
   else
      begin
      fPedxIndCarregaDados(0);
      end;
   end;

end;

procedure TFrm_PedxIndustria.src_subtotDataChange(Sender: TObject;
  Field: TField);
begin

if (mem_subtotP2CODPRO.IsNull) then
   Frm_PedxIndustria.qr_op01.Close
else
   begin
   if (not Frm_PedxIndustria.qr_op01.Active) or
      (Frm_PedxIndustria.qr_op01OP01_CODPRO.AsFloat<>mem_subtotP2CODPRO.AsFloat) then
      begin
      gb_OP01.Caption:='OP Produto: '+mem_subtotPDNOME.AsString;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas :=' OP01_CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString;
      fInnerJoin(0,'CADPRO','PDCODEMP','OP01_CODEMP','PDCODPRO','OP01_CODPRO');
      Frm_PedxIndustria.qr_op01.Close;
      Frm_PedxIndustria.qr_op01.SQL.Clear;
      Frm_PedxIndustria.qr_op01.SQL.add('SELECT OP01_CODEMP,OP01_LOTSEQ, '
                                         +' OP01_CHAVE,OP01_CHAVEOP,OP01_DATAHORA, '
                                         +' OP01_CODPRO,OP01_QTDPREV,OP01_QTDREAL '
                                         +' ,PDNOME,PDMARCA,PDUND,OP01_STATUS,OP01_LOTE,OP01_DTVCTO '
                                         +' FROM CADP02_OP01 '+iif(la_tabelas='','',',')+la_tabelas
                                         +'       '+la_Join
                                         +'       where '+la_instrucao
                                         +iif(la_instrucao='','',' and ')
                                         +' OP01_LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                                         +' and OP01_CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                                         +' and OP01_CODPRO=0'+mem_subtotP2CODPRO.AsString);
      Frm_PedxIndustria.qr_op01.SQL.add(' order by OP01_CHAVEOP ');
      try
         Frm_PedxIndustria.qr_op01.Open;
      except
         Frm_PedxIndustria.qr_op01.sql.savetofile('c:\sql.txt');

         end;
      end;
   end;

end;

procedure TFrm_PedxIndustria.src_op01DataChange(Sender: TObject;
  Field: TField);
begin
if (Frm_PedxIndustria.qr_op01OP01_CHAVE.IsNull) then
   begin
   Frm_PedxIndustria.qr_op02.Close;
   bbAtualizar.Enabled  :=false;
   bbCancEstoque.Enabled:=false;
   end
else
   begin
   if qr_op01OP01_STATUS.AsInteger=0 then
      begin
      bbAtualizar.Enabled  :=true;
      bbCancEstoque.Enabled:=false;
      end
   else
      begin
      bbAtualizar.Enabled  :=false;
      bbCancEstoque.Enabled:=true;
      end;


   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :=' OP02_CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString;
   fInnerJoin(0,'CADPRO','PDCODEMP','OP02_CODEMP','PDCODPRO','OP02_CODMP');
   Frm_PedxIndustria.qr_op02.Close;
   Frm_PedxIndustria.qr_op02.SQL.Clear;
   Frm_PedxIndustria.qr_op02.SQL.add('SELECT OP02_CODEMP,OP02_LOTSEQ, '
                                    +' OP02_CHAVE,OP02_CHAVEOP, '
                                    +' OP02_CODMP,OP02_QTDPREV,OP02_QTDUTIL '
                                    +',PDNOME,PDMARCA,PDUND,OP02_LOTE,OP02_DTVCTO '
                                    +' FROM CADP02_OP02 '+iif(la_tabelas='','',',')+la_tabelas
                                      +'       '+la_Join
                                      +'       where '+la_instrucao
                                      +iif(la_instrucao='','',' and ')
                                      +' OP02_LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                                      +' and OP02_CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                                      +' and OP02_CHAVEOP=0'+Frm_PedxIndustria.qr_op01OP01_CHAVEOP.AsString);
   Frm_PedxIndustria.qr_op02.Open;
   end;
end;

procedure TFrm_PedxIndustria.edt_codmpKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codmp.text:=fChamaPro(0,'frm_pedxindustria',key);
   key:=#0;
   edt_codmpExit(self);
   end;

end;

procedure TFrm_PedxIndustria.edt_codmpExit(Sender: TObject);
begin
if not flcadpro(1,0,0,fdeixanum(edt_codmp.Text)) then
   begin
   edt_codmp.Text:=FloatToStr(fAchaCodigoOri(edt_codmp.Text));
   if not flcadpro(1,0,0,edt_codmp.Text) then
      begin
      if not (edt_qtdmp.Focused) then
         Exit
      else
         begin
         fMensagem('Matéria Prima não cadastrado!',0,['0'],0);
         edt_codmp.SetFocus;
         exit;
         end;
      end;
   edt_codmp.Text:=DM1.Tb_ProPDCODPRO.AsString;
   end;
edt_codmp.Text:=DM1.Tb_ProPDCODPRO.AsString;
edt_nommp.Text:=DM1.Tb_ProPDNOME.Value;

end;

procedure TFrm_PedxIndustria.edt_qtdmpExit(Sender: TObject);
begin
if edt_qtdmp.Value<=0 then
   edt_qtdmp.Value:=0;

if (not edt_codpro.Focused) and (not edtmp_lote.Focused) and (edt_qtdmp.value>0)
   and (fSonumero(edt_codpro.Text)>0) then
   begin
   if moper_itemmp=1 then
      begin
      mem_editmp.GotoBookmark(mPos_itemMp);
      mem_editmp.Edit;
      end
   else
      begin
      mem_editmp.First;
      mem_editmp.Insert;
      end;
   mem_editmpOP2_CODEMP.Value   :=qr_op01OP01_CODEMP.AsFloat;
   mem_editmpOP2_LOTSEQ.Value   :=qr_op01OP01_LOTSEQ.AsFloat;
   mem_editmpOP2_CHAVE.Value    :=qr_op01OP01_CHAVE.AsFloat;
   mem_editmpOP2_CHAVEOP.Value  :=mChave_Op;
   mem_editmpOP2_CODMP.Value    :=ValFloat(edt_codmp.Text);
   mem_editmpOP2_QTDPREV.Value  :=edt_qtdmp.Value;
   mem_editmpOP2_QTDUTIL.Value  :=edt_qtdmp.Value;
   mem_editmpOP2_LOTE.Value     :=edtmp_lote.Text;
   if trim(edtmp_dtvcto.Text)<>'/  /' then
      mem_editmpOP2_DTVCTO.AsDateTime:=StrTodate(edtmp_dtvcto.Text);
   mem_editmpNOMPRO.Value       :=edt_nommp.text;
   mem_editmp.Post;
   moper_itemmp:=0;
   edt_codmp.Text :='';
   edt_nommp.Text :='';
   edt_qtdmp.Value:=0;
   edt_codmp.setfocus;
   end
else if DBGrid_editmp.focused then
   edt_codmp.setfocus;

end;

procedure TFrm_PedxIndustria.bbIncluirClick(Sender: TObject);
begin
if mem_subtot.IsEmpty then
   exit;
if mem_subtotP2QTDREST.AsFloat<=0 then
   begin
   fmensagem('o Produto: '+mem_subtotPDNOME.AsString+' ja foi produzido todo!',0,['0'],0 );
   exit;
   end;


bbIncluir.Enabled :=false;
bbAlterar.Enabled :=false;
bbExcluir.Enabled :=false;
bbCancelar.Enabled:=true;
bbGravar.Enabled  :=true;


edt_codpro.text:=mem_subtotP2CODPRO.AsString;
edt_nompro.text:=mem_subtotPDNOME.AsString;
edt_qtd.Value  :=mem_subtotP2QTDREST.Value;

moper_itemOp01:=0;
mPos_itemOP01:=mem_subtot.GetBookmark;
mChave_Op     :=0;
mem_editmp.close;
mem_editmp.open;
edt_qtd.setfocus;
end;

procedure TFrm_PedxIndustria.bbAlterarClick(Sender: TObject);
begin

if mem_subtot.IsEmpty then
   exit;
if qr_op01OP01_STATUS.AsInteger>0 then
   begin
   fmensagem('Esta Ordem de Produção ja foi Atualizada, favor cancelar a atualização!',0,['0'],0);
   exit;
   end;
   
moper_itemOp01:=1;
mPos_itemOP01 :=qr_op01.GetBookmark;
mChave_Op     :=qr_op01OP01_CHAVEOP.AsFloat;
bbIncluir.Enabled :=false;
bbAlterar.Enabled :=false;
bbExcluir.Enabled :=false;
bbCancelar.Enabled:=true;
bbGravar.Enabled  :=true;

edt_codpro.text:=mem_subtotP2CODPRO.AsString;
edt_nompro.text:=mem_subtotPDNOME.AsString;
edt_qtd.Value  :=qr_op01OP01_QTDPREV.AsFloat;
fCarregarTempMP(0);
edt_qtd.setfocus;
end;

procedure TFrm_PedxIndustria.bbCancelarClick(Sender: TObject);
begin
bbIncluir.Enabled :=true;
bbAlterar.Enabled :=true;
bbExcluir.Enabled :=true;
bbCancelar.Enabled:=false;
bbGravar.Enabled  :=false;
mem_editmp.close;
edt_codmp.text:='';
edt_nommp.text:='';
edt_qtdmp.text:='';
edt_codpro.text:='';
edt_nompro.Text:='';
edt_qtd.text:='';


end;

procedure TFrm_PedxIndustria.bbGravarClick(Sender: TObject);
begin
if moper_itemOp01=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Select max(OP01_CHAVEOP) AS CHAVE from CADP02_OP01 '
                     +' where OP01_CODEMP=0'+IntToStr(mpedind_codemp)
                     +' and OP01_CHAVE=0'+edt_chave.Text);
   DM1.Query1.open;
   mChave_Op:=DM1.Query1.Fields[0].AsInteger+1;
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   DM1.Query2.SQL.Add('Insert into CADP02_OP01 ('
                     +' OP01_CODEMP '
                     +',OP01_LOTSEQ '
                     +',OP01_CHAVE '
                     +',OP01_CHAVEOP '
                     +',OP01_DATAHORA '
                     +',OP01_CODPRO '
                     +',OP01_QTDPREV '
                     +',OP01_QTDREAL '
                     +' ) values ('
                     +' :OP01_CODEMP '
                     +',:OP01_LOTSEQ '
                     +',:OP01_CHAVE '
                     +',:OP01_CHAVEOP '
                     +',:OP01_DATAHORA '
                     +',:OP01_CODPRO '
                     +',:OP01_QTDPREV '
                     +',:OP01_QTDREAL '
                     +' ) ');
   end
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   DM1.Query2.SQL.Add('Update CADP02_OP01 set'
                     +',OP01_LOTSEQ=:OP01_LOTSEQ '
                     +',OP01_CHAVE=:OP01_CHAVE '
                     +',OP01_CHAVEOP=:OP01_CHAVEOP '
                     +',OP01_DATAHORA=:OP01_DATAHORA '
                     +',OP01_CODPRO=:OP01_CODPRO '
                     +',OP01_QTDPREV=:OP01_QTDPREV '
                     +',OP01_QTDREAL=:OP01_QTDREAL '
                     +' where OP01_CODEMP=OP01_CODEMP '
                     +' and OP01_CHAVE=:OP01_CHAVE '
                     +' and OP01_CHAVEOP=:OP01_CHAVEOP ');
   end;

DM1.Query2.ParamByName('OP01_CODEMP').AsFloat     :=mpedind_codemp;
DM1.Query2.ParamByName('OP01_LOTSEQ').AsFloat     :=valint(edt_lotseq.Text);
DM1.Query2.ParamByName('OP01_CHAVE').AsFloat      :=fSonumero(edt_chave.text);
DM1.Query2.ParamByName('OP01_CHAVEOP').AsFloat    :=mChave_Op;
DM1.Query2.ParamByName('OP01_DATAHORA').AsDateTime:=Now;
DM1.Query2.ParamByName('OP01_CODPRO').AsFloat     :=fsonumero(edt_codpro.Text);
DM1.Query2.ParamByName('OP01_QTDPREV').AsFloat    :=edt_qtd.Value;
DM1.Query2.ParamByName('OP01_QTDREAL').AsFloat    :=edt_qtd.Value;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

if moper_itemOp01=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Delete from CADP02_OP02 '
                     +' where OP02_CODEMP=0'+IntToStr(mpedind_codemp)
                     +' and OP02_CHAVE=0'+edt_chave.Text
                     +' and OP02_CHAVEOP=0'+FloatToStr(mChave_Op));
   try
      DM1.Query1.ExecSQL;
   except
      end;
   end;
fGravarMateriasPrimas(0);
bbCancelarClick(self);
fPedxIndCarregaDados(0);

end;

procedure TFrm_PedxIndustria.FormCreate(Sender: TObject);
begin
mem_subtotP2QTDPED.DisplayFormat :=mcasqtd;
mem_subtotP2QTDFAB.DisplayFormat :=mcasqtd;
mem_subtotP2QTDREST.DisplayFormat:=mcasqtd;

qr_op01OP01_DATAHORA.DisplayFormat:=fdathor;
qr_op01OP01_QTDPREV.DisplayFormat :=mcasqtd;
qr_op01OP01_QTDREAL.DisplayFormat :=mcasqtd;
qr_op02OP02_QTDPREV.DisplayFormat :=mcasqtd;
qr_op02OP02_QTDUTIL.DisplayFormat :=mcasqtd;

edt_qtd.DisplayFormat :=mcasqtd;
edt_qtd.DecimalPlaces:=DM1.Tb_PargerPCASQTD.AsInteger;

edt_qtdmp.DisplayFormat :=mcasqtd;
edt_qtdmp.DecimalPlaces:=DM1.Tb_PargerPCASQTD.AsInteger;
mem_editmpOP2_QTDPREV.DisplayFormat :=mcasqtd;
mem_editmpOP2_QTDUTIL.DisplayFormat :=mcasqtd;
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;


end;

procedure TFrm_PedxIndustria.bbExcluirClick(Sender: TObject);
begin
If qr_op01OP01_CHAVE.IsNull then
   exit;
if (not qr_op01.Active) or  (qr_op01OP01_CHAVE.AsInteger<=0 )then
   exit;
if qr_op01OP01_STATUS.AsInteger>0 then
   begin
   fmensagem('Esta Ordem de Produção ja foi Atualizada, favor cancelar a atualização!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir a Ordem de Produção: '+qr_op01OP01_CHAVEOP.AsString+'?'
            ,0,['1','2'],2)<>mrYes then
   exit;

mChave_Op:=qr_op01OP01_CHAVEOP.AsInteger;
DM1.Query1.Close;
DM1.Query1.sql.clear;
DM1.Query1.sql.add('Delete from CADP02_OP01 '
                  +' where OP01_CODEMP=0'+IntToStr(mpedind_codemp)
                  +' and OP01_CHAVE=0'+edt_chave.Text
                  +' and OP01_CHAVEOP=0'+FloatToStr(mChave_Op));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,702,'frm_pedxindustria','CADP02_OP01');
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.clear;
DM1.Query1.sql.add('Delete from CADP02_OP02 '
                  +' where OP02_CODEMP=0'+IntToStr(mpedind_codemp)
                  +' and OP02_CHAVE=0'+edt_chave.Text
                  +' and OP02_CHAVEOP=0'+FloatToStr(mChave_Op));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,717,'frm_pedxindustria','CADP02_OP02');
   exit;
   end;
fPedxIndCarregaDados(0);
fmensagem('Ordem de Produção Excluida!',0,['0'],0);


end;

procedure TFrm_PedxIndustria.DBGrid_editmpExit(Sender: TObject);
begin
if not mem_subtotP2CODPRO.IsNull then
   begin
   moper_itemmp:=1;
   mPos_itemMp    :=mem_editmp.GetBookmark;
   edt_codmp.Text :=mem_editmpOP2_CODMP.AsString;
   edt_nommp.Text :=mem_editmpNOMPRO.AsString;
   edt_qtdmp.Value:=mem_editmpOP2_QTDPREV.AsFloat;
   edt_codmp.SetFocus;
   end;

end;

procedure TFrm_PedxIndustria.edt_codmpKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=27 then
   begin
   moper_itemmp  :=0;
   edt_codmp.Text:='';
   edt_nommp.Text:='';
   edt_qtdmp.Text:='';
   edt_codmp.SetFocus;
   end;
end;

procedure TFrm_PedxIndustria.ExluirItem1Click(Sender: TObject);
begin
if mem_editmpOP2_CODMP.IsNull then
   exit;
if fmensagem('Quer Realmente Excluir o Produto: '+mem_editmpNOMPRO.AsString
            ,0,['1','2'],2)<>mrYes then
   exit;
mem_editmp.Delete;

end;
function tFrm_PedxIndustria.fGradeRelatorio(pGrade: Boolean): boolean;
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
procedure TFrm_PedxIndustria.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedxIndustria.bbImprimirClick(Sender: TObject);
begin
lbl_cabempresa.Caption:=DM1.Tb_EmpRAZAO.AsString;
lbl_titulo.Caption   :='Pedido Comparado a Produção';
lbl_resumo_pedido.Caption:=edt_chave.Text+'/'+edt_nomcli.Text;
fGradeRelatorio(true);
Qr_Impres.Close;
Qr_Impres.SQL.Clear;
Qr_Impres.SQL.Add('Select count(*) from CADEMP');
Qr_Impres.Open;
mem_subtot.First;
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

procedure TFrm_PedxIndustria.RLBand_res_detAfterPrint(Sender: TObject);
begin
mtotped:=mtotped+mem_subtotP2QTDPED.AsFloat;
mtotfab:=mtotfab+mem_subtotP2QTDFAB.AsFloat;
end;

procedure TFrm_PedxIndustria.RLBand_resumo_totalBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
tot_res_qtdped.Caption:=FormatFloat(mcasqtd, mtotped);
tot_res_qtdfab.Caption:=FormatFloat(mcasqtd, mtotfab);
tot_res_qtdres.Caption:=FormatFloat(mcasqtd, mtotped-mtotfab);
mtotped:=0;
mtotfab:=0;
end;

procedure TFrm_PedxIndustria.DBGrid_op01DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if qr_op01OP01_STATUS.AsInteger=0 then
   begin
   DBGrid_op01.Canvas.Brush.Color := clRed;
   DBGrid_op01.Canvas.Font.Style  := DBGrid_op01.Canvas.Font.Style + [fsBold];
   DBGrid_op01.Canvas.Font.Color      := clBlack;
   DBGrid_op01.Canvas.FillRect(Rect);
   DBGrid_op01.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_PedxIndustria.bbAtualizarClick(Sender: TObject);
begin
if (not qr_op01.Active) or  (qr_op01OP01_CHAVE.AsInteger<=0 )then
   exit;
if qr_op01OP01_STATUS.AsInteger>0 then
   begin
   fmensagem('Esta Ordem de Produção ja foi Atualizada!',0,['0'],0);
   exit;
   end;


if fmensagem('Quer Realmente Atualizar os Produtos da OP: '+qr_op01OP01_CHAVEOP.AsString,0,['1','2'],2)<>mrYes then
   exit;
fAtualizarEstoque(0);
fPedxIndCarregaDados(0);
mem_editmp.close;

end;

function TFrm_PedxIndustria.fAtualizarEstoque(ptipo: Integer):Boolean;
// ptipo=0-Baixa 1-Cancela Baixa
var
mQtdFalta: Real;
begin

DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.SQL.Add('Update CADP02_OP01 set'
                  +' OP01_STATUS=:OP01_STATUS '
                  +' where OP01_CODEMP=:OP01_CODEMP '
                  +' and OP01_CHAVE=:OP01_CHAVE '
                  +' and OP01_LOTSEQ=:OP01_LOTSEQ '
                  +' and OP01_CHAVEOP=:OP01_CHAVEOP ');
DM1.Query2.ParamByName('OP01_STATUS').AsFloat     :=iif(ptipo=1,0,1);
DM1.Query2.ParamByName('OP01_CODEMP').AsFloat     :=qr_op01OP01_CODEMP.AsFloat;
DM1.Query2.ParamByName('OP01_LOTSEQ').AsFloat     :=qr_op01OP01_LOTSEQ.AsFloat;
DM1.Query2.ParamByName('OP01_CHAVE').AsFloat      :=qr_op01OP01_CHAVE.AsFloat;
DM1.Query2.ParamByName('OP01_CHAVEOP').AsFloat    :=qr_op01OP01_CHAVEOP.AsFloat;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
if ptipo=1 then
   begin
   fCarregarTempMP(1);
   if qr_op01OP01_DTVCTO.AsDateTime>pdatanula then
      mdtv:=formatDatetime(fdt2, qr_op01OP01_DTVCTO.AsDateTime)
   else
      mdtv:='';
   flbailgc_Novo(0,0,1,0,codemp,qr_op01OP01_CODPRO.AsString,qr_op01OP01_LOTE.AsString
                 ,mdtv,'','',qr_op01OP01_QTDREAL.AsFloat);
   flbaiest_Nov(0,0,1,0,codemp,qr_op01OP01_CODPRO.AsString,'frm_Pedxindustria',qr_op01OP01_QTDREAL.AsFloat);

   mem_editmp.First;
   While not mem_editmp.Eof do
      begin
      if mem_editmpOP2_DTVCTO.AsDateTime>pdatanula then
         mdtv:=formatDatetime(fdt2, mem_editmpOP2_DTVCTO.AsDateTime)
      else
         mdtv:='';

      flbailgc_Novo(0,0,0,0,codemp,mem_editmpOP2_CODMP.AsString
                   ,mem_editmpOP2_LOTE.AsString
                 ,mdtv,'','',mem_editmpOP2_QTDUTIL.AsFloat);
      flbaiest_Nov(0,0,0,0,codemp,mem_editmpOP2_CODMP.AsString,'frm_Pedxindustria',mem_editmpOP2_QTDUTIL.AsFloat);

      mem_editmp.Next;
      end;
   end
else
   begin
   if qr_op01OP01_DTVCTO.AsDateTime>pdatanula then
      mdtv:=formatDatetime(fdt2, qr_op01OP01_DTVCTO.AsDateTime)
   else
      mdtv:='';
   flbailgc_Novo(0,0,0,0,codemp,qr_op01OP01_CODPRO.AsString,qr_op01OP01_LOTE.AsString
                 ,mdtv,'','',qr_op01OP01_QTDREAL.AsFloat);
   flbaiest_Nov(0,0,0,0,codemp,qr_op01OP01_CODPRO.AsString,'frm_Pedxindustria',qr_op01OP01_QTDREAL.AsFloat);

   mem_editmp.Close;
   mem_editmp.Open;
   qr_op02.First;
   While not qr_op02.Eof do
      begin
      mQtdFalta:=qr_op02OP02_QTDUTIL.AsFloat;
      if trim(qr_op02OP02_LOTE.AsString)<>'' then
         mcinst2:=''
      else
         mcinst2:=qr_op02OP02_LOTE.AsString;

      if flcadlgc(0,0,0,qr_op02OP02_CODMP.AsString,mcinst2,' ') then
         begin
         while (not DM1.Tb_LGC.Eof) and (mQtdFalta>0) do
            begin
            if DM1.Tb_LGCCLQTD.AsFloat<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;

            mem_editmp.Insert;
            mem_editmpOP2_CODEMP.AsFloat :=qr_op02OP02_CODEMP.AsFloat;
            mem_editmpOP2_LOTSEQ.AsFloat :=qr_op02OP02_LOTSEQ.AsFloat;
            mem_editmpOP2_CHAVE.AsFloat  :=qr_op02OP02_CHAVE.AsFloat;
            mem_editmpOP2_CHAVEOP.AsFloat:=qr_op02OP02_CHAVEOP.AsFloat;
            mem_editmpOP2_CODMP.AsFloat  :=qr_op02OP02_CODMP.AsFloat;
            if DM1.Tb_LGCCLQTD.AsFloat<mQtdFalta then
               begin
               mem_editmpOP2_QTDPREV.AsFloat:=DM1.Tb_LGCCLQTD.AsFloat;
               mem_editmpOP2_QTDUTIL.AsFloat:=DM1.Tb_LGCCLQTD.AsFloat;
               end
            else
               begin
               mem_editmpOP2_QTDPREV.AsFloat:=mQtdFalta;
               mem_editmpOP2_QTDUTIL.AsFloat:=mQtdFalta;
               end;
            mem_editmpNOMPRO.AsString    :=qr_op02PDNOME.AsString;
            mem_editmpMARCA.AsString     :=qr_op02PDMARCA.AsString;
            mem_editmpUND.AsString       :=qr_op02PDUND.AsString;
            mem_editmp.Post;
            if mem_editmpOP2_DTVCTO.AsDateTime>pdatanula then
               mdtv:=formatDatetime(fdt2, mem_editmpOP2_DTVCTO.AsDateTime)
            else
               mdtv:='';
            flbailgc_Novo(0,0,1,0,codemp,mem_editmpOP2_CODMP.AsString
                         ,mem_editmpOP2_LOTE.AsString
                       ,mdtv,'','',mem_editmpOP2_QTDUTIL.AsFloat);
            flbaiest_Nov(0,0,1,0,codemp,mem_editmpOP2_CODMP.AsString,'frm_Pedxindustria',mem_editmpOP2_QTDUTIL.AsFloat);

            mQtdFalta:=mQtdFalta-mem_editmpOP2_QTDUTIL.AsFloat;
            DM1.Tb_LGC.Next;
            end;
         end;

      if mQtdFalta>0 then
         begin
         mem_editmp.Insert;
         mem_editmpOP2_CODEMP.AsFloat :=qr_op02OP02_CODEMP.AsFloat;
         mem_editmpOP2_LOTSEQ.AsFloat :=qr_op02OP02_LOTSEQ.AsFloat;
         mem_editmpOP2_CHAVE.AsFloat  :=qr_op02OP02_CHAVE.AsFloat;
         mem_editmpOP2_CHAVEOP.AsFloat:=qr_op02OP02_CHAVEOP.AsFloat;
         mem_editmpOP2_CODMP.AsFloat  :=qr_op02OP02_CODMP.AsFloat;
         mem_editmpOP2_QTDPREV.AsFloat:=mQtdFalta;
         mem_editmpOP2_QTDUTIL.AsFloat:=mQtdFalta;
         mem_editmpNOMPRO.AsString    :=qr_op02PDNOME.AsString;
         mem_editmpMARCA.AsString     :=qr_op02PDMARCA.AsString;
         mem_editmpUND.AsString       :=qr_op02PDUND.AsString;
         mem_editmp.Post;
         if mem_editmpOP2_DTVCTO.AsDateTime>pdatanula then
            mdtv:=formatDatetime(fdt2, mem_editmpOP2_DTVCTO.AsDateTime)
         else
            mdtv:='';
         flbailgc_Novo(0,0,1,0,codemp,mem_editmpOP2_CODMP.AsString
                      ,mem_editmpOP2_LOTE.AsString
                    ,mdtv,'','',mem_editmpOP2_QTDUTIL.AsFloat);
         flbaiest_Nov(0,0,1,0,codemp,mem_editmpOP2_CODMP.AsString,'frm_Pedxindustria',mem_editmpOP2_QTDUTIL.AsFloat);

         mQtdFalta:=mQtdFalta-mem_editmpOP2_QTDUTIL.AsFloat;

         end;
      qr_op02.Next;
      end;
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Delete from CADP02_OP02 '
                     +' where OP02_CODEMP=0'+qr_op01OP01_CODEMP.AsString
                     +' and OP02_CHAVE=0'+qr_op01OP01_CHAVE.AsString
                     +' and OP02_CHAVEOP=0'+qr_op01OP01_CHAVEOP.AsString);
   try
      DM1.Query1.ExecSQL;
   except
      end;
   fGravarMateriasPrimas(1);
//inicio das baibax
   end;

result:=true;
end;

procedure TFrm_PedxIndustria.edtmp_loteExit(Sender: TObject);
begin
if valint(copy(mpseg,4,2))=2 then
   begin
   if not flcadlgc(0,1,0,edt_codmp.Text,edtmp_lote.Text,'') then
      begin
      fmensagem('Grade não Encontrada!',0,['0'],0);
      edtmp_lote.SetFocus;
      exit;
      end;
   end;
if (trim(edtmp_lote.text)<>'') and (valint(copy(mpseg,4,2))=1) then
   begin
   mdtv:='ALL';
   if flcadlgc(0,1,0,edt_codmp.Text,edtmp_lote.Text,mdtv) then
      begin
      edtmp_dtvcto.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
      end;
   end;


end;


function TFrm_PedxIndustria.fCarregarTempMP(ptipo: Integer): Boolean;
begin
mem_editmp.Close;
mem_editmp.open;
qr_op02.first;
While not qr_op02.Eof do
   begin
   mem_editmp.Insert;
   mem_editmpOP2_CODEMP.AsFloat :=qr_op02OP02_CODEMP.AsFloat;
   mem_editmpOP2_LOTSEQ.AsFloat :=qr_op02OP02_LOTSEQ.AsFloat;
   mem_editmpOP2_CHAVE.AsFloat  :=qr_op02OP02_CHAVE.AsFloat;
   mem_editmpOP2_CHAVEOP.AsFloat:=qr_op02OP02_CHAVEOP.AsFloat;
   mem_editmpOP2_CODMP.AsFloat  :=qr_op02OP02_CODMP.AsFloat;
   mem_editmpOP2_QTDPREV.AsFloat:=qr_op02OP02_QTDPREV.AsFloat;
   mem_editmpOP2_QTDUTIL.AsFloat:=qr_op02OP02_QTDUTIL.AsFloat;
   mem_editmpNOMPRO.AsString    :=qr_op02PDNOME.AsString;
   mem_editmpMARCA.AsString     :=qr_op02PDMARCA.AsString;
   mem_editmpUND.AsString       :=qr_op02PDUND.AsString;
   mem_editmpOP2_LOTE.AsString  :=qr_op02OP02_LOTE.AsString;
   mem_editmpOP2_DTVCTO.Value   :=qr_op02OP02_DTVCTO.Value;
   mem_editmp.Post;
   qr_op02.Next;
   end;
result:=true;
end;

procedure TFrm_PedxIndustria.edtmp_loteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if (moper_itemOp01=1) and (key=27) then
   begin
   edt_codmp.Text   :='';
   edt_nommp.Text   :='';
   edtmp_lote.Text  :='';
   edtmp_dtvcto.Text:='/  /';
   edt_qtdmp.Text   :='';
   moper_itemOp01   := 0;
   edt_codmp.SetFocus;
   end
else if key = vk_F3 then
   begin
   if form_conslot_pedxindustria=nil then
      Application.CreateForm(TFrm_ConsLot,form_conslot_pedxindustria)
   else begin
       form_conslot_pedxindustria.free;
       form_conslot_pedxindustria:=nil;
       Application.CreateForm(Tfrm_ConsLot,form_conslot_pedxindustria);
   end;
      flcadlgc(0,0,0,edt_codmp.Text,'','');
      form_conslot_pedxindustria.CODPRO.Text:=edt_codmp.Text;
      form_conslot_pedxindustria.NOMPRO.Text:=edt_nommp.Text;
      form_conslot_pedxindustria.CODPRO.Enabled:=True;
      if valint(copy(mpseg,4,2))=2 then
         begin
         form_conslot_pedxindustria.Caption:='Consulta no arquivo de Grades';
         form_conslot_pedxindustria.DBGrid1.Columns[0].Visible:=false;
         form_conslot_pedxindustria.DBGrid1.Columns[1].Title.Caption:='Grade';
         end;
      form_conslot_pedxindustria.mConsLotOrigem:=1;
      form_conslot_pedxindustria.ShowModal;
      if trim(form_conslot_pedxindustria.plote)<>'' then
         begin
         edtmp_lote.Text  :=form_conslot_pedxindustria.pLote;
         edtmp_dtvcto.Text:=form_conslot_pedxindustria.pdtvcto;
         end;
      FreeAndNil(form_conslot_pedxindustria);
   end;

end;
function tFrm_PedxIndustria.fGravarMateriasPrimas(ptipo: Integer): Boolean;
begin
DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADP02_OP02 ('
                  +' OP02_CODEMP '
                  +',OP02_LOTSEQ '
                  +',OP02_CHAVE '
                  +',OP02_CHAVEOP '
                  +',OP02_CODMP '
                  +',OP02_QTDPREV '
                  +',OP02_QTDUTIL '
                  +',OP02_LOTE '
                  +',OP02_DTVCTO '
                  +') values ('
                  +' :OP02_CODEMP '
                  +',:OP02_LOTSEQ '
                  +',:OP02_CHAVE '
                  +',:OP02_CHAVEOP '
                  +',:OP02_CODMP '
                  +',:OP02_QTDPREV '
                  +',:OP02_QTDUTIL '
                  +',:OP02_LOTE '
                  +',:OP02_DTVCTO '
                  +') ');




mem_editmp.First;
While not mem_editmp.Eof do
   begin
   DM1.Query2.ParamByName('OP02_CODEMP').AsFloat   := mpedind_codemp;
   DM1.Query2.ParamByName('OP02_LOTSEQ').AsFloat   := valint(edt_lotseq.Text);
   DM1.Query2.ParamByName('OP02_CHAVE').AsFloat    := fSonumero(edt_chave.Text);
   DM1.Query2.ParamByName('OP02_CHAVEOP').AsFloat  := mChave_Op;
   DM1.Query2.ParamByName('OP02_CODMP').AsFloat    := mem_editmpOP2_CODMP.AsFloat;
   DM1.Query2.ParamByName('OP02_QTDPREV').AsFloat  := mem_editmpOP2_QTDPREV.AsFloat;
   DM1.Query2.ParamByName('OP02_QTDUTIL').AsFloat  := mem_editmpOP2_QTDUTIL.AsFloat;
   DM1.Query2.ParamByName('OP02_LOTE').AsString    := mem_editmpOP2_LOTE.AsString;
   DM1.Query2.ParamByName('OP02_DTVCTO').Value     := mem_editmpOP2_DTVCTO.Value;
   try
      DM1.query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.query2,650,'frm_pedxindustria','CADP02_OP02');
      break;
      end;
   mem_editmp.Next;
   end;
result:=true;


end;
procedure TFrm_PedxIndustria.bbCancEstoqueClick(Sender: TObject);
begin
if (not qr_op01.Active) or  (qr_op01OP01_CHAVE.AsInteger<=0 )then
   exit;
if qr_op01OP01_STATUS.AsInteger=0 then
   begin
   fmensagem('Esta Ordem de Produção Não foi Atualizada!',0,['0'],0);
   exit;
   end;


if fmensagem('Quer Realmente Cancelar a Atualização os Produtos da OP: '+qr_op01OP01_CHAVEOP.AsString,0,['1','2'],2)<>mrYes then
   exit;
fAtualizarEstoque(1);
fPedxIndCarregaDados(0);
mem_editmp.close;

end;

procedure TFrm_PedxIndustria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
