unit S_AcCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, S_SelEmp,
  S_DM1, S_For, func, Buttons, Mask, variants,lerarq,S_LOptica,func2,S_Bco,S_Dap;

type
  TFrm_AcCP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODFOR: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    HeaderControl1: THeaderControl;
    Label2: TLabel;
    NUMDUP: TEdit;
    bbLancar: TBitBtn;
    HC_DUPLIC: THeaderControl;
    Panel5: TPanel;
    NUMCHQ: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BANCO: TEdit;
    Label5: TLabel;
    SERIE: TEdit;
    Label6: TLabel;
    VALOR: TEdit;
    Label7: TLabel;
    EMITENTE: TEdit;
    Label8: TLabel;
    CPF: TEdit;
    Label9: TLabel;
    RG: TEdit;
    Label10: TLabel;
    CONTA: TEdit;
    Label11: TLabel;
    DTNAS: TMaskEdit;
    Label12: TLabel;
    DTDEP: TMaskEdit;
    Label13: TLabel;
    AGENCIA: TEdit;
    bbLancar_forma: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    HeaderControl3: THeaderControl;
    Panel6: TPanel;
    HC_cheques: THeaderControl;
    Panel7: TPanel;
    BitBtn5: TBitBtn;
    BBCancelar: TBitBtn;
    BBSair: TBitBtn;
    Label14: TLabel;
    DESD: TEdit;
    NOMFOR: TEdit;
    STG_DA: TStringGrid;
    Label16: TLabel;
    VALPAG: TEdit;
    Label17: TLabel;
    DESC: TEdit;
    Label18: TLabel;
    JUROS: TEdit;
    STG_DS: TStringGrid;
    STG_CHQ: TStringGrid;
    Label19: TLabel;
    DATAP: TMaskEdit;
    lbl_caixa: TLabel;
    DATACX: TMaskEdit;
    st_leitor: TStaticText;
    LComp: TLabel;
    COMP: TEdit;
    MDTEMIS: TMaskEdit;
    Label15: TLabel;
    RG_FORMA: TRadioGroup;
    CB_FORMAPGTO: TComboBox;
    ST_FORMAPGTO: TStaticText;
    Label20: TLabel;
    MCODEMP: TEdit;
    Label22: TLabel;
    NR: TEdit;
    MDUP: TEdit;
    panel_caixa: TPanel;
    Label21: TLabel;
    Label23: TLabel;
    MCODCAI_PAD: TEdit;
    MNOMCAI_PAD: TEdit;
    MLOTMOV: TEdit;
    lbl_codcai: TLabel;
    MCODCAI: TEdit;
    MNOMCAI: TEdit;
    spn_mandup: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure bbLancarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RG_FORMAExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure NUMCHQKeyPress(Sender: TObject; var Key: Char);
    procedure NUMCHQExit(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure VALORExit(Sender: TObject);
    procedure DTDEPExit(Sender: TObject);
    procedure DTNASExit(Sender: TObject);
    procedure BBSairClick(Sender: TObject);
    procedure bbLancar_formaClick(Sender: TObject);
    procedure BANCOExit(Sender: TObject);
    procedure BBCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG_DADblClick(Sender: TObject);
    procedure DESCKeyPress(Sender: TObject; var Key: Char);
    procedure DESCExit(Sender: TObject);
    procedure JUROSExit(Sender: TObject);
    procedure VALPAGExit(Sender: TObject);
    procedure STG_DAExit(Sender: TObject);
    procedure STG_DADrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DESDExit(Sender: TObject);
    procedure DATAPExit(Sender: TObject);
    procedure BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure SERIEKeyPress(Sender: TObject; var Key: Char);
    procedure AGENCIAKeyPress(Sender: TObject; var Key: Char);
    procedure CONTAKeyPress(Sender: TObject; var Key: Char);
    procedure EMITENTEKeyPress(Sender: TObject; var Key: Char);
    procedure RGKeyPress(Sender: TObject; var Key: Char);
    procedure DATACXExit(Sender: TObject);
    procedure CPFKeyPress(Sender: TObject; var Key: Char);
    procedure CPFExit(Sender: TObject);
    procedure NUMCHQEnter(Sender: TObject);
    procedure NUMCHQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SERIEExit(Sender: TObject);
    procedure AGENCIAExit(Sender: TObject);
    procedure CONTAExit(Sender: TObject);
    procedure COMPExit(Sender: TObject);
    procedure EMITENTEExit(Sender: TObject);
    procedure RGExit(Sender: TObject);
    procedure COMPKeyPress(Sender: TObject; var Key: Char);
    procedure NUMDUPExit(Sender: TObject);
    procedure MDTEMISExit(Sender: TObject);
    procedure STG_DSDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_CHQDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_FORMAPGTOExit(Sender: TObject);
    procedure MDUPExit(Sender: TObject);
    procedure MCODCAI_PADExit(Sender: TObject);
    procedure MLOTMOVExit(Sender: TObject);
    procedure MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
    procedure MCODCAIExit(Sender: TObject);
    procedure MCODCAIKeyPress(Sender: TObject; var Key: Char);
    procedure spn_mandupClick(Sender: TObject);
    procedure VALOREnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RG_FORMAClick(Sender: TObject);
    procedure CB_FORMAPGTOClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     function fcarregadup(ptipo: Integer): Boolean;
     function fLerAtualiza(pCodFor: Real): Boolean;
     function fJaselecionada(pTipo: Integer): Boolean;
     function fTestaDadosCheques(Posicao: Integer): Boolean;
     function fAcCrTotaldup(ptipo: Integer): Real;
     function fAcCrTotalFP(ptipo: Integer): Real;

  public
    { Public declarations }
    form_dap    : TFrm_Dap;
    Form_SelEmp : TFrm_SelEmp;

  end;
function fDebitaChqTerc(pGrid: Integer): Boolean;
function fCreditaNC(pGrid: Integer): Boolean;
var
  Frm_AcCP: TFrm_AcCP;
  mdap_codcai_ant: Integer;
  mqtd: Integer;
  mcompra: Boolean;
  mChT_Chave,mChT_Codemp: Real;
  mChT_CodBco_ori,mChT_CodLdr_Ori,mChT_CodCli_Ori: Real;
  mChT_NomBco_Ori,mChT_Nomcli_Ori: String;
  mValidaNumero: Boolean=false;
  mloteBx: Real=0;
  mda_numdup:integer=00;
  mda_parc:integer=01;
  mda_codfor:integer=02;
  mda_dtemis:integer=03;
  mda_valor:integer=04;
  mda_dtvcto:integer=05;
  mda_valrec:integer=06;
  mda_valdesc:integer=07;
  mda_dtdesc:integer=08;
  mda_vlarec:integer=09;
  mda_banco:integer=10;
  mda_chave:integer=11;
  mda_codemp:integer=12;
  mda_dup:integer=13;
  mda_obs:integer=14;
  mda_chave_id:integer=15;
  mda_chave_id_ano:integer=16;


  mds_nomfor:integer=00;
  mds_numdup:integer=01;
  mds_parc:integer=02;
  mds_codfor:integer=03;
  mds_valdup:integer=04;
  mds_valrec:integer=05;
  mds_valdes:integer=06;
  mds_valjur:integer=07;
//  mds_codfor:integer=08;
  mds_dtemis:integer=08;
  mds_dtpgto:integer=09;
  mds_codemp:integer=10;
  mds_dup:integer=11;
  mds_dtvcto:integer=13;
  mds_obs:integer=15;
  mds_chave_id:integer=16;
  mds_chave_id_ano:integer=17;

  mchq_nomfp:integer=00;
  mchq_numchq:integer=01;
  mchq_banco:integer=02;
  mchq_serie:integer=03;
  mchq_agencia:integer=04;
  mchq_emitente:integer=05;
  mchq_valor:integer=06;
  mchq_cpf:integer=07;
  mchq_rg:integer=08;
  mchq_cc:integer=09;
  mchq_dtnas:integer=10;
  mchq_codfor:integer=11;
  mchq_dtemis:integer=12;
  mchq_dtdep:integer=13;
  mchq_forma:integer=14;
  mchq_dtcx:integer=15;
  mchq_compens:integer=16;
  mchq_data_tit:integer=17;
  mchq_codcai:integer=18;
  mchq_nomcai:integer=19;
  mchq_ch_terc:integer=20;
  mchq_emp_ori_ch_terc:integer=21;
  mchq_vinc_fp:integer=22;
  mchq_banco_ori:integer=23;
  mchq_codldr_ori:integer=24;

  mchq_cht_codcli_ori:integer=25;
  mchq_cht_nombco_ori:integer=26;
  mchq_cht_nomcli_ori:integer=27;



  mchq_dev_codemp:integer=28;

  mchq_dev_codecf:integer=29;
  mchq_dev_desd:integer=30;
  mchq_dev_codfor:integer=33;
  mchq_dev_dtemis:integer=31;
  mchq_dev_dup:integer=32;
  mchq_dev_dup_chave_ano:integer=34;
  mchq_dev_dup_chave:integer=35;


  mdev_Codemp:Real=0;
  mDev_Desd  :String='';
  mDev_Dtemis:tDatetime;
  mDev_Dup   :Real=0;
  mDev_Codfor:Real=0;

  mDev_dup_chave:Real=0;
  mDev_dup_chave_ano:Real=0;


implementation

uses S_DM4, func_excecoes, flerarq, S_Pchq, S_BDev_For;

{$R *.DFM}

procedure TFrm_AcCP.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_AcCP',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;
end;

procedure TFrm_AcCP.CODFORExit(Sender: TObject);
begin
if bbsair.focused then
   exit;
CODFOR.Text:=FloatTostr(ValFloat(CODFOR.Text));
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      if (MCODCAI_PAD.Focused) then
         begin
         CODFOR.Text:='';
         exit;
         end;

      fmensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      exit;
      end
   else
      begin
      NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
      end;
   if not fLerAtualiza(ValFloat(CODFOR.Text)) then
      begin
      fmensagem('Fornecedor não tem duplicata em aberta!',0,['0'],0);
      CODFOR.SetFocus;
      end;
   end;
end;

procedure TFrm_AcCP.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_AcCP.bbLancarClick(Sender: TObject);
var
achou: Boolean;
mqtdd: Integer;
mvalor: Real;
mdatae: String;
mvaldev, mtotal: Real;
mens: String;
begin
if Trim(NUMDUP.Text)='' then
   begin
   fmensagem('Numero Invalido!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
achou:=False;
for mqtdd:=1 to STG_DA.RowCount do
   begin
   if (fSonumero(NUMDUP.Text)=fSonumero(STG_DA.Cells[mda_numdup,mqtdd])) and
      (Trim(DESD.Text)    =Trim(STG_DA.Cells[mda_parc,mqtdd]))   and
      (fsonumero(CODFOR.Text) =fSonumero(STG_DA.Cells[mda_codfor,mqtdd]))   and
      (Trim(MDTEMIS.Text) =Trim(STG_DA.Cells[mda_dtemis,mqtdd]) )           and
      (fSonumero(MCODEMP.Text) =fSonumero(STG_DA.Cells[mda_codemp,mqtdd]))  and
      (fsonumero(MDUP.Text) =fsonumero(STG_DA.Cells[mda_dup,mqtdd])  ) Then

      begin
      achou:=True;
      break;
      end;
   end;

mvalor:=ValFloat(STG_DA.Cells[mda_valor,mqtdd]);
mdatae:=STG_DA.Cells[mda_dtemis,mqtdd];
if valfloat(STG_DA.Cells[mda_chave,mqtdd])>0 then
   mcompra:=True
else
   mcompra:=False;

if not achou then
   begin
   fmensagem('Número de Duplicata Inválido!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
achou:=False;
for mqtd:=1 to STG_DS.RowCount do
   begin
   if (fSonumero(NUMDUP.Text)=fSonumero(STG_DS.Cells[mds_numdup,mqtd])) and
      (Trim(DESD.Text)    =Trim(STG_DS.Cells[mds_parc,mqtd]))   and
      (fSonumero(CODFOR.Text)  =FSonumero(STG_DS.Cells[mds_codfor,mqtd]))   and
      (Trim(MDTEMIS.Text) =Trim(STG_DS.Cells[mds_dtemis,mqtd]))             and
      (fSonumero(MCODEMP.Text)  =FSonumero(STG_DS.Cells[mds_codemp,mqtd])) and
      (fsonumero(MDUP.Text) =fsonumero(STG_DS.Cells[mds_dup,mqtd])  )  Then
      begin
      achou:=True;
      break;
      end;
   end;
if achou then
   begin
   fmensagem('Duplicata já Selecionada. Selecione uma Válida!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;

if (ValInt(MDUP.Text)=5) then
   begin
   fMensagem('Documento de Crédito, utilizar baixa de devoluções a Fornecedores!',0,['0'],0);
   exit;
   end;

mtotal:=ValFloat(VALPAG.Text)+(ValFloat(DESC.Text)-ValFloat(JUROS.Text));
mtotal:=Arredonda(mtotal,2);
mvaldev:=ValFloat(STG_DA.Cells[mda_vlarec,mqtdd]);
mvaldev:=Arredonda(mvaldev,2);

if mtotal>mvaldev then
   begin
   fmensagem('Valor devido: '+Trim(STG_DA.Cells[mda_vlarec,mqtdd])+' Valor pago: '+FormatFloat('##0.00',mtotal)
              +#13+'Invalido!',0,['0'],0);
   exit;
   end
else if mtotal<mvaldev then
   begin
   mens:='Valor devido: '+Trim(STG_DA.Cells[mda_vlarec,mqtdd])+' Valor pago: '+FormatFloat(mcasas,mtotal)
              +#13+'é pagamento parcial?';
   if fmensagem(mens,0,['1','2'],2)<>mrYes then
      exit;
   end;

mqtd:=STG_DS.RowCount;
STG_DS.Cells[mds_nomfor,mqtd-1]:=NOMFOR.Text;
STG_DS.Cells[mds_numdup,mqtd-1]:=NUMDUP.Text;
STG_DS.Cells[mds_parc,mqtd-1]:=DESD.Text;
STG_DS.Cells[mds_codfor,mqtd-1]:=CODFOR.Text;
STG_DS.Cells[mds_valdup,mqtd-1]:=Formatfloat('0.00',mvalor);
STG_DS.Cells[mds_valrec,mqtd-1]:=VALPAG.Text;
STG_DS.Cells[mds_valdes,mqtd-1]:=DESC.Text;
STG_DS.Cells[mds_valjur,mqtd-1]:=JUROS.Text;
STG_DS.Cells[mds_codfor,mqtd-1]:=CODFOR.Text;
STG_DS.Cells[mds_dtemis,mqtd-1]:=mdatae;
STG_DS.Cells[mds_dtpgto,mqtd-1]:=DATAP.Text;
STG_DS.Cells[mds_codemp,mqtd-1]:=MCODEMP.Text;
STG_DS.Cells[mds_valdup,mqtd-1]:=STG_DA.Cells[mda_valor,mqtdd]; // valor do titulo
STG_DS.Cells[mds_dtvcto,mqtd-1]:=STG_DA.Cells[mda_dtvcto,mqtdd]; //data de vencimento
STG_DS.Cells[mds_dup,mqtd-1]:=MDUP.Text;
STG_DS.Cells[mds_obs,mqtd-1]:=STG_DA.Cells[mda_obs,mqtdd]; //observação da duplicata
STG_DS.Cells[mds_chave_id,mqtd-1]:=STG_DA.Cells[mda_chave_id,mqtdd]; //observação da duplicata
STG_DS.Cells[mds_chave_id_ano,mqtd-1]:=STG_DA.Cells[mda_chave_id_ano,mqtdd]; //observação da duplicata





STG_DS.RowCount:=mqtd+1;
STG_DS.Rows[mqtd].Clear;
STG_DS.Rows[mqtd+1].Clear;
STG_DS.Rows[mqtd+2].Clear;
DESC.Text:='';
JUROS.Text:='';
fLerAtualiza(ValFloat(CODFOR.Text));
HC_DUPLIC.Sections.Items[2].Text:=FormatFloat(mcasas, faccrTotaldup(0));
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCP.BitBtn3Click(Sender: TObject);
var
mens: String;
begin
mqtd:=STG_DS.Row;
if Trim(STG_DS.Cells[mds_nomfor,mqtd])='' then
   exit;
mens:='Quer realmente excluir a duplicata: '+STG_DS.Cells[mds_numdup,mqtd]+chr(13)
     +'Fornecedor: '+STG_DS.Cells[mds_nomfor,mqtd];

if fmensagem(mens,0,['1','2'],2)=mrYes then
   begin
   if STG_DS.RowCount=2 then
      STG_DS.Rows[1].Clear
   else
      begin
      for mqtd:=STG_DS.Row to STG_DS.RowCount do
         begin
         STG_DS.Cells[mds_nomfor,mqtd]:=STG_DS.Cells[mds_nomfor,mqtd+1];
         STG_DS.Cells[mds_numdup,mqtd]:=STG_DS.Cells[mds_numdup,mqtd+1];
         STG_DS.Cells[mds_parc,mqtd]:=STG_DS.Cells[mds_parc,mqtd+1];
         STG_DS.Cells[mds_codfor,mqtd]:=STG_DS.Cells[mds_codfor,mqtd+1];
         STG_DS.Cells[mds_valdup,mqtd]:=STG_DS.Cells[mds_valdup,mqtd+1];
         STG_DS.Cells[mds_valrec,mqtd]:=STG_DS.Cells[mds_valrec,mqtd+1];
         STG_DS.Cells[mds_valdes,mqtd]:=STG_DS.Cells[mds_valdes,mqtd+1];
         STG_DS.Cells[mds_valjur,mqtd]:=STG_DS.Cells[mds_valjur,mqtd+1];
         STG_DS.Cells[mds_codfor,mqtd]:=STG_DS.Cells[mds_codfor,mqtd+1];
         STG_DS.Cells[mds_dtemis,mqtd]:=STG_DS.Cells[mds_dtemis,mqtd+1];
         STG_DS.Cells[mds_dtpgto,mqtd]:=STG_DS.Cells[mds_dtpgto,mqtd+1];
         STG_DS.Cells[mds_codemp,mqtd]:=STG_DS.Cells[mds_codemp,mqtd+1];
         STG_DS.Cells[mds_dup,mqtd]:=STG_DS.Cells[mds_dup,mqtd+1];
         STG_DS.Cells[mds_dtvcto,mqtd]:=STG_DS.Cells[mds_dtvcto,mqtd+1];
         STG_DS.Cells[mds_dup,mqtd]:=STG_DS.Cells[mds_dup,mqtd+1];

         end;
      end;
   STG_DS.RowCount:=STG_DS.RowCount-1;
   end;
fLerAtualiza(ValFloat(CODFOR.Text));
HC_DUPLIC.Sections.Items[2].Text:=FormatFloat(mcasas, faccrTotaldup(0));
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;


procedure TFrm_AcCP.RG_FORMAExit(Sender: TObject);
var
mvalor: Real;
begin
if (NUMCHQ.Focused) or (VALOR.Focused) then
   begin
   mvalor:=0;
   for mqtd:=1 to STG_DS.RowCount-1 do
      begin
      if Trim(STG_DS.Cells[mds_nomfor,mqtd])='' then
         continue;
//      if STG_DS.Cells[mds_codfor,mqtd]='5' then
//         mvalor:=mvalor-ValFloat(STG_DS.Cells[mds_valrec,mqtd])
//      else
         mvalor:=mvalor+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
      end;
   for mqtd:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtd]),[]);
      if DM1.Qr_FPFPTIPO.Value=1 then
         mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end;

   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(copy(rg_forma.Items[rg_forma.Itemindex],1,2)),[]);

//   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(fExtraiCodigoEntreChaves(CB_FORMAPGTO.Text)),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      begin
      if mvalor<0 then
         mvalor:=mvalor*-1;
      end;
   VALOR.Text:=FormatFloat('#####0.00',mvalor);
   if DM1.Qr_FPFPCODBCO.AsFloat>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
         begin
         MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
         MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         MCODCAI.Text:=MCODCAI_PAD.Text;
         MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end;
      end
   else
      begin
      MCODCAI.Text:=MCODCAI_PAD.Text;
      MNOMCAI.Text:=MNOMCAI_PAD.Text;
      end;

   if (DM1.Qr_FPFPNUM.Value=1) or (DM1.Qr_FPFPNUM.Value=2) then
      begin
      Label3.Enabled:=True;
      Label4.Enabled:=True;
      Label5.Enabled:=True;
      Label13.Enabled:=True;
      Label10.Enabled:=True;
      Label12.Enabled:=True;
      Label7.Enabled :=True;
      Label8.Enabled :=True;
      Label9.Enabled :=True;
      Label11.Enabled:=True;
      NUMCHQ.Enabled :=True;
      BANCO.Enabled  :=True;
      SERIE.Enabled  :=True;
      AGENCIA.Enabled:=True;
      CONTA.Enabled  :=True;
      DTDEP.Enabled  :=True;
      EMITENTE.Enabled:=True;
      CPF.Enabled    :=True;
      RG.Enabled     :=True;
      DTNAS.Enabled  :=True;
      COMP.Enabled   :=true;
      LComp.Enabled  :=true;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :=FormatDateTime(fdt2,date);
      EMITENTE.Text  :=DM1.Tb_EmpRAZAO.Value;
      CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_EmpCGC.Value);
      RG.Text        :=DM1.Tb_EmpINSCRICAO.Value;
      if DM1.Qr_FPFPVINCULO.AsInteger=18 then
         NUMCHQ.Hint:='[F3]-p/Leitor Otico'+#13+'[F4]-p/Cheques Terceiros'
      else
         NUMCHQ.Hint:='[F3]-p/Leitor Otico';
      if Not conta.Focused then
         NUMCHQ.SetFocus;
      end
   else
      begin
      Label3.Enabled:=False;
      Label4.Enabled:=False;
      Label5.Enabled:=False;
      Label13.Enabled:=False;
      Label10.Enabled:=False;
      Label12.Enabled:=False;
      Label7.Enabled :=False;
      Label8.Enabled :=False;
      Label9.Enabled :=False;
      Label11.Enabled:=False;
      NUMCHQ.Enabled :=False;
      BANCO.Enabled  :=False;
      SERIE.Enabled  :=False;
      AGENCIA.Enabled:=False;
      CONTA.Enabled  :=False;
      DTDEP.Enabled  :=False;
      EMITENTE.Enabled:=False;
      CPF.Enabled    :=False;
      RG.Enabled     :=False;
      DTNAS.Enabled  :=False;
      COMP.Enabled   :=false;
      LComp.Enabled  :=false;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :='';
      EMITENTE.Text  :='';
      CPF.Text       :='';
      RG.Text        :='';
      DTNAS.Text     :='';
      VALOR.SetFocus;
      end;
   end;
