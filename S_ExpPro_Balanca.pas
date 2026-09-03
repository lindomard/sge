unit S_ExpPro_Balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, CheckLst, Mask, Buttons, DB, DBTables,
  DBCtrls,s_lerarq_geral;

type
  TFrm_ExpPro_Balanca = class(TForm)
    pcFiltros: TPageControl;
    TsFiltrosPrim: TTabSheet;
    tsFiltrosSeg: TTabSheet;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label1: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CLBNivel: TCheckListBox;
    StaticText1: TStaticText;
    CLBStatus: TCheckListBox;
    StaticText2: TStaticText;
    CLBEstoque: TCheckListBox;
    StaticText3: TStaticText;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    CB_MODBAL: TComboBox;
    Label6: TLabel;
    Label10: TLabel;
    CB_TIPOATU: TComboBox;
    Label11: TLabel;
    NOMEPASTA: TEdit;
    bbGerar: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    Label12: TLabel;
    NOMEARQ: TEdit;
    SB01: TSpeedButton;
    Qr_Pro: TQuery;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODEMP: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDDATCAD: TDateTimeField;
    Label13: TLabel;
    CODPRO_DPTO: TEdit;
    lbx_codpro_dpto: TListBox;
    OMITIR_PRODEP: TCheckBox;
    Qr_ProPDCODDEP: TFloatField;
    Qr_ProPDPRZVAL_DIAS: TFloatField;
    Label14: TLabel;
    CB_VERSAO: TComboBox;
    CB_IGNORA_INCONS: TCheckBox;
    Qr_ProPDFRACAO: TFloatField;
    Qr_ProPDCODEXT: TFloatField;
    lbx_codpro_ext: TListBox;
    CODPRO_EXT: TEdit;
    Label15: TLabel;
    OMITIR_PROEXT: TCheckBox;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBNivelClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODPRO_DPTOExit(Sender: TObject);
    procedure CODPRO_DPTOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codpro_dptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CODPRO_EXTExit(Sender: TObject);
    procedure lbx_codpro_extKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPRO_EXTKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TIPOATUChange(Sender: TObject);
    procedure CB_MODBALClick(Sender: TObject);
  private
    { Private declarations }
    Function fGerarAlteracaoToledo(pTipo: Integer): Boolean;
    Function fGerarToledoTxtCadastroVersao1(pTipo: Integer): Boolean;
    Function fGerarToledoTxtInfExtraVersao1(pTipo: Integer): Boolean;
    Function fGerarFilizolaTxtCadastroVersao1(pTipo: Integer): Boolean;
    Function fGerarToledoTxtCadastroVersao2(pTipo: Integer): Boolean;
    Function fGerarToledoTxtItens(pTipo: Integer): Boolean;
    Function fValidarProdutos(pTipo: Integer): Boolean;

    Function fGerarDepartamentos(pTipo: Integer): Boolean;

    function fFiltrosProd(pCadpro: Boolean): string;

  public
    { Public declarations }
  end;

var
  Frm_ExpPro_Balanca: TFrm_ExpPro_Balanca;
  mLinha_Texto: String;
  mNumDecPu: Integer=2;
  mFatorMultPU: Integer=100;

implementation

uses S_DefBac, S_DM1, Func, lerarq, S_DM4, S_Agde, S_DM6,
  S_Sintegra_Advert;

{$R *.dfm}

procedure TFrm_ExpPro_Balanca.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      if lbx_codfor.Focused then
         CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      if lbx_codfor.Focused then
         codfor.setfocus;
      end;
   end;


end;

procedure TFrm_ExpPro_Balanca.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      CODFORExit(self);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      CODGRUExit(self);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      if lbx_codgru.Focused then
         CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      if lbx_codgru.Focused then
         CODGRU.SetFocus;
      end;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   exit;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   if lbx_codram.Focused then
      CODRAM.SetFocus;

   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   if lbx_codram.Focused then
      CODRAM.SetFocus;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODRAMKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      CODRAMExit(self);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      if lbx_codpro.Focused then
         CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      if lbx_codpro.Focused then
         CODpro.SetFocus;
      end;

   end;

end;

procedure TFrm_ExpPro_Balanca.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_ExpPro_Balanca.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if ValFloat(CODTIP.Text)<=0 then
   exit;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   if lbx_codtip.Focused then
      CODTIP.SetFocus;

   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   if lbx_codtip.Focused then
      CODTIP.SetFocus;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      CODTIPExit(self);
   CODTIP.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODCONKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      CODCONExit(self);
   CODCON.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro_Balanca.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   exit;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   if lbx_codcon.Focused then
      CODCON.SetFocus;

   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   if lbx_codcon.Focused then
      CODCON.SetFocus;
   end;

