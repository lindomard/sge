unit S_Pro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls,db,dbtables,
  jpeg, CheckLst, Grids, DBGrids;

type
  TFrm_Pro = class(TFrm_C)
    Tsad: TTabSheet;
    TsTab2: TTabSheet;
    DBRG_Status: TDBRadioGroup;
    db_comis: TDBEdit;
    Label41: TLabel;
    dbc_semcom: TDBCheckBox;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Label6: TLabel;
    Qr_LGC: TQuery;
    Qr_LGCCLCODEMP: TFloatField;
    Qr_LGCCLCODPRO: TFloatField;
    Qr_LGCCLDTVCTO: TDateTimeField;
    Qr_LGCCLNUMERO: TStringField;
    Qr_LGCCLQTD: TFloatField;
    Src_LGC: TDataSource;
    BB_SOBRE: TBitBtn;
    Src_Pro: TDataSource;
    db_estmin: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    db_estmax: TDBEdit;
    dbc_rest: TDBCheckBox;
    GroupBox1: TGroupBox;
    Tab_Filtros: TTabSheet;
    RG_ESTOQUE: TRadioGroup;
    Qr_LGCCLQTDR: TFloatField;
    Qr_LGCCLQTDC: TFloatField;
    RG_STATUS: TRadioGroup;
    lbl_Acab: TStaticText;
    lbl_Serv: TStaticText;
    lbl_MPR: TStaticText;
    lbl_PP: TStaticText;
    lbl_MP: TStaticText;
    lbl_Isum: TStaticText;
    lbl_outros: TStaticText;
    lbl_ProBloq: TStaticText;
    lbl_ProVenc: TStaticText;
    Qr_LGCCLQTDT: TFloatField;
    Panel4: TPanel;
    Label26: TLabel;
    Label35: TLabel;
    Label63: TLabel;
    Label58: TLabel;
    GroupBox11: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label48: TLabel;
    db_prazo: TDBEdit;
    Label49: TLabel;
    Label37: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    Label30: TLabel;
    Bevel1: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Label55: TLabel;
    Label57: TLabel;
    Label52: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    LB_PRZVAL: TLabel;
    Label32: TLabel;
    Bevel2: TBevel;
    Label10: TLabel;
    Label40: TLabel;
    Label31: TLabel;
    Label39: TLabel;
    db_codpro: TDBEdit;
    db_codbar: TDBEdit;
    db_nome: TDBEdit;
    db_und: TDBEdit;
    db_marca: TDBEdit;
    db_sit: TDBEdit;
    dbc_nivel: TDBComboBox;
    db_nivel: TDBEdit;
    DBCb_Fracao: TDBCheckBox;
    GB_PRECO1: TGroupBox;
    Label13: TLabel;
    Label7: TLabel;
    Label36: TLabel;
    lbl_pmc: TLabel;
    db_preco1: TDBEdit;
    db_precoa1: TDBEdit;
    db_dtaltpco1: TDBEdit;
    pmc: TDBEdit;
    GB_PRECO2: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label33: TLabel;
    lbl_pmc02: TLabel;
    db_precoa2: TDBEdit;
    db_preco2: TDBEdit;
    db_dtaltpco2: TDBEdit;
    pmc02: TDBEdit;
    GB_PRECO3: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    Label38: TLabel;
    lbl_pmc03: TLabel;
    db_preco3: TDBEdit;
    db_preco3a: TDBEdit;
    db_altpco3: TDBEdit;
    pmc03: TDBEdit;
    db_desc1: TDBEdit;
    db_desc1a: TDBEdit;
    db_qtdp: TDBEdit;
    db_desc2: TDBEdit;
    db_desfin: TDBEdit;
    db_pesob: TDBEdit;
    db_vdamaxm: TDBEdit;
    db_desc3: TDBEdit;
    db_codncm: TDBEdit;
    db_przval: TDBEdit;
    db_nome2: TDBEdit;
    GB_OUTROS: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    db_pcofab: TDBEdit;
    PCO_CUS: TEdit;
    db_precoc: TDBEdit;
    db_pcomc: TDBEdit;
    db_ucpr: TDBEdit;
    gb_estoque: TGroupBox;
    Label4: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    db_estoque: TDBEdit;
    db_estoquet: TDBEdit;
    db_estoquer: TDBEdit;
    db_estoquec: TDBEdit;
    db_codfor: TDBEdit;
    db_nomfor: TDBEdit;
    db_secao: TDBEdit;
    db_embpad2: TDBEdit;
    db_embmul: TDBEdit;
    db_nomgru: TDBEdit;
    db_codgru: TDBEdit;
    lbl_codgru: TLabel;
    db_nomram: TDBEdit;
    db_codram: TDBEdit;
    lbl_codram: TLabel;
    db_nomcon: TDBEdit;
    db_codcon: TDBEdit;
    Label11: TLabel;
    db_nomtip: TDBEdit;
    db_codtip: TDBEdit;
    Label12: TLabel;
    db_nomproc: TDBEdit;
    db_codproc: TDBEdit;
    lbl_codproc: TLabel;
    db_nomproalt: TDBEdit;
    db_proalt: TDBEdit;
    Label53: TLabel;
    Bevel4: TBevel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    Label56: TLabel;
    DBEdit3: TDBEdit;
    Tb_PPR: TQuery;
    Src_PPR: TDataSource;
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
    gb_promocao: TGroupBox;
    dbg_promocao: TDBGrid;
    Tb_PPRdataini: TStringField;
    Tb_PPRdatafin: TStringField;
    dbc_status: TDBComboBox;
    Label47: TLabel;
    db_pesol: TDBEdit;
    bbDCB: TBitBtn;
    bbBloqueios: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    gb_filtro: TGroupBox;
    tab_Grupos: TTabControl;
    Label59: TLabel;
    CODGRU: TEdit;
    NOMGRU: TEdit;
    CLBNivel: TCheckListBox;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    bbSalvar: TBitBtn;
    rg_lista: TDBRadioGroup;
    REGMS: TLabel;
    db_rgms: TDBEdit;
    Label19: TLabel;
    db_clas: TDBEdit;
    rg_tabicm: TDBRadioGroup;
    db_ipi: TDBEdit;
    Label34: TLabel;
    Label42: TLabel;
    db_curva: TDBEdit;
    Label67: TLabel;
    db_icmsdeb: TDBEdit;
    Label68: TLabel;
    db_icmscred: TDBEdit;
    DBE_VlrInc: TDBEdit;
    Label69: TLabel;
    lbl_prat: TLabel;
    DBE_prateleira: TDBEdit;
    lbl_lado: TLabel;
    DBE_Lado: TDBEdit;
    lbl_rua: TLabel;
    DBE_Rua: TDBEdit;
    CB_PESQAVANC: TCheckBox;
    Qr_LGCdtvcto: TStringField;
    Label51: TLabel;
    DBE_EmbPad: TDBEdit;
    Panel5: TPanel;
    Panel7: TPanel;
    Label54: TLabel;
    ListBox1: TListBox;
    Panel6: TPanel;
    Label70: TLabel;
    ListBox2: TListBox;
    Panel10: TPanel;
    Panel11: TPanel;
    ListBox3: TListBox;
    DBCB_BALANCA: TDBCheckBox;
    CLFNivel: TCheckListBox;
    Label71: TLabel;
    bbEstFilial: TBitBtn;
    Label72: TLabel;
    marca: TMaskEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure TsTab2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure db_codproExit(Sender: TObject);
    procedure db_preco1KeyPress(Sender: TObject; var Key: Char);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure db_sitEnter(Sender: TObject);
    procedure db_sitExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbc_nivelEnter(Sender: TObject);
    procedure dbc_nivelExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure db_codforKeyPress(Sender: TObject; var Key: Char);
    procedure db_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure db_codramKeyPress(Sender: TObject; var Key: Char);
    procedure db_codconKeyPress(Sender: TObject; var Key: Char);
    procedure db_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure db_codforExit(Sender: TObject);
    procedure db_codgruExit(Sender: TObject);
    procedure db_codramExit(Sender: TObject);
    procedure db_codconExit(Sender: TObject);
    procedure db_codtipExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codprocExit(Sender: TObject);
    procedure db_codprocKeyPress(Sender: TObject; var Key: Char);
    procedure BB_SOBREClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure bbDCBClick(Sender: TObject);
    procedure db_proaltExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure db_nome2Exit(Sender: TObject);
    procedure dbg_promocaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Tb_PPRCalcFields(DataSet: TDataSet);
    procedure tsTabShow(Sender: TObject);
    procedure bbBloqueiosClick(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure RG_ESTOQUEClick(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure tab_GruposChange(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure db_preco1Enter(Sender: TObject);
    procedure db_preco1Exit(Sender: TObject);
    procedure db_preco2Exit(Sender: TObject);
    procedure db_preco3Exit(Sender: TObject);
    procedure db_preco2Enter(Sender: TObject);
    procedure db_preco3Enter(Sender: TObject);
    procedure Qr_LGCCalcFields(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_embpad2Exit(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbEstFilialClick(Sender: TObject);
  private
    { Private declarations }
    function fcarregagrade(ptipo: Integer): Boolean;
    function fcarregapromocao(ptipo: Integer): Boolean;

    function fPro01lerant(ptipo: Integer):Boolean;
    function fGravaFil(ptipo: Integer): Boolean;
    function fCarregaPadrao(ptipo: Integer): Boolean;

  public
    { Public declarations }
  end;
function fpro01gant(ptipo: Integer): Boolean;
var
  Frm_Pro: TFrm_Pro;
  Form_Pro: TFrm_Pro;
  pro_ori: String;
  moper: Integer;
  mfiltro: String;
  pro_dtvcto: TDateTime;
  bbpdalt_true : Boolean=True;
  bbpdinc_true : Boolean=True;
  bbpdexc_true : Boolean=True;
  mAtuafiltro: boolean=False;
  mPrecoAnt: Real;
  mVlrInc_Ant: Real;
  mIcmsCred_Ant: Real;
  mcodigo : String;
  mPosReg_ant: TBookmark;

implementation

uses func_excecoes, S_VendaBloqueada_Relacao,lerarq,s_lerarq_geral
 ,S_DM1, S_Gra,func,
  S_Des,S_DM3,S_Fig,S_DM4,S_DCBPRO, S_Pro_EstFilial;

{$R *.dfm}

procedure TFrm_Pro.INCLUIRClick(Sender: TObject);
begin
  inherited;
//flcadpro(0,0,0,'999999999999');
moper:=0;
if DM1.Tb_pro.Filtered then
   begin
   mfiltro   := DM1.Tb_Pro.Filter;
   DM1.Tb_Pro.Filtered:=False;
   end
else
   mfiltro:='';

DM1.Tb_Pro.Insert;
if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then
   begin
   db_precoc.Visible:=False;
   PCO_CUS.Text    :=DM1.Tb_Propco_custo.Value;
   PCO_CUS.Visible:=True;
   end;

mcodigo            :=DM1.Tb_ProPDCODPRO.AsString;
tsAd.Enabled       :=True;
db_codpro.Enabled    :=True;
//dbc_nivel.Enabled:=True;
dbc_nivel.ItemIndex:=4;
db_nome.SetFocus;
end;

procedure TFrm_Pro.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   verteclado(0);
   fMensagem('Não ha registro a ser alterado',0,['0'],0);
   exit;
   end;
//dbc_nivel.Enabled:=False;
moper:=8;
//flcadpro(1,0,0,DM1.Tb_ProPDCODPRO.AsString);
tsAd.Enabled:=True;
db_codpro.Enabled:=False;
if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then
   begin
   db_precoc.Visible:=False;
   PCO_CUS.Text    :=DM1.Tb_Propco_custo.Value;
   PCO_CUS.Visible:=True;
   end;

mVlrInc_Ant:= DM1.Tb_ProPDVLRINC.AsFloat;
mIcmsCred_Ant:=DM1.Tb_ProPDICMSCRED.AsFloat;

DM1.Tb_Pro.Edit;
if (fSonumero(DM1.Tb_ProPDCODNCM.AsString)>0) and  (fSonumero(DM1.Tb_ProPDCLAS.AsString)=0) then
   DM1.Tb_ProPDCLAS.AsString:=DM1.Tb_ProPDCODNCM.AsString;

if PC1.ActivePage=Tsad then
   db_estmax.SetFocus
else
   begin
   PC1.ActivePage:=tsCad;
   db_nome.SetFocus;
   end;

end;

procedure TFrm_Pro.GRAVARClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   verteclado(0);
   FMensagem('Situacao Tributaria Valido Somente com 3 digitos. Ex. 000, 010, 040 etc',0,['0'],0);
   db_sit.SetFocus;
   exit;
   end;
if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (DM1.Tb_ProPDNIVEL.AsInteger=0) then
   begin
   mcinst2:=fdeixanum2(DM1.Tb_ProPDCODNCM.AsString);
   if length(mcinst2)<>8 then
      mcinst2:=fdeixanum2(DM1.Tb_ProPDCLAS.AsString);
   if length(mcinst2)<>8 then
      begin
      DM1.query2.Close;
      DM1.query2.SQL.Clear;
      DM1.query2.SQL.Add('SELECT PDCLAS,PDCODNCM FROM CADPRO '
                        +' WHERE (LENGTH(PDCLAS)=8 OR LENGTH(PDCODNCM)=8) and rownum<2 ');
      try
         DM1.Query2.Open;
         if length(DM1.Query2.fieldbyName('PDCLAS').AsString)=8 then
            begin
            DM1.Tb_ProPDCLAS.Value:=DM1.Query2.fieldbyName('PDCLAS').AsString;
            DM1.Tb_ProPDCODNCM.Value:=DM1.Query2.fieldbyName('PDCLAS').AsString;
            mcinst:=fdeixanum2(DM1.Tb_ProPDCLAS.AsString);
            end
        else
            begin
            DM1.Tb_ProPDCLAS.Value:=DM1.Query2.fieldbyName('PDCODNCM').AsString;
            DM1.Tb_ProPDCODNCM.Value:=DM1.Query2.fieldbyName('PDCODNCM').AsString;
            mcinst:=fdeixanum2(DM1.Tb_ProPDCLAS.AsString);
            end;
      except
         end;
      if length(mcinst2)<>8 then
         begin
         FMensagem('Classificação Fiscal/Codigo NCM tem que ter 8 caracteres!',0,['0'],0);
         exit;
         end;
      end;
   end;
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   verteclado(0);
   FMensagem('Descrição do produto Invalida!',0,['0'],0);
   db_nome.SetFocus;
   exit;
   end;

if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then
   begin
   PCO_CUS.Text:=Trim(PCO_CUS.Text);
   if Trim(PCO_CUS.Text)<>'' then
      begin
      if not ftestapalavra(0,PCO_CUS.Text) then
         begin
         verteclado(0);
         fMensagem('A palavra utilizada para substituir não pode ter espaço!',0,['0'],0);
         PCO_CUS.SetFocus;
         exit;
         end;
      if not ftestapalavra(2,PCO_CUS.Text) then
         begin
         verteclado(0);
         fMensagem('Existe caracteres não pertencentes a palavra!',0,['0'],0);
         PCO_CUS.SetFocus;
         exit;
         end;
      end;
   DM1.Tb_ProPDPRECOC.Value:=ValFloat(PalNum(PCO_CUS.Text))/100;
   end;

if moper=8 then
   begin
   fpro01gant(moper);
   if mVlrInc_Ant<>DM1.Tb_ProPDVLRINC.AsFloat then
      begin
      DM1.Query1.Close;
      DM1.Query1.sql.Clear;
      DM1.Query1.sql.Add('Update CADCUS2 set CUPCOMIN='+MudaVp(DM1.Tb_ProPDVLRINC.AsString)
                  +' WHERE '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CUCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                  +' CUCODIGO=0'+DM1.Tb_ProPDCODPRO.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.sql.savetoFile('c:\sql.txt');
         end;
      end;

   if mIcmsCred_Ant<>DM1.Tb_ProPDICMSCRED.AsFloat then
      begin
      DM1.Query1.Close;
      DM1.Query1.sql.Clear;
      DM1.Query1.sql.Add('Update CADCOMP set CPALICMSCRED='+MudaVp(DM1.Tb_ProPDICMSCRED.AsString));
      DM1.Query1.sql.Add(', CPICMSCRED=ROUND((CPICMSCRED*CPALICMSCRED/100),'+DM1.Tb_PargerPCASIND.AsString+')');
      DM1.Query1.sql.Add(' WHERE '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CUCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                  +' CPCODMAT=0'+DM1.Tb_ProPDCODPRO.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.sql.savetoFile('c:\sql.txt');
         end;
      end;
   end;

DM1.Tb_ProPDCODUSR.Value:=codusr;
DM1.Tb_ProPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
DM1.Tb_ProPDHRALT.Value :=FormatDateTime(fhr, time);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPRO set PDNOMPROALT=PDNOME where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                  +' PDPROALT=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and (PDNOMPROALT<>PDNOME or PDNOMPROALT is null)');
DM1.Query1.ExecSQL;

if not flcadest(0,0,0,DM1.Tb_ProPDCODPRO.AsString) then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Insert into CADEST ('
                     +'CECODEMP, '
                     +'CEFILIAL, '
                     +'CECODPRO, '
                     +'CESALDO, '
                     +'CESALDO_PRAT, '
                     +'CESALDO_DEP, '
                     +'CESALDOR,'
                     +'CESALDOC,'
                     +'CEENTPEN,'
                     +'CEDTUSAI,'
                     +'CEDTUENT'
                     +') Values ('
                     +Inttostr(codemp)+','
                     +IntToStr(log_filial_padrao)+','
                     +DM1.Tb_ProPDCODPRO.AsString+','
                     +'0,0,0,0,'
                     +'0,0,'
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                     +')');

    try
      DM1.Query1.ExecSQL;
   except
      ex_erroSql(01,409,'Frm_Pro','CADEST');
      fdm1StartCommit;
      end;
   end;
if fSonumero(DM1.Tb_ProPDCLAS.AsString) <>  fSonumero(DM1.Tb_ProPDCODNCM.AsString) then
   DM1.Tb_ProPDCODNCM.AsString:=DM1.Tb_ProPDCLAS.AsString;

dm1.Tb_Pro.Post;
CANCELAR.Click;


end;

procedure TFrm_Pro.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   verteclado(0);
   fMensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if not fProTestaMov(DM1.Tb_ProPDCODPRO.AsString,'') then
   begin
   fMensagem('Este Produto possui Movimento de Compra/Venda. Exclusão Inválida!',0,['0'],0);
   exit;
   end;

verteclado(0);
if fmensagem('Quer Realmente Excluir o Produto?',0,['1','2'],2)=mrYes then
   begin
   fpro01gant(9);
//   flcadpro(1,0,0,DM1.Tb_ProPDCODPRO.AsString);
   DM1.Tb_Pro.Delete;
   tsAd.Enabled:=False;
   end;


end;

procedure TFrm_Pro.CANCELARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then
   begin
   db_precoc.Visible:=True;
   PCO_CUS.Visible:=False;
   end;

moper:=0;
DM1.Tb_Pro.Cancel;
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   flDesfazerCodigos(0,'CADPRO',DM1.Tb_ProPDCODPRO.Value);
   DM1.Tb_Pro.Delete;
   end;
DM1.Tb_Pro.AutoCalcFields:=True;
db_codpro.Enabled:=False;
tsAd.Enabled:=False;
if trim(mfiltro)<>'' then
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;

INCLUIR.Enabled     :=bbpdinc_true;
ALTERAR.Enabled     :=bbpdalt_true;
EXCLUIR.Enabled     :=bbpdexc_true;


end;

procedure TFrm_Pro.SAIRClick(Sender: TObject);
begin
  inherited;
  if not DM1.Tb_ProPDCODPRO.IsNull then
     mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
  ModalResult:=mrOk;
  IF pro_ori='' THEN
     close;

end;

procedure TFrm_Pro.TsTab2Show(Sender: TObject);
begin
  inherited;
fcarregagrade(0);
end;

procedure TFrm_Pro.FormCreate(Sender: TObject);
var
  x: Integer;
  n: Integer;
  nivel  : TNivPro;
begin
if log_filial_Qtd<2 then
   begin
   bbEstFilial.Visible:=false;
   DBGrid1.Columns[6].Visible:=false;
   end;


ListBox3.Clear;
CLFNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  ListBox3.Items.Add(nivel[n]);
  CLFNivel.Items.Add(nivel[n]);
  end;

  mPosReg_ant := nil;
  
if DM1.Tb_PargerPFILPRO.AsInteger=1 then
   begin
   gb_filtro.Visible:=true;
   Tab_Filtros.TabVisible:=false;
   end
else
   begin
   gb_filtro.Visible:=False;
   Tab_Filtros.TabVisible:=True;
   end;

if DM1.Tb_PargerPPROMCADPRO.AsInteger=1 then
   gb_promocao.Visible:=true;
if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
   lbl_Acab.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
   lbl_Serv.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
   lbl_MPR.Font.Color :=DM1.Tb_PargerPFCORP_MPR.AsInteger;
if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
   lbl_PP.Font.Color  :=DM1.Tb_PargerPFCORP_PP.AsInteger;
if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
   lbl_MP.Font.Color  :=DM1.Tb_PargerPFCORP_MP.AsInteger;
if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
   lbl_Isum.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   lbl_outros.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
   lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
   lbl_ProBloq.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+'todos'+chr(39)
                     +' and PFNOMFOR='+chr(39)+'frm_pro'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'frm_pro'+chr(39));
DM1.Tb_ParFon.Open;

if not DM1.Tb_Parfon.Eof then
   begin
   Frm_pro.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   Frm_pro.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   Frm_pro.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   Panel2.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   Panel2.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   Panel2.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   PC1.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   PC1.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   PC1.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;

   end;
if DM1.Tb_PargerPOCUEST.Value=1 then
   DBGrid1.Columns[1].Width:=430;

pro_ori:='';
if DM1.Tb_PargerPUPALNUM.Value=1 then
   begin
   db_precoc.DataField:='pco_custo';
   db_precoc.Enabled  :=False;
   end;
if DM1.Tb_PargerPMANPC.Value=1 then
   begin
   db_precoc.ReadOnly:=False;
   db_pcofab.ReadOnly:=False;
   end
else
   begin
   db_precoc.ParentColor:=True;
   db_pcofab.ParentColor:=True;
   db_precoc.ReadOnly:=True;
   db_pcofab.ReadOnly:=True;
   end;
if DM1.Tb_PargerPPRZVAL.Value=1 then
   begin
   LB_PRZVAL.Visible:=True;
   DB_PRZVAL.Visible:=True;
   end;
if DM1.Tb_PargerPDQPCOP.Value=1 then
   begin
   GB_PRECO2.Visible:=False;
   GB_PRECO3.Visible:=False;
   end
else if DM1.Tb_PargerPDQPCOP.Value=2 then
   begin
   GB_PRECO3.Visible:=False;
   end;

if DM1.Tb_PargerPUPMC.Value=0 then
   begin
   lbl_pmc.Visible:=False;
   lbl_pmc02.Visible:=False;
   lbl_pmc03.Visible:=False;
   pmc.Visible    :=False;
   pmc02.Visible    :=False;
   pmc03.Visible    :=False;
   DBGrid1.Columns[09].Visible:=False;
   DBGrid1.Columns[10].Visible:=False;
   end;
if DM1.Tb_PargerPINDUSTRIA.Value>0 then
   begin
   lbl_codproc.Visible:=true;
   db_codproc.Visible :=true;
   db_nomproc.Visible :=true;
   end;
if flcadactab(0,0,IntToStr(codcar),'CADPRO') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbpdinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbpdalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbpdexc_true:=False;
   if DM4.Tb_AcTabAT_ADIC.Value=1 then
      PC1.Pages[1].TabVisible:=False;
   end
else
   begin
   bbpdinc_true:=true;
   bbpdalt_true:=true;
   bbpdexc_true:=true;
   PC1.Pages[1].TabVisible:=true;
   end;

INCLUIR.Enabled:=bbpdinc_true;
ALTERAR.Enabled:=bbpdalt_true;
EXCLUIR.Enabled:=bbpdexc_true;
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','RG_ESTOQUE']),[]) then
   RG_ESTOQUE.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_ESTOQUE.ItemIndex:=2;


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPREV']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[0]:=true
   else
      CLFNivel.Checked[0]:=false;
   end
else
   CLFNivel.Checked[0]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPRIMA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[1]:=true
   else
      CLFNivel.Checked[1]:=false;
   end
else
   CLFNivel.Checked[1]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_EMBALAGEM']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[2]:=true
   else
      CLFNivel.Checked[2]:=false;
   end
else
   CLFNivel.Checked[2]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_PRODPROD']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[3]:=true
   else
      CLFNivel.Checked[3]:=false;
   end
else
   CLFNivel.Checked[3]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACABADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[4]:=true
   else
      CLFNivel.Checked[4]:=false;
   end
else
   CLFNivel.Checked[4]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_SUBPRO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[5]:=true
   else
      CLFNivel.Checked[5]:=false;
   end
else
   CLFNivel.Checked[5]:=true;


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACES']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[6]:=true
   else
      CLFNivel.Checked[6]:=false;
   end
else
   CLFNivel.Checked[6]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_USOCONSUMO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[7]:=true
   else
      CLFNivel.Checked[7]:=false;
   end
else
   CLFNivel.Checked[7]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_IMOBILIZADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[8]:=true
   else
      CLFNivel.Checked[8]:=false;
   end
else
   CLFNivel.Checked[8]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_SERVICO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[9]:=true
   else
      CLFNivel.Checked[9]:=false;
   end
else
   CLFNivel.Checked[9]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_INSUMOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[10]:=true
   else
      CLFNivel.Checked[10]:=false;
   end
else
   CLFNivel.Checked[10]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_OUTROS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[11]:=true
   else
      CLFNivel.Checked[11]:=false;
   end
else
   CLFNivel.Checked[11]:=true;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_PESQAVANC']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_PESQAVANC.Checked:=true
   else
      CB_PESQAVANC.Checked:=false;
   end
else
   CB_PESQAVANC.Checked:=false;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','RG_STATUS']),[]) then
   RG_STATUS.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_STATUS.ItemIndex:=3;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CLBSTATUS']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLBStatus.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLBStatus.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLBStatus.Items.Count-1 do
      begin
      CLBStatus.Checked[x]:=True;
      end;
   end;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CLBESTOQUE']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLBEstoque.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLBEstoque.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLBEstoque.Items.Count-1 do
      begin
      CLBEstoque.Checked[x]:=True;
      end;
   end;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CLBNIVEL']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLBNivel.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLBNivel.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLBNivel.Items.Count-1 do
      begin
      CLBNivel.Checked[x]:=True;
      end;
   end;



fCarregaPadrao(1);
Panel10.BringToFront;
Panel5.BringToFront;
tab_Grupos.Tabs.Clear;
tab_Grupos.Tabs.Add(Centra('...',' ',04));

if tab_Grupos.Visible then
   begin
   flcadGPro(0,1,'');
   While not DM1.Tb_Gpro.Eof do
      begin
      if ((DM1.Tb_GproGRNOME.Value<>'_') or (trim(DM1.Tb_GproGRNOME.AsString)<>''))
          and (Trim(DM1.Tb_GproGRNOMEABREV.AsString)='') then
          begin
          DM1.Tb_Gpro.Edit;
          DM1.Tb_GproGRNOMEABREV.Value:=DM1.Tb_GproGRNOME.Value[1];
          for x:=1 to Length(DM1.Tb_GproGRNOME.Value) do
             begin
             if (DM1.Tb_GproGRNOME.Value[x]=' ') and (length(DM1.Tb_GproGRNOME.Value)>x) then
                DM1.Tb_GproGRNOMEABREV.Value:=DM1.Tb_GproGRNOMEABREV.Value+DM1.Tb_GproGRNOME.Value[x+1];
             end;
          if length(DM1.Tb_GproGRNOMEABREV.AsString)>4 then
             DM1.Tb_GproGRNOMEABREV.Value:=copy(DM1.Tb_GproGRNOMEABREV.Value,1,4);
          DM1.Tb_Gpro.Post;
          end;
      tab_Grupos.Tabs.Add(Centra(DM1.Tb_GproGRNOMEABREV.Value,' ',4));
      DM1.Tb_Gpro.Next;
      end;
   end;
IF DBGrid1.DataSource=nil then
   dbgrid1.DataSource:=DM1.Src_Pro;
IF DBNavigator1.DataSource=nil then
   DBNavigator1.DataSource:=DM1.Src_Pro;


//Grade.Visible:=False;
if ValInt(copy(mpseg,1,2))<4 then
   begin
   REGMS.Visible:=True;
   db_rgms.Visible:=True;
   end
else
   begin
   REGMS.Visible:=False;
   db_rgms.Visible:=False;
   end;
pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;
if ValInt(copy(mpseg,4,2))=01 then
   begin
   DBGrid2.Columns[1].Visible:=True;
   Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
   TsTab2.Caption:='&Lotes das Mercadorias';
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
//      Grade.Visible:=false;
      PC1.Pages[2].TabVisible:=False;
      end
   else
      begin
//      Grade.Visible:=True;
      TsTab2.Caption:='&Grade';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Grade';
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
//   Grade.Visible:=True;
   TsTab2.Caption:='&Lote';
   DBGrid2.Columns[1].Visible:=False;
   Qr_LGCCLNUMERO.DisplayLabel:='Lote';
   end
else
   PC1.Pages[2].TabVisible:=False;

if DM1.Tb_PargerPCODDBC.Value=1 then
   begin
//   if Not Grade.Visible then
//      bbDCB.Left:=556;
   bbDCB.Visible:=True;
   end
else
   bbDCB.Visible:=False;

if not (DM1.Tb_PargerPCONSPROPAD.IsNull) then
   CAMPO.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;
   
end;

procedure TFrm_Pro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
   begin
   verteclado(0);
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   flDesfazerCodigos(0,'CADPRO',DM1.Tb_ProPDCODPRO.Value);
   DM1.Tb_Pro.Delete;
   end;

if pro_ori='consulta' then
   begin
   DM1.Tb_Pro.SQL.clear;
   DM1.Tb_Pro.Sql.add('Select * from CADPRO where '
                     +'     PDCODEMP like :CODEMP and '
                     +'     PDCODPRO like :CODPRO and '
                     +'     PDCODBAR like :CODBAR and '
                     +'     PDNOME     like :NOME and '
                     +'     PDNOME2   like :NOME2 and '
                     +'     PDNOMFOR  like :NOMFOR and '
                     +'     PDMARCA     like :MARCA and '
                     +'     PDCODFOR  like :CODFOR ')
   end;
//DM1.Tb_Pro.Filter:='';
//DM1.Tb_Pro.Filtered:=false;
DM1.Tb_ParFon.Close;
DM4.Tb_FPro.Close;
DM4.Tb_Bul.Close;
Qr_LGC.Close;

end;

procedure TFrm_Pro.db_codproExit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_ProPDCODPRO.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),' ',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      verteclado(0);
      FMensagem('Este código ja esta cadastrado no produto: '+DM1.Query1.Fields[1].AsString,0,['0'],0);
      db_codpro.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Pro.db_preco1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Pro.BBnAtuClick(Sender: TObject);
begin
  inherited;
if pro_ori='consulta' then
   begin
   fpro01lerant(0);
   end
else
   begin
   If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
      begin
      verteclado(0);
      Case fMensagem('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',0,['0'],0) of
         mrYes: GRAVAR.Click;
         else CANCELAR.Click;
         end;
     end;
     //atualizar
   if (CAMPO.ItemIndex=1) or (Campo.ItemIndex=3) then
      flcadpro2(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+fdeixanum2(edit1.Text),trim(MARCA.Text),'')
   else
      flcadpro2(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text,trim(MARCA.Text),'');
{


      flcadpro(campo.ItemIndex,1,0,fdeixanum2(edit1.Text))
   else
      flcadpro(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text);
}
   end;
end;

procedure TFrm_Pro.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pro_ori='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   if not DM1.Tb_ProPDCODPRO.IsNull then
      mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;

   ModalResult:=MrOk;
   pro_ori:='';
   end;



end;

procedure TFrm_Pro.db_sitEnter(Sender: TObject);
begin
  inherited;
Panel5.Visible:=True;

end;

procedure TFrm_Pro.db_sitExit(Sender: TObject);
begin
  inherited;
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   verteclado(0);
   FMensagem('Valido Somente com 3 digitos. Ex. 000, 010, 040 etc',0,['0'],0);
   db_sit.SetFocus;
   end
else
   Panel5.Visible:=False;

end;

procedure TFrm_Pro.FormActivate(Sender: TObject);
begin
  inherited;



//if (mredirecionaFormPro) and (trim(Edit1.Text)<>'') then

if (not Edit1.Focused) and (pro_ori<>'consulta') then
   begin
   Edit1.SetFocus;
   end;

if  mPosReg_ant<>nil then
    begin
      try
      DM1.Tb_Pro.GotoBookmark(mPosReg_ant);
      mPosReg_ant:=nil;
      except
      end;
    end;
end;

procedure TFrm_Pro.dbc_nivelEnter(Sender: TObject);
begin
  inherited;
Panel10.Visible:=True;

end;

procedure TFrm_Pro.dbc_nivelExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDNIVEL.Value>11 then
   begin
   verteclado(0);
   fMensagem('Nível inválido!',0,['0'],0);
   dbc_nivel.SetFocus
   end
else if (DM1.Tb_PargerPPCOGRA.Value=1) and (DM1.Tb_ProPDNIVEL.Value<1) then
   begin
   verteclado(0);
   fMensagem('Para Cadastrar Produto Acabado Utilize o Programa de Manutenção!',0,['0'],0);
   dbc_nivel.SetFocus;
   end
else
   Panel10.Visible:=False;

end;

procedure TFrm_Pro.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if pro_ori='' then
      begin
      PC1.ActivePage:= tsCad;
      ALTERAR.SetFocus;
      end
   else
      begin
      if not DM1.Tb_ProPDCODPRO.IsNull then
         mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
      ModalResult:=MrOk;
      pro_ori:='';
      end;
   abort;
   end;

end;

procedure TFrm_Pro.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHAGEPRO.Value=1 then
   begin
   if pro_ori='consulta' then
      begin
      fpro01lerant(0);
      end
   else
      begin
      If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
         begin
         verteclado(0);
         Case fMensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['0'],0) of
            mrYes: GRAVAR.Click;
         else CANCELAR.Click;
            end;
         end;
      end;
  //change
   if (CAMPO.ItemIndex=1) or (Campo.ItemIndex=3) then
      flcadpro2(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+fdeixanum2(edit1.Text),trim(MARCA.Text),'')
   else
      flcadpro2(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text,trim(MARCA.Text),'');

   end;
end;

procedure TFrm_Pro.db_codforKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro',Key));
   db_codforExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Pro.db_codgruKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODGRU.Value:=ValFloat(fChamaGPro(0,'frm_Pro',Key));
      if trim(CODGRU.Text)<>'' then
         CODGRUExit(Self);
      key:=#0;
      end;

end;

procedure TFrm_Pro.db_codramKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODRAM.Value:=ValFloat(fChamaRamPro(0,'frm_Pro',Key));
      key:=#0;
      end;


end;

procedure TFrm_Pro.db_codconKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODCON.Value:=ValFloat(fChamaTCon(0,'frm_Pro',Key));
      if trim(CODGRU.Text)<>'' then
         CODGRUExit(Self);
      key:=#0;
      end;


end;

procedure TFrm_Pro.db_codtipKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODTIP.Value:=ValFloat(fChamaTipPro(0,'frm_Pro',Key));
      if trim(CODGRU.Text)<>'' then
         CODGRUExit(Self);
      key:=#0;
      end;


end;

procedure TFrm_Pro.db_codforExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODFOR.Value>0 then
   begin
   if not flqr1('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',DM1.Tb_ProPDCODFOR.AsString) then
      begin
      verteclado(0);
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      db_codfor.SetFocus;
      end
   else
      begin
      DM1.Tb_ProPDNOMFOR.Value :=DM1.Query1.Fields[0].AsString;
      DM1.Tb_ProPDRESTFOR.Value:=DM1.Query1.Fields[1].AsFloat;
      end;
   end
else
   begin
   DM1.Tb_ProPDNOMFOR.Value :=' ';
   DM1.Tb_ProPDRESTFOR.Value:=0;
   end;
end;

procedure TFrm_Pro.db_codgruExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODGRU.Value>0 then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
      begin
      verteclado(0);
      fMensagem('Grupo não Cadastrado!',0,['0'],0);
      db_codgru.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMGRU.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMGRU.Value:=' ';

end;

procedure TFrm_Pro.db_codramExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODRAM.Value>0 then
   begin
   if not flqr1('RNOME','R','CADRAM','N','RCODRAM',DM1.Tb_ProPDCODRAM.AsString) then
      begin
      verteclado(0);
      fMensagem('Ramo não Cadastrado!',0,['0'],0);
      db_codram.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMRAM.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMRAM.Value:=' ';

end;

procedure TFrm_Pro.db_codconExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODCON.Value>0 then
   begin
   if not flqr1('CNOME,CRESTCON','C','CADCON','N','CCODCON',DM1.Tb_ProPDCODCON.AsString) then
      begin
      verteclado(0);
      fMensagem('Controle não Cadastrado!',0,['0'],0);
      db_codcon.SetFocus;
      end
   else
      begin
      DM1.Tb_ProPDNOMCON.Value :=DM1.Query1.fields[0].AsString;
      DM1.Tb_ProPDRESTCON.Value:=DM1.Query1.fields[1].AsFloat;
      end
   end
else
   begin
   DM1.Tb_ProPDNOMCON.Value :=' ';
   DM1.Tb_ProPDRESTCON.Value:=0;
   end;

end;

procedure TFrm_Pro.db_codtipExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODTIP.Value>0 then
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',DM1.Tb_ProPDCODTIP.AsString) then
      begin
      verteclado(0);
      fMensagem('Tipo  não Cadastrado!',0,['0'],0);
      db_codtip.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMTIP.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMTIP.Value:=' ';

end;

procedure TFrm_Pro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=114) and not (DM1.Tb_ProPDNOME.IsNull) then
   begin

   if Frm_Des=nil then
      Application.CreateForm(TFrm_Des, Frm_Des)
   else
      begin
      Frm_Des.Free;
      Frm_Des:=nil;
      Application.CreateForm(TFrm_Des, Frm_Des);
      end;

   Frm_Des.ShowModal;

   pcodtip:=DM1.Tb_ProPDCODTIP.AsInteger;
   Frm_Des.NOMPRO.Caption:=DM1.Tb_ProPDNOME.Value;
   Frm_Des.MARCA.Caption :=DM1.Tb_ProPDMARCA.Value;
   Frm_Des.PRECO.Caption :=FormatFloat(mcasaspu,DM1.Tb_ProPDPRECO1.Value);
   Frm_Des.TIPO.Text  :=DM1.Tb_ProPDNOMTIP.Value;
   Frm_Des.ShowModal;
   Frm_Des.Free;
   Frm_Des:=nil;
   key:= 0;
   end;
if (key=27) then
   begin
   if pro_ori<>'' then
      begin
      if not DM1.Tb_ProPDCODPRO.IsNull then
         mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
      ModalResult:=MrOk;
      close;
      end;
   end;

end;

function fpro01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
mChave_Old: Integer;
mCondicao_old: String;

begin
mCondicao_old:=' where PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString;



mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'PDCODNOV' //nome do campo do novo valor (chave)
                  ,'PDDTALT' // nome do campo data e hora do evento
                  ,'PDCODUSR' // nome do campo do usuario
                  ,'PDSTATUS' // nome do campo de status
                  ,'CADPRO' // nome da tabela
                  ,mCondicao_old);

result:=true;

{

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PDCODNOV) from OLD_CADPRO');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADPRO (';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',PDCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Pro.Fields[x].FieldName='PDSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as PDSTATUS '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as PDCODUSR '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDDTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PDDTALT '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PDHRALT '
   else
      minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PDCODNOV ';
minstru:=minstru+' from CADPRO where PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString
                +' and PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString;
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
except
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao PD1682. Contactar Suporte',0,['1'],0);
   end;
DM1.SG_ASSOC.Commit;
result:=True;


}
end;

