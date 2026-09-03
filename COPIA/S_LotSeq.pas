unit S_LotSeq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,S_DM1,db,dbtables,func,S_DM4,lerarq,
  Mask;

type
  TFrm_LotSeq = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    Label6: TLabel;
    SB_NUMPED: TSpeedButton;
    G_NUMPED: TSpeedButton;
    G_NUMPF: TSpeedButton;
    SB_NUMPF: TSpeedButton;
    SB_CODLDR: TSpeedButton;
    G_CODLDR: TSpeedButton;
    G_CODCHQCLI: TSpeedButton;
    SB_CODCHQCLI: TSpeedButton;
    SB_NUMLIC: TSpeedButton;
    G_NUMLIC: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    SB_LOTBCP: TSpeedButton;
    G_LOTBCP: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    SB_LOTBCR: TSpeedButton;
    G_LOTBCR: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    SB_CODCHQ_PE: TSpeedButton;
    G_CODCHQ_PE: TSpeedButton;
    Label14: TLabel;
    Label16: TLabel;
    SB_NUMOS: TSpeedButton;
    G_NUMOS: TSpeedButton;
    Label21: TLabel;
    Label24: TLabel;
    SB_NUMAJU: TSpeedButton;
    G_NUMAJU: TSpeedButton;
    Label28: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    NUMPED_LS: TEdit;
    NUMPED: TEdit;
    NUMPF: TEdit;
    CODLDR: TEdit;
    CODCHQCLI: TEdit;
    NUMLIC: TEdit;
    NUMPF_LS: TEdit;
    CODLDR_LS: TEdit;
    CODCHQCLI_LS: TEdit;
    NUMLIC_LS: TEdit;
    LOTBCP_LS: TEdit;
    LOTBCP: TEdit;
    LOTBCR_LS: TEdit;
    LOTBCR: TEdit;
    CODCHQ_PE_LS: TEdit;
    CODCHQ_PE: TEdit;
    CB_LS_NUMPED: TCheckBox;
    CB_LS_NUMPF: TCheckBox;
    LOTOS_LS: TEdit;
    NUMOS: TEdit;
    LOTAJU_LS: TEdit;
    NUMAJU: TEdit;
    SERIENF: TEdit;
    MDTNF_S1: TMaskEdit;
    SERIENF2: TEdit;
    MDTNF_S2: TMaskEdit;
    TabSheet2: TTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    SB_CHAVFAB: TSpeedButton;
    G_CHAVFAB: TSpeedButton;
    G_CHAVENV: TSpeedButton;
    SB_CHAVENV: TSpeedButton;
    CHAVFAB_LS: TEdit;
    CHAVFAB: TEdit;
    CHAVENV: TEdit;
    CHAVENV_LS: TEdit;
    TabSheet3: TTabSheet;
    Label15: TLabel;
    SB_CODFPCR: TSpeedButton;
    G_CODFPCR: TSpeedButton;
    Label17: TLabel;
    SB_CFPCRDUP: TSpeedButton;
    G_CFPCRDUP: TSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    SB_CODFPCP: TSpeedButton;
    G_CODFPCP: TSpeedButton;
    G_CFPCPDUP: TSpeedButton;
    SB_CFPCPDUP: TSpeedButton;
    Label20: TLabel;
    SB_CHACREM: TSpeedButton;
    G_CHACREM: TSpeedButton;
    Label25: TLabel;
    SB_LOTELBR: TSpeedButton;
    G_LOTELBR: TSpeedButton;
    CODFPCR: TEdit;
    CFPCRDUP: TEdit;
    CFPCPDUP: TEdit;
    CODFPCP: TEdit;
    CHACREM: TEdit;
    LOTELBR: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure NUMPED_LSExit(Sender: TObject);
    procedure NUMPEDExit(Sender: TObject);
    procedure SB_NUMPEDClick(Sender: TObject);
    procedure G_NUMPEDClick(Sender: TObject);
    procedure NUMPED_LSChange(Sender: TObject);
    procedure NUMPEDChange(Sender: TObject);
    procedure NUMPF_LSChange(Sender: TObject);
    procedure NUMPFChange(Sender: TObject);
    procedure CODLDR_LSChange(Sender: TObject);
    procedure CODLDRChange(Sender: TObject);
    procedure CODCHQCLI_LSChange(Sender: TObject);
    procedure CODCHQCLIChange(Sender: TObject);
    procedure CODCHQ_PE_LSChange(Sender: TObject);
    procedure CODCHQ_PEChange(Sender: TObject);
    procedure NUMLIC_LSChange(Sender: TObject);
    procedure NUMLICChange(Sender: TObject);
    procedure LOTBCP_LSChange(Sender: TObject);
    procedure LOTBCPChange(Sender: TObject);
    procedure LOTBCR_LSChange(Sender: TObject);
    procedure LOTBCRChange(Sender: TObject);
    procedure CHAVFAB_LSChange(Sender: TObject);
    procedure CHAVFABChange(Sender: TObject);
    procedure CHAVENV_LSChange(Sender: TObject);
    procedure CHAVENVChange(Sender: TObject);
    procedure CODFPCRChange(Sender: TObject);
    procedure CFPCRDUPChange(Sender: TObject);
    procedure NUMPF_LSExit(Sender: TObject);
    procedure CODLDR_LSExit(Sender: TObject);
    procedure NUMPFExit(Sender: TObject);
    procedure CODLDRExit(Sender: TObject);
    procedure CODCHQCLI_LSExit(Sender: TObject);
    procedure CODCHQCLIExit(Sender: TObject);
    procedure CODCHQ_PE_LSExit(Sender: TObject);
    procedure CODCHQ_PEExit(Sender: TObject);
    procedure NUMLIC_LSExit(Sender: TObject);
    procedure NUMLICExit(Sender: TObject);
    procedure LOTBCP_LSExit(Sender: TObject);
    procedure LOTBCPExit(Sender: TObject);
    procedure LOTBCR_LSExit(Sender: TObject);
    procedure LOTBCRExit(Sender: TObject);
    procedure CHAVFAB_LSExit(Sender: TObject);
    procedure CHAVFABExit(Sender: TObject);
    procedure CHAVENV_LSExit(Sender: TObject);
    procedure CHAVENVExit(Sender: TObject);
    procedure CODFPCRExit(Sender: TObject);
    procedure CFPCRDUPExit(Sender: TObject);
    procedure SB_NUMPFClick(Sender: TObject);
    procedure G_NUMPFClick(Sender: TObject);
    procedure SB_CODLDRClick(Sender: TObject);
    procedure G_CODLDRClick(Sender: TObject);
    procedure SB_CODCHQCLIClick(Sender: TObject);
    procedure G_CODCHQCLIClick(Sender: TObject);
    procedure SB_CODCHQ_PEClick(Sender: TObject);
    procedure G_CODCHQ_PEClick(Sender: TObject);
    procedure SB_NUMLICClick(Sender: TObject);
    procedure G_NUMLICClick(Sender: TObject);
    procedure SB_LOTBCPClick(Sender: TObject);
    procedure G_LOTBCPClick(Sender: TObject);
    procedure SB_LOTBCRClick(Sender: TObject);
    procedure G_LOTBCRClick(Sender: TObject);
    procedure SB_CHAVFABClick(Sender: TObject);
    procedure G_CHAVFABClick(Sender: TObject);
    procedure G_CHAVENVClick(Sender: TObject);
    procedure SB_CHAVENVClick(Sender: TObject);
    procedure SB_CODFPCRClick(Sender: TObject);
    procedure G_CODFPCRClick(Sender: TObject);
    procedure G_CFPCRDUPClick(Sender: TObject);
    procedure SB_CFPCRDUPClick(Sender: TObject);
    procedure CODFPCPExit(Sender: TObject);
    procedure CODFPCPChange(Sender: TObject);
    procedure SB_CODFPCPClick(Sender: TObject);
    procedure G_CODFPCPClick(Sender: TObject);
    procedure CFPCPDUPExit(Sender: TObject);
    procedure CFPCPDUPChange(Sender: TObject);
    procedure SB_CFPCPDUPClick(Sender: TObject);
    procedure G_CFPCPDUPClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SB_NUMOSClick(Sender: TObject);
    procedure G_NUMOSClick(Sender: TObject);
    procedure CHACREMChange(Sender: TObject);
    procedure CHACREMExit(Sender: TObject);
    procedure SB_CHACREMClick(Sender: TObject);
    procedure G_CHACREMClick(Sender: TObject);
    procedure LOTAJU_LSChange(Sender: TObject);
    procedure LOTOS_LSChange(Sender: TObject);
    procedure LOTOS_LSExit(Sender: TObject);
    procedure LOTAJU_LSExit(Sender: TObject);
    procedure NUMOSChange(Sender: TObject);
    procedure NUMOSExit(Sender: TObject);
    procedure SB_NUMAJUClick(Sender: TObject);
    procedure G_NUMAJUClick(Sender: TObject);
    procedure SB_LOTELBRClick(Sender: TObject);
    procedure G_LOTELBRClick(Sender: TObject);
    procedure LOTELBRExit(Sender: TObject);
    procedure LOTELBRChange(Sender: TObject);
    procedure SERIENFExit(Sender: TObject);
    procedure SERIENF2Exit(Sender: TObject);
    procedure MDTNF_S1Exit(Sender: TObject);
    procedure MDTNF_S2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LotSeq: TFrm_LotSeq;
  mchave: Integer;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_LotSeq.FormCreate(Sender: TObject);