end;

procedure TFrm_AcCP.BitBtn4Click(Sender: TObject);
var
mens: String;
begin

mqtd:=STG_CHQ.Row;
if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
   exit;
mens:='Quer realmente excluir a a forma de pagamento: '+STG_CHQ.Cells[mchq_nomfp,mqtd]+chr(13)
     +' Valor: '+STG_CHQ.Cells[mchq_valor,mqtd];
if fmensagem(mens,0,['1','2'],2)=mryes then
   begin
   if STG_CHQ.RowCount=2 then
      STG_CHQ.Rows[1].Clear
   else
      begin
      for mqtd:=STG_CHQ.Row to STG_CHQ.RowCount do
         begin
         STG_CHQ.Cells[mchq_nomfp,mqtd]:=STG_CHQ.Cells[mchq_nomfp,mqtd+1];
         STG_CHQ.Cells[mchq_numchq,mqtd]:=STG_CHQ.Cells[mchq_numchq,mqtd+1];
         STG_CHQ.Cells[mchq_banco,mqtd]:=STG_CHQ.Cells[mchq_banco,mqtd+1];
         STG_CHQ.Cells[mchq_serie,mqtd]:=STG_CHQ.Cells[mchq_serie,mqtd+1];
         STG_CHQ.Cells[mchq_agencia,mqtd]:=STG_CHQ.Cells[mchq_agencia,mqtd+1];
         STG_CHQ.Cells[mchq_emitente,mqtd]:=STG_CHQ.Cells[mchq_emitente,mqtd+1];
         STG_CHQ.Cells[mchq_valor,mqtd]:=STG_CHQ.Cells[mchq_valor,mqtd+1];
         STG_CHQ.Cells[mchq_cpf,mqtd]:=STG_CHQ.Cells[mchq_cpf,mqtd+1];
         STG_CHQ.Cells[mchq_rg,mqtd]:=STG_CHQ.Cells[mchq_rg,mqtd+1];
         STG_CHQ.Cells[mchq_cc,mqtd]:=STG_CHQ.Cells[mchq_cc,mqtd+1];
         STG_CHQ.Cells[mchq_dtnas,mqtd]:=STG_CHQ.Cells[mchq_dtnas,mqtd+1];
         STG_CHQ.Cells[mchq_codfor,mqtd]:=STG_CHQ.Cells[mchq_codfor,mqtd+1];
         STG_CHQ.Cells[mchq_dtemis,mqtd]:=STG_CHQ.Cells[mchq_dtemis,mqtd+1];
         STG_CHQ.Cells[mchq_dtdep,mqtd]:=STG_CHQ.Cells[mchq_dtdep,mqtd+1];
         STG_CHQ.Cells[mchq_forma,mqtd]:=STG_CHQ.Cells[mchq_forma,mqtd+1];
         STG_CHQ.Cells[mchq_dtcx,mqtd]:=STG_CHQ.Cells[mchq_dtcx,mqtd+1];
         STG_CHQ.Cells[mchq_compens,mqtd]:=STG_CHQ.Cells[mchq_compens,mqtd+1];
         STG_CHQ.Cells[mchq_data_tit,mqtd]:=STG_CHQ.Cells[mchq_data_tit,mqtd+1];
         STG_CHQ.Cells[mchq_codcai,mqtd]:=STG_CHQ.Cells[mchq_codcai,mqtd+1];
         STG_CHQ.Cells[mchq_nomcai,mqtd]:=STG_CHQ.Cells[mchq_nomcai,mqtd+1];
         STG_CHQ.Cells[mchq_ch_terc,mqtd]:=STG_CHQ.Cells[mchq_ch_terc,mqtd+1];
         STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtd]:=STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtd+1];
         STG_CHQ.Cells[mchq_vinc_fp,mqtd]:=STG_CHQ.Cells[mchq_vinc_fp,mqtd+1];
         STG_CHQ.Cells[mchq_banco_ori,mqtd]:=STG_CHQ.Cells[mchq_banco_ori,mqtd+1];
         STG_CHQ.Cells[mchq_codldr_ori,mqtd]:=STG_CHQ.Cells[mchq_codldr_ori,mqtd+1];

         STG_CHQ.Cells[mchq_dev_codemp,mqtd]:=STG_CHQ.Cells[mchq_dev_codemp,mqtd+1];
         STG_CHQ.Cells[mchq_dev_codecf,mqtd]:=STG_CHQ.Cells[mchq_dev_codecf,mqtd+1];
         STG_CHQ.Cells[mchq_dev_desd,mqtd]  :=STG_CHQ.Cells[mchq_dev_desd,mqtd+1];
         STG_CHQ.Cells[mchq_dev_dtemis,mqtd]:=STG_CHQ.Cells[mchq_dev_dtemis,mqtd+1];
         STG_CHQ.Cells[mchq_dev_dup,mqtd]   :=STG_CHQ.Cells[mchq_dev_dup,mqtd+1];
         STG_CHQ.Cells[mchq_dev_codfor,mqtd]   :=STG_CHQ.Cells[mchq_dev_codfor,mqtd+1];

         STG_CHQ.Cells[mchq_dev_dup_chave,mqtd]   :=STG_CHQ.Cells[mchq_dev_dup_chave,mqtd+1];
         STG_CHQ.Cells[mchq_dev_dup_chave_ano,mqtd]   :=STG_CHQ.Cells[mchq_dev_dup_chave_ano,mqtd+1];

         end;
      end;
   STG_CHQ.RowCount:=STG_CHQ.RowCount-1;
   end;
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));
HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCP.BitBtn5Click(Sender: TObject);
var
mqtdchq: Integer;
mtotdup, mtotpag: Real;
mseq: Real;
mnome,mdup: String;
mndup: Real;

begin
mtotdup:=0;
mtotpag:=0;
if Trim(STG_DS.Cells[mds_nomfor,01])='' then
   begin
   fmensagem('Não ha Duplicatas Selecionada para Baixa!',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
for mqtd:=1 to STG_DS.RowCount do
   begin
//   if STG_DS.Cells[mds_codfor,mqtd]='5' then
//      mtotdup:=mtotdup+ValFloat(STG_DS.Cells[mds_valrec,mqtd])
//   else
      mtotdup:=mtotdup+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
   end;

for mqtd:=1 to STG_CHQ.RowCount do
   begin
   DM1.Qr_Fp.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=0 then
      mtotpag:=mtotpag+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
   else
      mtotpag:=mtotpag-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
   end;
mtotpag:=Arredonda(mtotpag,2);
mtotdup:=Arredonda(mtotdup,2);

if mtotdup<>mtotpag then
   begin
   fmensagem('Total da(s) Duplicata(s).. '+FormatFloat('#####0.00',mtotdup)+#13
              +'Total do(s) Pagamento(s).. '+FormatFloat('#####0.00',mtotpag)+#13
              +'Favor Corrigir!',0,['0'],0);
   exit;
   end;

if fmensagem('Confirma a Baixa da(s) Duplicata(s) Acima?',0,['1','2'],2)=mrYes then
   begin

// inicio dos teste

   for mqtd:=1 to STG_DS.RowCount DO
      begin
      if (STG_DS.Cells[mds_nomfor,mqtd])='' then
         continue;
{      sHOWmESSAGE('STG11: '+STG_DS.Cells[mds_codemp,mqtd]
                 +#13+' STG01: '+STG_DS.Cells[mds_numdup,mqtd]
                 +#13+' STG02: '+STG_DS.Cells[mds_parc,mqtd]
                 +#13+' STG03: '+STG_DS.Cells[mds_codfor,mqtd]
                 +#13+' STG09: '+STG_DS.Cells[mds_dtemis,mqtd]
                 +#13+' STG14: '+STG_DS.Cells[14,mqtd]);
}
      if not flcaddap(6,valint(STG_DS.Cells[mds_codemp,mqtd]),0
             ,trim(STG_DS.Cells[mds_numdup,mqtd]),trim(STG_DS.Cells[mds_parc,mqtd])
             ,trim(STG_DS.Cells[mds_codfor,mqtd]),trim(STG_DS.Cells[mds_dtemis,mqtd])
             ,trim(STG_DS.Cells[mds_dup,mqtd]),'') then
         begin
         fmensagem('No Decorrer da Baixa foi Excluido um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_parc,mqtd])+#13
                   +'Baixa não Concluida!',0
                   ,['0'],0);
         exit;
         end
      else
         begin
         if DM1.Tb_CPCASTATUS.Value=8 then
            begin
            fmensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_parc,mqtd])+#13
                   +'Baixa não Concluida!',0
                   ,['0'],0);
            exit;
            end;

         if Arredonda( (
                         DM1.Tb_CPCAVALPAG.Value+ValFloat(STG_DS.Cells[mds_valrec,mqtd])
                        +DM1.Tb_CPCADESC.Value+ValFloat(STG_DS.Cells[mds_valdes,mqtd])
                      -(DM1.Tb_CPCAJUROS.Value+ValFloat(STG_DS.Cells[mds_valjur,mqtd]))
                        ),2)>Arredonda((DM1.Tb_CPCAVALOR.Value) ,2) then
            begin
            fmensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                   +'Número: '+trim(STG_DS.Cells[mds_numdup,mqtd])+'/'+trim(STG_DS.Cells[mds_parc,mqtd])+#13
                   +'Numero: '+DM1.Tb_CPCANUMERO.AsString+' /'+DM1.Tb_CPCADESD.AsString+'/'+DM1.Tb_CPCACODFOR.AsString
                   +'Baixa não Concluida!',0
                   ,['0'],0);
            fmensagem(DM1.Tb_CPCAVALPAG.AsString+' /'+STG_DS.Cells[mds_valrec,mqtd]+#13
                       +DM1.Tb_CPCADESC.AsSTring+' /'+STG_DS.Cells[mds_valdes,mqtd]+#13
                       +DM1.Tb_CPCAJUROS.AsString+'/'+STG_DS.Cells[mds_valjur,mqtd]+#13
                       +DM1.Tb_CPCAVALOR.asstring,0,['0'],0);

            exit;
            end;
         end;
      end;
   for mqtd:=1 to STG_CHQ.RowCount do
      begin
      if valint(STG_CHQ.Cells[mchq_vinc_fp,mqtd])<>18 then
         continue;

      NUMCHQ.Text  :=STG_CHQ.Cells[mchq_numchq,mqtd];
      BANCO.Text   :=STG_CHQ.Cells[mchq_banco,mqtd];
      SERIE.Text   :=STG_CHQ.Cells[mchq_serie,mqtd];
      AGENCIA.Text :=STG_CHQ.Cells[mchq_agencia,mqtd];
      CONTA.Text   :=STG_CHQ.Cells[mchq_cc,mqtd];
      COMP.Text    :=STG_CHQ.Cells[mchq_compens,mqtd];
      VALOR.Text   :=STG_CHQ.Cells[mchq_valor,mqtd];
      mChT_Codemp  :=ValFloat(STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtd]); // Codigo da empresa do Cheque de terceiros

      if not fTestaDadosCheques(5) then
         begin
         NUMCHQ.Text  :='';
         BANCO.Text   :='';
         SERIE.Text   :='';
         AGENCIA.Text :='';
         CONTA.Text   :='';
         COMP.Text    :='';
         VALOR.Text   :='';

         fmensagem('No Decorrer desta baixa foi baixado ou excluido um Cheque de Terceiro.'+#13
                   +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_banco,mqtd])+#13
                   +'Emitente: '+STG_CHQ.Cells[mchq_emitente,mqtd]
                   +'Baixa não Concluida!',0
                   ,['0'],0);
         exit;
         end;
      NUMCHQ.Text  :='';
      BANCO.Text   :='';
      SERIE.Text   :='';
      AGENCIA.Text :='';
      CONTA.Text   :='';
      COMP.Text    :='';
      VALOR.Text   :='';
      end;


// termino dos testes


// inicio das devoluçoes

   for mqtd:=1 to STG_CHQ.RowCount DO
      begin
      if (STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      if fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtd])=0 then
         continue;

      if not flcaddap(6,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtd]),
          0,trim(STG_CHQ.Cells[mchq_numchq,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_codfor,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_dtemis,mqtd]),trim(STG_CHQ.Cells[mchq_dev_dup,mqtd]),'') then

         begin
         fMensagem('No Decorrer da Baixa foi Excluido um titulo de Devolução .'+#13
                   +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
         exit;
         end
      else
         begin
         if DM1.Tb_CPCASTATUS.Value=8 then
            begin
            fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                      +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
            exit;
            end;
         if Arredonda( (
                         DM1.Tb_CPCAVALPAG.Value+
                         valfloat(STG_CHQ.Cells[mchq_valor,mqtd])
                        -(DM1.Tb_CPCAJUROS.Value+DM1.Tb_CPCADESC.Value)
                        ),2)>Arredonda((DM1.Tb_CPCAVALOR.Value),2) then
            begin
            fMensagem('No Decorrer desta baixa foi baixado um titulo.'+#13
                      +'Número: '+trim(STG_CHQ.Cells[mchq_numchq,mqtd])+'/'+trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])+#13
                   +'Baixa não Concluida!',0,['0'],0);
            exit;
            end;
         end;
      end;

// testa devoluções

