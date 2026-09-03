unit S_Producao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, Grids, Buttons,db,dbtables,func,
  lerarq,S_DM1,S_DM3,S_Pro,S_Prod_Loc,S_Impres,S_ImpPed, s_lerarq_geral;

type
  TFrm_Producao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    MCHAVE: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    MDATAPREV: TMaskEdit;
    lbl_numdoc: TLabel;
    MNUMLOT: TEdit;
    lbl_dtvcto: TLabel;
    MDATAVEN: TMaskEdit;
    Label6: TLabel;
    MNOME: TEdit;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    MCODPRO: TEdit;
    LGRADE: TLabel;
    MGRADE: TEdit;
    MNOMPRO: TEdit;
    Label9: TLabel;
    MUND: TEdit;
    Label10: TLabel;
    MQTDPREV: TEdit;
    lbl_PU: TLabel;
    MPU: TEdit;
    lbl_TOTAL: TLabel;
    PRO_GRAVAR: TBitBtn;
    PRO_EDITAR: TBitBtn;
    PRO_CANCELAR: TBitBtn;
    PRO_EXCLUIR: TBitBtn;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    lbl_TOTPREAL: TLabel;
    Label19: TLabel;
    lbl_TOTMPREAL: TLabel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    lbl_TOTPPREV: TLabel;
    Label15: TLabel;
    lbl_TOTMPPREV: TLabel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBCALCULAR: TBitBtn;
    BBCONFIRMAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    MITENSPPREV: TStaticText;
    MQTDPPREV: TStaticText;
    MTOTPPREV: TStaticText;
    MITENSMPPREV: TStaticText;
    MTOTMPPREV: TStaticText;
    MQTDMPPREV: TStaticText;
    MTOTMPREAL: TStaticText;
    MQTDMPREAL: TStaticText;
    MITENSMPREAL: TStaticText;
    MQTDPREAL: TStaticText;
    MITENSPREAL: TStaticText;
    MTOTPREAL: TStaticText;
    MTOTAL: TStaticText;
    GroupBox5: TGroupBox;
    Label25: TLabel;
    ET_NOMETA: TEdit;
    ET_GRAVAR: TBitBtn;
    ET_EDITAR: TBitBtn;
    ET_CANCELAR: TBitBtn;
    ET_EXCLUIR: TBitBtn;
    Label26: TLabel;
    ET_NOME: TEdit;
    Label27: TLabel;
    ET_DATAI: TMaskEdit;
    Label28: TLabel;
    ET_HORAI: TMaskEdit;
    Label29: TLabel;
    ET_DATAF: TMaskEdit;
    Label30: TLabel;
    ET_HORAF: TMaskEdit;
    STG_ETA: TStringGrid;
    MOBS01: TEdit;
    Label31: TLabel;
    MOBS02: TEdit;
    MOBS03: TEdit;
    MOBS04: TEdit;
    MOBS05: TEdit;
    MOBS06: TEdit;
    MOBS07: TEdit;
    MOBS08: TEdit;
    MOBS09: TEdit;
    MOBS10: TEdit;
    bbImportar: TBitBtn;
    cb_origem: TCheckBox;
    STG_MP: TStringGrid;
    STG_PP: TStringGrid;
    Memo1: TRichEdit;
    tsConfiguracao: TTabSheet;
    CB_MPGRUPO: TCheckBox;
    sbSalvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure MDATAPREVExit(Sender: TObject);
    procedure MNOMEExit(Sender: TObject);
    procedure MNUMLOTExit(Sender: TObject);
    procedure MDATAVENExit(Sender: TObject);
    procedure MCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure MCODPROExit(Sender: TObject);
    procedure MGRADEExit(Sender: TObject);
    procedure MQTDPREVExit(Sender: TObject);
    procedure MPUExit(Sender: TObject);
    procedure PRO_GRAVARClick(Sender: TObject);
    procedure STG_PPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_MPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure PRO_EDITARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure ET_NOMETAExit(Sender: TObject);
    procedure ET_NOMEExit(Sender: TObject);
    procedure ET_DATAIExit(Sender: TObject);
    procedure ET_DATAFExit(Sender: TObject);
    procedure ET_HORAIExit(Sender: TObject);
    procedure ET_HORAFExit(Sender: TObject);
    procedure ET_EDITARClick(Sender: TObject);
    procedure ET_GRAVARClick(Sender: TObject);
    procedure PRO_CANCELARClick(Sender: TObject);
    procedure PRO_EXCLUIRClick(Sender: TObject);
    procedure ET_CANCELARClick(Sender: TObject);
    procedure ET_EXCLUIRClick(Sender: TObject);
    procedure MOBS01Exit(Sender: TObject);
    procedure MOBS02Exit(Sender: TObject);
    procedure MOBS03Exit(Sender: TObject);
    procedure MOBS04Exit(Sender: TObject);
    procedure MOBS05Exit(Sender: TObject);
    procedure MOBS06Exit(Sender: TObject);
    procedure MOBS07Exit(Sender: TObject);
    procedure MOBS08Exit(Sender: TObject);
    procedure MOBS09Exit(Sender: TObject);
    procedure MOBS10Exit(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure STG_MPKeyPress(Sender: TObject; var Key: Char);
    procedure STG_MPExit(Sender: TObject);
    procedure STG_MPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STG_ETAGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure STG_ETASelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STG_ETAExit(Sender: TObject);
    procedure STG_ETAKeyPress(Sender: TObject; var Key: Char);
    procedure STG_ETADrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_PPKeyPress(Sender: TObject; var Key: Char);
    procedure STG_PPExit(Sender: TObject);
    procedure STG_PPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BBCONFIRMARClick(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure CB_MPGRUPOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSalvarClick(Sender: TObject);
    procedure STG_PPEnter(Sender: TObject);
    procedure STG_MPEnter(Sender: TObject);
  private
  function fptotais(ptipo: Integer): Boolean;
  function fptestapag(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
    form_impres_producao: tFrm_Impres;
  end;
  function fpexcluir(ptipo: Integer): Boolean;
  function fpconfirmar(ptipo: Integer): Boolean;
  function fpmatprima(ptipo: Integer): Boolean;


var
  Frm_Producao: TFrm_Producao;
  mop_et: Integer=0;
  mop: Integer=0;
  mqtd: Integer;
  mdtv: String='';
  moper: Integer=0;
  mstatus: Integer=0;
  mlin, mpag: Integer;
  meditar: Boolean=False;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;
  bbadic_true : Boolean=True;

  mcol_cod: Integer=0;
  mcol_grade: Integer=1;
  mcol_qtd: Integer=2;
  mcol_und: Integer=3;
  mcol_desc: Integer=4;
  mcol_pu: Integer=5;
  mcol_vt: Integer=6;
  mcol_qtdProd: Integer=7;

  mcolmp_cod: Integer=0;
  mcolmp_grade: integer=1;
  mcolmp_lote: integer=2;
  mcolmp_dtvcto: integer=3;
  mcolmp_qtdprev:integer=4;
  mcolmp_qtdutil:integer=5;
  mcolmp_und:integer=6;
  mcolmp_desc:integer=7;
  mcolmp_pcouni: integer=8;
  mcolmp_vt: Integer=9;



implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Producao.FormCreate(Sender: TObject);
begin

if flfilpad(0,'_PRODUCAO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MPGRUPO',[]) then
      CB_MPGRUPO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;
if codusr=1111 then
   tsConfiguracao.TabVisible:=true
else
   tsConfiguracao.TabVisible:=false;


STG_PP.RowCount:=2;
STG_PP.rows[1].Clear;
STG_PP.Cells[mcol_cod,0]:='Código';
STG_PP.Cells[mcol_grade,0]:='Grade';
STG_PP.Cells[mcol_qtd,0]:='Quantidade';
STG_PP.Cells[mcol_und,0]:='Und';
STG_PP.Cells[mcol_desc,0]:='Descrição';
STG_PP.Cells[mcol_pu,0]:='Pço Unitário';
STG_PP.Cells[mcol_vt,0]:='Vlr.Total';
STG_PP.Cells[mcol_qtdProd,0]:='Qtd.Prod';

STG_MP.rows[1].Clear;
STG_MP.Cells[mcolmp_cod,0]:='Código';
STG_MP.Cells[mcolmp_grade,0]:='Grade';
STG_MP.Cells[mcolmp_lote,0]:='Lote';
STG_MP.Cells[mcolmp_dtvcto,0]:='Dt.Vcto.';
STG_MP.Cells[mcolmp_qtdprev,0]:='Quantidade';
STG_MP.Cells[mcolmp_qtdutil,0]:='Qtd.Util.';
STG_MP.Cells[mcolmp_und,0]:='Und';
STG_MP.Cells[mcolmp_desc,0]:='Descrição';
STG_MP.Cells[mcolmp_pcouni,0]:='Pço Unitário';
STG_MP.Cells[mcolmp_vt,0]:='Vlr.Total';

if flfilpad(-1,'_PRODUCAO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_COD',[]) then
      STG_PP.ColWidths[mcol_cod]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_GRADE',[]) then
      STG_PP.ColWidths[mcol_grade]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_QTD',[]) then
      STG_PP.ColWidths[mcol_qtd]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_UND',[]) then
      STG_PP.ColWidths[mcol_und]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_DESC',[]) then
      STG_PP.ColWidths[mcol_desc]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_PU',[]) then
      STG_PP.ColWidths[mcol_pu]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_VT',[]) then
      STG_PP.ColWidths[mcol_vt]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOL_QTDPROD',[]) then
      STG_PP.ColWidths[mcol_qtdProd]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_COD',[]) then
      STG_MP.ColWidths[mcolmp_cod]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_GRADE',[]) then
      STG_MP.ColWidths[mcolmp_grade]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_LOTE',[]) then
      STG_MP.ColWidths[mcolmp_lote]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_DTVCTO',[]) then
      STG_MP.ColWidths[mcolmp_dtvcto]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_QTDPREV',[]) then
      STG_MP.ColWidths[mcolmp_qtdprev]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_QTDUTIL',[]) then
      STG_MP.ColWidths[mcolmp_qtdutil]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_UND',[]) then
      STG_MP.ColWidths[mcolmp_und]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_DESC',[]) then
      STG_MP.ColWidths[mcolmp_desc]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_PCOUNI',[]) then
      STG_MP.ColWidths[mcolmp_pcouni]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCOLMP_VT',[]) then
      STG_MP.ColWidths[mcolmp_vt]:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   end;




if ValInt(copy(mpseg,4,2))<>1 then
   begin
   STG_MP.ColWidths[2]:=0;
   STG_MP.ColWidths[3]:=0;
   end;
if ValInt(copy(mpseg,4,2))>0 then
   begin
   lbl_numdoc.Visible:=true;
   MNUMLOT.Visible   :=true;
   lbl_dtvcto.Visible:=true;
   MDATAVEN.Visible  :=true;
   end
else
   begin
   lbl_numdoc.Visible:=false;
   MNUMLOT.Visible   :=false;
   lbl_dtvcto.Visible:=false;
   MDATAVEN.Visible  :=false;
   end;



STG_ETA.RowCount:=2;
STG_ETA.Rows[1].Clear;
STG_ETA.Cells[0,0]:='Descrição da Etapa';
STG_ETA.Cells[1,0]:='Nome do Responsavel';
STG_ETA.Cells[2,0]:='Dt.Inicio';
STG_ETA.Cells[3,0]:='Hr.Inicio';
STG_ETA.Cells[4,0]:='Dt.Concl.';
STG_ETA.Cells[5,0]:='Hr.Concl.';
if StrToInt('0'+copy(mpseg,4,2))<>02 then  // grade cores tamanho
   begin
   LGRADE.Visible:=False;
   MGRADE.Visible:=False;
   STG_PP.ColWidths[1]:=0;
   STG_MP.ColWidths[1]:=0;
   end;
if flcadactab(0,0,IntToStr(codcar),'CADOP') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   if DM4.Tb_AcTabAT_ADIC.Value=1 then
      bbadic_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbrel_true:=true;
   bbadic_true:=true;

   end;


if not bbadic_true then
   begin
   lbl_TOTMPREAL.Visible:=false;
   lbl_TOTMPPREV.Visible:=false;
   lbl_TOTPREAL.Visible :=false;
   lbl_TOTPPREV.Visible :=false;

   MTOTMPREAL.Visible:=false;
   MTOTMPPREV.Visible:=false;
   MTOTPREAL.Visible :=false;
   MTOTPPREV.Visible :=false;

   lbl_PU.Visible       :=false;
   MPU.Visible          :=false;
   lbl_TOTAL.Visible    :=false;
   MTOTAL.Visible       :=false;
   STG_PP.ColWidths[mcol_pu]:=0;
   STG_PP.ColWidths[mcol_vt]:=0;
   STG_MP.ColWidths[mcolmp_pcouni]:=0;
   STG_MP.ColWidths[mcolmp_vt]    :=0;
   end;


BBINCLUIR.Enabled:=bbinc_true;


end;

procedure TFrm_Producao.MDATAExit(Sender: TObject);
begin
if (BBSAIR.Focused) or (BBLIMPAR.Focused) then
   exit;
Try
   MDATA.Text:=FormatDateTime(fdt2, StrToDate(MDATA.Text));
except
   fMensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;

end;

procedure TFrm_Producao.MDATAPREVExit(Sender: TObject);
begin
if Trim(MDATAPREV.Text)<>'/  /' then
   begin
   Try
      MDATAPREV.Text:=FormatDateTime(fdt2, StrToDate(MDATAPREV.Text));
   Except
      fMensagem('Data Prevista Invalida!',0,['0'],0);
      MDATAPREV.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.MNOMEExit(Sender: TObject);
begin
if not fvertam(MNOME.Text,60) then
   MNOME.SetFocus;
end;

procedure TFrm_Producao.MNUMLOTExit(Sender: TObject);
begin
if not fvertam(MNUMLOT.Text,20) then
   MNUMLOT.SetFocus;

end;

procedure TFrm_Producao.MDATAVENExit(Sender: TObject);
begin
if Trim(MDATAVEN.Text)<>'/  /' then
   begin
   Try
      MDATAVEN.Text:=FormatDateTime(fdt2, StrToDate(MDATAVEN.Text));
   Except
      fMensagem('Data de Vencimento Invalida!',0,['0'],0);
      MDATAVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.MCODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='(PDNIVEL=0 OR PDNIVEL=3)';
//   DM1.Tb_Pro.Filtered:=True;
   MCODPRO.Text:=fChamaPro(0,'Frm_Producao',key);
   key:=#0;
   DM1.Tb_Pro.Filtered:=False;
   end;

end;

procedure TFrm_Producao.MCODPROExit(Sender: TObject);
var
x: Integer;
begin
if (PRO_CANCELAR.Focused) or (BBSAIR.Focused) or (ValFloat(MCODPRO.Text)=0) then
   exit;
MCODPRO.Text:=FloatToStr(ValFloat(MCODPRO.Text));
if not flcadpro(1,0,0,Trim(MCODPRO.Text)) then
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   MCODPRO.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      fMensagem('Este não é um produto válido!',0,['0'],0);
      MCODPRO.SetFocus;
      exit;
      end;

   MNOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   MUND.Text   :=DM1.Tb_ProPDUND.Value;
   if DM1.Tb_ProPDPRECOC.Value>0 then
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECOC.Value)
   else if DM1.Tb_ProPDUCPR.Value>0 then
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDUCPR.Value)
   else
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECO1.Value);
   MTOTAL.Caption    :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

   if StrToInt('0'+copy(mpseg,4,2))<>02 then  // grade cores tamanho
      begin
      if not flcadcomp(0,-1,Trim(MCODPRO.Text),Trim(MGRADE.Text),'') then
         begin
         fMensagem('Produto sem Formula de Fabricação, criar formula primeiro!',0,['0'],0);
         MCODPRO.SetFocus;
         exit;
         end;

      for x:=1 to STG_PP.RowCount-1 do
         begin
         if Trim(STG_PP.Cells[mcol_cod,x])='' then
            continue;
         if (mop=1) and (x=mqtd) then
            Continue;
         if (trim(Mcodpro.Text)=trim(STG_PP.Cells[mcol_cod,x])) then
            begin
            if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
               begin
               STG_PP.Row:=x;
               mop:=1;
               MCODPRO.Text  :=STG_PP.Cells[mcol_cod,STG_PP.Row];
               MGRADE.Text   :=STG_PP.Cells[mcol_grade,STG_PP.Row];
               MQTDPREV.Text :=STG_PP.Cells[mcol_qtd,STG_PP.Row];
               MUND.Text     :=STG_PP.Cells[mcol_und,STG_PP.Row];
               MNOMPRO.Text  :=STG_PP.Cells[mcol_desc,STG_PP.Row];
               MPU.Text      :=STG_PP.Cells[mcol_pu,STG_PP.Row];
               MTOTAL.Caption:=STG_PP.Cells[mcol_vt,STG_PP.Row];
               MQTDPREV.Text :=STG_PP.Cells[mcol_qtdProd,STG_PP.Row];
               break;
               end
            else
               begin
               MCODPRO.Text:='';
               MCODPRO.SetFocus;
               break
               end;
            end;
         end;
      end;
   end;
