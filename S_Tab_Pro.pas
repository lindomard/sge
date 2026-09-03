unit S_Tab_Pro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_For, Gauges, S_SQL, Mask, lerarq,S_Tab05,S_Gpro,S_Ram,S_TCon,S_TipPro,
  S_Pro, Grids, DBGrids, ComCtrls, CheckLst, S_SelEmp,s_lerarq_geral;

type
  TFrm_Tab_Pro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Sair: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    St_NomRel: TStaticText;
    PageControl1: TPageControl;
    ts_filtros: TTabSheet;
    ts_Filtros_Ad: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    NUMCOL: TEdit;
    INTCOL: TEdit;
    RG_TPCOL: TRadioGroup;
    CB_AVPTPI: TCheckBox;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    CB_SGRUPO: TCheckBox;
    Label14: TLabel;
    CODPRO: TEdit;
    OMITIR_PRO: TCheckBox;
    lbx_codpro: TListBox;
    ts_filtroscli: TTabSheet;
    Label13: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label3: TLabel;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    Label4: TLabel;
    CODRAM: TEdit;
    OMITIR_RAM: TCheckBox;
    lbx_codram: TListBox;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    Label5: TLabel;
    OMITIR_CON: TCheckBox;
    Label15: TLabel;
    CODTIP: TEdit;
    OMITIR_TIP: TCheckBox;
    lbx_codtip: TListBox;
    Label9: TLabel;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    ts_outros: TTabSheet;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    MES: TEdit;
    ANO: TEdit;
    RG_EST: TRadioGroup;
    CLBStatus: TCheckListBox;
    Label17: TLabel;
    CLBNivel: TCheckListBox;
    Label12: TLabel;
    RG_SITUACAO: TRadioGroup;
    bb_exportar: TBitBtn;
    procedure SairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBNivelClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bb_exportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure fAjustarDataSaida;


    function fAbrirBanco(): boolean;


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_Pro: TFrm_Tab_Pro;
  mCampoEst: String;
implementation

uses S_Per2, S_Cli, flerarq, func_excecoes, Func2;


{$R *.dfm}

procedure TFrm_Tab_Pro.SairClick(Sender: TObject);
begin
Close;
end;

function TFrm_Tab_Pro.fAbrirBanco(): boolean;
var
x: Integer;

begin
result:=true;
Frm_SQL.STG_COND.RowCount:=1;
Frm_SQl.STG_COND.rows[0].Clear;
if Trim(MDT1.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT1.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT2.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;



if RG_EST.ItemIndex<>0 then
   begin
   if LowerCase(copy(mCampoEst,1,5))='clqtd' then
      begin
      if (RG_EST.ItemIndex=5) or (RG_EST.ItemIndex=6) then
         mCampoEst:='CLQTDR'
      else if (RG_EST.ItemIndex=3) or (RG_EST.ItemIndex=4) then
         mCampoEst:='CLQTDC'
      else
         mCampoEst:='CLQTD';
      end
   else
      begin
      if (RG_EST.ItemIndex=5) or (RG_EST.ItemIndex=6) then
         mCampoEst:='CESALDOR'
      else if (RG_EST.ItemIndex=3) or (RG_EST.ItemIndex=4) then
         mCampoEst:='CESALDOC'
      else
         mCampoEst:='CESALDO';
      end;
   end;

if (RG_EST.ItemIndex=1) or (RG_EST.ItemIndex=3) or (RG_EST.ItemIndex=5) then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=mCampoEst;
   Frm_SQl.STG_COND.Cells[02,x-1]:='<>';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:='0';
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if (RG_EST.ItemIndex=2) or (RG_EST.ItemIndex=4) or (RG_EST.ItemIndex=6) then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=mCampoEst;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:='0';
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;


x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      fMensagem('Mês Invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;
mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODPRO '+mcinst2;
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODFOR '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODGRU '+mcinst2;
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODRAM '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODCON '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODTIP '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' '+DM1.Tb_TDVCATCFCCAMPO.Value+' '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDNIVEL '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDSTATUS  '+mcinst2;
   mcinst:=' and ';
   end;

if  (DM1.Tb_TDVCATCTAB01.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB02.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB03.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB04.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB05.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB06.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB07.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB08.Value='CADP01') or
    (DM1.Tb_TDVCATCTAB09.Value='CADP01') then
  begin
  mcinst2:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  if trim(mcinst2)<>'' then
     begin
     mcinst4:=mcinst4+mcinst+mcinst2;
     mcinst:=' and ';
     end;
  end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst4,x));