end;

procedure TFrm_ExpPro_Balanca.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.lbx_codconKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_ExpPro_Balanca.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_ExpPro_Balanca.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_ExpPro_Balanca.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ExpPro_Balanca.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ExpPro_Balanca.SB01Click(Sender: TObject);
begin
testeform := TFrm_ExpPro_Balanca(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_Defbac.Caption:='Definir Caminho para geração do Arquivo de Exportação';
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   NOMEPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);
end;

procedure TFrm_ExpPro_Balanca.sb_SalvarPadraoClick(Sender: TObject);
var
x,y: Integer;
begin
fDeletaPadroes(0,'_EXPPRO_BALANCA','');
mcinst2:='';
for x:=0 to CLBStatus.Items.Count-1 do
   begin
   if CLBStatus.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBSTATUS'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBESTOQUE'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);


mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBSTATUS'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);

fGravaPadroes(0,'CB_MODBAL'      ,'itemindex'  ,'_EXPPRO_BALANCA',IntToStr(CB_MODBAL.ItemIndex));
fGravaPadroes(0,'CB_TIPOATU'     ,'itemindex'  ,'_EXPPRO_BALANCA',IntToStr(CB_TIPOATU.ItemIndex));
fGravaPadroes(0,'NOMEPASTA'      ,'text'       ,'_EXPPRO_BALANCA',NOMEPASTA.Text);
//fGravaPadroes(0,'NOMEARQ'        ,'text'       ,'_EXPPRO_BALANCA',NOMEARQ.Text);


// CODIGO DO FORNECEDOR
mcinst2:='';
for x:=0 to lbx_codfor.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codfor.Items[x])-1 do
      begin
      if copy(lbx_codfor.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codfor.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODFOR'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_FOR'          ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_FOR.Checked,'true','false'));

fGravaPadroes(0,'CB_IGNORA_INCONS'    ,'checked'   ,'_EXPPRO_BALANCA',iif(CB_IGNORA_INCONS.Checked,'true','false'));

// GRUPO DE PRODUTOS
mcinst2:='';
for x:=0 to lbx_codgru.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codgru.Items[x])-1 do
      begin
      if copy(lbx_codgru.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codgru.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODGRU'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_GRU'          ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_GRU.Checked,'true','false'));


// RAMO DE PRODUTOS
mcinst2:='';
for x:=0 to lbx_codram.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codram.Items[x])-1 do
      begin
      if copy(lbx_codram.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codram.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODRAM'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_RAM'          ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_RAM.Checked,'true','false'));

// CADASTRO DE PRODUTOS
mcinst2:='';
for x:=0 to lbx_codpro.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codpro.Items[x])-1 do
      begin
      if copy(lbx_codpro.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codpro.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODPRO'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_PRO'          ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_PRO.Checked,'true','false'));

// TIPO DE PRODUTOS
mcinst2:='';
for x:=0 to lbx_codtip.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codtip.Items[x])-1 do
      begin
      if copy(lbx_codtip.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codtip.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODTIP'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_TPRO'         ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_TPRO.Checked,'true','false'));

// TIPO DE CONTROLE DE PRODUTO
mcinst2:='';
for x:=0 to lbx_codcon.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codcon.Items[x])-1 do
      begin
      if copy(lbx_codcon.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codcon.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODCON'          ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_CON'          ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_CON.Checked,'true','false'));