//termino

   mdup:='';
   mloteBx:=fbuscaLoteBaixaCP(0);
   for mqtd:=1 to STG_DS.RowCount DO
      begin
      if (STG_DS.Cells[mds_nomfor,mqtd])='' then
         continue;
      mseq:=fbuscacodigofpcpdup(0);
      if length(Trim(STG_DS.Cells[mds_numdup,mqtd]))>10 then
         mndup:=ValFloat(copy(Trim(STG_DS.Cells[mds_numdup,mqtd]),1,10))
      else
         mndup:=Valfloat(STG_DS.Cells[mds_numdup,mqtd]);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Insert into FPCPDUP ('
                        +' FPCODEMP,'
                        +' FPLOTSEQ, '
                        +' FPSEQ, '
                        +' FPLOTE,'
                        +' FPNUMERO,'
                        +' FPDESD,'
                        +' FPCODFOR,'
                        +' FPDTEMIS,'
                        +' FPTIPO,'
                        +' FPCAIXA,'
                        +' FPCODUSR,'
                        +' FPVALOR,'
                        +' FPDESC,'
                        +' FPJUROS,'
                        +' FPLEMAT,'
                        +' FPDUP_CODEMP,'
                        +' FPDUP_VALOR,'
                        +' FPNR,'
                        +' FPDUP_DTVCTO'
                        +' ,FPDUP_CHAVE_ID'
                        +' ,FPDUP_CHAVE_ID_ANO'


                        +' ) Values ('
                        +IntToStr(codemp)+','
                        +IntToStr(ls_lotbcp)+','
                        +FloatToStr(mseq)+','
                        +FloatToStr(mloteBx)+','
                        +FloatToStr(mndup)+','
                        +chr(39)+Trim(STG_DS.Cells[mds_parc,mqtd])+chr(39)+','
                        +Trim(STG_DS.Cells[mds_codfor,mqtd])+','
                        +chr(39)+FormatDateTime(fdt,StrTodate(STG_DS.Cells[mds_dtemis,mqtd]))+chr(39)+','
                        +Trim('0'+STG_DS.Cells[mds_dup,mqtd])+',' // TIPO DO DOCUMENTO
                        +fdeixanum(STG_CHQ.Cells[mchq_codcai,01])+',' //        IntToStr(codcai)+','
                        +intTostr(codusr)+','
                        +mudavp('0'+trim(STG_DS.Cells[mds_valrec,mqtd]))+',' // valor
                        +mudavp('0'+trim(STG_DS.Cells[mds_valdes,mqtd]))+',' // desconto
                        +mudavp('0'+trim(STG_DS.Cells[mds_valjur,mqtd]))+',' // juros
                        +'0' // LOTE DE envio
                        +','+fdeixanum(STG_DS.Cells[mds_codemp,mqtd]) // codigo da empresa duip
                        +','+mudavp('0'+trim(STG_DS.Cells[mds_dup,mqtd])) // valor do titulo
                        +','+fdeixanum(NR.Text) // numero da nota de recebimento
                        +','+chr(39)+FormatDateTime(fdt,StrTodate(STG_DS.Cells[mds_dtvcto,mqtd]))+chr(39) // DAATA DE VENCIMENTO
                        +' ,'+STG_DS.Cells[mds_chave_id,mqtd]
                        +' ,'+STG_DS.Cells[mds_chave_id_ano,mqtd]

                        +')');
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(dm1.QUERY1,968,'func Erro:'+e.Message ,'CADEST');
         end;





      if flcaddap(6,valint(STG_DS.Cells[mds_codemp,mqtd]),0,trim(STG_DS.Cells[mds_numdup,mqtd]),trim(STG_DS.Cells[mds_parc,mqtd]),trim(STG_DS.Cells[mds_codfor,mqtd]),trim(STG_DS.Cells[mds_dtemis,mqtd]),trim(STG_DS.Cells[mds_dup,mqtd]),'') then
         begin
// inicio
         if DM4.Tb_Par01PCXAUTO.Value<>1 then
            begin
            if DM1.Tb_ForFCODFOR.Value<>DM1.Tb_CPCACODFOR.Value then
               flcadfor(1,0,DM1.Tb_CPCACODFOR.AsString);
            if DM1.Tb_CPCADUP.AsInteger=5 then
               begin
               if DM1.Tb_CPCACHAVEP.AsFloat>0 then
                  flparldr(0,'CADDAPD')
               else if not flparldr(0,'CADDAPN') then
                  flparldr(0,'CADDAPD');


               if (trim(DM1.Tb_CPCADESCMV.Value)<>'') or
                  (trim(DM1.Tb_CPCADESCMV.Value)<>'_') then
                  mdesc_mov:=DM1.Tb_CPCADESCMV.Value
               else if ( (trim(DM1.Tb_ForFDESCMVC.AsString)<>'') and
                          (trim(DM1.Tb_ForFDESCMVC.AsString)<>'_') ) then
                  mdesc_mov:=DM1.Tb_ForFDESCMVC.AsString
               else
                  mdesc_mov:=DM1.Par_LDRNOME.Value;
               if (trim(DM1.Tb_CPCACODCC.Value)<>'') and
                  (trim(DM1.Tb_CPCACODCC.Value)<>'_') then
                  begin
                  mcodccu:=DM1.Tb_CPCACODCC.Value;
                  mnomccu:=DM1.Tb_CPCANOMCC.Value;
                  mnatdc :=DM1.Tb_CPCANATDC.Value;
                  end
               else if (Trim(DM1.Tb_ForFCODCCC.AsString)<>'') and
                       (Trim(DM1.Tb_ForFCODCCC.AsString)<>'_') then
                  begin
                  mcodccu :=DM1.Tb_ForFCODCCC.AsString;
                  mnomccu :=DM1.Tb_ForFNOMCCC.AsString;
                  mnatdc  :=DM1.Tb_ForFNOMCCC.Value;
                  if ((DM1.Tb_ForFNATDCC.AsString)='') or
                     ((DM1.Tb_ForFNATDCC.AsString)='_') then
                     mnatdc :='C'
                  else
                     mnatdc :=DM1.Tb_ForFNATDCC.AsString;
                  end
               else
                  begin
                  if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
                     begin
                     mnomccu:=DM1.Tb_CCUCCNOME.Value;
                     mcodccu:=DM1.Tb_CCUCCCODCCU.Value;
                     mnatdc:=DM1.Tb_CCUCCNAT.Value;
                     end
                  else
                     begin
                     mcodccu  :=pldr_codccu;
                     mnomccu  :=pldr_nomccu;
                     mnatdc   :=pldr_natdc;
                     end;
                  end;
               if (trim(DM1.Tb_CPCACODDEP.AsString)<>'') and
                  (trim(DM1.Tb_CPCACODDEP.AsString)<>'_') then
                  begin
                  mcoddep:=DM1.Tb_CPCACODDEP.Value;
                  mnomdep:=DM1.Tb_CPCANOMDEP.Value;
                  end
               else if (trim(DM1.Tb_ForFCODDEPC.AsString)<>'') and
                       (trim(DM1.Tb_ForFCODDEPC.AsString)<>'_') then
                  begin
                  mcoddep:=DM1.Tb_ForFCODDEPC.Value;
                  mnomdep:=DM1.Tb_ForFNOMDEPC.Value;
                  end
               else
                  begin
                  if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
                     begin
                     mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
                     mcoddep:=DM1.Tb_Dep_LdrDCODDEP.Value;
                     end
                  else
                     begin
                     mcoddep :=pldr_coddep;
                     mnomdep :=pldr_nomdep;
                     end;
                  end;
               end
            else
               begin
               if (trim(DM1.Tb_CPCADESCMV.Value)<>'') and
                  (trim(DM1.Tb_CPCADESCMV.Value)<>'_') then
                  mdesc_mov:=DM1.Tb_CPCADESCMV.Value
               else if (trim(DM1.Tb_ForFDESCMVD.AsString)='') or
                       (trim(DM1.Tb_ForFDESCMVD.AsString)='_') then
                  mdesc_mov:=pldr_descmov
               else
                  mdesc_mov:=DM1.Tb_ForFDESCMVD.Value;
               if (Trim(DM1.Tb_CPCACODCC.Value)<>'') and
                  (Trim(DM1.Tb_CPCACODCC.Value)<>'_') then
                  begin
                  mcodccu:=DM1.Tb_CPCACODCC.Value;
                  mnomccu:=DM1.Tb_CPCANOMCC.Value;
                  mnatdc :=DM1.Tb_CPCANATDC.Value;
                  end
               else if (Trim(DM1.Tb_ForFCODCCD.AsString)='') or
                       (Trim(DM1.Tb_ForFCODCCD.AsString)='_') then
                  begin
                  mcodccu :=pldr_codccu;
                  mnomccu :=pldr_nomccu;
                  mnatdc  :=pldr_natdc;
                  end
               else
                  begin
                  mcodccu :=DM1.Tb_ForFCODCCD.Value;
                  mnomccu :=DM1.Tb_ForFNOMCCD.Value;
                  if   (DM1.Tb_ForFNATDCD.AsString='') or
                       (DM1.Tb_ForFNATDCD.AsString='_')  then
                     mnatdc:='D'
                  else
                     mnatdc:=DM1.Tb_ForFNATDCD.AsString;
                  end;
               if (trim(DM1.Tb_CPCACODDEP.Value)<>'') and
                  (trim(DM1.Tb_CPCACODDEP.Value)<>'_') then
                  begin
                  mcoddep:=DM1.Tb_CPCACODDEP.Value;
                  mnomdep:=DM1.Tb_CPCANOMDEP.Value;
                  end
               else if (trim(DM1.Tb_ForFCODDEPD.AsString)='') or
                       (trim(DM1.Tb_ForFCODDEPD.AsString)='_') then
                  begin
                  mcoddep:=pldr_coddep;
                  mnomdep:=pldr_nomdep;
                  end
               else
                  begin
                  mcoddep:=DM1.Tb_ForFCODDEPD.Value;
                  mnomdep:=DM1.Tb_ForFNOMDEPD.Value;
                  end;
               end;
            end;
{         ShowMessage('Numero: '+DM1.Tb_CPCANUMERO.AsString
                    +chr(13)+'desd: '+DM1.Tb_CPCADESD.AsString
                    +chr(13)+'dup: '+DM1.Tb_CPCADUP.AsString
                    +chr(13)+'codfor: '+DM1.Tb_CPCACODFOR.AsString
                    +chr(13)+'DTEMIS: '+DM1.Tb_CPCADTEMIS.AsString
                    +chr(13)+'SEQ: '+DM1.Tb_CPCASEQ.AsString
                    +chr(13)+'codEMP: '+DM1.Tb_CPCACODEMP.AsString);
}
         DM1.Tb_CP.Edit;
         DM1.Tb_CPCAVALPAG.Value   :=DM1.Tb_CPCAVALPAG.Value+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
         DM1.Tb_CPCAJUROS.Value    :=DM1.Tb_CPCAJUROS.Value+ValFloat(STG_DS.Cells[mds_valjur,mqtd]);
         DM1.Tb_CPCADESC.Value     :=DM1.Tb_CPCADESC.Value+ValFloat(STG_DS.Cells[mds_valdes,mqtd]);
         DM1.Tb_CPCADTBX.Value     :=pdatasis;
         DM1.Tb_CPCAUSRBAI.Value   :=codusr;
         DM1.Tb_CPCALOTSEQ_LB.Value:=ls_lotbcp;
         DM1.Tb_CPCALOTE.Value     :=mloteBx;
         DM1.Tb_CPCADTPAG.Value    :=StrToDate(STG_DS.Cells[mds_dtpgto,mqtd]);
         DM1.Tb_CPCACODCTA.Value   :=valFloat(STG_CHQ.Cells[mchq_codcai,01]); // codcai;
         DM1.Tb_CPCACODCC.Value    :=mcodccu;
         DM1.Tb_CPCACODDEP.Value   :=mcoddep;
         DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
         DM1.Tb_CPCANOMCTA.Value   :=STG_CHQ.Cells[mchq_nomcai,01]; // pldr_nombco;
         DM1.Tb_CPCANOMCC.Value    :=mnomccu;
         DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
         DM1.Tb_CPCANATDC.Value    :=mnatdc;
         if mdup='' then begin
            mdup:= Copy(DM1.Tb_CPtipodoc.AsString,1,3)+'-'+FormatFloat('000000',DM1.Tb_CPCANUMERO.Value)
         end else if mqtd<3 then begin
            mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',DM1.Tb_CPCANUMERO.Value),4,3)
         end else
            mdup:=mdup+'/'+copy(FormatFloat('000000',DM1.Tb_CPCANUMERO.Value),4,3);
         if arredonda( ((DM1.Tb_CPCAVALPAG.Value+DM1.Tb_CPCADESC.Value) -   DM1.Tb_CPCAJUROS.Value),2)>=arredonda((DM1.Tb_CPCAVALOR.Value),2) then
            begin
            DM1.Tb_CPCASTATUS.Value:=2;
            if DM4.Tb_Par01PCXAUTO.Value<>1 then
               begin
               if DM1.Tb_CPCACODLDR.Value>0 then
                  begin
                  DM1.Query1.Close;
                  DM1.Query1.SQL.Clear;
                  DM1.Query1.SQl.Add('Delete from CADLDR ');
                  if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                     begin
                     DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                                       +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString)
                     end
                  else
                     begin
                     DM1.Query1.Sql.add(' where CODEMP=0'+DM1.Tb_CPCACODEMP.AsString
                                       +' and LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                                       +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
                     end;
                  Try
                     DM1.Query1.ExecSQL;
                     fdm1StartCommit;
                  except on e : exception do
                     ex_erroSql_Novo(dm1.QUERY1,968,'func Erro:'+e.Message ,'CADEST');
                     end;
                  DM1.Tb_CPCACODLDR.Value:=0;
                  end;
               end;
            end
         else
            begin
            DM1.Tb_CPCASTATUS.Value:=1;
            if DM4.Tb_Par01PCXAUTO.Value<>1 then
               begin
               if DM1.Tb_CPCACODLDR.Value>0 then
                  begin
                  DM1.Query1.Close;
                  DM1.Query1.SQL.Clear;
                  DM1.Query1.SQl.Add('Update CADLDR set VALORR='+mudavp(FloatTostr((DM1.Tb_CPCAVALOR.Value)-DM1.Tb_CPCAVALPAG.Value))
                                    +' ,VALORP='+mudavp(FloatTostr(DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCAVALPAG.Value)));
                  if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                     begin
                     DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                                       +' and   CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
                     end
                  else
                     DM1.Query1.Sql.add(' where CODEMP=0'+DM1.Tb_CPCACODEMP.AsString
                                       +' and LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                                       +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
                  Try
                     DM1.Query1.ExecSQL;
                     fdm1StartCommit;
                  except on e : exception do
                     ex_erroSql_Novo(dm1.QUERY1,605,'func Erro:'+e.Message ,'CADEST');
                     end;

                  end;
               end;
            end;
{         ShowMessage('Numero: '+DM1.Tb_CPCANUMERO.AsString
                    +chr(13)+'desd: '+DM1.Tb_CPCADESD.AsString
                    +chr(13)+'dup: '+DM1.Tb_CPCADUP.AsString
                    +chr(13)+'codfor: '+DM1.Tb_CPCACODFOR.AsString
                    +chr(13)+'DTEMIS: '+DM1.Tb_CPCADTEMIS.AsString
                    +chr(13)+'SEQ: '+DM1.Tb_CPCASEQ.AsString
                    +chr(13)+'codEMP: '+DM1.Tb_CPCACODEMP.AsString);

}

         DM1.Tb_CP.Post;
         end
      else
         begin
         fmensagem('Ha erros duplicata nao encontrada: '+STG_DS.Cells[mds_numdup,mqtd],0,['0'],0);
         Continue;
         end;
      end;
   for mqtdchq:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtdchq])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtdchq]),[]);

      if DM1.Qr_FPFPVINCULO.AsInteger=19 then
         fCreditaNC(mqtdchq);

      if DM1.Qr_FPFPVINCULO.AsInteger=7 then
        begin
        DM1.Tb_CP.Close;
        DM1.Tb_CP.SQL.Clear;
        DM1.Tb_CP.SQL.Add(' select CADDAP.*,CADDAP.ROWID AS IDDAP from caddap where canumero='+STG_CHQ.Cells[mchq_numchq,mqtdchq]);
        DM1.Tb_CP.SQL.Add(' and cacodfor='+STG_CHQ.Cells[mchq_codfor,mqtdchq]+' and cavalor='+chr(39)+floattostr(ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]))+chr(39)+' and cadup=5 ');
        DM1.Tb_CP.SQL.Add(' and cadtemis='+chr(39)+STG_CHQ.Cells[mchq_dtemis,mqtdchq]+chr(39));
        DM1.Tb_CP.Open;
        if not DM1.Tb_CP.IsEmpty then
          begin
          DM1.Query1.Close;
          DM1.Query1.SQL.Clear;
          DM1.Query1.SQL.Add(' DELETE FROM CADLDR WHERE CODLDR='+DM1.Tb_CPCACODLDR.AsString);
          DM1.Query1.SQL.Add(' AND CODEMP='+DM1.Tb_CPCACODEMP.AsString);
          DM1.Query1.ExecSQL;
          end
        else
          begin
          fmensagem('No decorrer da baixa não foi encontrada a nota de credito!',0,['0'],0);
          end;
        end;


      if DM1.Qr_FPFPTIPO.Value=1 then
         begin
         fTestarParCaixaCliDar(DM1.Tb_dar,0,1,'CADDAPT');
         mdesc_mov:=DM1.Par_LDRNOME.Value;
         mcodccu:=DM1.Par_LDRCODCC.Value;
         mcoddep:=DM1.Par_LDRCODDEP.Value;
         if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
            mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
         if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
            begin
            mnomccu:=DM1.Tb_CCUCCNOME.Value;
            mnatdc :=DM1.Tb_CCUCCNAT.Value;
            end
         else
            mnatdc :='C';

         end;

{
      if (DM4.Tb_Par01PCXAUTO.Value<>1) and
         (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>14) and
         (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>18) then
 }



      if  (DM4.Tb_Par01PCXAUTO.Value<>1) and
          ( (DM1.Qr_FPFPVINCULO.AsInteger<>19) and
             (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>18) ) then

//          and (fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq])=0) then
         begin
         DM1.Tb_LDR.Append;
         DM1.Tb_LDRCODEMP.Value  :=codemp;