end;

procedure TFrm_Producao.MGRADEExit(Sender: TObject);
var
x: Integer;
begin
if (Mcodpro.Focused) or (PRO_CANCELAR.Focused) then
   exit;

if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(MCODPRO.Text),MGRADE.Text,'') then
      begin
      fMensagem('Grade não Cadastrada!',0,['0'],0);
      MCODPRO.SetFocus;
      exit;
      end;
   if not flcadcomp(0,-1,Trim(MCODPRO.Text),Trim(MGRADE.Text),'') then
      begin
      fMensagem('Produto sem Formula de Fabricação, criar formula primeiro!',0,['0'],0);
      MCODPRO.SetFocus;
      exit;
      end;

   for x:=1 to STG_PP.RowCount-1 do
      begin
      if Trim(STG_PP.Cells[mcol_cod,x])='' then
         continue;
      if (mop=1) and (x=mqtd) then
         Continue;
      if (trim(Mcodpro.Text)=trim(STG_PP.Cells[mcol_cod,x])) and
         (Trim(MGRADE.Text)=Trim(STG_PP.Cells[mcol_grade,x])) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_PP.Row:=x;
            mop:=1;
            MCODPRO.Text  :=STG_PP.Cells[mcol_cod,STG_PP.Row];
            MGRADE.Text   :=STG_PP.Cells[mcol_grade,STG_PP.Row];
            MQTDPREV.Text :=STG_PP.Cells[mcol_qtd,STG_PP.Row];
            MUND.Text     :=STG_PP.Cells[mcol_und,STG_PP.Row];
            MNOMPRO.Text  :=STG_PP.Cells[mcol_desc,STG_PP.Row];
            MPU.Text      :=STG_PP.Cells[mcol_pu,STG_PP.Row];
            MTOTAL.Caption:=STG_PP.Cells[mcol_vt,STG_PP.Row];
            MQTDPREV.Text :=STG_PP.Cells[mcol_qtdProd,STG_PP.Row];
            break;
            end
         else
            begin
            MCODPRO.Text:='';
            MCODPRO.SetFocus;
            break
            end;
         end;
      end;
   end;
end;

procedure TFrm_Producao.MQTDPREVExit(Sender: TObject);
begin
if (MGRADE.Focused) or (MCODPRO.Focused) or (PRO_CANCELAR.Focused) then
   exit;
if ValFloat(MQTDPREV.Text)<=0 then
   begin
   fMensagem('Favor digitar uma quantidade válida!',0,['0'],0);
   MQTDPREV.SetFocus;
   exit;
   end;
MQTDPREV.Text:=FormatFloat(mcasqtd, ValFloat(MQTDPREV.Text));
MTOTAL.Caption    :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

end;

procedure TFrm_Producao.MPUExit(Sender: TObject);
begin
MPU.Text       :=FormatFloat(mcaspuind, ValFloat(MPU.Text));
MTOTAL.Caption :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

end;

procedure TFrm_Producao.PRO_GRAVARClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Trim(MCODPRO.Text)) then
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   MCODPRO.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      fMensagem('Este não é um produto válido!',0,['0'],0);
      MCODPRO.SetFocus;
      exit;
      end;
   end;
if (ValFloat(MCODPRO.Text)<=0) or (Trim(MNOMPRO.Text)='') then
   begin
   fMensagem('Favor Digitar um código Valido',0,['0'],0);
   MCODPRO.Text;
   exit;
   end;
if ValFloat(MQTDPREV.Text)<=0 then
   begin
   fMensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
   MQTDPREV.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG_PP.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_PP.RowCount;
   STG_PP.RowCount:=mqtd+1;
   STG_PP.Rows[mqtd+1].Clear;
   STG_PP.Rows[mqtd].Clear;
   end;
STG_PP.Cells[mcol_cod,mqtd-1]:=MCODPRO.Text;
STG_PP.Cells[mcol_grade,mqtd-1]:=MGRADE.Text;
STG_PP.Cells[mcol_qtd,mqtd-1]:=MQTDPREV.Text;
STG_PP.Cells[mcol_und,mqtd-1]:=MUND.Text;
STG_PP.Cells[mcol_desc,mqtd-1]:=MNOMPRO.Text;
STG_PP.Cells[mcol_pu,mqtd-1]:=MPU.Text;
STG_PP.Cells[mcol_vt,mqtd-1]:=MTOTAL.Caption;
STG_PP.Cells[mcol_qtdProd,mqtd-1]:=MQTDPREV.Text;
if (mop=0) and (mqtd>13) then
   STG_PP.TopRow:=mqtd-12;
mop:=0;
fpmatprima(0);
fptotais(0);
MCODPRO.Text  :='';
MGRADE.Text   :='';
MQTDPREV.Text :='';
MUND.Text     :='';
MNOMPRO.Text  :='';
MPU.Text      :='';
MTOTAL.Caption:='';
MQTDPREV.Text :='';

MCODPRO.SetFocus;

end;

procedure TFrm_Producao.STG_PPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and (ACOL=7)  then
   begin
   if valFloat(STG_PP.Cells[mcol_cod,arow])>0 then
      begin
      STG_PP.Canvas.Brush.Color:=clLime;
      STG_PP.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_PP.Cells[acol,arow]);
      end;
   end;

if ((aCol=0) or (Acol=2) or  (Acol=5) or (Acol=6) or (Acol=7)) then
   begin

//Pega o texto da célula
  Texto := STG_PP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_PP.Canvas.TextWidth(Texto);
  AlturaTexto := STG_PP.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_PP.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_Producao.STG_MPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and (ACOL=5)  then
   begin
   if valFloat(STG_MP.Cells[mcolmp_cod,arow])>0 then
      begin
      STG_MP.Canvas.Brush.Color:=clLime;
      STG_MP.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_MP.Cells[acol,arow]);
      end;
   end;


if ((aCol=0) or (Acol=4) or  (Acol=8) or (Acol=9) or (Acol=5)) then
   begin

//Pega o texto da célula
  Texto := STG_MP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_MP.Canvas.TextWidth(Texto);
  AlturaTexto := STG_MP.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_MP.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_Producao.PRO_EDITARClick(Sender: TObject);
begin
mop :=1;
mqtd:=STG_PP.Row;
MCODPRO.Text  :=STG_PP.Cells[mcol_cod,STG_PP.Row];
MGRADE.Text   :=STG_PP.Cells[mcol_grade,STG_PP.Row];
MQTDPREV.Text :=STG_PP.Cells[mcol_qtd,STG_PP.Row];
MUND.Text     :=STG_PP.Cells[mcol_und,STG_PP.Row];
MNOMPRO.Text  :=STG_PP.Cells[mcol_desc,STG_PP.Row];
MPU.Text      :=STG_PP.Cells[mcol_pu,STG_PP.Row];
MTOTAL.Caption:=STG_PP.Cells[mcol_vt,STG_PP.Row];
MQTDPREV.Text :=STG_PP.Cells[mcol_qtdProd,STG_PP.Row];
MCODPRO.SetFocus;
end;



function fpmatprima(ptipo: Integer): Boolean;
var
x,y: Integer;
mitem: Integer;
mQtdPad,mqtde, mqtdp: Real;
begin
Frm_Producao.STG_MP.RowCount:=2;
Frm_Producao.STG_MP.Rows[1].Clear;
for y:=1 to Frm_Producao.STG_PP.RowCount do
   begin
   if Trim(Frm_Producao.STG_PP.Cells[mcol_cod,y])='' then
      Continue;
   flcadcomp(0,-1,Trim(Frm_Producao.STG_PP.Cells[mcol_cod,y]),Trim(Frm_Producao.STG_PP.Cells[mcol_grade,y]),'');
   if DM1.Tb_PargerPMPDISP.Value=1 then
      begin
      While not DM3.Tb_Comp.Eof do
         begin
         mqtdp:=Arredonda( (DM3.Tb_CompCPQUANT.Value*(ValFloat(Frm_Producao.STG_PP.Cells[mcol_qtd,y]))), DM1.Tb_PargerPCASIND.AsInteger);

         mitem:=0;
         mqtde:=0;
         flqr2('PDNOME,PDUND,PDPRECO1,PDPRECOC,PDUCPR,PDPCOFAB,PDQTDGRML','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODMAT.AsString);
         flcadlgc(0,0,codemp,DM3.Tb_CompCPCODMAT.AsString,'','');
         While not (DM1.Tb_LGC.Eof) and (mqtdp>0) do
            begin
            if DM1.Tb_LGCCLQTD.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLDTVCTO.Value<=pdatanula then
               mdtv:='/  /'
            else
               mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
            if DM1.Tb_LGCCLQTD.Value<mqtdp then
               mqtde:=DM1.Tb_LGCCLQTD.Value
            else
               mqtde:=mqtdp;
            mitem:=0;
            for x:=1 to Frm_Producao.STG_MP.RowCount do
               begin
               if (ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_cod,x])=DM1.Tb_LGCCLCODPRO.Value) and
                  (Trim(Frm_Producao.STG_MP.Cells[mcolmp_lote,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) then
                  begin
                  mitem:=x;
                  Frm_Producao.STG_MP.Cells[mcolmp_cod,x]:=DM3.Tb_CompCPCODMAT.AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_grade,x]:=DM3.Tb_CompCPMPNUM.AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_und,x]:=DM1.Query2.Fields[1].AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_desc,x]:=DM1.Query2.Fields[0].AsString;

                  if DM1.Query2.FieldByName('PDPRECOC').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
                  else if DM1.Query2.FieldByName('PDUCPR').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDUCPR').AsFloat)
                  else if DM1.Query2.FieldByName('PDPCOFAB').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
                  else
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);



                  Frm_Producao.STG_MP.Cells[mcolmp_lote,x]:=DM1.Tb_LGCCLNUMERO.AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_dtvcto,x]:=mdtv;
                  Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x]:=FormatFloat(mcasind, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])+mqtde);
                  Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,x]:=Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x];
                  Frm_Producao.STG_MP.Cells[mcolmp_vt,x]:=Formatfloat(mcasas, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])*ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]));
                  mqtdp:=mqtdp-mqtde;
                  break;
                  end;
               end;
            if mitem=0 then
               begin
               x:=Frm_Producao.STG_MP.RowCount;
               Frm_Producao.STG_MP.RowCount:=x+1;
               Frm_Producao.STG_MP.Rows[x].Clear;
               Frm_Producao.STG_MP.Rows[x+1].Clear;
               x:=x-1;
               Frm_Producao.STG_MP.Cells[mcolmp_cod,x]:=DM3.Tb_CompCPCODMAT.AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_grade,x]:=DM3.Tb_CompCPMPNUM.AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_und,x]:=DM1.Query2.Fields[1].AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_desc,x]:=DM1.Query2.Fields[0].AsString;

               if DM1.Query2.FieldByName('PDPRECOC').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
               else if DM1.Query2.FieldByName('PDUCPR').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDUCPR').AsFloat)
               else if DM1.Query2.FieldByName('PDPCOFAB').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
               else
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);

               Frm_Producao.STG_MP.Cells[mcolmp_lote,x]:=DM1.Tb_LGCCLNUMERO.AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_dtvcto,x]:=mdtv;
               Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x]:=FormatFloat(mcasind, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])+mqtde);
               Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,x]:=Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x];
               Frm_Producao.STG_MP.Cells[mcolmp_vt,x]:=Formatfloat(mcasas, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])*ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]));
               mqtdp:=mqtdp-mqtde;
               end;
            DM1.Tb_LGC.Next;
            end;
         if mqtdp>0 then
            begin
