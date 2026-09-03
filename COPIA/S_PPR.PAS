unit S_PPR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, Buttons, StdCtrls, DBTables, Db, Grids, DBGrids, DBCtrls,
  Func, S_Pro, S_Red, S_PV, S_DM1, RDprint,lerarq,S_PPR_Cons, ComCtrls,
  RLReport, RLFilters, RLDraftFilter, RLXLSFilter, RLPDFFilter,
  RLHTMLFilter, RLRichFilter,S_PPR_AjustarDesc,s_lerarq_geral;

type
  TFrm_PPR = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbg_itens: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    BBnFechar: TBitBtn;
    BBnAplicar: TBitBtn;
    GBxCond: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    mdatini: TMaskEdit;
    mdatfin: TMaskEdit;
    NOMPV: TEdit;
    PVTAB: TEdit;
    PVTIP: TEdit;
    CODRED: TEdit;
    NOMRED: TEdit;
    OBS: TEdit;
    CBxConfVda: TCheckBox;
    gbValmin: TGroupBox;
    VALMIN: TEdit;
    CB_KIT: TCheckBox;
    CODREG: TEdit;
    NOMREG: TEdit;
    BBnGravar: TBitBtn;
    bbConsultar: TBitBtn;
    CB_PROMOCAO: TComboBox;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    LblEmpresa: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    rldetalhe: TRLBand;
    TxtCod: TRLDBText;
    TxtUnidade: TRLDBText;
    txt_preco: TRLDBText;
    txtMarca: TRLDBText;
    Src_PPR2: TDataSource;
    Qr_PPR: TQuery;
    Qr_PPRPPPROMOCAO: TStringField;
    Qr_PPRPPPVTIP: TStringField;
    Qr_PPRPPPVTAB: TStringField;
    Qr_PPRPPCODRED: TFloatField;
    Qr_PPRPPFLAG: TStringField;
    Qr_PPRPPCODPRO: TFloatField;
    Qr_PPRPPDATINI: TDateTimeField;
    Qr_PPRPPDATFIN: TDateTimeField;
    Qr_PPRPPCODGRU: TFloatField;
    Qr_PPRPPPCOVDA: TFloatField;
    Qr_PPRPPDESC_1: TFloatField;
    Qr_PPRPPDESC_2: TFloatField;
    Qr_PPRPPDESC_3: TFloatField;
    Qr_PPRPPCONFVDA: TStringField;
    Qr_PPRPPCOMIS: TFloatField;
    Qr_PPRPPQTDMIN: TFloatField;
    Qr_PPRPPVALMIN: TFloatField;
    Qr_PPRPPDESC_F: TFloatField;
    Qr_PPRPPPRIOR: TFloatField;
    Qr_PPRPDNOME: TStringField;
    Qr_PPRPDUND: TStringField;
    Qr_PPRPDPRECO1: TFloatField;
    Qr_PPRdescontos: TStringField;
    Qr_PPRPDMARCA: TStringField;
    txtNome: TRLDBText;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    matricial: TRLDraftFilter;
    RLBand_rod: TRLBand;
    RLBand_tit: TRLBand;
    lbl_titulo: TRLLabel;
    GB_IMPRES: TGroupBox;
    BbImprimir: TBitBtn;
    Label9: TLabel;
    TITULO: TEdit;
    Label10: TLabel;
    CODREG_IMP: TEdit;
    NOMREG_IMP: TEdit;
    Qr_PPRprecocalc: TFloatField;
    CB_SEMBORDAS: TCheckBox;
    RLCab_Itens: TRLBand;
    LblCodigo: TRLLabel;
    LblUnidade: TRLLabel;
    LblDesc: TRLLabel;
    lbl_marca: TRLLabel;
    lblPromocao: TRLLabel;
    CB_LINHA_LQ: TCheckBox;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    bbAdquirir: TBitBtn;
    bbExcluir: TBitBtn;
    bbAjustarDesc: TBitBtn;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    Qr_PPRPPGRADE: TStringField;
    cb_codbar: TCheckBox;
    Label11: TLabel;
    edt_nomcli: TEdit;
    edt_codcli: TEdit;
    Qr_PPRPPCODCLI: TFloatField;
    Qr_PPRPPID_ANO: TFloatField;
    Qr_PPRPPID: TFloatField;
    U_PPR: TUpdateSQL;
    src_ppr: TDataSource;
    Tb_PPR: TQuery;
    Tb_PPRPPCODEMP: TFloatField;
    Tb_PPRPPPROMOCAO: TStringField;
    Tb_PPRPPPVTIP: TStringField;
    Tb_PPRPPPVTAB: TStringField;
    Tb_PPRPPCODRED: TFloatField;
    Tb_PPRPPFLAG: TStringField;
    Tb_PPRPPCODPRO: TFloatField;
    Tb_PPRPPDATINI: TDateTimeField;
    Tb_PPRPPDATFIN: TDateTimeField;
    Tb_PPRPPCODGRU: TFloatField;
    Tb_PPRPPPCOVDA: TFloatField;
    Tb_PPRPPDESC_1: TFloatField;
    Tb_PPRPPDESC_2: TFloatField;
    Tb_PPRPPDESC_3: TFloatField;
    Tb_PPRPPCONFVDA: TStringField;
    Tb_PPRPPCOMIS: TFloatField;
    Tb_PPRPPQTDMIN: TFloatField;
    Tb_PPRPPVALMIN: TFloatField;
    Tb_PPRPPOBS: TStringField;
    Tb_PPRPPKIT: TStringField;
    Tb_PPRPPDESC_F: TFloatField;
    Tb_PPRPDNOME: TStringField;
    Tb_PPRPPPRIOR: TFloatField;
    Tb_PPRPPCODREG: TFloatField;
    Tb_PPRPPGRADE: TStringField;
    Tb_PPRPPDATHOR_ALT: TDateTimeField;
    Tb_PPRPPDATHOR_INC: TDateTimeField;
    Tb_PPRPPCODCLI: TFloatField;
    Tb_PPRPPID_ANO: TFloatField;
    Tb_PPRPPID: TFloatField;
    Label12: TLabel;
    edt_uf: TEdit;
    edt_nomuf: TEdit;
    Qr_PPRPPUF: TStringField;
    Tb_PPRPPUF: TStringField;
    procedure BBnFecharClick(Sender: TObject);
    procedure mdatiniExit(Sender: TObject);
    procedure mdatfinExit(Sender: TObject);
    procedure PVTABExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure BBnAplicarClick(Sender: TObject);
    procedure dbg_itensColExit(Sender: TObject);
    procedure dbg_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBnGravarClick(Sender: TObject);
    procedure GBxCondExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure PVTABKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDKeress(Sender: TObject; var Key: Char);
    procedure dbg_itensKeyPress(Sender: TObject; var Key: Char);
    procedure VALMINExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_PROMOCAOExit(Sender: TObject);
    procedure CODREGExit(Sender: TObject);
    procedure CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_PPRCalcFields(DataSet: TDataSet);
    procedure BbImprimirClick(Sender: TObject);
    procedure CODREG_IMPExit(Sender: TObject);
    procedure CODREG_IMPKeyPress(Sender: TObject; var Key: Char);
    procedure CB_SEMBORDASClick(Sender: TObject);
    procedure bbAdquirirClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbAjustarDescClick(Sender: TObject);
    procedure TITULOExit(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure c(DataSet: TDataSet);
    procedure Tb_PPRAfterInsert(DataSet: TDataSet);
    procedure Tb_PPRBeforeDelete(DataSet: TDataSet);
    procedure Tb_PPRBeforePost(DataSet: TDataSet);
    procedure GBxCondEnter(Sender: TObject);
    procedure edt_ufExit(Sender: TObject);
    procedure edt_ufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mant_pvtip: string;
    mant_pvtab: string;
    mant_uf: string;
    mant_codcli: Real;
    mant_codred: real;
    mant_codreg: real;
    mant_obs: string;
    mant_datini: tdate;
    mant_datfin: tdate;
    mant_confvda: boolean;
    mant_kit: boolean;
    mant_valmin: real;


    function fppratribui(ptipo: Integer):Boolean;
    function fatualizapromocao(ptipo: Integer): Boolean;


   function flcadppr_local(pCadPPr: pCadPPR): Boolean;


   function fAtualizarDadosPromocaoGeral: boolean;


  public
    { Public declarations }
  end;

var
  Frm_PPR:TFrm_PPR;
  mAcreReg: Real=0;
  mAcreReg_imp:Real=0;

implementation

uses S_DM2, S_Regiao, S_DM6, S_PcoLotAP, S_Agde, S_DM5, func_excecoes;

{$R *.DFM}

procedure TFrm_PPR.BBnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_PPR.mdatiniExit(Sender: TObject);
begin
   try
      mdatini.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(mdatini.Text))
   Except
      Fmensagem('Data inicial inválida, coloque uma data válida!',0,['0'],0);
      mdatini.Clear;
      mdatini.SetFocus;
   end;
end;

procedure TFrm_PPR.mdatfinExit(Sender: TObject);
begin
   try
      mdatfin.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(mdatfin.Text))
   Except
      Fmensagem('Data final inválida, coloque uma data válida!',0,['0'],0);
      mdatfin.Clear;
      mdatfin.SetFocus;
   end;
end;

