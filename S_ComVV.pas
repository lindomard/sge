unit S_ComVV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, db, dbtables, func, S_DM1,
  s_CVVC, S_PComVV, S_Impres, S_Ven,lerarq,S_Sup,S_DM4,S_Usr,S_Agde,S_Assessor,S_DM2,
  ComCtrls, AlinharEdit, S_SelEmp, DBClient, DBGrids;

type
  TFrm_ComVV = class(TForm)
    Qr_CL01: TQuery;
    Qr_CL02: TQuery;
    Qr_CL01CL1CODEMP: TFloatField;
    Qr_CL01CL1CHAVE: TFloatField;
    Qr_CL01CL1DATA: TDateTimeField;
    Qr_CL01CL1TIPO: TFloatField;
    Qr_CL01CL1CODIGO: TFloatField;
    Qr_CL01CL1DATAI: TDateTimeField;
    Qr_CL01CL1DATAF: TDateTimeField;
    Qr_CL01CL1OBS01: TStringField;
    Qr_CL01CL1OBS02: TStringField;
    Qr_CL02CL2CODEMP: TFloatField;
    Qr_CL02CL2CHAVE: TFloatField;
    Qr_CL02CL2SEQ: TFloatField;
    Qr_CL02CL2DOC: TFloatField;
    Qr_CL02CL2NUMERO: TFloatField;
    Qr_CL02CL2DESD: TStringField;
    Qr_CL02CL2DUP: TFloatField;
    Qr_CL02CL2CHAVEP: TFloatField;
    Qr_CL02CL2ORDEMP: TFloatField;
    Qr_CL01CL1PCOMIS: TFloatField;
    Qr_CL01CL1QTDDOC: TFloatField;
    Qr_CL01CL1TOTDOC: TFloatField;
    Qr_CL01CL1TOTCOM: TFloatField;
    Qr_CL02CL2CODEMPD: TFloatField;
    Qr_CL02CL2VALCOM: TFloatField;
    Qr_CL02CL2VALDOC: TFloatField;
    Qr_CL02CL2VALFRE: TFloatField;
    Qr_CL02CL2VALICMSR: TFloatField;
    Qr_CL02CL2SEMCOM: TFloatField;
    Qr_CL02CL2VALACRE: TFloatField;
    Qr_CL02CL2VALCTL: TFloatField;
    Qr_CL02CL2LOTSEQ: TFloatField;
    Qr_CL02CL2LOTSEQ_DC: TFloatField;
    Qr_CL02CL2DTEMIS: TDateTimeField;
    Qr_CL02CL2CODECF: TFloatField;
    Qr_CL02CL2DTVCTO: TDateTimeField;
    Qr_CL02CL2DTBX: TDateTimeField;
    Qr_CL02CL2CODCLI: TFloatField;
    Qr_CL02CRAZAO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsRecibo: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    tsConfiguracao: TTabSheet;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    CHAVE: TEdit;
    ORDEM: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    bbitem_excluir: TBitBtn;
    NOMCLI: TEdit;
    VALOR: TEdit;
    bbitem_pesq: TBitBtn;
    MDTEMIS: TMaskEdit;
    MCODEMP: TEdit;
    VALCOM: TEdit;
    MLOTSEQ: TEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_nome: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    NUMLOT: TEdit;
    MDATA: TMaskEdit;
    OBS1: TEdit;
    OBS2: TEdit;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    MDATAI: TMaskEdit;
    MDATAF: TMaskEdit;
    PCOMIS: TEdit;
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    CB_QTDITENS: TCheckBox;
    RG_ORDEM: TRadioGroup;
    Label4: TLabel;
    gb_creditos: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    MTEXTOC01: TEdit;
    MVALC01: TEdit;
    MTEXTOC02: TEdit;
    MTEXTOC03: TEdit;
    MTEXTOC04: TEdit;
    MTEXTOC05: TEdit;
    MTEXTOC06: TEdit;
    MTEXTOC07: TEdit;
    MTEXTOC08: TEdit;
    MTEXTOC09: TEdit;
    MTEXTOC10: TEdit;
    MVALC02: TEdit;
    MVALC03: TEdit;
    MVALC04: TEdit;
    MVALC08: TEdit;
    MVALC06: TEdit;
    MVALC05: TEdit;
    MVALC07: TEdit;
    MVALC09: TEdit;
    MVALC10: TEdit;
    Memo_cred: TMemo;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    MTEXTOD01: TEdit;
    MVALD01: TEdit;
    MTEXTOD02: TEdit;
    MTEXTOD03: TEdit;
    MTEXTOD04: TEdit;
    MTEXTOD05: TEdit;
    MTEXTOD06: TEdit;
    MTEXTOD07: TEdit;
    MTEXTOD08: TEdit;
    MTEXTOD09: TEdit;
    MTEXTOD10: TEdit;
    MVALD02: TEdit;
    MVALD03: TEdit;
    MVALD04: TEdit;
    MVALD08: TEdit;
    MVALD06: TEdit;
    MVALD05: TEdit;
    MVALD07: TEdit;
    MVALD09: TEdit;
    MVALD10: TEdit;
    Memo_deb: TMemo;
    CB_DESCFIN: TCheckBox;
    sb_SalvarPadrao_Master: TSpeedButton;
    Label10: TLabel;
    TOTDEBITOS: TStaticText;
    Label13: TLabel;
    TOTOUTCRED: TStaticText;
    Label27: TLabel;
    TOTLIQ: TStaticText;
    QTDDOC: TStaticText;
    TOTDOC: TStaticText;
    TOTCOM: TStaticText;
    CB_EMIREC: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    Qr_CL03: TQuery;
    Qr_CL03CL3CODEMP: TFloatField;
    Qr_CL03CL3LOTSEQ: TFloatField;
    Qr_CL03CL3CHAVE: TFloatField;
    Qr_CL03CL3NAT: TFloatField;
    Qr_CL03CL3ORDEM: TFloatField;
    Qr_CL03CL3TEXTO: TStringField;
    Qr_CL03CL3VALOR: TFloatField;
    Qr_CL02CL2VALDESC: TFloatField;
    CB_CHAVEPED: TCheckBox;
    Label14: TLabel;
    cb_tipo_data: TComboBox;
    CB_DESCRATEADO: TCheckBox;
    Label18: TLabel;
    edt_codcai: TEdit;
    edt_nomcai: TEdit;
    cb_codcai_omitir: TCheckBox;
    Qr_CL01CL1CODCAI: TFloatField;
    Qr_CL01CL1CODCAI_OMITIR: TStringField;
    cds_comvv: TClientDataSet;
    cds_comvvCL2CHAVE: TIntegerField;
    cds_comvvCL2ORDEM: TIntegerField;
    cds_comvvCL2TIPODOC: TIntegerField;
    cds_comvvCL2DTEMIS: TDateField;
    cds_comvvCL2NOMSAC: TStringField;
    cds_comvvCL2VALOR: TFloatField;
    cds_comvvCL2COMIS: TFloatField;
    cds_comvvCL2VALFRE: TFloatField;
    cds_comvvCL2ICMSRET: TFloatField;
    cds_comvvCL2SEMCOM: TFloatField;
    cds_comvvCL2COMTLV: TFloatField;
    cds_comvvCL2VALACRE: TFloatField;
    cds_comvvCL2CODCLI: TFloatField;
    dsp_comvv: TDataSource;
    DBGrid_comvv: TDBGrid;
    cds_comvvCL2CODEMP_DC: TIntegerField;
    cds_comvvCL2LOTSEQ_DC: TIntegerField;
    cds_comvvCL2DESCFIN: TFloatField;
    cds_comvvCL2COMSUP: TFloatField;
    cds_comvvCL2COMASSE: TFloatField;
    Label19: TLabel;
    edt_preducao_bc: TEdit;
    cds_comvvCL2REDUZIR_PERC: TFloatField;
    cds_comvvCL2REDUZIR_VALOR: TFloatField;
    Qr_CL02CL2REDUZIR_PERC: TFloatField;
    Qr_CL02CL2REDUZIR_VALOR: TFloatField;
    Qr_CL01CL1REDUZIR_PERC: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure bbitem_excluirClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure bbitem_pesqClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure MDATAIExit(Sender: TObject);
    procedure MDATAFExit(Sender: TObject);
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure ORDEMExit(Sender: TObject);
    procedure PCOMISExit(Sender: TObject);
    procedure CODVENEnter(Sender: TObject);
    procedure MDATAIEnter(Sender: TObject);
    procedure MDATAFEnter(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure MLOTSEQExit(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sb_SalvarPadrao_MasterClick(Sender: TObject);
    procedure MVALC01Enter(Sender: TObject);
    procedure MVALC02Enter(Sender: TObject);
    procedure MVALC03Enter(Sender: TObject);
    procedure MVALC04Enter(Sender: TObject);
    procedure MVALC05Enter(Sender: TObject);
    procedure MVALC06Enter(Sender: TObject);
    procedure MVALC07Enter(Sender: TObject);
    procedure MVALC08Enter(Sender: TObject);
    procedure MVALC09Enter(Sender: TObject);
    procedure MVALC10Enter(Sender: TObject);
    procedure MVALD01Enter(Sender: TObject);
    procedure MVALD02Enter(Sender: TObject);
    procedure MVALD03Enter(Sender: TObject);
    procedure MVALD04Enter(Sender: TObject);
    procedure MVALD05Enter(Sender: TObject);
    procedure MVALD06Enter(Sender: TObject);
    procedure MVALD07Enter(Sender: TObject);
    procedure MVALD08Enter(Sender: TObject);
    procedure MVALD09Enter(Sender: TObject);
    procedure MVALD10Enter(Sender: TObject);
    procedure MVALC01Exit(Sender: TObject);
    procedure MVALC02Exit(Sender: TObject);
    procedure MVALC03Exit(Sender: TObject);
    procedure MVALC04Exit(Sender: TObject);
    procedure MVALC05Exit(Sender: TObject);
    procedure MVALC06Exit(Sender: TObject);
    procedure MVALC07Exit(Sender: TObject);
    procedure MVALC08Exit(Sender: TObject);
    procedure MVALC09Exit(Sender: TObject);
    procedure MVALC10Exit(Sender: TObject);
    procedure MVALD01Exit(Sender: TObject);
    procedure MVALD02Exit(Sender: TObject);
    procedure MVALD03Exit(Sender: TObject);
    procedure MVALD04Exit(Sender: TObject);
    procedure MVALD05Exit(Sender: TObject);
    procedure MVALD06Exit(Sender: TObject);
    procedure MVALD07Exit(Sender: TObject);
    procedure MVALD08Exit(Sender: TObject);
    procedure MVALD09Exit(Sender: TObject);
    procedure MVALD10Exit(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codcaiEnter(Sender: TObject);
    procedure edt_codcaiExit(Sender: TObject);
    procedure edt_codcaiKeyPress(Sender: TObject; var Key: Char);
    procedure edt_preducao_bcExit(Sender: TObject);
  private
    { Private declarations }
    function fcalcular(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer): Boolean;
    function fcalccom(ptipo: Integer): Boolean;
    function fTestaPed(ptipo:Integer): Boolean;
    function fUpdate(ptipo,pNumLot,pCodEmp,pLotSeq: Integer; pChave,pOrdem: Real): Boolean;
    function FTotalPadrao(pTipo: Integer): Boolean;
    function FReciboPadrao(pTipo: Integer): Boolean;
    function FEmiteRecibo(pTipo: Integer): Boolean;


    function fValorAcrescimo(pChave,pLotSeq,pCodEmp: integer): real;

    function fRetornarCodigoDoCaixa(pCodEmp,pChave,pLotSeq: Integer): integer;
    function fApagarPedidosQueNaoSaoDoCaixa(pCodCai: Integer): Boolean;


    function fExisteChave(pChave,pCodEmp,pLotSeq: integer): boolean;

    function fContarRegistros: integer;





  public
    { Public declarations }
    form_impres_comvv: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  Frm_ComVV: TFrm_ComVV;
  mlin: Integer;
  mnumlot: Integer;
  moper: Integer=0;
  mpcomis, mcomis: Real;
  mpreducao_bc: Real;
  mpcomis_calc: Real;
  pComVOrigem : Integer;
  mcodven_ant: Real;
  mcodcai_ant: Real;
  mdt1_ant: String;
  mdt2_ant: String;
  mcol_lotseq  : Integer=00;
  mcol_chave   : Integer=01;
  mcol_ordem   : Integer=02;
  mcol_codemp  : Integer=03;
  mcol_nomsac  : Integer=04;
  mcol_dtemis  : Integer=05;
  mcol_valor   : Integer=06;
  mcol_comis   : Integer=07;
  mcol_valfre  : Integer=08;
  mcol_icmsret : Integer=09;
  mcol_semcom  : Integer=10;
  mcol_valacre : Integer=11;
  mcol_comtlv  : Integer=12;
  mcol_codcli  : Integer=13;
  mcol_tipdoc  : Integer=14;
  mcol_descfin : Integer=15;
  mtotcom,mtotal, mtotoutdesp: Real;
  mvalcom: Real;

mTextoCred: array [0..99] of string;
mValCred:   array [0..99] of Real;
mTextoDeb: array [0..99] of string;
mValDeb:   array [0..99] of Real;
mtip_ant: Integer;
mpos_cred, mpos_deb: Integer;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ComVV.FormCreate(Sender: TObject);
var
mqtdd: Integer;
begin
PageControl1.ActivePageIndex:=0;
if flfilpad(0,'_COMVV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCFIN',[]) then
      CB_DESCFIN.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_DESCFIN.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCRATEADO',[]) then
      CB_DESCRATEADO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_DESCRATEADO.Checked:=false;

{
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DATENTPEDIDO',[]) then
      CB_DATENTPEDIDO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_DATENTPEDIDO.Checked:=false;
 }
   end;


if flfilpad(codusr,'_COMVV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QTDITENS',[]) then
      CB_QTDITENS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ORDEM',[]) then
      RG_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIREC',[]) then
      CB_EMIREC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CHAVEPED',[]) then
      CB_CHAVEPED.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   end;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if codusr=1111 then
   tsConfiguracao.TabVisible:=true
else
   tsConfiguracao.TabVisible:=false;


cds_comvv.CreateDataSet;
cds_comvv.Open;


cds_comvvCL2COMTLV.displayformat:=mcasas;
cds_comvvCL2VALOR.displayformat:=mcasas;
cds_comvvCL2REDUZIR_PERC.displayformat:=mcasas_pct;
cds_comvvCL2REDUZIR_VALOR.displayformat:=mcasas_pct;
cds_comvvCL2VALOR.displayformat:=mcasas;

cds_comvvCL2DTEMIS.displayformat:=fdt2;
cds_comvvCL2COMIS.displayformat:=mcasas;
cds_comvvCL2VALFRE.displayformat:=mcasas;
cds_comvvCL2ICMSRET.displayformat:=mcasas;
cds_comvvCL2SEMCOM.displayformat:=mcasas;
cds_comvvCL2COMTLV.displayformat:=mcasas;
cds_comvvCL2VALACRE.displayformat:=mcasas;
cds_comvvCL2VALFRE.displayformat:=mcasas;


if pComVOrigem=5 then
   begin
   if DM1.Tb_PargerPDEDVD.Value=1 then
      cds_comvvCL2COMTLV.DisplayLabel:='Comis.Telev.';
   Frm_ComVV.Caption:='Relatórios de Comissões de Vendas dos Vendedores';
   lbl_nome.Caption :='Código do Vendedor........: ';
   end
else if pComVOrigem=6 then
   begin
   Frm_ComVV.Caption:='Relatórios de Comissões de Vendas dos Supervisores';
   lbl_nome.Caption :='Código do Supervidor........: '
   end
else if pComVOrigem=7 then
   begin
   Frm_ComVV.Caption:='Relatórios de Comissões de Vendas dos Televendas';
   lbl_nome.Caption :='Código do Televendas........: ';
   end
else if pComVOrigem=8 then
   begin
   Frm_ComVV.Caption:='Relatórios de Comissões de Vendas dos Assessores';
   lbl_nome.Caption :='Código do Assessor..........: ';
   end;


VALOR.Alignment       := TAlignment(1);
VALCOM.Alignment      := TAlignment(1);

MVALC01.Alignment     := TAlignment(1);
MVALC02.Alignment     := TAlignment(1);
MVALC03.Alignment     := TAlignment(1);
MVALC04.Alignment     := TAlignment(1);
MVALC05.Alignment     := TAlignment(1);
MVALC06.Alignment     := TAlignment(1);
MVALC07.Alignment     := TAlignment(1);
MVALC08.Alignment     := TAlignment(1);
MVALC09.Alignment     := TAlignment(1);
MVALC10.Alignment     := TAlignment(1);

MVALD01.Alignment     := TAlignment(1);
MVALD02.Alignment     := TAlignment(1);
MVALD03.Alignment     := TAlignment(1);
MVALD04.Alignment     := TAlignment(1);
MVALD05.Alignment     := TAlignment(1);
MVALD06.Alignment     := TAlignment(1);
MVALD07.Alignment     := TAlignment(1);
MVALD08.Alignment     := TAlignment(1);
MVALD09.Alignment     := TAlignment(1);
MVALD10.Alignment     := TAlignment(1);


end;


function TFrm_ComVV.fExisteChave(pChave,pCodEmp,pLotSeq: integer): boolean;

begin
if cds_comvv.locate('CL2CHAVE;CL2CODEMP_DC;CL2LOTSEQ_DC',vararrayof([pchave,pcodemp,plotseq]),[]) then
   result:=true
else
   result:=false;

end;

procedure TFrm_ComVV.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if not flcadp01(0,ValInt(MCODEMP.Text),ValInt(MLOTSEQ.Text),Trim(CHAVE.Text),Trim(ORDEM.Text)) then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
if (DM1.Tb_Ped01P1EMIDOC.Value<1) then
   begin
   fmensagem('Este pedido ainda esta pendente!',0,['0'],0);
   CHAVE.SetFocus;
   Exit;
   end;
mvalcom:=ValFloat(VALCOM.Text);

if (pComVOrigem=5) then
   begin
   if DM1.Tb_Ped01P1CODV03.Value=ValFloat(CODVEN.Text) then
      begin
      if (DM1.Tb_Ped01P1LOTCV03.Value>0) and not
         ((moper=1) and (DM1.Tb_Ped01P1LOTCV03.Value=ValFloat(NUMLOT.Text))) then
         begin
         fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCV03.AsString,0,['0'],0);
         CHAVE.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_Ped01P1CODV02.Value=ValFloat(CODVEN.Text) then
      begin
      if (DM1.Tb_Ped01P1LOTCV02.Value>0) and not
         ((moper=1) and (DM1.Tb_Ped01P1LOTCV02.Value=ValFloat(NUMLOT.Text))) then
         begin
         fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCV02.AsString,0,['0'],0);
         CHAVE.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (DM1.Tb_Ped01P1LOTCV.Value>0) and not
         ((moper=1) and (DM1.Tb_Ped01P1LOTCV.Value=ValFloat(NUMLOT.Text))) then
         begin
         fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCV.AsString,0,['0'],0);
         CHAVE.SetFocus;
         exit;
         end;
      if DM1.Tb_Ped01P1CODVEN.Value<>ValFloat(CODVEN.Text) then
         begin
         if fmensagem('Esta duplicata não é do vendedor selecionado. Quer incluir mesmo assim?',0,['1','2'],1)<>mrYes then
            begin
            CHAVE.SetFocus;
            exit;
            end;
         end;

      if fExistemOutraComissaodeVendas(DM1.Tb_ped01P1CHAVE.AsInteger,DM1.Tb_ped01P1LOTSEQ.AsInteger,
                                       DM1.Tb_ped01P1CODEMP.AsInteger,valint(NUMLOT.Text),valint(CODVEN.text)) then
         begin
         CHAVE.SetFocus;
         exit;
         end;


      end;
   end