// INICIO
            mitem:=0;
            for x:=1 to Frm_Producao.STG_MP.RowCount do
               begin
               if (ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_cod,x])=DM1.Tb_LGCCLCODPRO.Value) and
                  (Trim(Frm_Producao.STG_MP.Cells[mcolmp_lote,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) then
                  begin
                  mitem:=x;
                  Frm_Producao.STG_MP.Cells[mcolmp_cod,x]:=DM3.Tb_CompCPCODMAT.AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_grade,x]:=DM3.Tb_CompCPMPNUM.AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_und,x]:=DM1.Query2.Fields[1].AsString;
                  Frm_Producao.STG_MP.Cells[mcolmp_desc,x]:=DM1.Query2.Fields[0].AsString;

                  if DM1.Query2.FieldByName('PDPRECOC').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
                  else if DM1.Query2.FieldByName('PDUCPR').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDUCPR').AsFloat)
                  else if DM1.Query2.FieldByName('PDPCOFAB').AsFloat>0 then
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
                  else
                     Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);



                  Frm_Producao.STG_MP.Cells[mcolmp_lote,x]:='';
                  Frm_Producao.STG_MP.Cells[mcolmp_dtvcto,x]:='/  /';
                  Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x]:=FormatFloat(mcasind, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])+mqtdp );
                  Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,x]:=Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x];
                  Frm_Producao.STG_MP.Cells[mcolmp_vt,x]:=Formatfloat(mcasas, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x])*ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_pcouni,x]));
                  mqtdp:=0;
                  break;
                  end;
               end;
            if mqtdp>0 then
               begin
// TERMINO
               mqtde:=mqtdp;
               mitem:=Frm_Producao.STG_MP.RowCount;
               Frm_Producao.STG_MP.RowCount:=mitem+1;
               Frm_Producao.STG_MP.Rows[mitem].Clear;
               Frm_Producao.STG_MP.Rows[mitem+1].Clear;
               Frm_Producao.STG_MP.Cells[mcolmp_cod,mitem-1]:=DM3.Tb_CompCPCODMAT.AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_grade,mitem-1]:=DM3.Tb_CompCPMPNUM.AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_und,mitem-1]:=DM1.Query2.Fields[1].AsString;
               Frm_Producao.STG_MP.Cells[mcolmp_desc,mitem-1]:=DM1.Query2.Fields[0].AsString;

               if DM1.Query2.FieldByName('PDPRECOC').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
               else if DM1.Query2.FieldByName('PDUCPR').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDUCPR').AsFloat)
               else if DM1.Query2.FieldByName('PDPCOFAB').AsFloat>0 then
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
               else
                  Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);

               Frm_Producao.STG_MP.Cells[mcolmp_lote,mitem-1]:='';
               Frm_Producao.STG_MP.Cells[mcolmp_dtvcto,mitem-1]:='/  /';
               Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1]:=FormatFloat(mcasind, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1])+mqtde);
               Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,mitem-1]:=Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1];
               Frm_Producao.STG_MP.Cells[mcolmp_vt,mitem-1]:=Formatfloat(mcasas, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1])*ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]));

               mqtdp:=mqtdp-mqtde;
               end;
            end;
         DM3.Tb_Comp.Next;
         end;
      end
   else
      begin
      While not DM3.Tb_Comp.Eof do
         begin
         mitem:=0;
         for x:=1 to Frm_Producao.STG_MP.RowCount do
            begin
            if (ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_cod,x])=DM3.Tb_CompCPCODMAT.Value) and
               (Trim(Frm_Producao.STG_MP.Cells[mcolmp_grade,x])=Trim(DM3.Tb_CompCPMPNUM.AsString)) then
               begin
               mitem:=x;
               break;
               end;
            end;
         if mitem=0 then
            begin
            mitem:=Frm_Producao.STG_MP.RowCount;
            Frm_Producao.STG_MP.RowCount:=mitem+1;
            Frm_Producao.STG_MP.Rows[mitem].Clear;
            Frm_Producao.STG_MP.Rows[mitem+1].Clear;
            end
         else
            mitem:=mitem+1;
         flqr2('PDNOME,PDUND,PDPRECO1,PDPRECOC,PDUCPR,PDPCOFAB,PDQTDGRML','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODMAT.AsString);

         mqtdp:=Arredonda( (DM3.Tb_CompCPQUANT.Value*(ValFloat(Frm_Producao.STG_PP.Cells[mcol_qtd,y]))), DM1.Tb_PargerPCASIND.AsInteger);
         Frm_Producao.STG_MP.Cells[mcolmp_cod,mitem-1]:=DM3.Tb_CompCPCODMAT.AsString;
         Frm_Producao.STG_MP.Cells[mcolmp_grade,mitem-1]:=DM3.Tb_CompCPMPNUM.AsString;
         Frm_Producao.STG_MP.Cells[mcolmp_und,mitem-1]:=DM1.Query2.Fields[1].AsString;
         Frm_Producao.STG_MP.Cells[mcolmp_desc,mitem-1]:=DM1.Query2.Fields[0].AsString;

         if DM1.Query2.FieldByName('PDPRECOC').AsFloat>0 then
            Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
         else if DM1.Query2.FieldByName('PDUCPR').AsFloat>0 then
            Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDUCPR').AsFloat)
         else if DM1.Query2.FieldByName('PDPCOFAB').AsFloat>0 then
            Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
         else
            Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);
         Frm_Producao.STG_MP.Cells[mcolmp_lote,mitem-1]:='';
         Frm_Producao.STG_MP.Cells[mcolmp_dtvcto,mitem-1]:='/  /';


         Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1]:=FormatFloat(mcasind, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1])
                                  +mqtdp);
         Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,mitem-1]:=Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1];
         Frm_Producao.STG_MP.Cells[mcolmp_vt,mitem-1]:=Formatfloat(mcasas, ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,mitem-1])*ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_pcouni,mitem-1]));
         DM3.Tb_Comp.Next;
         end;
      end;
   end;
result:=True;
end;

procedure TFrm_Producao.BBSAIRClick(Sender: TObject);
begin
close;
end;

function TFrm_Producao.fptotais(ptipo: Integer): Boolean;
var
y: Integer;
mqtdp,mqtdr: Real;
mtotalp,mtotalr: Real;
begin
mqtdp:=0;
mqtdr:=0;
mtotalp:=0;
mtotalr:=0;
for y:=1 to STG_PP.RowCount-1 do
   begin
   if Trim(STG_PP.Cells[mcol_cod,y])='' then
      Continue;
   mtotalp:=mtotalp+ValFloat(STG_PP.Cells[mcol_vt,y]);
   mtotalr:=mtotalr+ValFloat(STG_PP.Cells[mcol_qtdProd,y])*ValFloat(STG_PP.Cells[mcol_pu,y]);
   mqtdp:=mqtdp+ValFloat(STG_PP.Cells[mcol_qtd,y]);
   mqtdr:=mqtdr+ValFloat(STG_PP.Cells[mcol_qtdProd,y]);
   end;
MITENSPPREV.Caption:=IntToStr(STG_PP.RowCount-2);
MQTDPPREV.Caption   :=FormatFloat(mcasind, mqtdp);
MTOTPPREV.Caption  :=FormatFloat(mcasas, mtotalp);
MITENSPREAL.Caption:=MITENSPPREV.Caption;
MQTDPREAL.Caption  :=FormatFloat(mcasind, mqtdr);
MTOTPREAL.Caption  :=FormatFloat(mcasas, mtotalr);

mqtdp:=0;
mqtdr:=0;
mtotalp:=0;
mtotalr:=0;
for y:=1 to STG_MP.RowCount-1 do
   begin
   if Trim(STG_MP.Cells[mcolmp_cod,y])='' then
      Continue;
   mtotalp:=mtotalp+ValFloat(STG_MP.Cells[mcolmp_vt,y]);
   mtotalr:=mtotalr+ValFloat(STG_MP.Cells[mcolmp_qtdutil,y])*ValFloat(STG_MP.Cells[mcolmp_pcouni,y]);
   mqtdp:=mqtdp+ValFloat(STG_MP.Cells[mcolmp_qtdprev,y]);
   mqtdr:=mqtdr+ValFloat(STG_MP.Cells[mcolmp_qtdutil,y]);
   end;
MITENSMPPREV.Caption:=IntToStr(STG_MP.RowCount-2);
MQTDMPPREV.Caption  :=FormatFloat(mcasind, mqtdp);
MTOTMPPREV.Caption  :=FormatFloat(mcasas, mtotalp);
MITENSMPREAL.Caption:=MITENSMPPREV.Caption;
MQTDMPREAL.Caption  :=FormatFloat(mcasind, mqtdr);
MTOTMPREAL.Caption  :=FormatFloat(mcasas, mtotalr);
MTOTMPREAL.Caption  :=TrimRight(MTOTMPREAL.Caption);
result:=true;
end;

procedure TFrm_Producao.ET_NOMETAExit(Sender: TObject);
begin
if not fvertam(ET_NOMETA.Text,40) then
   ET_NOMETA.SetFocus;

end;

procedure TFrm_Producao.ET_NOMEExit(Sender: TObject);
begin
if not fvertam(ET_NOME.Text,40) then
   ET_NOME.SetFocus;

end;

procedure TFrm_Producao.ET_DATAIExit(Sender: TObject);
begin
if Trim(ET_DATAI.Text)<>'/  /' then
   begin
   Try
      ET_DATAI.Text:=FormatDateTime(fdt2, StrToDate(ET_DATAI.Text));
   Except
      fMensagem('Data Invalida!',0,['0'],0);
      ET_DATAI.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.ET_DATAFExit(Sender: TObject);
begin
if Trim(ET_DATAF.Text)<>'/  /' then
   begin
   Try
      ET_DATAF.Text:=FormatDateTime(fdt2, StrToDate(ET_DATAF.Text));
   Except
      fMensagem('Data Invalida!',0,['0'],0);
      ET_DATAF.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.ET_HORAIExit(Sender: TObject);
begin
if Trim(ET_HORAI.Text)<>':  :' then
   begin
   Try
      ET_HORAI.Text:=FormatDateTime(fhr, StrToTime(ET_HORAI.Text));
   Except
      fMensagem('Hora Invalida!',0,['0'],0);
      ET_HORAI.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.ET_HORAFExit(Sender: TObject);
begin
if Trim(ET_HORAF.Text)<>':  :' then
   begin
   Try
      ET_HORAF.Text:=FormatDateTime(fhr, StrToTime(ET_HORAF.Text));
   Except
      fMensagem('Hora Invalida!',0,['0'],0);
      ET_HORAF.SetFocus;
      end;
   end;

end;

procedure TFrm_Producao.ET_EDITARClick(Sender: TObject);
begin
mop_et:=1;
mqtd :=STG_ETA.Row;

ET_NOMETA.Text:=STG_ETA.Cells[0,mqtd-1];
ET_NOME.Text  :=STG_ETA.Cells[1,mqtd-1];
ET_DATAI.Text :=STG_ETA.Cells[2,mqtd-1];
ET_HORAI.Text :=STG_ETA.Cells[3,mqtd-1];
ET_DATAF.Text :=STG_ETA.Cells[4,mqtd-1];
ET_HORAF.Text :=STG_ETA.Cells[5,mqtd-1];
ET_NOMETA.SetFocus;

end;

procedure TFrm_Producao.ET_GRAVARClick(Sender: TObject);
begin
if Trim(ET_NOMETA.Text)='' then
   begin
   fMensagem('Descrição da Etapa campo Obrigatório!',0,['0'],0);
   ET_NOMETA.SetFocus;
   exit;
   end;
if Trim(ET_NOME.Text)='' then
   begin
   fMensagem('Nome da Pessoa Responsável campo Obrigatório!',0,['0'],0);
   ET_NOME.SetFocus;
   exit;
   end;