// DEPARTAMENTO DE PRODUTOS
mcinst2:='';
for x:=0 to lbx_codpro_dpto.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codpro_dpto.Items[x])-1 do
      begin
      if copy(lbx_codpro_dpto.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codpro_dpto.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODPRO_DPTO'     ,'itemindex' ,'_EXPPRO_BALANCA',mcinst2);
fGravaPadroes(0,'OMITIR_PRODEP'       ,'checked'   ,'_EXPPRO_BALANCA',iif(OMITIR_PRODEP.Checked,'true','false'));



end;

procedure TFrm_ExpPro_Balanca.FormCreate(Sender: TObject);
var
x,y: Integer;
begin
if flfilpad(0,'_EXPPRO_BALANCA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBSTATUS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBStatus.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
        CLBStatus.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBESTOQUE',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBEstoque.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBEstoque.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBNIVEL',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBNivel.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBNivel.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODBAL',[]) then
      CB_MODBAL.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPOATU',[]) then
      CB_TIPOATU.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','NOMEPASTA',[]) then
      NOMEPASTA.Text:=DM4.Tb_FilPad2FPVALOR.Value;
//   if DM4.Tb_FilPad2.Locate('FPCOMP','NOMEARQ',[]) then
//      NOMEARQ.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODFOR',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODFOR.Text:=fdeixanum(mcinst);
            if fSonumero(CODFOR.Text)>0 then
               CODFORExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODFOR.Text:=fdeixanum(mcinst);
         if fSonumero(CODFOR.Text)>0 then
            CODFORExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_FOR',[]) then
      OMITIR_FOR.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IGNORA_INCONS',[]) then
      CB_IGNORA_INCONS.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODGRU',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODGRU.Text:=fdeixanum(mcinst);
            if fSonumero(CODGRU.Text)>0 then
               CODGRUExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODGRU.Text:=fdeixanum(mcinst);
         CODGRUExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_GRU',[]) then
      OMITIR_GRU.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';




   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODRAM',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODRAM.Text:=fdeixanum(mcinst);
            if fSonumero(CODRAM.Text)>0 then
               CODRAMExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODRAM.Text:=fdeixanum(mcinst);
         if fSonumero(CODRAM.Text)>0 then
            CODRAMExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_RAM',[]) then
      OMITIR_RAM.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODPRO',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODPRO.Text:=fdeixanum(mcinst);
            if fSonumero(CODPRO.Text)>0 then
               CODPROExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODPRO.Text:=fdeixanum(mcinst);
         if fSonumero(CODPRO.Text)>0 then
            CODPROExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_PRO',[]) then
      OMITIR_PRO.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';



   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODTIP',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODTIP.Text:=fdeixanum(mcinst);
            if fSonumero(CODTIP.Text)>0 then
               CODTIPExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODTIP.Text:=fdeixanum(mcinst);
         if fSonumero(CODTIP.Text)>0 then
            CODTIPExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_TPRO',[]) then
      OMITIR_TPRO.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODCON',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODCON.Text:=fdeixanum(mcinst);
            CODCONExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODCON.Text:=fdeixanum(mcinst);
         CODCONExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_CON',[]) then
      OMITIR_CON.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODPRO_DPTO',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CODPRO_DPTO.Text:=fdeixanum(mcinst);
            if fSonumero(CODPRO_DPTO.Text)>0 then
               CODPRO_DPTOExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODPRO_DPTO.Text:=fdeixanum(mcinst);
         if fSonumero(CODPRO_DPTO.Text)>0 then
            CODPRO_DPTOExit(self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_PRODEP',[]) then
      OMITIR_PRODEP.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

   end;






end;

procedure TFrm_ExpPro_Balanca.bbGerarClick(Sender: TObject);
begin
if CB_TIPOATU.ItemIndex=1 then
   begin
   fGerarDepartamentos(0);
//   NOMEPASTA.Text:='';
   NOMEARQ.Text  :='';
   exit;
   end;
if trim(NOMEPASTA.Text)='' then
   NOMEPASTA.Text:='C:\SGE';
if trim(NOMEARQ.Text)='' then
  CB_TIPOATUChange(self);
//   NOMEARQ.Text:='ITENSMGV.TXT';
//   NOMEARQ.Text:='TXITENS.TXT';
if trim(NOMEARQ.Text)='' then
  begin
  fmensagem('Favor Digitar um Arquivo válido!',0,['0'],0);
  NOMEARQ.SetFocus;
  exit;
  end;

if not DirExists(NOMEPASTA.Text) then
   begin
   fmensagem('Favor Digitar uma Pasta válida!',0,['0'],0);
   NOMEPASTA.SetFocus;
   exit;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;



Qr_Pro.Close;
Qr_Pro.SQL.clear;
Qr_Pro.SQL.Add('Select PDCODPRO,PDCODEMP,PDNOME,PDMARCA,PDPRECO1,PDUND,PDDATCAD,PDCODDEP,PDPRZVAL_DIAS '
              +' , PDFRACAO,PDCODEXT '
              +' from CADPRO where PDSTATUS<>-99  AND PDCODDEP>0 ' );
Qr_Pro.SQL.Add(fFiltrosProd(true));
try
  Qr_Pro.Open;
except
  Qr_Pro.SQL.SaveToFile(mpastatemp +'sql.TXT');
  exit;
  end;
Qr_Pro.First;

if CB_MODBAL.ItemIndex=1 then
  begin
  if CB_TIPOATU.ItemIndex=6 then
    begin
    if CB_VERSAO.ItemIndex=0 then
      fGerarToledoTxtCadastroVersao1(1)
    else
      fGerarToledoTxtCadastroVersao2(1);
    end
  else if CB_TIPOATU.ItemIndex=4 then
    begin
    fGerarToledoTxtInfExtraVersao1(1);
    end
  else
    begin
    fmensagem('Esta opção Ainda não Esta Ativa!',0,['0'],0);
     NOMEARQ.Text  :='';
     exit;
     end;
  end
else
   begin
   fGerarFilizolaTxtCadastroVersao1(0);
//   NOMEARQ.Text  :='';
   exit;
   end;
NOMEARQ.Text  :='';
end;

Function TFrm_ExpPro_Balanca.fGerarToledoTxtCadastroVersao1(pTipo: Integer): Boolean;
var
mItens: TStrings;

begin
mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=Qr_Pro.RecordCount;
Frm_Agde.Show;

mItens:=TStringlist.create;

While not Qr_Pro.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(Qr_ProPDCODDEP.AsString,'0',02); // codigo do departamento
   if Qr_ProPDFRACAO.AsInteger=1 then
      mLinha_Texto:=mLinha_Texto+'0'
   else
      mLinha_Texto:=mLinha_Texto+'1'; // Tipo=0-Peso 1-Unidade 2-EAN-13
//   mLinha_Texto:=mLinha_Texto+'0';  // Tipo=0-Peso 1-Unidade 2-EAN-13
   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDCODPRO.AsString,'0',06); // codigo do produto
   mLinha_Texto:=mLinha_Texto+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',06); // preco unitario

   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDPRZVAL_DIAS.AsString,'0',03); // prazo do produtos em dias
   mcinst3:=fQuebraString(25,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,25),' ',25); // nome do produto primeira linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,26,25),' ',25); // nome do produto segunda linha

   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDCODEXT.AsString,'0',06); // codigo da informação extra do item

   mLinha_Texto:=mLinha_Texto+insere('0','0',03); // codigo da imagem do item

   mLinha_Texto:=mLinha_Texto+insere('0','0',04); // codigo da informacao nutricional
   if Qr_ProPDPRZVAL_DIAS.AsFloat>0 then  // prazo do produtos em dias
      begin
      mLinha_Texto:=mLinha_Texto+'1';  // emitir a data de validade do produto
      mLinha_Texto:=mLinha_Texto+'1';  //  emitir a data da Embalagem
      end
   else
      begin
      mLinha_Texto:=mLinha_Texto+'0';  // NAO emitir a data de validade do produto
      mLinha_Texto:=mLinha_Texto+'0';  // NAO emitir a data da Embalagem
      end;




   mLinha_Texto:=mLinha_Texto+insere('0','0',04); // codigo do fornecedor

   mLinha_Texto:=mLinha_Texto+insere2(' ',' ',12); // Lote de Fabricacao

   mLinha_Texto:=mLinha_Texto+insere2(' ',' ',11); // Codigo EAN - 13 Especial
   mLinha_Texto:=mLinha_Texto+'1';  // Versao 1
   mItens.add(mLinha_Texto);
   Qr_Pro.Next;
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);