else if (pComVOrigem=6) then
   begin
   if (DM1.Tb_Ped01P1LOTCS.Value>0) and not
      ((moper=1) and (DM1.Tb_Ped01P1LOTCS.Value=ValFloat(NUMLOT.Text))) then
      begin
      fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCS.AsString,0,['0'],0);
      CHAVE.SetFocus;
      exit;
      end;
   end
else if (pComVOrigem=7) then
   begin
   if (DM1.Tb_Ped01P1LOTCT.Value>0) and not
      ((moper=1) and (DM1.Tb_Ped01P1LOTCT.Value=ValFloat(NUMLOT.Text))) then
      begin
      fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCT.AsString,0,['0'],0);
      CHAVE.SetFocus;
      exit;
      end;
   if DM1.Tb_Ped01P1CODTLV.Value<>ValFloat(CODVEN.Text) then
      begin
      if fmensagem('Este pedido não é do Televendas selecionado. Quer incluir mesmo assim?',0,['1','2'],0)<>mrYes then
         begin
         CHAVE.SetFocus;
         exit;
         end;
      end;
   end
else if (pComVOrigem=8) then
   begin
   if (DM1.Tb_Ped01P1LOTCASSE.Value>0) and not
      ((moper=1) and (DM1.Tb_Ped01P1LOTCASSE.Value=ValFloat(NUMLOT.Text))) then
      begin
      fmensagem('Este pedido ja esta no relatorio: '+DM1.Tb_Ped01P1LOTCASSE.AsString,0,['0'],0);
      CHAVE.SetFocus;
      exit;
      end;
   if DM1.Tb_Ped01P1CODASSE.Value<>ValFloat(CODVEN.Text) then
      begin
      if fmensagem('Este pedido não é do Assessor selecionado. Quer incluir mesmo assim?',0,['1','2'],0)<>mrYes then
         begin
         CHAVE.SetFocus;
         exit;
         end;
       end;
   end;


if fExisteChave(ValInt(CHAVE.Text),ValInt(MCODEMP.Text),ValInt(MLOTSEQ.Text)) then
    begin
    fmensagem('Pedido já digitado.',0,['0'],0);
    CHAVE.SetFocus;
    exit;
    end;

if ValInt(edt_codcai.Text)<>0 then
   begin
   if (cb_codcai_omitir.Checked) and (valint(edt_codcai.Text)=DM1.tB_PED01P1CX_CODCAI.AsInteger) then
      begin
      MessageDlg('Codigo do Caixa Encontrado '+DM1.Tb_Ped01P1CX_CODCAI.AsString
      +' Esperado '+edt_codcai.Text,mtWarning,[mbOk],0 );
      CHAVE.SetFocus;
      exit;
      end
   else if (cb_codcai_omitir.Checked=false) and (valint(edt_codcai.Text)<>DM1.tB_PED01P1CX_CODCAI.AsInteger) then
      begin
      MessageDlg('Codigo do Caixa Encontrado '+DM1.Tb_Ped01P1CX_CODCAI.AsString
      +' Esperado Diferente de '+ edt_codcai.Text,mtWarning,[mbOk],0 );
      CHAVE.SetFocus;
      exit;
      end;
   end;


cds_comvv.Append;
cds_comvvCL2CHAVE.Value := ValInt(CHAVE.Text);
cds_comvvCL2ORDEM.Value := ValInt(ORDEM.Text);
cds_comvvCL2TIPODOC.Value := DM1.Tb_Ped01P1TIPO.AsInteger;
cds_comvvCL2ORDEM.Value     := DM1.Tb_Ped01P1ORDEM.AsInteger;
cds_comvvCL2TIPODOC.Value   := DM1.Tb_Ped01P1TIPO.AsInteger;
cds_comvvCL2DTEMIS.Value    := DM1.Tb_Ped01P1DATAP.AsDateTime;
cds_comvvCL2NOMSAC.Value    := DM1.Tb_Ped01nomcli.AsString;
cds_comvvCL2VALOR.Value     := DM1.Tb_Ped01P1TOTALL.AsFloat;
cds_comvvCL2DESCFIN.Value   := DM1.Tb_Ped01P1DESCFIN.AsFloat;
cds_comvvCL2COMIS.Value     := mvalcom;
cds_comvvCL2CODEMP_DC.Value := DM1.Tb_Ped01P1CODEMP.AsInteger;
cds_comvvCL2VALFRE.Value    := DM1.Tb_Ped01P1VALFRE.AsFloat;
cds_comvvCL2ICMSRET.Value   := DM1.Tb_Ped01P1ICMSR.AsFloat;
cds_comvvCL2SEMCOM.Value    := DM1.Tb_Ped01P1SEMCOM.AsFloat
                             +fValorAcrescimo(DM1.Tb_Ped01P1CODEMP.asInteger
                             ,DM1.Tb_Ped01P1LOTSEQ.asInteger,DM1.Tb_Ped01P1CODEMP.AsInteger);

cds_comvvCL2REDUZIR_PERC.Value     := arredonda( (cds_comvvCL2VALOR.Value*mpreducao_bc/100),2);
if (mpreducao_bc>0) then
   begin
   cds_comvvCL2REDUZIR_VALOR.Value     := mpreducao_bc;
   end;


if (pComVOrigem=5) and (DM1.Tb_PargerPDEDVD.Value=1) then
   cds_comvvCL2COMTLV.Value    := DM1.Tb_Ped01P1COMIST.AsFloat
else
   cds_comvvCL2COMTLV.Value    := 0;
cds_comvvCL2ICMSRET.Value   := DM1.Tb_Ped01P1ICMSR.AsFloat;

cds_comvvCL2CODCLI.Value      := DM1.Tb_Ped01P1CODCLI.AsFloat;
cds_comvvCL2LOTSEQ_DC.Value   := DM1.Tb_Ped01P1LOTSEQ.AsInteger;

fcalcular(0);
ITEM_CANCELAR.Click;
MCODEMP.SetFocus;

end;
function TFrm_ComVV.fcalcular(ptipo: Integer): Boolean;
var
x: Integer;
mQtdDoc: integer;
mBookMarck: TBookmark;
begin
mQtdDoc:=0;

cds_comvv.DisableControls;
mtotcom:=0;
mtotal:=0;
mBookMarck := cds_comvv.GetBookmark;

cds_comvv.First;
While not cds_comvv.Eof do
   begin
   mtotal := mtotal +cds_comvvCL2VALOR.AsFloat;
   if (cds_comvvCL2TIPODOC.AsInteger=8) OR (cds_comvvCL2TIPODOC.AsInteger=17) then
      mtotcom:=mtotcom-cds_comvvCL2COMIS.AsFloat
    else
      mtotcom:=mtotcom+cds_comvvCL2COMIS.AsFloat;
    mQtdDoc:=mQtdDoc+1;
    cds_comvv.Next;
    end;


TOTDOC.Caption:=insere(Formatfloat(mcasas,mtotal),' ',10);
TOTCOM.Caption:=insere(Formatfloat(mcasas,mtotcom),' ',10);
QTDDOC.Caption:=insere(inttostr(mqtdDoc),' ',10);
QTDDOC.Update;
TOTDOC.Update;
TOTCOM.Update;

TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
QTDDOC.Update;
TOTDOC.Update;
TOTCOM.Update;
TOTLIQ.Update;
cds_comvv.GotoBookmark(mBookMarck);
cds_comvv.EnableControls;

result:=True;
end;

function TFrm_ComVV.fexcluir(ptipo: Integer): Boolean;

var
{ Parametros
0-Atualiza Cadastro e Deleta
1-So Atualiza Cadastro Deixando o Lote Zero
2-So Atualiza Cadastro Deixando o Lote Atual
3-So Deleta

}
form_agde: tFrm_agde;
mTipoUpd: Integer;
mQtdReg: integer;
mQtdLid: integer;

begin

mQtdLid:=0;
mQtdReg:=Qr_Cl02.RecordCount;


if ptipo<3 then
   begin
   Application.CreateForm(TFrm_Agde, Form_Agde);
   Form_agde.gb_progres.Visible:=true;
   Form_agde.Label1.Caption:='Excluindo os lotes anteriores';
   Form_agde.Update;

   Qr_CL02.First;
   While not Qr_CL02.Eof do
      begin
      mQtdLid:=mQtdLid+1;
      Form_agde.Gauge1.Progress := mQtdLid*100 div mQtdReg;
      verteclado(0);
      if flcadp01(0,Qr_CL02CL2CODEMPD.AsInteger,
                    Qr_CL02CL2LOTSEQ_DC.AsInteger,
                    Qr_CL02CL2CHAVEP.AsString,
                    Qr_CL02CL2ORDEMP.AsString) then
         begin
         if pComVOrigem=5 then
            begin
            if DM1.Tb_Ped01P1CODV03.Value=ValFloat(CODVEN.Text) then
               mTipoUpd:=0
            else if DM1.Tb_Ped01P1CODV02.Value=ValFloat(CODVEN.Text) then
               mTipoUpd:=1
            else
               mTipoUpd:=2;
            end
         else if pComVOrigem=6 then
            mTipoUpd:=3
         else if pComVOrigem=7 then
            mTipoUpd:=4
         else
            mTipoUpd:=5;

         fUpdate(mTipoUpd,iif(ptipo=2,ValInt(CHAVE.Text),0),Qr_CL02CL2CODEMPD.AsInteger,
              Qr_CL02CL2LOTSEQ_DC.AsInteger,
              Qr_CL02CL2CHAVEP.Value,
              Qr_CL02CL2ORDEMP.Value);
         end;
      Qr_CL02.Next;
      end;
   freeandnil(Form_agde);
   end;