function tfrm_Pro.fPro01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
DM1.Tb_Pro.Filter  :='';
DM1.Tb_Pro.Filtered:=false;
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   if lowerCase(DM1.Tb_Pro.Fields[x].FieldName)='preco_index_nome' then
      minstru:=minstru+v+' case when nvl(PDPRECO_CODINDEX,0)=0 then null else (SELECT max(MNOME) from CADMOE where MCODMOE=PDPRECO_CODINDEX) end as preco_index_nome '
   else if UpperCase(copy(DM1.Tb_Pro.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_Pro.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADPRO where PDCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_Pro.Close;
DM1.Tb_Pro.SQL.Clear;
DM1.Tb_Pro.SQL.add(minstru);
DM1.Tb_Pro.Open;
BBnAtu.Enabled      :=False;
Edit1.Enabled       :=False;
CAMPO.Enabled       :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;





procedure TFrm_Pro.db_codprocExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Pro.State in [dsEdit, dsInsert] then
   begin
   if DM1.Tb_ProPDCODPROC.Value>0 then
      begin
      if not flqr1('CP_NOME','CP_','CADPROC','N','CP_CODPRO',DM1.Tb_ProPDCODPROC.AsString) then
         begin
         verteclado(0);
         fMensagem('Procedimento não Cadastrado!',0,['0'],0);
         db_codproc.SetFocus;
         end
      else
         DM1.Tb_ProPDNOMPROC.Value:=DM1.Query1.fields[0].AsString;
      end
   else
      DM1.Tb_ProPDNOMPROC.Value:=' ';
   end;
end;

procedure TFrm_Pro.db_codprocKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Pro.State in [dsEdit, dsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODPROC.Value:=ValFloat(fChamaPro(0,'frm_Pro',Key));
      key:=#0;
      end;
  end;

end;

procedure TFrm_Pro.BB_SOBREClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_ProPDCODBAR.Value<=0 then
   begin
   verteclado(0);
   fMensagem('É necessário que o código de barras do produto seja preechido!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_Fig, Frm_Fig);
frm_fig.mCodEmp:=DM1.TB_PROPDCODEMP.AsFloat;
frm_fig.mCodPro:=DM1.TB_PROPDCODPRO.AsFloat;

Frm_Fig.ShowModal;
Frm_Fig.Free;
Frm_Fig:=nil;

end;

procedure TFrm_Pro.PC1Change(Sender: TObject);
begin
  inherited;
if not (DM1.Tb_Pro.State in [dsEdit, dsInsert]) then
   begin
   if PC1.ActivePageIndex=3 then
      DM1.Tb_Pro.AutoCalcFields:=False
   else
      DM1.Tb_Pro.AutoCalcFields:=True;
   end;
if mAtuafiltro then
   begin
   fCarregaPadrao(0);
   mAtuafiltro:=false;
   end;
end;

function TFrm_Pro.fcarregagrade(ptipo: Integer): Boolean;
begin
Label6.Caption:='Produto: '+DM1.Tb_ProPDCODPRO.AsString+' - '+DM1.Tb_ProPDNOME.AsString+' Est.: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque.Value);
Qr_LGC.Close;
Qr_Lgc.SQL.Clear;
Qr_LGc.SQL.Add('Select * from CADLGC ');
if DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   Qr_LGC.SQL.Add(' Where CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                 +' order by CLNUMERO')
   end
else
   begin
   Qr_LGC.SQL.Add('where CLCODEMP=0'+InttoStr(codemp)
              +' and CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
              +' order by CLNUMERO');
   end;
Qr_LGC.Open;
result:=True;
end;


function TFrm_Pro.fcarregaPromocao(ptipo: Integer): Boolean;
begin
Tb_PPR.Close;
Tb_PPR.SQL.Clear;
Tb_PPR.SQL.add(' Select PPCODEMP, '
              +'  PPPROMOCAO, '
              +'  PPPVTIP, '
              +'  PPPVTAB, '
              +'  PPCODRED, '
              +'  PPCODCLI, '
              +'  PPID, '
              +'  pPID_ANO, '
              +'  PPFLAG, '
              +'  PPCODPRO, '
              +'  PPGRADE, '
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
              +'  PPPRIOR '
              +'  ,PPUF '
              +'  ,PPCODCLI '
              +'  ,PPID '
              +'  ,PPID_ANO '
              +' from CADPPR where '
   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PPCODPRO=0'+IntTostr(codemp)+' and ')
   +' PPCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
Tb_PPR.Open;
if Tb_PPR.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_Pro.Src_ProDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if PC1.ActivePageIndex=2 then
   fcarregagrade(0)
else if (PC1.ActivePageIndex=3) and (gb_promocao.Visible) then
   fcarregapromocao(0);

end;

procedure TFrm_Pro.bbDCBClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   exit;
Application.CreateForm(TFrm_DCBPRO, Frm_DCBPRO);
Frm_DCBPRO.CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
Frm_DCBPRO.NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
Frm_DCBPRO.Tb_PGen.Close;
Frm_DCBPRO.Tb_PGen.SQL.Clear;
Frm_DCBPRO.Tb_PGen.SQL.Add('Select * from CADPGEN where '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PGCODEMP=0'+IntTostr(codemp)+' and ')
                          +' PGCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
Frm_DCBPRO.Tb_PGen.Open;
Frm_DCBPRO.ShowModal;
Frm_DCBPRO.Free;
Frm_DCBPRO:=nil;

end;

procedure TFrm_Pro.db_proaltExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ProPDPROALT.Value>0) and not (DM1.Tb_ProPDPROALT.IsNull) then
   begin
   if (dm1.Tb_ProPDCODPRO.Value=DM1.Tb_ProPDPROALT.Value) then
      begin
      verteclado(0);
      fMensagem('Não Pode ser o mesmo código do produto!',0,['0'],0);
      db_proalt.SetFocus;
      exit;
      end
   else if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM1.Tb_ProPDPROALT.AsString) then
      begin
      verteclado(0);
      fMensagem('Produto não Encontrado!',0,['0'],0);
      db_proalt.SetFocus;
      exit;
      end
   else
      DM1.Tb_ProPDNOMPROALT.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMPROALT.Value:=' ';
end;

procedure TFrm_Pro.Edit1Exit(Sender: TObject);
begin
  inherited;
//BBnAtu.Click;
end;

procedure TFrm_Pro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

if (DM1.Tb_PargerPQTDDIAV.Value>0) and (not (DM1.Tb_Prodtvenc.IsNull) and (DM1.Tb_Prodtvenc.Value<pro_dtvcto)) then
   begin
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDSTATUS.Value>0 then
   begin
   if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if DM1.Tb_ProPDNIVEL.Value=0 then
   begin
   if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=1 then
   begin
   if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=2 then
   begin
   if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if DM1.Tb_ProPDNIVEL.Value=3 then
   begin
   if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=4 then
   begin
   if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=5 then
   begin
   if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=6 then
   begin
   if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;


if DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat>0 then
  if DM1.Tb_ProPDDTULTSAI.AsDateTime+DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat<Date then
    begin
    DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_SEMMOV.AsInteger;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

   
end;

function TFrm_Pro.fGravaFil(ptipo: Integer): Boolean;
var
x: Integer;
begin
fDeletaPadroes(codusr,'_PRO','');
fGravaPadroes(codusr,'RG_ESTOQUE'     ,'itemindex'       ,'_PRO',IntTostr(RG_ESTOQUE.ItemIndex));
fGravaPadroes(codusr,'RG_STATUS'      ,'itemindex'       ,'_PRO',IntTostr(RG_STATUS.ItemIndex));


fGravaPadroes(codusr,'CB_MATPREV'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[0],'true','false'));
fGravaPadroes(codusr,'CB_MATPRIMA'    ,'checked'         ,'_PRO',iif(CLFNivel.Checked[1],'true','false'));
fGravaPadroes(codusr,'CB_EMBALAGEM'   ,'checked'         ,'_PRO',iif(CLFNivel.Checked[2],'true','false'));
fGravaPadroes(codusr,'CB_PRODPROD'    ,'checked'         ,'_PRO',iif(CLFNivel.Checked[3],'true','false'));
fGravaPadroes(codusr,'CB_ACABADO'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[4],'true','false'));
fGravaPadroes(codusr,'CB_SUBPRO'      ,'checked'         ,'_PRO',iif(CLFNivel.Checked[5],'true','false'));
fGravaPadroes(codusr,'CB_ACES'        ,'checked'         ,'_PRO',iif(CLFNivel.Checked[6],'true','false'));
fGravaPadroes(codusr,'CB_USOCONSUMO'  ,'checked'         ,'_PRO',iif(CLFNivel.Checked[7],'true','false'));
fGravaPadroes(codusr,'CB_IMOBILIZADO' ,'checked'         ,'_PRO',iif(CLFNivel.Checked[8],'true','false'));
fGravaPadroes(codusr,'CB_SERVICO'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[9],'true','false'));
fGravaPadroes(codusr,'CB_INSUMOS'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[10],'true','false'));
fGravaPadroes(codusr,'CB_OUTROS'      ,'checked'         ,'_PRO',iif(CLFNivel.Checked[11],'true','false'));

fGravaPadroes(codusr,'CB_PESQAVANC'   ,'checked'         ,'_PRO',iif(CB_PESQAVANC.Checked,'true','false'));

mcinst2:='';
for x:=0 to CLBStatus.Items.Count-1 do
   begin
   if CLBStatus.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBSTATUS'      ,'checked'         ,'_PRO',mcinst2);
mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBESTOQUE'      ,'checked'         ,'_PRO',mcinst2);

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBNIVEL'      ,'checked'         ,'_PRO',mcinst2);
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
result:=True;

end;

function TFrm_Pro.fCarregaPadrao(ptipo: Integer): Boolean;
var
x: Integer;
x2: Integer;
mfiltro: String;
begin

if pro_ori='consulta' then
   begin
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   result:=true;
   exit;
   end
else
   begin
   if ptipo=0 then
      begin
      mfiltro          :='';
      DM1.Tb_Pro.Filter:='';
      mcinst:='';
      end
   else if trim(DM1.Tb_Pro.Filter)<>'' then
      begin
      mfiltro:=DM1.Tb_Pro.Filter;
      DM1.Tb_Pro.Filter:='';
      mcinst:=' and ';
//      mcinst:=' ';
      end
   else
      begin
      mcinst:='';
      mfiltro:='';
      end;
   end;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   mfiltro:=mcinst+'PDNIVEL<>0';
   mcinst:=' and ';
   end;
if gb_filtro.Visible then
   begin
   mcinst2:='';
   mcinst3:='';
   if not CLBStatus.Checked[3] then
      begin
      for x:=0 to CLBStatus.Items.Count-2 do
         begin
         if CLBStatus.Checked[x] then
            begin
            mcinst2:=mcinst2+mcinst3+' PDSTATUS='+IntToStr(x);
            mcinst3:=' or ';
            end;
         end;
      if trim(mcinst2)<>'' then
         begin
         mcinst2:='('+mcinst2+')';
         if Trim(mfiltro)<>'' then
            mfiltro:=mfiltro+' and '+mcinst2
         else
            mfiltro:=mcinst2;
         end;
      end;

   mcinst2:='';
   mcinst3:='';
   if not CLBEstoque.Checked[2] then
      begin
      if CLBEstoque.Checked[0] then
         mcinst2:='PDSALDO<>0'
      else if CLBEstoque.Checked[1] then
         mcinst2:='PDSALDO=0';
      if trim(mcinst2)<>'' then
         begin
         if Trim(mfiltro)<>'' then
            mfiltro:=mfiltro+' and '+mcinst2
         else
            mfiltro:=mcinst2;
         end;
      end;

   mcinst2:='';
   mcinst3:='';
   if not CLBNivel.Checked[8] then
      begin
      for x:=0 to CLBNivel.Items.Count-2 do
         begin
         if CLBNivel.Checked[x] then
            begin
            mcinst2:=mcinst2+mcinst3+' PDNIVEL='+IntToStr(x);
            mcinst3:=' or ';
            end;
         end;
      if trim(mcinst2)<>'' then
         begin
         mcinst2:='('+mcinst2+')';
         if Trim(mfiltro)<>'' then
            mfiltro:=mfiltro+' and '+mcinst2
         else
            mfiltro:=mcinst2;
         end;
      end;
   end
else
   begin
   if RG_ESTOQUE.ItemIndex=1 then
      begin
      mfiltro:=mfiltro+mcinst+'PDSALDO=0';
      mcinst:=' and ';
      end
   else if RG_ESTOQUE.ItemIndex=0 then
      begin
      mfiltro:=mfiltro+mcinst+'PDSALDO<>0';
      mcinst:=' and ';
      end;
   if RG_STATUS.ItemIndex<>3 then
      begin
      if RG_STATUS.ItemIndex=0 then
         mfiltro:=mfiltro+mcinst+' PDSTATUS<8'
      else
         mfiltro:=mfiltro+mcinst+' PDSTATUS=0'+IntToStr(RG_STATUS.ItemIndex+8);
      mcinst:=' and ';
      end;
  if (CLFNivel.Checked[0]) and (CLFNivel.Checked[1]) and
     (CLFNivel.Checked[2]) and (CLFNivel.Checked[3]) and
     (CLFNivel.Checked[4]) and (CLFNivel.Checked[5]) and
     (CLFNivel.Checked[6]) and (CLFNivel.Checked[6]) and
     (CLFNivel.Checked[7]) and (CLFNivel.Checked[8]) and
     (CLFNivel.Checked[9]) and (CLFNivel.Checked[10]) and
     (CLFNivel.Checked[11]) then

     mcinst2:=''
  else
    begin
    mcinst2:='';
    mcinst3:='';
    for x2:=0 to 11 do
      begin
      if CLFNivel.Checked[x2] then
        begin
        mcinst2:=mcinst2+mcinst3+'PDNIVEL='+inttostr(x2);
        mcinst3:=' or ';
        end;
      end;
    mcinst2:='('+mcinst2+')';
    end;

   if trim(mcinst2)<>'' then
      begin
      if Trim(mfiltro)<>'' then
         mfiltro:=mfiltro+' and '+mcinst2
      else
         mfiltro:=mcinst2;
      end;
   end;
if Trim(CODGRU.Text)<>'' then
   begin
   mcinst2:='PDCODGRU='+Trim(CODGRU.Text);
   if Trim(mfiltro)<>'' then
      mfiltro:=mfiltro+' and '+mcinst2
   else
      mfiltro:=mcinst2;
   end;
if trim(mfiltro)='' then
   begin
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   end
else
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;

Result:=True;
end;

procedure TFrm_Pro.db_nome2Exit(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_ProPDNOME2.Value)='' then
   DM1.Tb_ProPDNOME2.Value:=' ';
end;

procedure TFrm_Pro.dbg_promocaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (Tb_PPRPPDATFIN.AsDateTime>pdatanula) and
   (Tb_PPRPPDATFIN.AsDateTime<date) then
   begin
   dbg_promocao.Canvas.Font.Color:=clRed;
   dbg_promocao.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Pro.Tb_PPRCalcFields(DataSet: TDataSet);
begin
  inherited;
if Tb_PPRPPDATINI.AsDateTime<=pdatanula then
   Tb_PPRdataini.Value:='/  /'
else
   Tb_PPRdataini.Value:=FormatDatetime(fdt2, Tb_PPRPPDATINI.Value);

if Tb_PPRPPDATFIN.AsDateTime<=pdatanula then
   Tb_PPRdatafin.Value:='/  /'
else
   Tb_PPRdatafin.Value:=FormatDatetime(fdt2, Tb_PPRPPDATFIN.Value);

end;

procedure TFrm_Pro.tsTabShow(Sender: TObject);
begin
  inherited;
if (gb_promocao.Visible) then
   fcarregapromocao(0);

end;


procedure TFrm_Pro.bbBloqueiosClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_VendaBloqueada_Relacao, Frm_VendaBloqueada_Relacao);
Frm_VendaBloqueada_Relacao.Ts_Vendedor.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.Ts_Fornecedor.TabVisible  :=True;
Frm_VendaBloqueada_Relacao.Ts_Estados.TabVisible     :=False;
Frm_VendaBloqueada_Relacao.Ts_Cidade.TabVisible      :=False;
Frm_VendaBloqueada_Relacao.Ts_Bairros.TabVisible     :=False;
Frm_VendaBloqueada_Relacao.Ts_RamoClientes.TabVisible:=False;
Frm_VendaBloqueada_Relacao.Ts_Clientes.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.Ts_RamoProdutos.TabVisible:=False;
Frm_VendaBloqueada_Relacao.Ts_Produtos.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.CODIGO.Enabled            :=False;
Frm_VendaBloqueada_Relacao.bbAtualizar.Enabled          :=False;
Frm_VendaBloqueada_Relacao.St_Nivel.Caption:='NIVEL: PRODUTO';
mNivelConsulta:=9;
Frm_VendaBloqueada_Relacao.CODIGO.Text:=DM1.Tb_ProPDCODPRO.AsString;
Frm_VendaBloqueada_Relacao.NOME.Text:=DM1.Tb_ProPDNOME.AsString;
Frm_VendaBloqueada_Relacao.bbAtualizar.Click;
Frm_VendaBloqueada_Relacao.Show;


