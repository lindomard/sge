Unit S_Mchq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls, S_SelEmp,
  s_dm1, db, dbtables,s_cli, DBCtrls, Grids, DBGrids,func,lerarq,S_LOptica,S_DetBaiChq,
  func2;

type
  TFrm_MChq = class(TFrm_C)
    gb_dadosini: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    st_leitor: TStaticText;
    DBCB_Deposito: TDBCheckBox;
    sbDetBai: TSpeedButton;
    SB_ExportarTitulo: TSpeedButton;
    DBCB_EXTRA: TDBCheckBox;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    SbDetOri: TSpeedButton;
    Label23: TLabel;
    DBEdit25: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    gb_outinf: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dbcbstatus: TDBCheckBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    gb_dadosemitente: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    tsFluxo: TTabSheet;
    gb_fluxocaixa: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lbl_obs: TLabel;
    Label25: TLabel;
    DBE_CODDEP: TDBEdit;
    DBE_CODCCU: TDBEdit;
    DBE_DESCMOV: TDBEdit;
    DBE_CodCta: TDBEdit;
    DBCB_NOMBCO: TDBComboBox;
    DBCB_NOMDEP: TDBComboBox;
    DBCB_NOMCCU: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Edit2: TEdit;
    edt_codcai: TEdit;
    edt_nombco: TEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure sbDetBaiClick(Sender: TObject);
    procedure SB_ExportarTituloClick(Sender: TObject);
    procedure SbDetOriClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBE_CodCtaExit(Sender: TObject);
    procedure DBE_CODDEPExit(Sender: TObject);
    procedure DBE_CODCCUExit(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codcaiKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codcaiExit(Sender: TObject);
  private
    { Private declarations }
     function fchq01lerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;

function fchq01ant(ptipo: Integer): Boolean;

var
  Frm_MChq: TFrm_MChq;
  Form_SelEmp: TFrm_SelEmp;  
  chq_ori: String;
  moper: Integer;
  mDataDep_Ant: TDateTime;
  maceita_ant: Boolean;
  macbanco   : Boolean=False;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  mcodacess  : Integer = 0;
  mcodven    : Integer = 0;

implementation

uses S_DM4, s_FormaPgto;

{$R *.dfm}
procedure TFrm_MChq.INCLUIRClick(Sender: TObject);
begin
  inherited;
SB_ExportarTitulo.Enabled:=false;
DM1.Tb_Chq.Insert;
DM1.Tb_ChqCHDATHOR_INC.AsDateTime:=now;
DM1.Tb_ChqCHCODUSR_INC.AsFloat   :=codusr;

DBEdit1.SetFocus;
moper:=0;
end;

procedure TFrm_MChq.ALTERARClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_ChqCHSTATUS.Value=2 then
   begin
   fmensagem('Cheque baixado Favor Cancelar a Baixa!',0,['0'],0);
   exit;
   end;

if DM1.Tb_ChqCHNUMERO.IsNull then
   begin
   fmensagem('Favor Selecionar um registro Válido!',0,['0'],0);
   exit;
   end;
SB_ExportarTitulo.Enabled:=false;
moper:=8;
DM1.Tb_Chq.Edit;
DM1.Tb_ChqCHDATHOR_ALT.AsDateTime:=now;
DM1.Tb_ChqCHCODUSR_ALT.AsFloat   :=codusr;

mDataDep_Ant:=DM1.Tb_ChqCHDTDEP.Value;
end;

procedure TFrm_MChq.EXCLUIRClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_ChqCHNUMERO.IsNull then
   begin
   fmensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if DM1.Tb_ChqCHSTATUS.Value=2 then
   begin
   fmensagem('Cheque baixado Favor Cancelar a Baixa!',0,['0'],0);
   exit;
   end;


if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   fchq01ant(9);
   DM1.Tb_Chq.Edit;
   DM1.Tb_ChqCHSTATUS.Value:=9;
   DM1.Tb_ChqCHCODUSR.Value:=codusr;
   DM1.Tb_ChqCHDTALT.Value :=pdatasis;
   DM1.Tb_ChqCHHRALT.Value :=FormatDatetime(fhr, time);
   DM1.Tb_Chq.Post;
   BBnAtuClick(self);
   end;


end;

procedure TFrm_MChq.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ChqCHNUMERO.IsNull) or (DM1.Tb_ChqCHNUMERO.Value=0) then
   begin
   Fmensagem('Número campo Obrigatorio',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_ChqCHCODCLI.IsNull then
   begin
   Fmensagem('Código do Cliente. Campo Obrigatório',0,['0'],0);
   DBEdit7.SetFocus;
   exit;
   end;
if DM1.Tb_ChqCHVALOR.IsNull then
   begin
   Fmensagem('Valor do cheque campo Obrigatório',0,['0'],0);
   DBEdit13.SetFocus;
   exit;
   end;
if DM1.Tb_ChqCHDTDEP.IsNull then
   begin
   Fmensagem('Data de deposito campo obrigatório!',0,['0'],0);
   DBEdit15.SetFocus;
   exit;
   end;
if moper=8 then
   fchq01ant(moper);
DM1.Tb_ChqCHCODUSR.Value:=codusr;
DM1.Tb_ChqCHDTALT.Value :=pdatasis;
DM1.Tb_ChqCHHRALT.Value :=FormatDatetime(fhr, time);
if mDataDep_Ant>pdatanula then
   begin
   if DM1.Tb_ChqCHPRO_ULTDAT.Value=DM1.Tb_ChqCHDTDEP.Value then
      begin
      if DM1.Tb_ChqCHPROR_QTDP.AsFloat>0 then
         DM1.Tb_ChqCHPROR_QTDP.Value:=DM1.Tb_ChqCHPROR_QTDP.Value-1;
      end
   else
      begin
      DM1.Tb_ChqCHPROR_QTDP.Value:=DM1.Tb_ChqCHPROR_QTDP.AsFloat+1;
      DM1.Tb_ChqCHPRO_ULTDAT.Value:=mDataDep_Ant;
      end;
   end;

mDataDep_Ant:=DM1.Tb_ChqCHDTDEP.Value;

{
if DM4.Tb_ParGer02PG2CHQFC.AsInteger=0 then
   begin
   if DM1.Tb_ChqCHCODLDR.Value>0 then
      begin
      if not flcadldr(0,0,DM1.Tb_ChqCHLOTSEQ_FC.AsInteger,DM1.Tb_ChqCHCODLDR.AsString) then
         DM1.Tb_LDR.Append
      else
         DM1.Tb_LDR.Edit;
      end
   else
      begin
      if not DM1.Tb_Ldr.Active then
         flcadldr(0,0,0,'9999999');
      DM1.Tb_Ldr.Append;
      end;
   DM1.Tb_LDRCODEMP.Value  :=DM1.Tb_ChqCHCODEMP.Value;
   DM1.Tb_LDRDATADP.Value  :=DM1.Tb_ChqCHDTDEP.Value;
   DM1.Tb_LDRDATAREF.Value :=DM1.Tb_ChqCHDTEMIS.Value;
   DM1.Tb_LDRVALORP.Value  :=DM1.Tb_ChqCHVALOR.Value; // valor
   if DM1.Tb_ChqCHSTATUS.Value>0 then
      begin
      DM1.Tb_LDRDATAREAL.Value:=DM1.Tb_ChqCHDTBX.Value;
      DM1.Tb_LDRVALORR.Value  :=DM1.Tb_ChqCHVALOR.Value;
      DM1.Tb_LDRVALORP.Value  :=DM1.Tb_ChqCHVALOR.Value; // valor
      if DM1.Tb_ChqCHDTBX.Value>pdatanula then
         DM1.Tb_LDRDTSALDO.AsDateTime  := DM1.Tb_ChqCHDTBX.Value
      else
        DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;
      end;

   if DM1.Tb_ChqCHCODCTA.AsInteger<>0 then
      DM1.Tb_LDRCODBCO.Value  :=DM1.Tb_ChqCHCODCTA.AsInteger
   else
      DM1.Tb_LDRCODBCO.Value  :=codcai;
   DM1.Tb_LDRNUMDOC.Value :='CHQ-'+FormatFloat('000000',DM1.Tb_ChqCHNUMERO.Value)+'/'+DM1.Tb_ChqCHBANCO.AsString;
   DM1.Tb_LDRSTATUS.Value:=0;
   DM1.Tb_LDRORIGEM.Value:=03;
   DM1.Tb_LDRTIPO.Value  :='FR';
   DM1.Tb_LDRCODIGO.Value:=DM1.Tb_ChqCHCODCLI.Value;
   DM1.Tb_LDRNOME.Value  :=DM1.Tb_Chqnomcli.Value;
   DM1.Tb_LDRLOCDEP.Value:=0;
   DM1.Tb_LDRDESCMV.Value:=DM1.Tb_ChqCHDESCMV.Value;
   DM1.Tb_LDRCODCC.Value :=DM1.Tb_ChqCHCODCC.Value;
   DM1.Tb_LDRCODDEP.Value:=DM1.Tb_ChqCHCODDEP.Value;
   DM1.Tb_LDRNOMBCO.Value:=DM1.Tb_ChqCHNOMCTA.Value;
   DM1.Tb_LDRNOMDEP.Value:=DM1.Tb_ChqCHNOMDEP.Value;
   DM1.Tb_LDRNOMCCU.Value:=DM1.Tb_ChqCHNOMCC.Value;
   DM1.Tb_LDRNATDC.Value :=DM1.Tb_ChqCHNATDC.Value;
   DM1.Tb_LDRLOTMOV.Value:=lotmov;
   if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
   else
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
   DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
   if length(DM1.Tb_LDRDESCMV.Value)>50 then
      DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
   DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;
   DM1.Tb_LDR.Post;
   DM1.Tb_ChqCHCODLDR.Value   :=dm1.Tb_LDRCODLDR.AsFloat;
   DM1.Tb_ChqCHLOTSEQ_FC.Value:=DM1.Tb_LDRLOTSEQ.AsFloat;
   end;
}
dm1.tB_chq.Post;
CANCELAR.Click;


end;

procedure TFrm_MChq.BBnAtuClick(Sender: TObject);
begin
  inherited;
if chq_ori='consulta' then
   begin
   fchq01lerant(0);
   end
else
  begin
  flcadchq(campo.ItemIndex,1,0,ls_codchqcli,0,Edit1.Text,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS);
  end;

end;

procedure TFrm_MChq.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_MChq.CANCELARClick(Sender: TObject);
begin
  inherited;
SB_ExportarTitulo.Enabled:=true;
DM1.Tb_Chq.Cancel;
moper:=0;
mDataDep_Ant:=pdatanula;
end;

procedure TFrm_MChq.FormCreate(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
chq_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCHQ') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;
if codemp>99 then
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp-100);
   end
else
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp+100);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp);
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;