if (ptipo=0) or (ptipo=3) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL01 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL1CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL1CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL02 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL2CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL2CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCL03 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL3CODEMP=0'+Qr_CL01CL1CODEMP.AsString+' and ')
                     +' CL3CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;

   end;
result:=True;
end;

procedure TFrm_ComVV.ITEM_CANCELARClick(Sender: TObject);
begin
MCODEMP.Text :=IntToStr(codemp);
MLOTSEQ.Text :=IntToStr(ls_numped);
CHAVE.Text   :='';
ORDEM.Text   :='01';
MDTEMIS.Text :='';
NOMCLI.Text  :='';
VALOR.Text   :='';
VALCOM.Text  :='';
end;

procedure TFrm_ComVV.bbitem_excluirClick(Sender: TObject);
var
  x: Integer;
begin
if (cds_comvvCL2CHAVE.AsInteger=0) then
   exit;
if fmensagem('Quer realmente excluir o pedido ' + cds_comvvCL2CHAVE.AsString+' Valor '+Formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)+'?',0,['1','2'],0)<>mrYes then
   exit;

cds_comvv.Delete;
fcalcular(0);
end;

procedure TFrm_ComVV.BBLIMPARClick(Sender: TObject);
begin
NUMLOT.Text:='';
MDATA.Text :='/  /';
CODVEN.Text:='';
NOMVEN.Text:='';
MDATAI.Text:='';
MDATAF.Text:='';
OBS1.Text  :='';
OBS2.Text  :='';
CHAVE.Text:='';
ORDEM.Text  :='';
MDTEMIS.Text:='';
NOMCLI.Text :='';
VALOR.Text        :='';
QTDDOC.Caption    :='';
TOTDOC.Caption    :='';
TOTCOM.Caption    :='';
TOTDEBITOS.Caption:='';
TOTOUTCRED.Caption:='';
TOTLIQ.Caption    :='';
moper:=0;

cds_comvv.EmptyDataSet;

Panel4.Enabled   :=False;
GroupBox1.Enabled:=False;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
tsrecibo.Enabled   :=false;

end;

procedure TFrm_ComVV.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ComVV.BBINCLUIRClick(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1'],0) of
      mrYes: BBGRAVAR.Click;
      end;
   end;
BBLIMPAR.Click;
ITEM_CANCELAR.Click;
Panel4.Enabled   :=True;
GroupBox1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
MDATA.Text:=FormatDateTime(Fdt2,pdatasis);
MDATAI.Text:=FormatDateTime(fdt2,pdatasis-30);
MDATAF.Text:=FormatDateTime(fdt2,pdatasis);
tsrecibo.Enabled:=true;

FReciboPadrao(0);

moper:=0;
MDATA.SetFocus;
end;

procedure TFrm_ComVV.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
    if Frm_CVVC=nil then
      Application.CreateForm(TFrm_CVVC, Frm_CVVC)
   else
      begin
      Frm_CVVC.Free;
      Frm_CVVC:=nil;
      Application.CreateForm(TFrm_CVVC, Frm_CVVC);
      end;

   Frm_CVVC.ShowModal;
   mnumlot:=Frm_CVVC.Qr_ComVCL1CHAVE.AsInteger;
   Frm_CVVC.Free;
   Frm_CVVC:=nil;
   end;
BBLIMPAR.Click;
Qr_CL01.Close;
Qr_CL01.SQL.Clear;
Qr_CL01.SQL.Add('Select * from CADCL01 where CL1TIPO='+IntTostr(pComVOrigem)+' and ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL01.SQL.add(' CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE')
else
   Qr_CL01.SQL.add(' CL1CODEMP=0'+IntTostr(codemp)
                   +' and CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE');
Qr_CL01.Open;
if Qr_CL01.Eof then
   begin
   fMensagem('Lote não Encontrado',0,['0'],0);
   exit;
   end;
Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add('Select CL2CODEMP,CL2CHAVE,CL2SEQ '
               +'       ,CL2DOC,CL2NUMERO,CL2DESD '
               +'       ,CL2DUP,CL2CHAVEP,CL2ORDEMP, CL2CODEMPD'
               +'       ,CL2VALCOM,CL2VALDOC,CL2VALFRE '
               +'       ,CL2VALICMSR,CL2SEMCOM,CL2VALACRE '
               +'        ,CL2VALCTL,CL2LOTSEQ,CL2LOTSEQ_DC '
               +'       ,CL2DTEMIS,CL2CODECF,CL2DTVCTO '
               +'       ,CL2VALDESC '
               +'       ,CL2DTBX,CL2CODCLI,CRAZAO '
               +' , CL2REDUZIR_PERC, CL2REDUZIR_VALOR '
               +' from CADCL02,CADCLI where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL2CODEMP=0'+IntToStr(codemp)+' and ')
               +' CL2CHAVE=0'+IntToStr(mnumlot)
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=CL2CODEMP ')
               +' and CCODCLI=CL2CODCLI '
               +' order by CL2CHAVE');
Qr_CL02.Open;

Qr_CL03.Close;
Qr_CL03.SQL.Clear;
Qr_CL03.SQL.Add('Select * from CADCL03 where ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL03.SQL.add(' CL3CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL3CHAVE,CL3NAT,CL3ORDEM')
else
   Qr_CL03.SQL.add(' CL3CODEMP=0'+intTostr(codemp)
                  +' and CL3CHAVE=0'+IntToStr(mnumlot)
                  +' order by CL3CHAVE,CL3NAT,CL3ORDEM');
Qr_CL03.Open;


NUMLOT.Text :=Qr_CL01CL1CHAVE.AsString;
MDATA.Text  :=FormatDatetime(fdt2, Qr_CL01CL1DATA.Value);
CODVEN.Text :=Qr_CL01CL1CODIGO.AsString;
flqr1('VNOME','V','CADVEN','N','VCODVEN',QR_CL01CL1CODIGO.AsString);
NOMVEN.Text :=DM1.Query1.Fields[0].AsString;
MDATAI.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAI.Value);
MDATAF.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAF.Value);
PCOMIS.Text :=Formatfloat(mcasas, Qr_CL01CL1PCOMIS.Value);
edt_preducao_bc.Text:=Formatfloat(mcasas_pct, Qr_CL01CL1REDUZIR_PERC.Value);

edt_codcai.Text :=Qr_CL01CL1CODCAI.AsString;
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Qr_CL01CL1CODCAI.AsString) then
   edt_nomcai.Text := DM1.query1.fieldbyname('BCBANCO').asstring
else
   edt_nomcai.clear;

cb_codcai_omitir.Checked :=Qr_CL01CL1CODCAI_OMITIR.AsString='S';

OBS1.Text   :=Qr_CL01CL1OBS01.Value;
OBS2.Text   :=Qr_CL01CL1OBS02.Value;
cds_comvv.EmptyDataSet;
Qr_CL02.First;


While not Qr_CL02.Eof do
   begin
   cds_comvv.append;


   cds_comvvCL2NOMSAC.Value     :=Qr_CL02CRAZAO.AsString;
   cds_comvvCL2CHAVE.AsInteger  :=Qr_CL02CL2CHAVEP.AsInteger;
   cds_comvvCL2ORDEM.AsInteger  :=Qr_CL02CL2ORDEMP.AsInteger;
   cds_comvvCL2TIPODOC.AsInteger:=Qr_CL02CL2DUP.AsInteger;
   cds_comvvCL2DTEMIS.AsDateTime:=Qr_CL02CL2DTEMIS.AsDateTime;
   cds_comvvCL2VALOR.AsFloat    :=Qr_CL02CL2VALDOC.Value;
   cds_comvvCL2COMIS.AsFloat    :=Qr_CL02CL2VALCOM.Value;
   cds_comvvCL2CODEMP_DC.AsFloat:=Qr_CL02CL2CODEMPD.AsFloat;
   cds_comvvCL2VALFRE.AsFloat   :=Qr_CL02CL2VALFRE.Value;
   cds_comvvCL2ICMSRET.AsFloat  :=Qr_CL02CL2VALICMSR.Value;
   cds_comvvCL2SEMCOM.AsFloat   :=Qr_CL02CL2SEMCOM.Value;
   cds_comvvCL2VALACRE.AsFloat  :=Qr_CL02CL2VALACRE.Value;
   cds_comvvCL2COMTLV.AsFloat   :=Qr_CL02CL2VALCTL.Value;
   cds_comvvCL2CODCLI.AsFloat   :=Qr_CL02CL2CODCLI.Value;
   cds_comvvCL2LOTSEQ_DC.AsFloat:=Qr_CL02CL2LOTSEQ_DC.Value;

   cds_comvvCL2REDUZIR_PERC.AsFloat:=Qr_CL02CL2REDUZIR_PERC.Value;
   cds_comvvCL2REDUZIR_VALOR.AsFloat:=Qr_CL02CL2REDUZIR_VALOR.Value;



   cds_comvv.post;

   Qr_CL02.Next;
   end;

if Qr_CL03.Eof then
   FReciboPadrao(0)
else
   begin
   While not Qr_CL03.Eof do
      begin
      if Qr_CL03CL3NAT.Value=1 then // debitos
         begin
         if Qr_CL03CL3ORDEM.Value=1 then
            begin
            MTEXTOD01.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=2 then
            begin
            MTEXTOD02.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=3 then
            begin
            MTEXTOD03.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=4 then
            begin
            MTEXTOD04.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=5 then
            begin
            MTEXTOD05.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=6 then
            begin
            MTEXTOD06.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=7 then
            begin
            MTEXTOD07.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=8 then
            begin
            MTEXTOD08.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=9 then
            begin
            MTEXTOD09.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=10 then
            begin
            MTEXTOD10.Text:=Qr_CL03CL3TEXTO.Value;
            MVALD10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end;
         end
      else
         begin
         if Qr_CL03CL3ORDEM.Value=1 then
            begin
            MTEXTOC01.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=2 then
            begin
            MTEXTOC02.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=3 then
            begin
            MTEXTOC03.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=4 then
            begin
            MTEXTOC04.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=5 then
            begin
            MTEXTOC05.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=6 then
            begin
            MTEXTOC06.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=7 then
            begin
            MTEXTOC07.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=8 then
            begin
            MTEXTOC08.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=9 then
            begin
            MTEXTOC09.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end
         else if Qr_CL03CL3ORDEM.Value=10 then
            begin
            MTEXTOC10.Text:=Qr_CL03CL3TEXTO.Value;
            MVALC10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
            end;
         end;
      Qr_CL03.Next;
      end;
   end;


BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
fcalcular(0);
FTotalPadrao(0);

end;

procedure TFrm_ComVV.BBGRAVARClick(Sender: TObject);
var
mcod,x: Integer;

begin
if Trim(MDATA.Text)='/  /' then
   begin
   fmensagem('Data Campo Obrigatório!',0,['0'],0);
   MDATA.SetFocus;
   exit;
   end;
if Trim(MDATAI.Text)='/  /' then
   begin
   fmensagem('Data inicial Campo Obrigatório!',0,['0'],0);
   MDATAI.SetFocus;
   exit;
   end;
if Trim(MDATAF.Text)='/  /' then
   begin
   fmensagem('Data final Campo Obrigatório!',0,['0'],0);
   MDATAF.SetFocus;
   exit;
   end;
if Trim(CODVEN.Text)='' then
   begin
   fmensagem('Código Campo Obrigatório!',0,['0'],0);

   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;



if Trim(OBS1.Text)='' then
   begin
   fmensagem('A primeira linha da descrição é obrigatória!',0,['0'],0);
   OBS1.SetFocus;
   exit;
   end;
if cds_comvv.IsEmpty then
   begin
   fmensagem('Não há duplicatas selecionadas!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Label1.Caption:='Gravando Relatório de Comissão! Aguarde...';
Frm_Agde.Show;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select max(CL1CHAVE) from CADCL01 ');
   if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query1.Sql.add(' where CL1CODEMP=0'+IntTostr(codemp)
                        +' order by CL1CODEMP,CL1CHAVE')
   else
      DM1.Query1.SQL.add(' order by CL1CHAVE ');
   DM1.Query1.Open;
   mnumlot:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   fexcluir(0);
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Insert into CADCL01 ('
                  +'CL1CODEMP,CL1CHAVE,CL1DATA,CL1LOTSEQ,'
                  +'CL1TIPO,CL1CODIGO,CL1DATAI,CL1DATAF,'
                  +'CL1QTDDOC,CL1TOTDOC,CL1TOTCOM,'
                  +'CL1OBS01,CL1OBS02,CL1DATHOR_EVE,CL1PCOMIS'
                  +',CL1CODCAI,CL1CODCAI_OMITIR '
                  +',CL1REDUZIR_PERC'
                  +') values ('

                  +intTostr(codemp)+','
                  +IntTostr(mnumlot)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATA.Text))+chr(39)+','
                  +IntToStr(ls_comrec)+','
                  +IntToStr(pComVOrigem)+','
                  +Trim(CODVEN.Text)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAI.Text))+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAF.Text))+chr(39)+','
                  +mudaVP(FloatToStr(ValFloat(QTDDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTCOM.Caption)))+','
                  +':OBS1, :OBS2,:CL1DATHOR_EVE,:PCOMIS  '
                  +','+mudavp(edt_codcai.Text)
                  +','+quotedstr( iif(cb_codcai_omitir.Checked,'S','N'))
                  +','+mudaVp(FloatToStr(Valfloat(edt_preducao_bc.Text)))
                  +')'
                  );
DM1.Query1.ParamByName('OBS1').AsString:=OBS1.Text;
DM1.Query1.ParamByName('OBS2').AsString:=OBS2.Text;
DM1.Query1.ParamByName('CL1DATHOR_EVE').AsDateTime:=Now;
DM1.Query1.ParamByName('PCOMIS').AsFloat:=VALFLOAT(PCOMIS.Text);
try
   DM1.Query1.ExecSQL;
except on e : exception do
   ex_erroSql_Novo(DM1.Query1,1229,'func Erro:'+e.Message ,'CADCL01');
   end;


DM1.Query1.Params.Clear;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;