try
   DM2.Qr_ImpRel.Open;
except
   DM2.Qr_ImpRel.SQL.SaveToFile(mpastatemp + 'SQL.txt');
   result:=false;
   end;

if DM2.Qr_ImpRel.Eof then
   begin
   fMensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
   result:=false;
   exit;
   end;

end;



procedure TFrm_Tab_Pro.BitBtn1Click(Sender: TObject);
var
mCampoTeste: String;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      fMensagem('Mês Inválido.',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;



mpaggr:=iif(CB_MPAGGR.Checked,true,false);
mpagsg:=iif(CB_MPAGSG.Checked,true,false);
rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
fnumcol:=StrtoInt('0'+NUMCOL.Text);
fintcol:=StrToInt('0'+INTCOL.Text);
ftpcol :=RG_TPCOL.ItemIndex;
if not fAbrirBanco() then
   exit;

if CB_GRUPO.Checked  then pimpg:=True  else pimpg :=False;
if CB_SGRUPO.Checked then pimpsg:=True else pimpsg:=False;
if CB_AVPTPI.Checked then pavptpi:=true else pavptpi:=False;
if CB_AVPIPF.Checked then pavpipf:= true else pavpipf:=False;
if RG_PERIODO.Visible then
   pperiodo:=fperiodo(0,mdt1.text,mdt2.Text)
else
   pperiodo:='';
plocori:='FRM_TAB_PRO';
GroupBox2.Visible:=True;
//*****************************************************************************
//********************** Vendas do Periodo inicio******************************
//*****************************************************************************
pVdaPer:=fVerificaVendas('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,MDT1.Text,MDT2.Text);
//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************

ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Pro.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

St_NomRel.Caption:='Relatorio: '+per2_NomeRel;

fltdvca(0,0,per2_Doc,per2_NomeRel,'CADTDV');

if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   MDT1.Text:=FormatDatetime(fdt2, date);
   MDT2.Text:=FormatDatetime(fdt2, date);
   end;

if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   MES.Text      :=FormatDateTime('mm',Date);
   ANO.Text      :=FormatDateTime('yyyy',date);
   MES.Visible   :=True;
   ANO.Visible   :=True;
   label1.Visible:=True;
   label2.Visible:=True;
   end;

if DM1.Tb_TDVCATCFILCLI.AsInteger>0 then
   ts_filtroscli.TabVisible:=true
else
   ts_filtroscli.TabVisible:=false;

mCampoEst:='';

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   if (DM1.Tb_TDVCATCTAB01.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB02.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB03.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB04.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB05.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB06.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB07.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB08.Value='CADLGC') or
      (DM1.Tb_TDVCATCTAB09.Value='CADLGC') then
      begin
      mCampoEst:='CLQTD';
      RG_EST.Visible:=True;
      end
   else
      RG_EST.Visible:=false;
   end;
   
if trim(mCampoEst)='' then
   begin
   if (DM1.Tb_TDVCATCTAB01.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB02.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB03.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB04.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB05.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB06.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB07.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB08.Value='CADEST') or
      (DM1.Tb_TDVCATCTAB09.Value='CADEST') then
      begin
      RG_EST.Visible:=True;
      mCampoEst:='CESALDO';
      end
   else
      RG_EST.Visible:=false;
   end;
NUMCOL.Text       :=DM1.Tb_TDVCATCNUMCOL.AsString;
INTCOL.Text       :=DM1.Tb_TDVCATCINTCOL.AsString;
RG_TPCOL.ItemIndex:=DM1.Tb_TDVCATCTPCOL.AsInteger;
CB_GRUPO.Checked  :=DM1.Tb_TDVCATCIMPG.Value=0;
CB_SGRUPO.Checked :=DM1.Tb_TDVCATCIMPSG.Value=0;
CB_AVPTPI.Checked :=DM1.Tb_TDVCATCAVPTPI.Value=0;
CB_AVPIPF.Checked :=DM1.Tb_TDVCATCAVPIPF.Value=0;
if DM1.Tb_TDVCATCMPAGGR.Value=1 then
   CB_MPAGGR.Checked:=True
else
   CB_MPAGGR.Checked:=False;
end;

procedure TFrm_Tab_Pro.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_Pro.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;

end;
procedure TFrm_Tab_Pro.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Pro.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   fMensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Pro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_Tab_Pro.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
      if valfloat(CODPRO.Text)=0 then
         begin
         fMensagem('Produto não cadastrado!',0,['0'],0);

         CODPRO.SetFocus;
         exit;
         end
      else
         begin
         if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
            begin
            fMensagem('Produto não cadastrado!',0,['0'],0);
            CODPRO.SetFocus;
            exit;
            end;
         end
      end;
   lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                +' - '+DM1.Query1.Fields[0].AsString);
   CODPRO.text := '';
   CODPRO.SetFocus;
   end;
end;

procedure TFrm_Tab_Pro.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Tab_Pro.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro','');
   key:=0;
   end;

end;

procedure TFrm_Tab_Pro.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro',key);
      key:=#0;
      CODPROEXIT(SELF);
      end;
   end;
end;

procedure TFrm_Tab_Pro.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Tab_Pro',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Pro.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      fMensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pro.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Tab_Pro.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fMensagem('Grupo não cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGRU.text := '';
      CODGRU.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_Tab_Pro',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Pro.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_Tab_Pro.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if Trim(CODRAM.Text)<>'' then
   begin
   if not flqr1('RNOME','R','CADRAM','N','RCODRAM',CODRAM.Text) then
      begin
      fMensagem('Ramo não cadastrado!',0,['0'],0);
      CODRAM.SetFocus;
      end
   else
      begin
      lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRAM.text := '';
      CODRAM.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pro.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_Tab_Pro',Key);
   if trim(CODRAM.Text)<>'' then
      CODRAMExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Pro.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);