DBNavigator1.DataSource:=DM1.Src_Chq;
DBGrid1.DataSource     :=DM1.Src_Chq;


end;

procedure TFrm_MChq.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if chq_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   chq_ori := '';
   end;
end;

procedure TFrm_MChq.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if chq_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      chq_ori := '';
      end;
   abort;
   end;

end;

function fchq01ant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CHCODNOV) from OLD_CADCHQ');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADCHQ (';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CHCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Chq.Fields[x].FieldName='CHSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as CHSTATUS '
   else if DM1.Tb_Chq.Fields[x].FieldName='CHCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CHCODUSR '
   else if DM1.Tb_Chq.Fields[x].FieldName='CHDTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as CHDTALT '
   else if DM1.Tb_Chq.Fields[x].FieldName='CHHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CHHRALT '
   else
      minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CHCODNOV ';
minstru:=minstru+' from CADCHQ where CHCODEMP=0'+DM1.Tb_ChqCHCODEMP.AsString
                +' and CHLOTSEQ=0'+DM1.Tb_ChqCHCODEMP.AsString
                +' and CHSEQ=0'+DM1.Tb_ChqCHSEQ.AsString;
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao CHQ255. Contactar Suporte',0,['0'],0);
   end;
DM1.SG_ASSOC.Commit;
result:=True;