mcod:=0;
mplid:=0;


cds_comvv.First;

mpqtd:=fContarRegistros;
Frm_Agde.Label1.Caption:='Criando os Novos Itens de Comissoes';
Frm_Agde.Label1.Update;
verteclado(0);

While not cds_comvv.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   if cds_comvvCL2CHAVE.AsInteger<0 then
      begin
      cds_comvv.Next;
      continue;
      end;
//   if not flcadp01(0, ValInt(STG1.Cells[mcol_codemp,x]),ValInt(STG1.Cells[mcol_lotseq,x]),Trim(STG1.Cells[mcol_chave,x]),Trim(STG1.Cells[mcol_ordem,x])) then

   if not flcadp01(0,cds_comvvCL2CODEMP_DC.AsInteger,
      cds_comvvCL2LOTSEQ_DC.AsInteger,cds_comvvCL2CHAVE.AsString,cds_comvvCL2ORDEM.AsString) then
      begin
      fmensagem('Erro ao ler o Pedido: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString
      +' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat),0,['0'],0);
      cds_comvv.next;
      continue;
      end;

   if (pComVOrigem=5) then
      begin
      if (DM1.Tb_Ped01P1CODV03.Value=ValFloat(CODVEN.Text)) and
         (DM1.Tb_Ped01P1LOTCV03.Value>0) then
         begin
         fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                 +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCV03.AsString,0,['0'],0);
         cds_comvv.next;
         Continue;
         end
      else if (DM1.Tb_Ped01P1CODV02.Value=ValFloat(CODVEN.Text)) and
         (DM1.Tb_Ped01P1LOTCV02.Value>0) then
         begin
         fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCV02.AsString,0,['0'],0);
         cds_comvv.next;
         Continue;
         end
      else if (DM1.Tb_Ped01P1CODVEN.Value=ValFloat(CODVEN.Text)) and
         (DM1.Tb_Ped01P1LOTCV.Value>0) then
         begin
         fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                 +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCV.AsString,0,['0'],0);
         cds_comvv.next;
         Continue;
         end
      else if (DM1.Tb_Ped01P1CODV04.Value=ValFloat(CODVEN.Text)) and
        (DM1.Tb_Ped01P1LOTCV04.Value>0) then
         begin
         fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCV04.AsString,0,['0'],0);
         cds_comvv.next;
         Continue;
         end;
       end
   else if (pComVOrigem=6) and (DM1.Tb_Ped01P1LOTCS.Value>0) then
      begin
      fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                 +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCS.AsString,0,['0'],0);
      cds_comvv.next;
      Continue;
      end
   else if (pComVOrigem=7) and (DM1.Tb_Ped01P1LOTCT.Value>0) then
      begin
      fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                 +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCS.AsString,0,['0'],0);
      cds_comvv.next;
      Continue;
      end
   else if (pComVOrigem=8) and (DM1.Tb_Ped01P1LOTCASSE.Value>0) then
      begin
      fmensagem('O pedido Numero: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)
                 +'ja esta lançado no lote: '+DM1.Tb_Ped01P1LOTCASSE.AsString,0,['0'],0);
      cds_comvv.next;
      Continue;
      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   if pComVOrigem=5 then
      begin
      if (DM1.Tb_Ped01P1CODV04.Value=ValFloat(CODVEN.Text)) then
         DM1.Query2.SQL.Add('Update CADP01 set P1LOTCV04=0'+IntTostr(mnumlot))
      else if (DM1.Tb_Ped01P1CODV03.Value=ValFloat(CODVEN.Text)) then
         DM1.Query2.SQL.Add('Update CADP01 set P1LOTCV03=0'+IntTostr(mnumlot))
      else if (DM1.Tb_Ped01P1CODV02.Value=ValFloat(CODVEN.Text)) then
         DM1.Query2.SQL.Add('Update CADP01 set P1LOTCV02=0'+IntTostr(mnumlot))
      else
         DM1.Query2.SQL.Add('Update CADP01 set P1LOTCV=0'+IntTostr(mnumlot));
      end
   else if pComVOrigem=6 then
      DM1.Query2.SQL.Add('Update CADP01 set P1LOTCS=0'+IntTostr(mnumlot))
   else if pComVOrigem=7 then
      DM1.Query2.SQL.Add('Update CADP01 set P1LOTCT=0'+IntTostr(mnumlot))
   else if pComVOrigem=8 then
      DM1.Query2.SQL.Add('Update CADP01 set P1LOTCASSE=0'+IntTostr(mnumlot));

   DM1.Query2.SQL.Add(' where P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                     +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and P1ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,4027,'Frm_Ped','CADP01');
      end;

   mcod:=mcod+1;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'DESD',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTEMIS',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTVCTO',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTBX',ptinput);

   DM1.Query1.Sql.add('Insert into CADCL02 ('
                     +'CL2CODEMP,'
                     +'CL2LOTSEQ,'
                     +'CL2CHAVE,'
                     +'CL2SEQ,'
                     +'CL2DOC,'
                     +'CL2NUMERO,'
                     +'CL2DUP,'
                     +'CL2LOTSEQ_DC,'
                     +'CL2CHAVEP,'
                     +'CL2ORDEMP,'
                     +'CL2CODEMPD,'
                     +'CL2VALCOM,'
                     +'CL2VALDOC,'
                     +'CL2REDUZIR_PERC,'
                     +'CL2REDUZIR_VALOR,'

                     +'CL2VALFRE,'
                     +'CL2VALICMSR,'
                     +'CL2SEMCOM,'
                     +'CL2VALACRE,'
                     +'CL2VALCTL,'
                     +'CL2VALDESC,'
                     +'CL2CODECF,'
                     +'CL2CODCLI,'
                     +'CL2DESD,'
                     +'CL2DTEMIS,'
                     +'CL2DTVCTO,'
                     +'CL2DTBX) values ('
                     +IntToStr(codemp)+','
                     +'0'+',' // Lote de Sequencia
                     +IntTostr(mnumlot)+','
                     +IntTostr(mcod)+','
                     +'0'+',' // documento
                     +'0'+DM1.Tb_Ped01P1NUMNF.AsString+',' // numero
                     +DM1.Tb_Ped01P1TIPO.AsString+','
                     +DM1.Tb_Ped01P1LOTSEQ.AsString+','
                     +DM1.Tb_Ped01P1CHAVE.AsString+','
                     +DM1.Tb_Ped01P1ORDEM.AsString+','
                     +DM1.Tb_Ped01P1CODEMP.AsString+','
                     +mudavp(cds_comvvCL2COMIS.AsString)+',' // valor da comissão
                     +mudavp(cds_comvvCL2VALOR.AsString)+',' // valor do documento
                     +mudavp(cds_comvvCL2REDUZIR_PERC.AsString)+',' // valor do documento
                     +mudavp(cds_comvvCL2REDUZIR_VALOR.AsString)+',' // valor do documento
                     +mudavp(cds_comvvCL2VALFRE.AsString)+',' // valor do frete
                     +mudavp(cds_comvvCL2ICMSRET.AsString)+',' // valor do Icms Retido
                     +mudavp(cds_comvvCL2SEMCOM.AsString)+',' // valor dos produtos sem comissão
                     +mudavp(cds_comvvCL2VALACRE.AsString)+',' // valor dos Acrescimos dos produtos
                     +mudavp(cds_comvvCL2COMTLV.AsString)+',' // valor da comissão do televendas
                     +mudavp(cds_comvvCL2DESCFIN.AsString)+',' // desconto financeiro
                     +'0'+',' // Código do ECF
                     +DM1.Tb_Ped01P1CODCLI.AsString+','
                     +':DESD,:DTEMIS,:DTVCTO,:DTBX)');
   DM1.Query1.Params[0].AsString:=' ';
   DM1.Query1.Params[1].AsDateTime:=cds_comvvCL2DTEMIS.AsDateTime;
   DM1.Query1.Params[2].AsDateTime:=pdatanula;
   DM1.Query1.Params[3].AsDateTime:=pdatanula;
   DM1.Query1.ExecSQL;
   cds_comvv.next;
   end;


// incio texto
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query1.Params.CreateParam(ftString,'NAT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'ORDEM',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TEXTO',ptInput);
DM1.Query1.Params.CreateParam(ftString,'VALOR',ptInput);
DM1.Query1.Sql.add('Insert into CADCL03 ('
                  +' CL3CODEMP '
                  +',CL3LOTSEQ '
                  +',CL3CHAVE '
                  +',CL3NAT '
                  +',CL3ORDEM '
                  +',CL3TEXTO '
                  +',CL3VALOR '
                  +') values ('
                  +' :CODEMP '
                  +',:LOTSEQ '
                  +',:CHAVE '
                  +',:NAT '
                  +',:ORDEM '
                  +',:TEXTO '
                  +',:VALOR '
                  +')');
DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
DM1.Query1.ParamByName('LOTSEQ').AsFloat:=ls_comrec;
DM1.Query1.ParamByName('CHAVE').AsFloat :=mnumlot;
DM1.Query1.ParamByName('NAT').AsFloat   :=0;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;
DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('NAT').AsFloat   :=1;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;



// termino texto



moper:=3;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLOCALIZAR.Click;


Frm_Agde.Free;
end;

procedure TFrm_ComVV.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   if CODVEN.Focused then
      begin
      fmensagem('Data Invalida!',0,['0'],0);
      MDATA.SetFocus;
      end
   else
      MDATA.Text:=FormatDatetime(fdt2, date);
   end;
end;

procedure TFrm_ComVV.bbitem_pesqClick(Sender: TObject);
var
mlin,x: Integer;
mtem: Boolean;
begin
if Frm_PComVV=nil then
   Application.CreateForm(TFrm_PComVV, Frm_PComVV)
else
   begin
   Frm_PComVV.Free;
   Frm_PComVV:=nil;
   Application.CreateForm(TFrm_PComVV, Frm_PComVV);
   end;

Frm_PComVV.mDeduzirAcrescimosRateado := CB_DESCRATEADO.Checked;


//Frm_PComVV.CB_DATAENTPEDIDO.Checked := CB_DATENTPEDIDO.Checked;

if cb_tipo_data.ItemIndex=2 then
   Frm_PComVV.mDataPesq:='P1DATENT'
else if cb_tipo_data.ItemIndex=1 then
   Frm_PComVV.mDataPesq:='P1DATAP'
else
   Frm_PComVV.mDataPesq:='P1DATDOC';


Frm_PComVV.mdt1.Text:=MDATAI.Text;
Frm_PComVV.mdt2.Text:=MDATAF.Text;
Frm_PComVV.ShowModal;
mlin:=0;
for x:=1 to Frm_PComVV.STG_PED.RowCount do
   begin
   if Trim(Frm_PComVV.STG_PED.Cells[0,x])='' then
      Continue;
   mtem:=False;
    if fExisteChave(ValInt(Frm_PComVV.STG_PED.Cells[mcolc_chave,x])
                   ,valint(Frm_PComVV.STG_PED.Cells[mcolc_codemp,x])
                   ,valint(Frm_PComVV.STG_PED.Cells[mcolc_lotseq,x])   ) then
      begin
      fmensagem('O Pedido.: '+cds_comvvCL2CHAVE.AsString+'/'+cds_comvvCL2ORDEM.AsString+' Valor: '+Formatfloat(mcasas, cds_comvvCL2VALOR.AsFloat)+#13
                 +'Ja esta relacionado!',0,['0'],0);
      mtem:=True;
      break;
      end;
  if mtem then
     Continue;
   cds_comvv.Append;

   cds_comvvCL2CHAVE.AsInteger  := valint(Frm_PComVV.STG_PED.Cells[mcolc_chave,x]);
   cds_comvvCL2ORDEM.AsInteger  := valint(Frm_PComVV.STG_PED.Cells[mcolc_ordem,x]);
   cds_comvvCL2TIPODOC.AsInteger  := valint(Frm_PComVV.STG_PED.Cells[mcolc_tipdoc,x]);
   cds_comvvCL2DTEMIS.AsDateTime  := StrToDateTime(Frm_PComVV.STG_PED.Cells[mcolc_dtemis,x]);
   cds_comvvCL2NOMSAC.AsString    := Frm_PComVV.STG_PED.Cells[mcolc_nomsac,x];
   cds_comvvCL2VALOR.AsFloat      := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_valor,x]);
   cds_comvvCL2CODEMP_DC.AsInteger:= valint(Frm_PComVV.STG_PED.Cells[mcolc_codemp,x]);
   cds_comvvCL2VALFRE.AsFloat     := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_valfre,x]);
   cds_comvvCL2ICMSRET.AsFloat    := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_icmsret,x]);
   cds_comvvCL2SEMCOM.AsFloat     := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_semcom,x]);
   cds_comvvCL2VALACRE.AsFloat    := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_valacre,x]);
   cds_comvvCL2DESCFIN.AsFloat    := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_descfin,x]);

   if (mpreducao_bc=0) then
      begin
      cds_comvvCL2REDUZIR_PERC.AsFloat :=0;
      cds_comvvCL2REDUZIR_VALOR.AsFloat :=0;
      end
   else
      begin
      cds_comvvCL2REDUZIR_PERC.AsFloat  :=mpreducao_bc;
      cds_comvvCL2REDUZIR_VALOR.AsFloat := arredonda( (cds_comvvCL2VALOR.AsFloat * cds_comvvCL2REDUZIR_PERC.AsFloat/100),2);
      end;


   if (pComVOrigem=5) and (DM1.Tb_PargerPDEDVD.Value=1) then
      cds_comvvCL2COMTLV.AsFloat  := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_comtlv,x])
   else
      cds_comvvCL2COMTLV.AsFloat  := 0;
   cds_comvvCL2CODCLI.AsFloat     := ValFloat(Frm_PComVV.STG_PED.Cells[mcolc_codcli,x]);
   cds_comvvCL2LOTSEQ_DC.AsFloat  := ValFloat(frm_PComVV.STG_PED.Cells[mcolc_lotseq,x]);
   mvalcom:=0;
   if mpcomis=0 then
      begin
      if pComVOrigem=5 then
         mvalcom:=cds_comvvCL2COMIS.AsFloat
      else if pComVOrigem=6 then
         mvalcom:=cds_comvvCL2COMSUP.AsFloat
      else if pComVOrigem=7 then
         mvalcom:=cds_comvvCL2COMTLV.AsFloat
      else if pComVOrigem=8 then
         mvalcom:= cds_comvvCL2COMASSE.AsFloat;
      if (CB_DESCFIN.Checked) and (cds_comvvCL2DESCFIN.AsFloat<>0) then
         begin
         mpcomis_calc:=    cds_comvvCL2VALOR.AsFloat
                           - cds_comvvCL2VALFRE.AsFloat
                           - cds_comvvCL2ICMSRET.AsFloat
                           - cds_comvvCL2SEMCOM.AsFloat
                           - cds_comvvCL2DESCFIN.AsFloat
                           - cds_comvvCL2VALFRE.AsFloat; // valor do Acrescimo
         try
            mpcomis_calc:=(mvalcom*100) / mpcomis_calc;
         except
            mpcomis_calc:=0;
            end;

         end;
      cds_comvvCL2COMIS.AsFloat :=mvalcom;
      end
   else
      begin
      if CB_DESCFIN.Checked then
         begin


         mpcomis_calc:=    cds_comvvCL2VALOR.AsFloat
                           - cds_comvvCL2REDUZIR_VALOR.AsFloat

                           - cds_comvvCL2VALFRE.AsFloat
                           - cds_comvvCL2ICMSRET.AsFloat
                           - cds_comvvCL2SEMCOM.AsFloat
                           - cds_comvvCL2DESCFIN.AsFloat
                           - cds_comvvCL2VALFRE.AsFloat; // valor do Acrescimo


         cds_comvvCL2COMIS.AsFloat :=

                           (cds_comvvCL2VALOR.AsFloat
                           - cds_comvvCL2REDUZIR_VALOR.AsFloat
                           -cds_comvvCL2VALFRE.AsFloat// VALOR do frete
                           -cds_comvvCL2ICMSRET.AsFloat // icms retido
                           -cds_comvvCL2SEMCOM.AsFloat // sem comissão
                           -cds_comvvCL2VALACRE.AsFloat)*mpcomis/100; // valor do Acrescimo
         end
      else
         begin

         cds_comvvCL2COMIS.AsFloat :=

                           (cds_comvvCL2VALOR.AsFloat
                           - cds_comvvCL2REDUZIR_VALOR.AsFloat

                           -cds_comvvCL2VALFRE.AsFloat// VALOR do frete
                           -cds_comvvCL2ICMSRET.AsFloat // icms retido
                           -cds_comvvCL2SEMCOM.AsFloat // sem comissão
                           -cds_comvvCL2DESCFIN.AsFloat // sem comissão
                           -cds_comvvCL2VALACRE.AsFloat)*mpcomis/100; // valor do Acrescimo

         end

      end;
   end;