end;

procedure TFrm_Pro.bbSalvarPadraoClick(Sender: TObject);
begin
  inherited;
fgravafil(0);
fCarregaPadrao(0);
end;

procedure TFrm_Pro.RG_ESTOQUEClick(Sender: TObject);
begin
  inherited;
   mAtuafiltro:=true;

end;

procedure TFrm_Pro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODGRU.Text:=fChamaGPro(0,'frm_Pro',Key);
      if trim(CODGRU.Text)<>'' then
         CODGRUExit(Self);
      key:=#0;
      end;


end;

procedure TFrm_Pro.CODGRUExit(Sender: TObject);
begin
  inherited;
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)='' then
   NOMGRU.Text:='Todos...'
else
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      verteclado(0);
      fMensagem('Grupo não Cadastrado!',0,['0'],0);
      CODGRU.Text;
      end
   else
      NOMGRU.Text:=DM1.Query1.fields[0].AsString;
   end;
fCarregaPadrao(0);

end;

procedure TFrm_Pro.tab_GruposChange(Sender: TObject);

begin
  inherited;
NOMGRU.Text:='Todos...';
CODGRU.Text:='';

if trim(tab_Grupos.Tabs[tab_Grupos.tabIndex])<>'...' then
   begin
   if flqr1('GRCODGRU','GR','CADGRU','C','GRNOMEABREV',trim(tab_Grupos.Tabs[tab_Grupos.tabIndex])) then
      begin
      CODGRU.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;
