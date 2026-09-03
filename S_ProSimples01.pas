unit S_ProSimples01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls,db,dbtables,
  jpeg, CheckLst, Grids, DBGrids
  ;

type
  TFrm_ProSimples01 = class(TFrm_C)
    Grade: TBitBtn;
    BB_SOBRE: TBitBtn;
    Src_Pro: TDataSource;
    GroupBox1: TGroupBox;
    Tab_Filtros: TTabSheet;
    RG_ESTOQUE: TRadioGroup;
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    Label30: TLabel;
    Label55: TLabel;
    Label52: TLabel;
    Label64: TLabel;
    Label10: TLabel;
    Label40: TLabel;
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
    db_preco1: TDBEdit;
    db_precoa1: TDBEdit;
    db_dtaltpco1: TDBEdit;
    db_pesob: TDBEdit;
    db_codncm: TDBEdit;
    GB_OUTROS: TGroupBox;
    Label61: TLabel;
    db_precoc: TDBEdit;
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
    Label47: TLabel;
    db_pesol: TDBEdit;
    bbDCB: TBitBtn;
    bbBloqueios: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    GroupBox3: TGroupBox;
    CB_ACABADO: TCheckBox;
    CB_SERVICO: TCheckBox;
    CB_MATPREV: TCheckBox;
    CB_PRODPROD: TCheckBox;
    CB_MATPRIMA: TCheckBox;
    CB_INSUMOS: TCheckBox;
    CB_ACES: TCheckBox;
    CB_OUTROS: TCheckBox;
    gb_filtro: TGroupBox;
    tab_Grupos: TTabControl;
    Label59: TLabel;
    CODGRU: TEdit;
    NOMGRU: TEdit;
    CLBNivel: TCheckListBox;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    bbSalvar: TBitBtn;
    CB_PESQAVANC: TCheckBox;
    Label19: TLabel;
    db_clas: TDBEdit;
    db_icmscred: TDBEdit;
    Label68: TLabel;
    Label69: TLabel;
    DBE_VlrInc: TDBEdit;
    lbl_codgru: TLabel;
    db_codgru: TDBEdit;
    db_nomgru: TDBEdit;
    Label12: TLabel;
    db_codtip: TDBEdit;
    db_nomtip: TDBEdit;
    Label43: TLabel;
    db_desc1: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure GradeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure db_codproExit(Sender: TObject);
    procedure db_preco1KeyPress(Sender: TObject; var Key: Char);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure db_sitEnter(Sender: TObject);
    procedure db_sitExit(Sender: TObject);
    procedure dbc_nivelEnter(Sender: TObject);
    procedure dbc_nivelExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure db_codforKeyPress(Sender: TObject; var Key: Char);
    procedure db_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure db_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure db_codforExit(Sender: TObject);
    procedure db_codgruExit(Sender: TObject);
    procedure db_codtipExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB_SOBREClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure bbDCBClick(Sender: TObject);
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
    procedure db_embpad2Exit(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fcarregapromocao(ptipo: Integer): Boolean;

    function fPro01lerant(ptipo: Integer):Boolean;
    function fGravaFil(ptipo: Integer): Boolean;
    function fCarregaPadrao(ptipo: Integer): Boolean;

  public
    { Public declarations }
  end;
function fpro01gant(ptipo: Integer): Boolean;
function fProTestaMov(pCodpro, pGrade: String): Boolean;
var
  Frm_ProSimples01: TFrm_ProSimples01;
  Form_Pro: TFrm_ProSimples01;
  prosimples_ori: String;
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

uses func_excecoes, S_VendaBloqueada_Relacao,lerarq
 ,S_DM1, S_Gra,func,
  S_Des,S_DM3,S_Fig,S_DM4,S_DCBPRO;

{$R *.dfm}

procedure TFrm_ProSimples01.INCLUIRClick(Sender: TObject);
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

mcodigo            :=DM1.Tb_ProPDCODPRO.AsString;
db_codpro.Enabled    :=True;
//dbc_nivel.Enabled:=True;
dbc_nivel.ItemIndex:=0;
db_nome.SetFocus;
end;

procedure TFrm_ProSimples01.ALTERARClick(Sender: TObject);
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
db_codpro.Enabled:=False;
mVlrInc_Ant:= DM1.Tb_ProPDVLRINC.AsFloat;
mIcmsCred_Ant:=DM1.Tb_ProPDICMSCRED.AsFloat;

DM1.Tb_Pro.Edit;
PC1.ActivePage:=tsCad;
db_nome.SetFocus;

end;

procedure TFrm_ProSimples01.GRAVARClick(Sender: TObject);
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
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   verteclado(0);
   FMensagem('Descrição do produto Invalida!',0,['0'],0);
   db_nome.SetFocus;
   exit;
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
         DM1.Query1.sql.savetoFile(mpastatemp +'sql.txt');
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
         DM1.Query1.sql.savetoFile(mpastatemp +'sql.txt');
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
dm1.Tb_Pro.Post;
CANCELAR.Click;


end;

procedure TFrm_ProSimples01.EXCLUIRClick(Sender: TObject);
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
   end;


end;

procedure TFrm_ProSimples01.CANCELARClick(Sender: TObject);
begin
  inherited;

moper:=0;
DM1.Tb_Pro.Cancel;
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   flDesfazerCodigos(0,'CADPRO',DM1.Tb_ProPDCODPRO.Value);
   DM1.Tb_Pro.Delete;
   end;
DM1.Tb_Pro.AutoCalcFields:=True;
db_codpro.Enabled:=False;
if trim(mfiltro)<>'' then
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;

INCLUIR.Enabled     :=bbpdinc_true;
ALTERAR.Enabled     :=bbpdalt_true;
EXCLUIR.Enabled     :=bbpdexc_true;


end;

procedure TFrm_ProSimples01.SAIRClick(Sender: TObject);
begin
  inherited;
  if not DM1.Tb_ProPDCODPRO.IsNull then
     mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
  ModalResult:=mrOk;
  IF prosimples_ori='' THEN
     close;

end;

procedure TFrm_ProSimples01.GradeClick(Sender: TObject);
begin
  inherited;

Application.CreateForm(TFrm_Gra, Frm_Gra);
Frm_Gra.ShowModal;
Frm_Gra.Free;
Frm_Gra:=nil;

end;

procedure TFrm_ProSimples01.FormCreate(Sender: TObject);
var
x: Integer;
begin
  inherited;

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
   Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   Panel2.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   Panel2.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   Panel2.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   PC1.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   PC1.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   PC1.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;

   end;
if DM1.Tb_PargerPOCUEST.Value=1 then
   DBGrid1.Columns[1].Width:=430;

prosimples_ori:='';
if DM1.Tb_PargerPUPALNUM.Value=1 then
   begin
   db_precoc.DataField:='pco_custo';
   db_precoc.Enabled  :=False;
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
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACABADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ACABADO.Checked:=true
   else
      CB_ACABADO.Checked:=false;
   end
else
   CB_ACABADO.Checked:=true;

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
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_SERVICO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SERVICO.Checked:=true
   else
      CB_SERVICO.Checked:=false;
   end
else
   CB_SERVICO.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPREV']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_MATPREV.Checked:=true
   else
      CB_MATPREV.Checked:=false;
   end
else
   CB_MATPREV.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_PRODPROD']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_PRODPROD.Checked:=true
   else
      CB_PRODPROD.Checked:=false;
   end
else
   CB_PRODPROD.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPRIMA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_MATPRIMA.Checked:=true
   else
      CB_MATPRIMA.Checked:=false;
   end
else
   CB_MATPRIMA.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_INSUMOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_INSUMOS.Checked:=true
   else
      CB_INSUMOS.Checked:=false;
   end
else
   CB_INSUMOS.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACES']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ACES.Checked:=true
   else
      CB_ACES.Checked:=false;
   end
else
   CB_ACES.Checked:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_OUTROS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_OUTROS.Checked:=true
   else
      CB_OUTROS.Checked:=false;
   end
else
   CB_OUTROS.Checked:=true;







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
//ldcnow Panel10.BringToFront;
//ldcnow Panel5.BringToFront;
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

Grade.Visible:=False;
pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;
if ValInt(copy(mpseg,4,2))=01 then
   begin
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      Grade.Visible:=false;
      PC1.Pages[2].TabVisible:=False;
      end
   else
      begin
      Grade.Visible:=True;
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
   Grade.Visible:=True;
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

procedure TFrm_ProSimples01.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

if prosimples_ori='consulta' then
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

end;

procedure TFrm_ProSimples01.db_codproExit(Sender: TObject);
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

procedure TFrm_ProSimples01.db_preco1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_ProSimples01.BBnAtuClick(Sender: TObject);
begin
  inherited;
if prosimples_ori='consulta' then
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
      flcadpro(campo.ItemIndex,1,0,fdeixanum2(edit1.Text))
   else
      flcadpro(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text);
   end;
end;

procedure TFrm_ProSimples01.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if prosimples_ori='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   if not DM1.Tb_ProPDCODPRO.IsNull then
      mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;

   ModalResult:=MrOk;
   prosimples_ori:='';
   end;



end;

procedure TFrm_ProSimples01.db_sitEnter(Sender: TObject);
begin
  inherited;
//ldcnow Panel5.Visible:=True;

end;

procedure TFrm_ProSimples01.db_sitExit(Sender: TObject);
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
//ldcnow   Panel5.Visible:=False;

end;

procedure TFrm_ProSimples01.dbc_nivelEnter(Sender: TObject);
begin
  inherited;
//ldcnow Panel10.Visible:=True;

end;

procedure TFrm_ProSimples01.dbc_nivelExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDNIVEL.Value>7 then
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
//ldcnow   Panel10.Visible:=False;

end;

procedure TFrm_ProSimples01.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if prosimples_ori='' then
      begin
      PC1.ActivePage:= tsCad;
      ALTERAR.SetFocus;
      end
   else
      begin
      if not DM1.Tb_ProPDCODPRO.IsNull then
         mPosReg_ant   :=DM1.Tb_PRO.GetBookmark;
      ModalResult:=MrOk;
      prosimples_ori:='';
      end;
   abort;
   end;

end;

procedure TFrm_ProSimples01.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHAGEPRO.Value=1 then
   begin
   if prosimples_ori='consulta' then
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
      flcadpro(campo.ItemIndex,1,0,fdeixanum2(edit1.Text))
   else
      flcadpro(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text);

   end;
end;

procedure TFrm_ProSimples01.db_codforKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro',Key));
   db_codforExit(self);
   key:=#0;
   end;


end;

procedure TFrm_ProSimples01.db_codgruKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_ProSimples01.db_codtipKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_ProSimples01.db_codforExit(Sender: TObject);
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

procedure TFrm_ProSimples01.db_codgruExit(Sender: TObject);
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

procedure TFrm_ProSimples01.db_codtipExit(Sender: TObject);
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

procedure TFrm_ProSimples01.FormKeyDown(Sender: TObject; var Key: Word;
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
   if prosimples_ori<>'' then
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
end;


function tFrm_ProSimples01.fPro01lerant(ptipo: Integer):Boolean;
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





procedure TFrm_ProSimples01.BB_SOBREClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_ProPDCODBAR.Value<=0 then
   begin
   verteclado(0);
   fMensagem('É necessário que o código de barras do produto seja preechido!',0,['0'],0);
   exit;
   end;
DM4.Tb_FPro.Close;
DM4.Tb_Fpro.SQL.Clear;
DM4.Tb_FPro.SQL.Add('Select * from CADFPRO where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CF_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' CF_CODPRO=0'+DM1.Tb_ProPDCODBAR.AsString);
DM4.Tb_Fpro.Open;

DM4.Tb_Bul.Close;
DM4.Tb_Bul.SQL.Clear;
DM4.Tb_Bul.SQL.add('Select * from CADBUL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CB_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CB_CODPRO=0'+DM1.Tb_ProPDCODBAR.AsString);
DM4.Tb_Bul.Open;
Application.CreateForm(TFrm_Fig, Frm_Fig);
Frm_Fig.ShowModal;
Frm_Fig.Free;
Frm_Fig:=nil;

end;

procedure TFrm_ProSimples01.PC1Change(Sender: TObject);
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



function TFrm_ProSimples01.fcarregaPromocao(ptipo: Integer): Boolean;
begin
Tb_PPR.Close;
Tb_PPR.SQL.Clear;
Tb_PPR.SQL.add(' Select PPCODEMP, '
              +'  PPPROMOCAO, '
              +'  PPPVTIP, '
              +'  PPPVTAB, '
              +'  PPCODRED, '
              +'  PPUF, '
              +'  PPCODCLI, '
              +'  PPID, '
              +'  pPID_ANO, '
              +'   PPFLAG, '
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
              +' from CADPPR where '
   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PPCODPRO=0'+IntTostr(codemp)+' and ')
   +' PPCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
Tb_PPR.Open;
if Tb_PPR.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_ProSimples01.Src_ProDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if (PC1.ActivePageIndex=3) and (gb_promocao.Visible) then
   fcarregapromocao(0);

end;

procedure TFrm_ProSimples01.bbDCBClick(Sender: TObject);
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

procedure TFrm_ProSimples01.Edit1Exit(Sender: TObject);
begin
  inherited;
//BBnAtu.Click;
end;

procedure TFrm_ProSimples01.DBGrid1DrawColumnCell(Sender: TObject;
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
end;

function TFrm_ProSimples01.fGravaFil(ptipo: Integer): Boolean;
var
x: Integer;
begin
fDeletaPadroes(codusr,'_PRO','');
fGravaPadroes(codusr,'RG_ESTOQUE'     ,'itemindex'       ,'_PRO',IntTostr(RG_ESTOQUE.ItemIndex));
fGravaPadroes(codusr,'RG_STATUS'      ,'itemindex'       ,'_PRO',IntTostr(RG_STATUS.ItemIndex));
fGravaPadroes(codusr,'CB_ACABADO'     ,'checked'         ,'_PRO',iif(CB_ACABADO.Checked,'true','false'));
fGravaPadroes(codusr,'CB_SERVICO'     ,'checked'         ,'_PRO',iif(CB_SERVICO.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATPREV'     ,'checked'         ,'_PRO',iif(CB_MATPREV.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PRODPROD'    ,'checked'         ,'_PRO',iif(CB_PRODPROD.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATPRIMA'    ,'checked'         ,'_PRO',iif(CB_MATPRIMA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_INSUMOS'     ,'checked'         ,'_PRO',iif(CB_INSUMOS.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ACES'        ,'checked'         ,'_PRO',iif(CB_ACES.Checked,'true','false'));
fGravaPadroes(codusr,'CB_OUTROS'      ,'checked'         ,'_PRO',iif(CB_OUTROS.Checked,'true','false'));
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

function TFrm_ProSimples01.fCarregaPadrao(ptipo: Integer): Boolean;
var
x: Integer;
mfiltro: String;
begin

if prosimples_ori='consulta' then
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
   if (CB_ACABADO.Checked) and (CB_SERVICO.Checked) and
      (CB_MATPREV.Checked) and (CB_PRODPROD.Checked) and
      (CB_MATPRIMA.Checked) and (CB_INSUMOS.Checked) and
      (CB_ACES.Checked)     and (CB_OUTROS.Checked) then
      mcinst2:=''
   else
      begin
      mcinst2:='';
      mcinst3:='';
      if CB_ACABADO.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=0';
         mcinst3:=' or ';
         end;
      if CB_SERVICO.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=1';
         mcinst3:=' or ';
         end;
      if CB_MATPREV.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=2';
         mcinst3:=' or ';
         end;
      if CB_PRODPROD.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=3';
         mcinst3:=' or ';
         end;
      if CB_MATPRIMA.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=4';
         mcinst3:=' or ';
         end;
      if CB_INSUMOS.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=5';
         mcinst3:=' or ';
         end;
      if CB_ACES.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=6';
         mcinst3:=' or ';
         end;
      if CB_OUTROS.Checked then
         begin
         mcinst2:=mcinst2+mcinst3+'PDNIVEL=7';
         mcinst3:=' or ';
         end;
      if trim(mcinst2)<>'' then
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

procedure TFrm_ProSimples01.db_nome2Exit(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_ProPDNOME2.Value)='' then
   DM1.Tb_ProPDNOME2.Value:=' ';
end;

procedure TFrm_ProSimples01.dbg_promocaoDrawColumnCell(Sender: TObject;
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

procedure TFrm_ProSimples01.Tb_PPRCalcFields(DataSet: TDataSet);
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

procedure TFrm_ProSimples01.tsTabShow(Sender: TObject);
begin
  inherited;
if (gb_promocao.Visible) then
   fcarregapromocao(0);

end;

procedure TFrm_ProSimples01.bbBloqueiosClick(Sender: TObject);
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

procedure TFrm_ProSimples01.bbSalvarPadraoClick(Sender: TObject);
begin
  inherited;
fgravafil(0);
fCarregaPadrao(0);
end;

procedure TFrm_ProSimples01.RG_ESTOQUEClick(Sender: TObject);
begin
  inherited;
   mAtuafiltro:=true;

end;

procedure TFrm_ProSimples01.CODGRUKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_ProSimples01.CODGRUExit(Sender: TObject);
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

procedure TFrm_ProSimples01.tab_GruposChange(Sender: TObject);

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

procedure TFrm_ProSimples01.CLBStatusClick(Sender: TObject);
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

procedure TFrm_ProSimples01.CLBNivelClick(Sender: TObject);
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

procedure TFrm_ProSimples01.CLBEstoqueClick(Sender: TObject);
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
function fProTestaMov(pCodpro, pGrade: String): Boolean;
var
mEmpresa01, mEmpresa101: String;
begin
mEmpresa01:=IntTostr(codemp);
if codemp>99 then
   mEmpresa101:=IntToStr(Codemp-100)
else
   mEmpresa101:=IntToStr(Codemp+100);
DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02 where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2CODEMP=0'+mEmpresa01+' or P2CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and P2LOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02D where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2DCODEMP=0'+mEmpresa01+' or P2DCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2DCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and P2DGRADE='+chr(39)+pGrade+chr(39));
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');

   end;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02S where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2SCODEMP=0'+mEmpresa01+' or P2SCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2SCODPRO=0'+pCodpro);
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;



DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADPF2 where ');
if not DM1.Qr_TID.locate('TINOME','CADPFOR',[]) then
   DM1.Query1.sql.Add(' (PF2CODEMP=0'+mEmpresa01+' or PF2CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' PF2CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and PF2LOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADAJU where ');
if not DM1.Qr_TID.locate('TINOME','CADPFOR',[]) then
   DM1.Query1.sql.Add(' (AJCODEMP=0'+mEmpresa01+' or AJCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' AJCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and AJLOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADOP02 where ');
if not DM1.Qr_TID.locate('TINOME','CADOP02',[]) then
   DM1.Query1.sql.Add(' (OP2_CODEMP=0'+mEmpresa01+' or OP2_CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add('( OP2_CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP2_NUMERO='+chr(39)+pGrade+chr(39)+')')
else
   DM1.Query1.SQL.Add(')');


DM1.Query1.SQL.Add(' or ( OP2_FAB_CODIGO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP2_FAB_LOTE='+chr(39)+pGrade+chr(39)+')')
else
   DM1.Query1.SQL.Add(')');


DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADOP03 where ');
if not DM1.Qr_TID.locate('TINOME','CADOP03',[]) then
   DM1.Query1.sql.Add(' (OP3_CODEMP=0'+mEmpresa01+' or OP3_CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' OP3_CODMAT=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP3_NUMERO='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADTRO_ENT where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (TECODEMP=0'+mEmpresa01+' or TECODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' TECODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and TELOTE='+chr(39)+pGrade+chr(39));

DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADTRO_SAI where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (TSCODEMP=0'+mEmpresa01+' or TSCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' TSCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and TSLOTE='+chr(39)+pGrade+chr(39));

DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;
{
CADSGPRO
CADSGPRO_ANO
CADPROC02
CADPROC
CADPPR
CADPGEN
CADPEN
CADOS02
CADOS03
CADOS04
CADOS05
CADOS05D
CADLC2
CADGPRO
CADEGD
CADEDIA
CADCSER02
CADCOMP
CADLGC
CADCUS  -CUCODIGO
CADCUS2 -CUCODIGO
}
result:=true;
end;


procedure TFrm_ProSimples01.db_preco1Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO1.Value;
end;

procedure TFrm_ProSimples01.db_preco1Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO1.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA1.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP1.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_ProSimples01.db_preco2Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO2.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA2.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP2.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_ProSimples01.db_preco3Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDPRECO3.Value<>mPrecoAnt then
   begin
   DM1.Tb_ProPDPRECOA3.Value:=mPrecoAnt;
   DM1.Tb_ProPDDTUATP3.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_ProSimples01.db_preco2Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO2.Value;

end;

procedure TFrm_ProSimples01.db_preco3Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=DM1.Tb_ProPDPRECO3.Value;

end;

procedure TFrm_ProSimples01.db_embpad2Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDEMBPAD.AsFloat=0 then
   DM1.Tb_ProPDEMBPAD.Value:=ValInt(DM1.Tb_ProPDEMBPAD2.Value);
end;

procedure TFrm_ProSimples01.db_nomeExit(Sender: TObject);
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

procedure TFrm_ProSimples01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProSimples01.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');  
  inherited;
//if (mredirecionaFormPro) and (trim(Edit1.Text)<>'') then

if (not Edit1.Focused) and (prosimples_ori<>'consulta') then
   begin
   Edit1.SetFocus;
   end;
fCarregaPadrao(0);
if  mPosReg_ant<>nil then
    begin
      try
      DM1.Tb_Pro.GotoBookmark(mPosReg_ant);
      mPosReg_ant:=nil;
      except
      end;
    end;

end;

end.