//         DM1.Tb_LDRDATAREF.Value :=StrtoDate(STG_CHQ.Cells[mchq_data_tit,mqtdchq]);
         if (trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'/  /')
            and ( (DM1.Qr_FPFPVINCULO.AsInteger=1) or (DM1.Qr_FPFPVINCULO.AsInteger=14)) then
            begin
            DM1.Tb_LDRDATAREF.Value :=StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]);
            DM1.Tb_LDRDATADP.Value  :=StrtoDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]);
            DM1.Tb_LDRDATAREAL.Value:=StrtoDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]);
            end
         else
            begin
            DM1.Tb_LDRDATAREF.Value :=StrtoDate(STG_CHQ.Cells[mchq_data_tit,mqtdchq]);
            DM1.Tb_LDRDATADP.Value  :=StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]);
            DM1.Tb_LDRDATAREAL.Value:=StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]);
            end;


         DM1.Tb_LDRVALORP.Value  :=ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]); // valor
         DM1.Tb_LDRVALORR.Value  :=ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq]); // valor
         DM1.Tb_LDRCODBCO.Value  :=ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]); //  codcai;
         DM1.Tb_LDRNOMBCO.Value  :=STG_CHQ.Cells[mchq_nomcai,mqtdchq]; // pldr_nombco;

         DM1.Tb_LDRLOTMOV.Value  :=lotmov;
         DM1.Tb_LDRNATDC.Value   :=pldr_natdc;
         DM1.Tb_LDRNOMCCU.Value  :=pldr_nomccu;
         DM1.Tb_LDRCODCC.Value   :=pldr_codccu;
         if length(mdup)>12 then
            mdup:=copy(mdup,1,12);
         DM1.Tb_LDRNUMDOC.Value  :=mdup;
         DM1.Tb_LDRNUMDOC2.Value :=STG_CHQ.Cells[mchq_nomfp,mqtdchq];
         DM1.Tb_LDRSTATUS.Value:=0;
         DM1.Tb_LDRORIGEM.Value:=03;
         DM1.Tb_LDRTIPO.Value  :='FR';
         if mcompra then
            DM1.Tb_LDRLOCDEP.Value:=1
         else
            DM1.Tb_LDRLOCDEP.Value:=2;
         DM1.Tb_LDRCODIGO.Value:=Valfloat(STG_DS.Cells[mds_codfor,1]);
         DM1.Tb_LDRFC_OBSFIN.Value:=STG_DS.Cells[mds_obs,1]; //observação da duplicata
         DM1.Tb_LDRNOME.Value:=STG_DS.Cells[mds_nomfor,1];
         if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
            mnome:=trim(mdesc_mov)+' No.'+DM1.Tb_LDRNUMDOC.Value
         else
            mnome:=trim(mdesc_mov);
         mnome:=Trim(mnome)+'/'+DM1.Tb_LDRNOME.Value;
         if length(mnome)>50 then
            mnome:=copy(mnome,1,50);
         DM1.Tb_LDRDESCMV.Value  :=mnome;
         DM1.Tb_LDRCODCC.Value   :=mcodccu;
         DM1.Tb_LDRCODDEP.Value  :=mcoddep;
         DM1.Tb_LDRNOMDEP.Value  :=mnomdep;
         DM1.Tb_LDRNOMCCU.Value  :=mnomccu;
         DM1.Tb_LDRNATDC.Value   :=mnatdc;
         DM1.Tb_LDR.Post;
      end;




      mseq:=fbuscacodigofpcp(0);
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.Clear;

      DM1.Query1.Close;
      DM1.Query1.SQL.Add('Insert Into FPCP ('
                        +'FPCODEMP,'
                        +'FPLOTSEQ,'
                        +'FPSEQ,'
                        +'FPVALOR,'
                        +'FPLOTE,'
                        +'FPTIPO,'
                        +'FPCAIXA,'
                        +'FPDATA,'
                        +'FPDATDEP,'
                        +'FPSERIE,'
                        +'FPCC,'
                        +'FPFORMA,'
                        +'FPNUMERO,'
                        +'FPBANCO,'
                        +'FPCODLDR,'
                        +'FPLEMAT'
                        +',FPNATUREZA'
                        +',FPVINCULO'
                        +',FPNR'
                        +',FPDEV_CODEMP '
                        +',FPDEV_NUMERO '
                        +',FPDEV_DESD '
                        +',FPDEV_CODFOR '
                        +',DEV_FPDTEMIS '
                        +',DEV_FPTIPO '
                        +',FPCHT_CODEMP'
                        +',FPCHT_CHAVE '
                        +',FPDATHOR_EVE '
                        +',FPDEV_DUP_CHAVE_ID '
                        +',FPDEV_DUP_CHAVE_ID_ANO '


                        +') Values ('
                        +IntToStr(codemp)+','
                        +IntToStr(ls_lotbcp)+','
                        +FloatToStr(mseq)+','
                        +mudavp(Trim(STG_CHQ.Cells[mchq_valor,mqtdchq]))+',' // valor
                        +FloatToStr(mloteBx)+',' // lote
                        +'0'+',' // TIPO
                        +fdeixanum(STG_CHQ.Cells[mchq_codcai,mqtdchq])+',' //IntTostr(codcai)+','
                        +':DATA,'
                        +':DATDEP,'
                        +':SERIE,'
                        +':CC,'
                        +':FORMA,'
                        +':NUMERO,'
                        +':BANCO,'
                        +':CODLDR,'
                        +'0 ' //LOTE DE ENVIO
                        +','+DM1.Qr_FPFPTIPO.AsString
                        +','+DM1.Qr_FPFPVINCULO.AsString
                        +','+fdeixanum(NR.Text)
                        +','+fdeixanum(STG_CHQ.Cells[mchq_dev_codemp,mqtdchq]) // CODEMP DEV ORI
                        +','+fdeixanum(STG_CHQ.Cells[mchq_numchq,mqtdchq]) // NUMERO FPDEV_NUMERO '
                        +','+chr(39)+STG_CHQ.Cells[mchq_dev_desd,mqtdchq]+chr(39) // FPDEV_DESD '
                        +','+fdeixanum(STG_CHQ.Cells[mchq_dev_codfor,mqtdchq]) //FPDEV_CODFOR '
                        +',:DEV_DTEMIS' // DEV_FPDTEMIS '
                        +','+fdeixanum(STG_CHQ.Cells[mchq_dev_dup,mqtdchq]) // tipo
                        +','+fdeixanum(STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtdchq]) // CODIGO EMPRESA ORIGEM
                        +','+fdeixanum(STG_CHQ.Cells[mchq_ch_terc,mqtdchq]) //CHAVE ORIGEM TERCEIROS
                        +',:FPDATHOR_EVE '
                        +','+fdeixanum(STG_CHQ.Cells[mchq_dev_dup_chave,mqtdchq]) // CHAVE ORIGEM TERCEIROS
                        +','+fdeixanum(STG_CHQ.Cells[mchq_dev_dup_chave_ano,mqtdchq]) // CHAVE ORIGEM TERCEIROS


                        +')');
      DM1.Query1.ParambyName('DATA').AsString:=FormatDateTime(fdt,StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]));
      if (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'/  /') then
         DM1.Query1.ParambyName('DATDEP').AsString:=FormatDateTime(fdt,StrtoDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]))
      else
         DM1.Query1.ParambyName('DATDEP').AsString:=FormatDateTime(fdt,StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]));
      DM1.Query1.ParambyName('SERIE').AsString:=STG_CHQ.Cells[mchq_serie,mqtdchq]; // SERIE
      DM1.Query1.ParambyName('CC').AsString:=STG_CHQ.Cells[mchq_cc,mqtdchq]; // conta corrente
      DM1.Query1.ParambyName('FORMA').AsString:=STG_CHQ.Cells[mchq_forma,mqtdchq]; // FORMA
      DM1.Query1.ParambyName('NUMERO').AsFloat   :=fSonumero(STG_CHQ.Cells[mchq_numchq,mqtdchq]); // numero
      DM1.Query1.ParambyName('BANCO').AsFloat    :=fSonumero(STG_CHQ.Cells[mchq_banco,mqtdchq]); // banco
      if valint(STG_CHQ.Cells[mchq_dev_dtemis,mqtdchq])=0 then
         DM1.Query1.ParambyName('DEV_DTEMIS').AsString:=''
      else
         DM1.Query1.ParambyName('DEV_DTEMIS').AsDateTime:=StrTodate(STG_CHQ.Cells[mchq_dev_dtemis,mqtdchq]);

{      if (DM4.Tb_Par01PCXAUTO.Value<>1) and
         (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>14) and
         (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>18) then
 }
      if (DM4.Tb_Par01PCXAUTO.Value<>1) or
         (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>18) then
         DM1.Query1.parambyName('CODLDR').AsString:=DM1.Tb_LDRCODLDR.AsString
      else
         DM1.Query1.ParambyName('CODLDR').AsString:='0';
      DM1.Query1.ParambyName('FPDATHOR_EVE').AsDateTime:=Now;
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(dm1.QUERY1,1445,'func Erro:'+e.Message ,'CADEST');
         end;



      if (DM1.Qr_FPFPNUM.Value=1) then
         begin
         if (valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])<>18) then
            begin
            mseq:=fbuscacodigoChq_pe(0);
//            DM1.Query1.Params.Clear;
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
{
            DM1.Query1.Params.CreateParam(ftstring,'SERIE',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'EMIT',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'RG',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CC',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'DTNAS',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'DTEMIS',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'DTDEP',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'AGENCIA',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'COMP',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHCODBCO_DEB',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHCODCTA',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHNOMCTA',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHCODDEP',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHNOMDEP',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHCODCC',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHNOMCC',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHNATDC',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHDESCMV',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'CHCODLDR_DEB',ptinput);
            DM1.Query1.Params.CreateParam(ftstring,'STATUS',ptinput);
}

            DM1.Query1.SQL.Add('Insert into CADCHCP ('
                              +'CHCODEMP, '
                              +'CHLOTSEQ, '
                              +'CHSEQ, '
                              +'CHNUMERO, '
                              +'CHBANCO, '
                              +'CHCODFOR, '
                              +'CHCPF, '
                              +'CHVALOR, '
                              +'CHLOTE, '
                              +'CHTIPO, '
                              +'CHSTATUS,'
                              +'CHCAIXA,'
                              +'CHSERIE, '
                              +'CHEMIT, '
                              +'CHRG, '
                              +'CHCC, '
                              +'CHDTNAS, '
                              +'CHDTEMIS, '
                              +'CHDTDEP,'
                              +'CHAGENCIA,'
                              +'CHCOMP'
                              +',CHCODBCO_DEB '
                              +',CHCODCTA '
                              +',CHNOMCTA '
                              +',CHCODDEP '
                              +',CHNOMDEP '
                              +',CHCODCC '
                              +',CHNOMCC '
                              +',CHNATDC '
                              +',CHDESCMV '
                              +',CHCODLDR_DEB '
                              +',CHDATHOR_INC '
                              +',CHCODUSR_INC '
                              );
//            if valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])=1 then
//               begin
{               DM1.Query1.Params.CreateParam(ftstring,'LOTEBX',ptinput);
               DM1.Query1.Params.CreateParam(ftstring,'DTBX',ptinput);
               DM1.Query1.Params.CreateParam(ftstring,'STATUS',ptinput);
               DM1.Query1.Params.CreateParam(ftstring,'LOTSEQ_BT',ptinput);
               DM1.Query1.Params.CreateParam(ftstring,'LOTE_BT',ptinput);}
               DM1.Query1.SQL.Add(',CHLOTEBX');
               DM1.Query1.SQL.Add(',CHDTBX');

//               DM1.Query1.SQL.Add(',CHSTATUS');
               DM1.Query1.SQL.Add(',CHLOTSEQ_BT');
               DM1.Query1.SQL.Add(',CHLOTE_BT');
//               end;


            DM1.Query1.SQL.add(') Values ('
                              +IntToStr(codemp)+','
                              +IntToStr(ls_codchqemi)+','
                              +FloatToStr(mseq)+','
                              +fdeixanum(STG_CHQ.Cells[mchq_numchq,mqtdchq])+',' // numero
                              +fdeixanum(STG_CHQ.Cells[mchq_banco,mqtdchq])+',' // banco
                              +fdeixanum(STG_CHQ.Cells[mchq_codfor,mqtdchq])+',' // codcli
                              +mudavp(FloatTostr(fsonumero(STG_CHQ.Cells[mchq_cpf,mqtdchq])))+',' // CPF
                              +mudavp('0'+FloattoStr(ValFloat(STG_CHQ.Cells[mchq_valor,mqtdchq])))+',' // valor
                              +Floattostr(mloteBx)+','
                              +'0'+',' // tipo
                              +':STATUS'+',' // status
                              +fdeixanum(STG_CHQ.Cells[mchq_codcai,mqtdchq])+','//  +IntTostr(codcai)+',' // caixa
                              +':SERIE, '
                              +':EMIT, '
                              +':RG, '
                              +':CC, '
                              +':DTNAS, '
                              +':DTEMIS, '
                              +':DTDEP, '
                              +':AGENCIA,'
                              +':COMP '
                              +',:CHCODBCO_DEB '
                              +',:CHCODCTA '
                              +',:CHNOMCTA '
                              +',:CHCODDEP '
                              +',:CHNOMDEP '
                              +',:CHCODCC '
                              +',:CHNOMCC '
                              +',:CHNATDC '
                              +',:CHDESCMV '
                              +',:CHCODLDR_DEB '
                              +',:CHDATHOR_INC '
                              +',:CHCODUSR_INC ' );

//            if valint(STG_CHQ.Cells[mchq_vinc_fp,mqtdchq])=1 then
//               begin
               DM1.Query1.SQL.Add(',:LOTEBX');
               DM1.Query1.SQL.Add(',:DTBX');
//               DM1.Query1.SQL.Add(',:STATUS');
               DM1.Query1.SQL.Add(',:LOTSEQ_BT');
               DM1.Query1.SQL.Add(',:LOTE_BT');

              DM1.Query1.ParamByName('STATUS').AsFloat :=0;
              DM1.Query1.parambyName('CHCODLDR_DEB').AsFloat  :=0;
              DM1.Query1.ParambyName('CHCODBCO_DEB').AsFloat  :=0;


               DM1.Query1.ParamByName('LOTEBX').AsFloat :=mloteBx;
               DM1.Query1.parambyName('CHCODLDR_DEB').AsString   :=DM1.Tb_LDRCODLDR.AsString;
               DM1.Query1.ParambyName('CHCODBCO_DEB').AsFloat:=ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]);


               if (Trim(STG_CHQ.Cells[mchq_dtcx,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtcx,mqtdchq])<>'/  /') then
                  DM1.Query1.ParambyName('DTBX').AsString  :=FormatDateTime(fdt,StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]))
               else
                  DM1.Query1.ParambyName('DTBX').AsDateTime:=pdatasis;

               DM1.Query1.ParamByName('STATUS').AsFloat :=2;
               DM1.Query1.ParamByName('LOTSEQ_BT').AsFloat:=ls_lotbcp;
               DM1.Query1.ParamByName('LOTE_BT').AsFloat  :=mloteBx;
 //              end;
            DM1.Query1.SQL.Add(')');
            DM1.Query1.ParambyName('SERIE').Asstring:=STG_CHQ.Cells[mchq_serie,mqtdchq]; // serie
            DM1.Query1.ParambyName('EMIT').AsString :=STG_CHQ.Cells[mchq_emitente,mqtdchq]; // emitente
            DM1.Query1.ParambyName('RG').AsString   :=STG_CHQ.Cells[mchq_rg,mqtdchq]; // rg
            DM1.Query1.ParambyName('CC').AsString   :=STG_CHQ.Cells[mchq_cc,mqtdchq]; // cc lindomar
            if (Trim(STG_CHQ.Cells[mchq_dtnas,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtnas,mqtdchq])<>'/  /') then
               DM1.Query1.ParamByName('DTNAS').AsString:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_dtnas,mqtdchq]))
            else
               DM1.Query1.ParamByName('DTNAS').AsString:='';
            if (Trim(STG_CHQ.Cells[mchq_dtemis,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtemis,mqtdchq])<>'/  /') then
               DM1.Query1.ParamByName('DTEMIS').AsString:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_dtemis,mqtdchq]));
            if (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtdep,mqtdchq])<>'/  /') then
               DM1.Query1.ParamByName('DTDEP').AsString:=FormatDatetime(fdt, StrtoDate(STG_CHQ.Cells[mchq_dtdep,mqtdchq]));
            DM1.Query1.ParambyName('AGENCIA').AsString:=STG_CHQ.Cells[mchq_agencia,mqtdchq]; // aGENCIA
            DM1.Query1.ParambyName('COMP').AsString:=STG_CHQ.Cells[mchq_compens,mqtdchq]; // aGENCIA

            DM1.Query1.ParambyName('CHCODCTA').AsFloat    :=ValFloat(STG_CHQ.Cells[mchq_codcai,mqtdchq]);
            DM1.Query1.ParambyName('CHNOMCTA').AsString   :=STG_CHQ.Cells[mchq_nomcai,mqtdchq];
            DM1.Query1.ParambyName('CHCODDEP').AsString   :=mcoddep;
            DM1.Query1.ParambyName('CHNOMDEP').AsString   :=mnomdep;
            DM1.Query1.ParambyName('CHCODCC').AsString    :=mcodccu;
            DM1.Query1.ParambyName('CHNOMCC').AsString    :=mnomccu;
            DM1.Query1.ParambyName('CHNATDC').AsString    :=mnatdc;
            DM1.Query1.ParambyName('CHDESCMV').AsString   :=mdesc_mov;

            DM1.Query1.ParambyName('CHDATHOR_INC').AsDateTime    :=Now;
            DM1.Query1.ParambyName('CHCODUSR_INC').AsFloat       :=codusr;

            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except on e : exception do
               ex_erroSql_Novo(dm1.QUERY1,878,'func Erro:'+e.Message ,'CADEST');
               end;

            end
         else
            begin
            fDebitaChqTerc(mqtdchq);

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;

//            DM1.Query1.Params.CreateParam(ftString,'LOTE',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'LOTEBX',ptinput);
            DM1.Query1.Params.CreateParam(ftString,'DTBX',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'STATUS',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'LOTSEQ_BT',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'LOTE_BT',ptInput);


            DM1.Query1.Params.CreateParam(ftString,'CODLDR_DEB',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'CODBCO_DEB',ptInput);

            DM1.Query1.SQL.Add('Update CADCHQ set '
                              +'  CHLOTEBX   =:LOTEBX '
//                              +' ,CHLOTE     =:LOTE '
                              +' ,CHDTBX      =:DTBX '
                              +' ,CHSTATUS    =:STATUS '
                              +' ,CHLOTSEQ_BT =:LOTSEQ_BT '
                              +' ,CHLOTE_BT   =:LOTE_BT '
                              +' ,CHCODLDR_DEB=:CODLDR_DEB '
                              +' ,CHCODBCO_DEB=:CODBCO_DEB '
//                              +' ,CHLOTE_BT  =:LOTE_BT '
                              +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CHCODEMP=0'+fdeixanum(STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtdchq])+' and ')
                              +' CHSEQ=0'+fdeixanum(STG_CHQ.Cells[mchq_ch_terc,mqtdchq]));