if Trim(ET_DATAI.Text)='/  /' then
   begin
   fMensagem('Data de Inicio do Processo campo Obrigatório!',0,['0'],0);
   ET_DATAI.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG_ETA.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_ETA.RowCount;
   STG_ETA.RowCount:=mqtd+1;
   STG_ETA.Rows[mqtd+1].Clear;
   STG_ETA.Rows[mqtd].Clear;
   end;

STG_ETA.Cells[0,mqtd-1]:=ET_NOMETA.Text;
STG_ETA.Cells[1,mqtd-1]:=ET_NOME.Text;
STG_ETA.Cells[2,mqtd-1]:=ET_DATAI.Text;
STG_ETA.Cells[3,mqtd-1]:=ET_HORAI.Text;
STG_ETA.Cells[4,mqtd-1]:=ET_DATAF.Text;
STG_ETA.Cells[5,mqtd-1]:=ET_HORAF.Text;
if (mop_et=0) and (mqtd>12) then
   STG_ETA.TopRow:=mqtd-11;
mop_et:=0;
ET_NOMETA.Text :='';
ET_NOME.Text   :='';
ET_DATAI.Text  :='';
ET_HORAI.Text  :='';
ET_DATAF.Text  :='';
ET_HORAF.Text  :='';

ET_NOMETA.SetFocus;


end;

procedure TFrm_Producao.PRO_CANCELARClick(Sender: TObject);
begin
mop:=0;
MCODPRO.Text  :='';
MGRADE.Text   :='';
MQTDPREV.Text :='';
MUND.Text     :='';
MNOMPRO.Text  :='';
MPU.Text      :='';
MTOTAL.Caption:='';
MQTDPREV.Text :='';

end;

procedure TFrm_Producao.PRO_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG_PP.Row;

if (STG_PP.Cells[mcol_cod,1]='') or (STG_PP.Cells[mcol_cod,mqtd]='') then
   exit;
if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_PP.RowCount=2 then
   STG_PP.Rows[1].Clear
else
   begin
   for x:=STG_PP.Row to STG_PP.RowCount-2 do
      begin
      STG_PP.Cells[mcol_cod,x]:=STG_PP.Cells[mcol_cod,x+1];
      STG_PP.Cells[mcol_grade,x]:=STG_PP.Cells[mcol_grade,x+1];
      STG_PP.Cells[mcol_qtd,x]:=STG_PP.Cells[mcol_qtd,x+1];
      STG_PP.Cells[mcol_und,x]:=STG_PP.Cells[mcol_und,x+1];
      STG_PP.Cells[mcol_desc,x]:=STG_PP.Cells[mcol_desc,x+1];
      STG_PP.Cells[mcol_pu,x]:=STG_PP.Cells[mcol_pu,x+1];
      STG_PP.Cells[mcol_vt,x]:=STG_PP.Cells[mcol_vt,x+1];
      STG_PP.Cells[mcol_qtdProd,x]:=STG_PP.Cells[mcol_qtdProd,x+1];
      end;
   STG_PP.RowCount:=STG_PP.RowCount-1;
   end;
mop:=0;
fpmatprima(0);
fptotais(0);
end;

procedure TFrm_Producao.ET_CANCELARClick(Sender: TObject);
begin
mop_et:=0;
ET_NOMETA.Text:='';
ET_NOME.Text  :='';
ET_DATAI.Text :='';
ET_HORAI.Text :='';
ET_DATAF.Text :='';
ET_HORAF.Text :='';
end;

procedure TFrm_Producao.ET_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG_ETA.Row;

if (STG_ETA.Cells[0,1]='') or (STG_ETA.Cells[0,mqtd]='') then
   exit;
if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ETA.RowCount=2 then
   STG_ETA.Rows[1].Clear
else
   begin
   for x:=STG_ETA.Row to STG_ETA.RowCount-2 do
      begin
      STG_ETA.Cells[00,x]:=STG_ETA.Cells[00,x+1];
      STG_ETA.Cells[01,x]:=STG_ETA.Cells[01,x+1];
      STG_ETA.Cells[02,x]:=STG_ETA.Cells[02,x+1];
      STG_ETA.Cells[03,x]:=STG_ETA.Cells[03,x+1];
      STG_ETA.Cells[04,x]:=STG_ETA.Cells[04,x+1];
      STG_ETA.Cells[05,x]:=STG_ETA.Cells[05,x+1];
      end;
   STG_ETA.RowCount:=STG_ETA.RowCount-1;
   end;
mop_et:=0;

end;

procedure TFrm_Producao.MOBS01Exit(Sender: TObject);
begin
if not fvertam(MOBS01.Text,60) then
   MOBS01.SetFocus;

end;

procedure TFrm_Producao.MOBS02Exit(Sender: TObject);
begin
if not fvertam(MOBS02.Text,60) then
   MOBS02.SetFocus;

end;

procedure TFrm_Producao.MOBS03Exit(Sender: TObject);
begin
if not fvertam(MOBS03.Text,60) then
   MOBS03.SetFocus;

end;

procedure TFrm_Producao.MOBS04Exit(Sender: TObject);
begin
if not fvertam(MOBS04.Text,60) then
   MOBS04.SetFocus;

end;

procedure TFrm_Producao.MOBS05Exit(Sender: TObject);
begin
if not fvertam(MOBS05.Text,60) then
   MOBS05.SetFocus;

end;

procedure TFrm_Producao.MOBS06Exit(Sender: TObject);
begin
if not fvertam(MOBS06.Text,60) then
   MOBS06.SetFocus;

end;

procedure TFrm_Producao.MOBS07Exit(Sender: TObject);
begin
if not fvertam(MOBS07.Text,60) then
   MOBS07.SetFocus;

end;

procedure TFrm_Producao.MOBS08Exit(Sender: TObject);
begin
if not fvertam(MOBS08.Text,60) then
   MOBS08.SetFocus;

end;

procedure TFrm_Producao.MOBS09Exit(Sender: TObject);
begin
if not fvertam(MOBS09.Text,60) then
   MOBS09.SetFocus;

end;

procedure TFrm_Producao.MOBS10Exit(Sender: TObject);
begin
if not fvertam(MOBS10.Text,60) then
   MOBS10.SetFocus;

end;

procedure TFrm_Producao.BBLIMPARClick(Sender: TObject);
begin
MCHAVE.Text         :='';
MDATA.Text          :='/  /';
MDATAPREV.Text      :='/  /';
MNOME.Text          :='';
MNUMLOT.Text        :='';
cb_origem.Checked   :=false;
MDATAVEN.Text       :='/  /';
MCODPRO.Text        :='';
MUND.Text           :='';
MQTDPREV.Text       :='';
MPU.Text            :='';
MTOTAL.Caption      :='';
MITENSPPREV.Caption :='';
MQTDPPREV.Caption   :='';
MTOTPPREV.Caption   :='';
MITENSMPPREV.Caption:='';
MTOTMPPREV.Caption  :='';
MQTDMPPREV.Caption  :='';
MITENSPREAL.Caption :='';
MQTDPREAL.Caption   :='';
MTOTPREAL.Caption   :='';
MITENSMPREAL.Caption:='';
MQTDMPREAL.Caption  :='';
MTOTMPREAL.Caption  :='';
ET_NOMETA.Text      :='';
ET_NOME.Text        :='';
ET_DATAI.Text       :='/  /';
ET_HORAI.Text       :=':  :';
ET_DATAF.Text       :='/  /';
ET_HORAF.Text       :=':  :';
MOBS01.Text         :='';
MOBS02.Text         :='';
MOBS03.Text         :='';
MOBS04.Text         :='';
MOBS05.Text         :='';
MOBS06.Text         :='';
MOBS07.Text         :='';
MOBS08.Text         :='';
MOBS09.Text         :='';
MOBS10.Text         :='';
mstatus             :=0;
STG_PP.RowCount     :=2;
STG_PP.Rows[1].Clear;
STG_MP.RowCount     :=2;
STG_MP.Rows[1].Clear;
STG_ETA.RowCount    :=2;
STG_ETA.Rows[1].Clear;
GroupBox1.Enabled:=False;
GroupBox3.Enabled:=False;
GroupBox5.Enabled:=False;
TabSheet4.Enabled:=False;
BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
meditar            :=False;
bbImportar.Enabled :=False;
end;

procedure TFrm_Producao.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
moper:=0;
GroupBox1.Enabled:=True;
GroupBox3.Enabled:=True;
GroupBox5.Enabled:=True;
TabSheet4.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=True;
bbImportar.Enabled :=True;
meditar            :=True;
mdata.Text:=FormatdateTime(fdt2, date);
MDATA.SetFocus;
end;

procedure TFrm_Producao.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   Application.CreateForm(TFrm_Prod_Loc, Frm_Prod_loc);
   Frm_Prod_Loc.ShowModal;
   if Trim(Frm_Prod_Loc.MCHAVEI.Text)<>'' then
      MCHAVE.Text:=Frm_Prod_Loc.MCHAVEI.Text;
   end;
DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_LOTSEQ=0'+Inttostr(ls_lotfab)
                   +' and OP1_CODIGO=0'+Trim(MCHAVE.Text));
DM3.Tb_Op01.Open;
if DM3.Tb_Op01.Eof then
   begin
   fMensagem('Chave não Encontrada!',0,['0'],0);
   exit;
   end;
DM3.Tb_Op02.Close;
DM3.Tb_Op02.SQL.Clear;
DM3.Tb_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                   +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       PDNOME '
                   +'       ,PDMARCA '

                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '

                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OP2_CODIGO=0'+Trim(MCHAVE.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ');
DM3.Tb_Op02.Open;

DM3.Tb_Op03.Close;
DM3.Tb_Op03.SQL.Clear;
DM3.Tb_Op03.SQL.add('Select OP3_CODEMP ,   OP3_CODIGO,  '
                   +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                   +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                   +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE, '
                   +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                   +' ,max(PDCODPRO) as PDCODPRO, max(PDNOME) as PDNOME '
                   +' ,max(PDUND) as PDUND '
                   +' ,maX(PDNOME2) as PDNOME2 '
                   +' ,max(PDCODGRU) AS CODGRU '
                   +' ,max(PDNOMGRU) as NOMGRU '
                   +' ,max(PDMARCA) as PDMARCA '
                   +' ,max(CPORDEM) as CPORDEM '
                   +' ,max(CPCODPRO) as CPCODPRO '
                   +' ,MAX(CPNUMERO) as CPNUMERO '
                   +' ,max(CPCODMAT) as CPCODMAT '
                   +' ,max(CPCODPRO_ACAB) as CPCODPRO_ACAB '
                   +' ,max(CPMPNUM) as CPMPNUM '
                   +' ,max(CPQUANT) as CPQUANT '
                   +' ,max(CPPU) as  CPPU '
                   +' ,max(CPVLRINC) as CPVLRINC '
                   +' ,max(CPALIQORI) as CPALIQORI '
                   +' ,max(CPALICMSCRED) as CPALICMSCRED '
                   +' ,max(CPICMSCRED) as  CPICMSCRED'
                   +' ,max(CPTIPO) as CPTIPO '
                   +' ,max(CPQTD_PAD) as CPQTD_PAD '
                   +' ,max(CPPERCENT) as CPPERCENT '
                   +' ,max(CPPERCENT_REST) as CPPERCENT_REST '
                   +' from CADOP03,CADPRO,CADCOMP '
                   +'   where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OP3_CODIGO=0'+Trim(MCHAVE.Text)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' and PDCODPRO=OP3_CODMAT '
                   +' and CPCODEMP=PDCODEMP '
                   +' and CPCODMAT=OP3_CODMAT '
                   +' group by '
                   +' OP3_CODEMP ,   OP3_CODIGO, '
                   +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                   +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                   +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, '
                   +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                   +' order by OP3_SEQ');
//DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');

DM3.Tb_Op03.Open;

DM3.Tb_OpET.Close;
DM3.Tb_OpET.SQL.Clear;
DM3.Tb_OpEt.SQL.add('Select * from CADOPET where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OPE_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OPE_CODIGO=0'+Trim(MCHAVE.Text)
                   +' order by OPE_CODETA');
DM3.Tb_OpET.Open;
BBLIMPAR.Click;
MCHAVE.Text         :=DM3.Tb_Op01OP1_CODIGO.AsString;
MDATA.Text          :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value);
if DM3.Tb_Op01OP1_DATA.Value<pdatanula then
   MDATAPREV.Text   :='/  /'
else
   MDATAPREV.Text      :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value);
MNOME.Text          :=DM3.Tb_Op01OP1_NOME.Value;
MNUMLOT.Text        :=DM3.Tb_Op01OP1_LOTE.Value;
cb_origem.Checked   :=DM3.Tb_Op01OP1_ORIGEM.AsInteger=1;
if DM3.Tb_Op01OP1_DATAVEN.Value<=pdatanula then
   MDATAVEN.Text    :='/  /'
else
   MDATAVEN.Text       :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAVEN.Value);
if DM3.Tb_Op01OP1_STATUS.IsNull then
   mstatus:=0
else
   mstatus:=DM3.Tb_Op01OP1_STATUS.AsInteger;