end;

procedure TFrm_Tab_Pro.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if Trim(CODCON.Text)<>'' then
   begin
   if not flqr1('CNOME','C','CADCON','N','CCODCON',CODCON.Text) then
      begin
      fMensagem('Controle não cadastrado!',0,['0'],0);
      CODCON.SetFocus;
      end
   else
      begin
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCON.text := '';
      CODCON.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pro.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_Tab_Pro.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
      CODCON.Text:=fChamaTCon(0,'frm_Tab_Pro',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
      key:=#0;
   end;

end;

procedure TFrm_Tab_Pro.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if Trim(CODTIP.Text)<>'' then
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTIP.Text) then
      begin
      fMensagem('Tipo Não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end
   else
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTIP.text := '';
      CODTIP.SetFocus;
      end;
   end;



end;

procedure TFrm_Tab_Pro.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_Tab_Pro',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Pro.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_Tab_Pro.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fMensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pro.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Tab_Pro',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Tab_Pro.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Tab_Pro.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_Tab_Pro.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_Tab_Pro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Tab_Pro.FormShow(Sender: TObject);
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
fAjustarDataSaida;

end;

procedure TFrm_Tab_Pro.fAjustarDataSaida;
var
query_atupro: tQuery;
begin
query_atupro:=tQuery.create(nil);
query_atupro.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_atupro.sql.clear;
query_atupro.sql.add(' MERGE INTO CADPRO t1 '
                    +'       USING ( '
                    +' select P2CODPRO AS CODPRO, max(P1DATAP) AS DATAVDA, null as DATA_COMPRA from cadp01 '
                    +' ,CADP02 '
                    +' WHERE P2CODEMP=P1CODEMP AND P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ '
                    +' AND P1EMIDOC>0 AND P1STATUS<7 '
                    +' GROUP BY P2CODPRO '
                    +'                ) ss '
                    +'                 ON ( ss.CODPRO=t1.PDCODPRO ) '
                    +'                 WHEN MATCHED THEN '
                    +'                 UPDATE SET PDDTULTSAI=DATAVDA ');
try
   query_atupro.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_atupro,938,'_stru'+e.message,'user');
   end;
   end;
query_atupro.Close;
freeandnil(query_atupro);


end;



procedure TFrm_Tab_Pro.bb_exportarClick(Sender: TObject);
begin
bb_exportar.Enabled:=false;

if not fAbrirBanco() then
   exit;

fGerarPlanilhaExcel([],DM2.src_ImpRel);
bb_exportar.Enabled:=true;

end;

end.