//            DM1.Query1.ParamByName('LOTE').AsFloat  :=mloteBx;
            DM1.Query1.ParamByName('LOTEBX').AsFloat:=mloteBx;

            if (Trim(STG_CHQ.Cells[mchq_dtcx,mqtdchq])<>'') and (Trim(STG_CHQ.Cells[mchq_dtcx,mqtdchq])<>'/  /') then
               DM1.Query1.ParambyName('DTBX').AsString  :=FormatDateTime(fdt,StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtdchq]))
            else
               DM1.Query1.ParambyName('DTBX').AsDateTime:=pdatasis;
            DM1.Query1.ParamByName('STATUS').AsFloat :=2;
            DM1.Query1.ParamByName('LOTSEQ_BT').AsFloat:=ls_lotbcp;
            DM1.Query1.ParamByName('LOTE_BT').AsFloat  :=mlotebx;

            DM1.Query1.parambyName('CODLDR_DEB').AsFloat  :=mCodLdr;
            DM1.Query1.ParambyName('CODBCO_DEB').AsFloat  :=ValFloat(STG_CHQ.Cells[mchq_codldr_ori,mqtdchq]);

            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except on e : exception do
               ex_erroSql_Novo(dm1.QUERY1,660,'func Erro:'+e.Message ,'CADEST');
               end;
            end;
         end;
      end;

   for mqtd:=1 to STG_CHQ.RowCount DO
      begin
      if (STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      if fsonumero(STG_CHQ.Cells[mchq_dev_codemp,mqtd])=0 then
         continue;

      if flcaddap(6,valint(STG_CHQ.Cells[mchq_dev_codemp,mqtd]),
          0,trim(STG_CHQ.Cells[mchq_numchq,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_desd,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_codfor,mqtd])
          ,trim(STG_CHQ.Cells[mchq_dev_dtemis,mqtd]),trim(STG_CHQ.Cells[mchq_dev_dup,mqtd]),'') then
         begin
         if Frm_BDev_for=nil then
            Application.CreateForm(TFrm_BDev_for, Frm_BDev_for)
         else
            begin
            Frm_BDev_for.Free;
            Frm_BDev_for:=nil;
            Application.CreateForm(TFrm_BDev_for, Frm_BDev_for);
            end;
         fBaixarDevolucao(0,0,ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]),
                              Valint(STG_CHQ.Cells[mchq_codcai,mqtd]), // codcai, // codigo do caixa
                              StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtd]),
                              StrtoDate(STG_CHQ.Cells[mchq_dtcx,mqtd]));

         Frm_BDev_for.Free;
         Frm_BDev_for:=nil;
         end;
      end;

//falta bdev
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   fmensagem('Duplicata(s) Baixado(s)! Lote: '+FloatToStr(mloteBx),0,['0'],0);
   BBCancelar.Click;
   end;
end;

procedure TFrm_AcCP.NUMCHQKeyPress(Sender: TObject; var Key: Char);
begin
if (length(NUMCHQ.Text)>9) and (key<>#8) then
   key:=#0
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_AcCP.NUMCHQExit(Sender: TObject);
begin
if (BBSair.Focused) OR (BBCancelar.Focused) OR (MCODCAI.Focused) then
   EXIT;

NUMCHQ.Text:=fdeixanum(NUMCHQ.Text);
if Length(NUMCHQ.Text)>10 then
   NUMCHQ.Text:=copy(NUMCHQ.Text,1,10);

if not (BBSair.Focused) and not (BBCancelar.Focused) and not (MCODCAI.Focused) then
   begin
   if not fTestaTam(0,10,NUMCHQ.Text,'') then
      begin
      NUMCHQ.SetFocus;
      exit;
      end;

   if ValFloat(NUMCHQ.Text)<=0 then
      begin
      fmensagem('Numero do Cheque Campo Obrigatorio!',0,['0'],0);
      NUMCHQ.SetFocus;
      end
   else
      st_leitor.Visible:=false;
   end
else
   st_leitor.Visible:=false;
if (DM1.Qr_FPFPVINCULO.AsInteger=18) and (ValFloat(NUMCHQ.Text)<>0) and (mValidaNumero) then
   fTestaDadosCheques(0)
else if (DM1.Qr_FPFPVINCULO.AsInteger=7) and (ValFloat(NUMCHQ.Text)<>0)  then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('   Select CACODEMP,CACHAVEP '
                     +'   ,CACODFOR,CAVALOR,CAVALPAG, '
                     +'             CADTEMIS,CANUMERO,CADESD,CADUP '
                     +',CACHAVE_ID_ANO,CACHAVE_ID'
                     +'             from CADDAP where '
                     +la_empresas
                     +iif(la_empresas='','',' and ')
                     +' CASTATUS < 2 '
                     +' AND CADUP=5 '
                     +' AND CACODFOR=0'+fdeixanum2(CODFOR.Text));
   DM1.Query2.Open;
   mboolean:=false;
   While not DM1.Query2.Eof do
      begin
      if DM1.Query2.FieldByName('CANUMERO').AsFloat=fsonumero(NUMCHQ.Text) then
         begin
         mboolean:=true;
         break;
         end;
      DM1.Query2.Next;
      end;
   if mboolean then
      begin
      mdev_Codemp:=DM1.Query2.fieldbyName('CACODEMP').AsFloat;
      mDev_Desd  :=DM1.Query2.fieldbyName('CADESD').AsString;
      mDev_Dtemis:=DM1.Query2.fieldbyName('CADTEMIS').AsDateTime;
      mDev_Dup   :=DM1.Query2.fieldbyName('CADUP').AsFloat;
      mDev_Codfor:=DM1.Query2.fieldbyName('CACODFOR').AsFloat;
      mDev_dup_chave:=DM1.Query2.fieldbyName('CACHAVE_ID').AsFloat;
      mDev_dup_chave_ano:=DM1.Query2.fieldbyName('CACHAVE_ID_ANO').AsFloat;




{      if (DM1.Query2.fieldbyName('CAVALOR').AsFloat-DM1.Query2.fieldbyName('CAVALPAG').AsFloat) >
         (ValFloat(HC_cheques.Sections.Items[4].Text)) then
         VALOR.Text:=HC_cheques.Sections.Items[4].Text
      else}
      VALOR.Text :=FormatFloat(mcasas,DM1.Query2.fieldbyName('CAVALOR').AsFloat-DM1.Query2.fieldbyName('CAVALPAG').AsFloat);
      VALOR.Update;
      end
   else
      begin
      fMensagem('Devolução não Encontrada!',0,['0'],0);
      VALOR.Text :=FormatFloat(mcasas,0);
      end;
   end;





end;

procedure TFrm_AcCP.VALORKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;
end;

procedure TFrm_AcCP.VALORExit(Sender: TObject);
begin
if not (BBSair.Focused) and not (BBCancelar.Focused) then
   begin
   if not fTestaTam(2,14,VALOR.Text,'') then
      VALOR.SetFocus;
   valor.Text:=FormatFloat('#####0.00',ValFloat(VALOR.Text));
   end;
end;

procedure TFrm_AcCP.DTDEPExit(Sender: TObject);
begin
if Trim(DTDEP.Text)='/  /' then
   begin
   fmensagem('Preenchimento Obrigatório!',0,['0'],0);
   DTDEP.SetFocus;
   end
else
   DTDEP.Text:=FormatDateTime(fdt2,StrToDate(DTDEP.Text));

end;

procedure TFrm_AcCP.DTNASExit(Sender: TObject);
begin
if Trim(DTNAS.Text)<>'/  /' then
   DTNAS.Text:=FormatDateTime(fdt2,StrToDate(DTNAS.Text));
end;

procedure TFrm_AcCP.BBSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AcCP.bbLancar_formaClick(Sender: TObject);
var
x: Integer;
begin
if ValFloat(VALOR.Text)<=0 then
   begin
   fmensagem('Campo com Preenchimento Obrigatório!',0,['0'],0);
   VALOR.Setfocus;
   exit;
   end;

if Trim(DATACX.Text)='/  /' then
   DATACX.Text:=FormatDateTime(fdt2, pdatasis);
if ValInt(MCODCAI.Text)=0 then
   begin
   MCODCAI.Text    :=MCODCAI_PAD.Text;
   MNOMCAI_PAD.Text:=MNOMCAI_PAD.Text;
   end;

if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
   begin
   if StrToDate(DATACX.Text)<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
      begin
      fmensagem('Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
       exit;
       end;
   end;


if (DM1.Qr_FPFPVINCULO.AsInteger=18) then
   begin
   for x:=1 to STG_CHQ.RowCount-1 do
      begin
      if fsonumero(STG_CHQ.Cells[mchq_numchq,x])<>DM1.Qr_FPFPVINCULO.AsFloat then
         Continue;
      if (fsonumero(STG_CHQ.Cells[mchq_emp_ori_ch_terc,x])=mChT_Codemp) and
         (fsonumero(STG_CHQ.Cells[mchq_ch_terc,x])=mChT_Chave)  then
         begin
         if mValidaNumero then
            begin
            fmensagem('O Cheque de Terceiro Numero: '+NUMCHQ.Text+' Valor: '+VALOR.Text+' Emitente: '+EMITENTE.Text
                     +' ja foi Utilizado!',0,['0'],0);
            NUMCHQ.SetFocus;
            exit;
            end
         else
            begin
            NUMCHQ.Text    :='';
            BANCO.Text     :='';
            SERIE.Text     :='';
            AGENCIA.Text   :='';
            CONTA.Text     :='';
            DTDEP.Text     :='';
            EMITENTE.Text  :='';
            CPF.Text       :='';
            RG.Text        :='';
            DTNAS.Text     :='';
            VALOR.Text     :='';
            exit;
            end;
         end;
      end;
   end
else if (DM1.Qr_FPFPVINCULO.AsInteger=7) then
   begin
   if (ValFloat(NUMCHQ.Text)=0) then
      begin
      fMensagem('Número da Devolução Campo Obrigatorio!',0,['0'],0);
      NUMCHQ.SetFocus;
      exit;
      end;
   la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;

   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('   Select CACODEMP,CACHAVEP '
                     +'   ,CACODFOR,CAVALOR,CAVALPAG, '
                     +'             CADTEMIS,CANUMERO,CADESD,CADUP '
                     +',CACHAVE_ID_ANO,CACHAVE_ID'

                     +'             from CADDAP where '
                     +la_empresas
                     +iif(la_empresas='','',' and ')
                     +' CASTATUS < 2 '
                     +' AND CADUP=5 '
                     +' AND CACODFOR=0'+fdeixanum2(CODFOR.Text));
   DM1.Query2.Open;

   mboolean:=false;
   While not DM1.Query2.Eof do
      begin
      if DM1.Query2.FieldByName('CANUMERO').AsFloat=fsonumero(NUMCHQ.Text) then
         begin
         mboolean:=true;
         break;
         end;
      DM1.Query2.Next;
      end;
   if mboolean then
      begin
      mdev_Codemp:=DM1.Query2.fieldbyName('CACODEMP').AsFloat;
      mDev_Desd  :=DM1.Query2.fieldbyName('CADESD').AsString;
      mDev_Dtemis:=DM1.Query2.fieldbyName('CADTEMIS').AsDateTime;
      mDev_Dup   :=DM1.Query2.fieldbyName('CADUP').AsFloat;
      mDev_Codfor:=DM1.Query2.fieldbyName('CACODFOR').AsFloat;
      mDev_dup_chave:=DM1.Query2.fieldbyName('CACHAVE_ID').AsFloat;
      mDev_dup_chave_ano:=DM1.Query2.fieldbyName('CACHAVE_ID_ANO').AsFloat;

      end
   else
      begin
      fMensagem('Devolução não Encontrada!',0,['0'],0);
      VALOR.Text :=FormatFloat(mcasas,0);
      end;
   end;


mqtd:=STG_CHQ.RowCount;
STG_CHQ.Cells[mchq_nomfp,mqtd-1]:=DM1.Qr_FPFPDESC.Value;
STG_CHQ.Cells[mchq_numchq,mqtd-1]:=NUMCHQ.Text;
STG_CHQ.Cells[mchq_banco,mqtd-1]:=BANCO.Text;
STG_CHQ.Cells[mchq_serie,mqtd-1]:=SERIE.Text;
STG_CHQ.Cells[mchq_agencia,mqtd-1]:=AGENCIA.Text;
STG_CHQ.Cells[mchq_emitente,mqtd-1]:=EMITENTE.Text;
STG_CHQ.Cells[mchq_valor,mqtd-1]:=VALOR.Text;
STG_CHQ.Cells[mchq_cpf,mqtd-1]:=CPF.Text;
STG_CHQ.Cells[mchq_rg,mqtd-1]:=RG.Text;
STG_CHQ.Cells[mchq_cc,mqtd-1]:=CONTA.Text;
STG_CHQ.Cells[mchq_dtnas,mqtd-1]:=DTNAS.Text;
STG_CHQ.Cells[mchq_codfor,mqtd-1]:=STG_DS.Cells[mds_codfor,1];
if (DM1.Qr_FPFPVINCULO.AsInteger=7) then
  STG_CHQ.Cells[mchq_dtemis,mqtd-1]:=FormatDateTime(fdt2,mDev_Dtemis)
else
  STG_CHQ.Cells[mchq_dtemis,mqtd-1]:=FormatDateTime(fdt2,pdatasis);
STG_CHQ.Cells[mchq_dtdep,mqtd-1]:=DTDEP.Text;
//STG_CHQ.Cells[mchq_forma,mqtd-1]:=DM1.Qr_FPFPDESC.AsString;

STG_CHQ.Cells[mchq_forma,mqtd-1]:=DM1.Qr_FPFPCODIGO.AsString;

if trim(datacx.Text)='/  /' then
   STG_CHQ.Cells[mchq_dtcx,mqtd-1]:=FormatDatetime(fdt2, pdatasis)
else
   STG_CHQ.Cells[mchq_dtcx,mqtd-1]:=DATACX.Text;

STG_CHQ.Cells[mchq_dtcx,mqtd-1]:=DATACX.Text;
STG_CHQ.Cells[mchq_compens,mqtd-1]:=COMP.Text;
STG_CHQ.Cells[mchq_data_tit,mqtd-1]:=STG_DS.Cells[mds_dtemis,1]; // data e
STG_CHQ.Cells[mchq_codcai,mqtd-1]:=MCODCAI.Text; // data e
STG_CHQ.Cells[mchq_nomcai,mqtd-1]:=MNOMCAI.Text; // data e
STG_CHQ.Cells[mchq_ch_terc,mqtd-1]:=FloatToStr(mChT_Chave); // Chave do Cheque de terceiros
STG_CHQ.Cells[mchq_emp_ori_ch_terc,mqtd-1]:=FloatToStr(mChT_CodEmp); // Codigo da empresa do Cheque de terceiros
STG_CHQ.Cells[mchq_vinc_fp,mqtd-1]:=DM1.Qr_FPFPVINCULO.Asstring ; // vinculo
STG_CHQ.Cells[mchq_banco_ori,mqtd-1]:=FloatToStr(mChT_CodBco_ori); // Codigo do Banco de Origem  Cheque de terceiros
STG_CHQ.Cells[mchq_codldr_ori,mqtd-1]:=FloatToStr(mChT_CodLdr_Ori); // Codigo do LDr  do Cheque de terceiros
STG_CHQ.Cells[mchq_ChT_CodCli_Ori,mqtd-1]:=FloatToStr(mChT_CodCli_Ori); // Codigo do Cliente  do Cheque de terceiros
STG_CHQ.Cells[mchq_ChT_NomBco_Ori,mqtd-1]:=mChT_Nombco_ori; // Codigo do Cliente  do Cheque de terceiros
STG_CHQ.Cells[mchq_ChT_Nomcli_Ori,mqtd-1]:=mChT_Nomcli_ori; // Codigo do Cliente  do Cheque de terceiros

STG_CHQ.Cells[mchq_dev_codemp,mqtd-1]:=FloatToStr(mdev_Codemp);
STG_CHQ.Cells[mchq_dev_desd,mqtd-1]  :=mDev_Desd;
STG_CHQ.Cells[mchq_dev_dtemis,mqtd-1]:=FormatDatetime(fdt2, mDev_Dtemis);
STG_CHQ.Cells[mchq_dev_dup,mqtd-1]   :=FloatToStr(mDev_Dup);
STG_CHQ.Cells[mchq_dev_codfor,mqtd-1]:=FloatToStr(mDev_codfor);

STG_CHQ.Cells[mchq_dev_dup_chave_ano,mqtd-1]:=FloatToStr(mDev_dup_chave_ano);
STG_CHQ.Cells[mchq_dev_dup_chave,mqtd-1]:=FloatToStr(mDev_dup_chave);


mChT_Chave     :=0; // Chave do Cheque de terceiros
mChT_CodEmp    :=0; // Chave do Cheque de terceiros
mChT_CodBco_Ori:=0; // Codigo do Banco de Origem  Cheque de terceiros
mChT_CodLdr_Ori:=0; // Codigo do LDr  do Cheque de terceiros
mChT_CodCli_Ori:=0; // Codigo do Cliente  do Cheque de terceiros
mChT_Nombco_ori:=''; // Codigo do Cliente  do Cheque de terceiros
mChT_Nomcli_ori:=''; // Codigo do Cliente  do Cheque de terceiros






STG_CHQ.Rows[mqtd].Clear;
STG_CHQ.RowCount:=mqtd+1;
STG_CHQ.Rows[mqtd+1].Clear;
STG_CHQ.Rows[mqtd+2].Clear;

   Label3.Enabled:=False;
   Label4.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.Text     :='';

   mdev_Codemp    :=0;
   mDev_Desd      :='';
   mDev_Dtemis    :=pdatanula;
   mDev_Dup      :=0;
   mdev_Codfor   :=0;
//  mchq_dev_dup_chave_ano  :=0;
//  mchq_dev_dup_chave      :=0;



   if RG_FORMA.Visible then
      RG_FORMA.SetFocus
   else
      CB_FORMAPGTO.SetFocus;
HC_cheques.Sections.Items[2].Text:=FormatFloat(mcasas, fAcCrTotalFP(0));

HC_cheques.Sections.Items[4].Text:=FormatFloat(mcasas, ValFloat(HC_DUPLIC.Sections.Items[2].Text)-  ValFloat(HC_CHEQUES.Sections.Items[2].Text));

end;

procedure TFrm_AcCP.BANCOExit(Sender: TObject);
begin
if not (BBSair.Focused) and not (BBCancelar.Focused) then
   begin
   if not fTestaTam(2,5,BANCO.Text,'') then
      BANCO.SetFocus;
   end;

end;

procedure TFrm_AcCP.BBCancelarClick(Sender: TObject);
begin
   Label3.Enabled:=False;
   Label4.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   VALPAG.Text    :='';
   NUMDUP.Text    :='';
   DESD.text      :='';
   mDTEMIs.Text    :='/  /';
   DESC.text      :='';
   JUROS.Text     :='';

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.Text     :='';
   CODFOR.Text    :='';
   CODFOR.SetFocus;
   NOMFOR.Text    :='';
   STG_DA.RowCount:=2;
   STG_DA.Rows[1].Clear;
   STG_DS.RowCount:=2;
   STG_DS.Rows[1].Clear;
   STG_CHQ.RowCount:=2;
   STG_CHQ.Rows[1].Clear;
   mChT_Chave :=0;
   mChT_Codemp:=0;
   mChT_CodBco_Ori:=0; // Codigo do Banco de Origem  Cheque de terceiros
   mChT_CodLdr_Ori:=0; // Codigo do LDr  do Cheque de terceiros
   mChT_CodCli_Ori:=0; // Codigo do Cliente  do Cheque de terceiros
   mChT_Nombco_ori:=''; // Codigo do Cliente  do Cheque de terceiros
   mChT_Nomcli_ori:=''; // Codigo do Cliente  do Cheque de terceiros

   mdev_Codemp    :=0;
   mDev_Desd      :='';
   mDev_Dtemis    :=pdatanula;
   mDev_Dup       :=0;

   mDev_Codfor    :=0;

//   mchq_dev_dup_chave_ano  :=0;
//   mchq_dev_dup_chave      :=0;



HC_DUPLIC.Sections.Items[2].Text:=mcasas;
HC_cheques.Sections.Items[2].Text:=mcasas;
   
end;

procedure TFrm_AcCP.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

mdap_codcai_ant:=codcai;


DATACX.Text:=FormatDateTime(fdt2, pdatasis);
DATAP.Text:=FormatDateTime(fdt2, pdatasis);
if DM1.Tb_PargerPMANDATCXBX.Value=1 then
   begin
   lbl_caixa.Visible:=True;
   DATACX.Visible   :=true;
   end
else
   begin
   lbl_caixa.Visible:=false;
   DATACX.Visible   :=false;
   end;

NR.Text:=FormatDateTime('ddmmyyyy',date);

MCODCAI_PAD.Text:=IntToStr(codcai);
MLOTMOV.Text:=IntToStr(lotmov);

if flfilpad(-1,'_ACCR','mcodcai_pad_'+inttostr(codemp)) then
   MCODCAI_PAD.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   MCODCAI_PAD.Text:=IntToStr(codcai);

if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI_PAD.Text) then
   MNOMCAI_PAD.Text:=DM1.Query1.Fields[0].AsString;

MCODCAI.Text:=MCODCAI_PAD.Text;
MNOMCAI.Text:=MNOMCAI_PAD.Text;

STG_DA.RowCount:=2;
STG_DA.Cells[mda_numdup,00]:='Número';
STG_DA.Cells[mda_parc,00]:='Parc';
STG_DA.Cells[mda_codfor,00]:='Cód.For';
STG_DA.Cells[mda_dtemis,00]:='Emissão';
STG_DA.Cells[mda_valor,00]:='Valor';
STG_DA.Cells[mda_dtvcto,00]:='Vencimento';
STG_DA.Cells[mda_valrec,00]:='Recebido';
STG_DA.Cells[mda_valdesc,00]:='Desconto';
STG_DA.Cells[mda_dtdesc,00]:='Data c/desc';
STG_DA.Cells[mda_vlarec,00]:='a receber';
STG_DA.Cells[mda_banco,00]:='Banco';
STG_DA.Cells[mda_chave,00]:='Chave';
STG_DA.Cells[mda_codemp,00]:='Empresa';
STG_DA.Cells[mda_dup,00]:='Dup';
STG_DA.Cells[mda_obs,00]:='Obs';
STG_DA.Cells[mda_chave_id,00]:='Chave Tit';
STG_DA.Cells[mda_chave_id_ano,00]:='Ano';



STG_DS.RowCount:=2;
STG_DS.Cells[mds_nomfor,00]:='Fornecedor';
STG_DS.Cells[mds_numdup,00]:='Número';
STG_DS.Cells[mds_parc,00]:='Parc';
STG_DS.Cells[mds_codfor,00]:='Cód.For';
STG_DS.Cells[mds_valdup,00]:='Valor';
STG_DS.Cells[mds_valrec,00]:='Recebido';
STG_DS.Cells[mds_valdes,00]:='Desconto';
STG_DS.Cells[mds_valjur,00]:='Juros';
STG_DS.Cells[mds_codfor,00]:='Cód.For';
STG_DS.Cells[mds_dtemis,00]:='Dt.Emis';
STG_DS.Cells[mds_dtpgto,00]:='Dt.Pgto';
STG_DS.Cells[mds_codemp,00]:='Empresa';
STG_DS.Cells[mds_dup,00]:='Dup';
STG_DS.Cells[mda_chave_id,00]:='Chave Tit';
STG_DS.Cells[mda_chave_id_ano,00]:='Ano';


STG_CHQ.RowCount:=2;
STG_CHQ.Cells[mchq_nomfp,00]:='Forma Pagamento';
STG_CHQ.Cells[mchq_numchq,00]:='Número Chq';
STG_CHQ.Cells[mchq_banco,00]:='Banco';
STG_CHQ.Cells[mchq_serie,00]:='Série';
STG_CHQ.Cells[mchq_agencia,00]:='Agencia';
STG_CHQ.Cells[mchq_emitente,00]:='Emitente';
STG_CHQ.Cells[mchq_valor,00]:='Valor';
STG_CHQ.Cells[mchq_cpf,00]:='CPF';
STG_CHQ.Cells[mchq_rg,00]:='RG';
STG_CHQ.Cells[mchq_cc,00]:='Conta Corrente';
STG_CHQ.Cells[mchq_dtnas,00]:='Dt.Nasc';
STG_CHQ.Cells[mchq_codfor,00]:='Cód.For';
STG_CHQ.Cells[mchq_dtemis,00]:='Dt.Emissão';
STG_CHQ.Cells[mchq_dtdep,00]:='Dt.Depósito';
STG_CHQ.Cells[mchq_forma,00]:='Forma';
STG_CHQ.Cells[mchq_dtcx,00]:='Data Caixa';
STG_CHQ.Cells[mchq_compens,00]:='Compens';
STG_CHQ.Cells[mchq_data_tit,00]:='Data Titulo';
STG_CHQ.Cells[mchq_codcai,00]:='Cod.Caixa/Bco';
STG_CHQ.Cells[mchq_nomcai,00]:='Nome do Caixa/Banco';
STG_CHQ.Cells[mchq_ch_terc,00]:='Ch.Chq.Terc.';
STG_CHQ.Cells[mchq_emp_ori_ch_terc,00]:='Emp.Ori.Chq.Terc';
STG_CHQ.Cells[mchq_vinc_fp,00]:='Vinc.FP';
STG_CHQ.Cells[mchq_banco_ori,00]:='Banco Ori';
STG_CHQ.Cells[mchq_codldr_ori,00]:='Cod.Ldr.Ori';

flcadldr(0,0,0,'0');


DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
mcinst4:='';
if DM1.Qr_FP.RecordCount>9 then
   begin
   CB_FORMAPGTO.Items.Clear;
   while not DM1.Qr_FP.Eof do
      begin
      if mcinst4='' then
         begin
         if DM1.Qr_FPFPVINCULO.AsInteger=0 then
            mcinst4:=DM1.Qr_FPFPDESC.Value+'['+DM1.Qr_FPFPCODIGO.AsString+']';
         end;
      CB_FORMAPGTO.Items.Add(DM1.Qr_FPFPDESC.Value+'['+DM1.Qr_FPFPCODIGO.AsString+']');
      DM1.Qr_FP.Next;
      end;
   if mcinst<>'' then
      begin
      with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(mcinst4);
      end;
   RG_FORMA.Visible:=false;
   CB_FORMAPGTO.Visible:=true;
   ST_FORMAPGTO.Visible:=true;

   end
else
   begin
   while not DM1.Qr_FP.Eof do
      begin
      RG_FORMA.Items.Add(Formatfloat('00',DM1.Qr_FPFPCODIGO.Value)+'-'+DM1.Qr_FPFPDESC.Value);
      DM1.Qr_FP.Next;
      end;
   RG_FORMA.ItemIndex:=0;
   RG_FORMA.Visible:=true;
   CB_FORMAPGTO.Visible:=false;
   ST_FORMAPGTO.Visible:=false;
   DM1.Qr_FP.Locate('FPCODIGO',RG_FORMA.ItemIndex,[]);
   end;

fCarregaDadosCaixa('CADDAP0');
if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Caption:=Caption+'. Manipulação no Caixa Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';
if FormStyle=fsMDIChild then
   top:=0;


end;

procedure TFrm_AcCP.STG_DADblClick(Sender: TObject);
begin
NUMDUP.setfocus;
end;


procedure TFrm_AcCP.DESCKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;


procedure TFrm_AcCP.DESCExit(Sender: TObject);
begin
VALPAG.Text:=FormatFloat('##0.00',ValFloat(STG_DA.Cells[mda_vlarec,mqtd])
            -ValFloat(DESC.Text)+ValFloat(JUROS.Text));
DESC.Text:=Formatfloat('0.00',ValFloat(DESC.Text));

end;

procedure TFrm_AcCP.JUROSExit(Sender: TObject);
begin
VALPAG.Text:=FormatFloat('##0.00',ValFloat(STG_DA.Cells[mda_vlarec,mqtd])
            -ValFloat(DESC.Text)+ValFloat(JUROS.Text));
JUROS.Text:=Formatfloat('0.00',ValFloat(JUROS.Text));

end;

procedure TFrm_AcCP.VALPAGExit(Sender: TObject);
begin
VALPAG.Text:=Formatfloat('0.00',ValFloat(VALPAG.Text));

end;

procedure TFrm_AcCP.STG_DAExit(Sender: TObject);
begin
MCODEMP.Text :=STG_DA.Cells[mda_codemp,STG_DA.Row];
NUMDUP.Text :=STG_DA.Cells[mda_numdup,STG_DA.Row];
DESD.Text   :=STG_DA.Cells[mda_parc,STG_DA.Row];
VALPAG.Text :=STG_DA.Cells[mda_vlarec,STG_DA.Row];
MDTEMIS.Text:=STG_DA.Cells[mda_dtemis,STG_DA.Row];
MDUP.Text   :=STG_DA.Cells[mda_dup,STG_DA.Row];

end;

procedure TFrm_AcCP.STG_DADrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>2) and (acol<>3)  then
//Pega o texto da célula
  begin
  Texto := STG_DA.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_DA.Canvas.TextWidth(Texto);
  AlturaTexto := STG_DA.Canvas.TextHeight(Texto);
  if ValFloat(STG_DA.Cells[mda_valrec,arow])>0 then
     STG_DA.Canvas.Brush.Color:=clBlue;
  if Valint(STG_DA.Cells[mda_dup,arow])=5 then
     STG_DA.Canvas.Brush.Color:=clGreen;

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_DA.Canvas.TextRect(Rect, X, Y, Texto);
  end;