MCODPRO.Text        :='';
MUND.Text           :='';
MQTDPREV.Text       :='';
MPU.Text            :='';
MTOTAL.Caption      :='';
MITENSPPREV.Caption :='';
MQTDPPREV.Caption   :='';
MTOTPPREV.Caption   :='';
MITENSMPPREV.Caption:='';
MTOTMPPREV.Caption  :='';
MQTDMPPREV.Caption  :='';
MITENSPREAL.Caption :='';
MQTDPREAL.Caption   :='';
MTOTPREAL.Caption   :='';
MITENSMPREAL.Caption:='';
MQTDMPREAL.Caption  :='';
MTOTMPREAL.Caption  :='';
ET_NOMETA.Text      :='';
ET_NOME.Text        :='';
ET_DATAI.Text       :='/  /';
ET_HORAI.Text       :=':  :';
ET_DATAF.Text       :='/  /';
ET_HORAF.Text       :=':  :';
MOBS01.Text         :=DM3.Tb_Op01OP1_OBS01.Value;
MOBS02.Text         :=DM3.Tb_Op01OP1_OBS02.Value;
MOBS03.Text         :=DM3.Tb_Op01OP1_OBS03.Value;
MOBS04.Text         :=DM3.Tb_Op01OP1_OBS04.Value;
MOBS05.Text         :=DM3.Tb_Op01OP1_OBS05.Value;
MOBS06.Text         :=DM3.Tb_Op01OP1_OBS06.Value;
MOBS07.Text         :=DM3.Tb_Op01OP1_OBS07.Value;
MOBS08.Text         :=DM3.Tb_Op01OP1_OBS08.Value;
MOBS09.Text         :=DM3.Tb_Op01OP1_OBS09.Value;
MOBS10.Text         :=DM3.Tb_Op01OP1_OBS10.Value;

STG_PP.RowCount     :=2;
STG_PP.Rows[1].Clear;
While not DM3.Tb_Op02.Eof do
   begin
   mqtd:=STG_PP.RowCount;
   STG_PP.RowCount:=mqtd+1;
   STG_PP.Rows[mqtd+1].Clear;
   STG_PP.Rows[mqtd].Clear;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   STG_PP.Cells[mcol_cod,mqtd-1]:=DM3.Tb_Op02OP2_CODPRO.AsString;
   STG_PP.Cells[mcol_grade,mqtd-1]:=DM3.Tb_Op02OP2_NUMERO.Value;
   STG_PP.Cells[mcol_qtd,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value);
   STG_PP.Cells[mcol_und,mqtd-1]:=DM1.Query1.Fields[1].AsString;
   STG_PP.Cells[mcol_desc,mqtd-1]:=DM1.Query1.Fields[0].AsString;
   STG_PP.Cells[mcol_pu,mqtd-1]:=FormatFloat(mcaspuind, DM3.Tb_Op02OP2_PU.Value);
   STG_PP.Cells[mcol_vt,mqtd-1]:=FormatFloat(mcasas, DM3.Tb_Op02OP2_QTDPREV.Value*DM3.Tb_Op02OP2_PU.Value);
   STG_PP.Cells[mcol_qtdProd,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value);
   DM3.Tb_Op02.Next;
   end;
STG_MP.RowCount     :=2;
STG_MP.Rows[1].Clear;
While not DM3.Tb_Op03.Eof do
   begin
   mqtd:=STG_MP.RowCount;
   STG_MP.RowCount:=mqtd+1;
   STG_MP.Rows[mqtd+1].Clear;
   STG_MP.Rows[mqtd].Clear;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op03OP3_CODMAT.AsString);
   STG_MP.Cells[mcolmp_cod,mqtd-1]:=DM3.Tb_Op03OP3_CODMAT.AsString;
   STG_MP.Cells[mcolmp_grade,mqtd-1]:=DM3.Tb_Op03OP3_NUMERO.Value;
   STG_MP.Cells[mcolmp_lote,mqtd-1]:=DM3.Tb_Op03OP3_LOTE.Value;
   if (DM3.Tb_Op03OP3_DTVCTO.IsNull) or (DM3.Tb_Op03OP3_DTVCTO.Value<=pdatanula) then
      STG_MP.Cells[mcolmp_dtvcto,mqtd-1]:='/  /'
   else
      STG_MP.Cells[mcolmp_dtvcto,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_Op03OP3_DTVCTO.Value);
   STG_MP.Cells[mcolmp_qtdprev,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value);
   STG_MP.Cells[mcolmp_und,mqtd-1]:=DM1.Query1.Fields[1].AsString;
   STG_MP.Cells[mcolmp_desc,mqtd-1]:=DM1.Query1.Fields[0].AsString;
   STG_MP.Cells[mcolmp_pcouni,mqtd-1]:=FormatFloat(mcaspuind, DM3.Tb_Op03OP3_PU.Value);
   STG_MP.Cells[mcolmp_vt,mqtd-1]:=FormatFloat(mcasas, DM3.Tb_Op03OP3_QTDPREV.Value*DM3.Tb_Op03OP3_PU.Value);
   STG_MP.Cells[mcolmp_qtdutil,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value);
   DM3.Tb_Op03.Next;
   end;
// fpmatprima(0);
STG_ETA.RowCount    :=2;
STG_ETA.Rows[1].Clear;

While not DM3.Tb_OpET.Eof do
   begin
   mqtd:=STG_ETA.RowCount;
   STG_ETA.RowCount:=mqtd+1;
   STG_ETA.Rows[mqtd+1].Clear;
   STG_ETA.Rows[mqtd].Clear;
   STG_ETA.Cells[0,mqtd-1]:=DM3.Tb_OpETOPE_NOMETA.Value;
   STG_ETA.Cells[1,mqtd-1]:=DM3.Tb_OpETOPE_NOME.Value;
   if (DM3.Tb_OpETOPE_DATAI.IsNull) or (DM3.Tb_OpETOPE_DATAI.Value<=pdatanula) then
      STG_ETA.Cells[2,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[2,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value);
   STG_ETA.Cells[3,mqtd-1]:=DM3.Tb_OpETOPE_HORAI.Value;
   if DM3.Tb_OpETOPE_DATAT.IsNull then
      STG_ETA.Cells[4,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[4,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value);
   STG_ETA.Cells[5,mqtd-1]:=DM3.Tb_OpETOPE_HORAT.Value;
   DM3.Tb_OPET.Next;
   end;
BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=bbalt_true;
BBEXCLUIR.Enabled  :=bbexc_true;
BBCONFIRMAR.Enabled:=True;
BBIMPRIMIR.Enabled :=bbrel_true;
BBGRAVAR.Enabled   :=False;
fptotais(0);
moper:=0;

end;

function fpexcluir(ptipo: Integer): Boolean;
// ptipo=0 exclui sem movimentar estoque
// ptipo=1 excluir desfazendo o estoque
var
pBaixar: pBaixarLotes;
begin
if ptipo=1 then
   begin
   DM3.Tb_Op02.Close;
   DM3.Tb_Op02.SQL.Clear;
   DM3.Tb_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                   +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       PDNOME '
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OP2_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ');
   DM3.Tb_Op02.Open;


   DM3.Tb_Op03.Close;
   DM3.Tb_Op03.SQL.Clear;
   DM3.Tb_Op03.SQL.add('Select OP3_CODEMP ,   OP3_CODIGO,  '
                      +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                      +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                      +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OPE_LOTE_RE, '
                      +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                      +' ,max(PDCODPRO) as PDCODPRO, max(PDNOME) as PDNOME '
                      +' ,max(PDUND) as PDUND '
                      +' ,maX(PDNOME2) as PDNOME2 '
                      +' ,max(PDCODGRU) AS CODGRU '
                      +' ,max(PDNOMGRU) as NOMGRU '
                      +' ,max(PDMARCA) as PDMARCA '
                      +' ,max(CPORDEM) as CPORDEM '
                      +' ,max(CPCODPRO) as CPCODPRO '
                      +' ,MAX(CPNUMERO) as CPNUMERO '
                      +' ,max(CPCODMAT) as CPCODMAT '
                      +' ,max(CPCODPRO_ACAB) as CPCODPRO_ACAB '
                      +' ,max(CPMPNUM) as CPMPNUM '
                      +' ,max(CPQUANT) as CPQUANT '
                      +' ,max(CPPU) as  CPPU '
                      +' ,max(CPVLRINC) as CPVLRINC '
                      +' ,max(CPALIQORI) as CPALIQORI '
                      +' ,max(CPALICMSCRED) as CPALICMSCRED '
                      +' ,max(CPICMSCRED) as  CPICMSCRED'
                      +' ,max(CPTIPO) as CPTIPO '
                      +' ,max(CPQTD_PAD) as CPQTD_PAD '
                      +' ,max(CPPERCENT) as CPPERCENT '
                      +' ,max(CPPERCENT_REST) as CPPERCENT_REST '
                      +' from CADOP03,CADPRO,CADCOMP '
                      +'   where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                      +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                      +' and OP3_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text)
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                      +' and PDCODPRO=OP3_CODMAT '
                      +' and CPCODEMP=PDCODEMP '
                      +' and CPCODMAT=OP3_CODMAT '
                      +' group by '
                      +' OP3_CODEMP ,   OP3_CODIGO, '
                      +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                      +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                      +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, '
                      +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                      +' order by OP3_SEQ');
   //DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');

   DM3.Tb_Op03.Open;

   While not DM3.Tb_OP03.Eof do
      begin
      if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem grade
         begin
         pBaixar.pCodemp := codemp;
         pBaixar.pFilial := log_filial_padrao;
         pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
         pBaixar.pDocOri := 04;
         pBaixar.pCodUsr  := codusr;
         pBaixar.pContEsp := 0;
         pBaixar.pTipoProd := Log_TipoProdPad;
         pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
         pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
         pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
         pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
         pBaixar.pEstNor       := 'E';
         pBaixar.pEstReservado := 'N';
         pBaixar.pLote         := DM3.Tb_Op03OP3_NUMERO.AsString;
         pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
         pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTFAB.AsDateTime;
         pBaixar.pLoteRe       := '';
         pBaixar.pObs          := '';

        PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;



         fBaixarMercadorias(pBaixar);
         end
      else
         begin

         pBaixar.pCodemp := codemp;
         pBaixar.pFilial := log_filial_padrao;
         pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
         pBaixar.pDocOri := 04;
         pBaixar.pCodUsr  := codusr;
         pBaixar.pContEsp := 0;
         pBaixar.pTipoProd := Log_TipoProdPad;
         pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
         pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
         pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
         pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
         pBaixar.pEstNor       := 'E';
         pBaixar.pEstReservado := 'N';
         pBaixar.pLote         := '';
         pBaixar.pDtVcto       := 0;
         pBaixar.pDtFab        := 0;
         pBaixar.pLoteRe       := '';
         pBaixar.pObs          := '';
         PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;



         fBaixarMercadorias(pBaixar);
             end;
      mdtv:='';
      DM3.Tb_Op03.Next;
      end;

   While not DM3.Tb_OP02.Eof do
      begin
      if StrToInt('0'+copy(mpseg,4,2))>0  then  // se e vencimento
         begin
         if (DM3.Tb_Op01OP1_DATAVEN.IsNull) or (DM3.Tb_Op01OP1_DATAVEN.Value<=pdatanula) then
            mdtv:=''
         else
            mdtv:=FormatDateTime(fdt, DM3.Tb_Op01OP1_DATAVEN.Value);


pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := 0;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := DM3.Tb_Op03OP3_LOTE.AsString;
pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTFab.AsDateTime;

pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;

fBaixarMercadorias(pBaixar);


{
         fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op03OP3_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
         end
      else
         begin


pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := '';
pBaixar.pDtVcto       := 0;
pBaixar.pDtFab        := 0;
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
fBaixarMercadorias(pBaixar);
{
         fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,''
                  ,0
                  ,'' // lote re
                  ,'' // obs

                  );
}                  
         end;
      mdtv:='';
      DM3.Tb_Op02.Next;
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOPET where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntToStr(codemp)+' and ')
                   +' OPE_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OPE_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                  +' and OP3_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP2_LOTSEQ=0'+IntToStr(ls_lotfab)
                  +' and OP2_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_LOTSEQ=0'+IntToStr(ls_lotfab)
                  +' and OP1_CODIGO=0'+Trim(Frm_Producao.MCHAVE.Text));
DM1.Query1.ExecSQL;
result:=True;
end;
procedure TFrm_Producao.BBALTERARClick(Sender: TObject);
begin
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   fMensagem('Pedido ja Confirmado!',0,['0'],0);
   exit;
   end;
moper:=1;
GroupBox1.Enabled:=True;
GroupBox3.Enabled:=True;
GroupBox5.Enabled:=True;
TabSheet4.Enabled:=True;
MDATA.SetFocus;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=True;
bbImportar.Enabled :=True;
meditar            :=True;
end;

procedure TFrm_Producao.BBGRAVARClick(Sender: TObject);
var
x: Integer;
begin
if ValFloat(STG_PP.Cells[mcol_cod,1])=0 then
   begin
   fMensagem('Nada a ser Gravado!',0,['0'],0);
   exit;
   end;
if moper=0 then
   begin
   flcadpar01(0,codemp,'1');
   if (DM4.Tb_Par01PCHAVFAB.IsNull) or (DM4.Tb_Par01PCHAVFAB.Value<=0) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                        +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                        +' OP1_FABENV=0 and OP1_LOTSEQ=0'+InttoStr(ls_lotfab));
      DM1.Query1.Open;
      flcadpar01(0,codemp,'1');
      DM4.Tb_Par01.EDIT;

      DM4.Tb_Par01PCHAVFAB.Value   :=DM1.Query1.Fields[0].AsFloat+1;

      DM4.Tb_Par01PCHAVFAB_LS.Value:=ls_lotfab;
      DM4.Tb_Par01.Post;
      fSequenceTestaeAjusta('CHAVFAB_2012',DM1.Query1.Fields[0].AsInteger+1);


      flcadpar01(0,codemp,'1');
      end;
   DM4.Tb_Par01.Edit;
   MCHAVE.Text:=DM4.Tb_Par01PCHAVFAB.AsString;
   DM4.Tb_Par01PCHAVFAB.Value:=DM4.Tb_Par01PCHAVFAB.Value+1;
   DM4.Tb_Par01.Post;
   fBuscarSequencia('CHAVFAB_2012');
   end