fcalcular(0);
freeandNil(Frm_PComVV);

end;

procedure TFrm_ComVV.BBALTERARClick(Sender: TObject);
begin
Panel4.Enabled   :=True;
GroupBox1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
tsrecibo.Enabled   :=true;

ITEM_CANCELAR.Click;
moper:=1;
MDATA.SetFocus;
end;

procedure TFrm_ComVV.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este Lote?',0,['1','2'],0)<>mrYes then
   exit;
fexcluir(0);
BBLIMPAR.Click;
fmensagem('Lote Excluido!',0,['0'],0);

end;

procedure TFrm_ComVV.BBIMPRIMIRClick(Sender: TObject);
var
  mtotg: Real;
  x,mlin, mpag: Integer;
  mPercom,matraso,mjurdev,mjurdeb,mpdesc,mbasec,mvcomv,mvcomt,mvcoml: Real;
  mtotd, mtoti, mtotdes,mtotps,mtotbc,mtotvc,mtotct,mtotjdev,mtotjr,mtotjdeb,mtotcl:Real;
  mQtdItens,mTotItens: Real;
  mQtdPed: Integer;

  mtd_valcom: Real;
  mComplemento: String;
begin

{
|Chave Pedi|Dt.Emiss|Nome do Sacado                       |Tot.Pedido|Imp./Frete|Pr.s/Comis|Base Comis|Vlr Comis.|comis.tele|Comis.Liq.|
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
|1234567/01|10-09-02|1234567890123456789012345678901234567|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|

|Chave Pedi|Dt.Emiss|Nome do Sacado                       |Tot.Pedido|Imp./Frete|Base Comis|Vlr Comis.|comis.tele|Comis.Liq.|Qtd.Pecas |
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
|1234567/01|10-09-02|1234567890123456789012345678901234567|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|zzz.zz9,99|

}

Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add('Select CL2CODEMP,CL2CHAVE,CL2SEQ '
            +'       ,CL2DOC,CL2NUMERO,CL2DESD '
            +'       ,CL2DUP,CL2CHAVEP,CL2ORDEMP, CL2CODEMPD '
            +'       ,CL2VALCOM,CL2VALDOC,CL2VALFRE '
            +'       ,CL2VALICMSR,CL2SEMCOM,CL2VALACRE '
            +'        ,CL2VALCTL,CL2LOTSEQ,CL2LOTSEQ_DC '
            +'       ,CL2DTEMIS,CL2CODECF,CL2DTVCTO,CL2VALDESC '
            +'       ,CL2DTBX,CL2CODCLI,CRAZAO '
            +' ,CL2REDUZIR_PERC, CL2REDUZIR_VALOR '
            +' from CADCL02,CADCLI where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL2CODEMP=0'+IntToStr(codemp)+' and ')
            +' CL2CHAVE=0'+IntToStr(mnumlot)
            +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=CL2CODEMP ')
            +' and CCODCLI=CL2CODCLI ');
if RG_ORDEM.ItemIndex=0 then
   Qr_CL02.SQL.Add(' order by CL2CHAVE')
else
   Qr_CL02.SQL.Add(  ' order by CRAZAO,CL2CHAVE');
Qr_CL02.Open;
Qr_CL02.First;
if Qr_CL02.Eof then
   begin
   fmensagem('não há nada a ser impresso!',0,['0'],0);
   exit;
   end;
BBIMPRIMIR.Enabled:=false;

if valint(edt_codcai.Text)>0 then
   begin
   if cb_codcai_omitir.Checked then
      mComplemento:='Sem o Caixa '
   else
      mComplemento:='Caixa ';
   mComplemento:=mComplemento+edt_codcai.Text+'/'+edt_nomcai.Text;
   end;

testeform := TFrm_ComVV(FindGlobalComponent('form_impres_comvv'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_comvv);

form_impres_comvv.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP


form_impres_comvv.mlin:=0;
mpag:=0;
mtotd:=0;
mtoti:=0;
mtotdes:=0;
mtotps:=0;
mtotbc:=0;
mtotvc:=0;
mtotct:=0;
mtotjdev:=0;
mtotjr:=0;
mtotjdeb:=0;
mtotcl:=0;
mQtdItens:=0;
mTotItens:=0;
mQtdPed :=0;
mtd_valcom:=0;

for x:=0 to 9 do
   begin
   mTextoCred[x]:='';
   mTextoDeb [x]:='';
   mValDeb   [x]:=0;
   mValCred  [x]:=0;
   end;
mpos_cred:=0;
mpos_cred:=0;

mtip_ant:=Qr_CL02CL2DUP.AsInteger;

try
   while not Qr_CL02.Eof do
      begin
//   flcadp01(0,Qr_CL02CL2CODEMPD.AsInteger,Qr_CL02CL2LOTSEQ_DC.AsInteger,Qr_CL02CL2CHAVEP.AsString,Qr_CL02CL2ORDEMP.AsString);
      if form_impres_comvv.mlin=0 then
         begin
         mpag:=mpag+1;
         form_impres_comvv.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
         form_impres_comvv.Rdprint1.Impf(01,64,'Pagina: '+Formatfloat('0000',mpag),mnormal);
         form_impres_comvv.Rdprint1.Impf(02,01,'Relatorio de Comissão de Vendas. ' + mComplemento ,mnormal);
         form_impres_comvv.Rdprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,date),mnormal);
         form_impres_comvv.Rdprint1.Impf(03,01,Centra('Lote.: '+Qr_CL01cL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CL1DATA.Value),' ',80),mneg);
         form_impres_comvv.mlin:=4;
         form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra(fperiodo(0,MDATAI.Text,MDATAF.Text),' ',80),mneg);
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;

         form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra(Trim(Qr_CL01CL1OBS01.Value),' ',80),mneg);
         if Trim(Qr_CL01CL1OBS02.Value)<>'' then
            begin
            form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra(Trim(Qr_CL01CL1OBS02.Value),' ',80),mneg);
            end;
         if pComVOrigem=5 then
            begin
            form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
            end
         else if pComVOrigem=6 then
            begin
            form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra('Supervidor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
            end
         else if pComVOrigem=7 then
            begin
            form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra('Televendas.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
            end
         else if pComVOrigem=8 then
            begin
            form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,Centra('Assessor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
            end;


         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
            form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'+----------+--------+-------------------------------+----------+----------+----------+----------+----------+----------+----------+-----+',mreduz);
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         if CB_QTDITENS.Checked then
            form_impres_comvv.Rdprint1.ImpF(form_impres_comvv.mlin,01,'|'+IIF(CB_CHAVEPED.Checked,'Chave Pedi','Numero NF.')+'|Dt.Emiss|Nome do Sacado                 |Tot.Pedido|Imp./Frete|Base Comis|Vlr Comis.|comis.tele|Comis.Liq.|Qtd.Pecas |  %  |',mreduz)
         else
            form_impres_comvv.Rdprint1.ImpF(form_impres_comvv.mlin,01,'|'+IIF(CB_CHAVEPED.Checked,'Chave Pedi','Numero NF.')+'|Dt.Emiss|Nome do Sacado                 |Tot.Pedido|Imp./Frete|Pr.s/Comis|Base Comis|Vlr Comis.|comis.tele|Comis.Liq.|  %  |',mreduz);
         end;


      mbasec:=Qr_CL02CL2VALDOC.Value
          -Qr_CL02CL2VALICMSR.Value
          -Qr_CL02CL2VALFRE.Value
          -Qr_CL02CL2SEMCOM.Value
          -Qr_CL02CL2REDUZIR_VALOR.Value
          -Qr_CL02CL2VALACRE.Value;
      IF CB_DESCFIN.Checked then
         mbasec:=mbasec-Qr_CL02CL2VALDESC.Value;
      mvcomv:=Qr_CL02CL2VALCOM.Value;
      if (DM1.Tb_PargerPDEDVD.Value=1) and (pComVOrigem=5) then
         mvcomt:= Qr_CL02CL2VALCTL.Value
      else
         mvcomt:=0;
      mvcoml:=mvcomv-mvcomt;
      form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CL02CL2CODCLI.AsString);
      mQtdPed :=mQtdPed+1;
      try
         mPercom:=(mvcoml*100)/mbasec;
      except
         mPercom:=0;
         end;

      if CB_QTDITENS.Checked then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.clear;
         DM1.Query2.Sql.add('Select sum(P2QTD) as qtditens, '
                        +' count(*) as qtdund from CADP02 where '
                        +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+Qr_CL02CL2CODEMPD.AsString)+' AND '
                        +' P2LOTSEQ=0'+Qr_CL02CL2LOTSEQ_DC.AsString
                        +' and P2CHAVE=0'+Qr_CL02CL2CHAVEP.AsString
                        +' and P2ORDEM=0'+Qr_CL02CL2ORDEMP.AsString);
         DM1.Query2.Open;
         mQtdItens:=DM1.Query2.Fields[0].AsFloat;
         mTotItens:=mTotItens+mQtdItens;

         form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,'|'+
                                   iif(Qr_CL02CL2NUMERO.AsFloat>0,
                                   insere(Qr_CL02CL2NUMERO.asString,' ',10)
                                   ,
                                   insere(FormatFloat('0000000',
                                   Qr_CL02CL2CHAVEP.Value)+'/'
                                   +Formatfloat('00',Qr_CL02CL2ORDEMP.Value)+'|',' ',10)
                                   )
                                   +'|'
                                   +FormatDateTime(fdt3,Qr_CL02CL2DTEMIS.Value)+'|'
                                   +iif(Qr_CL02CL2DUP.AsInteger=8,
                                       insere2(DM1.Query1.Fields[0].AsString,' ',30)+'*'
                                       ,insere2(DM1.Query1.Fields[0].AsString,' ',31))
                                   +'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALDOC.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALICMSR.Value
                                                             +Qr_CL02CL2VALACRE.Value
                                                             +Qr_CL02CL2REDUZIR_VALOR.Value
                                                             +iif(CB_DESCFIN.Checked,
                                                             Qr_CL02CL2VALDESC.Value,0)
                                                             ),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mbasec),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALCOM.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALCTL.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mvcoml),' ',10)+'|'
                                   +insere(FormatFloat(mcasqtd,mQtdItens),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,mPercom),' ',05)+'|'

                                   ,mreduz);
         end
      else
         begin
         form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,'|'
                                   +iif(Qr_CL02CL2NUMERO.AsFloat>0,
                                   insere(Qr_CL02CL2NUMERO.asString,' ',10)
                                   ,

                                   insere(FormatFloat('0000000',
                                   Qr_CL02CL2CHAVEP.Value)+'/'
                                   +Formatfloat('00',Qr_CL02CL2ORDEMP.Value),' ',10)
                                   )
                                   +'|'
                                   +FormatDateTime(fdt3,Qr_CL02CL2DTEMIS.Value)+'|'
                                   +iif(Qr_CL02CL2DUP.AsInteger=8,
                                       insere2(DM1.Query1.Fields[0].AsString,' ',30)+'*'
                                       ,insere2(DM1.Query1.Fields[0].AsString,' ',31))
                                   +'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALDOC.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALICMSR.Value
                                                             +Qr_CL02CL2VALACRE.Value
                                                             +Qr_CL02CL2REDUZIR_VALOR.Value
                                                             +iif(CB_DESCFIN.Checked,
                                                             Qr_CL02CL2VALDESC.Value,0)
                                                             ),' ',10)+'|'
                                    +insere(FormatFloat(mcasas,Qr_CL02CL2SEMCOM.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mbasec),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALCOM.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,Qr_CL02CL2VALCTL.Value),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mvcoml),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,mPercom),' ',05)+'|'

                                   ,mreduz);
         end;


      if (Qr_CL02CL2DUP.AsFloat<>8) and (Qr_CL02CL2DUP.AsFloat<>17)  then
         begin
         mtotd   :=mtotd+Qr_CL02CL2VALDOC.Value;
         mtoti   :=mtoti+Qr_CL02CL2VALICMSR.Value+Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALACRE.Value+Qr_CL02CL2REDUZIR_VALOR.Value;
         mtotps  :=mtotps +Qr_CL02CL2SEMCOM.Value;
         mtotbc  :=mtotbc +mbasec;
         mtotvc  :=mtotvc +mvcomv;
         mtotct  :=mtotct +mvcomt;
         mtotcl  :=mtotcl+mvcoml;
         mtd_valcom:=mtd_valcom+mvcomv;
         end
      else
         begin
         mtotd   :=mtotd-Qr_CL02CL2VALDOC.Value;
         mtoti   :=mtoti-(Qr_CL02CL2VALICMSR.Value+Qr_CL02CL2VALFRE.Value+Qr_CL02CL2VALACRE.Value+Qr_CL02CL2REDUZIR_VALOR.Value);
         mtotps  :=mtotps -Qr_CL02CL2SEMCOM.Value;
         mtotbc  :=mtotbc -mbasec;
         mtotvc  :=mtotvc -mvcomv;
         mtotct  :=mtotct -mvcomt;
         mtotcl  :=mtotcl-mvcoml;
         mtd_valcom:=mtd_valcom-mvcomv;
         end;

      Qr_CL02.Next;
      if Qr_CL02.Eof then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         try
            mPercom:=(mtotcl*100)/mtotbc;
         except
            mPercom:=0;
            end;


         if CB_QTDITENS.Checked then
            begin
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,'|'+insere2('-Totais','.',10)+'|'
                                   +insere2(FloatToStr(mQtdPed),' ',8)+'|'
                                   +insere2('.','.',31)+'|'
                                   +insere(FormatFloat(mcasas,mtotd),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtoti),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotbc),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotvc),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotct),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotcl),' ',10)+'|'
                                   +insere(FormatFloat(mcasqtd,mTotItens),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,mPercom),' ',05)+'|'
                                   ,mreduz);
            end
         else
            begin
            form_impres_comvv.Rdprint1.Impf(form_impres_comvv.mlin,01,'|'+insere2('-Totais','.',10)+'|'
                                   +insere2(FloatToStr(mQtdPed),' ',8)+'|'
                                   +insere2('.','.',31)+'|'
                                   +insere(FormatFloat(mcasas,mtotd),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtoti),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotps),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotbc),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotvc),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotct),' ',10)+'|'
                                   +insere(FormatFloat(mcasas,mtotcl),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,mPercom),' ',05)+'|'
                                   ,mreduz);
            end;

         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'+----------+--------+-------------------------------+----------+----------+----------+----------+----------+----------+----------+-----+',mreduz);
         end
       else if form_impres_comvv.mlin>58 then
          begin
          form_impres_comvv.RDprint1.Novapagina;
         form_impres_comvv.mlin:=0;
         end;
      if  (Qr_CL02.Eof) or (mtip_ant<>Qr_CL02CL2DUP.Asinteger) then
         begin
         if (mtip_ant=8) then
            begin
            mTextoDeb[mpos_deb]:=tab_tped[mtip_ant];
            mValDeb[mpos_deb]  :=mtd_valcom;
            mpos_deb:=mpos_deb+1;
            end
         else
            begin

            mTextoCred[mpos_cred]:=tab_tped[mtip_ant];
            mValCred[mpos_cred]:=mtd_valcom;
            mpos_cred:=mpos_cred+1;
            end;
         mtip_ant:=Qr_CL02CL2DUP.AsInteger;
         mtd_valcom:=0;
         end;
      end;