freeandnil(mItens);
Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;

Function TFrm_ExpPro_Balanca.fGerarToledoTxtInfExtraVersao1(pTipo: Integer): Boolean;

var
mItens: TStrings;

begin

mItens:=TStringlist.create;

Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Select * from cadpro_ext ');
DM1.Query1.Open;
while not DM1.Query1.Eof do
   begin
   verteclado(0);
   mLinha_Texto:=insere(DM1.Query1.FieldByName('PROEXT_CODEXT').AsString,'0',6);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_NOME').AsString,' ',100);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_LINHA01').AsString,' ',56);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_LINHA02').AsString,' ',56);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_LINHA03').AsString,' ',56);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_LINHA04').AsString,' ',56);
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query1.FieldByName('PROEXT_LINHA05').AsString,' ',56);
   DM1.Query1.Next;
   mitens.add(mLinha_Texto);
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);
freeandnil(mItens);

Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;


Function TFrm_ExpPro_Balanca.fGerarFilizolaTxtCadastroVersao1(pTipo: Integer): Boolean;
var
mItens: TStrings;

begin

mItens:=TStringlist.create;
mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=Qr_Pro.RecordCount;
Frm_Agde.Show;
While not Qr_Pro.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(Qr_ProPDCODPRO.AsString,'0',06); // codigo do produto
   if CB_VERSAO.ItemIndex=1 then
      begin
      if Qr_ProPDFRACAO.AsInteger=1 then
         mLinha_Texto:=mLinha_Texto+'a'
      else
         mLinha_Texto:=mLinha_Texto+'1'; // Tipo=0-Peso 1-Unidade 2-EAN-13

      mcinst3:=fQuebraString(22,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
      mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,22),' ',22); // nome do produto primeira linha
      mLinha_Texto:=mLinha_Texto+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',07); // preco unitario
      mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDPRZVAL_DIAS.AsString,'0',03); // prazo do produtos em dias
      mLinha_Texto:=mLinha_Texto+insere(' ',' ',138); // prazo do produtos em dias
      end
   else
      begin
      if Qr_ProPDFRACAO.AsInteger=1 then
         mLinha_Texto:=mLinha_Texto+'P'  //peso
      else
         mLinha_Texto:=mLinha_Texto+'U'; // Tipo=P-Peso U-Unidade

      mcinst3:=fQuebraString(22,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
      mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,22),' ',22); // nome do produto primeira linha
      mLinha_Texto:=mLinha_Texto+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',07); // preco unitario
      mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDPRZVAL_DIAS.AsString,'0',03); // prazo do produtos em dias