else if (moper=1) or (moper=3)  then
   begin
   fpexcluir(0);
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'DATA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'DATAPREV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'LOTE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'DATAVEN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS01',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS02',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS03',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS04',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS05',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS06',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS07',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS08',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS09',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS10',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'NOME',ptinput);
DM1.Query2.SQL.Add('Insert Into CADOP01 ('
                  +' OP1_CODEMP,'
                  +' OP1_LOTSEQ,'
                  +' OP1_FABENV,'
                  +' OP1_CODIGO,'
                  +' OP1_TMPPREV,'
                  +' OP1_TMPUTIL,'
                  +' OP1_TOTPREV,'
                  +' OP1_TOTPROD,'
                  +' OP1_STATUS,'
                  +' OP1_ORIGEM,'
                  +' OP1_SITMP, '
                  +' OP1_SITACAB, '
                  +' OP1_DATA, '
                  +' OP1_DATAPREV, '
                  +' OP1_LOTE, '
                  +' OP1_DATAVEN, '
                  +' OP1_OBS01, '
                  +' OP1_OBS02, '
                  +' OP1_OBS03, '
                  +' OP1_OBS04, '
                  +' OP1_OBS05, '
                  +' OP1_OBS06, '
                  +' OP1_OBS07, '
                  +' OP1_OBS08, '
                  +' OP1_OBS09, '
                  +' OP1_OBS10, '
                  +' OP1_NOME) Values ('
                  +IntToStr(codemp)+','
                  +IntToStr(ls_lotfab)+','
                  +'0,'
                  +Trim(MCHAVE.Text)+','
                  +mudavp(FloatToStr(valfloat(MTOTMPPREV.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTMPREAL.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTPPREV.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTPREAL.Caption)))+','
                  +IntToStr(mstatus)+','
                  +iif(cb_origem.Checked,'1','0')+','
                  +'0'+',' // Situacao materia prima
                  +'0'+',' // Situacao do produto acabado
                  +':DATA, '
                  +':DATAPREV, '
                  +':LOTE, '
                  +':DATAVEN, '
                  +':OBS01, '
                  +':OBS02, '
                  +':OBS03, '
                  +':OBS04, '
                  +':OBS05, '
                  +':OBS06, '
                  +':OBS07, '
                  +':OBS08, '
                  +':OBS09, '
                  +':OBS10, '
                  +':NOME)');
if Trim(MDATA.Text)='/  /' then
   MDATA.Text:=FormatDateTime(fdt2, Date);
DM1.Query2.ParamByName('DATA').AsDateTime:=StrToDate(MDATA.Text);
if Trim(MDATAPREV.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAPREV').AsDateTime:=StrTodate(MDATAPREV.Text)
else
   DM1.Query2.ParamByName('DATAPREV').AsDateTime:=0;

DM1.Query2.ParamByName('LOTE').AsString:=MNUMLOT.Text;
if Trim(MDATAVEN.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAVEN').AsDateTime:=StrTodate(MDATAVEN.Text)
else
   DM1.Query2.ParamByName('DATAVEN').AsDateTime:=0;

DM1.Query2.ParamByName('OBS01').AsString:=MOBS01.Text;
DM1.Query2.ParamByName('OBS02').AsString:=MOBS02.Text;
DM1.Query2.ParamByName('OBS03').AsString:=MOBS03.Text;
DM1.Query2.ParamByName('OBS04').AsString:=MOBS04.Text;
DM1.Query2.ParamByName('OBS05').AsString:=MOBS05.Text;
DM1.Query2.ParamByName('OBS06').AsString:=MOBS06.Text;
DM1.Query2.ParamByName('OBS07').AsString:=MOBS07.Text;
DM1.Query2.ParamByName('OBS08').AsString:=MOBS08.Text;
DM1.Query2.ParamByName('OBS09').AsString:=MOBS09.Text;
DM1.Query2.ParamByName('OBS10').AsString:=MOBS10.Text;
DM1.Query2.ParamByName('OBS10').AsString:=MOBS10.Text;
DM1.Query2.ParamByName('NOME').AsString :=MNOME.Text;
Try
   DM1.Query2.ExecSQL;
except
   fMensagem('Erro de Instrução n. 1338',0,['0'],0);
   end;
DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

for x:=1 to STG_PP.RowCount-1 do
   begin
   if Trim(STG_PP.Cells[mcol_cod,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NUMERO',ptinput);
   DM1.Query2.SQL.Add('Insert Into CADOP02 ('
                     +'OP2_CODEMP, '
                     +'OP2_LOTSEQ, '
                     +'OP2_FABENV, '
                     +'OP2_CODIGO, '
                     +'OP2_SEQ, '
                     +'OP2_CODPRO,'
                     +'OP2_QTDPREV, '
                     +'OP2_QTDPROD, '
                     +'OP2_PU, '
                     +'OP2_SITACAB,'
                     +'OP2_ORIGEM,'
                     +'OP2_NUMERO) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(ls_lotfab)+','
                     +'0,'
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +Trim(STG_PP.Cells[mcol_cod,x])+','
                     +mudavp(STG_PP.Cells[mcol_qtd,x])+','
                     +mudavp(STG_PP.Cells[mcol_qtdProd,x])+','
                     +mudavp(STG_PP.Cells[mcol_pu,x])+','
                     +iif(cb_origem.Checked,'1','0')+','
                     +'0'+',' // Situacao do produto acabado
                     +':NUMERO)');
   DM1.Query2.ParamByName('NUMERO').AsString:=STG_PP.Cells[mcol_grade,x];
   try
      DM1.Query2.ExecSQL;
   except
      fMensagem('Erro de Instruçao 1372',0,['0'],0);
      end;
   end;

DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

for x:=1 to STG_MP.RowCount-1 do
   begin
   if Trim(STG_MP.Cells[mcolmp_cod,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NUMERO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'LOTE',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DTVCTO',ptinput);
   DM1.Query2.SQL.Add('Insert Into CADOP03 ('
                     +'OP3_CODEMP, '
                     +'OP3_LOTSEQ, '
                     +'OP3_FABENV, '
                     +'OP3_CODIGO, '
                     +'OP3_SEQ, '
                     +'OP3_CODMAT,'
                     +'OP3_QTDPREV, '
                     +'OP3_QTDUTIL, '
                     +'OP3_PU, '
                     +'OP3_SITMP,'
                     +'OP3_ORIGEM,'
                     +'OP3_NUMERO,'
                     +'OP3_LOTE, '
                     +'OP3_DTVCTO) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(ls_lotfab)+','
                     +'0,'
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +Trim(STG_MP.Cells[mcolmp_cod,x])+','
                     +mudavp(STG_MP.Cells[mcolmp_qtdprev,x])+','
                     +mudavp(STG_MP.Cells[mcolmp_qtdutil,x])+','
                     +mudavp(STG_MP.Cells[mcolmp_pcouni,x])+','
                     +'0'+',' // Situacao do produto acabado
                     +iif(cb_origem.Checked,'1','0')+','
                     +':NUMERO,'
                     +':LOTE,'
                     +':DTVCTO)');
   DM1.Query2.ParamByName('NUMERO').AsString:=STG_MP.Cells[mcolmp_grade,x];
   DM1.Query2.ParamByName('LOTE').AsString  :=STG_MP.Cells[mcolmp_lote,x];
   if (Trim(STG_MP.Cells[mcolmp_dtvcto,x])='/  /') or (Trim(STG_MP.Cells[mcolmp_dtvcto,x])='') then
      DM1.Query2.ParamByName('DTVCTO').AsDateTime :=pdatanula
   else
      DM1.Query2.ParamByName('DTVCTO').AsDateTime :=StrToDate(STG_MP.Cells[mcolmp_dtvcto,x]);
   try
      DM1.Query2.ExecSQL;
   except
      fMensagem('Erro de Instruçao 1408',0,['0'],0);
      end;
   end;

DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
for x:=1 to STG_ETA.RowCount-1 do
   begin
   if Trim(STG_ETA.Cells[0,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NOMETA',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'NOME',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DATAI',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'HORAI',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DATAT',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'HORAT',ptinput);

   DM1.Query2.SQL.Add('Insert Into CADOPET ('
                     +'OPE_CODEMP,'
                     +'OPE_LOTSEQ, '
                     +'OPE_FABENV, '
                     +'OPE_CODIGO,'
                     +'OPE_CODETA,'
                     +'OPE_NOMETA,'
                     +'OPE_NOME,'
                     +'OPE_DATAI,'
                     +'OPE_HORAI,'
                     +'OPE_DATAT,'
                     +'OPE_HORAT) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(ls_lotfab)+','
                     +'0,'
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +':NOMETA,'
                     +':NOME,'
                     +':DATAI,'
                     +':HORAI,'
                     +':DATAT,'
                     +':HORAT)');
   DM1.Query2.ParamByName('NOMETA').AsString:=STG_ETA.Cells[0,x];
   DM1.Query2.ParamByName('NOME').AsString  :=STG_ETA.Cells[1,x];
   if Trim(STG_ETA.Cells[2,x])<>'/  /' then
      DM1.Query2.ParamByName('DATAI').AsDateTime:=StrToDate(STG_ETA.Cells[2,x])
   else
      DM1.Query2.ParamByName('DATAI').AsDateTime:=0;

   DM1.Query2.ParamByName('HORAI').AsString    :=STG_ETA.Cells[3,x];
   if Trim(STG_ETA.Cells[4,x])<>'/  /' then
      DM1.Query2.ParamByName('DATAT').AsDateTime:=StrToDate(STG_ETA.Cells[4,x])
   else
      DM1.Query2.ParamByName('DATAT').AsDateTime:=0;

   DM1.Query2.ParamByName('HORAT').AsString    :=STG_ETA.Cells[5,x];
   try
      DM1.Query2.ExecSQL;
   except
      fMensagem('Erro de instrução 1462',0,['0'],0);
      end;
   end;
GroupBox1.Enabled:=False;
GroupBox3.Enabled:=False;
GroupBox5.Enabled:=False;
TabSheet4.Enabled:=False;
if moper<>3 then
   begin
   moper:=3;
   BBLOCALIZAR.Click;
   fMensagem('Registro Gravado!',0,['0'],0);
   end
else
   begin
   moper:=3;
   BBLOCALIZAR.Click;
   end


end;

procedure TFrm_Producao.BBEXCLUIRClick(Sender: TObject);
begin
if fMensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
   exit;
if DM3.Tb_Op01OP1_STATUS.Value=2 then
   fpexcluir(1)
else
   fpexcluir(0);

BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
bbImportar.Enabled :=False;
fMensagem('Registro Excluido!',0,['0'],0);
BBLIMPAR.Click;

end;

procedure TFrm_Producao.BBIMPRIMIRClick(Sender: TObject);
var
maprov: Real;
mtotprev, mtotreal: Real;

mtotGruprev, mtotGrureal: Real;
x: Integer;
mTextoTemp: String;
f: TextFile;
mGrupo_Ant: String;
begin
mlin:=1;
mpag:=1;
testeform := TFrm_Producao(FindGlobalComponent('form_impres_producao'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_producao);

form_impres_producao.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_producao.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value)+' '+Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value),' ',132),mreduz);
mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,Centra('CNPJ.: '+Trim(DM1.Tb_Empcnpj_masc.Value)+' Inscricao Estadual: '+Trim(DM1.Tb_EmpINSCRICAO.Value),' ',132),mreduz);
mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,Centra('Fone: '+Trim(DM1.Tb_EmpFONE.Value)+' Fax: '+Trim(DM1.Tb_EmpFAX.Value),' ',132),mreduz);
mlin:=mlin+3;
form_impres_producao.RDprint1.ImpF(mlin,01,Centra('ORDEM DE PRODUCAO NUMERO: '+FormatFloat('000000',DM3.Tb_Op01OP1_CODIGO.Value),' ',80),mneg);
mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,Centra(Trim(DM3.Tb_Op01OP1_NOME.Value),' ',80),mneg);
mlin:=mlin+2;
form_impres_producao.RDprint1.ImpF(mlin,01,'Data: '+iif(DM3.Tb_Op01OP1_DATA.IsNull,'  /  /  ',FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value))
                        +insere(' ',' ',37)
                        +'Previsto Para..: '+iif(DM3.Tb_Op01OP1_DATAPREV.AsdateTime<=pdatanula,'  /  /  ',FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value)),mnormal);
mlin:=mlin+1;
if ValInt(copy(mpseg,4,2))>0 then
   begin
   form_impres_producao.RDprint1.ImpF(mlin,01,'Numero do Lote de Fabricacao: '+insere2(DM3.Tb_Op01OP1_LOTE.Value,' ',20)
                        +IIF(DM3.Tb_Op01OP1_DATAVEN.IsNull,'',
                        '   Data Vencimento: '+FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAVEN.Value)),mnormal);
   end;