end;
function tfrm_Mchq.fchq01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM1.Tb_Chq.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_chq.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;

   v:=',';
   end;
minstru:=minstru+' from OLD_CADCHQ where CHCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_Chq.Close;
DM1.Tb_Chq.SQL.Clear;
DM1.Tb_Chq.SQL.add(minstru);
DM1.Tb_Chq.Open;

BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;





procedure TFrm_MChq.DBEdit1Enter(Sender: TObject);
begin
  inherited;
st_leitor.Visible:=True;

end;

procedure TFrm_MChq.DBEdit1Exit(Sender: TObject);
begin
  inherited;
st_leitor.Visible:=false;

end;

procedure TFrm_MChq.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

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

   Application.CreateForm(TFrm_LOptica, Frm_LOptica);
   Frm_LOptica.ShowModal;
   if lo_banco>0 then
      DM1.Tb_ChqCHBANCO.Value:=lo_banco;
   if lo_agencia>0 then
      DM1.Tb_ChqCHAGENCIA.Value:=FloatToStr(lo_agencia);
   if lo_compens>0 then
      DM1.Tb_ChqCHCOMP.Value   :=FloatTostr(lo_compens);
   if lo_numchq>0 then
      DM1.Tb_ChqCHNUMERO.Value :=lo_numchq;
   if lo_conta>0 then
      DM1.Tb_ChqCHCC.Value     :=FloatToStr(lo_conta);
   Frm_LOptica.Free;
   Frm_LOptica:=nil;
   end;

end;