procedure TFrm_PPR.PVTABExit(Sender: TObject);
begin
PVTAB.Text:=fdeixanum2(PVTAB.Text);
   if (Trim(PVTIP.Text)='') or (Trim(PVTAB.Text)='') then
   begin
      PVTIP.Text:='';
      PVTAB.Text:='';
      NOMPV.Text:='<Vazio> - Não verifica Plano de Vendas'
   end
   else
   begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select PVNOME from CADPV where PVCODTIP='+CHR(39)+Trim(PVTIP.Text)+CHR(39)
                        +' and PVCODPV=0'+fdeixanum2(PVTAB.Text));
      DM1.Query1.Open;
      if DM1.Query1.fields[0].isNull then
      begin
         Fmensagem('Plano de Vendas não Cadastrado.',0,['0'],0);
         PVTIP.SetFocus;
         abort;
      end;
      NOMPV.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_PPR.CODREDExit(Sender: TObject);
begin
   if StrToInt('0'+Trim(CODRED.Text))<=0 then
   begin
      CODRED.Text:='';
      NOMRED.Text:='<Vazio> - Não verifica Rede de Clientes'
   end
   else
   begin
      if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',Trim(CODRED.Text)) then
         begin
         Fmensagem('Rede Não Cadastrada',0,['0'],0);
         CODRED.SetFocus;
         Exit;
         end;
      NOMRED.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_PPR.BBnAplicarClick(Sender: TObject);
begin

if BBnFechar.Focused then Exit;

if Trim(CB_PROMOCAO.Text)='' then
   begin
   CB_PROMOCAO.SetFocus;
   exit;
   end;

CB_PROMOCAO.Text:=Trim(CB_PROMOCAO.Text);
CB_PROMOCAO.Enabled   :=False;
BBnAplicar.Enabled :=False;
BBnFechar.Enabled  :=False;
GBxCond.Enabled    :=True;
BBnGravar.Enabled  :=True;
BbImprimir.Enabled :=true;
dbg_itens.ReadOnly :=false;

mCadPPR.ptipo  :=0;
mCadPPR.pcodemp:=0;
mCadPPR.ppre   :=0;
mCadPPR.pvalida:=0;
mCadPPR.pValor1:= CB_PROMOCAO.text;
mCadPPR.pValor2:='';
mCadPPR.pTabPV :='';
mCadPPR.pCodPV :='';
mCadPPR.pCodRed :='';
mCadPPR.pDataMax :=pdatanula;
mCadPPR.pCodReg :=0;
mCadPPR.pCodCli :=0;
mCadPPR.pUf     :='';


flcadppr_local(mCadPPR);
if Tb_PPR.Eof then
   begin
   PVTIP.Text  :='';
   PVTAB.Text  :='';
   edt_uf.Text :='';
   CODRED.Text :='';
   edt_codcli.Text:='';
   edt_nomcli.Text  :='<Vazio> - Não verifica clientes';
   edt_nomuf.Text  :='<Vazio> - Não verifica o Estado';
   NOMPV.Text  :='<Vazio> - Não verifica Plano de Vendas';
   NOMRED.Text :='<Vazio> - Não verifica Rede de Clientes';
   NOMREG.Text :='<Vazio> - Não verifica Regiao do Vendedor';
   mdatini.Text:=FormatDateTime(fdt2,Date);
   mdatfin.Text:=FormatDateTime(fdt2,Date);
   CBxConfVda.Checked:=False;
   end
else
   begin
   mdatini.Text:=FormatDateTime(fdt2,IIF(Tb_PPRPPDATINI.Isnull,Date,Tb_PPRPPDATINI.Value));
   mdatfin.Text:=FormatDateTime(fdt2,IIF(Tb_PPRPPDATFIN.IsNull,Date,Tb_PPRPPDATFIN.Value));
   PVTIP.Text  :=Tb_PPRPPPVTIP.AsString;
   PVTAB.Text  :=Tb_PPRPPPVTAB.AsString;
   edt_uf.Text :=Tb_PPRPPUF.AsString;
   edt_codcli.Text :=IIF(Tb_PPRPPCODCLI.AsInteger=0,'',Tb_PPRPPCODCLI.asstring);

   CODRED.Text :=IIF(Tb_PPRPPCODRED.AsInteger=0,'',Trim(IntToStr(Tb_PPRPPCODRED.AsInteger)));
   CODREG.Text :=IIF(Tb_PPRPPCODREG.AsInteger=0,'',Trim(IntToStr(Tb_PPRPPCODREG.AsInteger)));
   OBS.Text    :=Tb_PPRPPOBS.AsString;
   CBxConfVda.Checked:=IIF(Tb_PPRPPCONFVDA.AsString='S',True,False);
   end;
TITULO.Text :=trim(CB_PROMOCAO.Text);

if (Trim(PVTIP.Text)='') or (Trim(PVTAB.Text)='') then
   begin
   PVTIP.Text:='';
   PVTAB.Text:='';
   NOMPV.Text:='<Vazio> - Não verifica Plano de Vendas'
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PVNOME from CADPV where '
                     +iif(DM1.Qr_Tid.locate('TINOME','CADPV',[]),'',' PVCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PVCODTIP='+CHR(39)+Trim(PVTIP.Text)+CHR(39)
                     +' and PVCODPV=0'+fdeixanum(PVTAB.Text));
   DM1.Query1.Open;
   NOMPV.Text:=DM1.Query1.Fields[0].AsString;
   end;





if (Trim(edt_uf.Text)='') then
   begin
   edt_uf.Text:='';
   edt_nomuf.Text:='<Vazio> - Não verifica Estado'
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PUF,PNOM from CADUF where '
                     +iif(DM1.Qr_Tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PUF='+CHR(39)+Trim(edt_uf.Text)+CHR(39));
   DM1.Query1.Open;
   edt_nomuf.Text:=DM1.Query1.Fields[1].AsString;
   edt_uf.Text:=DM1.Query1.Fields[0].AsString;
   end;

if valint(edt_codcli.text)<=0 then
   begin
   edt_CODCLI.Text:='';
   edt_nomcli.Text:='<Vazio> - Não verifica Clientes'
end
   else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      edt_nomcli.Text:=DM1.Query1.Fields[0].AsString;
   end;


if StrToInt('0'+Trim(CODRED.Text))<=0 then
   begin
   CODRED.Text:='';
   NOMRED.Text:='<Vazio> - Não verifica Rede de Clientes'
end
   else
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      NOMRED.Text:=DM1.Query1.Fields[0].AsString;
   end;

if StrToInt('0'+Trim(CODREG.Text))<=0 then
   begin
   CODREG.Text:='';
   NOMREG.Text :='<Vazio> - Não verifica Regiao do Vendedor';
   mAcreReg:=0;
   end
else
   begin
   if flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',Trim(CODREG.Text)) then
      begin
      NOMREG.Text:=DM1.Query1.Fields[0].AsString;
      mAcreReg   :=DM1.Query1.Fields[1].AsFloat;
      end;
   end;

mdatini.SetFocus;
end;

procedure TFrm_PPR.dbg_itensColExit(Sender: TObject);
Var
   mpcovda, mdesc_1, mdesc_2, mdesc_3, mcomis:Real;
begin
if (Tb_PPR.State in [dsEdit, DsInsert]) then
   begin
   Tb_PPRPPPROMOCAO.AsString:=trim(CB_PROMOCAO.Text);
   if dbg_itens.SelectedField=Tb_PPRPPCODPRO then
      begin
      if not flcadpro(1,0,0,fdeixanum(Tb_PPRPPCODPRO.AsString)) then
         begin
         Tb_PPRPPCODPRO.AsString:=FloatToStr(fAchaCodigoOri(Tb_PPRPPCODPRO.AsString));
         if trim(Tb_PPRPPCODPRO.AsString)='' then
            begin
            FMensagem('Produto não Cadastrado!',0,['0'],0);
            dbg_itens.SelectedField:=Tb_PPRPPCODPRO;
            dbg_itens.SetFocus;
            abort;
            exit;
            end;
         if not flcadpro(1,0,0,fdeixanum(Tb_PPRPPCODPRO.AsString)) then
            begin
            FMensagem('Produto não Cadastrado!',0,['0'],0);
            dbg_itens.SelectedField:=Tb_PPRPPCODPRO;
            dbg_itens.SetFocus;
            abort;
            exit;
            end;
         end;
      if mAcreReg<>0 then
         begin
         try
            mpcovda:=Arredonda((DM1.Tb_ProPDPRECO1.AsFloat+(DM1.Tb_ProPDPRECO1.AsFloat*mAcreReg/100)), mQtdCas_arredpu) ;
         except
            mpcovda:=DM1.Tb_ProPDPRECO1.AsFloat;
            end;
         end
      else
         mpcovda:=DM1.Tb_ProPDPRECO1.AsFloat;
      Tb_PPRPDNOME.Value:=DM1.Tb_ProPDNOME.AsString;
      mdesc_1:=DM1.Tb_ProPDDESC1.AsFloat;
      mdesc_2:=DM1.Tb_ProPDDESC2.AsFloat;
      mdesc_3:=DM1.Tb_ProPDDESC3.AsFloat;
      mcomis :=DM1.Tb_ProPDCOMIS.AsFloat;
      if Tb_PPR.State in [dsinsert] then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('select PPCODPRO from CADPPR WHERE '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PPCODPRO=0'+Trim(Tb_PPRPPCODPRO.AsString)
                     +' and PPPROMOCAO='+CHR(39)+Trim(CB_PROMOCAO.Text)+CHR(39));
         DM1.Query2.Open;
         if not DM1.Query2.Fields[0].IsNull then
            begin
            Fmensagem('Produto já incluso nesta promoção.',0,['0'],0);
            Abort;
            end;
          end;
      Tb_PPRPPPCOVDA.AsFloat:=mpcovda;
      Tb_PPRPPDESC_1.AsFloat:=mdesc_1;
      Tb_PPRPPDESC_2.AsFloat:=mdesc_2;
      Tb_PPRPPDESC_3.AsFloat:=mdesc_3;
      Tb_PPRPPCOMIS.AsFloat :=mcomis;
      Tb_PPRPPPROMOCAO.AsString:=trim(CB_PROMOCAO.Text);
      end
   else if dbg_itens.SelectedField=Tb_PPRPPPCOVDA then
      begin
      if Tb_PPRPPPCOVDA.AsFloat<=0 then
         begin
         fmensagem('Preço Inválido.',0,['0'],0);
         Abort;
         end;
      end;
   end;
end;


procedure TFrm_PPR.dbg_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{   if Tb_PPR.State in [dsInsert, dsEdit] then
   begin
      if (Key=113) and (DBGrid1.SelectedField=Tb_PPRPPCODPRO) then
         SBnProduto.Click;
   end;
}
end;

procedure TFrm_PPR.BBnGravarClick(Sender: TObject);
begin
fppratribui(0);

Tb_PPR.Close;
CB_PROMOCAO.Enabled   :=True;
BBnAplicar.Enabled :=True;
BBnFechar.Enabled  :=True;
mdatini.Clear;
mdatfin.Clear;
PVTIP.Clear;
PVTAB.Clear;
NOMPV.Text :='<Vazio> - Não verifica Plano de Vendas';

edt_uf.clear;
edt_nomuf.Text :='<Vazio> - Não verifica estado';

CODRED.Clear;
NOMRED.Text:='<Vazio> - Não verifica Rede de Clientes';
edt_codcli.Clear;
edt_nomcli.Text:='<Vazio> - Não verifica Clientes';

CODREG.Clear;
NOMREG.Text:='<Vazio> - Não verifica Regiao do Vendedor';
OBS.Clear;
CBxConfVda.Checked:=False;
GBxCond.Enabled    :=False;
BBnGravar.Enabled  :=False;
bbImprimir.Enabled :=false;
dbg_itens.ReadOnly :=true;
TITULO.Text :='';

fatualizapromocao(0);
CB_PROMOCAO.SetFocus;
end;

procedure TFrm_PPR.GBxCondExit(Sender: TObject);
begin
try
   mdatini.Text:=FormatDateTime(fdt2,StrToDate(mdatini.Text))
Except
   Fmensagem('Data inicial inválida, coloque uma data válida!',0,['0'],0);
   mdatini.SetFocus;
   end;
try
   mdatfin.Text:=FormatDateTime(fdt2,StrToDate(mdatfin.Text))
Except
   Fmensagem('Data final inválida, coloque uma data válida!',0,['0'],0);
   mdatfin.SetFocus;
   end;
if StrToDate(mdatini.Text)>StrToDate(mdatfin.Text) then
   begin
   Fmensagem('Data inicial não pode ser maior que data final!',0,['0'],0);
   mdatini.SetFocus;
   end;
if (Trim(PVTIP.Text)='') or (Trim(PVTAB.Text)='') then
   begin
   PVTIP.Text:='';
   PVTAB.Text:='';
   NOMPV.Text:='<Vazio> - Não verifica Plano de Vendas';
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select PVNOME from CADPV where PVCODTIP='+CHR(39)+Trim(PVTIP.Text)+CHR(39)
                     +' and PVCODPV=0'+fdeixanum2(PVTAB.Text));
   DM1.Query1.Open;
   if DM1.Query1.fields[0].isNull then
      begin
      Fmensagem('Plano de Vendas não Cadastrado.',0,['0'],0);
      PVTIP.SetFocus;
      Exit;
      end;
   NOMPV.Text:=DM1.Query1.Fields[0].AsString;
   end;