CODGRUExit(Self);

end;

procedure TFrm_Pro.CLBStatusClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if CLBStatus.ItemIndex=CLBStatus.Count-1 then
   begin
   for x := 0 to CLBStatus.Count -2 do
      begin
      if CLBStatus.Checked[CLBStatus.count-1] then
         CLBStatus.Checked[x] := true
      else
         CLBStatus.Checked[x]:=false;
      end;
   end
else
   begin
   CLBStatus.Checked[CLBStatus.Count-1]:=False;
   for x:=0 to CLBStatus.Count-2 do
      begin
      CLBStatus.Checked[CLBStatus.Count-1]:=true;
      if not CLBStatus.Checked[x] then
         begin
         CLBStatus.Checked[CLBStatus.Count-1]:=False;
         break;
         end;
      end;
   end;
fCarregaPadrao(0);

end;

procedure TFrm_Pro.CLBNivelClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if CLBNivel.ItemIndex=CLBNivel.Count-1 then
   begin
   for x := 0 to CLBNivel.Count -2 do
      begin
      if CLBNivel.Checked[CLBNivel.count-1] then
         CLBNivel.Checked[x] := true
      else
         CLBNivel.Checked[x]:=false;
      end;
   end
else
   begin
   CLBNivel.Checked[CLBNivel.Count-1]:=False;
   for x:=0 to CLBNivel.Count-2 do
      begin
      CLBNivel.Checked[CLBNivel.Count-1]:=true;
      if not CLBNivel.Checked[x] then
         begin
         CLBNivel.Checked[CLBNivel.Count-1]:=False;
         break;
         end;
      end;
   end;