except on e : exception do
   begin
   MessageDlg('Erro '+ e.Message,mtWarning,[mbOk],0);
   end;
   end;

if CB_EMIREC.Checked then
   FEmiteRecibo(0);
if form_impres_comvv.RDprint1.Setup then form_impres_comvv.RDprint1.Fechar;
form_impres_comvv.Free;
form_impres_comvv:=nil;
BBIMPRIMIR.Enabled:=true;
end;

procedure TFrm_ComVV.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if pComVOrigem=5 then
      begin
      CODVEN.Text:=fChamaVen(0,'frm_ComVV',Key);
      CODVENExit(self);
      key:=#0;
      end
   else if pComVOrigem=6 then
      begin
      CODVEN.Text:=fChamaSup(0,'frm_ComVV',Key);
      CODVENExit(self);
      key:=#0;
      end
   else if pComVOrigem=7 then
      begin
      CODVEN.Text:=fChamaUsr(0,'frm_ComVV',Key);
      CODVENExit(self);
      key:=#0;
      end
   else if pComVOrigem=8 then
      begin
      CODVEN.Text:=fChamaAssessor(0,'frm_ComVV',Key);
      CODVENExit(Self);
      key:=#0;
      end;
   end;
end;

procedure TFrm_ComVV.CODVENExit(Sender: TObject);
begin
if (not cds_comvv.IsEmpty) and (mcodven_ant<>ValFloat(CODVEN.Text)) then
   begin
   mcinst:='Esta mudança de Código apagara os registros selecionados.'+#13
          +'Deseja Continuar?';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      CODVEN.Text:=FloatToStr(mcodven_ant);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end
   else
      begin
      cds_comvv.EmptyDataSet;
      fcalcular(0);
      end;
   end;

if pComVOrigem=5 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComVOrigem=6 then
   begin
   if flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Supervisor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComVOrigem=7 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Usuário não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end
