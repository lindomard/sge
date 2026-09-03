unit S_Pro_AjPcoInd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, CheckLst,func,lerarq,S_For,S_Ram, ExtCtrls,
  Buttons,db,dbtables,s_lerarq_geral, DBClient, Grids, DBGrids, Mask,
  ToolEdit;

type
  TFrm_Pro_AjPcoInd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText10: TStaticText;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label4: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label3: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    GroupBox1: TGroupBox;
    CB_PCO01: TCheckBox;
    CLBNivel: TCheckListBox;
    Label11: TLabel;
    CB_FORMPCO01: TCheckBox;
    PERC01: TEdit;
    lbl_ind01: TLabel;
    CB_DIMPCO01: TCheckBox;
    panel_pco01: TPanel;
    Label5: TLabel;
    CB_ITEM01PCO01: TComboBox;
    CB_FAT01PCO01: TComboBox;
    CB_ITEM02PCO01: TComboBox;
    CB_FAT02PCO01: TComboBox;
    CB_ITEM03PCO01: TComboBox;
    CB_FAT03PCO01: TComboBox;
    PERC01_FOR: TEdit;
    Panel1: TPanel;
    bbAjustar: TBitBtn;
    bbSair: TBitBtn;
    CB_PCO02: TCheckBox;
    CB_FORMPCO02: TCheckBox;
    lbl_ind02: TLabel;
    PERC02: TEdit;
    CB_DIMPCO02: TCheckBox;
    panel_pco02: TPanel;
    Label1: TLabel;
    CB_ITEM01PCO02: TComboBox;
    CB_FAT01PCO02: TComboBox;
    CB_ITEM02PCO02: TComboBox;
    CB_FAT02PCO02: TComboBox;
    CB_ITEM03PCO02: TComboBox;
    CB_FAT03PCO02: TComboBox;
    PERC02_FOR: TEdit;
    CB_PCO03: TCheckBox;
    CB_FORMPCO03: TCheckBox;
    lbl_ind03: TLabel;
    PERC03: TEdit;
    CB_DIMPCO03: TCheckBox;
    panel_pco03: TPanel;
    Label6: TLabel;
    CB_ITEM01PCO03: TComboBox;
    CB_FAT01PCO03: TComboBox;
    CB_ITEM02PCO03: TComboBox;
    CB_FAT02PCO03: TComboBox;
    CB_ITEM03PCO03: TComboBox;
    CB_FAT03PCO03: TComboBox;
    PERCO3_FOR: TEdit;
    sbSalvarPadrao: TSpeedButton;
    Tipo_Formula: TRadioGroup;
    tsConfigArredondamento: TTabSheet;
    GroupBox2: TGroupBox;
    dbgrid_arred: TDBGrid;
    src_arred: TDataSource;
    cds_arred: TClientDataSet;
    cds_arredarredondamento: TFloatField;
    cds_arredarredondamento_novo: TFloatField;
    Panel2: TPanel;
    bbSalvarPadrao: TBitBtn;
    CB_PCO_CUSTO: TCheckBox;
    CB_FORMCUSTO: TCheckBox;
    lbl_indcusto: TLabel;
    PERC_CUSTO: TEdit;
    CB_DIM_CUSTO: TCheckBox;
    panel_custo: TPanel;
    Label10: TLabel;
    CB_ITEM01_CUSTO: TComboBox;
    CB_FAT01_CUSTO: TComboBox;
    CB_ITEM02_CUSTO: TComboBox;
    CB_FAT02_CUSTO: TComboBox;
    CB_ITEM03_CUSTO: TComboBox;
    CB_FAT03CUSTO: TComboBox;
    PERC_CUSTO_FOR: TEdit;
    Label2: TLabel;
    cb_marca: TComboBox;
    Label12: TLabel;
    edt_dataEntrada_ini: TDateEdit;
    sbnVerResumo: TSpeedButton;
    Label13: TLabel;
    edt_dataEntrada_fin: TDateEdit;
    TabSheet2: TTabSheet;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label14: TLabel;
    edt_data_ajuste_ini: TDateEdit;
    Label15: TLabel;
    edt_data_ajuste_fin: TDateEdit;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTIPExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBNivelClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CB_FORMPCO01Click(Sender: TObject);
    procedure PERC01Exit(Sender: TObject);
    procedure PERC01_FORExit(Sender: TObject);
    procedure CB_PCO01Click(Sender: TObject);
    procedure bbAjustarClick(Sender: TObject);
    procedure CB_PCO02Click(Sender: TObject);
    procedure CB_FORMPCO02Click(Sender: TObject);
    procedure PERC02Exit(Sender: TObject);
    procedure CB_FORMPCO03Click(Sender: TObject);
    procedure PERC03Exit(Sender: TObject);
    procedure CB_PCO03Click(Sender: TObject);
    procedure PERC02_FORExit(Sender: TObject);
    procedure PERCO3_FORExit(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tipo_FormulaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure CB_PCO_CUSTOClick(Sender: TObject);
    procedure CB_FORMCUSTOClick(Sender: TObject);
    procedure PERC_CUSTOExit(Sender: TObject);
    procedure PERC_CUSTO_FORExit(Sender: TObject);
    procedure sbnVerResumoClick(Sender: TObject);
  private
    { Private declarations }

    mForPco01, mForPco02, mForPco03,mForPcoCusto: String;

    procedure fCarregarArredondamentos;

    procedure fAtualizarMarca;

    procedure fGerarCriteritosAjustes;


    function fGerarFiltros: String;


    function fValidarRequisitos: boolean;


  public
    { Public declarations }
  end;

var
  Frm_Pro_AjPcoInd: TFrm_Pro_AjPcoInd;

implementation

uses S_DM1, s_tipPro, S_GPro, S_TCon, S_DM4, func_excecoes,
  S_Pro_AjPcoInd_Preview;

{$R *.dfm}

procedure TFrm_Pro_AjPcoInd.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codfor.ItemIndex:=lbx_codfor.Items.Count-1;
      CODFOR.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Pro_AjPcoInd.CODFORKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Pro_AjPcolnd',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Pro_AjPcoInd.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);


end;

procedure TFrm_Pro_AjPcoInd.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
   CODTIP.Text:='';
   EXIT;
   end;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   begin
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   end
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_Pro_AjPcoInd.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_Pro_AjPcoInd.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   begin
   exit;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   begin
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   end
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_Pro_AjPcoInd.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   begin
   exit;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   begin
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   end
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;


end;

procedure TFrm_Pro_AjPcoInd.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      lbx_codtip.Items.Add(FormatFloat('0000000',DM1.Tb_TproTCODTIP.AsFloat)
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;


end;

procedure TFrm_Pro_AjPcoInd.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;



end;

procedure TFrm_Pro_AjPcoInd.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_Pro_AjPcoInd.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;


end;

procedure TFrm_Pro_AjPcoInd.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_Pro_AjPcoInd.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_Pro_AjPcoInd.lbx_codconKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_Pro_AjPcoInd.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_Pro_AjPcoInd.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;


end;

procedure TFrm_Pro_AjPcoInd.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
   if valfloat(codpro.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   codpro.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_Pro_AjPcoInd.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Pro_AjPcoInd.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Pro_AjPcoInd.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_AjPcoInd.CB_FORMPCO01Click(Sender: TObject);
begin
if CB_FORMPCO01.Checked  then
   begin
   if CB_FORMPCO01.Visible then
      panel_pco01.Visible:=true
   else
      panel_pco01.Visible:=false;
   lbl_ind01.Visible  :=false;
   PERC01.Visible     :=false;
   CB_DIMPCO01.Visible:=false;
   end
else
   begin
   panel_pco01.Visible:=false;
   if CB_FORMPCO01.Visible then
      begin
      lbl_ind01.Visible  :=true;
      PERC01.Visible     :=true;
      CB_DIMPCO01.Visible:=true;
      end
   else
      begin
      lbl_ind01.Visible  :=false;
      PERC01.Visible     :=false;
      CB_DIMPCO01.Visible:=false;
      end;
   end;

end;

procedure TFrm_Pro_AjPcoInd.PERC01Exit(Sender: TObject);
begin
PERC01.Text:=FormatFloat(mcasas_pct,ValFloat(PERC01.Text));
end;

procedure TFrm_Pro_AjPcoInd.PERC01_FORExit(Sender: TObject);
begin
if Tipo_Formula.ItemIndex=0 then
  begin
  PERC01_FOR.Text:=FormatFloat(mcasas_pct,ValFloat(PERC01_FOR.Text));
  end
else
  begin
  PERC01_FOR.Text:=FormatFloat(mcasaspu,ValFloat(PERC01_FOR.Text));
  end;
end;

procedure TFrm_Pro_AjPcoInd.CB_PCO01Click(Sender: TObject);
begin
if CB_PCO01.Checked then
   begin
   CB_FORMPCO01.Visible:=true;
   CB_FORMPCO01Click(self);
   end
else
   begin
   CB_FORMPCO01.Visible:=false;
   CB_FORMPCO01Click(self);
   end;
end;
procedure TFrm_Pro_AjPcoInd.bbAjustarClick(Sender: TObject);
var
mfiltros: string;

begin
if not (CB_PCO01.Checked) and not (CB_PCO02.Checked) and not (CB_PCO03.Checked) and not (CB_PCO_CUSTO.Checked) then
   begin
   fmensagem('Favor Selecionar um preco ha ser alterado!',0,['0'],0);
   exit;
   end;
if not fValidarRequisitos then
   exit;


DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select count(*) from CADPRO where 1=1 ');
mcinst:=' and ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query1.SQL.add(mcinst+' PDCODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
mfiltros:=fGerarFiltros;
DM1.Query1.SQL.add(mfiltros);
DM1.Query1.Open;
if dm1.Query1.Fields[0].AsInteger<=0 then
   begin
   fmensagem('Não ha registro a ser ajustado na condição acima!',0,['0'],0);
   exit;
   end
else
   begin
   if fmensagem('Sera(o) Atualizado(s) '+DM1.Query1.Fields[0].AsString+' Registro(s), deseja atualizar agora?',0,['1','2'],2)<>mrYes then
      exit;
   end;
fGerarCriteritosAjustes;
// ermino custo



if (trim(mForPco01)='') and (trim(mForPco02)='') and (trim(mForPco03)='') and (trim(mForPcoCusto)='') then
   begin
   FMensagem('Não ha uma instrução Válida!',0,['0'],0);
   exit;
   end;

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
mcinst2:='';
DM1.Query3.SQL.Add('Update CADPRO set ');
if trim(mForPco01)<>'' then
   begin
   DM1.Query3.SQL.add(mcinst2+'PDPRECOA1=PDPRECO1 ');
   mcinst2:=',';
   DM1.Query3.Params.CreateParam(ftString,'DTUATP1',ptinput);
   DM1.Query3.SQL.add(mcinst2+' PDDTUATP1=:DTUATP1');
   DM1.Query3.ParamByName('DTUATP1').AsDateTime:=now;
   DM1.Query3.SQL.add(mcinst2+'PDUSRALT1=0'+InttoStr(codusr));
   DM1.Query3.SQL.add(mcinst2+mForPco01);
   end;

if trim(mForPco02)<>'' then
   begin
   DM1.Query3.SQL.add(mcinst2+'PDPRECOA2=PDPRECO2 ');
   mcinst2:=',';
   DM1.Query3.Params.CreateParam(ftString,'DTUATP2',ptinput);
   DM1.Query3.SQL.add(mcinst2+' PDDTUATP2=:DTUATP2');
   DM1.Query3.ParamByName('DTUATP2').AsDateTime:=now;
   DM1.Query3.SQL.add(mcinst2+'PDUSRALT2=0'+InttoStr(codusr));
   DM1.Query3.SQL.add(mcinst2+mForPco02);
   end;

if trim(mForPco03)<>'' then
   begin
   DM1.Query3.SQL.add(mcinst2+'PDPRECOA3=PDPRECO3 ');
   mcinst2:=',';
   DM1.Query3.Params.CreateParam(ftString,'DTUATP3',ptinput);
   DM1.Query3.SQL.add(mcinst2+' PDDTUATP3=:DTUATP3');
   DM1.Query3.ParamByName('DTUATP3').AsDateTime:=now;
   DM1.Query3.SQL.add(mcinst2+'PDUSRALT3=0'+InttoStr(codusr));
   DM1.Query3.SQL.add(mcinst2+mForPco03);
   end;

if trim(mForPcoCusto)<>'' then
   begin
   DM1.Query3.SQL.add(mcinst2+mForPcoCusto);
   end;

mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query3.SQL.add(mcinst+' PDCODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
DM1.Query3.SQL.add(mcinst+' PDSTATUS<>9999 '+mfiltros);

try
    DM1.Query3.ExecSQL;
    fmensagem('Concluido!',0,['0'],0);
except on e : exception do
    ex_erroSql_Novo(dm1.QUERY3,1170,'func Erro:'+e.Message ,'CADEST');
    end;




end;

procedure TFrm_Pro_AjPcoInd.CB_PCO02Click(Sender: TObject);
begin
if CB_PCO02.Checked then
   begin
   CB_FORMPCO02.Visible:=true;
   CB_FORMPCO02Click(self);
   end
else
   begin
   CB_FORMPCO02.Visible:=false;
   CB_FORMPCO02Click(self);
   end;

end;

procedure TFrm_Pro_AjPcoInd.CB_FORMPCO02Click(Sender: TObject);
begin
if CB_FORMPCO02.Checked  then
   begin
   if CB_FORMPCO02.Visible then
      panel_pco02.Visible:=true
   else
      panel_pco02.Visible:=false;
   lbl_ind02.Visible  :=false;
   PERC02.Visible     :=false;
   CB_DIMPCO02.Visible:=false;
   end
else
   begin
   panel_pco02.Visible:=false;
   if CB_FORMPCO02.Visible then
      begin
      lbl_ind02.Visible  :=true;
      PERC02.Visible     :=true;
      CB_DIMPCO02.Visible:=true;
      end
   else
      begin
      lbl_ind02.Visible  :=false;
      PERC02.Visible     :=false;
      CB_DIMPCO02.Visible:=false;
      end;
   end;


end;

procedure TFrm_Pro_AjPcoInd.PERC02Exit(Sender: TObject);
begin
if Tipo_Formula.ItemIndex=0 then
  PERC02.Text:=FormatFloat(mcasas_pct,ValFloat(PERC02.Text))
else
  PERC02.Text:=FormatFloat(mcasaspu,ValFloat(PERC02.Text));

end;

procedure TFrm_Pro_AjPcoInd.CB_FORMPCO03Click(Sender: TObject);
begin
if CB_FORMPCO03.Checked  then
   begin
   if CB_FORMPCO03.Visible then
      panel_pco03.Visible:=true
   else
      panel_pco03.Visible:=false;
   lbl_ind03.Visible  :=false;
   PERC03.Visible     :=false;
   CB_DIMPCO03.Visible:=false;
   end
else
   begin
   panel_pco03.Visible:=false;
   if CB_FORMPCO03.Visible then
      begin
      lbl_ind03.Visible  :=true;
      PERC03.Visible     :=true;
      CB_DIMPCO03.Visible:=true;
      end
   else
      begin
      lbl_ind03.Visible  :=false;
      PERC03.Visible     :=false;
      CB_DIMPCO03.Visible:=false;
      end;
   end;


end;

procedure TFrm_Pro_AjPcoInd.PERC03Exit(Sender: TObject);
begin
PERC03.Text:=FormatFloat(mcasas_pct,ValFloat(PERC03.Text));

end;

procedure TFrm_Pro_AjPcoInd.CB_PCO03Click(Sender: TObject);
begin
if CB_PCO03.Checked then
   begin
   CB_FORMPCO03.Visible:=true;
   CB_FORMPCO03Click(self);
   end
else
   begin
   CB_FORMPCO03.Visible:=false;
   CB_FORMPCO03Click(self);
   end;

end;

procedure TFrm_Pro_AjPcoInd.PERC02_FORExit(Sender: TObject);
begin
if Tipo_Formula.ItemIndex=0 then
  begin
  PERC02_FOR.Text:=FormatFloat(mcasas_pct,ValFloat(PERC02_FOR.Text));
  end
else
  begin
  PERC02_FOR.Text:=FormatFloat(mcasaspu,ValFloat(PERC02_FOR.Text));
  end;
end;

procedure TFrm_Pro_AjPcoInd.PERCO3_FORExit(Sender: TObject);
begin
if Tipo_Formula.ItemIndex=0 then
  begin
  PERCO3_FOR.Text:=FormatFloat(mcasas_pct,ValFloat(PERCO3_FOR.Text));
  end
else
  begin
  PERCO3_FOR.Text:=FormatFloat(mcasaspu,ValFloat(PERCO3_FOR.Text));
  end;
end;

procedure TFrm_Pro_AjPcoInd.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_PRO_AJPCOIND','');

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBNIVEL'          ,'itemindex' ,'_PRO_AJPCOIND',mcinst2);
fGravaPadroes(codusr,'CB_PCO01'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_PCO01.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PCO02'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_PCO02.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PCO03'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_PCO03.Checked,'true','false'));
fGravaPadroes(codusr,'CB_FORMPCO01'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_FORMPCO01.Checked,'true','false'));
fGravaPadroes(codusr,'CB_FORMPCO02'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_FORMPCO02.Checked,'true','false'));
fGravaPadroes(codusr,'CB_FORMPCO03'  ,'checked'   ,'_PRO_AJPCOIND',iif(CB_FORMPCO03.Checked,'true','false'));

fGravaPadroes(codusr,'CB_ITEM01PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM01PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM01PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM01PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM01PCO03'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM01PCO03.ItemIndex));