procedure TFrm_MChq.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ChqCHCODCLI.Value:=fSonumero(fChamaCli(0,'Frm_Mchq',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MChq.DBEdit7Exit(Sender: TObject);
begin
  inherited;
if not flcadcli(1,0,DM1.Tb_ChqCHCODCLI.AsString) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   DBEdit7.SetFocus;
   end
else
   begin
   DM1.Tb_ChqCHEMIT.Value:=DM1.Tb_CliCRAZAO.Value;
   if DM1.Tb_CliCCPF.Value>0 then
      begin
      DM1.Tb_ChqCHCPF.Value:=DM1.Tb_CliCCPF.Value;
      DM1.Tb_ChqCHRG.Value :=DM1.Tb_CliCRG.Value;
      end
   else
      begin
      DM1.Tb_ChqCHCPF.Value:=DM1.Tb_CliCCNPJ.Value;
      DM1.Tb_ChqCHRG.Value :=DM1.Tb_CliCIE.Value;
      end;
    if fsonumero(DM1.Tb_ChqCHFONE01.Value)<=0 then
       DM1.Tb_ChqCHFONE01.Value:=dm1.Tb_CliCFONE01.AsString;
    if fsonumero(DM1.Tb_ChqCHFONE02.Value)<=0 then
       DM1.Tb_ChqCHFONE02.Value:=dm1.Tb_CliCFONE02.AsString;


   if (trim(DM1.Tb_CliCDESCMVC.AsString)='') or
      (trim(DM1.Tb_CliCDESCMVC.AsString)='_') then
      DM1.Tb_ChqCHDESCMV.Value:=pldr_descmov
   else
      DM1.Tb_ChqCHDESCMV.Value:=DM1.Tb_CliCDESCMVC.Value;
   if (Trim(DM1.Tb_CliCCODCCC.AsString)='') or
      (Trim(DM1.Tb_CliCCODCCC.AsString)='_') then
      begin
      DM1.Tb_ChqCHCODCC.Value :=pldr_codccu;
      DM1.Tb_ChqCHNOMCC.Value :=pldr_nomccu;
      DM1.Tb_ChqCHNATDC.Value :=pldr_natdc;
      end
   else
      begin
      DM1.Tb_ChqCHCODCC.Value :=DM1.Tb_CliCCODCCC.Value;
      DM1.Tb_ChqCHNOMCC.Value :=DM1.Tb_CliCNOMCCC.Value;
      if (trim(DM1.Tb_CliCNATDCC.AsString)='') or
        (trim(DM1.Tb_CliCNATDCC.AsString)='_') then
         DM1.Tb_ChqCHNATDC.Value:='C'
      else
         DM1.Tb_ChqCHNATDC.Value:=DM1.Tb_CliCNATDCC.Value;
      end;
   if (trim(DM1.Tb_CliCCODDEPC.AsString)='') or
      (trim(DM1.Tb_CliCCODDEPC.AsString)='_') then
      begin
      DM1.Tb_ChqCHCODDEP.Value:=pldr_coddep;
      DM1.Tb_ChqCHNOMDEP.Value:=pldr_nomdep;
      end
   else
      begin
      DM1.Tb_ChqCHCODDEP.Value:=DM1.Tb_CliCCODDEPC.Value;
      DM1.Tb_ChqCHNOMDEP.Value:=DM1.Tb_CliCNOMDEPC.Value;
      end;
   end;
end;

procedure TFrm_MChq.Edit1Exit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=0 then
   begin
   if fsonumero(EDIT1.Text)<=0 then
      Edit1.Text:=''
   else
      edit1.Text:=fdeixanum(EDIT1.Text);
   end
else if CAMPO.ItemIndex=3 then
   begin
   if fsonumero(EDIT1.Text)<=0 then
      Edit1.Text:=''
   else
      FormatFloat(mcasas, ValFloat(Edit1.Text));
   end;
end;

procedure TFrm_MChq.SAIRClick(Sender: TObject);
begin
  inherited;
  if    chq_ori = '' then close;
end;

procedure TFrm_MChq.sbDetBaiClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ChqCHSTATUS.AsFloat<>2 then
   begin
   fmensagem('Cheque em aberto!',0,['0'],0);
   exit;
   end;
if DM1.Tb_ChqCHLOTE_BT.AsFloat>0 then
   begin
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('Select * from CADBCL01 where ');
   if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query1.Sql.add(' BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                      +' order by BL1CHAVE')
   else
      begin
      if DM1.Tb_PargerPMTE.AsFloat=2 then
         begin
         DM1.Query1.Sql.add(' (BL1CODEMP=0'+IntTostr(codemp)+' or BL1CODEMP=0'+IntTostr(codemp
                                                                               +iif(codemp>100,codemp-100,codemp+100)
                                                                               ) +') '
                      +' and BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                      +' order by BL1CHAVE');
         end
      else
         begin
         DM1.Query1.Sql.add(' BL1CODEMP=0'+IntTostr(codemp)
                      +' and BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                      +' order by BL1CHAVE');
         end;

      end;
   DM1.Query1.Open;

   if DM1.Query1.IsEmpty then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('Select * from CADBCL01 where ');
      if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
         DM1.Query1.Sql.add(' BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                         +' order by BL1CHAVE')
      else
         begin
         if DM1.Tb_PargerPMTE.AsFloat=2 then
            begin
            DM1.Query1.Sql.add(' (BL1CODEMP=0'+IntTostr(DM1.Tb_ChqCHCODEMP.AsInteger)+' or BL1CODEMP=0'+IntTostr(DM1.Tb_ChqCHCODEMP.AsInteger
                                                                                  +iif(DM1.Tb_ChqCHCODEMP.AsInteger>100,DM1.Tb_ChqCHCODEMP.AsInteger-100,DM1.Tb_ChqCHCODEMP.AsInteger+100)
                                                                                  ) +') '
                         +' and BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                         +' order by BL1CHAVE');
            end
         else
            begin
            DM1.Query1.Sql.add(' BL1CODEMP=0'+IntTostr(DM1.Tb_ChqCHCODEMP.AsInteger)
                         +' and BL1CHAVE=0'+DM1.Tb_ChqCHLOTEBX.AsString
                         +' order by BL1CHAVE');
            end;

         end;
      DM1.Query1.Open;
      end;

   testeform := TFrm_mchq(FindGlobalComponent('frm_detbaichq'));
   if testeform=nil then
      Application.CreateForm(TFrm_DetBaiChq, Frm_DetBaiChq)
   else
      begin
      Frm_DetBaiChq.Free;
      Frm_DetBaiChq:=nil;
      Application.CreateForm(TFrm_DetBaiChq, Frm_DetBaiChq);
      end;
   {
   Frm_DetBaiChq.ShowModal;

   Application.Createform(TFrm_DetBaiChq, Frm_DetBaiChq);
   }
   Frm_DetBaiChq.memo1.Lines.Clear;
   if DM1.Query1.Eof then
      Frm_DetBaiChq.Memo1.Lines.Add('Não Foi encontrado o Lote de baixa do Cheque!')
   else
      begin
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS01').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS02').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS03').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add('Data do Lote de baixa: '+FormatDatetime(fdt2, DM1.Query1.fieldByName('BL1DATA').AsDateTime));
      end;
      Frm_DetBaiChq.Show;
   end;
end;
procedure TFrm_MChq.SB_ExportarTituloClick(Sender: TObject);
var
mDesd: String;
mQtdTent: Integer;
codcai_ant: integer;
mNomcai_ant: string;
begin
  inherited;
if DM1.Tb_ChqCHNUMERO.IsNull then
   begin
   fmensagem('Favor selecionar um cheque válido!',0,['0'],0);;
   exit;
   end;

if DM1.Tb_ChqCHSTATUS.Value<>2 then
   begin
   fmensagem('Esta opção so é valida para cheques baixados!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Exportar o cheque selecionado?',0,['1','2'],2)<>mrYes then
   begin
   exit;
   end;

if not flcadcli(1,0,DM1.Tb_ChqCHCODCLI.AsString) then
   begin
   fmensagem('não foi possível encontrar o cliente do cheque selecionado!',0,['0'],0);
   exit;
   end;
if fsonumero(edt_codcai.text)=0 then
   begin
   MessageDlg('Favor Selecionar o Caixa de Destino!',mtWarning,[mbOk],0);
   exit;
   end;

flcadpar02(0,0,CodUsr,IntToStr(52));
if DM4.Tb_Par02PA2PDSN.Value = 'S' then
  begin
  mValidarSenha.pTipo:=0;
  mValidarSenha.pCodusr:=codusr;
  mValidarSenha.pCodSen:=51;
  mValidarSenha.pCodEmp:=0;
  mValidarSenha.pCodCli:=0;
  mValidarSenha.pLotSeq:=0;
  mValidarSenha.pChave :=DM1.Tb_ChqCHNUMERO.Value;
  mValidarSenha.pOrdem :=0;
  mValidarSenha.pTexto :='Senha para Exportar cheque para Financeiro';
  mValidarSenha.pChave_St:='';
  mValidarSenha.pDesc_requisitado :=0;

  if fValidaSenha(mValidarSenha)<>0 then
    begin
    fMensagem('Alteração não Aceita!',0,['0'],0);
    Edit1.SetFocus;
    exit;
    end;
  end;



//GERAR DEBITO
if DM1.Tb_ChqCHLOTE.AsInteger>0 then
  begin

  fPegarDadosCaixa('CADDARH','CL','C',DM1.Tb_ChqCHCODCLI.asfloat,valint(edt_codcai.Text),mDadosCaixa);


  mdesc_mov:=mDadosCaixa.pldr_descmov;
  mcoddep  :=mDadosCaixa.pldr_coddep;
  mnomdep  :=mDadosCaixa.pldr_nomdep;
  mcodccu  :=mDadosCaixa.pldr_codccu;
  mnomccu  :=mDadosCaixa.pldr_nomccu;
  mnatdc   :=mDadosCaixa.pldr_natdc;
  mcodven  := 1;
  mChaveIdLdr:=fCriarLDR(DM1.Tb_ChqCHCODEMP.AsInteger
                       ,DM1.Tb_ChqCHVALOR.Value
                       ,DM1.Tb_ChqCHVALOR.Value
                       ,DM1.Tb_ChqCHCODCLI.Value
                       ,0
                       ,DM1.Tb_ChqCHDTDEP.Value
                       ,StrToDate(FormatDateTime('dd/mm/yyyy',Now))
                       ,DM1.Tb_ChqCHDTEMIS.Value
                       ,StrToDate(FormatDateTime('dd/mm/yyyy',Now))
                       ,mcodccu
                       ,mcoddep
                       ,mnatdc
                       ,mdesc_mov
                       ,'CHQ-'+DM1.Tb_ChqCHNUMERO.asString
                       ,' '
                       ,'CL'
                       ,edt_nombco.text    // DM1.Tb_BcoBCBANCO.Value
                       ,mnomdep
                       ,mnomccu
                       ,edt_nombco.text
                       ,DM1.Tb_ChqCHOBSL01.Value
                       ,03 // locdep
                       ,valint(edt_codcai.text)
                       ,lotmov
                       ,2 // status
                       ,03); // origem
  end;
// FIM GERAR DEBITO LUIZ FERNANDO


fPegarDadosCaixa('CADDARH','CL','C',DM1.Tb_ChqCHCODCLI.asfloat,valint(edt_codcai.text),mDadosCaixa);


mdesc_mov:=mDadosCaixa.pldr_descmov;
mcoddep  :=mDadosCaixa.pldr_coddep;
mnomdep  :=mDadosCaixa.pldr_nomdep;
mcodccu  :=mDadosCaixa.pldr_codccu;
mnomccu  :=mDadosCaixa.pldr_nomccu;
mnatdc   :=mDadosCaixa.pldr_natdc;

mcodven  := 1;
flcadbco(1,0,0,DM1.Tb_ChqCHCODBCO_DEB.AsString);
//CODCAI:=DM1.Tb_ChqCHCODBCO_DEB.AsInteger;


mChaveIdLdr:=fCriarLDR(DM1.Tb_ChqCHCODEMP.AsInteger
                     ,0
                     ,DM1.Tb_ChqCHVALOR.Value
                     ,DM1.Tb_Ped01P1CODCLI.Value
                     ,0
                     ,DM1.Tb_ChqCHDTDEP.Value
                     ,pdatanula
                     ,DM1.Tb_ChqCHDTEMIS.Value
                     ,pdatanula
                     ,mcodccu
                     ,mcoddep
                     ,mnatdc
                     ,mdesc_mov
                     ,'CHQ-'+DM1.Tb_ChqCHNUMERO.asString
                     ,' '
                     ,'CL'
                     ,edt_nombco.text  // DM1.Tb_BcoBCBANCO.Value
                     ,mnomdep
                     ,mnomccu
                     ,edt_nombco.text
                     ,DM1.Tb_ChqCHOBSL01.Value
                     ,03 // locdep
                     ,valint(edt_codcai.text)
                     ,lotmov
                     ,0 // status
                     ,03); // origem

if DM1.Tb_ChqCHLOTE.AsFloat > 0 then
begin
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.sql.Add(' Select                        '+
                     '  FPCODVEN                     '+
                     ' FROM                          '+
                     '  FPCRDUP                      '+
                     ' WHERE                         '+
                     '  FPCODEMP =:pCodEmp AND       '+
                     '  FPLOTE   =:pLote             ');
  DM1.Query1.ParamByName('pCodEmp').AsFloat := codemp;
  DM1.Query1.ParamByName('pLote').AsFloat   := DM1.Tb_ChqCHLOTE.AsFloat;
  DM1.Query1.Open;

  if not DM1.Query1.IsEmpty then
     mcodven := DM1.Query1.FieldByName('FPCODVEN').AsInteger;
end;

mDesd:='A';
mQtdTent:=0;
While true do
   begin
   mQtdTent:=mQtdTent+1;
   mDesd:=chr(64+mQtdTent);
   if not flcaddar(8,DM1.Tb_ChqCHCODEMP.AsInteger,
                 0, // ppre
                 0, // codecf
                 0,
                 DM1.Tb_ChqCHNUMERO.AsString,
                 mDesd,
//                 '16', // dup
                 '1', // dup
                 DM1.Tb_CHQCHDTEMIS.AsDateTime,'') then
      break;
   end;

if flcadcli(1,0,DBEdit7.Text) then
   mcodacess := DM1.Tb_CliCCODASSE.AsInteger;

DM4.Qr_IncDar.Close;
DM4.Qr_IncDar.ParambyName('CRCODEMP').AsFloat    := DM1.Tb_ChqCHCODEMP.Value;
DM4.Qr_IncDar.ParambyName('CRCODECF').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := DM1.Tb_ChqCHNUMERO.AsFloat;
DM4.Qr_IncDar.ParambyName('CRDESD').AsString     := mDesd;
//DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat       := 16;
DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat       := 1;
DM4.Qr_IncDar.ParambyName('CRCODCLI').AsFloat    := DM1.Tb_ChqCHCODCLI.Value;
DM4.Qr_IncDar.ParambyName('CRNUMCUP').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := pdatanula;
DM4.Qr_IncDar.ParambyName('CRVALOR').AsFloat     := DM1.Tb_ChqCHVALOR.Value;
DM4.Qr_IncDar.ParambyName('CRTOTNF').AsFloat     := DM1.Tb_ChqCHVALOR.Value;
DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime := DM1.Tb_ChqCHDTEMIS.Value;
DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_DTINICIO').AsDateTime := strtodatetime('01/'+formatdatetime('mm/yyyy', DM1.Tb_ChqCHDTEMIS.AsDateTime));
DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_TIPO').AsInteger      := 0;

DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDateTime := DM1.Tb_ChqCHDTDEP.Value;
DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   := 1;
DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   := 1;
DM4.Qr_IncDar.ParambyName('CRNPED').AsFloat      := 0;
DM4.Qr_IncDar.ParambyName('CRNPED_NIVEL').AsFloat      := 0;
DM4.Qr_IncDar.ParambyName('CRORDEM').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRCODCC').AsString    := mcodccu;
DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString   := mcoddep;
DM4.Qr_IncDar.ParambyName('CRDESCMV').AsString   := mdesc_mov;
DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString    := mnomccu;
DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString   := mnomdep;
DM4.Qr_IncDar.ParambyName('CRNOMCTA').AsString   := pldr_nombco;
DM4.Qr_IncDar.ParambyName('CRCODCTA').AsInteger  := valint(edt_codcai.text);
DM4.Qr_IncDar.ParambyName('CRNATDC').AsString    := mnatdc;
DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_LB').AsFloat := 0;
DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat      := 0;
DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
DM4.Qr_IncDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;
DM4.Qr_IncDar.ParambyName('CRCODLDR').AsFloat    := mChaveIdLdr.codldr;
DM4.Qr_IncDar.ParambyName('CRCODVEN').AsFloat    := Iif(mcodven=0,1,mcodven);
DM4.Qr_IncDar.ParambyName('CRCODTLV').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CROBS').AsString      := ' ';
DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat      := 0;
DM4.Qr_IncDar.ParambyName('CRDEVOL').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRICMSR').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRDESCF').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:= DM1.Tb_ChqCHDTDEP.Value;
DM4.Qr_IncDar.ParambyName('CRJURD').AsFloat      := arredonda(((DM1.Tb_ChqCHVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
DM4.Qr_IncDar.ParambyName('CRDESCD').AsFloat     := arredonda(((DM1.Tb_ChqCHVALOR.Value*DM4.Tb_Par01PDESCM.Value/100)/30),2);
DM4.Qr_IncDar.ParambyName('CRMULTA').AsFloat     := arredonda((DM1.Tb_ChqCHVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
DM4.Qr_IncDar.ParambyName('CRQTDDM').AsFloat     := DM4.Tb_Par01PQTDDM.Value;
DM4.Qr_IncDar.ParambyName('CREMIDUP').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CREMIBLQ').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRVALFRE').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRNOSNUM').AsString   := ' ';
DM4.Qr_IncDar.ParambyName('CRDNOSNUM').AsString  := ' ';
DM4.Qr_IncDar.ParambyName('CRNFACUM').AsString   := 'Chq n.'+DM1.Tb_ChqCHNUMERO.AsString;
DM4.Qr_IncDar.ParambyName('CRTIPCOB').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRDTALT').AsDateTime  := now;
DM4.Qr_IncDar.ParambyName('CRUSRALT').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCOMVEN').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCOMV02').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCOMV03').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCOMTEL').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCOMSUP').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRSEMCOM').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRTOTDI01').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRTOTDI02').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRTOTDI03').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRTOTDIVL').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRVALDES01').AsFloat  := 0;
DM4.Qr_IncDar.ParambyName('CRVALDES02').AsFloat  := 0;
DM4.Qr_IncDar.ParambyName('CRVLRDES').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_FC').AsFloat := ls_codldr;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CP').AsFloat := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV').AsFloat  := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV02').AsFloat:= 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV03').AsFloat:= 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CS').AsFloat  := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CT').AsFloat  := 0;
DM4.Qr_IncDar.ParambyName('CRLOTCV').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRLOTCV02').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRLOTCV03').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRLOTCS').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRCODORI').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRLOTCT').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRCODUSR').AsFloat    := codusr;
DM4.Qr_IncDar.ParambyName('CRHRALT').AsString    := ' ';
DM4.Qr_IncDar.ParambyName('CRCODV02').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCODV03').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRCODCV').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRCODBAR').AsString   := ' ';
DM4.Qr_IncDar.ParambyName('CRCODDIG').AsString   := ' ';
DM4.Qr_IncDar.ParambyName('CRACEITE').AsString   := 'N';
DM4.Qr_IncDar.ParambyName('CRESPECIE').AsString  := 'CH';
DM4.Qr_IncDar.ParambyName('CRLEMAT').AsFloat     := 0;
DM4.Qr_IncDar.ParambyName('CRCODASSE').AsFloat   := mcodacess;
DM4.Qr_IncDar.ParambyName('CRCOMASSE').AsFloat   := 0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
DM4.Qr_IncDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
DM4.Qr_IncDar.ParambyName('CRVALSEG').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRINST01').AsString     := ' ';
DM4.Qr_IncDar.ParambyName('CRINST02').AsString     := ' ';
DM4.Qr_IncDar.ParambyName('CRINST03').AsString     := ' ';
DM4.Qr_IncDar.ParambyName('CRINST04').AsString     := ' ';
DM4.Qr_IncDar.ParambyName('CRTBCOCOB').AsFloat     :=0;
DM4.Qr_IncDar.ParambyName('CREMIBOR').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=DM1.Tb_ChqCHBANCO.AsFloat;
DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsString:=iif(length(dm1.Tb_ChqCHAGENCIA.AsString)>5,copy(DM1.Tb_ChqCHAGENCIA.AsString,1,5),DM1.Tb_ChqCHAGENCIA.AsString);
DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsString     :=DM1.Tb_ChqCHCC.AsString;
DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=DM1.Tb_ChqCHNUMERO.AsFloat;
DM4.Qr_IncDar.ParambyName('CRCODBCO').AsFloat    := 0;
DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=0;
DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRDTCAU').AsDateTime    :=pdatanula;
DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsDateTime:=pdatanula;;
DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsDateTime:=pdatanula;;
DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;;
DM4.Qr_IncDar.ParambyName('CRNR').AsFloat          :=0;
DM4.Qr_IncDar.ParambyName('CRCODV04').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRCOMV04').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
DM4.Qr_IncDar.ParambyName('CRLOTCV04').AsFloat     :=0;
DM4.Qr_IncDar.ParambyName('CRTOTIPI').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRTOTCGRU').AsFloat     :=0;
DM4.Qr_IncDar.ParambyName('CRTOTSGRU').AsFloat     :=0;
DM4.Qr_IncDar.ParambyName('CRCUSBCO').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRCOMIS_EXTRA').AsFloat :=0;
DM4.Qr_IncDar.ParambyName('CRSEQ').AsFloat         :=0;
DM4.Qr_IncDar.ParambyName('CRPFPGTO').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRTABPV').AsString      :=' ';
DM4.Qr_IncDar.ParambyName('CRCODPV').AsFloat       :=0;
DM4.Qr_IncDar.ParambyName('CRVINC02').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRCODFPGTO').AsFloat    :=0;
DM4.Qr_IncDar.ParambyName('CRNOMFPGTO').AsString   :=' ';

