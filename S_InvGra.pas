unit S_InvGra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,s_DM1,lerarq, StdCtrls, ExtCtrls, Mask,
  S_For,S_TipPro,S_TCon,S_Impres, Buttons, Gauges, ComCtrls, RLReport;

type
  TFrm_InvGra = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsOutFiltros: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl_datinv: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbl_nominv: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    CODTIP: TEdit;
    NOMTIP: TEdit;
    NOMCON: TEdit;
    CODCON: TEdit;
    RG_EST: TRadioGroup;
    NUMPAGI: TEdit;
    cbEmitirTermos: TCheckBox;
    MDT1: TMaskEdit;
    RG_TPPRECO: TRadioGroup;
    Cb_EstNeg: TCheckBox;
    MDATINV: TMaskEdit;
    CB_QDEC_QTD: TComboBox;
    CB_QDEC_PU: TComboBox;
    rg_anterior: TRadioGroup;
    cb_salvo: TComboBox;
    Tb_Inv: TQuery;
    Tb_InvPDNOME: TStringField;
    Tb_InvPDMARCA: TStringField;
    Tb_InvPDCLAS: TStringField;
    Tb_InvPDCODFOR: TFloatField;
    Tb_InvFRAZAO: TStringField;
    Tb_InvPDUND: TStringField;
    Tb_InvCODTIP: TFloatField;
    Tb_InvPDSIT: TStringField;
    Tb_InvPDPRECO: TFloatField;
    Tb_InvCLQTD: TFloatField;
    Tb_InvCLCODPRO: TFloatField;
    Tb_InvCLNUMERO: TStringField;
    Tb_InvCLDTVCTO: TDateTimeField;
    Panel1: TPanel;
    REGUA: TGauge;
    bbSair: TBitBtn;
    bbSalvar: TBitBtn;
    bbImprimir: TBitBtn;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cabger: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand_CabDet: TRLBand;
    lbl_CodPro: TRLLabel;
    lbl_discriminacao: TRLLabel;
    lbl_unidade: TRLLabel;
    lbl_quantidade: TRLLabel;
    RLLabel11: TRLLabel;
    lbl_unitario: TRLLabel;
    lbl_total: TRLLabel;
    RLBand_CabGru: TRLBand;
    RLBand_Detail: TRLBand;
    edt_codpro: TRLDBText;
    lbl_grade: TRLLabel;
    edt_grade: TRLDBText;
    edt_discriminacao: TRLDBText;
    edt_unidade: TRLDBText;
    edt_quantidade: TRLDBText;
    edt_unitario: TRLDBText;
    edt_total: TRLDBText;
    RLBand_totgru: TRLBand;
    totgru_quantidade: TRLLabel;
    totGru_total: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand_Rodape: TRLBand;
    totger_quantidade: TRLLabel;
    totger_total: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand_RodGrupo: TRLBand;
    RLBand_RodGer: TRLBand;
    Tb_InvGRUPO: TStringField;
    Tb_InvDESCGRUPO: TStringField;
    Label17: TLabel;
    cb_separado: TComboBox;
    Src_Inv: TDataSource;
    RLDBText1: TRLDBText;
    Tb_Invtotal: TFloatField;
    lbl_data: TRLLabel;
    RG_TPINV: TRadioGroup;
    RGTPRO: TRadioGroup;
    RG_Ordem: TRadioGroup;
    RG_BLOQ: TRadioGroup;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure NUMPAGIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDATINVExit(Sender: TObject);
    procedure CB_QDEC_QTDExit(Sender: TObject);
    procedure CB_QDEC_PUExit(Sender: TObject);
    procedure rg_anteriorClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure cb_salvoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tb_InvCalcFields(DataSet: TDataSet);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_DetailAfterPrint(Sender: TObject);
    procedure RLBand_totgruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_RodapeBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fLerinv(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_invgra: Tfrm_Impres;
  end;

var
  Frm_InvGra: TFrm_InvGra;
  inv_caspu, inv_casqtd: String;
  mdia,mmes,mano: Word;
  mtotGer_Gru: Real;
  mtotqtd_Gru: Real;
  mtotGer_Ger: Real;
  mtotqtd_Ger: Real;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_InvGra.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text :=fChamaFor(0,'frm_InvGr',Key);
   if Trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_InvGra.CODFORExit(Sender: TObject);
begin
if ValFloat(CODFOR.Text)<=0 then
   begin
   CODFOR.Text:='';
   NOMFOR.Text:='Todos...';
   end
else if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',trim(CODFOR.Text)) then
   NOMFOR.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   CODFOR.SetFocus;
   end;


end;

procedure TFrm_InvGra.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text :=fChamaTipPro(0,'frm_InvGra',Key);
   if Trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_InvGra.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
   CODTIP.Text:='';
   NOMTIP.Text:='Todos...';
   end
else if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   NOMTIP.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Tipo não Cadastrado!',mtWarning,[mbOk],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_InvGra.CODCONExit(Sender: TObject);
begin
if ValFloat(CODCON.Text)<=0 then
   begin
   CODCON.Text:='';
   NOMTIP.Text:='Todos...';
   end
else if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   NOMCON.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Controle não Cadastrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_InvGra.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text :=fChamaTCon(0,'frm_InvGra',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_InvGra.NUMPAGIExit(Sender: TObject);
begin
if ValFloat(NUMPAGI.Text)<1 then
   NUMPAGI.Text:='1'
else
   NUMPAGI.Text:=FloatToStr(ValFloat(NUMPAGI.Text));

end;

procedure TFrm_InvGra.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_InvGra.bbImprimirClick(Sender: TObject);
var
mlin, mpag: Integer;
mextenso,mtipant: String;
mtotal: Real;
Saltar: Boolean;

begin
if Trim(MDT1.Text)='/  /' then
   begin
   MessageDlg('Data do Inventario campo Obrigatório!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
inv_caspu :='#,##0'+iif(CB_QDEC_PU.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PU.ItemIndex),'');
inv_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');

Tb_InvPDPRECO.DisplayFormat:=inv_caspu;
Tb_InvCLQTD.DisplayFormat  :=inv_casqtd;
Tb_InvTotal.DisplayFormat  :=mcasas;

if rg_anterior.ItemIndex=1 then
   begin
   if Trim(MDATINV.Text)='/  /' then
      begin
      MessageDlg('Data do Inventário, campo obrigatório!,',mtWarning,[mbOk],0);
      MDATINV.SetFocus;
      exit;
      end;
   DecodeDate(StrtoDate(MDATINV.Text),mano,mmes,mdia);
   end;

if not fLerinv(0) then
   begin
   MessageDlg('Nada ha ser Impresso!',mtWarning,[mbOk],0);
   exit;
   end;

lbl_data.Caption:=FormatDateTime('dd',StrToDate(MDT1.Text))+
      ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.';

mboolean:=true;

RLBand_cabger.Borders.DrawLeft:=mboolean;
RLBand_cabger.Borders.DrawRight:=mboolean;
RLBand_cabger.Borders.DrawTop:=mboolean;
RLBand_cabger.Borders.DrawBottom:=mboolean;

RLGroup1.Borders.DrawLeft  :=mboolean;
RLGroup1.Borders.DrawRight :=mboolean;

RLBand_CabGru.Borders.DrawBottom:=mboolean;


RLBand_CabDet.Borders.DrawBottom:=mboolean;

lbl_CodPro.Borders.DrawRight       :=mboolean;
lbl_grade.Borders.DrawRight        :=mboolean;
lbl_discriminacao.Borders.DrawRight:=mboolean;
lbl_unidade.Borders.DrawRight      :=mboolean;
lbl_quantidade.Borders.DrawRight   :=mboolean;
lbl_unitario.Borders.DrawRight     :=mboolean;

edt_CodPro.Borders.DrawRight       :=mboolean;
edt_grade.Borders.DrawRight        :=mboolean;
edt_discriminacao.Borders.DrawRight:=mboolean;
edt_unidade.Borders.DrawRight      :=mboolean;
edt_quantidade.Borders.DrawRight   :=mboolean;
edt_unitario.Borders.DrawRight     :=mboolean;

RLBand_totgru.Borders.Drawtop      :=mboolean;
RLBand_totgru.Borders.DrawBottom   :=mboolean;
RLBand_RodGrupo.Borders.DrawTop    :=mboolean;


totgru_quantidade.Borders.DrawRight:=mboolean;
totgru_quantidade.Borders.DrawRight:=mboolean;

RLBand_Rodape.Borders.Drawtop      :=mboolean;
RLBand_Rodape.Borders.DrawBottom   :=mboolean;
RLBand_Rodape.Borders.DrawLeft     :=mboolean;
RLBand_Rodape.Borders.DrawRight    :=mboolean;
RLBand_RodGer.Borders.DrawTop      :=mboolean;

RLReport1.PreviewModal;

exit;















testeform := TFrm_InvGra(FindGlobalComponent('form_impres_invgra'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres,form_impres_invgra);

form_impres_invgra.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=StrToInt('0'+NUMPAGI.Text);
if not cbEmitirTermos.Checked then
   mpag:=mpag-1;
mtotGer_Gru:=0;
mtotqtd_Gru:=0;
Tb_Inv.First;

if RG_Ordem.ItemIndex=1 then
   mtipant:=Tb_InvPDSIT.Value
else if RG_Ordem.ItemIndex=2 then
   mtipant:=FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)
else if RG_Ordem.ItemIndex=3 then
   mtipant:=FormatFloat('00000',Tb_InvCODTIP.AsInteger)
else
   mtipant:='';
REGUA.MaxValue := TB_INV.RecordCount;

while not Tb_Inv.Eof do
   begin
   REGUA.Progress := REGUA.Progress+1;
   if mlin=0 then
      Begin
      mpag:=mpag+1;
      form_impres_invgra.Rdprint1.ImpF(04,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
      form_impres_invgra.Rdprint1.Impf(06,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//      form_impres_invgra.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
      form_impres_invgra.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
      insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
  //    form_impres_invgra.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
      form_impres_invgra.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',mpag)+
      insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
      ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
      if RGTPRO.ItemIndex=0 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('PRODUTO ACABADO',' ',80),mNeg)
      else if RGTPRO.ItemIndex=1 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('SERVICO',' ',80),mNeg)
      else if RGTPRO.ItemIndex=2 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('MATERIA PRIMA REVENDA',' ',80),mNeg)
      else if RGTPRO.ItemIndex=3 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('PRODUTO EM PRODUCAO',' ',80),mNeg)
      else if RGTPRO.ItemIndex=4 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('MATERIA PRIMA',' ',80),mNeg)
      else if RGTPRO.ItemIndex=5 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('INSUMOS',' ',80),mNeg)
      else if RGTPRO.ItemIndex=6 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('ACESSORIOS',' ',80),mNeg)
      else if RGTPRO.ItemIndex=7 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('OUTROS',' ',80),mNeg)
      else if RGTPRO.ItemIndex=8 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('TODOS(COM EXCEXAO DO ACABADO',' ',80),mNeg)
      else if RGTPRO.ItemIndex=9 then
         form_impres_invgra.Rdprint1.ImpF(09,01,Centra('TODOS PRODUTOS',' ',80),mNeg);