//      mLinha_Texto:=mLinha_Texto+insere(' ',' ',138); // prazo do produtos em dias

      end;
   mitens.add(mLinha_Texto);
   Qr_Pro.Next;
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);
freeandnil(mItens);

Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;

Function TFrm_ExpPro_Balanca.fGerarToledoTxtCadastroVersao2(pTipo: Integer): Boolean;
var
mItens: TStrings;

begin

mItens:=TStringlist.create;

mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=Qr_Pro.RecordCount;
Frm_Agde.Show;

While not Qr_Pro.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(Qr_ProPDCODDEP.AsString,'0',02); // codigo do departamento

   if Qr_ProPDFRACAO.AsInteger=1 then
      mLinha_Texto:=mLinha_Texto+'0'
   else
      mLinha_Texto:=mLinha_Texto+'1'; // Tipo=0-Peso 1-Unidade 2-EAN-13

   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDCODPRO.AsString,'0',06); // codigo do produto
   mLinha_Texto:=mLinha_Texto+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',06); // preco unitario
   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDPRZVAL_DIAS.AsString,'0',03); // prazo do produtos em dias
   mcinst3:=fQuebraString(25,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,25),' ',25); // nome do produto primeira linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,26,25),' ',25); // nome do produto segunda linha

   mLinha_Texto:=mLinha_Texto+insere('0','0',06); // codigo da informação extra do item

   mLinha_Texto:=mLinha_Texto+insere('0','0',04); // codigo da imagem do item

   mLinha_Texto:=mLinha_Texto+insere('0','0',06); // codigo da informacao nutricional



   if Qr_ProPDPRZVAL_DIAS.AsFloat>0 then  // prazo do produtos em dias
      begin
      mLinha_Texto:=mLinha_Texto+'1';  // emitir a data de validade do produto
      mLinha_Texto:=mLinha_Texto+'1';  // emitir a data da Embalagem
      end
   else
      begin
      mLinha_Texto:=mLinha_Texto+'0';  // NAO emitir a data de validade do produto
      mLinha_Texto:=mLinha_Texto+'0';  // NAO emitir a data da Embalagem
      end;




   mLinha_Texto:=mLinha_Texto+insere('0','0',04); // codigo do fornecedor

   mLinha_Texto:=mLinha_Texto+insere2(' ',' ',12); // Lote de Fabricacao

   mLinha_Texto:=mLinha_Texto+insere2(' ',' ',11); // Codigo EAN - 13 Especial

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo do som

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo da tara

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo do fracionador

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo do camnpo extra 1

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo do campo extra 2

   mLinha_Texto:=mLinha_Texto+insere2('0','0',04); // Codigo da conservação

   mLinha_Texto:=mLinha_Texto+insere2(' ',' ',12); // Codigo EAN de fornecedor
   mitens.add(mLinha_Texto);
   Qr_Pro.Next;
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);

freeandnil(mItens);

Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;