DM4.Qr_IncDar.ParambyName('CRFIN_CODFIN').AsFloat   :=0;
DM4.Qr_IncDar.ParambyName('CRLANCFIN').AsFLoat      :=0;
DM4.Qr_IncDar.ParambyName('CRDATPED').AsDateTime    :=date;
DM4.Qr_IncDar.ParambyName('CRCX_CODCAI').AsFloat    :=valint(edt_codcai.text);
DM4.Qr_IncDar.ParambyName('CRCX_LOTMOV').AsFloat    :=lotmov;
DM4.Qr_IncDar.ParambyName('CRTARBAN').AsFloat       :=0;
DM4.Qr_IncDar.ParambyName('CRCODCAR').AsFloat       :=0;
DM4.Qr_IncDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=0;
DM4.Qr_IncDar.ParambyName('CRLOTE_EC').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRTITPROT').AsFloat      :=0;
DM4.Qr_IncDar.ParambyName('CRCHD_EMITENTE').AsString:=Copy(DM1.Tb_ChqCHEMIT.AsString,1,40);
DM4.Qr_IncDar.ParambyName('CRCHAVE_ID_ANO').AsInteger :=valint(formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));
DM4.Qr_IncDar.ParambyName('CRCHAVE_ID').AsInteger    :=fBuscareTestarID('CADDAR_'+formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));