begin
flcadpar01(0,0,'1');
NUMPED_LS.Text   :=DM4.Tb_Par01PNUMPED_LS.AsString;
NUMPED.Text      :=DM4.Tb_Par01PNUMPED.AsString;
NUMPF_LS.Text    :=DM4.Tb_Par01PNUMPF_LS.AsString;
NUMPF.Text       :=DM4.Tb_Par01PNUMPF.AsString;
CODLDR_LS.Text   :=DM4.Tb_Par01PCODLDR_LS.AsString;
CODLDR.Text      :=DM4.Tb_Par01PCODLDR.AsString;
CODCHQCLI_LS.Text:=DM4.Tb_Par01PCODCHQCLI_LS.AsString;
CODCHQCLI.Text   :=DM4.Tb_Par01PCODCHQCLI.AsString;
CODCHQ_PE_LS.Text:=DM4.Tb_Par01PCODCHQ_PE_LS.AsString;
CODCHQ_PE.Text   :=DM4.Tb_Par01PCODCHQ_PE.AsString;
NUMLIC_LS.Text   :=DM4.Tb_Par01PNUMLIC_LS.AsString;
NUMLIC.Text      :=DM4.Tb_Par01PNUMLIC.AsString;
LOTBCP_LS.Text   :=DM4.Tb_Par01PLOTBCP_LS.AsString;
LOTBCP.Text      :=DM4.Tb_Par01PLOTBCP.AsString;
LOTBCR_LS.Text   :=DM4.Tb_Par01PLOTBCR_LS.AsString;
LOTBCR.Text      :=DM4.Tb_Par01PLOTBCR.AsString;

LOTOS_LS.Text    :=DM4.Tb_Par01PNUMOS_LS.AsString;
NUMOS.Text       :=DM4.Tb_Par01PNUMOS.AsString;
LOTAJU_LS.Text   :=DM4.Tb_Par01PCADAJU_LS.AsString;
NUMAJU.Text      :=DM4.Tb_Par01PCADAJU.AsString;
CHAVFAB_LS.Text  :=DM4.Tb_Par01PCHAVFAB_LS.AsString;
CHAVFAB.Text     :=DM4.Tb_Par01PCHAVFAB.AsString;
CHAVENV_LS.Text  :=DM4.Tb_Par01PCHAVENV_LS.AsString;
CHAVENV.Text     :=DM4.Tb_Par01PCHAVENV.AsString;
CODFPCR.Text     :=DM4.Tb_Par01PCODFPCR.AsString;
CFPCRDUP.Text    :=DM4.Tb_Par01PCFPCRDUP.AsString;
CODFPCP.Text     :=DM4.Tb_Par01PCODFPCP.AsString;
CFPCPDUP.Text    :=DM4.Tb_Par01PCFPCPDUP.AsString;
CHACREM.Text     :=DM4.Tb_par01PCHACREM.AsString;
CB_LS_NUMPED.Checked:=DM1.Tb_PargerPLS_NUMPED.Value=1;
CB_LS_NUMPF.Checked :=DM1.Tb_PargerPLS_NUMPF.Value=1;
LOTELBR.Text        :=DM4.Tb_Par01PLOTELBR.AsString;