if (Trim(edt_uf.Text)='') then
   begin
   edt_uf.Text:='';
   edt_nomuf.Text:='<Vazio> - Não verifica Estado'
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PUF,PNOM from CADUF where '
                     +iif(DM1.Qr_Tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PUF='+CHR(39)+Trim(edt_uf.Text)+CHR(39));
   DM1.Query1.Open;
   edt_nomuf.Text:=DM1.Query1.Fields[1].AsString;
   edt_uf.Text:=DM1.Query1.Fields[0].AsString;
   end;


if StrToInt('0'+Trim(CODRED.Text))<=0 then
   begin
   CODRED.Text:='';
   NOMRED.Text:='<Vazio> - Não verifica Rede de Clientes'
   end
else
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',Trim(CODRED.Text)) then
      begin
      Fmensagem('Rede Não Cadastrada',0,['0'],0);
      CODRED.SetFocus;
      Exit;
      end;
   NOMRED.Text:=DM1.Query1.Fields[0].AsString;
   end;


if valint(edt_codcli.text)<=0 then
   begin
   edt_codcli.clear;
   edt_nomcli.Text:='<Vazio> - Não verifica Clientes'
   end
else
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',fdeixanum(edt_codcli.text)) then
      begin
      Fmensagem('Cliente Não Cadastrada',0,['0'],0);
      edt_codcli.SetFocus;
      Exit;
      end;
   edt_nomcli.Text:=DM1.Query1.Fields[0].AsString;
   end;




if (mant_pvtip<>PVTIP.Text) or
   (mant_pvtab<>PVTAB.Text) or
   (mant_uf<>edt_uf.Text) or
   (mant_codcli<>fsonumero(edt_codcli.Text)) or
   (mant_codred <> fsonumero(CODRED.Text)) or
   (mant_codreg <> fsonumero(CODREG.Text)) or
   (mant_obs    <>  OBS.Text) or
   (mant_datini <> fStringtodatetime(mdatini.Text)) or
   (mant_datfin <> fStringtodatetime(mdatfin.Text)) or
   (mant_confvda<> CBxConfVda.Checked) or
   (mant_kit    <> CB_KIT.Checked) or
   (mant_valmin <> valfloat(VALMIN.text))  then
   fAtualizarDadosPromocaoGeral;




end;

procedure TFrm_PPR.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   dbg_itens.SetFocus;
end;

procedure TFrm_PPR.PVTABKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   PVTAB.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(PVTAB.Text)<>0 then
      begin
      PVTIP.Text:=DM1.Tb_PVPVCODTIP.AsString;
      PVTABExit(Self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PPR.CODREDKeress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;
end;

procedure TFrm_PPR.dbg_itensKeyPress(Sender: TObject; var Key: Char);
begin
if Tb_PPR.State in [dsEdit, DsInsert] then
   begin
   if dbg_itens.SelectedField=Tb_PPRPPCODPRO then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
          begin
          Tb_PPRPPCODPRO.Value:=valfloat(fChamaPro(0,'Frm_PcoLot',key));
          key:=#0;
          end
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PPR.VALMINExit(Sender: TObject);
begin
VALMIN.Text:=insere(FormatFloat(mcasas, valfloat(VALMIN.Text)),' ',15);
if ValFloat(VALMIN.Text)<0 then
   begin
   fmensagem('Favor tem que ser positivo!',0,['0'],0);
   VALMIN.SetFocus;
   end;

end;

function TFrm_PPr.fppratribui(ptipo: Integer):Boolean;
begin
Tb_PPR.First;
if not Tb_PPR.Eof then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADPPR set '
                     +' PPDATINI  = :DATINI, '
                     +' PPDATFIN  = :DATFIN, '
                     +' PPCONFVDA = '+chr(39)+iif(CBxConfVda.Checked,'S','N')+chr(39)+','
                     +' PPPVTIP   = :TIP, '
                     +' PPPVTAB   = 0'+fdeixanum(PVTAB.Text)+','
                     +' PPCODRED  = 0'+Trim(CODRED.Text)+','
                     +' PPCODCLI  = 0'+fdeixanum(edt_codcli.Text)+','
                     +' PPUF      = '+QuotedStr(edt_uf.Text)+','
                     +' PPCODREG  = 0'+Trim(CODREG.Text)+','
                     +' PPOBS     = :OBS'
                     +' where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' trim(PPPROMOCAO)='+chr(39)+trim(CB_PROMOCAO.Text)+chr(39));
   DM1.Query1.ParamByName('TIP').AsString :=Trim(PVTIP.Text);
   DM1.Query1.ParamByName('OBS').AsString :=Trim(OBS.Text);
   if trim(mdatini.Text)<>'/  /' then
      DM1.Query1.ParamByName('DATINI').AsString := FormatDateTime(fdt, StrToDate(mdatini.Text));
   if trim(mdatfin.Text)<>'/  /' then
      DM1.Query1.ParamByName('DATFIN').AsString := FormatDateTime(fdt, StrToDate(mdatfin.Text));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.Sql.SaveTofile('c:\sql.txt');
      end;
   end;
result:=True;
end;
procedure TFrm_PPR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if Tb_PPR.Active then
   fppratribui(1);

end;

procedure TFrm_PPR.bbConsultarClick(Sender: TObject);
begin

if Frm_PPR_Cons=nil then
   Application.CreateForm(TFrm_PPR_Cons, Frm_PPR_Cons)
else
   begin
   Frm_PPR_Cons.free;
   Frm_PPR_Cons:=nil;
   Application.CreateForm(TFrm_PPR_Cons, Frm_PPR_Cons);
   end;


Frm_PPR_Cons.ShowModal;
CB_PROMOCAO.Text:=trim(DM1.Query4.fieldbyName('PPPROMOCAO').AsString);
Frm_PPR_Cons.Free;
Frm_PPR_Cons:=nil;

BBnAplicar.Click;
end;

procedure TFrm_PPR.FormCreate(Sender: TObject);
begin
if Tb_PPR.Active Then Tb_PPR.close;
fatualizapromocao(0);
TabSheet2.TabVisible:=false;

if (valint(copy(mpseg,4,2))=2) then
  begin
  dbg_itens.Columns[1].Visible:=True;
  dbg_itens.Columns[1].Title.Caption:='Lote';
  dbg_itens.Columns[1].ReadOnly:=False;
  end
else if (valint(copy(mpseg,4,2))=1)  then
  begin
  dbg_itens.Columns[1].Visible:=True;
  dbg_itens.Columns[1].Title.Caption:='Grade';
  dbg_itens.Columns[1].ReadOnly:=True;;  
  end
else
  begin
  dbg_itens.Columns[1].Visible:=False;
  end;

end;

procedure TFrm_PPR.CB_PROMOCAOExit(Sender: TObject);
var
mPromo: String;
begin
mPromo:=UpperCase(CB_PROMOCAO.Text);
//if CB_PROMOCAO.ItemIndex<0 then
with CB_PROMOCAO do ItemIndex:=Items.IndexOf(CB_PROMOCAO.Text);
CB_PROMOCAO.text:=CB_PROMOCAO.Items.Strings[CB_PROMOCAO.ItemIndex];
if (trim(CB_PROMOCAO.Text)='') and (trim(mPromo)<>'')  then
   begin
   if fMensagem('Promoção não Cadatrada, deseja cadastrar?',0,['1','2'],2)<>mrYes then
      exit;
   CB_PROMOCAO.Text:=mPromo;
   BBnAplicar.Click;
   end;

end;

function TFrm_PPR.fatualizapromocao(ptipo: Integer): Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADRED','RDCODEMP','PPCODEMP','RDCODRED','PPCODRED');
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PPPROMOCAO,PPPVTIP,PPPVTAB,PPCODRED,PPDATINI,PPDATFIN '
                  +' ,PPOBS,RDNOME from CADPPR '
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
mcinst:=' where ';
if Trim(la_instrucao)<>'' then
   begin
   DM1.Query4.SQL.add(mcinst+' '+la_instrucao);
   mcinst:=' and ';
   end;
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query4.SQL.add(mcinst+' PPCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
DM1.Query4.SQL.Add(' Group by PPPROMOCAO,PPPVTIP,PPPVTAB,PPCODRED,PPDATINI,PPDATFIN, '
                  +'  PPOBS,RDNOME ');
DM1.Query4.Open;
CB_PROMOCAO.Items.Clear;
While not DM1.Query4.Eof do
   begin
   if trim(DM1.Query4.FieldbyName('PPPROMOCAO').AsString)='' then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   CB_PROMOCAO.Items.Add(DM1.Query4.FieldbyName('PPPROMOCAO').AsString);
   DM1.query4.Next;
   end;

result:=true;
end;
procedure TFrm_PPR.CODREGExit(Sender: TObject);
begin
CODREG.Text:=fdeixanum2(CODREG.Text);
if trim(CODREG.Text)='' then
   begin
   CODREG.Text:='';
   NOMREG.Text:='<Vazio> - Não verifica Regiao de Clientes';
   mAcreReg:=0;
   end
else
   begin
   if not flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',Trim(CODREG.Text)) then
      begin
      fmensagem('Regiao Nao Cadastrada!',0,['0'],0);
      CODREG.SetFocus;
      Exit;
      end;
   NOMREG.Text:=DM1.Query1.Fields[0].AsString;
   mAcreReg   :=DM1.Query1.Fields[1].AsFloat;
   end;
end;

procedure TFrm_PPR.CODREGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODREG.Text:=fChamaRegiao(0,'frm_ppr',key);
   key:=#0;
   end;

end;

procedure TFrm_PPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PPR.Qr_PPRCalcFields(DataSet: TDataSet);
begin
Qr_PPRdescontos.Value :='';
if Qr_PPRPPDESC_1.AsFloat <> 0 then
   Qr_PPRdescontos.value := formatfloat(mcasas,Qr_PPRPPDESC_1.Value);

if Qr_PPRPPDESC_2.AsFloat <> 0 then
   begin
   if trim (Qr_PPRdescontos.AsString)<>'' then
      Qr_PPRdescontos.value := Qr_PPRdescontos.Value+'+';
   Qr_PPRdescontos.value :=  Qr_PPRdescontos.value + formatfloat(mcasas,Qr_PPRPPDESC_2.Value);
   end;

if Qr_PPRPPDESC_3.AsFloat <> 0 then
   begin
   if trim (Qr_PPRdescontos.AsString)<>'' then
      Qr_PPRdescontos.value := Qr_PPRdescontos.Value+'+';
   Qr_PPRdescontos.value :=  Qr_PPRdescontos.value + formatfloat(mcasas,Qr_PPRPPDESC_3.Value);
   end;
if mAcreReg_imp<>0 then
   Qr_PPRprecocalc.Value:=Arredonda( (Qr_PPRPPPCOVDA.AsFloat+(Qr_PPRPPPCOVDA.AsFloat*mAcreReg_imp/100)), mQtdCas_arredpu)
else
   Qr_PPRprecocalc.Value:=Qr_PPRPPPCOVDA.AsFloat;
if Qr_PPRPPDESC_1.AsFloat<>0 then
   begin
   Qr_PPRprecocalc.AsFloat:=Qr_PPRprecocalc.AsFloat-(Qr_PPRprecocalc.AsFloat*Qr_PPRPPDESC_1.AsFloat/100);
   Qr_PPRprecocalc.AsFloat:=Arredonda(Qr_PPRprecocalc.AsFloat, DM1.Tb_PargerPCASAS.AsInteger);
   end;
if Qr_PPRPPDESC_2.AsFloat<>0 then
   begin
   Qr_PPRprecocalc.AsFloat:=Qr_PPRprecocalc.AsFloat-(Qr_PPRprecocalc.AsFloat*Qr_PPRPPDESC_2.AsFloat/100);
   Qr_PPRprecocalc.AsFloat:=Arredonda(Qr_PPRprecocalc.AsFloat, DM1.Tb_PargerPCASAS.AsInteger);
   end;
if Qr_PPRPPDESC_3.AsFloat<>0 then
   begin
   Qr_PPRprecocalc.AsFloat:=Qr_PPRprecocalc.AsFloat-(Qr_PPRprecocalc.AsFloat*Qr_PPRPPDESC_3.AsFloat/100);
   Qr_PPRprecocalc.AsFloat:=Arredonda(Qr_PPRprecocalc.AsFloat, DM1.Tb_PargerPCASAS.AsInteger);
   end;

end;

procedure TFrm_PPR.BbImprimirClick(Sender: TObject);
begin
if (not Tb_PPR.Active) or (Tb_PPR.IsEmpty) then
   begin
   fmensagem('Favor Selecionar uma Promoção Valida!!!',0,['0'],0);
   exit;
   end;

Qr_PPR.Close;
Qr_PPR.sql.Clear;
qr_PPR.sql.add(' select '
              +' PPPROMOCAO,'
              +' PPPVTIP,'
              +' PPPVTAB,'
              +' PPCODRED,'
              +'  PPCODCLI, '
              +'  PPUF, '
              +'  PPID, '
              +'  pPID_ANO, '
              +' PPFLAG,'
              +'  PPGRADE, '
              +' PPCODPRO,'
              +'  PPGRADE, '
              +' PPDATINI,'
              +' PPDATFIN,'
              +' PPCODGRU,'
              +' PPPCOVDA, '
              +' PPDESC_1,'
              +' PPDESC_2,'
              +' PPDESC_3,'
              +' PPCONFVDA,'
              +' PPCOMIS,'
              +' PPQTDMIN,'
              +' PPVALMIN,'
              +' PPDESC_F,'
              +' PPPRIOR,'
              +' PDNOME,'
              +' PDUND,'
              +' PDPRECO1,'
              +' PDMARCA'
              +',PPID_ANO '
              +',PPID '
              +',PPCODCLI '
              +',PPUF '

              +' FROM CADPPR, CADPRO  WHERE'
              + iif (dm1.Qr_TID.locate('TINOME','CADPRO',[]),'', ' PPCODEMP=0'+IntToStr(codemp)+' and ')
              +' PDCODPRO = PPCODPRO'
              +' AND trim(PPPROMOCAO) = '+chr(39)+trim(CB_PROMOCAO.Text)+chr(39)
              +' order by PDNOME' );
try
   Qr_PPR.open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ppr,1050,'SGE','CADPPR');
   end;
   end;
Qr_PPRPPPCOVDA.DisplayFormat:=mcasaspu;
Qr_PPRprecocalc.DisplayFormat:=mcasaspu;
lbl_titulo.Caption:=TITULO.Text;
LblEmpresa.Caption:=dm1.Tb_EmpRAZAO.Value;

if CB_LINHA_LQ.Checked then
   matricial.PrinterFamily:=fmESCP2
else
   matricial.PrinterFamily:=fmEpsonLike;
RLReport1.PreviewModal;
end;

procedure TFrm_PPR.CODREG_IMPExit(Sender: TObject);
begin
CODREG_IMP.Text:=fdeixanum2(CODREG_IMP.Text);
if trim(CODREG_IMP.Text)='' then
   begin
   if TITULO.Text=CB_PROMOCAO.Text+' - Tabela da Regiao: '+NOMREG_IMP.Text then
      TITULO.Text:='';
   CODREG_IMP.Text:='';
   NOMREG_IMP.Text:='<Vazio> - Mantem o Preço informado na promoção';
   mAcreReg_imp:=0;
   end
else
   begin
   if not flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',Trim(CODREG_IMP.Text)) then
      begin
      fmensagem('Regiao Nao Cadastrada!',0,['0'],0);
      CODREG_IMP.SetFocus;
      Exit;
      end;
   NOMREG_IMP.Text:=DM1.Query1.Fields[0].AsString;
   mAcreReg_imp   :=DM1.Query1.Fields[1].AsFloat;
   if (trim(TITULO.Text)='') or (trim(TITULO.Text)=trim(CB_PROMOCAO.Text)) then
      TITULO.Text:=CB_PROMOCAO.Text+' - Tabela da Regiao: '+NOMREG_IMP.Text;
   end;

end;

procedure TFrm_PPR.CODREG_IMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if Frm_Regiao=nil then
      Application.CreateForm(TFrm_Regiao, Frm_Regiao)
   else
      begin
      Frm_Regiao.free;
      Frm_Regiao:=nil;
      Application.CreateForm(TFrm_Regiao, Frm_Regiao)
      end;

   Frm_Regiao.Edit1.Text:=key;
   Frm_Regiao.BBnAtu.Click;
   Frm_Regiao.Edit1.SelStart:=1;
   Frm_Regiao.Edit1.SelLength:=1;
   Frm_Regiao.PC1.ActivePage:=Frm_Regiao.tsTab;
   mori_regiao:='Frm_Cli';
   if Frm_Regiao.ShowModal=mrok then
      begin
      CODREG_IMP.Text:=DM6.Tb_RegiaoCR_CODREG.AsString;
      CODREG_IMPExit(self);
      end;
   Frm_Regiao.Free;
   Frm_Regiao:=nil;
   key:=#0;
   end;



end;

procedure TFrm_PPR.CB_SEMBORDASClick(Sender: TObject);
begin
if CB_SEMBORDAS.Checked then
   mboolean:=false
else
   mboolean:=true;

RLBand_cab.Borders.DrawBottom   :=mboolean;
RLBand_cab.Borders.DrawLeft     :=mboolean;
RLBand_cab.Borders.DrawRight    :=mboolean;
RLBand_cab.Borders.DrawTop      :=mboolean;
RLCab_Itens.Borders.DrawLeft    :=mboolean;
RLCab_Itens.Borders.DrawRight   :=mboolean;
RLCab_Itens.Borders.DrawLeft    :=mboolean;
RLBand_tit.Borders.DrawRight    :=mboolean;
RLBand_tit.Borders.DrawLeft     :=mboolean;
RLBand_tit.Borders.DrawBottom   :=mboolean;
rldetalhe.Borders.DrawLeft      :=mboolean;
rldetalhe.Borders.DrawRight     :=mboolean;
RLBand_rod.Borders.DrawTop      :=mboolean;
TxtCod.Borders.DrawRight        :=mboolean;
txtNome.Borders.DrawRight       :=mboolean;
txtMarca.Borders.DrawRight      :=mboolean;
txtUnidade.Borders.DrawRight    :=mboolean;
LblCodigo.Borders.DrawRight     :=mboolean;
LblUnidade.Borders.DrawRight    :=mboolean;
LblDesc.Borders.DrawRight       :=mboolean;
lbl_marca.Borders.DrawRight     :=mboolean;
RLCab_Itens.Borders.DrawBottom  :=mboolean;


end;

procedure TFrm_PPR.bbAdquirirClick(Sender: TObject);
var
mPerAcreDes: real;
mPreco: String;
begin
if not Tb_PPR.Active then
   begin
   fmensagem('Favor selecionar uma promoção Válida!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_PcoLotAP, Frm_PcoLotAp);
Frm_PcoLotAP.GB_AJUSTAR.Visible:=true;
Frm_PcoLotAP.RG_Tipo.Visible   :=false;
Frm_PcoLotAP.Gb_param.Visible  :=true;
Frm_PcoLotAp.ShowModal;
if Frm_PcoLotAP.CB_DIMINUIR.Checked then
   mPerAcreDes:=Valfloat(Frm_PcoLotAP.AJUSTARPCO.Text)*-1
else
   mPerAcreDes:=Valfloat(Frm_PcoLotAP.AJUSTARPCO.Text);

if lowercase(Frm_PcoLotAP.cb_tipopreco.Text)='preco fabrica' then
   mPreco:='PDPCOFAB'
else if lowercase(Frm_PcoLotAP.cb_tipopreco.Text)='preco custo' then
   mPreco:='PDPRECOC'
else if lowercase(Frm_PcoLotAP.cb_tipopreco.Text)='preco 3' then
   mPreco:='PDPRECO3'
else if lowercase(Frm_PcoLotAP.cb_tipopreco.Text)='preco 2' then
   mPreco:='PDPRECO2'
else
   mPreco:='PDPRECO1';

if mtpoper>0 then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Aguarde enquanto é adicionado os produtos!';
   Frm_Agde.Show;
   Frm_Agde.Update;
   la_Empresas :='';
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   fInnerJoin(0,'CADPPR','PPCODEMP','PPCODEMP','PPCODPRO','PDCODPRO');


   DM1.Query5.Close;
   DM1.Query5.SQL.CLEAR;
   DM1.Query5.SQL.Add('Insert into CADPPR ('
                     +' PPCODEMP '
                     +',PPPROMOCAO '
                     +',PPPVTIP '
                     +',PPPVTAB '
                     +',PPUF '
                     +',PPCODRED '
                     +',PPCODCLI '
                     +',PPCODPRO ');
    if trim(mdatini.Text)<>'/  /' then
       DM1.Query5.SQL.Add(',PPDATINI ');
    if trim(mdatfin.Text)<>'/  /' then
       DM1.Query5.SQL.Add(',PPDATFIN ');
    DM1.Query5.SQL.Add(',PPPCOVDA '
                      +',PPDESC_1 '
                      +',PPDESC_2 '
                      +',PPDESC_3 '
                      +',PPCONFVDA '
                      +',PPCOMIS '
                      +',PPQTDMIN '
                      +',PPVALMIN '
                      +',PPOBS '
                      +',PPKIT '
                      +',PPDESC_F '
                      +',PPPRIOR '
                      +',PPDATHOR_INC '
                      +',PPDATHOR_ALT '
                      +',PPID_ANO '
                      +',PPID '
                      +') Select '
                      +IntToStr(codemp)+' as CODEMP '
                      +', '+chr(39)+CB_PROMOCAO.Text+chr(39)+' AS PROMOCAO '
                      +', '+chr(39)+PVTIP.Text+chr(39)+' AS PVTIP'
                      +', '+chr(39)+PVTAB.Text+chr(39)+' AS PVTAB'
                      +', '+QuotedStr(edt_uf.Text)+' AS PPUF'
                      +', '+fdeixanum(CODRED.Text)+' AS CODRED'
                      +', '+fdeixanum(edt_codcli.text)+' AS CODCLI'
                      +', PDCODPRO ');
    if trim(mdatini.Text)<>'/  /' then
       DM1.Query5.SQL.Add(','+chr(39)+FormatDateTime(fdt, StrtoDate(mdatini.Text))+chr(39)+' as DATAINI ');
    if trim(mdatfin.Text)<>'/  /' then
       DM1.Query5.SQL.Add(','+chr(39)+FormatDateTime(fdt, StrtoDate(mdatfin.Text))+chr(39)+' as DATAFIN ');
    DM1.Query5.SQL.Add(', round('+mPreco+'+'+mPreco+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+IntToStr(mQtdCas_arredpu)+') as  pdpreco1');
    if trim(Frm_PcoLotAP.DESC01.Text)<>'' then
       DM1.Query5.SQL.Add(','+mudavp(FloatToStr(ValFloat(Frm_PcoLotAP.DESC01.Text))))
    else
       DM1.Query5.SQL.Add(',0 AS PPDESC_1');
    if trim(Frm_PcoLotAP.DESC02.Text)<>'' then
       DM1.Query5.SQL.Add(','+mudavp(FloatToStr(ValFloat(Frm_PcoLotAP.DESC02.Text))))
    else
       DM1.Query5.SQL.Add(',0 AS PPDESC_2');
    if trim(Frm_PcoLotAP.DESC03.Text)<>'' then
       DM1.Query5.SQL.Add(','+mudavp(FloatToStr(ValFloat(Frm_PcoLotAP.DESC03.Text))))
    else
       DM1.Query5.SQL.Add(',0 AS PPDESC_3');
    DM1.Query5.SQL.Add(','+chr(39)+iif(CBxConfVda.Checked,'S','N')+chr(39)+' as PPCONFVDA ');
    if trim(Frm_PcoLotAP.COMIS.Text)<>'' then
       DM1.Query5.SQL.Add(','+mudavp(FloatToStr(ValFloat(Frm_PcoLotAP.COMIS.Text))))
    else
       DM1.Query5.SQL.Add(',0 AS PPCOMIS');
    DM1.Query5.SQL.Add(',0 AS PPQTDMIM');
    DM1.Query5.SQL.Add(',0 AS PPVALMIM');
    DM1.Query5.SQL.Add(','+chr(39)+OBS.Text+chr(39)+' AS OBS');
    DM1.Query5.SQL.Add(','+chr(39)+iif(CB_KIT.Checked,'S','N')+chr(39)+' as PPKIT ');
    if trim(Frm_PcoLotAP.DESCFIN.Text)<>'' then
       DM1.Query5.SQL.Add(','+mudavp(FloatToStr(ValFloat(Frm_PcoLotAP.DESCFIN.Text))))
    else
       DM1.Query5.SQL.Add(',0 AS PPDESC_F');
    DM1.Query5.SQL.Add(',0 AS PPPRIOR');
    DM1.Query5.SQL.Add(', SYSDATE AS PPDATHOR_INC '
                      +', SYSDATE AS PPDATHOR_ALT ');
    DM1.Query5.SQL.Add(', EXTRACT(year FROM sysdate) AS PPID_ANO ');
    DM1.Query5.SQL.Add(', '+inttostr(fBuscareTestarID('CADPPR_'+formatdatetime('yyyy', now())))+' AS PPID_ANO ');

    DM1.Query5.Sql.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PPPROMOCAO(+) = '+chr(39)+CB_PROMOCAO.Text+chr(39)
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp)));
    DM1.Query5.SQL.add(' and PPCODPRO is null ');
   mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codfor,Frm_PcoLotAP.OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.Add(' and  PDCODFOR '+mcinst2);

    mcinst2:=fInstrucaoEstoque(Frm_PcoLotAP.CLBEstoque,'PDSALDO');
    if trim(mcinst2)<>'' then
       DM1.Query5.SQL.Add(' and  '+mcinst2);

   mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codgru,Frm_PcoLotAP.OMITIR_GRU);
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.Add(' and  PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codram,Frm_PcoLotAP.OMITIR_RAM);
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.Add(' and  PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codcon,Frm_PcoLotAP.OMITIR_CON);
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.Add(' and  PDCODCON '+mcinst2);
   if trim(Frm_PcoLotAP.edt_marca.Text)<>'' then
      DM1.Query5.SQL.Add(' and  PDMARCA LIKE '+QuotedStr(Frm_PcoLotAP.edt_marca.text+'%'));

   if trim(Frm_PcoLotAP.edt_nompro.Text)<>'' then
      DM1.Query5.SQL.Add(' and  PDNOME LIKE '+QuotedStr(Frm_PcoLotAP.edt_nompro.text+'%'));


   mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codtip,Frm_PcoLotAP.OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.Add(' and  PDCODTIP '+mcinst2);
    mcinst2:=fItenstCheckListBox(0,Frm_PcoLotAP.CLB_STATUS);
   if trim(mcinst2)<>'' then
      begin
      if Frm_PcoLotAP.OMITIR_STATUS.Checked then
         DM1.Query5.SQL.Add(' and PDSTATUS not '+mcinst2)
      else
         DM1.Query5.SQL.Add(' and PDSTATUS '+mcinst2);
      end;

//   DM1.Query5.SQL.SaveToFile('c:\sql.txt');

   try
      DM1.Query5.ExecSql;
   except
      DM1.Query5.SQL.SaveToFile('c:\sql.txt');
      end;
//   DM1.Query5.SQL.SaveToFile('c:\sql.txt');

   BBnAplicarClick(SELF);
   Frm_Agde.Free;
   Frm_Agde:=nil;
   end;
Frm_PcoLotAP.Free;
Frm_PcoLotAP:=nil;



end;

procedure TFrm_PPR.bbExcluirClick(Sender: TObject);
begin
if trim(CB_PROMOCAO.text)='' then
   begin
   fmensagem('Favor Selecionar uma promocao valida!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir a Promocao?',0,['1','2'],2)<>mrYes then
   exit;
DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.Sql.add('Delete from CADPPR where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPPR',[]),'',' PPCODEMP=0'+IntTostr(codemp)+' and ')
                  +' trim(PPPROMOCAO)='+chr(39)+trim(CB_PROMOCAO.Text)+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

mCadPPR.ptipo  :=0;
mCadPPR.pcodemp:=0;
mCadPPR.ppre   :=0;
mCadPPR.pvalida:=0;
mCadPPR.pValor1:= CB_PROMOCAO.text;
mCadPPR.pValor2:='';
mCadPPR.pTabPV :='';
mCadPPR.pCodPV :='';
mCadPPR.pCodRed :='';
mCadPPR.pDataMax :=pdatanula;
mCadPPR.pCodReg :=0;
mCadPPR.pCodCli :=0;
mCadPPR.pUf     :='';


flcadppr_local(mCadPPR);

Tb_PPR.Close;
CB_PROMOCAO.Enabled   :=True;
BBnAplicar.Enabled :=True;
BBnFechar.Enabled  :=True;
mdatini.Clear;
mdatfin.Clear;
PVTIP.Clear;
PVTAB.Clear;
NOMPV.Text :='<Vazio> - Não verifica Plano de Vendas';

edt_uf.Clear;
edt_nomuf.Text :='<Vazio> - Não verifica estado';


CODRED.Clear;
NOMRED.Text:='<Vazio> - Não verifica Rede de Clientes';
edt_codcli.Clear;
edt_nomcli.Text:='<Vazio> - Não verifica Clientes';

CODREG.Clear;
NOMREG.Text:='<Vazio> - Não verifica Regiao do Vendedor';
OBS.Clear;
CBxConfVda.Checked:=False;
GBxCond.Enabled    :=False;
BBnGravar.Enabled  :=False;
bbImprimir.Enabled :=false;
dbg_itens.ReadOnly :=true;
TITULO.Text :='';

fatualizapromocao(0);
CB_PROMOCAO.ItemIndex:=0;
CB_PROMOCAO.SetFocus;


fmensagem('Promocao Excluida!',0,['0'],0);
end;

procedure TFrm_PPR.bbAjustarDescClick(Sender: TObject);
var
mPerAcreDes: real;
begin
if not Tb_PPR.Active then
   begin
   fmensagem('Favor selecionar uma promoção Válida!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_PPR_AjustarDesc, Frm_PPR_AjustarDesc);
Frm_PPR_AjustarDesc.FormStyle:=fsNormal;
Frm_PPR_AjustarDesc.Visible:=False;
mAjustarDesc:=false;
Frm_PPR_AjustarDesc.ShowModal;

if mAjustarDesc then
   begin
   if (trim(Frm_PPR_AjustarDesc.DESC01.Text)<>'') or
      (trim(Frm_PPR_AjustarDesc.DESC02.Text)<>'') or
      (trim(Frm_PPR_AjustarDesc.DESC03.Text)<>'') or
      (trim(Frm_PPR_AjustarDesc.DESCFIN.Text)<>'') or
      (trim(Frm_PPR_AjustarDesc.COMIS.Text)<>'') or
      (Frm_PPR_AjustarDesc.CB_ATUPCO.Checked) or
      (ValFloat(Frm_PPR_AjustarDesc.AJUSTARPCO.Text)<>0) then
      begin
      Application.CreateForm(TFrm_Agde, Frm_Agde);
      Frm_Agde.Label1.Caption:='Aguarde enquanto é Ajustado o Arquivo de Promoção!';
      Frm_Agde.Show;
      Frm_Agde.Update;

      if Frm_PPR_AjustarDesc.CB_DIMINUIR.Checked then
         mPerAcreDes:=Valfloat(Frm_PPR_AjustarDesc.AJUSTARPCO.Text)*-1
      else
         mPerAcreDes:=Valfloat(Frm_PPR_AjustarDesc.AJUSTARPCO.Text);

      la_Empresas :='';
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','PDCODEMP','PDCODPRO','PPCODPRO');


      DM1.Query5.Close;
      DM1.Query5.SQL.CLEAR;
      DM1.Query5.SQL.Add('Select  '
                        +' PPCODEMP '
                        +',PPPROMOCAO '
                        +',PPPVTIP '
                        +',PPPVTAB '
                        +',PPPVTAB '
                        +',PPUF '
                        +',PPCODCLI '
                        +',PPCODPRO '
                        +',PPDATINI '
                        +',PPDATFIN '
                        +',PPPCOVDA '
                        +',PPDESC_1 '
                        +',PPDESC_2 '
                        +',PPDESC_3 '
                        +',PPCONFVDA '
                        +',PPCOMIS '
                        +',PPQTDMIN '
                        +',PPVALMIN '
                        +',PPOBS '
                        +',PPKIT '
                        +',PPDESC_F '
                        +',PPPRIOR '
                        +',PDNOME '
                        +',PDUND '
                        +',PDPRECO1 '
                        +',PDCODFOR '
                        +',PDSTATUS '
                        +',PDCODGRU '
                        +',PDCODRAM '
                        +',PDCODTIP '
                        +',PPID_ANO '
                        +',PPID '
                        +' from CADPPR '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' PPPROMOCAO(+) = '+chr(39)+CB_PROMOCAO.Text+chr(39)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PPCODEMP=0'+IntToStr(codemp)));
      mcinst2:=fItensListBox(0,Frm_PPR_AjustarDesc.lbx_codfor,Frm_PPR_AjustarDesc.OMITIR_FOR);
      if trim(mcinst2)<>'' then
         DM1.Query5.SQL.Add(' and  PDCODFOR '+mcinst2);

      mcinst2:=fItensListBox(0,Frm_PPR_AjustarDesc.lbx_codgru,Frm_PPR_AjustarDesc.OMITIR_GRU);
      if trim(mcinst2)<>'' then
         DM1.Query5.SQL.Add(' and  PDCODGRU '+mcinst2);

      mcinst2:=fItensListBox(0,Frm_PPR_AjustarDesc.lbx_codram,Frm_PPR_AjustarDesc.OMITIR_RAM);
      if trim(mcinst2)<>'' then
         DM1.Query5.SQL.Add(' and  PDCODRAM '+mcinst2);

      mcinst2:=fItensListBox(0,Frm_PPR_AjustarDesc.lbx_codcon,Frm_PPR_AjustarDesc.OMITIR_CON);
      if trim(mcinst2)<>'' then
         DM1.Query5.SQL.Add(' and  PDCODCON '+mcinst2);

      mcinst2:=fItensListBox(0,Frm_PPR_AjustarDesc.lbx_codtip,Frm_PPR_AjustarDesc.OMITIR_TPRO);
      if trim(mcinst2)<>'' then
         DM1.Query5.SQL.Add(' and  PDCODTIP '+mcinst2);
      DM1.Query5.Open;
      Frm_Agde.gb_progres.Visible:=true;
      mpqtd:=DM1.Query5.RecordCount;
      mplid:=0;
      While not DM1.Query5.Eof do
         begin
         mplid:=mplid+1;
         Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Update CADPPR set ');
         mcinst:='';
         if (trim(Frm_PPR_AjustarDesc.DESC01.Text)<>'') then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPDESC_1='+mudaVP(FloatToStr(ValFloat(Frm_PPR_AjustarDesc.DESC01.Text))));
            mcinst:=',';
            end;

         if (trim(Frm_PPR_AjustarDesc.DESC02.Text)<>'') then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPDESC_2='+mudaVP(FloatToStr(ValFloat(Frm_PPR_AjustarDesc.DESC02.Text))));
            mcinst:=',';
            end;

         if (trim(Frm_PPR_AjustarDesc.DESC03.Text)<>'') then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPDESC_3='+mudaVP(FloatToStr(ValFloat(Frm_PPR_AjustarDesc.DESC03.Text))));
            mcinst:=',';
            end;

         if (trim(Frm_PPR_AjustarDesc.DESCFIN.Text)<>'') then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPDESC_F='+mudaVP(FloatToStr(ValFloat(Frm_PPR_AjustarDesc.DESCFIN.Text))));
            mcinst:=',';
            end;

         if (trim(Frm_PPR_AjustarDesc.COMIS.Text)<>'') then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPCOMIS='+mudaVP(FloatToStr(ValFloat(Frm_PPR_AjustarDesc.COMIS.Text))));
            mcinst:=',';
            end;
         if Frm_PPR_AjustarDesc.CB_ATUPCO.Checked then
            mcinst2:='PDPRECO1'
         else
            mcinst2:='PPPCOVDA';
         if (mPerAcreDes<>0) or (Frm_PPR_AjustarDesc.CB_ATUPCO.Checked) then
            begin
            DM1.Query1.SQL.Add(mcinst+' PPPCOVDA='+mudaVP(FloatToStr(
                                                 Arredonda( (DM1.Query5.fieldbyname(mcinst2).AsFloat
                                                 +(DM1.Query5.fieldbyname(mcinst2).AsFloat*mPerAcreDes/100) )
                                                 , mQtdCas_arredpu)
                                                 ) ));
            mcinst:=',';
            end;
         DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PPCODEMP=0'+IntToStr(codemp)+' and ')
                           +' PPCODPRO=0'+DM1.Query5.FieldbyName('PPCODPRO').AsString);
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            DM1.Query1.SQL.SaveToFile('c:\sqlppr.txt');
            exit;
            end;
         DM1.Query5.Next;
         end;
      end;
   BBnAplicarClick(SELF);
   Frm_Agde.Free;
   Frm_Agde:=nil;
   end;
Frm_PPR_AjustarDesc.Free;
Frm_PPR_AjustarDesc:=nil;



end;

procedure TFrm_PPR.TITULOExit(Sender: TObject);
begin
CB_PROMOCAO.Text:=Trim(CB_PROMOCAO.Text);
end;

procedure TFrm_PPR.edt_codcliExit(Sender: TObject);
begin
   if valint(edt_codcli.text)<=0 then
   begin
   edt_codcli.Text:='';
   edt_nomcli.Text:='<Vazio> - Não verifica Clientes'
   end
   else
   begin
      if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',fdeixanum(edt_codcli.Text)) then
         begin
         Fmensagem('Cliente Não Cadastrada',0,['0'],0);
         edt_codcli.SetFocus;
         Exit;
         end;
      edt_nomcli.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_PPR.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'frm_cabc',key);
   edt_codcliExit(self);
   key:=#0;
   end;

end;

procedure TFrm_PPR.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_PPR.Tb_PPRAfterInsert(DataSet: TDataSet);
begin
if Tb_PPRPPCODEMP.IsNull THEN
   Tb_PPRPPCODEMP.Value:=codemp;
if Tb_PPRPPPROMOCAO.IsNull then
   Tb_PPRPPPROMOCAO.Value:=' ';
if Tb_PPRPPPVTIP.IsNull then
   Tb_PPRPPPVTIP.Value:=' ';
if Tb_PPRPPPVTAB.IsNull then
   Tb_PPRPPPVTAB.Value:=' ';
if Tb_PPRPPUF.IsNull then
   Tb_PPRPPUF.Value:=' ';

if Tb_PPRPPCODRED.IsNull then
   Tb_PPRPPCODRED.Value:=0;
if Tb_PPRPPFLAG.IsNull then
   Tb_PPRPPFLAG.Value:=' ';
if Tb_PPRPPCODPRO.IsNull then
   Tb_PPRPPCODPRO.Value:=0;
if Tb_PPRPPCODGRU.IsNull then
   Tb_PPRPPCODGRU.Value:=0;
if Tb_PPRPPPCOVDA.IsNull then
   Tb_PPRPPPCOVDA.Value:=0;
if Tb_PPRPPDESC_1.IsNull then
   Tb_PPRPPDESC_1.Value:=0;
if Tb_PPRPPDESC_2.IsNull then
   Tb_PPRPPDESC_2.Value:=0;
if Tb_PPRPPDESC_3.IsNull then
   Tb_PPRPPDESC_3.Value:=0;
if Tb_PPRPPCONFVDA.IsNull then
   Tb_PPRPPCONFVDA.Value:='N';
if Tb_PPRPPCOMIS.IsNull then
   Tb_PPRPPCOMIS.Value:=0;
if Tb_PPRPPQTDMIN.IsNull then
   Tb_PPRPPQTDMIN.Value:=0;
if Tb_PPRPPVALMIN.IsNull then
   Tb_PPRPPVALMIN.Value:=0;
if Tb_PPRPPOBS.IsNull then
   Tb_PPRPPOBS.Value:=' ';
if Tb_PPRPPKIT.IsNull then
   Tb_PPRPPKIT.Value:='N';

Tb_PPRPPDATHOR_INC.asdatetime:=now();


end;

procedure TFrm_PPR.Tb_PPRBeforeDelete(DataSet: TDataSet);
var


mCondicao_old : String;
begin
   mCondicao_old := ' where PPID=0'+Tb_PPRPPID.AsString
                   +' and PPID_ANO=0'+Tb_PPRPPID_ANO.AsString
                   +' and PPCODEMP=0'+Tb_PPRPPCODEMP.AsString;

   fGerarTabelas_Old_NOVO(9 //status
               ,0 //codigo novo valor chave
               ,'PPCODNOV' //nome do campo do novo valor (chave)
               ,'PPDATHOR' // nome do campo data e hora do evento
               ,'PPCODUSR' // nome do campo do usuario
               ,'PPNOMUSR' // nome do campo do usuario
               ,'PPEVENTO' // nome do campo de status
               ,'CADPPR' // nome da tabela
               ,mCondicao_old);



end;

procedure TFrm_PPR.Tb_PPRBeforePost(DataSet: TDataSet);
var
mCondicao_old: String;
begin
Tb_PPRPPDATHOR_ALT.asdatetime:=now();

if Tb_PPRPPCODPRO.AsFloat=0 then
   begin
   Tb_PPR.Cancel;
   abort;
   end;
if Tb_PPRPPID.AsInteger=0 then
   begin
   Tb_PPRPPID_ANO.AsInteger:=valint(formatdatetime('yyyy', now()));
   Tb_PPRPPID.AsInteger:=fBuscareTestarID('CADPPR_'+Tb_PPRPPID_ANO.AsString);
   end;

Tb_PPRPPPVTIP.Value :=PVTIP.Text;
Tb_PPRPPPVTAB.Value :=PVTAB.Text;
Tb_PPRPPUF.Value    :=edt_uf.Text;

Tb_PPRPPCODCLI.Value:=fsonumero(edt_codcli.Text);
Tb_PPRPPCODRED.Value:=fsonumero(CODRED.Text);
Tb_PPRPPCODREg.Value:=fsonumero(CODREG.Text);
Tb_PPRPPOBS.Value   :=OBS.Text;
Tb_PPRPPCODREg.Value:=fsonumero(CODREG.Text);
if fsonumero(mdatini.Text)=0 then
   Tb_PPRPPDATINI.Clear
else
   begin
   try
      Tb_PPRPPDATINI.Value:=StrToDate(mdatini.Text);
   except
       Tb_PPRPPDATINI.Clear
      end;
   end;

if fsonumero(mdatfin.Text)=0 then
   Tb_PPRPPDATFIN.Clear
else
   begin
   try
      Tb_PPRPPDATFIN.Value:=StrToDate(mdatfin.Text);
   except
       Tb_PPRPPDATFIN.Clear
      end;
   end;

Tb_PPRPPCONFVDA.AsString := iif(CBxConfVda.Checked=true,'S','N');
Tb_PPRPPKIT.AsString     := iif(CB_KIT.Checked,'S','N');
Tb_PPRPPVALMIN.Value     := ValFloat(VALMIN.Text);








if Tb_PPR.State in [dsEdit] then
   begin
   mCondicao_old := ' where PPID=0'+Tb_PPRPPID.AsString
                   +' and PPID_ANO=0'+Tb_PPRPPID_ANO.AsString
                   +' and PPCODEMP=0'+Tb_PPRPPCODEMP.AsString;

   fGerarTabelas_Old_NOVO(8 //status
               ,0 //codigo novo valor chave
               ,'PPCODNOV' //nome do campo do novo valor (chave)
               ,'PPDATHOR' // nome do campo data e hora do evento
               ,'PPCODUSR' // nome do campo do usuario
               ,'PPNOMUSR' // nome do campo do usuario
               ,'PPEVENTO' // nome do campo de status
               ,'CADPPR' // nome da tabela
               ,mCondicao_old);
    end;









end;


//function TFrm_PPR.flcadppr_local(ptipo,pcodemp,ppre,pValida: Integer; pvalor1,pvalor2: String; pDataMax: TDateTime): Boolean;

function TFrm_PPR.flcadppr_local(pCadPPr: pCadPPR): Boolean;
{
pvalida=0 Qualquer uma
        1 Somente valida no periodo
}
begin
Tb_PPR.Close;
Tb_PPR.SQL.Clear;
Tb_PPR.SQL.Add('Select PPCODEMP, '
                  +'  PPPROMOCAO, '
                  +'  PPPVTIP, '
                  +'  PPPVTAB, '
                  +'  PPCODRED, '
                  +'  PPCODCLI, '
                  +'  PPUF, '
                  +'  PPID, '
                  +'  pPID_ANO, '
                  +'  PPCODREG, '
                  +'  PPFLAG, '
                  +'  PPGRADE, '
                  +'  PPCODPRO, '
                  +'  PPDATINI, '
                  +'  PPDATFIN, '
                  +'  PPCODGRU, '
                  +'  PPPCOVDA, '
                  +'  PPDESC_1, '
                  +'  PPDESC_2, '
                  +'  PPDESC_3, '
                  +'  PPCONFVDA, '
                  +'  PPCOMIS, '
                  +'  PPQTDMIN, '
                  +'  PPVALMIN, '
                  +'  PPOBS, '
                  +'  PPKIT, '
                  +'  PPDESC_F, '
                  +'  PDNOME, '
                  +' PPDATHOR_ALT, '
                  +' PPDATHOR_INC, '
                  +'  PPPRIOR '

                  +' from CADPPR,CADPRO where ');
if pCadPPr.pcodemp<>0 then
   Tb_PPR.SQL.Add(' PPCODEMP=0'+InttoStr(pCadPPr.pcodemp)+' and ')
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Tb_PPR.SQL.Add(' PPCODEMP=0'+InttoStr(codemp)+' and PDCODEMP=PPCODEMP and ');
Tb_PPR.SQL.Add(' PDCODPRO=PPCODPRO ');
if trim(pCadPPr.pvalor1)<>'' then
   Tb_PPR.Sql.add(' and PPPROMOCAO like '+chr(39)+pCadPPr.pvalor1+'%'+chr(39));
if Trim(pCadPPr.pvalor2)<>'' then
   Tb_PPR.Sql.add(' and PPCODPRO=0'+pCadPPr.pvalor2);
if (pCadPPr.pValida=1) and (pCadPPr.pDataMax>pdatanula) then
   begin
   Tb_PPR.Sql.add(' and ( (PPDATINI is null or PPDATINI<='+chr(39)+formatDatetime(fdt, pCadPPr.pDataMax)+chr(39)+') ');
   Tb_PPR.Sql.add('  and  (PPDATFIN is null or PPDATFIN>='+chr(39)+formatDatetime(fdt, pCadPPr.pDataMax)+chr(39)+') )');
   end;
Tb_PPR.Open;
if Tb_PPR.Eof then
   Result:=false
else
   Result:=True;
// Tb_PPR.SQL.SAVETOFILE('C:\PROMOCAO.TXT');

end;



function TFrm_PPR.fAtualizarDadosPromocaoGeral: boolean;

var
query_exe: TQuery;
mvirg: string;
begin
mvirg:='';
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_exe.SQL.add('Update CADPPR set ');
if mant_pvtip<>PVTIP.Text then
   begin
   query_exe.sql.add(mvirg+' PPPVTIP=:PVTIP ');
   query_exe.parambyname('PVTIP').AsString:=PVTIP.Text;
   mvirg:=',';
   end;
if mant_pvtab<>PVTAB.Text then
   begin
   query_exe.sql.add(mvirg+' PPPVTAB=:PVTAB ');
   query_exe.parambyname('PVTAB').AsString:=PVTAB.Text;
   mvirg:=',';
   end;

if mant_uf<>edt_uf.Text then
   begin
   query_exe.sql.add(mvirg+' PPUF=:UF ');
   query_exe.parambyname('UF').AsString:=edt_uf.Text;
   mvirg:=',';
   end;


if mant_codcli<>fsonumero(edt_codcli.Text) then
   begin
   query_exe.sql.add(mvirg+' PPCODCLI=:CODCLI ');
   query_exe.parambyname('CODCLI').AsFloat:=fsonumero(edt_codcli.text);
   mvirg:=',';
   end;

if mant_codred<>fsonumero(CODRED.Text) then
   begin
   query_exe.sql.add(mvirg+' PPCODRED=:CODRED ');
   query_exe.parambyname('CODRED').AsFloat:=fsonumero(CODRED.text);
   mvirg:=',';
   end;


if mant_codred<>fsonumero(CODREG.Text) then
   begin
   query_exe.sql.add(mvirg+' PPCODREG=:CODREG ');
   query_exe.parambyname('CODREG').AsFloat:=fsonumero(CODREG.text);
   mvirg:=',';
   end;




if mant_obs<>OBS.Text then
   begin
   query_exe.sql.add(mvirg+' PPOBS=:OBS ');
   query_exe.parambyname('OBS').AsString:=OBS.Text;
   mvirg:=',';
   end;

if mant_datini<>fStringtodatetime(mdatini.text) then
   begin
   query_exe.sql.add(mvirg+' PPDATINI=:DATINI ');
   query_exe.parambyname('DATINI').AsDateTime:=fStringtodatetime(mdatini.text);
   mvirg:=',';
   end;

if mant_datfin<>fStringtodatetime(mdatfin.text) then
   begin
   query_exe.sql.add(mvirg+' PPDATFIN=:DATFIN ');
   query_exe.parambyname('DATFIN').AsDateTime:=fStringtodatetime(mdatfin.text);
   mvirg:=',';
   end;

if mant_confvda<>CBxConfVda.Checked then
   begin
   query_exe.sql.add(mvirg+' PPCONFVDA=:CONFVDA ');
   query_exe.parambyname('CONFVDA').AsString:=iif(CBxConfVda.Checked=true,'S','N');
   mvirg:=',';
   end;


if mant_kit<>CB_KIT.Checked then
   begin
   query_exe.sql.add(mvirg+' PPKIT=:KIT ');
   query_exe.parambyname('KIT').AsString:=iif(CB_KIT.Checked=true,'S','N');
   mvirg:=',';
   end;

if mant_valmin<>valfloat(VALMIN.text)then
   begin
   query_exe.sql.add(mvirg+' PPVALMIN=:VALMIN ');
   query_exe.parambyname('VALMIN').AsFloat:=ValFloat(VALMIN.Text);
   mvirg:=',';
   end;


query_exe.SQL.add(' where PPCODEMP='+Inttostr(codemp)
                +' and PPPROMOCAO=:PROMOCAO ');
query_exe.ParamByName('PROMOCAO').AsString:=CB_PROMOCAO.Text;
try
   query_exe.ExecSQL;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,1825,'SGE','CADPPR');
   result:=false;
   end;
   end;