DM4.Qr_IncDar.ParambyName('CRID_NEW').AsInteger          :=fBuscarProximoId('CADDAR_SEQ');
DM4.Qr_IncDar.ParambyName('CRID_PED01_NEW').AsInteger    :=0;
DM4.Qr_IncDar.ParambyName('CRID_LDR_NEW').AsFloat        :=mChaveIdLdr.idNew;


Try
   DM4.Qr_IncDar.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar Exportar o Regisrtro de Cheque!',0,['0'],0);
   exit;
   end;
fchq01ant(9);
DM1.Tb_Chq.Delete;
fmensagem('Registro Exportado!',0,['0'],0);


end;

procedure TFrm_MChq.SbDetOriClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;
Form_forma_pag:tFrm_FormaPgto;

begin
  inherited;
if not DM1.Tb_Chq.Active then
   begin
   fmensagem('Favor Aplicar a Seleção!',0,['0'],0);
   exit;
   end;
if DM1.Tb_ChqCHLOTE.AsFloat=0 then
   begin
   fmensagem('Cheque não foi lançado através de baixa de Título!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Cheque '+DM1.Tb_ChqCHNUMERO.AsString+'/'+DM1.Tb_ChqCHBANCO.AsString+' Valor: '+formatFloat(mcasas, DM1.Tb_ChqCHVALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, DM1.Tb_ChqCHDTDEP.AsDateTime);
Form_Forma_Pag.fCarregarFormas(0,0,DM1.Tb_ChqCHCODCLI.AsFloat,'',0
  ,DM1.Tb_ChqCHCODEMP.asinteger,DM1.Tb_ChqCHLOTE.AsInteger,pdatanula);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);