//      form_impres_invgra.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
      form_impres_invgra.Rdprint1.ImpF(10,01,insere(' ',' ',132),mReduz);

      form_impres_invgra.Rdprint1.Impf(11,01,'+-----------------+-----------------------------------------------------+-----+---------------+------------------------------------+',mReduz);
      form_impres_invgra.Rdprint1.Impf(12,01,'|                 |                                                     |     |               |             V A L O R E S          |',mReduz);
      form_impres_invgra.Rdprint1.Impf(13,01,'|     CODIGO DO   | DISCRIMINACAO                                       | UND |   QUANTIDADE  +-------------------+----------------+',mReduz);
      form_impres_invgra.Rdprint1.Impf(14,01,'|      PRODUTO    |                                                     |     |               |        UNITARIO   |          TOTAL |',mReduz);
      form_impres_invgra.Rdprint1.Impf(15,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
      if mpag-1<>StrToInt('0'+NUMPAGI.Text) then
         begin
         form_impres_invgra.Rdprint1.ImpF(16,01,'| TOTAL TRANSPORTADO........>>>>>'+Insere2(' ',' ',45)+'| '+insere(FormatFloat('#,##0.00',mtotqtd_Gru),' ',13)+' |                   | '+insere(FormatFloat('#,##0.00',mtotGer_Gru),' ',14)+' |',mReduz);

         mlin:=16;
         end
      else
         mlin:=15;
      if RG_Ordem.ItemIndex>0 then
         begin
         if RG_Ordem.ItemIndex=1 then
            begin
            mlin:=mlin+1;
            form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            form_impres_invgra.Rdprint1.impf(mlin,02,'Produtos com situacao Tributaria: '+Tb_InvPDSIT.Value,mNeg);
            end
         else if RG_Ordem.ItemIndex=2 then
            begin
            mlin:=mlin+1;
            form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            form_impres_invgra.Rdprint1.impf(mlin,02,'Fornecedor.: '+FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)+' - '+Tb_InvFRAZAO.Value,mNeg);
            end
         else if RG_Ordem.ItemIndex=3 then
            begin
            mlin:=mlin+1;
            form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            flqr1('TNOME','T','CADTP','N','TCODTIP',Tb_InvCODTIP.AsString);
            form_impres_invgra.Rdprint1.impf(mlin,02,'Produtos: '+Trim(DM1.Query1.Fields[0].AsString),mNeg)
            end;
         end;
      end;
   mlin:=mlin+1;
   mtotal:=Tb_InvPDPRECO.Value*Tb_InvCLQTD.Value;
   mtotal:=Arredonda(mtotal,mcasger);
   form_impres_invgra.Rdprint1.ImpF(mlin,01,'| '+insere2(FormatFloat('0000',Tb_InvCLCODPRO.Value)+Tb_InvCLNUMERO.Value,' ',15)+' | '+insere2(Tb_InvPDNOME.Value+' '+Tb_InvPDMARCA.Value,' ',51)+' | '+Insere2(Tb_InvPDUND.Value,' ',3)+' | ' +
                  insere(FormatFloat(inv_casqtd, Tb_InvCLQTD.Value),' ',13)+' |'+insere(FormatFloat(inv_caspu,Tb_InvPDPRECO.Value),' ',18)+' | '+
                   insere(FormatFloat(mcasas,mtotal),' ',14)+' |',mReduz);
   mtotGer_Gru:=mtotGer_Gru+mtotal;
   mtotqtd_Gru:=mtotqtd_Gru+Tb_InvCLQTD.Value;
   Tb_Inv.Next;
   if RG_Ordem.ItemIndex>0 then
      begin
      if (RG_Ordem.ItemIndex=1) and (mtipant<>Tb_InvPDSIT.Value) then
         begin
         saltar:=true;
         mtipant:=Tb_InvPDSIT.Value;
         end
      else if (RG_Ordem.ItemIndex=2) and (mtipant<>FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)) then
         begin
         saltar:=true;
         mtipant:=FormatFloat('00000',Tb_InvPDCODFOR.AsInteger);
         end
      else if (RG_Ordem.ItemIndex=3) and (mtipant<>FormatFloat('0000',Tb_InvCODTIP.AsInteger)) then
         begin
         saltar:=true;
         mtipant:=FormatFloat('00000',Tb_InvCODTIP.AsInteger);
         end;
      end;
   if ((mlin>58) and not (Tb_Inv.Eof)) or (saltar) then
      begin
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'| TOTAL A TRANSPORTAR.......>>>>>'+Insere2(' ',' ',45)+'| '+insere(FormatFloat('#,##0.00',mtotqtd_Gru),' ',13)+' |                   | '+insere(FormatFloat('#,##0.00',mtotGer_Gru),' ',14)+' |',mReduz);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
      form_impres_invgra.Rdprint1.Novapagina;
      mlin:=0;
      saltar:=false;
      end;
   if Tb_Inv.Eof then
      begin
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'| TOTAL GERAL DO INVENTARIO.>>>>>'+Insere2(' ',' ',45)+'| '+insere(FormatFloat('#,##0.00',mtotqtd_Gru),' ',13)+' |                   | '+insere(FormatFloat('#,##0.00',mtotGer_Gru),' ',14)+' |',mReduz);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_invgra.Rdprint1.ImpF(mlin,02,'Importa o presente inventario de mercadoria a importancia de r$'+insere(FormatFloat(mcasas,mtotGer_Gru),' ',12),mNormal);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      mextenso:=UpperCase(Extenso(mtotGer_Gru));
      form_impres_invgra.Rdprint1.Impf(mlin,02,Insere2(Copy(mextenso,001,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_invgra.Rdprint1.impf(mlin,02,Insere2(Copy(mextenso,076,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_invgra.Rdprint1.Impf(mlin,02,Insere2(Copy(mextenso,151,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_invgra.Rdprint1.ImpF(mlin,01,'+'+insere(' ',' ',130)+'+',mReduz);
      form_impres_invgra.Rdprint1.NovaPagina;
      end;
   end;

if cbEmitirTermos.Checked then
   begin
   form_impres_invgra.Rdprint1.ImpF(04,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
   form_impres_invgra.Rdprint1.Impf(06,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//   form_impres_invgra.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
   insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
//   form_impres_invgra.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',1)+
   insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_invgra.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.ImpF(10,01,insere(' ',' ',132),mReduz);

   form_impres_invgra.Rdprint1.ImpF(13,01,Centra('TERMO DE ABERTURA',' ',80),mNeg);
   form_impres_invgra.Rdprint1.ImpF(16,01,'      CONTEM ESTE LIVRO '+FormatFloat('0000',mpag+2-StrToInt(NUMPAGI.Text))+' FOLHAS NUMERADAS POR PROCESSAMENTO ELETRONICO DE',mNormal);
   form_impres_invgra.Rdprint1.ImpF(18,01,'DADOS, DO NUMERO '+FormatFloat('0000',StrToInt(NUMPAGI.Text))+' AO '+FormatFloat('0000',mpag+1)+' E SERVIRAO PARA O LANCAMENTO DAS OPERACOES PRO-',mNormal);
   form_impres_invgra.Rdprint1.Impf(20,01,'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO                 ',mNormal);
   form_impres_invgra.Rdprint1.Impf(23,10,'NOME.....................: '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(25,10,'ENDERECO.................: '+DM1.Tb_EmpENDERECO.Value,mNormal);
   form_impres_invgra.Rdprint1.ImpF(27,10,'BAIRRO...................: '+DM1.Tb_EmpBAIRRO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(29,10,'CIDADE - UF..............: '+Trim(DM1.Tb_EmpCIDADE.Value)+' - '+DM1.Tb_EmpUF.Value,mNormal);
   form_impres_invgra.Rdprint1.ImpF(31,10,'INSCRICAO ESTADUAL.......: '+DM1.Tb_EmpINSCRICAO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(33,10,'C.N.P.J.(MF) No. ........: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
   form_impres_invgra.Rdprint1.ImpF(35,10,'REG. JUNTA COMERCIAL No..: '+DM1.Tb_EmpJUCEG.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(41,10,DM1.Tb_EmpCIDADE.Value+' '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_invgra.Rdprint1.Impf(45,10,'___'+insere('_','_',Length(dm1.Tb_EmpRAZAO.Value))+'___',mNormal);
   form_impres_invgra.Rdprint1.ImpF(46,10,'   '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_invgra.Rdprint1.Novapagina;
// termo  de encerramento


   form_impres_invgra.Rdprint1.ImpF(04,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
   form_impres_invgra.Rdprint1.Impf(06,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//   form_impres_invgra.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
   insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
//   form_impres_invgra.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',mpag+1)+
   insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_invgra.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
   form_impres_invgra.Rdprint1.ImpF(10,01,insere(' ',' ',132),mReduz);

   form_impres_invgra.Rdprint1.ImpF(13,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mNeg);
   form_impres_invgra.Rdprint1.ImpF(16,01,'      CONTEM ESTE LIVRO '+FormatFloat('0000',mpag+2-StrToInt(NUMPAGI.Text))+' FOLHAS NUMERADAS POR PROCESSAMENTO ELETRONICO DE',mNormal);
   form_impres_invgra.Rdprint1.ImpF(18,01,'DADOS, DO NUMERO '+FormatFloat('0000',StrToInt(NUMPAGI.Text))+' AO '+FormatFloat('0000',mpag+1)+' E SERVIRAM PARA O LANCAMENTO DAS OPERACOES PRO-',mNormal);
   form_impres_invgra.Rdprint1.Impf(20,01,'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO                 ',mNormal);
   form_impres_invgra.Rdprint1.Impf(23,10,'NOME.....................: '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(25,10,'ENDERECO.................: '+DM1.Tb_EmpENDERECO.Value,mNormal);
   form_impres_invgra.Rdprint1.ImpF(27,10,'BAIRRO...................: '+DM1.Tb_EmpBAIRRO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(29,10,'CIDADE - UF..............: '+DM1.Tb_EmpCIDADE.Value+' - '+DM1.Tb_EmpUF.Value,mNormal);
   form_impres_invgra.Rdprint1.ImpF(31,10,'INSCRICAO ESTADUAL.......: '+DM1.Tb_EmpINSCRICAO.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(33,10,'C.N.P.J.(MF) No. ........: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
   form_impres_invgra.Rdprint1.ImpF(35,10,'REG. JUNTA COMERCIAL No..: '+DM1.Tb_EmpJUCEG.Value,mNormal);
   form_impres_invgra.Rdprint1.Impf(41,10,DM1.Tb_EmpCIDADE.Value+' '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_invgra.Rdprint1.Impf(45,10,'___'+insere('_','_',Length(dm1.Tb_EmpRAZAO.Value))+'___',mNormal);
   form_impres_invgra.Rdprint1.ImpF(46,10,'   '+DM1.Tb_EmpRAZAO.Value,mNormal);
   end;
if form_impres_invgra.Rdprint1.Setup then form_impres_invgra.Rdprint1.Fechar;
form_impres_invgra.Free;
form_impres_invgra:=nil;

end;

procedure TFrm_InvGra.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_InvGra.FormCreate(Sender: TObject);
begin
MDT1.Text   :=FormatDateTime(fdt2, pdatasis);
MDATINV.Text:=FormatDateTime(fdt2, pdatasis);
TsRelatorio.TabVisible:=false;
end;

procedure TFrm_InvGra.MDATINVExit(Sender: TObject);
begin
if Trim(MDATINV.Text)<>'/  /' then
   begin
   Try
      MDATINV.Text:=FormatDateTime(fdt2, StrtoDate(MDATINV.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDATINV.SetFocus;
      end;
   end;

end;

procedure TFrm_InvGra.CB_QDEC_QTDExit(Sender: TObject);
begin
with CB_QDEC_QTD do ItemIndex:=Items.IndexOf(CB_QDEC_QTD.text);
CB_QDEC_QTD.Text:=CB_QDEC_QTD.Items[CB_QDEC_QTD.ItemIndex];

end;

procedure TFrm_InvGra.CB_QDEC_PUExit(Sender: TObject);
begin
with CB_QDEC_PU do ItemIndex:=Items.IndexOf(CB_QDEC_PU.text);
CB_QDEC_PU.Text:=CB_QDEC_PU.Items[CB_QDEC_PU.ItemIndex];

end;

procedure TFrm_InvGra.rg_anteriorClick(Sender: TObject);
begin
if rg_anterior.ItemIndex=0 then
   begin
   lbl_datinv.Visible:=False;
   MDATINV.Visible   :=False;
   lbl_nominv.Visible:=False;
   cb_salvo.Visible  :=False;
   end
else if rg_anterior.ItemIndex=1 then
   begin
   lbl_datinv.Visible:=true;
   MDATINV.Visible   :=true;
   lbl_nominv.Visible:=False;
   cb_salvo.Visible  :=False;
   end
else if rg_anterior.ItemIndex=2 then
   begin
   lbl_datinv.Visible:=false;
   MDATINV.Visible   :=false;
   lbl_nominv.Visible:=true;
   cb_salvo.Visible  :=true;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select IGNOMEINV from INVGRA_GD '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntTostr(codemp))
                     +' Group by IGNOMEINV ');
   DM1.Query2.Open;
   cb_salvo.Items.Clear;
   While not DM1.Query2.Eof do
      begin
      cb_salvo.Items.Add(DM1.Query2.Fields[0].AsString);
      DM1.Query2.Next;
      end;
   cb_salvo.ItemIndex:=0;   
   end;



end;

procedure TFrm_InvGra.bbSalvarClick(Sender: TObject);
var
nomeArq: String;
begin
if not fLerinv(0) then
   begin
   MessageDlg('Não ha registro a ser salvo!',mtWarning,[mbOk],0);
   exit;
   end;
nomeArq:=InputBox('Nome do Inventário','Entre com o nome do Inventario:','');
If Trim(nomeArq)='' then
   exit;
nomeArq:=fRetAspas(nomeArq);
if length(nomeArq)>30 then
   nomeArq:=copy(nomearq,1,30);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from INVGRA_GD where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'','  IGCODEMP=0'+IntTostr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomeArq+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   mcinst:='Ja Existe um Arquivo salvo com este nome '+#13
          +nomeArq+#13
          +'Quer Substitui-lo? ';
   end
else
   begin
   mcinst:='Confirma gravação do Inventário com o'+#13
          +'Nome de '+nomeArq+'?';
   end;
if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
   exit;
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from INVGRA_GD where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntTosTr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomearq+chr(39));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2137,'frm_inv','INVGRA_GD');
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;

DM1.Query1.SQL.add('Insert  into INVGRA_GD (IGCODEMP , '
                  +'  IGNOMEINV, '
                  +'  IGCODPRO, '
                  +'  IGGRADE, '
                  +'  IGDTVCTO, '
                  +'  IGSIT, '
                  +'  IGCODTIP, '
                  +'  IGPRECO, '
                  +'  IGQTD '
                  +'  IGFILIAL, '
                  +'  ) '
                  +'Select '+IntTostr(codemp)+' as codemp, '
                  +chr(39)+nomeArq+chr(39)+' as nome, '
                 +' PDCODPRO AS CODPRO, ');

if rg_anterior.ItemIndex=2 then
   begin
   DM1.Query1.SQL.add(' IGGRADE,IGDTVCTO,IGSIT AS PDSIT, IGCODTIP AS CODTIP,');
   DM1.Query1.SQL.Add(' IGPRECO AS PDPRECO, ');
   DM1.Query1.SQL.Add(' IGQTD AS CESALDO '
                  +', IGFILIAL AS IGFILIAL '
                 +' from INVGRA_GD,CADPRO,CADFOR where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                 +' IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39)
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                 +' and PDCODPRO=IGCODPRO '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' and FCODEMP(+)=0'+IntToStr(codemp))
                 +' and FCODFOR(+)=PDCODFOR ');
   if Trim(CODFOR.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RG_BLOQ.ItemIndex<>3 then
      DM1.Query1.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));
   if RGTPRO.ItemIndex<8 then
      DM1.Query1.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      DM1.Query1.SQL.Add(' and PDNIVEL<>0');
   if Trim(CODTIP.Text)<>'' then
      DM1.Query1.SQL.Add(' and IGCODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
   if RG_EST.ItemIndex=1 then
      DM1.Query1.SQL.add(' and IGQTD<>0 ')
   else if RG_EST.ItemIndex=2 then
      DM1.Query1.SQL.add(' and IGQTD=0 ');
   if not Cb_EstNeg.Checked then
      DM1.Query1.SQL.add(' and IGQTD>=0 ');

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       DM1.Query1.SQL.Add(' and PDCODGRU '+mcinst2);
   if RG_Ordem.ItemIndex=0 then
      DM1.Query1.SQL.add(' Order by PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=1 then
      DM1.Query1.SQL.add(' Order by IGSIT,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=2 then
      DM1.Query1.SQL.add(' Order by FRAZAO,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=3 then
      DM1.Query1.SQL.add(' Order by IGCODTIP,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=4 then
      DM1.Query1.SQL.add(' Order by PDCODPRO,IGGRADE,PDNOME,IGDTVCTO ')
   end
else if rg_anterior.ItemIndex=1 then
   begin
   DM1.Query1.SQL.Add(' CED_GRADE AS CLNUMERO, CED_DTVCTO AS CLDTVCTO, CED_SIT AS PDSIT, CED_CODTIP AS CODTIP, ');
   if RG_TPPRECO.ItemIndex=0 then
      DM1.Query1.SQL.Add(' CED_PRECO1 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=1 then
      DM1.Query1.SQL.Add(' CED_PRECO2 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=2 then
      DM1.Query1.SQL.Add(' CED_PRECO3 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=3 then
      DM1.Query1.SQL.Add(' CED_PCUSTO AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=4 then
      DM1.Query1.SQL.Add(' CED_PCOMEDC   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=5 then
      DM1.Query1.SQL.Add(' CED_UCPR   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=6 then
      DM1.Query1.SQL.Add(' CED_PCOFAB   AS PDPRECO, ');
   if RG_TPINV.ItemIndex=0 then
      DM1.Query1.SQL.Add(' CED_QTDDIA'+FormatFloat('00',mdia)+' AS CESALDO ')
   else if RG_TPINV.ItemIndex=1 then
      DM1.Query1.SQL.Add(' CED_QTDDIAC'+FormatFloat('00',mdia)+' AS CESALDO ')
   else if RG_TPINV.ItemIndex=2 then
      DM1.Query1.SQL.Add(' CED_QTDDIAR'+FormatFloat('00',mdia)+' AS CESALDO ')
   else if RG_TPINV.ItemIndex=3 then
      DM1.Query1.SQL.Add(' CED_QTDDIAT'+FormatFloat('00',mdia)+' AS CESALDO ');

    DM1.Query1.SQL.Add(', CED_FILIAL AS IGFILIAL ');

   DM1.Query1.SQL.Add(' from CADEGD,CADPRO,CADFOR where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +'PDCODPRO=CED_CODPRO and  '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP(+)=0'+IntToStr(codemp)+' and ')
                 +' FCODFOR(+)=PDCODFOR and '
                 +' CED_ANO=0'+FormatFloat('0000',mano)+' and '
                 +' CED_MES=0'+FormatFloat('00',mmes));

   if Trim(CODFOR.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RG_BLOQ.ItemIndex<>3 then
      DM1.Query1.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));

   if RGTPRO.ItemIndex<8 then
      DM1.Query1.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      DM1.Query1.SQL.Add(' and PDNIVEL<>0');

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       DM1.Query1.SQL.Add(' and PDCODGRU '+mcinst2);

   if Trim(CODTIP.Text)<>'' then
      DM1.Query1.SQL.Add(' and CED_CODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
   if RG_TPINV.ItemIndex=0 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=1 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=2 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=3 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'>=0 ')
      end;

   if RG_Ordem.ItemIndex=0 then
      DM1.Query1.SQL.add(' Order by PDNOME,CED_DTVCTO,CED_GRADE ')
   else if RG_Ordem.ItemIndex=1 then
      DM1.Query1.SQL.add(' Order by CED_SIT,PDNOME,CED_DTVCTO,CED_GRADE ')
   else if RG_Ordem.ItemIndex=2 then
      DM1.Query1.SQL.add(' Order by FRAZAO,PDNOME,CED_DTVCTO,CED_GRADE ')
   else if RG_Ordem.ItemIndex=3 then
      DM1.Query1.SQL.add(' Order by CED_CODTIP,PDNOME,CED_DTVCTO,CED_GRADE ')
   else if RG_Ordem.ItemIndex=4 then
      DM1.Query1.SQL.add(' Order by PDCODPRO,CED_GRADE,PDNOME,CED_DTVCTO ')
   end
else if rg_anterior.ItemIndex=0 then
   begin
   DM1.Query1.SQL.add('  CLNUMERO, CLDTVCTO, PDSIT AS PDSIT,PDCODTIP AS CODTIP,  ');
   if RG_TPPRECO.ItemIndex=0 then
      DM1.Query1.SQL.Add(' PDPRECO1 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=1 then
      DM1.Query1.SQL.Add(' PDPRECO2 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=2 then
      DM1.Query1.SQL.Add(' PDPRECO3 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=3 then
      DM1.Query1.SQL.Add(' PDPRECOC AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=4 then
      DM1.Query1.SQL.Add(' PDPCOMC   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=5 then
      DM1.Query1.SQL.Add(' PDUCPR   AS PDPRECO, ');

   if RG_TPINV.ItemIndex=0 then
      DM1.Query1.SQL.Add(' CLQTD   AS CLQTD ')
   else if RG_TPINV.ItemIndex=1 then
      DM1.Query1.SQL.Add(' CLQTDC AS CLQTD ')
   else if RG_TPINV.ItemIndex=2 then
      DM1.Query1.SQL.Add(' CEQTDR AS CLQTDR ')
   else if RG_TPINV.ItemIndex=3 then
      DM1.Query1.SQL.Add(' CEQTDT AS CLQTDR ');
    DM1.Query1.SQL.Add(', CLFILIAL AS IGFILIAL ');

   DM1.Query1.SQL.Add(' from CADLGC,CADPRO,CADFOR  where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntToStr(codemp)+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +'PDCODPRO=CLCODPRO and '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP(+)=0'+IntToStr(codemp)+' and ')
                 +' FCODFOR(+)=PDCODFOR ');

   if Trim(CODFOR.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RGTPRO.ItemIndex<8 then
      DM1.Query1.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      DM1.Query1.SQL.Add(' and PDNIVEL<>0');
   if RG_BLOQ.ItemIndex<>3 then
      DM1.Query1.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));
   if Trim(CODTIP.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      DM1.Query1.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       DM1.Query1.SQL.Add(' and PDCODGRU '+mcinst2);

   if RG_TPINV.ItemIndex=0 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CLQTD<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CLQTD=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CLQTD>=0 ');
      end
   else if RG_TPINV.ItemIndex=1 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CLQTDC<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CLQTDC=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CLQTDC>=0 ');
      end
   else if RG_TPINV.ItemIndex=2 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CLQTDR<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CLQTDR=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CLQTDR>=0 ');
      end
   else if RG_TPINV.ItemIndex=3 then
      begin
      if RG_EST.ItemIndex=1 then
         DM1.Query1.SQL.add(' and CLQTDT<>0 ')
      else if RG_EST.ItemIndex=2 then
         DM1.Query1.SQL.add(' and CLQTDT=0 ');
      if not Cb_EstNeg.Checked then
         DM1.Query1.SQL.add(' and CLQTDT>=0 ');
      end;

   if RG_Ordem.ItemIndex=0 then
      DM1.Query1.SQL.add(' Order by PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=1 then
      DM1.Query1.SQL.add(' Order by PDSIT,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=2 then
      DM1.Query1.SQL.add(' Order by FRAZAO,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=3 then
      DM1.Query1.SQL.add(' Order by PDCODTIP,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=4 then
      DM1.Query1.SQL.add(' Order by PDCODPRO,CLNUMERO,PDNOME,CLDTVCTO')

   end;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2137,'frm_inv','INVGRA_GD');
   exit;
   end;
MessageDlg('Arquivo Exportado!',mtWarning,[mbOk],0);

end;

function TFrm_InvGra.fLerinv(ptipo: Integer): Boolean;
var
mInstrucao_Grupo: String;
begin
if cb_separado.ItemIndex=0 then
   mInstrucao_Grupo:=' FRAZAO AS GRUPO, '+chr(39)+'Fornecedor: '+chr(39)+'|| FRAZAO as DESCGRUPO '
else if cb_separado.ItemIndex=1 then
   mInstrucao_Grupo:=' PDNOMGRU AS GRUPO, '+chr(39)+'Grupo de Produtos: '+chr(39)+'|| PDNOMGRU as DESCGRUPO '
else if cb_separado.ItemIndex=2 then
   mInstrucao_Grupo:=' PDNOMRAM AS GRUPO, '+chr(39)+'Sub-Grupo(Ramo) Produto: '+chr(39)+'|| PDNOMRAM as DESCGRUPO '
else if cb_separado.ItemIndex=4 then
   mInstrucao_Grupo:=' PDSIT AS GRUPO, '+chr(39)+'Situação Tributaria: '+chr(39)+'|| PDSIT as DESCGRUPO '
else if cb_separado.ItemIndex=5 then
   mInstrucao_Grupo:=' PDNOMCON AS GRUPO, '+chr(39)+'Controle Produto: '+chr(39)+'|| PDNOMCON as DESCGRUPO '
else if cb_separado.ItemIndex=2 then
   mInstrucao_Grupo:=' PDNOMTIP AS GRUPO, '+chr(39)+'Tipo de Produto: '+chr(39)+'|| PDNOMTIP as DESCGRUPO '
else
   mInstrucao_Grupo:=chr(39)+insere(' ',' ',10)+chr(39)+' AS GRUPO, '+chr(39)+insere(' ',' ',10)+chr(39)+' as DESCGRUPO ';
mInstrucao_Grupo:=mInstrucao_Grupo+',';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

Tb_Inv.Close;
Tb_Inv.SQL.Clear;
Tb_Inv.SQL.Add('Select PDNOME,PDMARCA,PDUND,PDCLAS,PDCODFOR,FRAZAO,'
              +mInstrucao_Grupo);

if rg_anterior.ItemIndex=2 then
   begin
   Tb_Inv.SQL.add(' IGCODTIP AS CODTIP, IGSIT AS PDSIT, ');
   Tb_Inv.SQL.Add(' IGPRECO AS PDPRECO, ');
   Tb_INv.SQL.Add(' IGQTD AS CLQTD, '
                 +' IGCODPRO AS CLCODPRO, '
                 +' IGGRADE  AS CLNUMERO, '
                 +' IGDTVCTO AS CLDTVCTO '
                 +' from INVGRA_GD,CADPRO,CADFOR where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' and IGCODEMP=0'+IntToStr(codemp)+' and ')
                 +' and IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39)
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                 +' and PDCODPRO=IGCODPRO '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' and FCODEMP(+)=0'+IntToStr(codemp))
                 +' and FCODFOR(+)=PDCODFOR ');

   if Trim(CODFOR.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RG_BLOQ.ItemIndex<>3 then
      Tb_Inv.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));

   if RGTPRO.ItemIndex<8 then
      Tb_Inv.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      Tb_Inv.SQL.Add(' and PDNIVEL<>0');

   if Trim(CODTIP.Text)<>'' then
      Tb_Inv.SQL.Add(' and IGCODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
   if RG_EST.ItemIndex=1 then
      Tb_Inv.SQL.add(' and IGQTD<>0 ')
   else if RG_EST.ItemIndex=2 then
      Tb_Inv.SQL.add(' and IGQTD=0 ');
   if not Cb_EstNeg.Checked then
      Tb_Inv.SQL.add(' and IGQTD>=0 ');

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       Tb_Inv.SQL.Add(' and PDCODGRU '+mcinst2);

   if RG_Ordem.ItemIndex=0 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=1 then
      Tb_Inv.SQL.add(' Order by GRUPO,IGSIT,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=2 then
      Tb_Inv.SQL.add(' Order by GRUPO,FRAZAO,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=3 then
      Tb_Inv.SQL.add(' Order by GRUPO,IGCODTIP,PDNOME,IGDTVCTO,IGGRADE ')
   else if RG_Ordem.ItemIndex=4 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDCODPRO,IGGRADE,PDNOME,IGDTVCTO ')
   end
else if rg_anterior.ItemIndex=1 then
   begin
   Tb_Inv.SQL.add(' CED_CODTIP AS CODTIP, CED_SIT AS PDSIT, ');
   if RG_TPPRECO.ItemIndex=0 then
      Tb_Inv.SQL.Add(' CED_PRECO1 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=1 then
      Tb_Inv.SQL.Add(' CED_PRECO2 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=2 then
      Tb_Inv.SQL.Add(' CED_PRECO3 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=3 then
      Tb_Inv.SQL.Add(' CED_PCUSTO AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=4 then
      Tb_Inv.SQL.Add(' CED_PCOMEDC   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=5 then
      Tb_Inv.SQL.Add(' CED_UCPR   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=6 then
      Tb_Inv.SQL.Add(' CED_PCOFAB   AS PDPRECO, ');
   if RG_TPINV.ItemIndex=0 then
      Tb_INv.SQL.Add(' CED_QTDDIA'+FormatFloat('00',mdia)+' AS CLQTD, ')
   else if RG_TPINV.ItemIndex=1 then
      Tb_INv.SQL.Add(' CED_QTDDIAC'+FormatFloat('00',mdia)+' AS CLQTD, ')
   else if RG_TPINV.ItemIndex=2 then
      Tb_INv.SQL.Add(' CED_QTDDIAR'+FormatFloat('00',mdia)+' AS CLQTD, ')
   else if RG_TPINV.ItemIndex=3 then
      Tb_INv.SQL.Add(' CED_QTDDIAT'+FormatFloat('00',mdia)+' AS CLQTD, ');

   Tb_INv.SQL.Add(' CED_GRADE  AS CLNUMERO, '
                 +' CED_DTVCTO AS CLDTVCTO, '
                 +' CED_CODPRO AS CLCODPRO '
                 +' from CADEGD,CADPRO,CADFOR where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntToStr(codemp)+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +'PDCODPRO=CED_CODPRO and  '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP(+)=0'+IntToStr(codemp)+' and ')
                 +' FCODFOR(+)=PDCODFOR and '
                 +' CED_ANO=0'+FormatFloat('0000',mano)+' and '
                 +' CED_MES=0'+FormatFloat('00',mmes));

   if Trim(CODFOR.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RG_BLOQ.ItemIndex<>3 then
      Tb_Inv.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));

   if RGTPRO.ItemIndex<8 then
      Tb_Inv.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      Tb_Inv.SQL.Add(' and PDNIVEL<>0');

   if Trim(CODTIP.Text)<>'' then
      Tb_Inv.SQL.Add(' and CED_CODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       Tb_Inv.SQL.Add(' and PDCODGRU '+mcinst2);

   if RG_TPINV.ItemIndex=0 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CED_QTDDIA'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=1 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CED_QTDDIAC'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=2 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CED_QTDDIAR'+FormatFloat('00', mdia)+'>=0 ')
      end
   else if RG_TPINV.ItemIndex=3 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CED_QTDDIAT'+FormatFloat('00', mdia)+'>=0 ')
      end;

   if RG_Ordem.ItemIndex=0 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDNOME,CED_DTVCTO,CED_GRADE  ')
   else if RG_Ordem.ItemIndex=1 then
      Tb_Inv.SQL.add(' Order by GRUPO,CED_SIT,PDNOME,CED_DTVCTO,CED_GRADE  ')
   else if RG_Ordem.ItemIndex=2 then
      Tb_Inv.SQL.add(' Order by GRUPO,FRAZAO,PDNOME,CED_DTVCTO,CED_GRADE  ')
   else if RG_Ordem.ItemIndex=3 then
      Tb_Inv.SQL.add(' Order by GRUPO,CED_CODTIP,PDNOME,CED_DTVCTO,CED_GRADE  ')
   else if RG_Ordem.ItemIndex=4 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDCODPRO,CED_GRADE,PDNOME,CED_DTVCTO  ')
   end
else if rg_anterior.ItemIndex=0 then
   begin
   Tb_Inv.SQL.add(' PDCODTIP AS CODTIP, PDSIT AS PDSIT, ');
   if RG_TPPRECO.ItemIndex=0 then
      Tb_Inv.SQL.Add(' PDPRECO1 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=1 then
      Tb_Inv.SQL.Add(' PDPRECO2 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=2 then
      Tb_Inv.SQL.Add(' PDPRECO3 AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=3 then
      Tb_Inv.SQL.Add(' PDPRECOC AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=4 then
      Tb_Inv.SQL.Add(' PDPCOMC   AS PDPRECO, ')
   else if RG_TPPRECO.ItemIndex=5 then
      Tb_Inv.SQL.Add(' PDUCPR   AS PDPRECO, ');
   if RG_TPINV.ItemIndex=0 then
      Tb_INv.SQL.Add(' CLQTD AS CLQTD, ')
   else if RG_TPINV.ItemIndex=1 then
      Tb_INv.SQL.Add(' CLQTDC AS CLQTD, ')
   else if RG_TPINV.ItemIndex=2 then
      Tb_INv.SQL.Add(' CLQTDR AS CLQTD, ')
   else if RG_TPINV.ItemIndex=3 then
      Tb_INv.SQL.Add(' CLQTDT AS CLQTD, ');


   Tb_Inv.SQL.add('  CLCODPRO, '
                 +'  CLNUMERO,'
                 +'  CLDTVCTO '
                 +' from CADLGC,CADPRO,CADFOR  where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntToStr(codemp)+' and   pdcodemp(+)=clcodemp ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +' PDCODPRO=CLCODPRO and '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP(+)=0'+IntToStr(codemp)+' and ')
                 +'  FCODFOR(+)=PDCODFOR ');

   if Trim(CODFOR.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODFOR=0'+Trim(CODFOR.Text));
   if RGTPRO.ItemIndex<8 then
      Tb_Inv.SQL.Add(' and PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex))
   else if RGTPRO.ItemIndex=8 then
      Tb_Inv.SQL.Add(' and PDNIVEL<>0');

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       Tb_Inv.SQL.Add(' and PDCODGRU '+mcinst2);

   if RG_BLOQ.ItemIndex<>3 then
      Tb_Inv.SQL.Add(' and PDSTATUS=0'+IntToStr(RG_BLOQ.ItemIndex));
   if Trim(CODTIP.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODTIP=0'+Trim(CODTIP.Text));
   if Trim(CODCON.Text)<>'' then
      Tb_Inv.SQL.Add(' and PDCODCON=0'+Trim(CODCON.Text));
   if RG_TPINV.ItemIndex=0 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CLQTD<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CLQTD=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CLQTD>=0 ');
      end
   else if RG_TPINV.ItemIndex=1 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CLQTDC<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CLQTDC=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CLQTD>=0 ');
      end
   else if RG_TPINV.ItemIndex=2 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CLQTDR<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CLQTDR=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CLQTDR>=0 ');
      end
   else if RG_TPINV.ItemIndex=3 then
      begin
      if RG_EST.ItemIndex=1 then
         Tb_Inv.SQL.add(' and CLQTDT<>0 ')
      else if RG_EST.ItemIndex=2 then
         Tb_Inv.SQL.add(' and CLQTDT=0 ');
      if not Cb_EstNeg.Checked then
         Tb_Inv.SQL.add(' and CLQTDT>=0 ');
      end;

   if RG_Ordem.ItemIndex=0 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=1 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDSIT,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=2 then
      Tb_Inv.SQL.add(' Order by GRUPO,FRAZAO,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=3 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDCODTIP,PDNOME,CLDTVCTO,CLNUMERO ')
   else if RG_Ordem.ItemIndex=4 then
      Tb_Inv.SQL.add(' Order by GRUPO,PDCODPRO,CLNUMERO,PDNOME,CLDTVCTO ')

   end;
try
   Tb_Inv.Open;
except
   Tb_Inv.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));;
   end;
//Tb_Inv.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));;

if Tb_Inv.Eof then
   result:=False
else
   result:=True;
end;
procedure TFrm_InvGra.cb_salvoExit(Sender: TObject);
begin
cb_salvo.text:=cb_salvo.Items.Strings[cb_salvo.ItemIndex];
if cb_salvo.Text='' then
   begin
   MessageDlg('Favor Selecionar um nome válido de arquivo!',mtWarning,[mbOk],0);
   cb_salvo.SetFocus;
   end;

end;

procedure TFrm_InvGra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_InvGra.Tb_InvCalcFields(DataSet: TDataSet);
begin
Tb_Invtotal.Value:=Arredonda( (Tb_InvCLQTD.AsFloat*Tb_InvPDPRECO.AsFloat),DM1.Tb_PargerPCASAS.AsInteger);

end;

procedure TFrm_InvGra.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotGer_Gru:=0;
  mtotqtd_Gru:=0;
  mtotGer_Ger:=0;
  mtotqtd_Ger:=0;

end;

procedure TFrm_InvGra.RLBand_DetailAfterPrint(Sender: TObject);
begin
  mtotGer_Gru:=mtotGer_Gru+Tb_Invtotal.AsFloat;
  mtotqtd_Gru:=mTotQtd_Gru+Tb_InvCLQTD.AsFloat;

  mtotGer_Ger:=mtotGer_Ger+Tb_Invtotal.AsFloat;
  mtotqtd_Ger:=mTotQtd_Ger+Tb_InvCLQTD.AsFloat;

end;

procedure TFrm_InvGra.RLBand_totgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
totgru_quantidade.Caption:=FormatFloat(inv_casqtd, mtotqtd_Gru);


totgru_total.Caption     :=FormatFloat(mcasas, mtotGer_Gru);
mtotqtd_Gru:=0;
mtotGer_Gru:=0;

end;

procedure TFrm_InvGra.RLBand_RodapeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
totger_quantidade.Caption:=FormatFloat(inv_casqtd, mtotqtd_Ger);
totger_total.Caption     :=FormatFloat(mcasas, mtotGer_Ger);
mtotqtd_Ger:=0;
mtotGer_Ger:=0;

end;

procedure TFrm_InvGra.CODGRUExit(Sender: TObject);
begin
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      codgru.setfocus;
      end;
   end;

end;

procedure TFrm_InvGra.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_InvGra.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

end.