fGravaPadroes(codusr,'CB_FAT01PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT01PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_FAT01PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT01PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_FAT01PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT01PCO02.ItemIndex));

fGravaPadroes(codusr,'CB_ITEM02PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM02PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM02PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM02PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM02PCO03'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM02PCO03.ItemIndex));

fGravaPadroes(codusr,'CB_FAT02PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT02PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_FAT02PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT02PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_FAT02PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT02PCO02.ItemIndex));



fGravaPadroes(codusr,'CB_ITEM03PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM03PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM03PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM03PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_ITEM03PCO03'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_ITEM03PCO03.ItemIndex));

fGravaPadroes(codusr,'CB_FAT03PCO01'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT03PCO01.ItemIndex));
fGravaPadroes(codusr,'CB_FAT03PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT03PCO02.ItemIndex));
fGravaPadroes(codusr,'CB_FAT03PCO02'  ,'itemindex'   ,'_PRO_AJPCOIND',IntToStr(CB_FAT03PCO02.ItemIndex));


end;

procedure TFrm_Pro_AjPcoInd.FormCreate(Sender: TObject);
var
x: Integer;
begin
pagecontrol1.ActivePageIndex:=0;

if flfilpad(codusr,'_PRO_AJPCOIND','') then
   begin
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
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCO01',[]) then
      CB_PCO01.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCO02',[]) then
      CB_PCO02.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCO03',[]) then
      CB_PCO03.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORMPCO01',[]) then
      CB_FORMPCO01.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORMPCO02',[]) then
      CB_FORMPCO02.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORMPCO03',[]) then
      CB_FORMPCO03.Checked:= DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM01PCO01',[]) then
      CB_ITEM01PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM01PCO02',[]) then
      CB_ITEM01PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM01PCO03',[]) then
      CB_ITEM01PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT01PCO01',[]) then
      CB_FAT01PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT01PCO02',[]) then
      CB_FAT01PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT01PCO03',[]) then
      CB_FAT01PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM02PCO01',[]) then
      CB_ITEM02PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM02PCO02',[]) then
      CB_ITEM02PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM02PCO03',[]) then
      CB_ITEM02PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT02PCO01',[]) then
      CB_FAT02PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT02PCO02',[]) then
      CB_FAT02PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT02PCO03',[]) then
      CB_FAT02PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM03PCO01',[]) then
      CB_ITEM03PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM03PCO02',[]) then
      CB_ITEM03PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ITEM03PCO03',[]) then
      CB_ITEM03PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT03PCO01',[]) then
      CB_FAT03PCO01.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT03PCO02',[]) then
      CB_FAT03PCO02.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FAT03PCO03',[]) then
      CB_FAT03PCO03.itemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   end;
fCarregarArredondamentos;

end;

procedure TFrm_Pro_AjPcoInd.fCarregarArredondamentos;
var
x_arr: integer;
begin

cds_arred.CreateDataSet;
cds_arred.Open;
for x_arr:=0 to 9 do
   begin
   cds_arred.append;
   cds_arredarredondamento.value := x_arr;
   cds_arred.Post;
   end;


if flfilpad(-1,'_PRO_AJPCOIND','') then
   begin
   While not DM4.Tb_Filpad2.Eof do
      begin
      x_arr:=valint(fBuscarValor_paipo(1,DM4.Tb_Filpad2FPVALOR.asstring));
      if cds_arred.locate('arredondamento',x_arr,[]) then
         begin
         cds_arred.edit;
         cds_arredarredondamento_novo.value:=valint(fBuscarValor_paipo(2,DM4.Tb_Filpad2FPVALOR.asstring));
         cds_arred.Post;
         end;
      DM4.Tb_Filpad2.next;
      end;
   end;

end;

procedure TFrm_Pro_AjPcoInd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pro_AjPcoInd.Tipo_FormulaClick(Sender: TObject);
begin
PERC01_FORExit(Self);
PERC02_FORExit(Self);
PERCO3_FORExit(Self);
end;

procedure TFrm_Pro_AjPcoInd.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin

fAtualizarMarca;
PageControl1.ActivePageIndex:=0;
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');
end;

procedure TFrm_Pro_AjPcoInd.bbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_PRO_AJPCOIND','');

cds_arred.First;
While not cds_arred.eof do
   begin
   fGravaPadroes(-1,'PRECOS'          ,'itemindex', '_PRO_AJPCOIND',cds_arredarredondamento.AsString+'|'+cds_arredarredondamento_novo.AsString);

   cds_arred.next;
   end;

MessageDlg('Valores Gravados!',mtWarning,[mbOk],0);
end;

procedure TFrm_Pro_AjPcoInd.CB_PCO_CUSTOClick(Sender: TObject);
begin
if CB_PCO_CUSTO.Checked then
   begin
   CB_FORMCUSTO.Visible:=true;
   CB_FORMCUSTOClick(self);
   end
else
   begin
   CB_FORMCUSTO.Visible:=false;
   CB_FORMCUSTOClick(self);
   end;

end;

procedure TFrm_Pro_AjPcoInd.CB_FORMCUSTOClick(Sender: TObject);
begin
if CB_FORMCUSTO.Checked  then
   begin
   if CB_FORMCUSTO.Visible then
      panel_CUSTO.Visible:=true
   else
      panel_CUSTO.Visible:=false;
   lbl_indcusto.Visible  :=false;
   PERC_CUSTO.Visible     :=false;
   CB_DIM_CUSTO.Visible:=false;
   end
else
   begin
   panel_CUSTO.Visible:=false;
   if CB_FORMCUSTO.Visible then
      begin
      lbl_indcusto.Visible  :=true;
      PERC_CUSTO.Visible     :=true;
      CB_DIM_CUSTO.Visible:=true;
      end
   else
      begin
      lbl_indcusto.Visible  :=false;
      PERC_CUSTO.Visible     :=false;
      CB_DIM_CUSTO.Visible:=false;
      end;
   end;


end;

procedure TFrm_Pro_AjPcoInd.PERC_CUSTOExit(Sender: TObject);
begin
PERC_CUSTO.Text:=FormatFloat(mcasas_pct,ValFloat(PERC_CUSTO.Text));

end;

procedure TFrm_Pro_AjPcoInd.PERC_CUSTO_FORExit(Sender: TObject);
begin
if Tipo_Formula.ItemIndex=0 then
  begin
  PERC_CUSTO_FOR.Text:=FormatFloat(mcasas_pct,ValFloat(PERC_CUSTO_FOR.Text));
  end
else
  begin
  PERC_CUSTO_FOR.Text:=FormatFloat(mcasaspu,ValFloat(PERC_CUSTO_FOR.Text));
  end;

end;

procedure TFrm_Pro_AjPcoInd.fAtualizarMarca;
var
query_marca: tQuery;

begin
query_marca := tQuery.create(nil);
query_marca.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_marca.sql.add('select pdmarca, count(*) from cadpro '
                   +' group by pdmarca order by pdmarca');
try
   query_marca.open;
except
   end;
cb_marca.Items.clear;
cb_marca.Items.add('Todos');
While not query_marca.Eof do
   begin
   cb_marca.Items.add(query_marca.fieldbyname('pdmarca').asstring);
   query_marca.next;
   end;
cb_marca.itemindex:=0;
end;



procedure TFrm_Pro_AjPcoInd.fGerarCriteritosAjustes;

   function fCaseValor(pCampoValor: String): String;
   var
   mvalor: string;
   macum: integer;
   begin

   macum:=0;
   cds_arred.First;
   While not cds_arred.eof do
      begin
      macum:=macum+cds_arredarredondamento_novo.AsInteger;
      cds_arred.next;
      end;
   if macum=0 then
      result:=pcampovalor
//     result:=pCampoValor+'=trunc('+pcampoValor+',1)+'
   else
      begin
      cds_arred.First;
//      mvalor:=pCampoValor+' case ';
      mvalor:=' case ';
      While not cds_arred.eof do
         begin
         mvalor:=mvalor+' when ((trunc('+pcampoValor+',2)-trunc('+pcampovalor+',1))*100)='+cds_arredarredondamento.AsString+' then '
               +'trunc('+pcampovalor+',1)+'+mudavp(floattostr(cds_arredarredondamento_novo.AsInteger/100));
        cds_arred.next;
        end;
      mvalor:=mvalor+' else 0 end ';
      result:=mvalor;
      end;


   end;

begin


mForPco01:='';
mForPco02:='';
mForPco03:='';
mForPcoCusto:='';
if CB_PCO01.Checked then
   begin
   if CB_FORMPCO01.Checked then
      begin
      if CB_ITEM01PCO01.ItemIndex=1 then
         begin
         mForPco01:=mForPco01+'PDPRECO1';
         if CB_FAT01PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT01PCO01.Text
         else if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM01PCO01.ItemIndex=2 then
         begin
         mForPco01:=mForPco01+'PDPRECO2';
         if CB_FAT01PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT01PCO01.Text
         else if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM01PCO01.ItemIndex=3 then
         begin
         mForPco01:=mForPco01+'PDPRECO3';
         if CB_FAT01PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT01PCO01.Text
         else if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM01PCO01.ItemIndex=4 then
         begin
         mForPco01:=mForPco01+'PDPRECOC';
         if CB_FAT01PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT01PCO01.Text
         else if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end;

// ITEM 02
      if CB_ITEM02PCO01.ItemIndex=1 then
         begin
         mForPco01:=mForPco01+'PDPRECO1';
         if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM02PCO01.ItemIndex=2 then
         begin
         mForPco01:=mForPco01+'PDPRECO2';
         if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM02PCO01.ItemIndex=3 then
         begin
         mForPco01:=mForPco01+'PDPRECO3';
         if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end
      else if CB_ITEM02PCO01.ItemIndex=4 then
         begin
         mForPco01:=mForPco01+'PDPRECOC';
         if CB_FAT02PCO01.ItemIndex>0 then
            mForPco01:=mForPco01+CB_FAT02PCO01.Text;
         end;

// TERMINO DO ITEM 02


// ITEM 03
      if CB_ITEM03PCO01.ItemIndex=1 then
         begin
         mForPco01:=mForPco01+'PDPRECO1';
         end
      else if CB_ITEM03PCO01.ItemIndex=2 then
         begin
         mForPco01:=mForPco01+'PDPRECO2';
         end
      else if CB_ITEM03PCO01.ItemIndex=3 then
         begin
         mForPco01:=mForPco01+'PDPRECO3';
         end
      else if CB_ITEM03PCO01.ItemIndex=4 then
         begin
         mForPco01:=mForPco01+'PDPRECOC';
         end;

// TERMINO DO ITEM 03
      mcinst2:='';
      if ValFloat(PERC01_FOR.Text)<>0 then
         begin
         mForPco01:='('+mForPco01+')';
//         mForPco01:='PDPRECO1';
         mcinst2:='';
         if Tipo_Formula.ItemIndex=0 then
            begin
            if CB_FAT03PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+'('+mForPco01+'*'+mudaVP(PERC01_FOR.Text)+'/100 )'
            else if CB_FAT02PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+'('+mForPco01+'*'+mudaVP(PERC01_FOR.Text)+'/100 )'
            else if CB_FAT01PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+'('+mForPco01+'*'+mudaVP(PERC01_FOR.Text)+'/100 )';
            end
         else
            begin
            if CB_FAT03PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+mudaVP(PERC01_FOR.Text)
            else if CB_FAT02PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+mudaVP(PERC01_FOR.Text)
            else if CB_FAT01PCO01.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO01.Text+mudaVP(PERC01_FOR.Text);
            end;
         mforPco01:='PDPRECO1='+mForPco01+mcinst2;
         end;
      if trim(mForPco01)<>'' then
        mForPco01:='PDPRECO1='+fCaseValor(mForPco01)+' '+mcinst2;
      end
   else
      begin
      if Tipo_Formula.ItemIndex=0 then
        begin
        mForPco01:='PDPRECO1='+fCaseValor('PDPRECO1'+iif(CB_DIMPCO01.Checked,'-','+')+
                             '(PDPRECO1*'+mudaVP(PERC01.Text)+'/100)');
        end
      else
        begin
        mForPco01:='PDPRECO1='+fCaseValor('PDPRECO1'+iif(CB_DIMPCO01.Checked,'-','+')+mudaVP(PERC01.Text));
        end;
      end;
   end;
// preco 02
if CB_PCO02.Checked then
   begin
   if CB_FORMPCO02.Checked then
      begin
      if CB_ITEM01PCO02.ItemIndex=1 then
         begin
         mForPco02:=mForPco02+'PDPRECO1';
         if CB_FAT01PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT01PCO02.Text
         else if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM01PCO02.ItemIndex=2 then
         begin
         mForPco02:=mForPco02+'PDPRECO2';
         if CB_FAT01PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT01PCO02.Text
         else if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM01PCO02.ItemIndex=3 then
         begin
         mForPco02:=mForPco02+'PDPRECO3';
         if CB_FAT01PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT01PCO02.Text
         else if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM01PCO02.ItemIndex=4 then
         begin
         mForPco02:=mForPco02+'PDPRECOC';
         if CB_FAT01PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT01PCO02.Text
         else if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end;

// ITEM 02
      if CB_ITEM02PCO02.ItemIndex=1 then
         begin
         mForPco02:=mForPco02+'PDPRECO1';
         if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM02PCO02.ItemIndex=2 then
         begin
         mForPco02:=mForPco02+'PDPRECO2';
         if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM02PCO02.ItemIndex=3 then
         begin
         mForPco02:=mForPco02+'PDPRECO3';
         if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end
      else if CB_ITEM02PCO02.ItemIndex=4 then
         begin
         mForPco02:=mForPco02+'PDPRECOC';
         if CB_FAT02PCO02.ItemIndex>0 then
            mForPco02:=mForPco02+CB_FAT02PCO02.Text;
         end;

// TERMINO DO ITEM 02


// ITEM 03
      if CB_ITEM03PCO02.ItemIndex=1 then
         begin
         mForPco02:=mForPco02+'PDPRECO1';
         end
      else if CB_ITEM03PCO02.ItemIndex=2 then
         begin
         mForPco02:=mForPco02+'PDPRECO2';
         end
      else if CB_ITEM03PCO02.ItemIndex=3 then
         begin
         mForPco02:=mForPco02+'PDPRECO3';
         end
      else if CB_ITEM03PCO02.ItemIndex=4 then
         begin
         mForPco02:=mForPco02+'PDPRECOC';
         end;

// TERMINO DO ITEM 03
       mcinst2:='';
      if ValFloat(PERC02_FOR.Text)<>0 then
         begin
         mForPco02:='('+mForPco02+')';
//         mForPco01:='PDPRECO1';
         mcinst2:='';
         if Tipo_Formula.ItemIndex=0 then
            begin
             if CB_FAT03PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+'('+mForPco02+'*'+mudaVP(PERC02_FOR.Text)+'/100 )'
             else if CB_FAT02PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+'('+mForPco02+'*'+mudaVP(PERC02_FOR.Text)+'/100 )'
             else if CB_FAT01PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+'('+mForPco02+'*'+mudaVP(PERC02_FOR.Text)+'/100 )';
             end
          else
             begin
             if CB_FAT03PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+mudaVP(PERC02_FOR.Text)
             else if CB_FAT02PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+mudaVP(PERC02_FOR.Text)
             else if CB_FAT01PCO02.ItemIndex<>0 then
                mcinst2:=CB_FAT03PCO02.Text+mudaVP(PERC02_FOR.Text);
             end;
         mforPco02:='PDPRECO2='+mForPco02+mcinst2;
         end;
      if trim(mForPco02)<>'' then
        mForPco02:='PDPRECO2='+fCaseValor(mForPco02)+' '+mcinst2;

      end
   else
      begin
      if Tipo_Formula.ItemIndex=0 then
        begin
        mForPco02:='PDPRECO2='+fCaseValor('PDPRECO2'+iif(CB_DIMPCO02.Checked,'-','+')+
                             '(PDPRECO2*'+mudaVP(PERC02.Text)+'/100)');
        end
      else
        begin
        mForPco02:='PDPRECO2='+fCaseValor('PDPRECO2'+iif(CB_DIMPCO02.Checked,'-','+')+mudaVP(PERC02.Text));
        end;
      end;
   end;
// preco 02


if CB_PCO03.Checked then
   begin
   if CB_FORMPCO03.Checked then
      begin
      if CB_ITEM01PCO03.ItemIndex=1 then
         begin
         mForPco03:=mForPco02+'PDPRECO1';
         if CB_FAT01PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT01PCO03.Text
         else if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM01PCO03.ItemIndex=2 then
         begin
         mForPco03:=mForPco03+'PDPRECO2';
         if CB_FAT01PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT01PCO03.Text
         else if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM01PCO03.ItemIndex=3 then
         begin
         mForPco03:=mForPco03+'PDPRECO3';
         if CB_FAT01PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT01PCO03.Text
         else if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM01PCO03.ItemIndex=4 then
         begin
         mForPco03:=mForPco03+'PDPRECOC';
         if CB_FAT01PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT01PCO03.Text
         else if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end;

// ITEM 02
      if CB_ITEM02PCO03.ItemIndex=1 then
         begin
         mForPco03:=mForPco03+'PDPRECO1';
         if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM02PCO03.ItemIndex=2 then
         begin
         mForPco03:=mForPco03+'PDPRECO2';
         if CB_FAT02PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM02PCO03.ItemIndex=3 then
         begin
         mForPco03:=mForPco03+'PDPRECO3';
         if CB_FAT03PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end
      else if CB_ITEM02PCO03.ItemIndex=4 then
         begin
         mForPco03:=mForPco03+'PDPRECOC';
         if CB_FAT03PCO03.ItemIndex>0 then
            mForPco03:=mForPco03+CB_FAT02PCO03.Text;
         end;

// TERMINO DO ITEM 02


// ITEM 03
      if CB_ITEM03PCO03.ItemIndex=1 then
         begin
         mForPco03:=mForPco03+'PDPRECO1';
         end
      else if CB_ITEM03PCO03.ItemIndex=2 then
         begin
         mForPco03:=mForPco03+'PDPRECO2';
         end
      else if CB_ITEM03PCO03.ItemIndex=3 then
         begin
         mForPco03:=mForPco03+'PDPRECO3';
         end
      else if CB_ITEM03PCO03.ItemIndex=4 then
         begin
         mForPco03:=mForPco03+'PDPRECOC';
         end;

// TERMINO DO ITEM 03
      mcinst2:='';
      if ValFloat(PERCO3_FOR.Text)<>0 then

         begin
         mForPco03:='('+mForPco03+')';
//         mForPco01:='PDPRECO1';
         mcinst2:='';
         if Tipo_Formula.ItemIndex=0 then
          begin
           if CB_FAT03PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+'('+mForPco03+'*'+mudaVP(PERCO3_FOR.Text)+'/100 )'
           else if CB_FAT02PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+'('+mForPco03+'*'+mudaVP(PERCO3_FOR.Text)+'/100 )'
           else if CB_FAT01PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+'('+mForPco03+'*'+mudaVP(PERCO3_FOR.Text)+'/100 )';
           end
         else
           begin
           if CB_FAT03PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+mudaVP(PERCO3_FOR.Text)
           else if CB_FAT02PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+mudaVP(PERCO3_FOR.Text)
           else if CB_FAT01PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03PCO03.Text+mudaVP(PERCO3_FOR.Text);
           end;
        mforPco03:='PDPRECO3='+mForPco03+mcinst2;
        end;
      if trim(mForPco03)<>'' then
        mForPco03:='PDPRECO3='+fCaseValor( mForPco03)+' '+mcinst2;
      end

   else
      begin
      if Tipo_Formula.ItemIndex=0 then
        begin
        mForPco03:='PDPRECO3='+fCaseValor('PDPRECO3'+iif(CB_DIMPCO03.Checked,'-','+')+
                             '(PDPRECO3*'+mudaVP(PERC03.Text)+'/100)');
        end
      else
        begin
        mForPco03:='PDPRECO3='+fCaseValor('PDPRECO3'+iif(CB_DIMPCO03.Checked,'-','+')+mudaVP(PERC03.Text));
        end;
      end;
   end;
// inicio custo


if CB_PCO_CUSTO.Checked then
   begin
   if CB_FORMCUSTO.Checked then
      begin
      if CB_ITEM01_CUSTO.ItemIndex=1 then
         begin
         mForPcoCusto:=mForPco02+'PDPRECO1';
         if CB_FAT01_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT01_CUSTO.Text
         else if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM01_CUSTO.ItemIndex=2 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO2';
         if CB_FAT01_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT01_CUSTO.Text
         else if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM01_CUSTO.ItemIndex=3 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO3';
         if CB_FAT01_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT01_CUSTO.Text
         else if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM01_CUSTO.ItemIndex=4 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECOC';
         if CB_FAT01_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT01_CUSTO.Text
         else if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end;

// ITEM 02
      if CB_ITEM02_CUSTO.ItemIndex=1 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO1';
         if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM02_CUSTO.ItemIndex=2 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO2';
         if CB_FAT02_CUSTO.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM02_CUSTO.ItemIndex=3 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO3';
         if CB_FAT03PCO03.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end
      else if CB_ITEM02_CUSTO.ItemIndex=4 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECOC';
         if CB_FAT03PCO03.ItemIndex>0 then
            mForPcoCusto:=mForPcoCusto+CB_FAT02_CUSTO.Text;
         end;

// TERMINO DO ITEM 02


// ITEM 03
      if CB_ITEM03_CUSTO.ItemIndex=1 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO1';
         end
      else if CB_ITEM03_CUSTO.ItemIndex=2 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO2';
         end
      else if CB_ITEM03_CUSTO.ItemIndex=3 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECO3';
         end
      else if CB_ITEM03_CUSTO.ItemIndex=4 then
         begin
         mForPcoCusto:=mForPcoCusto+'PDPRECOC';
         end;

// TERMINO DO ITEM 03
      mcinst2:='';
      if ValFloat(PERC_CUSTO_FOR.Text)<>0 then
         begin
         mForPcoCusto:='('+mForPcoCusto+')';
//         mForPco01:='PDPRECO1';
         mcinst2:='';
         if Tipo_Formula.ItemIndex=0 then
          begin
           if CB_FAT03CUSTO.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+'('+mForPcoCusto+'*'+mudaVP(PERC_CUSTO_FOR.Text)+'/100 )'
           else if CB_FAT02_CUSTO.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+'('+mForPcoCusto+'*'+mudaVP(PERC_CUSTO_FOR.Text)+'/100 )'
           else if CB_FAT01PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+'('+mForPcoCusto+'*'+mudaVP(PERC_CUSTO_FOR.Text)+'/100 )';
           end
         else
           begin
           if CB_FAT03CUSTO.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+mudaVP(PERC_CUSTO_FOR.Text)
           else if CB_FAT02_CUSTO.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+mudaVP(PERC_CUSTO_FOR.Text)
           else if CB_FAT01PCO03.ItemIndex<>0 then
              mcinst2:=CB_FAT03CUSTO.Text+mudaVP(PERC_CUSTO_FOR.Text);
           end;
//        mForPcoCusto:='PDPRECO3='+mForPcoCusto+mcinst2;
        end;
      if trim(mForPcoCusto)<>'' then
        mForPcoCusto:='PDPRECOC='+fCaseValor( mForPcoCusto+' '+mcinst2);
      end
   else
      begin
      if Tipo_Formula.ItemIndex=0 then
        begin
        mForPcoCusto:='PDPRECOC='+fCaseValor('PDPRECOC'+iif(CB_DIM_CUSTO.Checked,'-','+')+
                             '(PDPRECOC*'+mudaVP(PERC_CUSTO.Text)+'/100)');
        end
      else
        begin
        mForPcoCusto:='PDPRECOC='+fCaseValor('PDPRECOC'+iif(CB_DIM_CUSTO.Checked,'-','+')+mudaVP(PERC_CUSTO_FOR.Text));
        end;
      end;
   end;
end;



function TFrm_Pro_AjPcoInd.fValidarRequisitos: boolean;
begin
result:=true;
if CB_PCO01.Checked then
   begin
   if CB_FORMPCO01.Checked then
      begin
      if (CB_ITEM01PCO01.ItemIndex=0) and
         (CB_ITEM02PCO01.ItemIndex=0) and
         (CB_ITEM03PCO01.ItemIndex=0) then
         begin
         fmensagem('Favor Criar um Formula Valida!',0,['0'],0);
         result:=false;

         exit;
         end;
      if (CB_ITEM01PCO01.ItemIndex<>0) and
         (CB_ITEM02PCO01.ItemIndex<>0) and
         (CB_FAT01PCO01.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 1 e Item preco 2!',0,['0'],0);
         CB_FAT01PCO01.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM02PCO01.ItemIndex<>0) and
         (CB_ITEM03PCO01.ItemIndex<>0) and
         (CB_FAT02PCO01.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 2 e Item preco 3!',0,['0'],0);
         CB_FAT02PCO01.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM03PCO01.ItemIndex<>0) and
         (ValFloat(PERC01_FOR.Text)<>0) and
         (CB_FAT03PCO01.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 3 e o Percentual!',0,['0'],0);
         CB_FAT03PCO01.SetFocus;
         result:=false;
         exit;
         end;
      if (ValFloat(PERC01_FOR.Text)<>0) and
         (CB_FAT03PCO01.ItemIndex=0) then

         begin
         fmensagem('Favor Selecionar um sinal Antes do Percentual!',0,['0'],0);
         CB_FAT03PCO01.SetFocus;
         result:=false;
         exit;
         end;

      end
   else
      begin
      if ValFloat(PERC01.Text)=0 then
         begin
         fmensagem('Favor Colocar um percentual Valido!',0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   end;


if CB_PCO02.Checked then
   begin
   if CB_FORMPCO02.Checked then
      begin
      if (CB_ITEM01PCO02.ItemIndex=0) and
         (CB_ITEM02PCO02.ItemIndex=0) and
         (CB_ITEM03PCO02.ItemIndex=0) then
         begin
         fmensagem('Favor Criar um Formula Valida!',0,['0'],0);
         result:=false;
         exit;
         end;
      if (CB_ITEM01PCO02.ItemIndex<>0) and
         (CB_ITEM02PCO02.ItemIndex<>0) and
         (CB_FAT01PCO02.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 1 e Item preco 2!',0,['0'],0);
         CB_FAT01PCO02.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM02PCO02.ItemIndex<>0) and
         (CB_ITEM03PCO02.ItemIndex<>0) and
         (CB_FAT02PCO02.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 2 e Item preco 3!',0,['0'],0);
         CB_FAT02PCO02.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM03PCO02.ItemIndex<>0) and
         (ValFloat(PERC02_FOR.Text)<>0) and
         (CB_FAT03PCO02.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 3 e o Percentual!',0,['0'],0);
         CB_FAT03PCO02.SetFocus;
         result:=false;
         exit;
         end;
      if (ValFloat(PERC02_FOR.Text)<>0) and
         (CB_FAT03PCO02.ItemIndex=0) then

         begin
         fmensagem('Favor Selecionar um sinal Antes do Percentual!',0,['0'],0);
         CB_FAT03PCO02.SetFocus;
         result:=false;
         exit;
         end;

      end
   else
      begin
      if ValFloat(PERC02.Text)=0 then
         begin
         fmensagem('Favor Colocar um percentual Valido!',0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   end;


if CB_PCO03.Checked then
   begin
   if CB_FORMPCO03.Checked then
      begin
      if (CB_ITEM01PCO03.ItemIndex=0) and
         (CB_ITEM02PCO03.ItemIndex=0) and
         (CB_ITEM03PCO03.ItemIndex=0) then
         begin
         fmensagem('Favor Criar um Formula Valida!',0,['0'],0);
         result:=false;
         exit;
         end;
      if (CB_ITEM01PCO03.ItemIndex<>0) and
         (CB_ITEM02PCO03.ItemIndex<>0) and
         (CB_FAT01PCO03.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 1 e Item preco 2!',0,['0'],0);
         CB_FAT01PCO03.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM02PCO03.ItemIndex<>0) and
         (CB_ITEM03PCO03.ItemIndex<>0) and
         (CB_FAT02PCO03.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 2 e Item preco 3!',0,['0'],0);
         CB_FAT02PCO03.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM03PCO03.ItemIndex<>0) and
         (ValFloat(PERCO3_FOR.Text)<>0) and
         (CB_FAT03PCO03.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 3 e o Percentual!',0,['0'],0);
         CB_FAT03PCO03.SetFocus;
         result:=false;
         exit;
         end;
      if (ValFloat(PERCO3_FOR.Text)<>0) and
         (CB_FAT03PCO03.ItemIndex=0) then

         begin
         fmensagem('Favor Selecionar um sinal Antes do Percentual!',0,['0'],0);
         CB_FAT03PCO03.SetFocus;
         result:=false;
         exit;
         end;

      end
   else
      begin
      if ValFloat(PERC03.Text)=0 then
         begin
         fmensagem('Favor Colocar um percentual Valido!',0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   end;




if CB_PCO_CUSTO.Checked then
   begin
   if CB_FORMCUSTO.Checked then
      begin
      if (CB_ITEM01_CUSTO.ItemIndex=0) and
         (CB_ITEM02_CUSTO.ItemIndex=0) and
         (CB_ITEM03_CUSTO.ItemIndex=0) then
         begin
         fmensagem('Favor Criar um Formula Valida!',0,['0'],0);
         result:=false;
         exit;
         end;
      if (CB_ITEM01_CUSTO.ItemIndex<>0) and
         (CB_ITEM02_CUSTO.ItemIndex<>0) and
         (CB_FAT01_CUSTO.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 1 e Item preco 2!',0,['0'],0);
         CB_FAT01_CUSTO.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM02_CUSTO.ItemIndex<>0) and
         (CB_ITEM03_CUSTO.ItemIndex<>0) and
         (CB_FAT02_CUSTO.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 2 e Item preco 3!',0,['0'],0);
         CB_FAT02_CUSTO.SetFocus;
         result:=false;
         exit;
         end;

      if (CB_ITEM03_CUSTO.ItemIndex<>0) and
         (ValFloat(PERC_CUSTO.Text)<>0) and
         (CB_FAT03CUSTO.ItemIndex=0) then
         begin
         fmensagem('Favor Selecionar um sinal Entre o Item preco 3 e o Percentual!',0,['0'],0);
         CB_FAT03CUSTO.SetFocus;
         result:=false;
         exit;
         end;
      if (ValFloat(PERC_CUSTO_FOR.Text)<>0) and
         (CB_FAT03CUSTO.ItemIndex=0) then

         begin
         fmensagem('Favor Selecionar um sinal Antes do Percentual!',0,['0'],0);
         CB_FAT03PCO03.SetFocus;
         result:=false;
         exit;
         end;

      end
   else
      begin
      if ValFloat(PERC_CUSTO.Text)=0 then
         begin
         fmensagem('Favor Colocar um percentual Valido!',0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   end;

end;


function TFrm_Pro_AjPcoInd.fGerarFiltros: String;
var
mFiltrosData: String;
begin
result:='';


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then result:=result+' and PDCODFOR '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then result:=result+' and PDCODTIP '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then result:=result+' and PDCODGRU '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then result:=result+' and PDCODCON '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then result:=result+' and PDCODRAM '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then result:=result+' and PDCODPRO '+mcinst2;

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   begin
   result:=result+' and PDNIVEL '+mcinst2;
   mcinst:=' and ';
   end;

if lowercase(cb_marca.Text)<>'todos' then
   begin
   result:=result+' and PDMARCA='+QuotedStr(cb_marca.Text);
   end;
if edt_dataEntrada_ini.Date>pdatanula then
   begin
   result:=result+fFormatdatetimeParaConsulta('PDDTULTENT',true,edt_dataEntrada_ini.Date);
   end;

if edt_dataEntrada_fin.Date>pdatanula then
   begin
   result:=result+fFormatdatetimeParaConsulta('PDDTULTENT',false,edt_dataEntrada_fin.Date);
   end;

mFiltrosData:='';

if edt_data_ajuste_ini.Date>pdatanula then
   begin
   mFiltrosData:=mFiltrosData+fFormatdatetimeParaConsulta('PDDTUATP1',true,edt_data_ajuste_ini.Date);
   end;

if edt_data_ajuste_fin.Date<pdatanula then
   begin
   mFiltrosData:=mFiltrosData+fFormatdatetimeParaConsulta('PDDTUATP1',false,edt_data_ajuste_fin.Date);
   end;

if trim(mFiltrosData)<>'' then
   begin
   result:=result+' and not (1=1 ' + mFiltrosData +')';
   end;

end;
procedure TFrm_Pro_AjPcoInd.sbnVerResumoClick(Sender: TObject);
var
mComandoSql: String;
x_field: integer;
begin
if not (CB_PCO01.Checked) and not (CB_PCO02.Checked) and not (CB_PCO03.Checked) and not (CB_PCO_CUSTO.Checked) then
   begin
   fmensagem('Favor Selecionar um preco ha ser alterado!',0,['0'],0);
   exit;
   end;
if not fValidarRequisitos then
   exit;


fGerarCriteritosAjustes;
// ermino custo

if (trim(mForPco01)='') and (trim(mForPco02)='') and (trim(mForPco03)='') and (trim(mForPcoCusto)='') then
   begin
   FMensagem('Não ha uma instrução Válida!',0,['0'],0);
   exit;
   end;

mComandoSql:='Select PDNOME,PDCODPRO,PDDTULTENT ';



if trim(mForPco01)<>'' then
   begin
   mComandoSql:=mComandoSql+' ,PDPRECO1 AS PRECO1_ATUAL '
                +','+fSubstituirtexto(mForPco01,'PDPRECO1=','')+' as PRECO1_NOVO '

   end;

if trim(mForPco02)<>'' then
   begin
   mComandoSql:=mComandoSql+' ,PDPRECO2 AS PRECO2_ATUAL '
                +','+fSubstituirtexto(mForPco02,'PDPRECO2=','')+' as PRECO2_NOVO '
   end;

if trim(mForPco03)<>'' then
   begin
   mComandoSql:=mComandoSql+' ,PDPRECO3 AS PRECO3_ATUAL '
                +','+fSubstituirtexto(mForPco03,'PDPRECO3=','')+' as PRECO3_NOVO '
   end;

if trim(mForPcoCusto)<>'' then
   begin
   mComandoSql:=mComandoSql+' ,PDPRECOC AS PCOCUS_ATUAL '
                +','+FSubstituirtexto(mForPcoCusto,'PDPRECOC=','')+' as PCOCUS_NOVO '
   end;
mComandoSql:=mComandoSql+',PDDTULTENT ';
mComandoSql:=mComandoSql+' from cadpro WHERE 1=1 ';

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   mComandoSql:=mComandoSql+mcinst+' PDCODEMP=0'+IntTostr(codemp);

mComandoSql:=mComandoSql+fGerarFiltros;

Application.createform(TFrm_Pro_AjPcoInd_Preview, Frm_Pro_AjPcoInd_Preview);
Frm_Pro_AjPcoInd_preview.Qr_Preview.sql.clear;
Frm_Pro_AjPcoInd_preview.Qr_Preview.sql.Add(mComandoSql);


// ex_erroSql_Novo(Frm_Pro_AjPcoInd_Preview.Qr_Preview,31545,'SGE','CADMOV_PROD_REPETIDO');


try
   Frm_Pro_AjPcoInd_preview.Qr_Preview.Open;
   for x_field:=1 to Frm_Pro_AjPcoInd_preview.Qr_Preview.FieldCount-1 do
      begin
      if Frm_Pro_AjPcoInd_preview.Qr_Preview.fields[x_field].DataType in [ftfloat,ftcurrency] then
         (Frm_Pro_AjPcoInd_Preview.Qr_Preview.Fields[x_field] as TFloatField).DisplayFormat:=mcasaspu;
      end;
   Frm_Pro_AjPcoInd_Preview.ShowModal;
except on e : exception do
   begin
   ex_erroSql_Novo(Frm_Pro_AjPcoInd_Preview.Qr_Preview,31545,'SGE','CADMOV_PROD_REPETIDO');
   end;
   end;

freeandnil(Frm_Pro_AjPcoInd_Preview);





end;

end.