end;

procedure TFrm_AcCP.DESDExit(Sender: TObject);
begin
fcarregadup(0);

end;

procedure TFrm_AcCP.DATAPExit(Sender: TObject);
begin
Try
   DATAP.Text:=FormatDatetime(fdt2,StrtoDate(DATAP.Text));
except
   fmensagem('Data invalida!',0,['0'],0);
   DATAP.SetFocus;
   exit;
   end;

end;

procedure TFrm_AcCP.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
if (length(BANCO.Text)>2) and (key<>#8) then
   key:=#0
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.SERIEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SERIE.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.AGENCIAKeyPress(Sender: TObject; var Key: Char);
begin
if (length(AGENCIA.Text)>9) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.CONTAKeyPress(Sender: TObject; var Key: Char);
begin
if (length(CONTA.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.EMITENTEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(EMITENTE.Text)>39) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.RGKeyPress(Sender: TObject; var Key: Char);
begin
if (length(RG.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_AcCP.DATACXExit(Sender: TObject);
begin
if Trim(DATACX.Text)='/  /' then
   DATACX.Text:=FormatDateTime(fdt2, pdatasis)
else
   begin
   try
      DATACX.Text:=FormatDateTime(fdt2,StrToDate(DATACX.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATACX.SetFocus;
      exit;
      end;
   end;
if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
   begin
   if StrToDate(DATACX.Text)<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
      begin
      fmensagem('Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
       exit;
       end;
   end;

end;

procedure TFrm_AcCP.CPFKeyPress(Sender: TObject; var Key: Char);
begin
if (length(CPF.Text)>14) and (key<>#8) and not (key in ['0'..'9']) then
   key:=#0;

end;

procedure TFrm_AcCP.CPFExit(Sender: TObject);
begin
if not fTestaTam(0,14,fdeixanum(CPF.Text),'') then
   CPF.SetFocus;

if length(fdeixanum(CPF.Text))>11 then
   CPF.Text:=FormatFloat('00"."000"."000"/"0000"-"00', ValFloat(CPF.Text))
else
   CPF.Text:=FormatFloat('000"."000"."000"-"00', ValFloat(CPF.Text));

end;

procedure TFrm_AcCP.NUMCHQEnter(Sender: TObject);
begin
if DM1.Qr_FPFPVINCULO.AsFloat=18 then
   st_leitor.Caption:='[F3]-Para Leitura Óptica [F4]-p/Cheques Terceiros'
else
   st_leitor.Caption:='[F3]-Para Leitura Óptica';

st_leitor.Visible:=True;

end;

procedure TFrm_AcCP.NUMCHQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=115) and (DM1.Qr_FPFPVINCULO.AsFloat=18) then
   begin
   if Frm_Pchq=nil then
      Application.CreateForm(TFrm_Pchq, Frm_Pchq)
   else
      begin
      Frm_Pchq.Free;
      Frm_Pchq:=nil;
      Application.CreateForm(TFrm_Pchq, Frm_Pchq);
      end;
   Frm_Pchq.ShowModal;
   Frm_PChq.Qr_Chq.First;
   mValidaNumero:=false;
   While not Frm_PChq.Qr_Chq.Eof do
      begin
      if Frm_PChq.Qr_ChqOK.AsString<>'X' then
         begin
         Frm_PChq.Qr_Chq.Next;
         Continue;
         end;
      NUMCHQ.Text  :=Frm_PChq.Qr_ChqCHNUMERO.AsString;
      BANCO.Text   :=Frm_PChq.Qr_ChqCHBANCO.AsString;
      SERIE.Text   :=Frm_PChq.Qr_ChqCHSERIE.AsString;
      AGENCIA.Text :=Frm_PChq.Qr_ChqCHAGENCIA.AsString;
      CONTA.Text   :=Frm_PChq.Qr_ChqCHCC.AsString;
      COMP.Text    :=Frm_PChq.Qr_ChqCHCOMP.AsString;
      VALOR.Text   :=FormatFloat(mcasas, Frm_PChq.Qr_ChqCHVALOR.Value);
      EMITENTE.Text:=Frm_PChq.Qr_ChqCHEMIT.AsString;
      CPF.Text     :=Frm_PChq.Qr_ChqCHCPF.AsString;
      RG.Text      :=Frm_PChq.Qr_ChqCHRG.AsString;
      DTDEP.Text  :=FormatDateTime(fdt2, Frm_PChq.Qr_ChqCHDTDEP.Value);
      DTNAS.Text  :=FormatDateTime(fdt2, Frm_PChq.Qr_ChqCHDTNAS.Value);
      mChT_Chave  :=Frm_PChq.Qr_ChqCHSEQ.AsFloat;
      mChT_Codemp :=Frm_PChq.Qr_ChqCHCODEMP.AsFloat;
      mChT_CodBco_ori:=Frm_PChq.Qr_ChqCHCAIXA.AsFloat; // Codigo do Banco de Origem  Cheque de terceiros
      mChT_CodLdr_Ori:=Frm_PChq.Qr_ChqCHCODLDR.AsFloat; // Codigo do LDr  do Cheque de terceiros
      mChT_CodCli_Ori:=Frm_PChq.Qr_ChqCHCODCLI.AsFloat; // Codigo do LDr  do Cheque de terceiros
      mChT_Nombco_ori:=Frm_PChq.Qr_ChqCHNOMCTA.AsString; // Codigo do Cliente  do Cheque de terceiros
      mChT_Nomcli_ori:=fRM_PCHQ.Qr_ChqCRAZAO.AsString; // Codigo do Cliente  do Cheque de terceiros
      if Frm_PChq.Qr_ChqCHCAIXA.AsFloat>0 then
         begin

         if ValFloat(MCODCAI.Text)<>Frm_PChq.Qr_ChqCHCAIXA.AsFloat then
            begin
            if not flcadbco(1,0,0,Frm_PChq.Qr_ChqCHCAIXA.Asstring) then
               MNOMCAI.Text:=''
            else
               MNOMCAI.Text:=DM1.Tb_BcoBCBANCO.Value;
            end;
         MCODCAI.Text:=Frm_PChq.Qr_ChqCHCAIXA.AsString;
         end;
      if valfloat(MCODCAI.Text)=0 then
         MCODCAI.Text:=MCODCAI_PAD.Text;


      bbLancar_formaClick(Self);
      Frm_PChq.Qr_Chq.Next;
      end;
   if CB_FORMAPGTO.Visible then
      CB_FORMAPGTO.SetFocus
   else
      RG_FORMA.SetFocus;

   Frm_Pchq.free;
   Frm_Pchq:=nil;
   mValidaNumero:=true;

   exit;
   end;
if key=114 then
   begin
   DM4.Tb_Leitor.Close;
   DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
   DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;
   DM4.Tb_Leitor.Open;
   if DM4.Tb_Leitor.Eof then
      begin
      fmensagem('Leitor Optico não configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if not flposdoc(0,0,'') then
      begin
      fmensagem('Campos do Leitor não Configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if Frm_LOptica=nil then
      Application.CreateForm(TFrm_LOptica, Frm_LOptica)
   else
      begin
      Frm_LOptica.Free;
      Frm_LOptica:=nil;
      Application.CreateForm(TFrm_LOptica, Frm_LOptica);
      end;

   Frm_LOptica.ShowModal;

   if lo_banco>0 then
      BANCO.Text:=FloatToStr(lo_banco);
   if lo_agencia>0 then
      AGENCIA.Text:=FloatToStr(lo_agencia);
//   if lo_compens>0 then
//      COMPENS.Text:=FloatToStr(lo_compens);
   if lo_numchq>0 then
      NUMCHQ.Text:=FloatToStr(lo_numchq);
   if lo_conta>0 then
      CONTA.Text:=FloatToStr(lo_conta);
   valor.SetFocus;
   Frm_LOptica.Free;
   Frm_LOptica:=nil;
   end;

end;

procedure TFrm_AcCP.SERIEExit(Sender: TObject);
begin
if not fTestaTam(0,20,SERIE.Text,'') then
   SERIE.SetFocus;

end;

procedure TFrm_AcCP.AGENCIAExit(Sender: TObject);
begin
if not fTestaTam(0,10,AGENCIA.Text,'') then
   AGENCIA.SetFocus;

end;

procedure TFrm_AcCP.CONTAExit(Sender: TObject);
begin
if not fTestaTam(0,20,CONTA.Text,'') then
   CONTA.SetFocus;

end;

procedure TFrm_AcCP.COMPExit(Sender: TObject);
begin
if not fTestaTam(0,4,COMP.Text,'') then
   COMP.SetFocus;

end;

procedure TFrm_AcCP.EMITENTEExit(Sender: TObject);
begin
if not fTestaTam(0,40,EMITENTE.Text,'') then
   EMITENTE.SetFocus;

end;

procedure TFrm_AcCP.RGExit(Sender: TObject);
begin
if not fTestaTam(0,20,RG.Text,'') then
   RG.SetFocus;

end;

procedure TFrm_AcCP.COMPKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,4,COMP.Text,key) then
   Key:=#0;

end;
function TFrm_ACCP.fcarregadup(ptipo: Integer): Boolean;
var
machou: Boolean;
begin
machou:=False;

for mqtd:=1 to STG_DA.RowCount do
   begin
   if (fSonumero(NUMDUP.Text)  =fSonumero(STG_DA.Cells[mda_numdup,mqtd])) and
      (Trim(DESD.Text)         =Trim(STG_DA.Cells[mda_parc,mqtd])) and
      (fsonumero(CODFOR.Text) =fSonumero(STG_DA.Cells[mda_codfor,mqtd]))   and
      (Trim(MDTEMIS.Text)      =Trim(STG_DA.Cells[mda_dtemis,mqtd]) ) and
      (fsonumero(MCODEMP.Text) =fsonumero(STG_DA.Cells[mda_codemp,mqtd])  ) and
      (fsonumero(MDUP.Text) =fsonumero(STG_DA.Cells[mda_dup,mqtd])  ) Then
      begin
      machou:=true;
      break;
      end;
   end;

if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount do
      begin
      if (fSonumero(NUMDUP.Text)=fSonumero(STG_DA.Cells[mda_numdup,mqtd])) and
         (Trim(DESD.Text)  =Trim(STG_DA.Cells[mda_parc,mqtd])) Then
         begin
         machou:=true;
         break;
         end;
      end;
   end;
if not machou then
   begin
   for mqtd:=1 to STG_DA.RowCount do
      begin
      if (fSonumero(NUMDUP.Text)=fSonumero(STG_DA.Cells[mda_numdup,mqtd])) then
         begin
         machou:=true;
         break;
         end;
      end;
   end;

if machou then
   begin
   VALPAG.Text :=STG_DA.Cells[mda_vlarec,mqtd];
   NUMDUP.Text :=STG_DA.Cells[mda_numdup,mqtd];
   DESD.Text   :=STG_DA.Cells[mda_parc,mqtd];
   MDTEMIS.Text:=STG_DA.Cells[mda_dtemis,mqtd];
   MCODEMP.Text:=STG_DA.Cells[mda_codemp,mqtd];
   MDUP.Text   :=STG_DA.Cells[mda_dup,mqtd];

   end;
result:=True;
end;

procedure TFrm_AcCP.NUMDUPExit(Sender: TObject);
begin
NUMDUP.Text:=fdeixanum2(NUMDUP.Text);
fcarregadup(0);

end;

procedure TFrm_AcCP.MDTEMISExit(Sender: TObject);
begin
if trim(MDTEMIS.Text)<>'/  /' then
   begin
   Try
      MDTEMIS.Text:=FormatDatetime(fdt2,StrtoDate(MDTEMIS.Text));
   except
      fMensagem('Data invalida!',0,['0'],0);
      MDTEMIS.SetFocus;
      exit;
      end;
   end;
fcarregadup(0);

end;

procedure TFrm_AcCP.STG_DSDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>0) and (acol<>2) and (acol<>9) and (acol<>10) then
//Pega o texto da célula
  begin
  Texto := STG_DS.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_DS.Canvas.TextWidth(Texto);
  AlturaTexto := STG_DS.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_DS.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_AcCP.STG_CHQDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (aCol<>3) and (acol<>4) and (acol<>5) and (acol<>8)
   and (acol<>9) and (acol<>10) and (acol<12)
 then
//Pega o texto da célula
  begin
  Texto := STG_CHQ.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_CHQ.Canvas.TextWidth(Texto);
  AlturaTexto := STG_CHQ.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_CHQ.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;


function TFrm_AcCp.fLerAtualiza(pCodFor: Real): Boolean;
begin


// inicio
STG_DA.RowCount:=2;
STG_DA.rows[1].Clear;

la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('select CANUMERO,CADESD,CACODFOR,CADTEMIS,CADUP,'
                  +' CAVALOR,CADTVCTO,CAVALPAG,CAVALDES,CADESC,CAJUROS,'
                  +' CADTDESC, CABANCO,CACHAVEP,CACODEMP,CAOBS '
                  +',CACHAVE_ID,CACHAVE_ID_ANO'
                  +' FROM CADDAP ');
DM1.Query1.Sql.add(' where '+la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' CACODFOR=0'+trim(CODFOR.Text)
                     +' and CASTATUS<2'
                     +' order by CACODFOR,CADTVCTO ');
DM1.Query1.Open;
if DM1.Query1.Eof then
   begin
   result:=false;
   exit;
   end;
mqtd:=1;
While not DM1.Query1.Eof do
   begin
   if fJaselecionada(0) then
      begin
      DM1.Query1.Next;
      Continue;
      end;
   STG_DA.RowCount:=mqtd+1;
   STG_DA.Rows[mqtd].Clear;
   STG_DA.Cells[mda_numdup,mqtd]:=DM1.Query1.FieldbyName('CANUMERO').AsString;
   STG_DA.Cells[mda_parc,mqtd]:=DM1.Query1.FieldbyName('CADESD').AsString;
   STG_DA.Cells[mda_codfor,mqtd]:=DM1.Query1.FieldbyName('CACODFOR').AsString;
   STG_DA.Cells[mda_dtemis,mqtd]:=FormatDatetime(fdt2,DM1.Query1.FieldbyName('CADTEMIS').AsDateTime);
   STG_DA.Cells[mda_valor,mqtd]:=FormatFloat(mcasas,DM1.Query1.FieldbyName('CAVALOR').AsFloat);
   STG_DA.Cells[mda_dtvcto,mqtd]:=FormatDatetime(fdt2,DM1.Query1.FieldbyName('CADTVCTO').AsDateTime);
   STG_DA.Cells[mda_valrec,mqtd]:=FormatFloat(mcasas,DM1.Query1.FieldbyName('CAVALPAG').AsFloat);
   STG_DA.Cells[mda_valdesc,mqtd]:=FormatFloat(mcasas,DM1.Query1.FieldbyName('CAVALDES').AsFloat);

   if DM1.Query1.FieldbyName('CADTDESC').AsDateTime>pdatanula then
      STG_DA.Cells[mda_dtdesc,mqtd]:=FormatDatetime(fdt2,DM1.Query1.FieldbyName('CADTDESC').AsDateTime);
   STG_DA.Cells[mda_vlarec,mqtd]:=FormatFloat(mcasas,(DM1.Query1.FieldbyName('CAVALOR').AsFloat)
                         -DM1.Query1.FieldbyName('CAVALPAG').AsFloat
                         -DM1.Query1.FieldbyName('CADESC').AsFloat
                         +DM1.Query1.FieldbyName('CAJUROS').AsFloat

                         );

   STG_DA.Cells[mda_banco,mqtd]:=FormatFloat('000',DM1.Query1.FieldbyName('CABANCO').AsFloat);
   STG_DA.Cells[mda_chave,mqtd]:=FormatFloat('000000',DM1.Query1.FieldbyName('CACHAVEP').AsFloat);
   STG_DA.Cells[mda_codemp,mqtd]:=FormatFloat('000000',DM1.Query1.FieldbyName('CACODEMP').AsFloat);
   STG_DA.Cells[mda_dup,mqtd]:=FormatFloat('000000',DM1.Query1.FieldbyName('CADUP').AsFloat);
   STG_DA.Cells[mda_obs,mqtd]:=DM1.Query1.FieldbyName('CAOBS').AsString;
   STG_DA.Cells[mda_chave_id,mqtd]:=DM1.Query1.FieldbyName('CACHAVE_ID').AsString;
   STG_DA.Cells[mda_chave_id_ano,mqtd]:=DM1.Query1.FieldbyName('CACHAVE_ID_ANO').AsString;

   DM1.Query1.Next;
   mqtd:=mqtd+1;
   end;
Result:=true;
end;

function TFrm_AcCp.fJaselecionada(pTipo: Integer): Boolean;
var
x: Integer;
begin
result:=false;
for x:=1 to STG_DS.RowCount do
   begin
   if (trim(STG_DS.Cells[mds_dtemis,x])='/ /') or (Trim(STG_DS.Cells[mds_dtemis,x])='') then
      Continue;
   if (ValFloat(STG_DS.Cells[mds_numdup,x]) =DM1.Query1.fieldbyName('CANUMERO').AsFloat) and
      (Trim(STG_DS.Cells[mds_parc,x])     =Trim(DM1.Query1.fieldbyName('CADESD').AsString) ) and
      (ValFloat(STG_DS.Cells[mds_codfor,x]) =DM1.Query1.fieldbyName('CACODFOR').AsFloat ) and
      (Trim(STG_DS.Cells[mds_dtemis,x])     =FormatDatetime(fdt2, DM1.Query1.fieldbyName('CADTEMIS').AsDateTime) ) and
      (fSonumero(STG_DS.Cells[mds_codemp,x])=DM1.Query1.fieldbyName('CACODEMP').AsFloat ) and
      (fSonumero(STG_DS.Cells[mds_dup,x])=DM1.Query1.fieldbyName('CADUP').AsFloat ) then
      begin
      result:=true;
      break;
      end;
   end;
end;


procedure TFrm_AcCP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
codcai:=mdap_codcai_ant;

end;

procedure TFrm_AcCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcCP.CB_FORMAPGTOExit(Sender: TObject);
var
mvalor: Real;
begin
if CB_FORMAPGTO.ItemIndex<0 then
   begin
   with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(CB_FORMAPGTO.Text);
   end;
CB_FORMAPGTO.text:=CB_FORMAPGTO.Items.Strings[CB_FORMAPGTO.ItemIndex];

if (NUMCHQ.Focused) or (VALOR.Focused) then
   begin
   mvalor:=0;
   for mqtd:=1 to STG_DS.RowCount-1 do
      begin
      if Trim(STG_DS.Cells[mds_nomfor,mqtd])='' then
         continue;
//      if STG_DS.Cells[mds_codfor,mqtd]='5' then
//         mvalor:=mvalor-ValFloat(STG_DS.Cells[mds_valrec,mqtd])
//      else
         mvalor:=mvalor+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
      end;
   for mqtd:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtd]),[]);
      if DM1.Qr_FPFPTIPO.Value=1 then
         mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
      else
         mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
      end;

   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(fExtraiCodigoEntreChaves(CB_FORMAPGTO.Text)),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      begin
      if mvalor<0 then
         mvalor:=mvalor*-1;
      end;
   VALOR.Text:=FormatFloat('#####0.00',mvalor);
   if DM1.Qr_FPFPCODBCO.AsFloat>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
         begin
         MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
         MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         MCODCAI.Text:=MCODCAI_PAD.Text;
         MNOMCAI.Text:=MNOMCAI_PAD.Text;
         end;
      end
   else
      begin
      MCODCAI.Text:=MCODCAI_PAD.Text;
      MNOMCAI.Text:=MNOMCAI_PAD.Text;
      end;

   if (DM1.Qr_FPFPNUM.Value=1) or (DM1.Qr_FPFPNUM.Value=2) then
      begin
      Label3.Enabled:=True;
      Label4.Enabled:=True;
      Label5.Enabled:=True;
      Label13.Enabled:=True;
      Label10.Enabled:=True;
      Label12.Enabled:=True;
      Label7.Enabled :=True;
      Label8.Enabled :=True;
      Label9.Enabled :=True;
      Label11.Enabled:=True;
      NUMCHQ.Enabled :=True;
      BANCO.Enabled  :=True;
      SERIE.Enabled  :=True;
      AGENCIA.Enabled:=True;
      CONTA.Enabled  :=True;
      DTDEP.Enabled  :=True;
      EMITENTE.Enabled:=True;
      CPF.Enabled    :=True;
      RG.Enabled     :=True;
      DTNAS.Enabled  :=True;
      COMP.Enabled   :=true;
      LComp.Enabled  :=true;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :=FormatDateTime(fdt2,date);
      EMITENTE.Text  :=DM1.Tb_EmpRAZAO.Value;
      CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_EmpCGC.Value);
      RG.Text        :=DM1.Tb_EmpINSCRICAO.Value;
      if DM1.Qr_FPFPVINCULO.AsInteger=18 then
         NUMCHQ.Hint:='[F3]-p/Leitor Otico'+#13+'[F4]-p/Cheques Terceiros'
      else
         NUMCHQ.Hint:='[F3]-p/Leitor Otico';
      if Not conta.Focused then
         NUMCHQ.SetFocus;
      end
   else
      begin
      Label3.Enabled:=False;
      Label4.Enabled:=False;
      Label5.Enabled:=False;
      Label13.Enabled:=False;
      Label10.Enabled:=False;
      Label12.Enabled:=False;
      Label7.Enabled :=False;
      Label8.Enabled :=False;
      Label9.Enabled :=False;
      Label11.Enabled:=False;
      NUMCHQ.Enabled :=False;
      BANCO.Enabled  :=False;
      SERIE.Enabled  :=False;
      AGENCIA.Enabled:=False;
      CONTA.Enabled  :=False;
      DTDEP.Enabled  :=False;
      EMITENTE.Enabled:=False;
      CPF.Enabled    :=False;
      RG.Enabled     :=False;
      DTNAS.Enabled  :=False;
      COMP.Enabled   :=false;
      LComp.Enabled  :=false;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :='';
      EMITENTE.Text  :='';
      CPF.Text       :='';
      RG.Text        :='';
      DTNAS.Text     :='';
      VALOR.SetFocus;
      end;
   end;

end;

procedure TFrm_AcCP.MDUPExit(Sender: TObject);
begin
MDUP.Text:=fdeixanum2(MDUP.Text);
fcarregadup(0);
end;

procedure TFrm_AcCP.MCODCAI_PADExit(Sender: TObject);
begin
MCODCAI_PAD.Text:=fdeixanum(MCODCAI_PAD.Text);
if fsonumero(MCODCAI_PAD.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Caixa/Banco válido',0,['0'],0);
   MCODCAI_PAD.Text:='1';
   MCODCAI_PAD.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,MCODCAI_PAD.Text) then
   begin
   fmensagem('Banco Não Cadastrado!',0,['0'],0);
   MCODCAI_PAD.SetFocus;
   end
else
   begin
   MNOMCAI_PAD.Text:=DM1.Tb_BcoBCBANCO.Value;
   if fsonumero(MLOTMOV.Text)=0 then
      begin
      MLOTMOV.Text:=FloatToStr(DM1.Tb_BcoBCLOTMOV.Value+1);
      MLOTMOV.Update;
      end;

   codcai:=ValInt(MCODCAI_PAD.Text);
   lotmov:=Valint(MLOTMOV.Text);
   pldr_nombco:=DM1.Tb_BcoBCBANCO.Value;
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   end;
fDeletaPadroes(-1,'_ACCR','mcodcai_pad_'+inttostr(codemp));
fGravaPadroes(-1,'mcodcai_pad_'+inttostr(codemp) ,'Text'
              ,'_ACCR',
              MCODCAI_PAD.Text);

end;

procedure TFrm_AcCP.MLOTMOVExit(Sender: TObject);
begin
codcai:=ValInt(MCODCAI_PAD.Text);
lotmov:=Valint(MLOTMOV.Text);

end;

procedure TFrm_AcCP.MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI_PAD.Text:=fChamaBco(0,'frm_AcCP',Key);
   if trim(MCODCAI_PAD.Text)<>'' then
      MCODCAI_PADExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AcCP.MCODCAIExit(Sender: TObject);
begin
MCODCAI.Text:=fdeixanum(MCODCAI.Text);
if fsonumero(MCODCAI.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Caixa/Banco válido',0,['0'],0);
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MCODCAI.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,MCODCAI.Text) then
   begin
   fmensagem('Banco Não Cadastrado!',0,['0'],0);
   MCODCAI.SetFocus;
   end
else
   begin
   MNOMCAI.Text:=DM1.Tb_BcoBCBANCO.Value;
   end;



end;

procedure TFrm_AcCP.MCODCAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI.Text:=fChamaBco(0,'frm_AcCP',Key);
   if trim(MCODCAI.Text)<>'' then
      MCODCAIExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AcCP.spn_mandupClick(Sender: TObject);
var
mcodemp_ant: Integer;
begin
if form_dap=nil then
   Application.CreateForm(Tfrm_dap,form_dap)
else
   begin
   form_dap.Free;
   form_dap:=nil;
   Application.CreateForm(Tfrm_dap,form_dap);
   end;
   mcodemp_ant:=codemp;
if valint(MCODEMP.Text)<>0 then
   codemp:=valint(MCODEMP.Text);
form_dap.PC1.ActivePage:=form_dap.tsTab;
dap_ori:='form_dap';
form_dap.ShowModal;
if form_dap.Tb_CPCACODFOR.AsFloat>0 then
   begin
   CODFOR.Text:=form_dap.Tb_CPCACODFOR.AsString;
   CODFORExit(Self);
   MCODEMP.Text:=form_dap.Tb_CPCACODEMP.AsString;
   NUMDUP.Text:=form_dap.Tb_CPCANUMERO.AsString;
   DESD.Text:=form_dap.Tb_CPCADESD.AsString;
   MDUP.Text:=form_dap.Tb_CPCADUP.AsString;
   MDTEMIS.Text:=FormatDateTime(fdt2, form_dap.Tb_CPCADTEMIS.AsDateTime);
   form_dap.Tb_CP.Filter:='';
   fcarregadup(0);
   end;
codemp:=mcodemp_ant;
freeandnil(form_dap);

end;

procedure TFrm_AcCP.VALOREnter(Sender: TObject);
begin
if ValFloat(VALOR.Text)=0 then
   begin
   if RG_FORMA.Visible then
      RG_FORMAExit(self)
   else
      CB_FORMAPGTOExit(self);
   end
end;

procedure TFrm_AcCP.FormActivate(Sender: TObject);
begin
ftestacaixa(0);
flparldr(0,'CADDAP0');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;


end;

procedure TFrm_AcCP.RG_FORMAClick(Sender: TObject);
var
mvalor: Real;
begin
mvalor:=0;
for mqtd:=1 to STG_DS.RowCount-1 do
   begin
   if Trim(STG_DS.Cells[mds_nomfor,mqtd])='' then
      continue;
      mvalor:=mvalor+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
   end;
for mqtd:=1 to STG_CHQ.RowCount do
   begin
   if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
      continue;
   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
   else
      mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
   end;

DM1.Qr_FP.Locate('FPCODIGO',ValFloat(copy(rg_forma.Items[rg_forma.Itemindex],1,2)),[]);
if DM1.Qr_FPFPTIPO.Value=1 then
   begin
   if mvalor<0 then
      mvalor:=mvalor*-1;
   end;
VALOR.Text:=FormatFloat('#####0.00',mvalor);
if DM1.Qr_FPFPCODBCO.AsFloat>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
      begin
      MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
      MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
      end
   else
      begin
      MCODCAI.Text:=MCODCAI_PAD.Text;
      MNOMCAI.Text:=MNOMCAI_PAD.Text;
      end;
   end
else
   begin
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   end;

if (DM1.Qr_FPFPNUM.Value=1) or (DM1.Qr_FPFPNUM.Value=2) then
   begin
   Label3.Enabled:=True;
   Label4.Enabled:=True;
   Label5.Enabled:=True;
   Label13.Enabled:=True;
   Label10.Enabled:=True;
   Label12.Enabled:=True;
   Label7.Enabled :=True;
   Label8.Enabled :=True;
   Label9.Enabled :=True;
   Label11.Enabled:=True;
   NUMCHQ.Enabled :=True;
   BANCO.Enabled  :=True;
   SERIE.Enabled  :=True;
   AGENCIA.Enabled:=True;
   CONTA.Enabled  :=True;
   DTDEP.Enabled  :=True;
   EMITENTE.Enabled:=True;
   CPF.Enabled    :=True;
   RG.Enabled     :=True;
   DTNAS.Enabled  :=True;
   COMP.Enabled   :=true;
   LComp.Enabled  :=true;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :=FormatDateTime(fdt2,date);
   EMITENTE.Text  :=DM1.Tb_EmpRAZAO.Value;
   CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_EmpCGC.Value);
   RG.Text        :=DM1.Tb_EmpINSCRICAO.Value;
   if DM1.Qr_FPFPVINCULO.AsInteger=18 then
      NUMCHQ.Hint:='[F3]-p/Leitor Otico'+#13+'[F4]-p/Cheques Terceiros'
   else
      NUMCHQ.Hint:='[F3]-p/Leitor Otico';
   end
else
   begin
   Label3.Enabled:=False;
   Label4.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   COMP.Enabled   :=false;
   LComp.Enabled  :=false;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   end;
if DM1.Qr_FPFPVINCULO.AsInteger=7 then
  VALOR.ReadOnly:=True
else
  VALOR.ReadOnly:=False;
end;

procedure TFrm_AcCP.CB_FORMAPGTOClick(Sender: TObject);
var
mvalor: Real;
begin
if CB_FORMAPGTO.ItemIndex<0 then
   begin
   with CB_FORMAPGTO do ItemIndex:=Items.IndexOf(CB_FORMAPGTO.Text);
   end;
CB_FORMAPGTO.text:=CB_FORMAPGTO.Items.Strings[CB_FORMAPGTO.ItemIndex];

mvalor:=0;
for mqtd:=1 to STG_DS.RowCount-1 do
   begin
   if Trim(STG_DS.Cells[mds_nomfor,mqtd])='' then
      continue;
      mvalor:=mvalor+ValFloat(STG_DS.Cells[mds_valrec,mqtd]);
   end;
for mqtd:=1 to STG_CHQ.RowCount do
   begin
   if Trim(STG_CHQ.Cells[mchq_nomfp,mqtd])='' then
      continue;
   DM1.Qr_FP.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[mchq_forma,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      mvalor:=mvalor+ValFloat(STG_CHQ.Cells[mchq_valor,mqtd])
   else
      mvalor:=mvalor-ValFloat(STG_CHQ.Cells[mchq_valor,mqtd]);
   end;

DM1.Qr_FP.Locate('FPCODIGO',ValFloat(fExtraiCodigoEntreChaves(CB_FORMAPGTO.Text)),[]);
if DM1.Qr_FPFPTIPO.Value=1 then
   begin
   if mvalor<0 then
      mvalor:=mvalor*-1;
   end;
VALOR.Text:=FormatFloat('#####0.00',mvalor);
if DM1.Qr_FPFPCODBCO.AsFloat>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Qr_FPFPCODBCO.AsString) then
      begin
      MCODCAI.Text:=DM1.Qr_FPFPCODBCO.AsString;
      MNOMCAI.Text:=DM1.Query1.Fields[0].AsString;
      end
   else
      begin
      MCODCAI.Text:=MCODCAI_PAD.Text;
      MNOMCAI.Text:=MNOMCAI_PAD.Text;
      end;
   end
else
   begin
   MCODCAI.Text:=MCODCAI_PAD.Text;
   MNOMCAI.Text:=MNOMCAI_PAD.Text;
   end;

if (DM1.Qr_FPFPNUM.Value=1) or (DM1.Qr_FPFPNUM.Value=2) then
   begin
   Label3.Enabled:=True;
   Label4.Enabled:=True;
   Label5.Enabled:=True;
   Label13.Enabled:=True;
   Label10.Enabled:=True;
   Label12.Enabled:=True;
   Label7.Enabled :=True;
   Label8.Enabled :=True;
   Label9.Enabled :=True;
   Label11.Enabled:=True;
   NUMCHQ.Enabled :=True;
   BANCO.Enabled  :=True;
   SERIE.Enabled  :=True;
   AGENCIA.Enabled:=True;
   CONTA.Enabled  :=True;
   DTDEP.Enabled  :=True;
   EMITENTE.Enabled:=True;
   CPF.Enabled    :=True;
   RG.Enabled     :=True;
   DTNAS.Enabled  :=True;
   COMP.Enabled   :=true;
   LComp.Enabled  :=true;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :=FormatDateTime(fdt2,date);
   EMITENTE.Text  :=DM1.Tb_EmpRAZAO.Value;
   CPF.Text       :=FormatFloat('0000000000000',DM1.Tb_EmpCGC.Value);
   RG.Text        :=DM1.Tb_EmpINSCRICAO.Value;
   if DM1.Qr_FPFPVINCULO.AsInteger=18 then
      NUMCHQ.Hint:='[F3]-p/Leitor Otico'+#13+'[F4]-p/Cheques Terceiros'
   else
      NUMCHQ.Hint:='[F3]-p/Leitor Otico';
   if Not conta.Focused then
      NUMCHQ.SetFocus;
   end
else
   begin
   Label3.Enabled:=False;
   Label4.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   COMP.Enabled   :=false;
   LComp.Enabled  :=false;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.SetFocus;
   end;

if DM1.Qr_FPFPVINCULO.AsInteger=7 then
  VALOR.ReadOnly:=True
else
  VALOR.ReadOnly:=False;
end;


function TFrm_AcCp.fTestaDadosCheques(Posicao: Integer): Boolean;
{
posicao 0-Numero do cheque
        1-banco
        2-Serie
        3-Agencia
        4-cc
        5-Valor
}

begin

la_tabelas  :='';
la_Join     :='';
la_Empresas :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CHCODEMP','CCODCLI','CHCODCLI');
if mChT_Codemp=0 then
  la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS)
else
  la_Empresas:=' CHCODEMP=0'+FloatToStr(mChT_codemp);

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CHNUMERO,CHBANCO,CHSERIE,CHCOMP,CHEMIT, '
                  +' CHCPF, CHRG, CHCC,CHDTNAS,CHAGENCIA,CHVALOR,CHDTDEP,CHCODEMP,CHSEQ'
                  +'       ,CHCODLDR '
                  +'       ,CHCAIXA '
                  +'       ,CHCODCLI '
                  +'       ,CHNOMCTA '
                  +'       ,CRAZAO '
                  +' from CADCHQ  cadbco '+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                              +' CHSTATUS<1 ');