fCarregaPadrao(0);

end;

procedure TFrm_Pro.CLBEstoqueClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if CLBEstoque.ItemIndex=CLBEstoque.Count-1 then
   begin
   for x := 0 to CLBEstoque.Count -2 do
      begin
      if CLBEstoque.Checked[CLBEstoque.count-1] then
         CLBEstoque.Checked[x] := true
      else
         CLBEstoque.Checked[x]:=false;
      end;
   end
else
   begin
   CLBEstoque.Checked[CLBEstoque.Count-1]:=False;
   for x:=0 to CLBEstoque.Count-2 do
      begin
      CLBEstoque.Checked[CLBEstoque.Count-1]:=true;
      if not CLBEstoque.Checked[x] then
         begin
         CLBEstoque.Checked[CLBEstoque.Count-1]:=False;
         break;
         end;
      end;
   end;

fCarregaPadrao(0);


end;


procedure TFrm_Pro.db_preco1Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO1.Value;
end;

procedure TFrm_Pro.db_preco1Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO1.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA1.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP1.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Pro.db_preco2Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO2.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA2.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP2.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Pro.db_preco3Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO3.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA3.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP3.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Pro.db_preco2Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO2.Value;

end;

procedure TFrm_Pro.db_preco3Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO3.Value;

end;

procedure TFrm_Pro.Qr_LGCCalcFields(DataSet: TDataSet);
begin
  inherited;