Function TFrm_ExpPro_Balanca.fGerarToledoTxtItens(pTipo: Integer): Boolean;
var
mItens: TStrings;

begin

mItens:=TStringlist.create;

mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=Qr_Pro.RecordCount;
Frm_Agde.Show;
While not Qr_Pro.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(Qr_ProPDCODDEP.AsString,'0',02); // codigo do departamento
   if Qr_ProPDFRACAO.AsInteger=1 then
      mLinha_Texto:=mLinha_Texto+'0'
   else
      mLinha_Texto:=mLinha_Texto+'1'; // Tipo=0-Peso 1-Unidade 2-EAN-13

//   mLinha_Texto:=mLinha_Texto+'0';  // Tipo=0-Peso 1-Unidade 2-EAN-13
   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDCODPRO.AsString,'0',06); // codigo do produto
   mLinha_Texto:=mLinha_Texto+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',06); // preco unitario
   mLinha_Texto:=mLinha_Texto+insere(Qr_ProPDPRZVAL_DIAS.AsString,'0',03); // prazo do produtos em dias
   mcinst3:=fQuebraString(25,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,25),' ',25); // nome do produto primeira linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,26,25),' ',25); // nome do produto segunda linha


   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select * from CADPRO_INFNUT where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' PIN_CODPRO=0'+Qr_ProPDCODPRO.AsString);
   DM1.Query2.Open;
   mcinst2:='';
   While not DM1.Query2.Eof do
      begin
      mcinst3:=mcinst3+mcinst2+DM1.Query2.fieldbyName('PIN_DESCRICAO').AsString+mcinst2;
      mcinst2:=',';
      DM1.Query2.Next;
      end;

   mcinst3:=fQuebraString(50,Qr_ProPDNOME.AsString); // nome produto dividido em 25 letras
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,1,50),' ',50); // nome do produto primeira linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,51,50),' ',50); // nome do produto segunda linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,101,50),' ',50); // nome do produto primeira linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,151,50),' ',50); // nome do produto segunda linha
   mLinha_Texto:=mLinha_Texto+insere2(copy(mcinst3,201,50),' ',50); // nome do produto primeira linha
   mitens.add(mLinha_Texto);
   Qr_Pro.Next;
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);

freeandnil(mItens);
Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;

Function TFrm_ExpPro_Balanca.fGerarAlteracaoToledo(pTipo: Integer): Boolean;
var
mItens: TStrings;

begin

mItens:=TStringlist.create;

mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=Qr_Pro.RecordCount;
Frm_Agde.Show;
While not Qr_Pro.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(Qr_ProPDCODPRO.AsString,'0',06)+insere(FormatFloat('00',Arredonda((Qr_ProPDPRECO1.AsFloat*mFatorMultPU),mNumDecPu)),'0',06);

   mitens.add(mLinha_Texto);
   Qr_Pro.Next;
   end;
mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);

freeandnil(mItens);
Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
end;

procedure TFrm_ExpPro_Balanca.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpPro_Balanca.CODPRO_DPTOExit(Sender: TObject);
begin
CODPRO_DPTO.Text:=fdeixanum2(CODPRO_DPTO.Text);
if Trim(CODPRO_DPTO.Text)<>'' then
   begin
   if not flcadpro_dpto(1,0,CODPRO_DPTO.Text) then
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      if lbx_codpro_dpto.Focused then
         CODPRO_DPTO.SetFocus;
      end
   else
      begin
      lbx_codpro_dpto.Items.Add(FormatFloat('0000000', DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)
                                    +' - '+DM6.Tb_Prod_DepPRODEP_NOME.AsString);
      CODPRO_DPTO.text := '';
      if lbx_codpro_dpto.Focused then
         CODPRO_DPTO.SetFocus;
      end;

   end;


end;

procedure TFrm_ExpPro_Balanca.CODPRO_DPTOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO_DPTO.Text:= fChamaDepto(0,'Frm_Dep_Prod',key);
   key:=#0;
   CODPRO_DPTOExit(Self);
   end;

end;

procedure TFrm_ExpPro_Balanca.lbx_codpro_dptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro_dpto.ItemIndex>=0 then
      lbx_codpro_dpto.Items.Delete(lbx_codpro_dpto.ItemIndex);

end;