if Trim(DM3.Tb_Op01OP1_OBS01.Value
       +DM3.Tb_Op01OP1_OBS02.Value
       +DM3.Tb_Op01OP1_OBS03.Value
       +DM3.Tb_Op01OP1_OBS04.Value
       +DM3.Tb_Op01OP1_OBS05.Value
       +DM3.Tb_Op01OP1_OBS06.Value
       +DM3.Tb_Op01OP1_OBS07.Value
       +DM3.Tb_Op01OP1_OBS08.Value
       +DM3.Tb_Op01OP1_OBS09.Value
       +DM3.Tb_Op01OP1_OBS10.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'Observacoes.: ',mnormal);
   if Trim(DM3.Tb_Op01OP1_OBS01.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS01.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS02.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS02.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS03.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS03.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS04.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS04.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS05.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS05.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS06.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS06.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS07.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS07.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS08.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS08.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS09.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS09.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS10.Value)<>'' then
      begin
      form_impres_producao.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS10.Value,mnormal);
      mlin:=mlin+1;
      end;
   end
else
   mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,'PRODUTOS '+iif(DM3.Tb_Op01OP1_STATUS.Value=2,'','A SEREM ')+'PRODUZIDOS',mneg);
mlin:=mlin+1;
if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Fabric |% Aproveit|',mreduz);
   end
else
   begin
   form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Fabric |% Aproveit|',mreduz);
   end;
mtotprev:=0;
mtotreal:=0;
mtotGruprev:=0;
mtotGrureal:=0;

DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   mlin:=mlin+1;
   fptestapag(0);
   maprov:=DM3.Tb_Op02OP2_QTDPROD.Value-DM3.Tb_Op02OP2_QTDPREV.Value;
   try
      maprov:=(maprov*100)/DM3.Tb_Op02OP2_QTDPREV.Value;
   except
      maprov:=0;
      end;
   maprov:=100+maprov;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                           +insere(DM3.Tb_Op02OP2_CODPRO.AsString,' ',14)
                           +'|'
                           +iif(StrToInt(copy(mpseg,4,2))=02,insere2(Trim(DM3.Tb_Op02PDNOME.AsString)+' '+Trim(DM3.Tb_Op03PDMARCA.AsString),' ',40)+'|'+insere2(DM3.Tb_Op02OP2_NUMERO.Value,' ',30),
                           insere2(Trim(DM3.Tb_Op02PDNOME.AsString)+' '+Trim(DM3.Tb_Op02PDMARCA.AsString),' ',71))
                           +'|'+insere2(DM3.Tb_Op03PDUND.AsString,' ',3)
                           +'|'+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',13)+'|'
                           +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                           insere(Formatfloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value),' ',13)+'|'
                           +insere(FormatFloat(mcasas, maprov),' ',10),
                           '_____________|__________')
                           +'|',mreduz);
   mtotprev:=mtotprev+DM3.Tb_Op02OP2_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op02OP2_QTDPROD.Value;
   DM3.Tb_Op02.Next;
   end;
mlin:=mlin+1;
fptestapag(0);
maprov:=mtotprev-mtotreal;
try
   maprov:=(maprov*100)/mtotreal;
except
   maprov:=0;
   end;
maprov:=100+maprov;
form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                        +insere2('-Totais','.',14)
                        +'|'
                        +iif(StrToInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                        insere2('.','.',71))
                        +'|'+insere2('.',' ',3)
                        +'|'+insere(FormatFloat(mcasind, mtotprev),' ',13)+'|'
                        +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                        insere(Formatfloat(mcasind, mtotreal),' ',13)+'|'
                        +insere(FormatFloat(mcasas, maprov),' ',10),
                        '_____________|__________')
                        +'|',mreduz);
mlin:=mlin+1;
fptestapag(0);
form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);


//  inicio das materias primas
if mlin>50 then
   begin
   form_impres_producao.RDprint1.Novapagina;
   mlin:=0;
   end;

if CB_MPGRUPO.Checked then
   begin

   DM3.Tb_Op03.Close;
   DM3.Tb_Op03.SQL.Clear;
   DM3.Tb_Op03.SQL.add('Select OP3_CODEMP ,   OP3_CODIGO,  '
                      +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                      +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                      +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE,'
                      +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                      +' ,max(PDCODPRO) as PDCODPRO, max(PDNOME) as PDNOME '
                      +' ,max(PDUND) as PDUND '
                      +' ,maX(PDNOME2) as PDNOME2 '
                      +' ,max(PDCODGRU) AS CODGRU '
                      +' ,max(PDNOMGRU) as NOMGRU '
                      +' ,max(PDMARCA) as PDMARCA '
                      +' ,max(CPORDEM) as CPORDEM '
                      +' ,max(CPCODPRO) as CPCODPRO '
                      +' ,MAX(CPNUMERO) as CPNUMERO '
                      +' ,max(CPCODMAT) as CPCODMAT '
                      +' ,max(CPCODPRO_ACAB) as CPCODPRO_ACAB '
                      +' ,max(CPMPNUM) as CPMPNUM '
                      +' ,max(CPQUANT) as CPQUANT '
                      +' ,max(CPPU) as  CPPU '
                      +' ,max(CPVLRINC) as CPVLRINC '
                      +' ,max(CPALIQORI) as CPALIQORI '
                      +' ,max(CPALICMSCRED) as CPALICMSCRED '
                      +' ,max(CPICMSCRED) as  CPICMSCRED'
                      +' ,max(CPTIPO) as CPTIPO '
                      +' ,max(CPQTD_PAD) as CPQTD_PAD '
                      +' ,max(CPPERCENT) as CPPERCENT '
                      +' ,max(CPPERCENT_REST) as CPPERCENT_REST '
                      +' from CADOP03,CADPRO,CADCOMP '
                      +'   where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                      +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                      +' and OP3_CODIGO=0'+Trim(MCHAVE.Text)
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                      +' and PDCODPRO=OP3_CODMAT '
                      +' and CPCODEMP=PDCODEMP '
                      +' and CPCODMAT=OP3_CODMAT '
                      +' group by '
                      +' OP3_CODEMP ,   OP3_CODIGO, '
                      +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                      +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                      +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, '
                      +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                      +' order by NOMGRU,CODGRU, OP3_SEQ');
   //DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');

   DM3.Tb_Op03.Open;


   end;

mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,'MATERIAS PRIMAS '+iif(DM3.Tb_Op01OP1_STATUS.Value=2,'','A SEREM ')+'UTILIZADAS',mneg);
if CB_MPGRUPO.Checked then
   begin
   mlin:=mlin+1;
   fptestapag(1);
   form_impres_producao.RDprint1.ImpF(mlin,01,
                           insere2(DM3.Tb_Op03NOMGRU.AsString,' ',78)
                           ,mneg);
   end;
mlin:=mlin+1;
if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
   end
else
   begin
   form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
   end;


mtotprev:=0;
mtotreal:=0;
mtotGruprev:=0;
mtotGrureal:=0;
mGrupo_Ant :=DM3.Tb_Op03NOMGRU.AsString;
DM3.Tb_Op03.First;
//mlin:=mlin+1;

While not DM3.Tb_Op03.Eof do
   begin
   if CB_MPGRUPO.Checked then
      begin
      if mGrupo_Ant<>DM3.Tb_Op03NOMGRU.AsString then
         begin
         try
            maprov:=(mtotGruprev*100)/mtotGrureal;
         except
            maprov:=0;
            end;
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                                 +insere2('-Total Grupo','.',14)
                                 +'|'
                                 +iif(StrToInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                                 insere2('.','.',71))
                                 +'|'+insere2('.',' ',3)
                                 +'|'+insere(FormatFloat(mcasind, mtotGruprev),' ',13)+'|'
                                 +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                                 insere(Formatfloat(mcasind, mtotGrureal),' ',13)+'|'
                                 +insere(FormatFloat(mcasas, maprov),' ',10),
                                 '_____________|__________')
                                 +'|',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
//         mlin:=mlin+1;
         mtotGruprev:=0;
         mtotGrureal:=0;
         fptestapag(0);
         mlin:=mlin+1;
         fptestapag(1);
         form_impres_producao.RDprint1.ImpF(mlin,01,
                           insere2(DM3.Tb_Op03NOMGRU.AsString,' ',78)
                           ,mneg);

         end;
      end;
   mlin:=mlin+1;
   fptestapag(1);
   mGrupo_Ant:=DM3.Tb_Op03NOMGRU.AsString;
   try
      maprov:=(DM3.Tb_Op03OP3_QTDPREV.Value*100)/DM3.Tb_Op03OP3_QTDUTIL.Value;
   except
      maprov:=0;
      end;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                           +insere(DM3.Tb_Op03OP3_CODMAT.AsString,' ',14)
                           +'|'
                           +iif(StrToInt(copy(mpseg,4,2))=02,insere2(DM3.Tb_Op03PDNOME.AsString,' ',40)+'|'+insere2(DM3.Tb_Op02OP2_NUMERO.Value,' ',30),
                           insere2(Trim(DM3.Tb_Op03PDNOME.AsString)+' '+Trim(DM3.Tb_Op03PDMARCA.AsString),' ',71))
                           +'|'+insere2(DM3.Tb_Op03PDUND.AsString,' ',3)
                           +'|'+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',13)+'|'
                           +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                           insere(Formatfloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value),' ',13)+'|'
                           +insere(FormatFloat(mcasas, maprov),' ',10),
                           '_____________|__________')
                           +'|',mreduz);
   mtotprev:=mtotprev+DM3.Tb_Op03OP3_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op03OP3_QTDUTIL.Value;

   mtotGruprev:=mtotGruprev+DM3.Tb_Op03OP3_QTDPREV.Value;
   mtotGrureal:=mtotGrureal+DM3.Tb_Op03OP3_QTDUTIL.Value;
   DM3.Tb_Op03.Next;
   end;
mlin:=mlin+1;
fptestapag(0);

if CB_MPGRUPO.Checked then
   begin
   try
      maprov:=(mtotGruprev*100)/mtotGrureal;
   except
      maprov:=0;
      end;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                           +insere2('-Total Grupo','.',14)
                           +'|'
                           +iif(StrToInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                           insere2('.','.',71))
                           +'|'+insere2('.',' ',3)
                           +'|'+insere(FormatFloat(mcasind, mtotGruprev),' ',13)+'|'
                           +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                           insere(Formatfloat(mcasind, mtotGrureal),' ',13)+'|'
                           +insere(FormatFloat(mcasas, maprov),' ',10),
                           '_____________|__________')
                           +'|',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   fptestapag(0);
   end;

try
   maprov:=(mtotprev*100)/mtotreal;
except
   maprov:=0;
   end;
//maprov:=100+maprov;
form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                        +insere2('-Totais','.',14)
                        +'|'
                        +iif(StrToInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                        insere2('.','.',71))
                        +'|'+insere2('.',' ',3)
                        +'|'+insere(FormatFloat(mcasind, mtotprev),' ',13)+'|'
                        +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                        insere(Formatfloat(mcasind, mtotreal),' ',13)+'|'
                        +insere(FormatFloat(mcasas, maprov),' ',10),
                        '_____________|__________')
                        +'|',mreduz);
mlin:=mlin+1;
form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);


// termino das materias primas

// inicio das fases de produção
DM3.Tb_OpET.First;
if not DM3.Tb_OpET.Eof then
   begin
   if mlin>50 then
      begin
      form_impres_producao.RDprint1.Novapagina;
      mlin:=0;
      end;
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'FASES DA PRODUCAO',mneg);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
//   mlin:=mlin+1;
   While not DM3.Tb_OpEt.Eof do
      begin
      mlin:=mlin+1;
      fptestapag(2);
      form_impres_producao.RDprint1.ImpF(mlin,01,'|'
                           +insere2(DM3.Tb_OpETOPE_NOMETA.Value,' ',40)
                           +'|'
                           +insere2(DM3.Tb_OpETOPE_NOME.Value,' ',40)
                           +'| '
                           +iif(DM3.Tb_OpETOPE_DATAI.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAI.Value,' ',8)
                           +' | '
                           +iif(DM3.Tb_OpETOPE_DATAT.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAT.Value,' ',8)
                           +' |',mreduz);
      DM3.Tb_OpET.Next;
      end;
   mlin:=mlin+1;
   form_impres_producao.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   end;
// termino das fases de produçao
// inicio das procedencias
DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDCODPROC','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   if DM1.Query1.Fields[2].AsInteger<=0 then
      begin
      DM3.Tb_Op02.Next;
      Continue;
      end;
   if flcadproc(1,0,0,DM1.Query1.Fields[2].AsString) then
      begin
      DM1.Query3.Close;
      DM1.Query3.sql.clear;
      DM1.Query3.SQL.Add('Select CPT_CODEMP,CPT_CODPRO,CPT_PAG,CPT_DESCRICAO FROM CADPROC_TEXTO where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntTostr(codemp)+' and ')
                       +' CPT_CODPRO=0'+DM3.Tb_ProcCP_CODPRO.AsString
                        +' ORDER BY CPT_PAG ');
      DM1.Query3.Open;
      if not DM1.Query3.Eof then
         begin
         While not DM1.Query3.Eof do
            begin
            mTextoTemp:=fProcTemp(24);
            assignfile(f,mTextoTemp);
            rewrite(f);
            While not DM1.Query3.Eof do
               begin
               writeln(f,DM1.Query3.fieldbyName('CPT_DESCRICAO').AsString);
               DM1.Query3.Next;
               end;
            closefile(f);
            Memo1.Lines.LoadFromFile(mTextoTemp);
            deletefile(mTextoTemp);
            end;
         end;
      if mlin>50 then
         begin
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_producao.RDprint1.Novapagina;
         mlin:=1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao..',mnormal);
         end;
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,Centra('PROCEDENCIA DO PRODUTO.: '+Trim(DM1.Query3.FieldByName('CPT_CODPRO').AsString),' ',80),mneg);
      for x:=0  to Memo1.Lines.Count do
         begin
         mlin:=mlin+1;
         fptestapag(3);
         form_impres_producao.RDprint1.ImpF(mlin,01,Memo1.Lines[x],mnormal);
         end;
      end;
      DM3.Tb_Op02.Next;
   end;