if trim(NUMCHQ.Text)<>'' then
   DM1.Query1.SQL.add(' and CHNUMERO=0'+fdeixanum2(NUMCHQ.Text));
if (Posicao>0) and (trim(BANCO.Text)<>'') then
   DM1.Query1.SQL.add(' and CHBANCO=0'+fdeixanum2(BANCO.Text));
if (Posicao>1) and (trim(SERIE.Text)<>'') then
   begin
   DM1.Query1.Params.CreateParam(ftString,'SERIE',ptInput);
   DM1.Query1.SQL.add(' and CHSERIE=:SERIE');
   DM1.Query1.ParamByName('SERIE').AsString:=SERIE.Text;
   end;

if (Posicao>2) and (trim(AGENCIA.Text)<>'') then
   begin
   DM1.Query1.Params.CreateParam(ftString,'AGENCIA',ptInput);
   DM1.Query1.SQL.add(' and CHAGENCIA=:AGENCIA');
   DM1.Query1.ParamByName('AGENCIA').AsString:=AGENCIA.Text;
   end;

if (Posicao>3) and (trim(CONTA.Text)<>'') then
   begin
   DM1.Query1.Params.CreateParam(ftString,'CONTA',ptInput);
   DM1.Query1.SQL.add(' and CHCC=:CONTA');
   DM1.Query1.ParamByName('CONTA').AsString:=CONTA.Text;
   end;