else if pComVOrigem=8 then
   begin
   if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fmensagem('Assessor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ComVV.MDATAIExit(Sender: TObject);
begin
Try
   MDATAI.Text:=FormatDateTime(fdt2,Strtodate(MDATAI.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATAI.SetFocus;
   exit;
   end;
if (not cds_comvv.IsEmpty) and (mdt1_ant<>MDATAI.Text) then
   begin
   mcinst:='Esta mudança de Código de data apagara os registros selecionados.'+#13
          +'Deseja Continuar?';

   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      MDATAI.Text:=mdt1_ant;
      MDATAI.SetFocus;
      exit;
      end
   else
      begin
      cds_comvv.EmptyDataSet;
      fcalcular(0);
      end;
   end;

end;

procedure TFrm_ComVV.MDATAFExit(Sender: TObject);
begin
Try
   MDATAF.Text:=FormatDateTime(fdt2,Strtodate(MDATAF.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATAF.SetFocus;
   exit;
   end;
if (not cds_comvv.IsEmpty) and (mdt2_ant<>MDATAF.Text) then
   begin
   mcinst:='Esta mudança de data apagara os registros selecionados.'+#13
          +'Deseja Continuar?';

   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      MDATAF.Text:=mdt2_ant;
      MDATAF.SetFocus;
      exit;
      end
   else
      begin
      cds_comvv.EmptyDataSet;
      fcalcular(0);
      end;
   end;
if (Trim(MDATAI.Text)<>'/  /') and (Trim(MDATAI.Text)<>'') then
   Begin
   if StrToDate(MDATAF.Text)<StrToDate(MDATAI.Text) then
      Begin
      fmensagem('Periodo invalido. Data inicial maior que Final!',0,['0'],0);
      MDATAI.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ComVV.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ComVV.ORDEMExit(Sender: TObject);
begin
ORDEM.Text:=fdeixanum(ORDEM.Text);
fTestaPed(0);
end;

procedure TFrm_ComVV.PCOMISExit(Sender: TObject);
begin
PCOMIS.Text:=Formatfloat(mcasas, ValFloat(PCOMIS.Text));
if ValFloat(PCOMIS.Text)<0 then
   begin
   fmensagem('Comissão não pode ser menor que zero!',0,['0'],0);
   PCOMIS.SetFocus;
   exit;
   end;
mpcomis:=ValFloat(PCOMIS.Text);
fcalccom(0);

end;

function TFrm_ComVV.fcalccom(ptipo: Integer): Boolean;
var
x: Integer;
mBookMarck: TBookmark;

begin
mBookMarck := cds_comvv.GetBookmark;
cds_comvv.DisableControls;
cds_comvv.First;
While not cds_comvv.eof do
  begin
  if cds_comvvCL2VALOR.AsFloat <=0 then
     begin
     cds_comvv.Next;
     continue;
     end;
   cds_comvv.edit;
   if mpcomis=0 then
      begin
      if flcadp01(0,cds_comvvCL2CODEMP_DC.AsInteger
      ,cds_comvvCL2LOTSEQ_DC.AsInteger
      ,cds_comvvCL2CHAVE.AsString
      ,cds_comvvCL2ORDEM.AsString) then
         begin
         if pComVOrigem=5 then
            cds_comvvCL2COMIS.AsFloat:=DM1.Tb_Ped01P1COMIS.Value
         else if pComVOrigem=6 then
            cds_comvvCL2COMIS.AsFloat := DM1.Tb_Ped01P1COMISS.Value
         else if pComVOrigem=7 then
            cds_comvvCL2COMIS.AsFloat := DM1.Tb_Ped01P1COMIST.Value
         else if pComVOrigem=8 then
             cds_comvvCL2COMIS.AsFloat := DM1.Tb_Ped01P1COMASSE.Value
         end
      else
         cds_comvvCL2COMIS.AsFloat := 0;
      end
   else
      begin
      cds_comvvCL2REDUZIR_PERC.AsFloat := mpreducao_bc;
      cds_comvvCL2REDUZIR_VALOR.AsFloat :=  arredonda( (cds_comvvCL2VALOR.AsFloat * cds_comvvCL2REDUZIR_PERC.AsFloat / 100),2);


      cds_comvvCL2COMIS.AsFloat := Arredonda( (

                           (cds_comvvCL2VALOR.AsFloat
                           -cds_comvvCL2REDUZIR_VALOR.AsFloat
                           -cds_comvvCL2VALFRE.AsFloat
                           -cds_comvvCL2ICMSRET.AsFloat
                           -cds_comvvCL2SEMCOM.AsFloat
                           -cds_comvvCL2VALACRE.AsFloat)

                           *mpcomis/100), 2);

      end;
   cds_comvv.post;
   cds_comvv.Next;
   end;

cds_comvv.GotoBookmark(mBookMarck);
cds_comvv.EnableControls;


fcalcular(0);
result:=True;
end;

procedure TFrm_ComVV.CODVENEnter(Sender: TObject);
begin
mcodven_ant:=ValFloat(CODVEN.Text)
end;

procedure TFrm_ComVV.MDATAIEnter(Sender: TObject);
begin
mdt1_ant:=MDATAI.Text;
end;

procedure TFrm_ComVV.MDATAFEnter(Sender: TObject);
begin
mdt2_ant:=MDATAF.Text;

end;

procedure TFrm_ComVV.MCODEMPExit(Sender: TObject);
begin
MCODEMP.Text:=fdeixanum(MCODEMP.Text);
fTestaPed(0);

end;

procedure TFrm_ComVV.MLOTSEQExit(Sender: TObject);
begin
MLOTSEQ.Text:=fdeixanum(MLOTSEQ.Text);
fTestaPed(0);

end;


function TFrm_ComVV.fTestaPed(ptipo:Integer): Boolean;
var
x: Integer;
mvalcom: Real;
mValorDeduzir: Real;
begin
if (ValFloat(CHAVE.Text)<=0) or
   (ValFloat(ORDEM.Text)<=0)  then
//   (ValFloat(MLOTSEQ.Text)<=0) then
   begin
   result:=False;
   exit;
   end;
if not flcadp01(0,ValInt(MCODEMP.Text),ValInt(MLOTSEQ.Text),Trim(CHAVE.Text),Trim(ORDEM.Text)) then
   begin
   Result:=False;
   exit;
   end;
if mpcomis>0 then
   begin
   mValorDeduzir :=  Arredonda( (DM1.Tb_Ped01P1TOTALL.Value * mpreducao_bc /100) ,2);



   mvalcom:=DM1.Tb_Ped01P1TOTALL.Value-DM1.Tb_Ped01P1ICMSR.Value-DM1.Tb_Ped01P1VALFRE.Value
           - mValorDeduzir
           -(DM1.Tb_Ped01P1SEMCOM.AsFloat
            +fValorAcrescimo(DM1.Tb_Ped01P1CODEMP.asInteger,DM1.Tb_Ped01P1LOTSEQ.asInteger,DM1.Tb_Ped01P1CODEMP.AsInteger))

           -DM1.Tb_Ped01P1ACRECONV.AsFloat-DM1.Tb_Ped01P1ACREGER.AsFloat;

   if CB_DESCFIN.Checked then
      mvalcom:=mvalcom-DM1.Tb_Ped01P1DESCFIN.AsFloat;
   mvalcom:=mvalcom*mpcomis/100;
   end
else
   begin
   if (pComVOrigem=5) then
      begin
      if DM1.Tb_Ped01P1CODV03.Value=ValFloat(CODVEN.Text) then
         mvalcom:=DM1.Tb_Ped01P1COMV03.Value
      else if DM1.Tb_Ped01P1CODV02.Value=ValFloat(CODVEN.Text) then
         mvalcom:=DM1.Tb_Ped01P1COMV02.Value
      else
         mvalcom:=DM1.Tb_Ped01P1COMIS.Value;
      end
   else if (pComVOrigem=6) then
      mvalcom:=DM1.Tb_Ped01P1COMISS.Value
   else if (pComVOrigem=7) then
      mvalcom:=DM1.Tb_Ped01P1COMIST.Value
   else if (pComVOrigem=8) then
      mvalcom:=DM1.Tb_Ped01P1COMASSE.Value;
   if (CB_DESCFIN.Checked) and (DM1.Tb_Ped01P1DESCFIN.AsFloat<>0) then
      begin
       mpcomis_calc:=DM1.Tb_Ped01P1TOTALL.Value-DM1.Tb_Ped01P1ICMSR.Value-DM1.Tb_Ped01P1VALFRE.Value
               -(DM1.Tb_Ped01P1SEMCOM.AsFloat
            +fValorAcrescimo(DM1.Tb_Ped01P1CODEMP.asInteger,DM1.Tb_Ped01P1LOTSEQ.asInteger,DM1.Tb_Ped01P1CODEMP.AsInteger))
               -DM1.Tb_Ped01P1ACRECONV.AsFloat-DM1.Tb_Ped01P1ACREGER.AsFloat;
       try
          mpcomis_calc:=(mvalcom*100) / mpcomis_calc;
       except
          mpcomis_calc:=0;
          end;
       mvalcom:=DM1.Tb_Ped01P1TOTALL.Value-DM1.Tb_Ped01P1ICMSR.Value-DM1.Tb_Ped01P1VALFRE.Value
               -(DM1.Tb_Ped01P1SEMCOM.AsFloat
            +fValorAcrescimo(DM1.Tb_Ped01P1CODEMP.asInteger,DM1.Tb_Ped01P1LOTSEQ.asInteger,DM1.Tb_Ped01P1CODEMP.AsInteger))
               -DM1.Tb_Ped01P1ACRECONV.AsFloat-DM1.Tb_Ped01P1ACREGER.AsFloat;
       mvalcom:=mvalcom-DM1.Tb_Ped01P1DESCFIN.AsFloat;

       mvalcom:=mvalcom*mpcomis_calc/100;
      end;
   end;
MDTEMIS.Text:=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATDOC.Value);
NOMCLI.Text :=DM1.Tb_Ped01nomcli.Value;
VALOR.Text  :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
VALCOM.Text :=FormatFloat(mcasas, mvalcom);
Result:=True;
end;


procedure TFrm_ComVV.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=fdeixanum(chave.Text);
fTestaPed(0);

end;

function TFrm_ComVV.fUpdate(ptipo,pNumLot,pCodEmp,pLotSeq: Integer; pChave,pOrdem: Real): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADP01 set ');
if ptipo=0 then
   DM1.Query2.SQL.add(' P1LOTCV03=0'+IntToStr(pNumlot))
else if ptipo=1 then
   DM1.Query2.SQL.add(' P1LOTCV02=0'+IntToStr(pNumlot))
else if ptipo=2 then
   DM1.Query2.SQL.add(' P1LOTCV=0'+IntToStr(pNumlot))
else if ptipo=3 then
   DM1.Query2.SQL.add(' P1LOTCS=0'+IntToStr(pNumlot))
else if ptipo=4 then
   DM1.Query2.SQL.add(' P1LOTCT=0'+IntToStr(pNumlot))
else if ptipo=5 then
   DM1.Query2.SQL.add(' P1LOTCASSE=0'+IntToStr(pNumlot));


DM1.Query2.SQL.add(' where P1CODEMP=0'+IntToStr(pCodEmp)
                           +' and P1LOTSEQ=0'+IntTostr(pLotSeq)
                           +' and P1CHAVE=0'+FloatToStr(pChave)
                           +' and P1ORDEM=0'+FloatToStr(pOrdem));
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,4027,'Frm_ComVV','CADP01');
   end;
end;


procedure TFrm_ComVV.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],2) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;
end;

procedure TFrm_ComVV.sb_SalvarPadrao_MasterClick(Sender: TObject);
begin
fDeletaPadroes(0,'_COMVV','CB_DESCFIN');
fGravaPadroes(0,'CB_DESCFIN'     ,'checked'      ,'_COMVV',iif(CB_DESCFIN.Checked,'true','false'));
fGravaPadroes(0,'CB_DESCRATEADO'     ,'checked'      ,'_COMVV',iif(CB_DESCRATEADO.Checked,'true','false'));
//fGravaPadroes(0,'CB_DATENTPEDIDO'     ,'checked'      ,'_COMVV',iif(CB_DATENTPEDIDO.Checked,'true','false'));

end;

procedure TFrm_ComVV.MVALC01Enter(Sender: TObject);
begin
MVALC01.SelectAll;

end;

procedure TFrm_ComVV.MVALC02Enter(Sender: TObject);
begin
MVALC02.SelectAll;

end;

procedure TFrm_ComVV.MVALC03Enter(Sender: TObject);
begin
MVALC03.SelectAll;

end;

procedure TFrm_ComVV.MVALC04Enter(Sender: TObject);
begin
MVALC04.SelectAll;

end;

procedure TFrm_ComVV.MVALC05Enter(Sender: TObject);
begin
MVALC05.SelectAll;

end;

procedure TFrm_ComVV.MVALC06Enter(Sender: TObject);
begin
MVALC06.SelectAll;

end;

procedure TFrm_ComVV.MVALC07Enter(Sender: TObject);
begin
MVALC07.SelectAll;

end;

procedure TFrm_ComVV.MVALC08Enter(Sender: TObject);
begin
MVALC08.SelectAll;

end;

procedure TFrm_ComVV.MVALC09Enter(Sender: TObject);
begin
MVALC09.SelectAll;

end;

procedure TFrm_ComVV.MVALC10Enter(Sender: TObject);
begin
MVALC10.SelectAll;

end;

procedure TFrm_ComVV.MVALD01Enter(Sender: TObject);
begin
MVALD01.SelectAll;

end;

procedure TFrm_ComVV.MVALD02Enter(Sender: TObject);
begin
MVALD02.SelectAll;

end;

procedure TFrm_ComVV.MVALD03Enter(Sender: TObject);
begin
MVALD03.SelectAll;

end;

procedure TFrm_ComVV.MVALD04Enter(Sender: TObject);
begin
MVALD04.SelectAll;

end;

procedure TFrm_ComVV.MVALD05Enter(Sender: TObject);
begin
MVALD05.SelectAll;

end;

procedure TFrm_ComVV.MVALD06Enter(Sender: TObject);
begin
MVALD06.SelectAll;

end;

procedure TFrm_ComVV.MVALD07Enter(Sender: TObject);
begin
MVALD07.SelectAll;

end;

procedure TFrm_ComVV.MVALD08Enter(Sender: TObject);
begin
MVALD08.SelectAll;

end;

procedure TFrm_ComVV.MVALD09Enter(Sender: TObject);
begin
MVALD09.SelectAll;

end;

procedure TFrm_ComVV.MVALD10Enter(Sender: TObject);
begin
MVALD10.SelectAll;

end;

procedure TFrm_ComVV.MVALC01Exit(Sender: TObject);
begin
MVALC01.Text:=Formatfloat(mcasas, ValFloat(MVALC01.Text));
if ValFloat(MVALC01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC02Exit(Sender: TObject);
begin
MVALC02.Text:=Formatfloat(mcasas, ValFloat(MVALC02.Text));
if ValFloat(MVALC02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC03Exit(Sender: TObject);
begin
MVALC03.Text:=Formatfloat(mcasas, ValFloat(MVALC03.Text));
if ValFloat(MVALC03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC04Exit(Sender: TObject);
begin
MVALC04.Text:=Formatfloat(mcasas, ValFloat(MVALC04.Text));
if ValFloat(MVALC04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC05Exit(Sender: TObject);
begin
MVALC05.Text:=Formatfloat(mcasas, ValFloat(MVALC05.Text));
if ValFloat(MVALC05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC06Exit(Sender: TObject);
begin
MVALC06.Text:=Formatfloat(mcasas, ValFloat(MVALC06.Text));
if ValFloat(MVALC06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC07Exit(Sender: TObject);
begin
MVALC07.Text:=Formatfloat(mcasas, ValFloat(MVALC07.Text));
if ValFloat(MVALC07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC08Exit(Sender: TObject);
begin
MVALC08.Text:=Formatfloat(mcasas, ValFloat(MVALC08.Text));
if ValFloat(MVALC08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC09Exit(Sender: TObject);
begin
MVALC09.Text:=Formatfloat(mcasas, ValFloat(MVALC09.Text));
if ValFloat(MVALC09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALC10Exit(Sender: TObject);
begin
MVALC10.Text:=Formatfloat(mcasas, ValFloat(MVALC10.Text));
if ValFloat(MVALC10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD01Exit(Sender: TObject);
begin
MVALD01.Text:=Formatfloat(mcasas, ValFloat(MVALD01.Text));
if ValFloat(MVALD01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVV.MVALD02Exit(Sender: TObject);
begin
MVALD02.Text:=Formatfloat(mcasas, ValFloat(MVALD02.Text));
if ValFloat(MVALD02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD03Exit(Sender: TObject);
begin
MVALD03.Text:=Formatfloat(mcasas, ValFloat(MVALD03.Text));
if ValFloat(MVALD03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD04Exit(Sender: TObject);
begin
MVALD04.Text:=Formatfloat(mcasas, ValFloat(MVALD04.Text));
if ValFloat(MVALD04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD05Exit(Sender: TObject);
begin
MVALD05.Text:=Formatfloat(mcasas, ValFloat(MVALD05.Text));
if ValFloat(MVALD05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD06Exit(Sender: TObject);
begin
MVALD06.Text:=Formatfloat(mcasas, ValFloat(MVALD06.Text));
if ValFloat(MVALD06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD07Exit(Sender: TObject);
begin
MVALD07.Text:=Formatfloat(mcasas, ValFloat(MVALD07.Text));
if ValFloat(MVALD07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD08Exit(Sender: TObject);
begin
MVALD08.Text:=Formatfloat(mcasas, ValFloat(MVALD08.Text));
if ValFloat(MVALD08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD09Exit(Sender: TObject);
begin
MVALD09.Text:=Formatfloat(mcasas, ValFloat(MVALD09.Text));
if ValFloat(MVALD09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVV.MVALD10Exit(Sender: TObject);
begin
MVALD10.Text:=Formatfloat(mcasas, ValFloat(MVALD10.Text));
if ValFloat(MVALD10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

function TFrm_ComVV.FTotalPadrao(pTipo: Integer): Boolean;
var
  mTotal: Real;
begin
mTotal:=       ValFloat(MVALC01.Text)
              +ValFloat(MVALC02.Text)
              +ValFloat(MVALC03.Text)
              +ValFloat(MVALC04.Text)
              +ValFloat(MVALC05.Text)
              +ValFloat(MVALC06.Text)
              +ValFloat(MVALC07.Text)
              +ValFloat(MVALC08.Text)
              +ValFloat(MVALC09.Text)
              +ValFloat(MVALC10.Text);
TOTOUTCRED.Caption:=FormatFloat(mcasas, mTotal);

mTotal:=       ValFloat(MVALD01.Text)
              +ValFloat(MVALD02.Text)
              +ValFloat(MVALD03.Text)
              +ValFloat(MVALD04.Text)
              +ValFloat(MVALD05.Text)
              +ValFloat(MVALD06.Text)
              +ValFloat(MVALD07.Text)
              +ValFloat(MVALD08.Text)
              +ValFloat(MVALD09.Text)
              +ValFloat(MVALD10.Text);
TOTDEBITOS.Caption:=FormatFloat(mcasas, mTotal);

//TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtottarban+mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
TOTLIQ.Caption    :=FormatFloat(mcasas, mtotcom-(mtotoutdesp+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption) )  ;
Memo_cred.Lines.Clear;
Memo_cred.Lines.Add('Valor da Comissao');
Memo_cred.Lines.Add('Liquida:');
Memo_cred.Lines.Add(TOTCOM.Caption);
Memo_cred.Lines.Add('Total de Outros Creditos');
Memo_cred.Lines.Add(TOTOUTCRED.Caption);
Memo_cred.Lines.Add('Total Geral dos Creditos');
Memo_cred.Lines.Add(TOTLIQ.Caption);


Memo_deb.Lines.Clear;
Memo_deb.Lines.Add('Total Geral dos Debitos');
Memo_deb.Lines.Add(TOTDEBITOS.Caption);
result:=true;





end;

procedure TFrm_ComVV.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_COMVV','');
if Trim(MTEXTOC01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC01'     ,'text'      ,'_COMVV',MTEXTOC01.Text);
if Trim(MTEXTOC02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC02'     ,'text'      ,'_COMVV',MTEXTOC02.Text);
if Trim(MTEXTOC03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC03'     ,'text'      ,'_COMVV',MTEXTOC03.Text);
if Trim(MTEXTOC04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC04'     ,'text'      ,'_COMVV',MTEXTOC04.Text);
if Trim(MTEXTOC05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC05'     ,'text'      ,'_COMVV',MTEXTOC05.Text);
if Trim(MTEXTOC06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC06'     ,'text'      ,'_COMVV',MTEXTOC06.Text);
if Trim(MTEXTOC07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC07'     ,'text'      ,'_COMVV',MTEXTOC07.Text);
if Trim(MTEXTOC08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC08'     ,'text'      ,'_COMVV',MTEXTOC08.Text);
if Trim(MTEXTOC09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC09'     ,'text'      ,'_COMVV',MTEXTOC09.Text);
if Trim(MTEXTOC10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC10'     ,'text'      ,'_COMVV',MTEXTOC10.Text);

if Trim(MTEXTOD01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD01'     ,'text'      ,'_COMVV',MTEXTOD01.Text);
if Trim(MTEXTOD02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD02'     ,'text'      ,'_COMVV',MTEXTOD02.Text);
if Trim(MTEXTOD03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD03'     ,'text'      ,'_COMVV',MTEXTOD03.Text);
if Trim(MTEXTOD04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD04'     ,'text'      ,'_COMVV',MTEXTOD04.Text);
if Trim(MTEXTOD05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD05'     ,'text'      ,'_COMVV',MTEXTOD05.Text);
if Trim(MTEXTOD06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD06'     ,'text'      ,'_COMVV',MTEXTOD06.Text);
if Trim(MTEXTOD07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD07'     ,'text'      ,'_COMVV',MTEXTOD07.Text);
if Trim(MTEXTOD08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD08'     ,'text'      ,'_COMVV',MTEXTOD08.Text);
if Trim(MTEXTOD09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD09'     ,'text'      ,'_COMVV',MTEXTOD09.Text);
if Trim(MTEXTOD10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD10'     ,'text'      ,'_COMVV',MTEXTOD10.Text);
fGravaPadroes(codusr,'RG_ORDEM'         ,'itemindex' ,'_COMVV',IntTostr(RG_ORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_EMIREC'        ,'checked'   ,'_COMVV',iif(CB_EMIREC.Checked,'true','false'));
fGravaPadroes(codusr,'CB_CHAVEPED'      ,'checked'   ,'_COMVV',iif(CB_CHAVEPED.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);

end;

function TFrm_ComVV.FReciboPadrao(pTipo: Integer): Boolean;
begin
if flfilpad(codusr,'_COMVV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC01',[]) then
      MTEXTOC01.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC02',[]) then
      MTEXTOC02.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC03',[]) then
      MTEXTOC03.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC04',[]) then
      MTEXTOC04.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC05',[]) then
      MTEXTOC05.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC06',[]) then
      MTEXTOC06.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC07',[]) then
      MTEXTOC07.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC08',[]) then
      MTEXTOC08.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC09',[]) then
      MTEXTOC09.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOC10',[]) then
      MTEXTOC10.Text:=DM4.Tb_FilPadFPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD01',[]) then
      MTEXTOD01.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD02',[]) then
      MTEXTOD02.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD03',[]) then
      MTEXTOD03.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD04',[]) then
      MTEXTOD04.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD05',[]) then
      MTEXTOD05.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD06',[]) then
      MTEXTOD06.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD07',[]) then
      MTEXTOD07.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD08',[]) then
      MTEXTOD08.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD09',[]) then
      MTEXTOD09.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTEXTOD10',[]) then
      MTEXTOD10.Text:=DM4.Tb_FilPadFPVALOR.Value;
   end;

result:=true;
end;

function TFrm_ComVV.FEmiteRecibo(pTipo: Integer): Boolean;
var
x: Integer;
mTotCred, mTotDeb: Real;
begin
form_impres_comvv.RDPrint1.Novapagina;
form_impres_comvv.mlin:=1;
form_impres_comvv.mpag:=form_impres_comvv.mpag+1;
form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra('Lote.: '+Qr_CL01cL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CL1DATA.Value),' ',80),mneg);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra(Qr_CL01CL1OBS01.Value,' ',80),mneg);
if Trim(Qr_CL01CL1OBS02.Value)<>'' then
   begin
   form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
   form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra(Qr_CL01CL1OBS02.Value,' ',80),mneg);
   end;
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
if pComVOrigem=5 then
   form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComVOrigem=6 then
   form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra('Supervisor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComVOrigem=7 then
   form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra('Televendas.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if pComVOrigem=8 then
   form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra('Assessor...: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.Impf(form_impres_comvv.mlin,01,Centra(fperiodo(0,MDATAI.Text,MDATAF.Text),' ',80),mneg);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;

form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|Descricao                                       |   Creditos   |    Debitos   |',mnormal);
mTotCred:=0;
mTotDeb :=0;

for x:=0 to 9 do
   begin
   if trim(mtextocred[x])='' then
      continue;
   form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
   form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(mtextocred[x],' ',48)+'|'+insere(FormatFloat(mcasas, mValCred[x]),' ',14)+'|              |',mnormal);
   mTotCred:=mTotCred+mValCred[x];
   end;

{
if mtg_valcom<>0 then
   begin
   form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
   form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2('Valor da Comissao',' ',48)+'|'+insere2(FormatFloat(mcasas, mtg_valcom),' ',14)+'|              |',mnormal);
   end;

if valfloat(TOTOUTCRED.Caption)<>0 then
   begin
   form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
   form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2('Outros Creditos',' ',48)+'|'+insere(TOTOUTCRED.Caption,' ',14)+'|              |',mnormal);
   end;
}
mTotCred:=mTotCred
          +ValFloat(MVALC01.Text)
          +ValFloat(MVALC02.Text)
          +ValFloat(MVALC03.Text)
          +ValFloat(MVALC04.Text)
          +ValFloat(MVALC05.Text)
          +ValFloat(MVALC06.Text)
          +ValFloat(MVALC07.Text)
          +ValFloat(MVALC08.Text)
          +ValFloat(MVALC09.Text)
          +ValFloat(MVALC10.Text);

form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC01.Text,' ',48)+'|'+insere(MVALC01.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC02.Text,' ',48)+'|'+insere(MVALC02.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC03.Text,' ',48)+'|'+insere(MVALC03.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC04.Text,' ',48)+'|'+insere(MVALC04.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC05.Text,' ',48)+'|'+insere(MVALC05.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC06.Text,' ',48)+'|'+insere(MVALC06.Text,' ',14)+'|              |',mnormal);

form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC07.Text,' ',48)+'|'+insere(MVALC07.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC08.Text,' ',48)+'|'+insere(MVALC08.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC09.Text,' ',48)+'|'+insere(MVALC09.Text,' ',14)+'|              |',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOC10.Text,' ',48)+'|'+insere(MVALC10.Text,' ',14)+'|              |',mnormal);


form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD01.Text,' ',48)+'|              |'+insere(MVALD01.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD02.Text,' ',48)+'|              |'+insere(MVALD02.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD03.Text,' ',48)+'|              |'+insere(MVALD03.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD04.Text,' ',48)+'|              |'+insere(MVALD04.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD05.Text,' ',48)+'|              |'+insere(MVALD05.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD06.Text,' ',48)+'|              |'+insere(MVALD06.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD07.Text,' ',48)+'|              |'+insere(MVALD07.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD08.Text,' ',48)+'|              |'+insere(MVALD08.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD09.Text,' ',48)+'|              |'+insere(MVALD09.Text,' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2(MTEXTOD10.Text,' ',48)+'|              |'+insere(MVALD10.Text,' ',14)+'|' ,mnormal);
mTotDeb:=mTotDeb
          +ValFloat(MVALD01.Text)
          +ValFloat(MVALD02.Text)
          +ValFloat(MVALD03.Text)
          +ValFloat(MVALD04.Text)
          +ValFloat(MVALD05.Text)
          +ValFloat(MVALD06.Text)
          +ValFloat(MVALD07.Text)
          +ValFloat(MVALD08.Text)
          +ValFloat(MVALD09.Text)
          +ValFloat(MVALD10.Text);

{
if mtEx_valcom<>0 then
   begin
   form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
   form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2('Total dos Extornos',' ',48)+'|              |'+insere(FormatFloat(mcasas, mtEx_valcom),' ',14)+'|' ,mnormal);
   end;
}




form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'|'+insere2('- Totais','.',48)
                     +'|'+insere(
                          FormatFloat(mcasas, mTotCred),' ',14)
                          +'|'+insere(FormatFloat(mcasas, mTotDeb),' ',14)+'|' ,mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,insere2('| Total Liquido a Receber R$ '+FormatFloat(mcasas, mTotCred-mTotDeb),' ',79)+'|',mnormal);
form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
form_impres_comvv.RDPrint1.ImpF(form_impres_comvv.mlin,01,'+------------------------------------------------+--------------+--------------+',mnormal);


if pComVOrigem=5 then
   begin
   if (not DM1.Tb_Ven.Active) or (DM1.Tb_VenVCODVEN.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadven(1,0,CODVEN.Text);
   if (length(DM1.Tb_VenVREFB01.AsString)>1) or
      (length(DM1.Tb_VenVREFB02.AsString)>1) or
      (length(DM1.Tb_VenVREFB03.AsString)>1) then
      begin
      form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
      form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_VenVREFB01.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_VenVREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_VenVREFB02.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_VenVREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_VenVREFB03.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_VenVREFB03.AsString,mneg);
         end;
      end;
   end
else if pComVOrigem=6 then
   begin
   if (not DM1.Tb_Sup.Active) or (DM1.Tb_SupSCODSUP.AsFloat<>ValFloat(CODVEN.Text)) then
       flcadsup(1,0,CODVEN.Text);
   if (length(DM1.Tb_SupSREFB01.AsString)>1) or
      (length(DM1.Tb_SupSREFB02.AsString)>1) or
      (length(DM1.Tb_SupSREFB03.AsString)>1) then
      begin
      form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
      form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_SupSREFB01.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_SupSREFB02.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_SupSREFB03.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB03.AsString,mneg);
         end;
      end;
   end
else if pComVOrigem=7 then
   begin
   if (not DM1.Tb_Sup.Active) or (DM1.Tb_SupSCODSUP.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadsup(1,0,CODVEN.Text);
   if (length(DM1.Tb_SupSREFB01.AsString)>1) or
      (length(DM1.Tb_SupSREFB02.AsString)>1) or
      (length(DM1.Tb_SupSREFB03.AsString)>1) then
      begin
      form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
      form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM1.Tb_SupSREFB01.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB01.AsString,mneg);
         end;

      if (length(DM1.Tb_SupSREFB02.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB02.AsString,mneg);
         end;
      if (length(DM1.Tb_SupSREFB03.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM1.Tb_SupSREFB03.AsString,mneg);
         end;
      end;
   end
else if pComVOrigem=8 then
   begin
   if (not DM2.Tb_Assessor.Active) or (DM2.Tb_AssessorCACODASS.AsFloat<>ValFloat(CODVEN.Text)) then
      flcadassessor(1,0,CODVEN.Text);
   if (length(DM2.Tb_AssessorCAREFBAN01.AsString)>1) or
      (length(DM2.Tb_AssessorCAREFBAN02.AsString)>1) or
      (length(DM2.Tb_AssessorCAREFBAN03.AsString)>1) then
      begin
      form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
      form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,'Dados Bancarios: ',mneg);
      if (length(DM2.Tb_AssessorCAREFBAN01.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM2.Tb_AssessorCAREFBAN01.AsString,mneg);
         end;

      if (length(DM2.Tb_AssessorCAREFBAN02.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM2.Tb_AssessorCAREFBAN02.AsString,mneg);
         end;
      if (length(DM2.Tb_AssessorCAREFBAN03.AsString)>1) then
         begin
         form_impres_comvv.mlin:=form_impres_comvv.mlin+1;
         form_impres_comvv.RDprint1.ImpF(form_impres_comvv.mlin,01,DM2.Tb_AssessorCAREFBAN03.AsString,mneg);
         end;
      end;
   end;

result:=true;
end;

procedure TFrm_ComVV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_ComVV.FormKeyDown(Sender: TObject; var Key: Word;
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


function TFrm_ComVV.fValorAcrescimo(pChave,pLotSeq,pCodEmp: integer): real;
var
query_adicionais: TQuery;
begin
query_adicionais:=TQuery.Create(nil);
query_adicionais.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_adicionais.sql.add('select nvl(sum(P1AE_VALOR),0) as Total from CADP01_ADDEXT  '
                        +' where  P1AE_CHAVE='+Inttostr(pChave)
                        +' and P1AE_LOTSEQ='+Inttostr(pLotSeq));
try
   query_adicionais.Open;
except on e : exception do
   ex_erroSql_Novo(query_adicionais,3448,'func Erro:'+e.Message ,'CADP01_ADDEXT');
   end;

result := query_adicionais.Fields[0].AsFloat;
query_adicionais.close;
freeandnil(query_adicionais);
end;
procedure TFrm_ComVV.edt_codcaiEnter(Sender: TObject);
begin
mcodcai_ant:=ValFloat(edt_codcai.Text)

end;

function TFrm_ComVV.fRetornarCodigoDoCaixa(pCodEmp,pChave,pLotSeq: Integer): integer;
var
query_temp: tQuery;
begin
query_temp:=tQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('Select P1CX_CODCAI from CADP01 where '
                  +' P1CODEMP='+IntToStr(pCodEmp)
                  +' and P1CHAVE='+IntToStr(pChave)
                  +' and P1LOTSEQ='+IntToStr(pLotSeq));
try
   query_temp.open;
   if query_temp.isEmpty() then
      result := 0
   else
     result := query_temp.fieldbyName('P1CX_CODCAI').asInteger;
 except on e : exception do
    begin
    ex_erroSql_Novo(query_temp,3492,'SGE','CADP01');
    result := 0;
    end;
    end;
query_temp.close;
freeandnil(query_temp);

end;





function TFrm_ComVV.fApagarPedidosQueNaoSaoDoCaixa(pCodCai: Integer): Boolean;
var
x_com: Integer;
begin

if pCodCai=0 then
   begin
   result := true;
   exit;
   end;


cds_comvv.DisableControls;
cds_comvv.First;
While not cds_comvv.Eof do
   begin
   if (cb_codcai_omitir.Checked=true) and
       (fRetornarCodigoDoCaixa(cds_comvvCL2CODEMP_DC.AsInteger,
       cds_comvvCL2CHAVE.AsInteger,cds_comvvCL2LOTSEQ_DC.AsInteger)=pCodCai) then
       begin
       cds_comvv.Delete;
       continue;
       end
   else if (cb_codcai_omitir.Checked=false) and
       (fRetornarCodigoDoCaixa(cds_comvvCL2CODEMP_DC.AsInteger,
       cds_comvvCL2CHAVE.AsInteger,cds_comvvCL2LOTSEQ_DC.AsInteger)<>pCodCai) then
       begin
       cds_comvv.Delete;
       continue;
       end;
   cds_comvv.Next;
   end;
cds_comvv.EnableControls;


fcalcular(0);

result := true;
end;

procedure TFrm_ComVV.edt_codcaiExit(Sender: TObject);
begin
if fsonumero(edt_codcai.Text)=0 then
   begin
   edt_codcai.Clear;
   edt_nomcai.Text:='todos';
   exit;
   end;

if not fLerGenerico_query('CADBCO','BCBANCO,BCSITCAD'
                  ,'BCCODBCO='+fdeixanum(edt_codcai.Text)
                       ,query_consulta) then
   begin
   MessageDlg('Banco/Caixa '+edt_codcai.text+' Não Cadastrado!',mtWarning,[mbOk],0);
   edt_codcai.SetFocus;
   exit;
   end;
edt_nomcai.Text:=query_consulta.Fields[0].AsString;


if (not cds_comvv.IsEmpty) and (mcodcai_ant<>ValFloat(edt_codcai.text)) then
   begin
   mcinst:='Esta mudança de Código apagara os registros selecionados que nao são deste caixa.'+#13
          +'Deseja Continuar?';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      edt_codcai.Text:=FloatToStr(mcodcai_ant);
      if edt_codcai.Enabled then
         edt_codcai.SetFocus;
      exit;
      end
   else
      begin
      fApagarPedidosQueNaoSaoDoCaixa(valint(edt_codcai.text));
      end;
   end;



end;

procedure TFrm_ComVV.edt_codcaiKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcai.Text:=fChamaBco(0,'frm_Cli',Key);
   edt_codcaiExit(self);
   key:=#0;
   end;



end;

function TFrm_ComVV.fContarRegistros: integer;
var
mBookMarck: TBookmark;
mQtdReg: integer;
begin
if cds_comvv.isempty then
   result:=0
else if cds_comvv.RecordCount>0 then
   result:=cds_comvv.RecordCount
else
   begin
   mBookMarck:=cds_comvv.GetBookmark;
   cds_comvv.DisableControls;
   cds_comvv.First;
   mQtdReg:=0;
   While not cds_comvv.eof do
      begin
      mQtdReg:=mQtdReg+1;
      cds_comvv.Next;
      end;
   result:= mQtdReg;
   end;
end;

procedure TFrm_ComVV.edt_preducao_bcExit(Sender: TObject);
begin
edt_preducao_bc.Text:=Formatfloat(mcasas, ValFloat(edt_preducao_bc.Text));
if ValFloat(edt_preducao_bc.Text)>99 then
   begin
   fmensagem('% Não pode ser maior que 99!',0,['0'],0);
   edt_preducao_bc.SetFocus;
   exit;
   end
else if ValFloat(edt_preducao_bc.Text)<-99 then
   begin
   fmensagem('% Não pode ser menor que -99!',0,['0'],0);
   edt_preducao_bc.SetFocus;
   exit;
   end;

mpreducao_bc :=ValFloat(edt_preducao_bc.Text);
fcalccom(0);

end;

end.