if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
   Qr_LGCdtvcto.Value:='/  /'
else
   Qr_LGCdtvcto.Value:=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);

end;

procedure TFrm_Pro.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
if pro_ori='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   if not DM1.Tb_ProPDCODPRO.IsNull then
      mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
   ModalResult:=MrOk;
   pro_ori:='';
   end;
mla_lote    :=Qr_LGCCLNUMERO.AsString;
if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
   mla_dtvcto  :=''
else
   mla_dtvcto  :=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);


end;

procedure TFrm_Pro.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if pro_ori='' then
      begin
      PC1.ActivePage:= tsCad;
      ALTERAR.SetFocus;
      end
   else
      begin
      if not DM1.Tb_ProPDCODPRO.IsNull then
         mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
      ModalResult:=MrOk;
      pro_ori:='';
      end;
   mla_lote    :=Qr_LGCCLNUMERO.AsString;
   if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
      mla_dtvcto  :=''
   else
      mla_dtvcto  :=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);
   abort;
   end;

end;

procedure TFrm_Pro.db_embpad2Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDEMBPAD.AsFloat=0 then
   DM1.Tb_ProPDEMBPAD.Value:=ValInt(DM1.Tb_ProPDEMBPAD2.Value);
end;

procedure TFrm_Pro.db_nomeExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_Pro.State in [dsEdit,dsInsert]) and (DM1.Tb_ProPDQTDGRML.AsFloat=0) then
   begin
   DM1.Tb_ProPDQTDGRML.Value:=ValFloat(DM1.Tb_ProPDNOME.Value);
   if DM1.Tb_ProPDQTDGRML.Value>=0 then
      begin
      DM1.Tb_ProPDQTDGRML.Value:=DM1.Tb_ProPDQTDGRML.Value/1000;
      end;
   end;