Function TFrm_ExpPro_Balanca.fValidarProdutos(pTipo: Integer): Boolean;
var
mObsErro: String;
mQtdErro: Integer;
begin
Application.Createform(TFrm_Sintegra_Advert,Frm_Sintegra_Advert);
//Frm_Sintegra_Advert.tsXml.TabVisible:=false;
Frm_Sintegra_Advert.Caption:='Relação de Produtos com Inconsistencias';
Frm_Sintegra_Advert.Panel1.Visible:=false;
Frm_Sintegra_Advert.Memo_NFSNaoEnc.Font.Name:='Courier New';
Qr_Pro.First;
mObsErro:='';
mQtdErro:=0;
Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add('CODIGO    DESCRICAO DO PRODUTO                               DEP. PRECO UNITARIO  Observações');

While not Qr_Pro.Eof do
   begin
   if length(Qr_ProPDNOME.AsString)<2 then
      begin
      if trim(mObsErro)<>'' then
         mObsErro:=mObsErro+'/';
      mObsErro:=mObsErro+'Nome do Produto Invalido';
      end;

   if Qr_ProPDPRECO1.AsFloat<=0  then
      begin
      if trim(mObsErro)<>'' then
         mObsErro:=mObsErro+'/';
      mObsErro:=mObsErro+'Preco Invalido';
      end;

   if Qr_ProPDCODDEP.AsFloat<=0  then
      begin
      if trim(mObsErro)<>'' then
         mObsErro:=mObsErro+'/';
      mObsErro:=mObsErro+'Código do Departamento Invalido';
      end;
   if trim(mObsErro)='' then
      begin
      Qr_Pro.Next;
      Continue;
      end;
   mQtdErro:=mQtdErro+1;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(Insere2(Qr_ProPDCODPRO.AsString,' ',08)
                                              +'  '
                                              +insere2(Qr_ProPDNOME.AsString,' ',50)
                                              +' '
                                              +insere(Qr_ProPDCODDEP.AsString,'0',02)
                                              +insere(FormatFloat(mcasas, Qr_ProPDPRECO1.AsFloat),' ',16)
                                              +' '+mObsErro);

   Qr_Pro.Next;
   mObsErro:='';

   end;


{

CODIGO    DESCRICAO DO PRODUTO                               DEP. PRECO UNITARIO
12345678  12345678901234567890123456789012345678901234567890  01  ZZZ.ZZZ.ZZ9,99
 }
if mQtdErro>0 then
   begin
   Frm_Sintegra_Advert.ShowModal;
   Frm_Sintegra_Advert.free;
   Frm_Sintegra_Advert:=nil;
   result:=false;
   end
else
   result:=true;

end;

Function TFrm_ExpPro_Balanca.fGerarDepartamentos(pTipo: Integer): Boolean;
var
mItens: TStrings;
begin

if trim(NOMEPASTA.Text)='' then
   NOMEPASTA.Text:='C:\SGE';
if trim(NOMEARQ.Text)='' then
   NOMEARQ.Text:='DEPTO.TXT';
if not DirExists(NOMEPASTA.Text) then
   begin
   fmensagem('Favor Digitar uma Pasta válida!',0,['0'],0);
   NOMEPASTA.SetFocus;
   exit;
   end;

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PRODEP_NOME,PRODEP_CODDEP from CADPRO_DPTO '
                  +IIf(DM1.Qr_tid.locate('TINOME','CADPRO',[]),'',' PRODEP_CODEMP=0'+IntTostr(codemp)));
DM1.Query4.open;
if DM1.Query4.isempty then
   begin
   fMensagem('Não ha departamento a ser exportado!',0,['0'],0);
   result:=true;
   exit;
   end;


mplid:=0;
mpqtd:=0;
Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Aguarde Enquanto é gerado o Arquivo...';
Frm_Agde.gb_progres.Visible:=true;
mpQtd:=DM1.Query4.RecordCount;
Frm_Agde.Show;
mItens:=TStringlist.create;
While not DM1.Query4.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mLinha_Texto:=insere(DM1.Query4.FieldbyName('PRODEP_CODDEP').AsString,'0',02); // codigo do departamento
   mLinha_Texto:=mLinha_Texto+insere2(DM1.Query4.FieldbyName('PRODEP_NOME').AsString,' ',40); // Nome do departamento
   insere(Qr_ProPDCODPRO.AsString,'0',06); // codigo do produto
   mitens.add(mLinha_Texto);
   DM1.Query4.next;
   end;