if form_impres_producao.RDprint1.Setup then form_impres_producao.RDprint1.Fechar;
form_impres_producao.free;
form_impres_producao:=nil;
end;
function TFrm_Producao.fptestapag(ptipo: Integer): Boolean;
begin
if mlin>58 then
   begin
   if ptipo=0 then
      begin
      if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
         begin
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.Novapagina;
         mlin:=1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Produz.|% Aproveit|',mreduz);
         end
      else
         begin
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.Novapagina;
         mlin:=1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Produz.|% Aproveit|',mreduz);
         end;
      end
   else if ptipo=1 then
      begin
      if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
         begin
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.Novapagina;
         mlin:=1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
         end
      else
         begin
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.Novapagina;
         mlin:=1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_producao.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
         end;
      end
   else if ptipo=2 then
      begin
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      form_impres_producao.RDprint1.Novapagina;
      mlin:=1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
      end
   else if ptipo=3 then
      begin
      mlin:=mlin+1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      form_impres_producao.RDprint1.Novapagina;
      mlin:=1;
      form_impres_producao.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      end;
   mlin:=mlin+1;
   end;
Result:=True;


end;


procedure TFrm_Producao.STG_MPKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_MP.Col<>5 then
   begin
   fMensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end
else if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Producao.STG_MPExit(Sender: TObject);
var
Arow,Acol:Integer;
begin
Arow:=STG_MP.Row;
Acol:=STG_MP.Col;
if STG_MP.col=5 then
   STG_MP.Cells[Acol,Arow]:=FormatFloat(mcasind,valfloat(STG_MP.Cells[Acol,Arow]));
fptotais(0);
end;

procedure TFrm_Producao.STG_MPSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_MP.Row;
mcol:=STG_MP.Col;
if STG_MP.col=5 then
   STG_MP.Cells[mcol,mlin]:=FormatFloat(mcasind,valfloat(STG_MP.Cells[mcol,mlin]));
fptotais(0);
end;

procedure TFrm_Producao.STG_ETAGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
if acol=4 then
    Value :=  '00/00/0000;1 '
else if acol=5 then
    Value := '00:00:00;1 ';

end;

procedure TFrm_Producao.STG_ETASelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_ETA.Row;
mcol:=STG_ETA.Col;
if ValFloat(STG_ETA.Cells[mcol,mlin])<=0 then
   exit;
if STG_ETA.col=4 then
   begin
   Try
      STG_ETA.Cells[mcol,mlin]:=FormatdateTime(fdt2, StrToDate(STG_ETA.Cells[mcol,mlin]));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      abort;
      end;
   end
else if STG_ETA.col=5 then
   begin
   Try
      STG_ETA.Cells[mcol,mlin]:=FormatdateTime(fhr, StrToTime(STG_ETA.Cells[mcol,mlin]));
   except
      fMensagem('Hora Invalida!',0,['0'],0);
      abort;
      end;
   end;

end;

procedure TFrm_Producao.STG_ETAExit(Sender: TObject);
var
Arow, Acol: Integer;
begin
Arow:=STG_ETA.Row;
Acol:=STG_ETA.Col;
if ValFloat(STG_ETA.Cells[Acol,ARow])<=0 then
   exit;
if STG_ETA.col=4 then
   begin
   Try
      STG_ETA.Cells[Acol,ARow]:=FormatdateTime(fdt2, StrToDate(STG_ETA.Cells[Acol,ARow]));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      abort;
      end;
   end
else if STG_ETA.col=5 then
   begin
   Try
      STG_ETA.Cells[Acol,ARow]:=FormatdateTime(fhr, StrToTime(STG_ETA.Cells[Acol,ARow]));
   except
      fMensagem('Hora Invalida!',0,['0'],0);
      abort;
      end;
   end;

end;


procedure TFrm_Producao.STG_ETAKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_ETA.Col<4 then
   begin
   fMensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end

end;

procedure TFrm_Producao.STG_ETADrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin


if (arow>0) and (ACOL>3) then
   begin
   if Trim(STG_ETA.Cells[0,arow])<>'' then
      begin
      STG_ETA.Canvas.Brush.Color:=clLime;
      STG_ETA.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_ETA.Cells[acol,arow]);
      end;
   end;


end;

procedure TFrm_Producao.STG_PPKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_PP.Col<>7 then
   begin
   fMensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end
else if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Producao.STG_PPExit(Sender: TObject);
var
Arow,Acol:Integer;
begin
Arow:=STG_PP.Row;
Acol:=STG_PP.Col;
if STG_PP.col=7 then
   STG_PP.Cells[Acol,Arow]:=FormatFloat(mcasind,valfloat(STG_PP.Cells[Acol,Arow]));
fptotais(0);
end;

procedure TFrm_Producao.STG_PPSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_PP.Row;
mcol:=STG_PP.Col;
if STG_PP.col=7 then
   STG_PP.Cells[mcol,mlin]:=FormatFloat(mcasind,valfloat(STG_PP.Cells[mcol,mlin]));
fptotais(0);
end;

function fpconfirmar(ptipo: Integer): Boolean;
var
x: Integer;
pBaixar: pBaixarLotes;

begin

mboolean:=true;
for x:=1 to Frm_Producao.STG_MP.RowCount do
   begin
   if fsonumero(Frm_Producao.STG_MP.Cells[mcolmp_cod,x])=0 then
      Continue;
   if Arredonda( ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdprev,x]),DM1.Tb_PargerPCASQTD.AsInteger)<>
      Arredonda( ValFloat(Frm_Producao.STG_MP.Cells[mcolmp_qtdutil,x]),DM1.Tb_PargerPCASQTD.AsInteger) then
      begin
      mboolean:=false;
      break;
      end;
   end;
if mboolean then
   begin
   fpmatprima(1);
   moper:=3;
   Frm_Producao.BBGRAVAR.Click;
   end;



DM3.Tb_Op03.First;
While not DM3.Tb_OP03.Eof do //baixando o estoque de matérias primas
   begin
   mdtv:='';
   if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem grade
      begin



pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := DM3.Tb_Op03OP3_LOTE.AsString;
pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTFAB.AsDateTime;
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
fBaixarMercadorias(pBaixar);

{
      fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op03OP3_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op03OP3_CODIGO.AsFloat
                  ,DM3.Tb_Op03OP3_LOTSEQ.AsFloat
                  ,DM3.Tb_Op03OP3_QTDUTIL.AsFloat
                  ,DM3.Tb_Op03OP3_CODMAT.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op03OP3_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
      end
   else
      begin

pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := DM3.Tb_Op03OP3_LOTE.AsString;
pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTFAB.AsDateTime;
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
fBaixarMercadorias(pBaixar);
{

      fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op03OP3_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op03OP3_CODIGO.AsFloat
                  ,DM3.Tb_Op03OP3_LOTSEQ.AsFloat
                  ,DM3.Tb_Op03OP3_QTDUTIL.AsFloat
                  ,DM3.Tb_Op03OP3_CODMAT.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op03OP3_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );

}
      end;
   DM3.Tb_Op03.Next;
   end;
DM3.Tb_Op02.First;
While not DM3.Tb_OP02.Eof do // Entrada no Estoque de produtos acabado
   begin
   mdtv:='';
   if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem grade
      begin



pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := DM3.Tb_Op01OP1_LOTE.AsString;
pBaixar.pDtVcto       := DM3.Tb_Op01OP1_DATAVEN.AsDateTime;
pBaixar.pDtFab        := DM3.Tb_Op01OP1_DATFAB.AsDateTime;
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
fBaixarMercadorias(pBaixar);

{
      fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op01OP1_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}

      end
   else
      begin

pBaixar.pCodemp := codemp;
pBaixar.pFilial := log_filial_padrao;
pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
pBaixar.pDocOri := 04;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
pBaixar.pEstNor       := 'E'; // estnor;
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := '';
pBaixar.pDtVcto       := 0;
pBaixar.pDtFab        := 0;
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
fBaixarMercadorias(pBaixar);
{
      fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,''
                  ,0
                  ,'' // lote re
                  ,'' // obs

                  );
                  }
      end;

   DM3.Tb_Op02.Next;
   end;
result:=True;
end;

procedure TFrm_Producao.BBCONFIRMARClick(Sender: TObject);
begin
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   fMensagem('Este Pedido ja Estava Confirmado!',0,['0'],0);
   exit;
   end;
if fMensagem('Quer Realmente Confirmar a Produção!',0,['1','2'],2)<>mrYes then
   exit;
if fpconfirmar(0) then
   begin
   DM3.Tb_Op01.Edit;
   DM3.Tb_Op01OP1_STATUS.Value:=2;
   DM3.Tb_Op01.Post;
   fMensagem('Confirmado!',0,['0'],0);
   BBLIMPAR.Click;
   end;
end;

procedure TFrm_Producao.bbImportarClick(Sender: TObject);
begin
Application.Createform(TFrm_ImpPed, Frm_ImpPed);
Frm_ImpPed.ShowModal;
if mimportou then
   begin
   if (mqtd>13) then
      STG_PP.TopRow:=mqtd-12;
   fpmatprima(0);
   fptotais(0);
   MCODPRO.Text  :='';
   MGRADE.Text   :='';
   MQTDPREV.Text :='';
   MUND.Text     :='';
   MNOMPRO.Text  :='';
   MPU.Text      :='';
   MTOTAL.Caption:='';
   MQTDPREV.Text :='';
   end;
MCODPRO.SetFocus;


Frm_ImpPed.Free;
end;

procedure TFrm_Producao.CB_MPGRUPOExit(Sender: TObject);
begin
fDeletaPadroes(0,'_PRODUCAO','CB_MPGRUPO');
fGravaPadroes(0,'CB_MPGRUPO'        ,'checked'   ,'_PRODUCAO',iif(CB_MPGRUPO.Checked,'true','false'));

end;

procedure TFrm_Producao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Producao.sbSalvarClick(Sender: TObject);
var
x: Integer;
begin
if GroupBox1.Enabled then
   MNOME.SetFocus;
sbSalvar.Visible:=false;
fGravaPadroes(-1,'MCOL_COD','Text'    ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_cod]));
fGravaPadroes(-1,'MCOL_GRADE','Text'  ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_grade]));
fGravaPadroes(-1,'MCOL_QTD','Text'    ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_qtd]));
fGravaPadroes(-1,'MCOL_UND','Text'    ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_und]));
fGravaPadroes(-1,'MCOL_DESC','Text'   ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_desc]));
fGravaPadroes(-1,'MCOL_PU','Text'     ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_pu]));
fGravaPadroes(-1,'MCOL_VT','Text'     ,'_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_vt]));
fGravaPadroes(-1,'MCOL_QTDPROD','Text','_PRODUCAO',IntToStr(STG_PP.ColWidths[mcol_qtdProd]));


fGravaPadroes(-1,'MCOLMP_COD'     ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_cod]));
fGravaPadroes(-1,'MCOLMP_GRADE'   ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_grade]));
fGravaPadroes(-1,'MCOLMP_LOTE'    ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_lote]));
fGravaPadroes(-1,'MCOLMP_DTVCTO'  ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_dtvcto]));
fGravaPadroes(-1,'MCOLMP_QTDPREV' ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_qtdprev]));
fGravaPadroes(-1,'MCOLMP_QTDUTIL' ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_qtdutil]));
fGravaPadroes(-1,'MCOLMP_UND'     ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_und]));
fGravaPadroes(-1,'MCOLMP_DESC'    ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_desc]));
fGravaPadroes(-1,'MCOLMP_PCOUNI'  ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_pcouni]));
fGravaPadroes(-1,'MCOLMP_VT'      ,'Text','_PRODUCAO',IntToStr(STG_MP.ColWidths[mcolmp_vt]));






//STG_MP.ColWidths[x]
//fGravaPadroes(0,'MCOL_GRADE','Text','_ACCR',IntToStr(mcol_grade));
//fGravaPadroes(0,'MCOL_QTD','Text','_ACCR',IntToStr(mcol_cod));
{




                 Frm_Accr_AjustaColunas.STG1.Cells[01,x]);


      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolnumdup,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mcolnumdup);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLNUMDUP';
      end
   else if x=mColParc then
      begin
      Frm_Accr_AjustaColunas.STG1.Cells[00,x]:=Frm_AcCR.STG_DA.Cells[mcolparc,00];
      Frm_Accr_AjustaColunas.STG1.Cells[01,x]:=IntToStr(mColParc);
      Frm_Accr_AjustaColunas.STG1.Cells[02,x]:='MCOLPARC';
      end
}
end;

procedure TFrm_Producao.STG_PPEnter(Sender: TObject);
begin
if codusr=1111 then
   sbSalvar.Visible:=true;
end;

procedure TFrm_Producao.STG_MPEnter(Sender: TObject);
begin
if codusr=1111 then
   sbSalvar.Visible:=true;
end;

end.