end;

procedure TFrm_Pro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pro.bbEstFilialClick(Sender: TObject);
var
form_pro_estfilial: Tfrm_Pro_EstFilial;
begin
  inherited;
if not DM1.Tb_ProPDCODPRO.IsNull then
   begin
   Application.CreateForm(Tfrm_Pro_EstFilial, form_Pro_EstFilial);
   form_Pro_EstFilial.lbl_nompro.Caption:=DM1.Tb_ProPDCODPRO.AsString+' - '+DM1.Tb_ProPDNOME.AsString+'/'+DM1.Tb_ProPDMARCA.AsString;
   form_Pro_EstFilial.lbl_precoqtd.Caption:='Preço Unitário: '+FormatFloat(mcasaspu, DM1.Tb_Propcoven.asfloat)
                                          +' Quantidade Total: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque.asfloat);
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADEST','CECODEMP','CFCODEMP','CEFILIAL','CFFILIAL');

   form_pro_estfilial.tb_cadpro_filial.Close;
   form_pro_estfilial.tb_cadpro_filial.SQL.Clear;
   form_pro_estfilial.tb_cadpro_filial.SQL.Add('Select NVL(CESALDO,0) AS CESALDO,CFNOME,CFFILIAL from CADPRO_FILIAL'+iif(la_tabelas='','',',')+la_tabelas
                                              +'       '+la_Join
                                              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                              +' (CFCODEMP=:CODEMP OR CFCODEMP=:CODEMP_FILIAL) '
                                              +' AND CECODPRO(+)=:CODPRO order by CFFILIAL ');

   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP').AsInteger:=DM1.Tb_ProPDCODEMP.AsInteger;
   if DM1.Tb_ProPDCODEMP.AsInteger>100 then
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=DM1.Tb_ProPDCODEMP.AsInteger-100
   else
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=DM1.Tb_ProPDCODEMP.AsInteger+100;
   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODPRO').AsFloat:=DM1.Tb_ProPDCODPRO.AsFloat;
   try
      form_pro_estfilial.tb_cadpro_filial.Open;
   except
      form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile('C:\SQL.TXT');
      end;
//   form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile('C:\SQL.TXT');

   form_pro_estfilial.ShowModal;
   FreeAndNil(form_pro_estfilial);
   end;
end;

end.