mItens.SaveToFile(NOMEPASTA.Text+'\'+NOMEARQ.Text);
freeandnil(mItens);

Frm_Agde.Label1.Caption:='Concluido!, Arquivo Gerado: '+NOMEPASTA.Text+'\'+NOMEARQ.Text;
verteclado(0);
result:=true;
end;

procedure TFrm_ExpPro_Balanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ExpPro_Balanca.FormShow(Sender: TObject);
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
end;

procedure TFrm_ExpPro_Balanca.CODPRO_EXTExit(Sender: TObject);
begin
CODPRO_EXT.Text:=fdeixanum2(CODPRO_EXT.Text);
if Trim(CODPRO_EXT.Text)<>'' then
   begin
   if not flcadpro_ext(1,0,CODPRO_EXT.Text) then
      begin
      fmensagem('Informação Extra não Cadastrada!',0,['0'],0);
      if lbx_codpro_ext.Focused then
         CODPRO_EXT.SetFocus;
      end
   else
      begin
      lbx_codpro_ext.Items.Add(FormatFloat('0000000', DM6.Tb_Pro_ExtPROEXT_CODEXT.AsFloat)
                                    +' - '+DM6.Tb_Pro_ExtPROEXT_NOME.AsString);
      CODPRO_EXT.text := '';
      if lbx_codpro_ext.Focused then
         CODPRO_EXT.SetFocus;
      end;

   end;



end;

procedure TFrm_ExpPro_Balanca.lbx_codpro_extKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro_ext.ItemIndex>=0 then
      lbx_codpro_ext.Items.Delete(lbx_codpro_ext.ItemIndex);

end;

procedure TFrm_ExpPro_Balanca.CODPRO_EXTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO_EXT.Text:= fChamaDepto(0,'Frm_Ext_Prod',key);
   key:=#0;
   CODPRO_EXTExit(Self);
   end;

end;

procedure TFrm_ExpPro_Balanca.CB_TIPOATUChange(Sender: TObject);
begin
if CB_TIPOATU.ItemIndex=6 then
  begin
  NOMEARQ.Text:='ITENSMGV.TXT';
  end
else if CB_TIPOATU.ItemIndex=4 then
  begin
  NOMEARQ.Text:='TXINFO.TXT';
  end;
end;

procedure TFrm_ExpPro_Balanca.CB_MODBALClick(Sender: TObject);
begin
CB_TIPOATU.Items.Clear;
CB_VERSAO.Items.clear;
if CB_MODBAL.ItemIndex=1 then // filizola
   begin
   CB_TIPOATU.Items.Add('Arquivo de Conservantes');
   CB_TIPOATU.Items.Add('Arquivo de Departamento');
   CB_TIPOATU.Items.Add('Arquivo de Fracionadores');
   CB_TIPOATU.Items.Add('Arquivo de Taras Pré-Determinadas');
   CB_TIPOATU.Items.Add('Informações Extras');
   CB_TIPOATU.Items.Add('Informações Nutrinicional');
   CB_TIPOATU.Items.Add('Itens Cadastro');
   CB_TIPOATU.Items.Add('Itens em Promoção');
   CB_VERSAO.Items.Add('Versao 1 (a partir do MGV versão 3.01 AF)');
   CB_VERSAO.Items.Add('Versao 2 (a partir do MGV versão 6.10 k))');

   end
else
   begin
   CB_TIPOATU.Items.Add('Itens Cadastro');
   CB_VERSAO.Items.Add('Versao 1 (a partir do MGV versão 3.01 AF)');
   CB_VERSAO.Items.Add('Anterior');
   end;
end;



function TFrm_ExpPro_Balanca.fFiltrosProd(pCadpro: Boolean): String;
var
mFiltros: String;
begin


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   mFiltros:=mFiltros+' and PDCODFOR '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   mFiltros:=mFiltros+' and PDCODGRU '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   mFiltros:=mFiltros+' and PDCODRAM '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   mFiltros:=mFiltros+' and PDCODPRO '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDCODTIP '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDCODCON '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codpro_dpto,OMITIR_PRODEP);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDCODDEP '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codpro_ext,OMITIR_PROEXT);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDCODEXT '+mcinst2;
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDNIVEL '+mcinst2;
mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and PDSTATUS  '+mcinst2
else
  mFiltros:=mFiltros+' and PDSTATUS<>9';
mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst2)<>'' then
  mFiltros:=mFiltros+' and  '+mcinst2;
if trim(MDT1.Text)<>'/  /' then
  mFiltros:=mFiltros+' and  PDDATCAD>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39);
if trim(MDT2.Text)<>'/  /' then
  mFiltros:=mFiltros+' and  PDDATCAD<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39);
result:=mfiltros;
end;
end.