query_exe.close;
freeandnil(query_exe);


end;

procedure TFrm_PPR.GBxCondEnter(Sender: TObject);
begin
mant_pvtip  := PVTIP.Text;
mant_pvtab  := PVTAB.Text;
mant_uf     := edt_uf.Text;
mant_codcli := fsonumero(edt_codcli.Text);
mant_codred := fsonumero(CODRED.Text);
mant_codreg := fsonumero(CODREG.Text);
mant_obs    := OBS.Text;
mant_datini := fStringtodatetime(mdatini.Text);
mant_datfin := fStringtodatetime(mdatfin.Text);
mant_confvda:= CBxConfVda.Checked;
mant_kit    := CB_KIT.Checked;
mant_valmin := valfloat(VALMIN.text);


end;

procedure TFrm_PPR.edt_ufExit(Sender: TObject);
begin
if trim(edt_uf.text)='' then
   begin
   edt_uf.Text:='';
   edt_nomuf.Text:='<Vazio> - Não verifica o Estado'
   end
else
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',edt_uf.Text) then
      begin
      Fmensagem('Unidade da Federacao Não Cadastrada',0,['0'],0);
      edt_uf.SetFocus;
      Exit;
      end;
   edt_nomuf.Text:=edt_uf.Text+' - '+ DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_PPR.edt_ufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=113 then
   begin
   edt_uf.Text:=fChamauf(0,'frm_ppr','');
   if trim(edt_uf.Text)<>'' then
      edt_ufExit(self);
   end;


end;

end.