end;

procedure TFrm_LotSeq.NUMPED_LSExit(Sender: TObject);
begin
NUMPED_LS.Text:=fdeixaNum(NUMPED_LS.Text);
end;

procedure TFrm_LotSeq.NUMPEDExit(Sender: TObject);
begin
NUMPED.Text:=fdeixanum(NUMPED.Text);
end;

procedure TFrm_LotSeq.SB_NUMPEDClick(Sender: TObject);
var
query_temp: tQuery;
begin
query_temp:= tQuery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select max(P1CHAVE) from CADP01 where P1LOTSEQ=0'+Trim(NUMPED_LS.Text));
query_temp.Open;
if query_temp.IsEmpty then
   mchave:=1
else
   mchave:=query_temp.Fields[0].AsInteger+1;

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select max(P2CHAVE) from CADP02 where P2LOTSEQ=0'+Trim(NUMPED_LS.Text));
query_temp.Open;
if not query_temp.IsEmpty then
   begin
   if query_temp.Fields[0].AsInteger+1>mchave then
      mchave:=query_temp.Fields[0].AsInteger+1;
   end;
freeandnil(query_temp);


NUMPED.Text:=IntTostr(mchave);
G_NUMPED.Enabled:=true;


end;

procedure TFrm_LotSeq.G_NUMPEDClick(Sender: TObject);
var
query_temp: tQuery;
mChave_lida: Real;
begin
if ValInt(NUMPED.Text)<=0 then
   begin
   MessageDlg('O número do Pedido tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPED.SetFocus;
   exit;
   end;


query_temp:= tQuery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select max(P1CHAVE) from CADP01 where P1LOTSEQ=0'+Trim(NUMPED_LS.Text));
query_temp.Open;
if query_temp.IsEmpty then
   mChave_lida:=1
else
   mChave_lida:=query_temp.Fields[0].AsInteger+1;

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select max(P2CHAVE) from CADP02 where P2LOTSEQ=0'+Trim(NUMPED_LS.Text));
query_temp.Open;
if not query_temp.IsEmpty then
   begin
   if query_temp.Fields[0].AsInteger+1>mChave_lida then
      mChave_lida:=query_temp.Fields[0].AsInteger+1;
   end;



if ValInt(NUMPED.Text)<mChave_lida then
   begin
   if Application.MessageBox(pchar('Número do Proximo pedido tem que ser maior ou igual a: '+FloatToStr(mchave_lida)+' continuar mesmo assim?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      NUMPED.SetFocus;
      exit;
      end;
   end;      
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQl.add('Update CADPAR set PNUMPED_LS=0'+Trim(NUMPED_LS.Text)
                  +', PNUMPED=0'+Trim(NUMPED.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,183,'Frm_LotSeq','CADPAR');
   end;
//fSequenceTestaeAjusta('PEDVEN_2012',valint(NUMPED.Text));
fSequenceTestaeAjusta('PEDVEN_0',valint(NUMPED.Text));

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQl.add('Update PARGER set PLS_NUMPED=0'+iif(CB_LS_NUMPED.Checked,'1','0'));
Try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,183,'Frm_LotSeq','PARGER');
   end;
freeandnil(query_temp);


G_NUMPED.Enabled:=False;

end;

procedure TFrm_LotSeq.NUMPED_LSChange(Sender: TObject);
begin
if NUMPED_LS.Modified then G_NUMPED.Enabled:=true;
end;

procedure TFrm_LotSeq.NUMPEDChange(Sender: TObject);
begin
if NUMPED.Modified then G_NUMPED.Enabled:=true;
end;

procedure TFrm_LotSeq.NUMPF_LSChange(Sender: TObject);
begin
if NUMPF_LS.Modified then G_NUMPF.Enabled:=true;

end;

procedure TFrm_LotSeq.NUMPFChange(Sender: TObject);
begin
if NUMPF.Modified then G_NUMPF.Enabled:=true;

end;

procedure TFrm_LotSeq.CODLDR_LSChange(Sender: TObject);
begin
if CODLDR_LS.Modified then G_CODLDR.Enabled:=true;

end;

procedure TFrm_LotSeq.CODLDRChange(Sender: TObject);
begin
if CODLDR.Modified then G_CODLDR.Enabled:=true;

end;

procedure TFrm_LotSeq.CODCHQCLI_LSChange(Sender: TObject);
begin
if CODCHQCLI_LS.Modified then G_CODCHQCLI.Enabled:=true;

end;

procedure TFrm_LotSeq.CODCHQCLIChange(Sender: TObject);
begin
if CODCHQCLI.Modified then G_CODCHQCLI.Enabled:=true;

end;

procedure TFrm_LotSeq.CODCHQ_PE_LSChange(Sender: TObject);
begin
if CODCHQ_PE_LS.Modified then G_CODCHQ_PE.Enabled:=true;

end;

procedure TFrm_LotSeq.CODCHQ_PEChange(Sender: TObject);
begin
if CODCHQ_PE.Modified then G_CODCHQ_PE.Enabled:=true;

end;

procedure TFrm_LotSeq.NUMLIC_LSChange(Sender: TObject);
begin
if NUMLIC_LS.Modified then G_NUMLIC.Enabled:=true;

end;

procedure TFrm_LotSeq.NUMLICChange(Sender: TObject);
begin
if NUMLIC.Modified then G_NUMLIC.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTBCP_LSChange(Sender: TObject);
begin
if LOTBCP_LS.Modified then G_LOTBCP.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTBCPChange(Sender: TObject);
begin
if LOTBCP.Modified then G_LOTBCP.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTBCR_LSChange(Sender: TObject);
begin
if LOTBCR_LS.Modified then G_LOTBCR.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTBCRChange(Sender: TObject);
begin
if LOTBCR.Modified then G_LOTBCR.Enabled:=true;

end;

procedure TFrm_LotSeq.CHAVFAB_LSChange(Sender: TObject);
begin
if CHAVFAB_LS.Modified then G_CHAVFAB.Enabled:=true;

end;

procedure TFrm_LotSeq.CHAVFABChange(Sender: TObject);
begin
if CHAVFAB.Modified then G_CHAVFAB.Enabled:=true;

end;

procedure TFrm_LotSeq.CHAVENV_LSChange(Sender: TObject);
begin
if CHAVENV_LS.Modified then G_CHAVENV.Enabled:=true;

end;

procedure TFrm_LotSeq.CHAVENVChange(Sender: TObject);
begin
if CHAVENV.Modified then G_CHAVENV.Enabled:=true;

end;

procedure TFrm_LotSeq.CODFPCRChange(Sender: TObject);
begin
if CODFPCR.Modified then G_CODFPCR.Enabled:=true;

end;

procedure TFrm_LotSeq.CFPCRDUPChange(Sender: TObject);
begin
if CFPCRDUP.Modified then G_CFPCRDUP.Enabled:=true;

end;

procedure TFrm_LotSeq.NUMPF_LSExit(Sender: TObject);
begin
NUMPF_LS.Text:=fdeixaNum(NUMPF_LS.Text);

end;

procedure TFrm_LotSeq.CODLDR_LSExit(Sender: TObject);
begin
CODLDR_LS.Text:=fdeixaNum(CODLDR_LS.Text);

end;

procedure TFrm_LotSeq.NUMPFExit(Sender: TObject);
begin
NUMPF.Text:=fdeixaNum(NUMPF.Text);

end;

procedure TFrm_LotSeq.CODLDRExit(Sender: TObject);
begin
CODLDR.Text:=fdeixaNum(CODLDR.Text);

end;

procedure TFrm_LotSeq.CODCHQCLI_LSExit(Sender: TObject);
begin
CODCHQCLI_LS.Text:=fdeixaNum(CODCHQCLI_LS.Text);

end;

procedure TFrm_LotSeq.CODCHQCLIExit(Sender: TObject);
begin
CODCHQCLI.Text:=fdeixaNum(CODCHQCLI.Text);

end;

procedure TFrm_LotSeq.CODCHQ_PE_LSExit(Sender: TObject);
begin
CODCHQ_PE_LS.Text:=fdeixaNum(CODCHQ_PE_LS.Text);

end;

procedure TFrm_LotSeq.CODCHQ_PEExit(Sender: TObject);
begin
CODCHQ_PE.Text:=fdeixaNum(CODCHQ_PE.Text);

end;

procedure TFrm_LotSeq.NUMLIC_LSExit(Sender: TObject);
begin
NUMLIC_LS.Text:=fdeixaNum(NUMLIC_LS.Text);

end;

procedure TFrm_LotSeq.NUMLICExit(Sender: TObject);
begin
NUMLIC.Text:=fdeixaNum(NUMLIC.Text);

end;

procedure TFrm_LotSeq.LOTBCP_LSExit(Sender: TObject);
begin
LOTBCP_LS.Text:=fdeixaNum(LOTBCP_LS.Text);

end;

procedure TFrm_LotSeq.LOTBCPExit(Sender: TObject);
begin
LOTBCP.Text:=fdeixaNum(LOTBCP.Text);

end;

procedure TFrm_LotSeq.LOTBCR_LSExit(Sender: TObject);
begin
LOTBCR_LS.Text:=fdeixaNum(LOTBCR_LS.Text);

end;

procedure TFrm_LotSeq.LOTBCRExit(Sender: TObject);
begin
LOTBCR.Text:=fdeixaNum(LOTBCR.Text);

end;

procedure TFrm_LotSeq.CHAVFAB_LSExit(Sender: TObject);
begin
CHAVFAB_LS.Text:=fdeixaNum(CHAVFAB_LS.Text);

end;

procedure TFrm_LotSeq.CHAVFABExit(Sender: TObject);
begin
CHAVFAB.Text:=fdeixaNum(CHAVFAB.Text);

end;

procedure TFrm_LotSeq.CHAVENV_LSExit(Sender: TObject);
begin
CHAVENV_LS.Text:=fdeixaNum(CHAVENV_LS.Text);

end;

procedure TFrm_LotSeq.CHAVENVExit(Sender: TObject);
begin
CHAVENV.Text:=fdeixaNum(CHAVENV.Text);

end;

procedure TFrm_LotSeq.CODFPCRExit(Sender: TObject);
begin
CODFPCR.Text:=fdeixaNum(CODFPCR.Text);

end;

procedure TFrm_LotSeq.CFPCRDUPExit(Sender: TObject);
begin
CFPCRDUP.Text:=fdeixaNum(CFPCRDUP.Text);

end;

procedure TFrm_LotSeq.SB_NUMPFClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(PF1CHAVE) from CADPF1 where PF1LOTSEQ=0'+Trim(NUMPF_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   begin
   DM1.Query1.SQL.Add(' and PF1CODEMP=0'+IntToStr(codemp));
//   DM1.Query1.SQL.Add(' and (PF1CODEMP=0'+IntToStr(codemp)
 //                    +' or PF1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');

   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

NUMPF.Text:=IntTostr(mchave);
G_NUMPF.Enabled:=true;


end;

procedure TFrm_LotSeq.G_NUMPFClick(Sender: TObject);
begin
if ValInt(NUMPF.Text)<=0 then
   begin
   MessageDlg('O número do Pedido de fornecedor tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPF.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(PF1CHAVE) from CADPF1 where PF1LOTSEQ=0'+Trim(NUMPF_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   begin
   DM1.Query1.SQL.Add(' and PF1CODEMP=0'+IntToStr(codemp));
//   DM1.Query1.SQL.Add(' and (PF1CODEMP=0'+IntToStr(codemp)
//                     +' or PF1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');

   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

if ValInt(NUMPF.Text)<mchave then
   begin
   MessageDlg('Número do Proximo pedido de Fornecedor tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   NUMPED.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PNUMPF_LS=0'+Trim(NUMPF_LS.Text)
                  +', PNUMPF=0'+Trim(NUMPF.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,560,'Frm_LotSeq','CADPAR');
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update PARGER set PLS_NUMPF=0'+iif(CB_LS_NUMPF.Checked,'1','0'));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,183,'Frm_LotSeq','PARGER');
   end;
fSequenceTestaeAjusta('PEDFOR_0',valint(numpf.text));


G_NUMPF.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_CODLDRClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CODLDR) from CADLDR where LOTSEQ=0'+Trim(CODLDR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CODEMP=0'+IntToStr(codemp)
                     +' or CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;


DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

CODLDR.Text:=IntTostr(mchave);
G_CODLDR.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CODLDRClick(Sender: TObject);
begin
if ValInt(CODLDR.Text)<=0 then
   begin
   MessageDlg('O número do Proximo Lançamento do Caixa tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPF.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CODLDR) from CADLDR where LOTSEQ=0'+Trim(CODLDR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CODEMP=0'+IntToStr(codemp)
                     +' or CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;


if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

if ValInt(CODLDR.Text)<mchave then
   begin
   MessageDlg('Número do Proximo Lançamento do Fluxo de Caixa ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   CODLDR.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCODLDR_LS=0'+Trim(CODLDR_LS.Text)
                  +', PCODLDR=0'+Trim(CODLDR.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,609,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODLDR_2012',valint(CODLDR.Text));

G_CODLDR.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_CODCHQCLIClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CHSEQ) from CADCHQ where CHLOTSEQ=0'+Trim(CODCHQCLI_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CHCODEMP=0'+IntToStr(codemp)
                     +' or CHCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;


DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

CODCHQCLI.Text:=IntTostr(mchave);
G_CODCHQCLI.Enabled:=true;


end;

procedure TFrm_LotSeq.G_CODCHQCLIClick(Sender: TObject);
begin
if ValInt(CODCHQCLI.Text)<=0 then
   begin
   MessageDlg('O número do Proximo Cheque de Clientes tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPF.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CHSEQ) from CADCHQ where CHLOTSEQ=0'+Trim(CODCHQCLI_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CHCODEMP=0'+IntToStr(codemp)
                     +' or CHCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;

if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;


if ValInt(CODCHQCLI.Text)<mchave then
   begin
   MessageDlg('Número do Proximo Lançamento de Cheques de Clientes tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   CODCHQCLI.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCODCHQCLI_LS=0'+Trim(CODCHQCLI_LS.Text)
                  +', PCODCHQCLI=0'+Trim(CODCHQCLI.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,661,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODCHQCLI_2012',valint(CODCHQCLI.Text));

G_CODCHQCLI.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_CODCHQ_PEClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CHSEQ) from CADCHCP where CHLOTSEQ=0'+Trim(CODCHQCLI_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CHCODEMP=0'+IntToStr(codemp)
                     +' or CHCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

CODCHQ_PE.Text:=IntTostr(mchave);
G_CODCHQ_PE.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CODCHQ_PEClick(Sender: TObject);
begin
if ValInt(CODCHQ_PE.Text)<=0 then
   begin
   MessageDlg('O número do Proximo Cheque Emitido tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPF.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CHSEQ) from CADCHCP where CHLOTSEQ=0'+Trim(CODCHQCLI_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
   begin
   DM1.Query1.SQL.Add(' and (CHCODEMP=0'+IntToStr(codemp)
                     +' or CHCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;



if ValInt(CODCHQ_PE.Text)<mchave then
   begin
   MessageDlg('Número do Proximo Lançamento de Cheque Emitido tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   CODCHQ_PE.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCODCHQ_PE_LS=0'+Trim(CODCHQ_PE_LS.Text)
                  +', PCODCHQ_PE=0'+Trim(CODCHQ_PE.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,712,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODCHQ_PE_2012',valint(CODCHQ_PE.Text));

G_CODCHQ_PE.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_NUMLICClick(Sender: TObject);
begin


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(LC1_CHAVE) from CADLC1 where LC1_LOTSEQ=0'+Trim(NUMLIC_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' and (LC1_CODEMP=0'+IntToStr(codemp)
                     +' or LC1_CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if (DM1.Query1.eof) or (DM1.Query1.Fields[0].IsNull) then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

NUMLIC.Text:=IntTostr(mchave);
G_NUMLIC.Enabled:=true;

end;

procedure TFrm_LotSeq.G_NUMLICClick(Sender: TObject);
begin
if ValInt(NUMLIC.Text)<=0 then
   begin
   MessageDlg('O número da Próxima Licitação tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMPF.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(LC1_CHAVE) from CADLC1 where LC1_LOTSEQ=0'+Trim(NUMLIC_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' and (LC1_CODEMP=0'+IntToStr(codemp)
                     +' or LC1_CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;



if ValInt(NUMLIC.Text)<DM1.Query1.Fields[0].AsInteger then
   begin
   MessageDlg('Número da próxima licitação tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   NUMLIC.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PNUMLIC_LS=0'+Trim(NUMLIC_LS.Text)
                  +', PNUMLIC=0'+Trim(NUMLIC.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,763,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('NUMLIC_2012',valint(NUMLIC.Text));

G_NUMLIC.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_LOTBCPClick(Sender: TObject);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

LOTBCP.Text:=IntTostr(mchave);
G_LOTBCP.Enabled:=true;

end;

procedure TFrm_LotSeq.G_LOTBCPClick(Sender: TObject);
begin
if ValInt(LOTBCP.Text)<=0 then
   begin
   MessageDlg('O número do Próximo lote de Baixa de Dup.a Pagar tem que ser maior que zero!',mtWarning,[mbOk],0);
   LOTBCP.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;



if ValInt(LOTBCP.Text)<DM1.Query1.Fields[0].AsInteger then
   begin
   MessageDlg('Número do Proximo Lote de Baixa de Dupl.A Pagar tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   LOTBCP.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PLOTBCP_LS=0'+Trim(LOTBCP_LS.Text)
                  +', PLOTBCP=0'+Trim(LOTBCP.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,817,'Frm_LotSeq','CADPAR');
   end;

fSequenceTestaeAjusta('CODFPCP_2012',valint(LOTBCP.Text));

G_LOTBCP.Enabled:=False;



end;

procedure TFrm_LotSeq.SB_LOTBCRClick(Sender: TObject);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;

if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
LOTBCR.Text:=IntTostr(mchave);
G_LOTBCR.Enabled:=true;

end;

procedure TFrm_LotSeq.G_LOTBCRClick(Sender: TObject);
begin
if ValInt(LOTBCP.Text)<=0 then
   begin
   MessageDlg('O número do Próximo lote de Baixa de Dup.a Receber tem que ser maior que zero!',mtWarning,[mbOk],0);
   LOTBCP.SetFocus;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;

if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;


if ValInt(LOTBCR.Text)<DM1.Query1.Fields[0].AsInteger then
   begin
   MessageDlg('Número do Proximo Lote de Baixa de Dupl.A Receber tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   LOTBCR.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PLOTBCR_LS=0'+Trim(LOTBCR_LS.Text)
                  +', PLOTBCR=0'+Trim(LOTBCR.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,817,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODFPCR_2012',valint(LOTBCR.Text));

G_LOTBCR.Enabled:=False;

end;

procedure TFrm_LotSeq.SB_CHAVFABClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
if DM1.Tb_PargerPINDUSTRIA.Value=1 then
   begin
   DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where OP1_LOTSEQ=0'+fdeixanum(CHAVFAB_LS.Text));
   DM1.Query1.Open;
   if DM1.Query1.eof then
      mchave:=1
   else
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   CHAVFAB.Text:=IntTostr(mchave);
   end
else if DM1.Tb_PargerPINDUSTRIA.Value>1 then
   begin
   DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where OP1_LOTSEQ=0'+fdeixanum(CHAVFAB_LS.Text));
   DM1.Query1.Open;
   if DM1.Query1.eof then
      mchave:=1
   else
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   CHAVFAB.Text:=IntToStr(mchave);
   end
else
   begin
   MessageDlg('Programa não Configurado para Indústria!',mtWarning,[mbOk],0);
   exit;
   end;

G_CHAVFAB.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CHAVFABClick(Sender: TObject);
begin
if ValInt(CHAVFAB.Text)<=0 then
   begin
   MessageDlg('O número da Chave tem que ser maior que zero!',mtWarning,[mbOk],0);
   CHAVFAB.SetFocus;
   exit;
   end;

if DM1.Tb_PargerPINDUSTRIA.Value=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_FABENV=0 and OP1_LOTSEQ=0'+fdeixanum(CHAVFAB_LS.Text));
   DM1.Query1.Open;
   if DM1.Query1.eof then
      mchave:=1
   else
      mchave:=DM1.Query1.Fields[0].AsInteger+1;

   if ValInt(CHAVFAB.Text)<mchave then
      begin
      MessageDlg('O Numero de Sequencia da Ordem de Fabricação tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
      exit;
      end;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_FABENV=1 and OP1_LOTSEQ=0'+fdeixanum(CHAVFAB_LS.Text));
   DM1.Query1.Open;
   if DM1.Query1.eof then
      mchave:=1
   else
      mchave:=DM1.Query1.Fields[0].AsInteger+1;

   if ValInt(CHAVFAB.Text)<mchave then
      begin
      MessageDlg('O Numero de Sequencia da Ordem de Fabricação tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
      exit;
      end;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCHAVFAB_LS=0'+Trim(CHAVFAB_LS.Text)
                  +', PCHAVFAB=0'+Trim(CHAVFAB.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,950,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CHAVFAB_2012',valint(CHAVFAB.Text));

G_CHAVFAB.Enabled:=False;

end;

procedure TFrm_LotSeq.G_CHAVENVClick(Sender: TObject);
begin
if ValInt(CHAVENV.Text)<=0 then
   begin
   MessageDlg('O número da Chave de Envase tem que ser maior que zero!',mtWarning,[mbOk],0);
   CHAVENV.SetFocus;
   exit;
   end;

DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_FABENV=2 and OP1_LOTSEQ=0'+fdeixanum(CHAVENV_LS.Text));
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

if ValInt(CHAVENV.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia da Ordem de Envase tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCHAVENV_LS=0'+Trim(CHAVENV_LS.Text)
                  +', PCHAVENV=0'+Trim(CHAVENV.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,980,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CHAVENV_2012',valint(CHAVENV.Text));

G_CHAVENV.Enabled:=False;
end;

procedure TFrm_LotSeq.SB_CHAVENVClick(Sender: TObject);
begin
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_FABENV=2 and OP1_LOTSEQ=0'+fdeixanum(CHAVENV_LS.Text));
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
CHAVENV.Text:=IntTostr(mchave);
G_CHAVENV.Enabled:=true;

end;

procedure TFrm_LotSeq.SB_CODFPCRClick(Sender: TObject);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCRDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;



CODFPCR.Text:=InttoStr(mchave);
G_CODFPCR.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CODFPCRClick(Sender: TObject);
begin
if ValInt(CODFPCR.Text)<=0 then
   begin
   MessageDlg('O número de Sequencia do FPCR tem que ser maior que zero!',mtWarning,[mbOk],0);
   CODFPCR.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;

if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCRDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;


if ValInt(CODFPCR.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do FPCR tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCODFPCR=0'+Trim(CODFPCR.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1053,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODFPCR_2012',valint(CODFPCR.Text));

G_CODFPCR.Enabled:=False;


end;

procedure TFrm_LotSeq.G_CFPCRDUPClick(Sender: TObject);
begin
if ValInt(CFPCRDUP.Text)<=0 then
   begin
   MessageDlg('O número de Sequencia do CFPCRDUP tem que ser maior que zero!',mtWarning,[mbOk],0);
   CFPCRDUP.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCRDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;


if ValInt(CFPCRDUP.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do FPCRDUP tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCFPCRDUP=0'+Trim(CFPCRDUP.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1053,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CFPCRDUP_2012',valint(CFPCRDUP.Text));

G_CFPCRDUP.Enabled:=False;


end;

procedure TFrm_LotSeq.SB_CFPCRDUPClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCRDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCR where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;

CFPCRDUP.Text:=IntToStr(mchave);
G_CFPCRDUP.Enabled:=true;

end;

procedure TFrm_LotSeq.CODFPCPExit(Sender: TObject);
begin
CODFPCP.Text:=fdeixaNum(CODFPCP.Text);

end;

procedure TFrm_LotSeq.CODFPCPChange(Sender: TObject);
begin
if CODFPCP.Modified then G_CODFPCP.Enabled:=true;

end;

procedure TFrm_LotSeq.SB_CODFPCPClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;

if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCPDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;
CODFPCP.Text:=IntTostr(mchave);
G_CODFPCP.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CODFPCPClick(Sender: TObject);
begin
if ValInt(CODFPCP.Text)<=0 then
   begin
   MessageDlg('O número de Sequencia do FPCP tem que ser maior que zero!',mtWarning,[mbOk],0);
   CODFPCP.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCPDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;


if ValInt(CODFPCP.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do FPCP tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCODFPCP=0'+Trim(CODFPCP.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,11893,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CODFPCP_2012',valint(CODFPCP.Text));

G_CODFPCP.Enabled:=False;


end;

procedure TFrm_LotSeq.CFPCPDUPExit(Sender: TObject);
begin
CFPCPDUP.Text:=fdeixaNum(CFPCPDUP.Text);

end;

procedure TFrm_LotSeq.CFPCPDUPChange(Sender: TObject);
begin
if CFPCPDUP.Modified then G_CFPCPDUP.Enabled:=true;

end;

procedure TFrm_LotSeq.SB_CFPCPDUPClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCPDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;

if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;
CFPCPDUP.Text:=IntTostr(mchave);
G_CFPCPDUP.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CFPCPDUPClick(Sender: TObject);
begin
if ValInt(CFPCPDUP.Text)<=0 then
   begin
   MessageDlg('O número de Sequencia do CFPCPDUP tem que ser maior que zero!',mtWarning,[mbOk],0);
   CFPCPDUP.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPCPDUP where FPLOTSEQ=0'+Trim(LOTBCR_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPLOTE) from FPCP where FPLOTSEQ=0'+trim(LOTBCP_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(' and (FPCODEMP=0'+IntToStr(codemp)
                     +' or FPCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.query1.Open;

if not DM1.Query1.eof then
   begin
   if DM1.Query1.Fields[0].AsInteger+1>mchave then
      mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end;


if ValInt(CFPCPDUP.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do FPCPDUP tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCFPCPDUP=0'+Trim(CFPCPDUP.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1266,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CFPCPDUP_2012',valint(CFPCPDUP.Text));

G_CFPCPDUP.Enabled:=False;


end;

procedure TFrm_LotSeq.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
flcadpar01(0,0,'1');
ls_numped   :=DM4.Tb_Par01PNUMPED_LS.AsInteger;
ls_numpf    :=DM4.Tb_Par01PNUMPF_LS.AsInteger;
ls_codldr   :=DM4.Tb_Par01PCODLDR_LS.AsInteger;
ls_codchqcli:=DM4.Tb_Par01PCODCHQCLI_LS.AsInteger;
ls_codchqemi:=DM4.Tb_Par01PCODCHQ_PE_LS.AsInteger;
ls_numlic   :=DM4.Tb_Par01PNUMLIC_LS.AsInteger;
ls_lotbcp   :=DM4.Tb_Par01PLOTBCP_LS.AsInteger;
ls_lotbcr   :=DM4.Tb_Par01PLOTBCR_LS.AsInteger;
ls_lotfab   :=DM4.Tb_Par01PCHAVFAB_LS.AsInteger;
ls_cadaju   :=DM4.Tb_Par01PCADAJU_LS.AsInteger;
ls_cadcac   :=DM4.Tb_Par01PCADCAC_LS.AsInteger;
flparger(0,0,'1');

end;

procedure TFrm_LotSeq.SB_NUMOSClick(Sender: TObject);
begin


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(OS1CHAVE) from CADOS01 where OS1LOTSEQ=0'+trim(LOTOS_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' and (OS1CODEMP=0'+IntToStr(codemp)
                     +' or OS1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave      :=1
else
   mchave      :=DM1.Query1.Fields[0].AsInteger+1;
NUMOS.Text     :=IntTostr(mchave);
G_NUMOS.Enabled:=true;

end;

procedure TFrm_LotSeq.G_NUMOSClick(Sender: TObject);
begin
if ValInt(NUMOS.Text)<=0 then
   begin
   MessageDlg('O número da proxima chave tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMOS.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(OS1CHAVE) from CADOS01 where OS1LOTSEQ=0'+trim(LOTOS_LS.Text));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' and (OS1CODEMP=0'+IntToStr(codemp)
                     +' or OS1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.qUERY1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;


if ValInt(NUMOS.Text)<DM1.Query1.Fields[0].AsInteger then
   begin
   MessageDlg('Número da proxima chave de OS tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   NUMOS.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PNUMOS_LS=0'+Trim(LOTOS_LS.Text)
                  +', PNUMOS=0'+Trim(NUMOS.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1472,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('NUMOS_2012',valint(NUMOS.Text));

G_NUMOS.Enabled:=False;

end;

procedure TFrm_LotSeq.CHACREMChange(Sender: TObject);
begin
if CHACREM.Modified then G_CHACREM.Enabled:=true;

end;

procedure TFrm_LotSeq.CHACREMExit(Sender: TObject);
begin
CHACREM.Text:=fdeixaNum(CHACREM.Text);

end;

procedure TFrm_LotSeq.SB_CHACREMClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(P1LTACERTO) from CADP01 ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' where (P1CODEMP=0'+IntToStr(codemp)
                     +' or P1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
CHACREM.Text:=IntTostr(mchave);
G_CHACREM.Enabled:=true;

end;

procedure TFrm_LotSeq.G_CHACREMClick(Sender: TObject);
begin
if ValInt(CHACREM.Text)<=0 then
   begin
   MessageDlg('O número de Sequencia do Lote de Acerto de Remessa tem que ser maior que zero!',mtWarning,[mbOk],0);
   CHACREM.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(P1LTACERTO) from CADP01 ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(' where (P1CODEMP=0'+IntToStr(codemp)
                     +' or P1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;
DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

if ValInt(CHACREM.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do Lote de Acerto de Remessa tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCHACREM=0'+Trim(CHACREM.Text)+', PCHACREM_LS=0'
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1547,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CHACREM_2012',valint(CHACREM.Text));

G_CHACREM.Enabled:=False;



end;

procedure TFrm_LotSeq.LOTAJU_LSChange(Sender: TObject);
begin
if LOTAJU_LS.Modified then G_NUMAJU.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTOS_LSChange(Sender: TObject);
begin
if LOTOS_LS.Modified then G_NUMOS.Enabled:=true;

end;

procedure TFrm_LotSeq.LOTOS_LSExit(Sender: TObject);
begin
LOTOS_LS.Text:=fdeixaNum(LOTOS_LS.Text);

end;

procedure TFrm_LotSeq.LOTAJU_LSExit(Sender: TObject);
begin
LOTAJU_LS.Text:=fdeixaNum(LOTAJU_LS.Text);

end;

procedure TFrm_LotSeq.NUMOSChange(Sender: TObject);
begin
if NUMOS.Modified then G_NUMOS.Enabled:=true;

end;

procedure TFrm_LotSeq.NUMOSExit(Sender: TObject);
begin
NUMOS.Text:=fdeixaNum(NUMOS.Text);

end;

procedure TFrm_LotSeq.SB_NUMAJUClick(Sender: TObject);
begin


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(AJSEQ) from CADAJU where AJLOTSEQ=0'+trim(LOTAJU_LS.Text));

if not DM1.Qr_Tid.Locate('TINOME','CADAJU',[]) then
   begin
   DM1.Query1.SQL.Add(' and (AJCODEMP=0'+IntToStr(codemp)
                     +' or AJCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave      :=1
else
   mchave      :=DM1.Query1.Fields[0].AsInteger+1;
NUMAJU.Text     :=IntTostr(mchave);
G_NUMAJU.Enabled:=true;

end;

procedure TFrm_LotSeq.G_NUMAJUClick(Sender: TObject);
begin
if ValInt(NUMAJU.Text)<=0 then
   begin
   MessageDlg('O número da proxima chave tem que ser maior que zero!',mtWarning,[mbOk],0);
   NUMAJU.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(AJSEQ) from CADAJU where AJLOTSEQ=0'+trim(LOTAJU_LS.Text));

if not DM1.Qr_Tid.Locate('TINOME','CADAJU',[]) then
   begin
   DM1.Query1.SQL.Add(' and (AJCODEMP=0'+IntToStr(codemp)
                     +' or AJCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;


if ValInt(NUMAJU.Text)<DM1.Query1.Fields[0].AsInteger then
   begin
   MessageDlg('Número da proxima chave de Ajuste tem que ser maior ou igual a: '+IntToStr(mchave),mtWarning,[mbOk],0);
   NUMAJU.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PCADAJU_LS=0'+Trim(LOTAJU_LS.Text)
                  +', PCADAJU=0'+Trim(NUMAJU.Text)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1664,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('CADAJU_2012',valint(NUMAJU.Text));
G_NUMAJU.Enabled:=False;

end;

procedure TFrm_LotSeq.SB_LOTELBRClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(LBNUMLOT) from CADLBR1 ');
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' where (LBCODEMP=0'+IntToStr(codemp)
                     +' or LBCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
LOTELBR.Text:=IntTostr(mchave);
G_LOTELBR.Enabled:=true;

end;

procedure TFrm_LotSeq.G_LOTELBRClick(Sender: TObject);
begin
if ValInt(LOTELBR.Text)<=0 then
   begin
   MessageDlg('O número do Lote de bordero tem que ser maior que zero!',mtWarning,[mbOk],0);
   LOTELBR.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(LBNUMLOT) from CADLBR1 ');
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(' where (LBCODEMP=0'+IntToStr(codemp)
                     +' or LBCODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
   end;

DM1.Query1.Open;
if DM1.Query1.eof then
   mchave:=1
else
   mchave:=DM1.Query1.Fields[0].AsInteger+1;

if ValInt(LOTELBR.Text)<mchave then
   begin
   MessageDlg('O Numero de Sequencia do Lote de bordero tem quer ser maior ou igual a: '+IntTostr(mchave),mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('Update CADPAR set PLOTELBR=0'+Trim(LOTELBR.Text)+', PLOTELBR_LS=0'
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1726,'Frm_LotSeq','CADPAR');
   end;
fSequenceTestaeAjusta('LOTELBR_2012',valint(LOTELBR.Text));

G_LOTELBR.Enabled:=False;


end;

procedure TFrm_LotSeq.LOTELBRExit(Sender: TObject);
begin
LOTELBR.Text:=fdeixaNum(LOTELBR.Text);

end;

procedure TFrm_LotSeq.LOTELBRChange(Sender: TObject);
begin
if LOTELBR.Modified then G_LOTELBR.Enabled:=true;

end;

procedure TFrm_LotSeq.SERIENFExit(Sender: TObject);
begin
SERIENF.Text:=trim(SERIENF.Text);

end;

procedure TFrm_LotSeq.SERIENF2Exit(Sender: TObject);
begin
SERIENF2.Text:=trim(SERIENF2.Text);

end;

procedure TFrm_LotSeq.MDTNF_S1Exit(Sender: TObject);
begin
if trim(MDTNF_S1.Text)<>'/  /' then
   begin
   try
      MDTNF_S1.Text:=FormatDatetime(fdt2, StrToDate(MDTNF_S1.Text))
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      MDTNF_S1.SetFocus;
      end;
   end;
end;

procedure TFrm_LotSeq.MDTNF_S2Exit(Sender: TObject);
begin
if trim(MDTNF_S2.Text)<>'/  /' then
   begin
   try
      MDTNF_S2.Text:=FormatDatetime(fdt2, StrToDate(MDTNF_S2.Text))
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      MDTNF_S2.SetFocus;
      end;
   end;

end;

procedure TFrm_LotSeq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
