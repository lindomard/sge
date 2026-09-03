unit S_Pfor01_PedAut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask,
  func,lerarq, CheckLst, ExtCtrls,S_For, DBCtrls, S_SelEmp, s_lerarq_geral;

type
  TFrm_Pfor01_PedAut = class(TForm)
    Src_Pfor: TDataSource;
    Tb_PFor: TQuery;
    DBGrid_pfor: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    Label2: TLabel;
    QTDDIAS: TEdit;
    Label3: TLabel;
    Tb_PForQUANT: TFloatField;
    Tb_PForVALOR: TFloatField;
    Tb_PForTOTCUS: TFloatField;
    Tb_PForQTDDIAS: TFloatField;
    Tb_PForCODPRO: TFloatField;
    Tb_PForNOME: TStringField;
    Tb_PForUND: TStringField;
    Tb_PForEMBALAGEM: TFloatField;
    Tb_PForPRECO: TFloatField;
    Tb_PForPCUSTO: TFloatField;
    Tb_PForESTOQUE: TFloatField;
    Tb_PForENTPEN: TFloatField;
    Tb_PFormedia: TFloatField;
    Tb_PFordiasestoque: TFloatField;
    Tb_PForpervda: TFloatField;
    Tb_PForvlrvda: TFloatField;
    Tb_PForvlrcus: TFloatField;
    Tb_PForsugestao: TFloatField;
    Tb_PForQTDPED: TFloatField;
    U_PFor: TUpdateSQL;
    bbGerar: TBitBtn;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    CLBNivel: TCheckListBox;
    Label12: TLabel;
    Panel1: TPanel;
    bbSairGerando: TBitBtn;
    CB_VDAATU: TCheckBox;
    CB_CUSATU: TCheckBox;
    CB_COMPRAS: TCheckBox;
    CB_PROSMOV: TCheckBox;
    BitBtn1: TBitBtn;
    Tb_PForSITTRI: TStringField;
    bbTransfSug: TBitBtn;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Tb_PForESTMIN: TFloatField;
    Tb_PForESTMAX: TFloatField;
    CB_PRINCIPAL: TCheckBox;
    Tb_PForFRACAO: TFloatField;
    edt_codpro: TEdit;
    panel_rodape: TPanel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    CB_ESTMIN: TCheckBox;
    btn_SalvaPadrao: TButton;
    Label19: TLabel;
    edt_nompro: TEdit;
    procedure bbSairGerandoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure QTDDIASExit(Sender: TObject);
    procedure Tb_PForCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbTransfSugClick(Sender: TObject);
    procedure DBGrid_pforDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_SalvaPadraoClick(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codproExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Pfor01_PedAut: TFrm_Pfor01_PedAut;
  mqtddias: Integer=30;
  mnomeView: String;

implementation

uses Math, S_DM4;

{$R *.dfm}

procedure TFrm_Pfor01_PedAut.bbSairGerandoClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFrm_Pfor01_PedAut.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   edt_codpro.Visible:=true
else
   edt_codpro.Visible:=false;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

MDT1.Text:='01/'+FormatDateTime('mm/yyyy',date-30);

MDT2.Text:=FormatDateTime(fdt2, fdatafinal(0,StrToDate(MDT1.Text)));

Tb_PForQUANT.DisplayFormat      :=mcasqtd;
Tb_PForVALOR.DisplayFormat      :=mcasas;
Tb_PForTOTCUS.DisplayFormat     :=mcasas;
Tb_PForPRECO.DisplayFormat      :=mcasaspu;
Tb_PForPCUSTO.DisplayFormat     :=mcasaspu;
Tb_PForESTOQUE.DisplayFormat    :=mcasqtd;
Tb_PForENTPEN.DisplayFormat     :=mcasqtd;
Tb_PFormedia.DisplayFormat      :=mcasqtd;
Tb_PFordiasestoque.DisplayFormat:=mcasqtd;
Tb_PForvlrvda.DisplayFormat     :=mcasas;
Tb_PForvlrcus.DisplayFormat     :=mcasas;
Tb_PForsugestao.DisplayFormat   :=mcasqtd;
Tb_PForQTDPED.DisplayFormat     :=mcasqtd;
Tb_PForESTMIN.DisplayFormat     :=mcasqtd;
Tb_PForESTMAX.DisplayFormat     :=mcasqtd;

if flfilpad(0,'_PFOR01_PEDAUT','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_COMPRAS',[]) then
    CB_COMPRAS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VDAATU',[]) then
    CB_VDAATU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CUSATU',[]) then
    CB_CUSATU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PROSMOV',[]) then
    CB_PROSMOV.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ESTMIN',[]) then
    CB_ESTMIN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  end;


end;

procedure TFrm_Pfor01_PedAut.bbGerarClick(Sender: TObject);
var
  mdifdatas: Real;
  mcampo_qtd: String;
begin

if Trim(MDT1.Text)='/  /' then
   begin
   fmensagem('Data Inicial, Campo Obrigatório!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;

if Trim(MDT2.Text)='/  /' then
   begin
   fmensagem('Data Final, Campo Obrigatório!',0,['0'],0);
   MDT2.SetFocus;
   exit;
   end;
if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
   begin
   fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
mdifdatas:=StrToDate(MDT2.Text)-StrtoDate(MDT1.Text);

mNomeView:=fProcTemp(22);

if CB_COMPRAS.Checked then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin3(1,'CADPF2','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADPRO','PDCODPRO','PF2CODPRO');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADEST','CECODPRO','PF2CODPRO');

   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','PF2CODEMP','PFCODPRO','PF2CODPRO');
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');

   DM1.Query1.SQL.Add('select SUM(PF2QTDP) AS QUANT, '
                    +'     SUM((PF2QTDP*PF2PU)-PF2TOTDES) AS VALOR, '
                    +'     SUM((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       NVL(TRIM(PF2NOMPRO),PDNOME)  AS NOME, '
                    +'       PDFRACAO   AS FRACAO, '
                    +'       PF2CODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDESTMAX   AS ESTMAX, '
                    +'       PDPRECO1   AS PRECO, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_est_cf,  '
                            +' 1,pdfis_cst_icms_est_rev, '
                            +' 4,pdfis_cst_icms_est_rev  '
                            +'  ,pdfis_cst_icms_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_int_cf,  '
                            +' 1,pdfis_cst_icms_int_rev, '
                            +' 4,pdfis_cst_icms_int_rev  '
                            +'  ,pdfis_cst_icms_int_cf)          AS SITTRI, ');
          end;
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_est_cf,  '
                            +' 1,pdfis_csosn_est_rev, '
                            +' 4,pdfis_csosn_est_rev  '
                            +'  ,pdfis_csosn_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_int_cf,  '
                            +' 1,pdfis_csosn_int_rev, '
                            +' 4,pdfis_csosn_int_rev  '
                            +'  ,pdfis_csosn_int_cf)          AS SITTRI, ');
          end;
        end;

  DM1.Query1.SQL.Add('       PDPRECOC   AS PCUSTO, '
                    +'       CESALDO    AS ESTOQUE, '
                    +'       CEENTPEN-CEENTPEN   AS QTDPED, '
                    +'       CEENTPEN   AS ENTPEN '
                    +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  (PF1STATUS>0) and (PF1STATUS<9)');
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
     DM1.Query1.SQL.add(' and PDNIVEL '+mcinst2);
   DM1.Query1.SQL.Add(' and PF1DATA>='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT1.Text))+chr(39)
                    +' and PF1DATA<='+chr(39)+FormatDateTime(fdt2, StrtoDate(MDT2.Text))+chr(39));
   if trim(CODFOR.Text)<>'' THEN
      begin
      if CB_PRINCIPAL.Checked then
         DM1.Query1.Sql.Add(' and PDCODFOR=0'+TRIM(CODFOR.Text))
      else
         DM1.Query1.Sql.Add(' and (PDCODFOR=0'+TRIM(CODFOR.Text)+' or PFCODFOR=0'+TRIM(CODFOR.Text)+')');
      end;
   if valint(edt_codpro.Text)<>0 then
      DM1.Query1.Sql.Add(' and PDCODPRO=0'+TRIM(edt_codpro.Text));
   DM1.Query1.Sql.Add(' and PDSTATUS<8');

   DM1.Query1.SQL.Add(' group by PF2NOMPRO, PDFRACAO, '
                    +'        PF2CODPRO, '
                    +'        PDUND, '
                    +'        PDEMBPAD, '
                    +'        PDESTMIN, '
                    +'        PDESTMAX,'
                    +'        pdfis_origem,  pdnivel, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          DM1.Query1.SQL.Add(' pdfis_cst_icms_est_cf, pdfis_cst_icms_est_rev, ')
        else
          DM1.Query1.SQL.Add(' pdfis_cst_icms_int_cf, pdfis_cst_icms_int_rev, ');
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          DM1.Query1.SQL.Add(' pdfis_csosn_est_cf, pdfis_csosn_est_rev, ')
        else
          DM1.Query1.SQL.Add(' pdfis_csosn_int_cf, pdfis_csosn_int_rev, ');
        end;

   DM1.Query1.SQL.Add('        PDPRECO1, '
                    +'        PDPRECOC, '
                    +'        CESALDO, '
                    +'        CEENTPEN ');
   if CB_PROSMOV.Checked then
      begin
      DM1.Query1.SQL.Add(' union ');

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if not CB_PRINCIPAL.Checked then
         fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');


      DM1.Query1.SQL.Add('select PDCODEMP-PDCODEMP AS QUANT, '
                    +'     PDCODEMP-PDCODEMP AS VALOR, '
                    +'     PDCODEMP-PDCODEMP AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       PDFRACAO   AS FRACAO, '
                    +'       PDCODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDESTMAX   AS ESTMAX,  '
                    +'       PDPRECO1   AS PRECO, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_est_cf,  '
                            +' 1,pdfis_cst_icms_est_rev, '
                            +' 4,pdfis_cst_icms_est_rev  '
                            +'  ,pdfis_cst_icms_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_int_cf,  '
                            +' 1,pdfis_cst_icms_int_rev, '
                            +' 4,pdfis_cst_icms_int_rev  '
                            +'  ,pdfis_cst_icms_int_cf)          AS SITTRI, ');
          end;
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_est_cf,  '
                            +' 1,pdfis_csosn_est_rev, '
                            +' 4,pdfis_csosn_est_rev  '
                            +'  ,pdfis_csosn_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_int_cf,  '
                            +' 1,pdfis_csosn_int_rev, '
                            +' 4,pdfis_csosn_int_rev  '
                            +'  ,pdfis_csosn_int_cf)          AS SITTRI, ');
          end;
        end;

  DM1.Query1.SQL.Add('        PDPRECOC   AS PCUSTO, '
                    +'       PDSALDO    AS ESTOQUE, '
                    +'       PDENTPEN-PDENTPEN   AS QTDPED, '
                    +'       PDENTPEN   AS ENTPEN ');
      mcinst:=' and ';

      if not CB_PRINCIPAL.Checked then
         begin
         DM1.Query1.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')+' PDSTATUS<9 ');
         end
      else
         DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<8 ');
      mcinst2:=fItenstCheckListBox(0,CLBNivel);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.add(mcinst+' PDNIVEL '+mcinst2);
         mcinst:=' and ';
         end;
      if trim(CODFOR.Text)<>'' THEN
         begin
         if CB_PRINCIPAL.Checked then
           DM1.Query1.Sql.Add(mcinst+ ' PDCODFOR=0'+TRIM(CODFOR.Text))
         else
            DM1.Query1.Sql.Add(mcinst+ ' (PDCODFOR=0'+TRIM(CODFOR.Text)+' or PFCODFOR=0'+TRIM(CODFOR.Text)+')');
         mcinst:=' and ';
         end;
      if valint(edt_codpro.Text)<>0 then
         DM1.Query1.Sql.Add(' and PDCODPRO=0'+TRIM(edt_codpro.Text));

      end;
   try
      DM1.Query1.ExecSQL;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
      end;
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(1,'CADP02','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADPRO','PDCODPRO','P2CODPRO');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADEST','CECODPRO','P2CODPRO');
   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','P2CODEMP','PFCODPRO','P2CODPRO');
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst4:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);



   DM1.Query1.SQL.Add('select '+mCampo_Qtd+' AS QUANT, '
                    +'     SUM(P2TOTLIQ-P2DESCRAT) AS VALOR, '
                    +'      SUM(P2PCOCUS*'+mcinst4+') AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       PDFRACAO   AS FRACAO, '
                    +'       P2CODPRO   AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDESTMAX   AS ESTMAX, '
                    +'       PDPRECO1   AS PRECO, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_est_cf,  '
                            +' 1,pdfis_cst_icms_est_rev, '
                            +' 4,pdfis_cst_icms_est_rev  '
                            +'  ,pdfis_cst_icms_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_int_cf,  '
                            +' 1,pdfis_cst_icms_int_rev, '
                            +' 4,pdfis_cst_icms_int_rev  '
                            +'  ,pdfis_cst_icms_int_cf)          AS SITTRI, ');
          end;
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_est_cf,  '
                            +' 1,pdfis_csosn_est_rev, '
                            +' 4,pdfis_csosn_est_rev  '
                            +'  ,pdfis_csosn_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_int_cf,  '
                            +' 1,pdfis_csosn_int_rev, '
                            +' 4,pdfis_csosn_int_rev  '
                            +'  ,pdfis_csosn_int_cf)          AS SITTRI, ');
          end;
        end;

  DM1.Query1.SQL.Add('       PDPRECOC   AS PCUSTO, '
                    +'       CESALDO    AS ESTOQUE, '
                    +'       CEENTPEN-CEENTPEN   AS QTDPED, '
                    +'       CEENTPEN   AS ENTPEN '

                    +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  P1STATUS<'+mstatus_excluido+' AND P1EMIDOC=1 AND P1TIPO=1 ');

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.add(' and PDNIVEL '+mcinst2);
   DM1.Query1.SQL.Add(' AND CECODPRO=PDCODPRO '
                    +' and P1DATDOC>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39)
                    +' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

   if trim(CODFOR.Text)<>'' THEN
      begin
      if CB_PRINCIPAL.Checked then
         DM1.Query1.Sql.Add(' and PDCODFOR=0'+TRIM(CODFOR.Text))
      else
         DM1.Query1.Sql.Add(' and (PDCODFOR=0'+TRIM(CODFOR.Text)+' or PFCODFOR=0'+TRIM(CODFOR.Text)+')');
      end;
   if valint(edt_codpro.Text)<>0 then
      DM1.Query1.Sql.Add(' and PDCODPRO=0'+TRIM(edt_codpro.Text));
   DM1.Query1.SQL.Add(' group by PDNOME,PDFRACAO, '
                    +'        P2CODPRO, '
                    +'        PDUND, '
                    +'        PDEMBPAD, '
                    +'        PDESTMIN, '
                    +'        PDESTMAX,  '
                    +'        pdfis_origem,  pdnivel, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          DM1.Query1.SQL.Add(' pdfis_cst_icms_est_cf, pdfis_cst_icms_est_rev, ')
        else
          DM1.Query1.SQL.Add(' pdfis_cst_icms_int_cf, pdfis_cst_icms_int_rev, ');
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          DM1.Query1.SQL.Add(' pdfis_csosn_est_cf, pdfis_csosn_est_rev, ')
        else
          DM1.Query1.SQL.Add(' pdfis_csosn_int_cf, pdfis_csosn_int_rev, ');
        end;
  DM1.Query1.SQL.Add('        PDPRECO1, '
                    +'        PDPRECOC, '
                    +'        CESALDO, '
                    +'        CEENTPEN ');
   if CB_PROSMOV.Checked then
      begin
      DM1.Query1.SQL.Add(' union ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      if not CB_PRINCIPAL.Checked then
         fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');


      DM1.Query1.SQL.Add('select PDCODEMP-PDCODEMP AS QUANT, '
                    +'     PDCODEMP-PDCODEMP AS VALOR, '
                    +'     PDCODEMP-PDCODEMP AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       PDFRACAO   AS FRACAO, '
                    +'       PDCODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDESTMAX   AS ESTMAX, '
                    +'       PDPRECO1   AS PRECO, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_est_cf,  '
                            +' 1,pdfis_cst_icms_est_rev, '
                            +' 4,pdfis_cst_icms_est_rev  '
                            +'  ,pdfis_cst_icms_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_cst_icms_int_cf,  '
                            +' 1,pdfis_cst_icms_int_rev, '
                            +' 4,pdfis_cst_icms_int_rev  '
                            +'  ,pdfis_cst_icms_int_cf)          AS SITTRI, ');
          end;
        end
      else
        begin
        if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString  then
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_est_cf,  '
                            +' 1,pdfis_csosn_est_rev, '
                            +' 4,pdfis_csosn_est_rev  '
                            +'  ,pdfis_csosn_est_cf)       AS SITTRI, ');
          end
        else
          begin
          DM1.Query1.SQL.Add('   pdfis_origem||decode(pdnivel, '
                            +' 0,pdfis_csosn_int_cf,  '
                            +' 1,pdfis_csosn_int_rev, '
                            +' 4,pdfis_csosn_int_rev  '
                            +'  ,pdfis_csosn_int_cf)          AS SITTRI, ');
          end;
        end;

      DM1.Query1.SQL.Add('       PDPRECOC   AS PCUSTO, '
                    +'       PDSALDO    AS ESTOQUE, '
                    +'       PDENTPEN-PDENTPEN   AS QTDPED, '
                    +'       PDENTPEN   AS ENTPEN ');
      if not CB_PRINCIPAL.Checked then
         begin
         DM1.Query1.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')+' PDSTATUS<9 ');
         end
      else
         DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<8 ');


      mcinst:=' and ';
      mcinst2:=fItenstCheckListBox(0,CLBNivel);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.add(mcinst+' PDNIVEL '+mcinst2);
         mcinst:=' and ';
         end;

      if trim(CODFOR.Text)<>'' THEN
         begin
         if CB_PRINCIPAL.Checked then
           DM1.Query1.Sql.Add(mcinst+ ' PDCODFOR=0'+TRIM(CODFOR.Text))
         else
            DM1.Query1.Sql.Add(mcinst+ ' (PDCODFOR=0'+TRIM(CODFOR.Text)+' or PFCODFOR=0'+TRIM(CODFOR.Text)+')');
         mcinst:=' where ';
         end;
      if valint(edt_codpro.Text)<>0 then
         DM1.Query1.Sql.Add(' and PDCODPRO=0'+TRIM(edt_codpro.Text));

      end;
   try
   
      DM1.Query1.ExecSQL;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
      end;
   end;
//DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
//EXIT;
Tb_PFor.Close;
Tb_PFor.SQL.Clear;
Tb_PFor.SQL.Add('Select sum(QUANT)      as QUANT '
                    +'    ,sum(VALOR)     as VALOR '
                    +'    ,sum(TOTCUS)    as TOTCUS '
                    +'    ,max(QTDDIAS)   as QTDDIAS '
                    +'    ,max(EMBALAGEM) as EMBALAGEM '
                    +'    ,max(PRECO)     as PRECO '
                    +'    ,max(SITTRI)     AS SITTRI '
                    +'    ,max(PCUSTO)    as PCUSTO '
                    +'    ,max(ESTOQUE)   as ESTOQUE '
                    +'    ,sum(QTDPED)    AS QTDPED '
                    +'    ,max(ENTPEN)    as ENTPEN '
                    +'    ,max(ESTMIN)    AS ESTMIN '
                    +'    ,max(ESTMAX)    AS ESTMAX '
                    +'    ,max(FRACAO)    AS FRACAO '
                    +'    ,NOME '
                    +'    ,CODPRO '
                    +'    ,UND '
                    +' from '+mNomeView
                    +' group by NOME,CODPRO,UND ');
Tb_PFor.Open;
if Tb_PFor.Eof then
   begin
   FMensagem('Nada a Ser Impresso!',0,['0'],0);
   exit;
   end;
end;

procedure TFrm_Pfor01_PedAut.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Pfor01_PedAut.CODFORExit(Sender: TObject);
begin


CODFOR.Text:=fdeixanum2(CODFOR.Text);
NOMFOR.Text:='';
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,1,CODFOR.Text) then
      begin
      Fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      exit;
      end
   else
      begin
      NOMFOR.Text:=DM1.Tb_ForFRAZAO.AsString;
      end;
   end;



end;

procedure TFrm_Pfor01_PedAut.QTDDIASExit(Sender: TObject);
begin
QTDDIAS.Text:=fdeixanum2(QTDDIAS.Text);
mqtddias    :=ValInt(QTDDIAS.Text);
if Tb_PFor.Active then
   Tb_PFor.First;

end;

procedure TFrm_Pfor01_PedAut.Tb_PForCalcFields(DataSet: TDataSet);
begin
Tb_PFormedia.Value   :=0;
if (Tb_PForQUANT.Value<>0) and (Tb_PForQTDDIAS.AsFloat<>0) then
   Tb_PFormedia.Value:=Arredonda( (Tb_PForQUANT.Value/Tb_PForQTDDIAS.Value)*30 , DM1.Tb_PargerPCASQTD.AsInteger);

Tb_PForsugestao.Value:=0;

if (Tb_PForQUANT.Value<>0) and (Tb_PForQTDDIAS.AsFloat<>0) and (mqtddias<>0) then
   Tb_PForsugestao.Value:=Arredonda( (Tb_PForQUANT.Value/Tb_PForQTDDIAS.Value)*mqtddias
                         -Tb_PForENTPEN.Value
                         -Tb_PForESTOQUE.Value
                         , DM1.Tb_pargerPCASQTD.Asinteger);


IF CB_ESTMIN.Checked then
   begin
   Tb_PForsugestao.AsFloat:=Tb_PForESTMIN.AsFloat-(Tb_PForESTOQUE.AsFloat+Tb_PForENTPEN.AsFloat);
   end;

if Tb_PForsugestao.AsFloat<0 then
   Tb_PForsugestao.Value:=0;

if (Tb_PForFRACAO.AsInteger=0) and (Tb_PForsugestao.AsFloat<>0)  then
   Tb_PForsugestao.AsFloat:=Round(Tb_PForsugestao.Value);

Tb_PFordiasestoque.Value:=0;
if (Tb_PForQUANT.Value<>0) and (Tb_PForQTDDIAS.AsFloat<>0) then
   begin
   Tb_PFordiasestoque.Value:=Arredonda( Tb_PForESTOQUE.Value /
                             (Tb_PForQUANT.Value/Tb_PForQTDDIAS.Value)
                             , DM1.Tb_PargerPCASQTD.AsInteger);
   end;
if (Tb_PForFRACAO.AsInteger=0) and (Tb_PFordiasestoque.AsFloat<>0)  then
   Tb_PFordiasestoque.AsFloat:=Round(Tb_PFordiasestoque.Value);

end;

procedure TFrm_Pfor01_PedAut.BitBtn1Click(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_Pfor01_PedAut.bbTransfSugClick(Sender: TObject);
begin
if not (Tb_PFor.Active) or (Tb_PFor.IsEmpty) then
   begin
   FMensagem('Favor Criar um Arquivo Valido!',0,['0'],0);
   exit;
   end;

Tb_PFor.First;
While not Tb_PFor.Eof do
   begin
   if Tb_PForsugestao.AsFloat>0 then
      begin
      Tb_PFor.Edit;
      Tb_PForQTDPED.AsFloat:=Tb_PForsugestao.AsFloat;
      Tb_PFor.Post;
      end;
   Tb_PFor.Next;
   end;
Tb_PFor.First;
end;

procedure TFrm_Pfor01_PedAut.DBGrid_pforDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (Tb_PForESTMIN.AsFloat>0) and (Tb_PForESTMIN.AsFloat>=Tb_PForESTOQUE.AsFloat) then
    begin
    DBGrid_pfor.Canvas.Font.Color := $00004000;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else if Tb_PForsugestao.AsFloat>0 then
    begin
    DBGrid_pfor.Canvas.Font.Color := clGreen;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else if (Tb_PForESTMAX.AsFloat>0) and (Tb_PForESTOQUE.AsFloat>=Tb_PForESTMAX.AsFloat) then
    begin
    DBGrid_pfor.Canvas.Font.Color := clRed;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else
    begin
    DBGrid_pfor.Canvas.Font.Color := clBlue;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

if DataCol=7 then
   begin
   DBGrid_pfor.Canvas.Brush.Color := clWhite;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
{
if (Tb_PForESTMIN.AsFloat>0) and (Tb_PForESTMIN.AsFloat>=Tb_PForESTOQUE.AsFloat) then
    begin
    DBGrid_pfor.Canvas.Brush.Color := $00004000;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else if Tb_PForsugestao.AsFloat>0 then
    begin
    DBGrid_pfor.Canvas.Brush.Color := clGreen;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else if (Tb_PForESTMAX.AsFloat>0) and (Tb_PForESTOQUE.AsFloat>=Tb_PForESTMAX.AsFloat) then
    begin
    DBGrid_pfor.Canvas.Brush.Color := clRed;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end
else
    begin
    DBGrid_pfor.Canvas.Brush.Color := clBlue;
    DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
}
end;

procedure TFrm_Pfor01_PedAut.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Pfor01_PedAut',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;



end;

procedure TFrm_Pfor01_PedAut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pfor01_PedAut.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Pfor01_PedAut.FormShow(Sender: TObject);
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

procedure TFrm_Pfor01_PedAut.btn_SalvaPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_PFOR01_PEDAUT','');
fGravaPadroes(0,'CB_COMPRAS'  ,'checked'   ,'_PFOR01_PEDAUT',iif(CB_COMPRAS.Checked,'true','false'));
fGravaPadroes(0,'CB_VDAATU'   ,'checked'   ,'_PFOR01_PEDAUT',iif(CB_VDAATU.Checked,'true','false'));
fGravaPadroes(0,'CB_CUSATU'   ,'checked'   ,'_PFOR01_PEDAUT',iif(CB_CUSATU.Checked,'true','false'));
fGravaPadroes(0,'CB_PROSMOV'  ,'checked'   ,'_PFOR01_PEDAUT',iif(CB_PROSMOV.Checked,'true','false'));
fGravaPadroes(0,'CB_ESTMIN'   ,'checked'   ,'_PFOR01_PEDAUT',iif(CB_ESTMIN.Checked,'true','false'));
end;

procedure TFrm_Pfor01_PedAut.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'Frm_PFor01_PedAut',key);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  begin
  key:=#0;
  end;

end;

procedure TFrm_Pfor01_PedAut.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.Text);
if not (flcadpro(1,0,0,Trim(edt_codpro.Text))) and (Trim(edt_codpro.Text)<>'') then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  edt_codpro.setfocus;
  exit;
  end
else if (Trim(edt_codpro.Text)='') then
  begin
  edt_nompro.Text:='***Todas os Produtos Cadastrados';
  end
else
  begin
  edt_nompro.Text:=DM1.Tb_ProPDNOME.Value;
  end;
end;

end.