if (Posicao>4) and (ValFloat(valor.Text)<>0) then
   DM1.Query1.SQL.add(' and CHVALOR='+mudaVP(FloatToStr(ValFloat(VALOR.Text) ) ) );
try
   DM1.Query1.open;
except on e : exception do
   begin
   ex_erroSql_Novo(dm1.QUERY1,3601,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
//DM1.Query1.sql.savetofile('C:\SQL.TXT');

if not DM1.Query1.IsEmpty then
   begin
   NUMCHQ.Text  :=DM1.Query1.fieldbyname('CHNUMERO').AsString;
   BANCO.Text   :=DM1.Query1.fieldbyname('CHBANCO').AsString;
   SERIE.Text   :=DM1.Query1.fieldbyname('CHSERIE').AsString;
   AGENCIA.Text :=DM1.Query1.fieldbyname('CHAGENCIA').AsString;
   CONTA.Text   :=DM1.Query1.fieldbyname('CHCC').AsString;
   COMP.Text    :=DM1.Query1.fieldbyname('CHCOMP').AsString;
   VALOR.Text   :=FormatFloat(mcasas, DM1.Query1.fieldbyname('CHVALOR').AsFloat);
   DTDEP.Text   :=FormatDateTime(fdt2, DM1.Query1.fieldbyname('CHDTDEP').AsDateTime);
   EMITENTE.Text:=DM1.Query1.fieldbyname('CHEMIT').AsString;
   if length(DM1.Query1.fieldbyName('CHCPF').AsString)>11 then
      CPF.Text:=FormatFloat('00"."000"."000"/"0000"-"00',
                            DM1.Query1.fieldbyName('CHCPF').AsFloat)
   else
      CPF.Text:=FormatFloat('000"."000"."000"-"00',
                           DM1.Query1.fieldbyName('CHCPF').AsFloat);
   RG.Text:=DM1.Query1.fieldbyName('CHRG').AsString;
   if (DM1.Query1.fieldbyName('CHDTNAS').IsNull) or
      (DM1.Query1.fieldbyName('CHDTNAS').AsDateTime<pdatanula) then
      DTNAS.Text:='/  /'
   else
      DTNAS.Text:=FormatDateTime(fdt2,
                             DM1.Query1.fieldbyName('CHDTNAS').AsDateTime);
   mChT_Chave      := DM1.Query1.fieldbyName('CHSEQ').AsFloat;
   mChT_Codemp     := DM1.Query1.fieldbyName('CHCODEMP').AsFloat;
   mChT_CodBco_ori := DM1.Query1.fieldbyName('CHCAIXA').AsFloat;
   mChT_CodLdr_Ori := DM1.Query1.fieldbyName('CHCODLDR').AsFloat;
   mChT_CodCli_Ori := DM1.Query1.fieldbyName('CHCODCLI').AsFloat;
   mChT_NomBco_Ori := DM1.Query1.fieldbyName('CHNOMCTA').AsString;
   mChT_Nomcli_Ori := DM1.Query1.fieldbyName('CRAZAO').AsString;
   result:=true
   end
else
   result:=false;
end;

function TFrm_AcCP.fAcCrTotaldup(ptipo: Integer): Real;
var
i: Integer;
mtotal: Real;
begin
mtotal:=0;
for i:=1 to STG_DS.RowCount-1 do
   begin
   if Trim(STG_DS.Cells[mds_nomfor,i])='' then
      continue;
   if STG_DS.Cells[mds_codfor,i]='5' then
      mtotal:=mtotal-valFloat(STG_DS.Cells[mds_valrec,i])
   else
      mtotal:=mtotal+valfloat(STG_DS.Cells[mds_valrec,i]);
   end;
result:=mtotal;

end;

function TFrm_ACCP.fAcCrTotalFP(ptipo: Integer): Real;
var
i: Integer;
mtotal: Real;
begin
mtotal:=0;
for i:=1 to STG_CHQ.RowCount do
   begin
   if Trim(STG_CHQ.Cells[mchq_nomfp,i])='' then
      continue;
   DM1.Qr_FP.Locate('FPCODIGO',valFloat(STG_CHQ.Cells[mchq_forma,i]),[]);
   if DM1.Qr_FPFPTIPO.Value=0 then
      mtotal:=mtotal+ValFloat(STG_CHQ.Cells[mchq_valor,i])
   else
      mtotal:=mtotal-ValFloat(STG_CHQ.Cells[mchq_valor,i]);
   end;
result:=mtotal;

end;



function fDebitaChqTerc(pGrid: Integer): Boolean;
begin
// inibe o cc e dep do cheque
{if flparldr(0,'CADDAR8') then
   begin
   mdesc_mov:='Chq Repassado: No. '+Frm_ACCP.STG_CHQ.Cells[mchq_numchq,pGrid];
   mcodccu:=DM1.Par_LDRCODCC.Value;
   mcoddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      mnomccu:=DM1.Tb_CCUCCNOME.Value;
      mnatdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;     }
mcodldr:=fCriarLDR(codemp,
                   ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_valor,pGrid]) // Valor previsto
                   ,ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_valor,pGrid]) // Valor Real
                   ,ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_codfor,pGrid])  // Codigo Cliente
                   ,DM1.Qr_FPFPVINCULO.Value
                   ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]) // data prevista
                   ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]) // data real
                   ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid])  // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,'CH-'+Frm_ACCP.STG_CHQ.Cells[mchq_numchq,pGrid]
                  ,DM1.Qr_FPFPDESC.AsString
                  ,'CL'
                  , Frm_ACCP.STG_CHQ.Cells[mchq_nomcai,pGrid] // ,pldr_nombco
            ,mnomdep
            ,mnomccu
            ,Frm_ACCP.STG_CHQ.Cells[mchq_emitente,pGrid] // nome do cliente
            ,Frm_ACCP.STG_DS.Cells[mds_obs,1] //observação da duplicata
            ,1 //locdep
            ,Valint(Frm_ACCP.STG_CHQ.Cells[mchq_banco_ori,pGrid])
            ,lotmov
            ,0 // status
            ,05); // origem

result:=true;
end;



function fCreditaNC(pGrid: Integer): Boolean;
var
mNumdup: Real;
mParc: String;
begin


IF flparldr(0,'CADDAPT') then
   begin
   mcodccu:=DM1.Par_LDRCODCC.Value;
   mcoddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      mnomccu:=DM1.Tb_CCUCCNOME.Value;
      mnatdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   mNumdup:=fSonumero(Frm_ACCP.STG_CHQ.Cells[mchq_numchq,pGrid]);
   if mNumdup=0 THEN
      mNumdup:=ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_codfor,pGrid]);
   mdesc_mov:='Nota de Credito No. '+FloatToStr(mNumdup);

   mParc:='A';
   mcodldr:=fCriarLDR(codemp,
                         0, // Valor Real
//                      ,ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_valor,pGrid]) // Valor Real

                      ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_valor,pGrid]) // Valor previsto
                      ,ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_codfor,pGrid])  // Codigo Cliente
                      ,DM1.Qr_FPFPVINCULO.Value
                      ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]) // data prevista
                      ,pdatanula // data real
//                      ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]) // data real
                      ,StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid])  // data Referencia
                     ,pdatanula // data de alteracao
                     ,mcodccu
                     ,mcoddep
                     ,mnatdc
                     ,mdesc_mov
                     ,'CH-'+Frm_ACCP.STG_CHQ.Cells[mchq_numchq,pGrid]
                     ,DM1.Qr_FPFPDESC.AsString
                     ,'FR'
                     , Frm_ACCP.STG_CHQ.Cells[26,pGrid] // ,pldr_nombco
               ,mnomdep
               ,mnomccu
               ,Frm_ACCP.STG_CHQ.Cells[mchq_emitente,pGrid] // nome do cliente
               ,Frm_ACCP.STG_DS.Cells[mds_obs,1] //observação da duplicata
               ,1 //locdep
               ,Valint(Frm_ACCP.STG_CHQ.Cells[mchq_banco_ori,pGrid])
               ,lotmov
               ,0 // status
               ,05); // origem



   While true do
      begin
      if flcaddap(6,codemp,0,FloatToStr(mnumdup),mParc,
         fDeixanum(Frm_ACCP.STG_CHQ.Cells[mchq_codfor,pGrid]),FormatDateTime(fdt2,
         StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid])),'5','') then
         mParc:=CHAR(INTEGER(mParc)+1)
      else
         break
      end;
   DM1.Tb_CP.Append;
   DM1.Tb_CPCACODEMP.Value:=codemp;
   DM1.Tb_CPCANUMERO.Value:=mNumdup;
   DM1.Tb_CPCADESD.Value  :=mParc;
   DM1.Tb_CPCADUP.Value   :=5;

   DM1.Tb_CPCANUMPARC.Value  :=1;
   DM1.Tb_CPCAQTDPARC.Value  :=1;
   DM1.Tb_CPCACODFOR.Value   :=ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_codfor,pGrid]);
   DM1.Tb_CPCADTEMIS.Value   :=StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]);
   DM1.Tb_CPCAVALOR.Value    :=ValFloat(Frm_ACCP.STG_CHQ.Cells[mchq_valor,pGrid]);
   DM1.Tb_CPCADTVCTO.Value   :=StrtoDate(Frm_ACCP.STG_CHQ.Cells[mchq_dtcx,pGrid]);
   DM1.Tb_CPCACODLDR.Value   :=mCodLdr;
   DM1.Tb_CPCAOBS.AsString   :='Gerado Automaticamente. Troco';
   DM1.Tb_CPCALOTE.Value     :=mloteBx;
   DM1.Tb_CP.Post;
   end;
result:=true;
end;

procedure TFrm_AcCP.FormKeyDown(Sender: TObject; var Key: Word;
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

end.