end;

procedure TFrm_MChq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MChq.DBE_CodCtaExit(Sender: TObject);
begin
  inherited;
macbanco:=false;
DM1.Tb_ChqCHNOMCTA.Value:=' ';

if (DM1.Tb_ChqCHCODCTA.IsNull) or (DM1.Tb_ChqCHCODCTA.Value=0) then
   exit;
if DM1.Tb_Chq.State in [dsEdit,dsInsert] then
   begin
   if not flqr2('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_ChqCHCODCTA.AsString) then
      begin
      fmensagem('Banco/Conta não Cadastrado!',0,['0'],0);
      DBE_CodCta.SetFocus;
      end
   else
      begin
      DM1.Tb_ChqCHNOMCTA.Value:=DM1.Query2.Fields[0].AsString;
      if not DBCB_NOMBCO.Focused then
         macbanco:=true;
      end;
   end;


end;

procedure TFrm_MChq.DBE_CODDEPExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_Chq.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ChqCHNOMDEP.Value:=' ';
   if Trim(DM1.Tb_ChqCHCODDEP.Value)<>'' then
      begin
      if not flqr2('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_ChqCHCODDEP.Value) then
         begin
         verteclado(1);
         fmensagem('Departamento não cadastrado!',0,['0'],0);
         DBE_CODDEP.SetFocus;
         end
      else
         begin
         DM1.Tb_ChqCHNOMDEP.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;


end;

procedure TFrm_MChq.DBE_CODCCUExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_chq.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ChqCHNOMCC.Value:=' ';
   if Trim(DM1.Tb_ChqCHCODCC.Value)<>'' then
      begin
      if not flqr2('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',DM1.Tb_ChqCHCODCC.Value) then
         begin
         verteclado(1);
         fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
         DBE_CODCCU.SetFocus;
         end
      else
         begin
         DM1.Tb_ChqCHNATDC.Value:=DM1.Query2.Fields[1].AsString;
         DM1.Tb_ChqCHNOMCC.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;


end;

procedure TFrm_MChq.DBCB_NOMBCOExit(Sender: TObject);
begin
  inherited;
with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
if trim(DBCB_NOMBCO.Text)='' then
   DM1.Tb_ChqCHCODCTA.Value:=0
else
   begin
   DM1.Tb_ChqCHCODCTA.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
   DBE_CodCtaExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_MChq.DBCB_NOMDEPExit(Sender: TObject);
begin
  inherited;
with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
if trim(DBCB_NOMDEP.Text)='' then
   DM1.Tb_ChqCHCODDEP.Value:=''
else
   begin
   DM1.Tb_ChqCHCODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
   DBE_CODDEPExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_MChq.DBCB_NOMCCUExit(Sender: TObject);
begin
  inherited;
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
if trim(DBCB_NOMCCU.Text)='' then
   DM1.Tb_ChqCHCODCC.Value:=''
else
   begin
   DM1.Tb_ChqCHCODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
   DBE_CODCCUExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_MChq.DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ChqCHCODCTA.Value:=ValFloat(fChamaBco(0,'frm_MCHQCP',Key));
   DBE_CodCtaExit(self);
   key:=#0;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
   DM1.Query5.Open;
   DBCB_NOMBCO.Items.Clear;
   While not DM1.Query5.Eof do
      begin
      DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
      DM1.Query5.Next;
      end;
   end;



end;

procedure TFrm_MChq.DBCB_NOMBCOEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Chq.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DM1.Tb_ChqCHNOMCTA.Value
                                 +'['+DM1.Tb_ChqCHCODCTA.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macbanco then
   DBE_CODDEP.SetFocus;
macbanco:=false;

end;

procedure TFrm_MChq.DBCB_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Chq.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DM1.Tb_ChqCHNOMDEP.Value
                                    +'['+DM1.Tb_ChqCHCODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CODCCU.SetFocus;
macdep:=false;

end;

procedure TFrm_MChq.DBCB_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Chq.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DM1.Tb_ChqChNOMCC.AsString
                                    +'-'+DM1.Tb_ChqChNATDC.AsString
                                    +'['+DM1.Tb_ChqChCODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   lbl_obs.Top:=55;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_DESCMOV.SetFocus;
macccu:=false;

end;

procedure TFrm_MChq.DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Chq.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ChqCHCODCTA.Value:=ValFloat(fChamaBco(0,'frm_mChqCp',''));
      DBE_CodCtaExit(self);
      key:=0;

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMBCO.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_MChq.DBCB_NOMDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Chq.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM1.Tb_ChqCHCODDEP.Value:=fChamaDeptoCX(0,'frm_mChqcp','');
      DBE_CODDEPExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;

      end;
   end;


end;

procedure TFrm_MChq.DBCB_NOMCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Chq.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM1.Tb_ChqCHCODDEP.Value:=fChamaCCU(0,'frm_mChqCP','');
      DM1.Tb_ChqCHNATDC.Value:=DM1.Tb_CCUCCNAT.Value;
      DBE_CODCCUExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMCCU.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;

end;

procedure TFrm_MChq.FormActivate(Sender: TObject);
begin
  inherited;
ftestacaixa(0);
flparldr(0,'CADDAR0');
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
PC1.ActivePageIndex:=0;
end;

procedure TFrm_MChq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TFrm_MChq.edt_codcaiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcai.text:=fChamaBco(0,'frm_ldr',key);
   edt_codcaiExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MChq.edt_codcaiExit(Sender: TObject);
begin
  inherited;

edt_codcai.text:=fdeixanum(edt_codcai.text);
if valint(edt_codcai.text)<>0 then
   begin
   if not fLerGenerico_query('CADBCO','BCBANCO,BCCODBCO','BCCODBCO='+edt_codcai.text,query_consulta) then
       begin
       fmensagem('Banco Nao Cadastrado!',0,['0'],0);
       edt_codcai.Setfocus;
       end
    else
       edt_nombco.Text:=query_consulta.fieldbyname('BCBANCO').asstring;   
   end;

end;

end.



