unit S_MchqCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls, S_SelEmp,
  s_dm1, db, dbtables,s_cli, DBCtrls, Grids, DBGrids,func,lerarq,S_LOptica,S_DetBaiChq,
  func2,S_DM6, ToolEdit, RXDBCtrl;

type
  TFrm_MChqCP = class(TFrm_C)
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
    DBCB_EXTRA: TDBCheckBox;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    Label23: TLabel;
    DBEdit25: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label17: TLabel;
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
    gb_fluxocaixa: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lbl_obs: TLabel;
    DBE_CODDEP: TDBEdit;
    DBE_CODCCU: TDBEdit;
    DBE_DESCMOV: TDBEdit;
    DBE_CodCta: TDBEdit;
    DBCB_NOMBCO: TDBComboBox;
    DBCB_NOMDEP: TDBComboBox;
    DBCB_NOMCCU: TDBComboBox;
    DBEdit18: TDBEdit;
    gb_dadosemitente: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label25: TLabel;
    DBEdit27: TDBEdit;
    sbDetBai: TSpeedButton;
    SbDetOri: TSpeedButton;
    DBNavigator2: TDBNavigator;
    btnSair: TBitBtn;
    DBE_DTPAG: TDBDateEdit;
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
    procedure sbDetBaiClick(Sender: TObject);
    procedure SbDetOriClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CodCtaExit(Sender: TObject);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CODDEPExit(Sender: TObject);
    procedure DBE_CODDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBCB_NOMDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CODCCUExit(Sender: TObject);
    procedure DBE_CODCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure DBCB_NOMCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     function fchq01lerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

  function fchq01ant(ptipo: Integer): Boolean;

var
  Frm_MChqCP: TFrm_MChqCP;
  chq_ori: String;
  moper: Integer;
  mDataDep_Ant: TDateTime;
  maceita_ant: Boolean;
  macbanco: Boolean=false;
  macdep     : Boolean=False;
  macccu     : Boolean=False;


implementation

uses S_DM4;

{$R *.dfm}
procedure TFrm_MChqCP.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM6.Tb_ChqCP.Insert;
DM6.Tb_ChqCPCHDATHOR_INC.AsDateTime    :=Now;
DM6.Tb_ChqCPCHCODUSR_INC.AsFloat       :=codusr;

DBEdit1.SetFocus;
moper:=0;
end;

procedure TFrm_MChqCP.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCPCHNUMERO.IsNull then
   begin
   fmensagem('Favor Selecionar um registro Válido!',0,['0'],0);
   CANCELAR.Click;
   exit;
   end;
{
if DM6.Tb_ChqCPCHSTATUS.Value=2 then
   begin
   fmensagem('Cheque baixado Favor Cancelar a Baixa!',0,['0'],0);
   exit;
   end;
}
moper:=8;
DM6.Tb_ChqCP.Edit;
DM6.Tb_ChqCPCHDATHOR_ALT.AsDateTime    :=Now;
DM6.Tb_ChqCPCHCODUSR_ALT.AsFloat       :=codusr;
mDataDep_Ant:=DM6.Tb_ChqCPCHDTDEP.Value;
end;

procedure TFrm_MChqCP.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCPCHNUMERO.IsNull then
   begin
   fmensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
{
if DM6.Tb_ChqCPCHSTATUS.Value=2 then
   begin
   fmensagem('Cheque baixado Favor Cancelar a Baixa!',0,['0'],0);
   exit;
   end;
}
if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   fchq01ant(9);
{

   if DM6.Tb_ChqCPCHCODLDR.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.add('Delete From CADLDR where ');
      if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
         begin
         DM1.Query1.SQL.add(' LOTSEQ=0'+DM6.Tb_ChqCPCHLOTSEQ_FC.AsString
                           +' and CODLDR=0'+DM6.Tb_ChqCPCHCODLDR.AsString)
         end
      else
         begin
         DM1.Query1.SQL.add(' CODEMP=0'+DM6.Tb_ChqCPCHCODEMP.AsString
                           +' and LOTSEQ=0'+DM6.Tb_ChqCPCHLOTSEQ_FC.AsString
                           +' and CODLDR=0'+DM6.Tb_ChqCPCHCODLDR.AsString);
         end;
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
      end;
}
   DM6.Tb_ChqCP.Edit;
   DM6.Tb_ChqCPCHSTATUS.Value:=9;
//   DM6.Tb_ChqCPCHCODUSR.Value:=codusr;
//   DM6.Tb_ChqCPCHDTALT.Value :=pdatasis;
//   DM6.Tb_ChqCPCHHRALT.Value :=FormatDatetime(fhr, time);
   DM6.Tb_ChqCP.Post;
   BBnAtuClick(self);
   end;


end;

procedure TFrm_MChqCP.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM6.Tb_ChqCPCHNUMERO.IsNull) or (DM6.Tb_ChqCPCHNUMERO.Value=0) then
   begin
   Fmensagem('Número campo Obrigatorio',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM6.Tb_ChqCPCHCODFOR.IsNull then
   begin
   Fmensagem('Código do Cliente. Campo Obrigatório',0,['0'],0);
   DBEdit7.SetFocus;
   exit;
   end;
if DM6.Tb_ChqCPCHVALOR.IsNull then
   begin
   Fmensagem('Valor do cheque campo Obrigatório',0,['0'],0);
   DBEdit13.SetFocus;
   exit;
   end;
if DM6.Tb_ChqCPCHDTDEP.IsNull then
   begin
   Fmensagem('Data de deposito campo obrigatório!',0,['0'],0);
   DBEdit15.SetFocus;
   exit;
   end;
if moper=8 then
   fchq01ant(moper);
//DM6.Tb_ChqCPCHCODUSR.Value:=codusr;
//DM6.Tb_ChqCPCHDTALT.Value :=pdatasis;
//DM6.Tb_ChqCPCHHRALT.Value :=FormatDatetime(fhr, time);
{
if mDataDep_Ant>pdatanula then
   begin
   if DM6.Tb_ChqCPCHPRO_ULTDAT.Value=DM6.Tb_ChqCPCHDTDEP.Value then
      begin
      if DM6.Tb_ChqCPCHPROR_QTDP.AsFloat>0 then
         DM6.Tb_ChqCPCHPROR_QTDP.Value:=DM6.Tb_ChqCPCHPROR_QTDP.Value-1;
      end
   else
      begin
      DM6.Tb_ChqCPCHPROR_QTDP.Value:=DM6.Tb_ChqCPCHPROR_QTDP.AsFloat+1;
      DM6.Tb_ChqCPCHPRO_ULTDAT.Value:=mDataDep_Ant;
      end;
   end;
}
mDataDep_Ant:=DM6.Tb_ChqCPCHDTDEP.Value;



if DM4.Tb_ParGer02PG2CHQFC.AsInteger=0 then
   begin
   if DM6.Tb_ChqCPCHCODLDR_DEB.Value>0 then
      begin
      if not flcadldr(0,0,DM6.Tb_ChqCPCHLOTSEQ_FC.AsInteger,DM6.Tb_ChqCPCHCODLDR_DEB.AsString) then
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
   DM1.Tb_LDRCODEMP.Value  :=DM6.Tb_ChqCPCHCODEMP.Value;
   DM1.Tb_LDRDATADP.Value  :=DM6.Tb_ChqCPCHDTDEP.Value;
   DM1.Tb_LDRDATAREF.Value :=DM6.Tb_ChqCPCHDTEMIS.Value;
   DM1.Tb_LDRVALORP.Value  :=DM6.Tb_ChqCPCHVALOR.Value; // valor
   DM1.Tb_LDRDATAREAL.Value:=DM6.Tb_ChqCPCHDTDEP.Value;
   DM1.Tb_LDRVALORR.Value  :=DM6.Tb_ChqCPCHVALOR.Value;
   DM1.Tb_LDRVALORP.Value  :=DM6.Tb_ChqCPCHVALOR.Value; // valor
   DM1.Tb_LDRDESCMV.Value:=DM6.Tb_ChqCPCHDESCMV.Value;
   if DM6.Tb_ChqCPCHDTBX.Value>pdatanula then
      DM1.Tb_LDRDTSALDO.AsDateTime  := DM6.Tb_ChqCPCHDTBX.Value
   else
      DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;
   if DM6.Tb_ChqCPCHCODCTA.AsInteger<>0 then
      DM1.Tb_LDRCODBCO.Value  :=DM6.Tb_ChqCPCHCODCTA.AsInteger
   else
      DM1.Tb_LDRCODBCO.Value  :=codcai;

   if DM1.Tb_LDR.State in [dsInsert] then
      begin
      DM1.Tb_LDRNUMDOC.Value :='CHQ-'+FormatFloat('000000',DM6.Tb_ChqCPCHNUMERO.Value)+'/'+DM6.Tb_ChqCPCHBANCO.AsString;
      DM1.Tb_LDRSTATUS.Value:=0;
      DM1.Tb_LDRORIGEM.Value:=03;

      if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
         DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
      else
         DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
      DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
      if length(DM1.Tb_LDRDESCMV.Value)>50 then
         DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
      DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;
      end;




   DM1.Tb_LDRTIPO.Value  :='FR';
   DM1.Tb_LDRCODIGO.Value:=DM6.Tb_ChqCPCHCODFOR.Value;
   DM1.Tb_LDRNOME.Value  :=DM6.Tb_ChqCPnomfor.Value;
   DM1.Tb_LDRLOCDEP.Value:=0;
   DM1.Tb_LDRCODCC.Value :=DM6.Tb_ChqCPCHCODCC.Value;
   DM1.Tb_LDRCODDEP.Value:=DM6.Tb_ChqCPCHCODDEP.Value;
   DM1.Tb_LDRNOMBCO.Value:=DM6.Tb_ChqCPCHNOMCTA.Value;
   DM1.Tb_LDRNOMDEP.Value:=DM6.Tb_ChqCPCHNOMDEP.Value;
   DM1.Tb_LDRNOMCCU.Value:=DM6.Tb_ChqCPCHNOMCC.Value;
   DM1.Tb_LDRNATDC.Value :=DM6.Tb_ChqCPCHNATDC.Value;
   DM1.Tb_LDRLOTMOV.Value:=lotmov;
   DM1.Tb_LDR.Post;
   DM6.Tb_ChqCPCHCODLDR.Value   :=dm1.Tb_LDRCODLDR.AsFloat;
   DM6.Tb_ChqCPCHLOTSEQ_FC.Value:=DM1.Tb_LDRLOTSEQ.AsFloat;
   end;

dm6.Tb_ChqCPCHDATHOR_ALT.AsDateTime:=now;


DM6.Tb_ChqCP.Post;
CANCELAR.Click;


end;

procedure TFrm_MChqCP.BBnAtuClick(Sender: TObject);
begin
  inherited;
if chq_ori='consulta' then
   begin
   fchq01lerant(0);
   end
else
   flcadchqcp(campo.ItemIndex,1,0,ls_codchqcli,0,Edit1.Text,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS );

end;

procedure TFrm_MChqCP.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_MChqCP.CANCELARClick(Sender: TObject);
begin
  inherited;
DM6.Tb_ChqCP.Cancel;
moper:=0;
mDataDep_Ant:=pdatanula;
end;

procedure TFrm_MChqCP.FormCreate(Sender: TObject);
begin
  inherited;
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
DBNavigator2.DataSource:=DM6.Src_ChqCP;
DBgrid1.DataSource:=DM6.Src_ChqCP;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_MChqCP.DBGrid1DblClick(Sender: TObject);
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

procedure TFrm_MChqCP.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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
DM1.Query1.SQL.add('Select max(CHCODNOV) from OLD_CADCHCP');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADCHCP (';
v:='';
for x:=0 to DM6.Tb_ChqCP.FieldCount-1 do
   begin
   if DM6.Tb_ChqCP.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_ChqCP.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CHCODNOV) Select ';
v:='';
for x:=0 to DM6.Tb_ChqCP.FieldCount-1 do
   begin
   if DM6.Tb_ChqCP.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM6.Tb_ChqCP.Fields[x].FieldName='CHSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as CHSTATUS '
   else if DM6.Tb_ChqCP.Fields[x].FieldName='CHCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CHCODUSR '
   else if DM6.Tb_ChqCP.Fields[x].FieldName='CHDTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as CHDTALT '
   else if DM6.Tb_ChqCP.Fields[x].FieldName='CHHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CHHRALT '
   else
      minstru:=minstru+v+DM6.Tb_ChqCP.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CHCODNOV ';
minstru:=minstru+' from CADCHCP where CHCODEMP=0'+DM6.Tb_ChqCPCHCODEMP.AsString
                +' and CHLOTSEQ=0'+DM6.Tb_ChqCPCHCODEMP.AsString
                +' and CHSEQ=0'+DM6.Tb_ChqCPCHSEQ.AsString;
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
function tFrm_MChqCP.fchq01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM6.Tb_ChqCP.FieldCount-1 do
   begin
   if DM6.Tb_ChqCP.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_ChqCP.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADCHQ where CHCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM6.Tb_ChqCP.Close;
DM6.Tb_ChqCP.SQL.Clear;
DM6.Tb_ChqCP.SQL.add(minstru);
DM6.Tb_ChqCP.Open;

BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;





procedure TFrm_MChqCP.DBEdit1Enter(Sender: TObject);
begin
  inherited;
st_leitor.Visible:=True;

end;

procedure TFrm_MChqCP.DBEdit1Exit(Sender: TObject);
begin
  inherited;
st_leitor.Visible:=false;

end;

procedure TFrm_MChqCP.DBEdit1KeyDown(Sender: TObject; var Key: Word;
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
      DM6.Tb_ChqCPCHBANCO.Value:=lo_banco;
   if lo_agencia>0 then
      DM6.Tb_ChqCPCHAGENCIA.Value:=FloatToStr(lo_agencia);
   if lo_compens>0 then
      DM6.Tb_ChqCPCHCOMP.Value   :=FloatTostr(lo_compens);
   if lo_numchq>0 then
      DM6.Tb_ChqCPCHNUMERO.Value :=lo_numchq;
   if lo_conta>0 then
      DM6.Tb_ChqCPCHCC.Value     :=FloatToStr(lo_conta);
   Frm_LOptica.Free;
   Frm_LOptica:=nil;
   end;

end;

procedure TFrm_MChqCP.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM6.Tb_ChqCPCHCODFOR.Value:=fSonumero(fChamaFOR(0,'Frm_Mchq',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MChqCP.DBEdit7Exit(Sender: TObject);
begin
  inherited;
if not flcadfor(1,0,DM6.Tb_ChqCPCHCODFOR.AsString) then
   begin
   fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
   DBEdit7.SetFocus;
   end
else
   begin
   DM6.Tb_ChqCPCHEMIT.Value:=DM1.Tb_ForFrazao.Value;

   if (trim(DM1.Tb_ForFDESCMVC.AsString)='') or
      (trim(DM1.Tb_ForFDESCMVC.AsString)='_') then
      DM6.Tb_ChqCPCHDESCMV.Value:=pldr_descmov
   else
      DM6.Tb_ChqCPCHDESCMV.Value:=DM1.Tb_ForFDESCMVC.Value;
   if (Trim(DM1.Tb_ForFCODCCC.AsString)='') or
      (Trim(DM1.Tb_ForFCODCCC.AsString)='_') then
      begin
      DM6.Tb_ChqCPCHCODCC.Value :=pldr_codccu;
      DM6.Tb_ChqCPCHNOMCC.Value :=pldr_nomccu;
      DM6.Tb_ChqCPCHNATDC.Value :=pldr_natdc;
      end
   else
      begin
      DM6.Tb_ChqCPCHCODCC.Value :=DM1.Tb_ForFCODCCC.Value;
      DM6.Tb_ChqCPCHNOMCC.Value :=DM1.Tb_ForFNOMCCC.Value;
      if (trim(DM1.Tb_ForFNATDCC.AsString)='') or
        (trim(DM1.Tb_ForFNATDCC.AsString)='_') then
         DM6.Tb_ChqCPCHNATDC.Value:='C'
      else
         DM6.Tb_ChqCPCHNATDC.Value:=DM1.Tb_ForFNATDCC.Value;
      end;
   if (trim(DM1.Tb_ForFCODDEPC.AsString)='') or
      (trim(DM1.Tb_ForFCODDEPC.AsString)='_') then
      begin
      DM6.Tb_ChqCPCHCODDEP.Value:=pldr_coddep;
      DM6.Tb_ChqCPCHNOMDEP.Value:=pldr_nomdep;
      end
   else
      begin
      DM6.Tb_ChqCPCHCODDEP.Value:=DM1.Tb_ForFCODDEPC.Value;
      DM6.Tb_ChqCPCHNOMDEP.Value:=DM1.Tb_ForFNOMDEPC.Value;
      end;

{
   if DM1.Tb_ForFCPF.Value>0 then
      begin
      DM6.Tb_ChqCPCHCPF.Value:=DM1.Tb_ForFCPF.Value;
      DM6.Tb_ChqCPCHRG.Value :=DM1.Tb_ForFRG.Value;
      end
   else
      begin
      DM6.Tb_ChqCPCHCPF.Value:=DM1.Tb_ForFCNPJ.Value;
      DM6.Tb_ChqCPCHRG.Value :=DM1.Tb_ForFIE.Value;
      end;
    if fsonumero(DM6.Tb_ChqCPCHFONE01.Value)<=0 then
       DM6.Tb_ChqCPCHFONE01.Value:=DM1.Tb_ForFFONE01.AsString;
    if fsonumero(DM6.Tb_ChqCPCHFONE02.Value)<=0 then
       DM6.Tb_ChqCPCHFONE02.Value:=DM1.Tb_ForFFONE02.AsString;
}
   end;
end;

procedure TFrm_MChqCP.Edit1Exit(Sender: TObject);
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

procedure TFrm_MChqCP.sbDetBaiClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCPCHSTATUS.AsFloat<>2 then
   begin
   fmensagem('Cheque em aberto!',0,['0'],0);
   exit;
   end;
if Frm_DetBaiChq=nil then
   Application.CreateForm(TFrm_DetBaiChq, Frm_DetBaiChq)
else
   begin
   Frm_DetBaiChq.Free;
   Frm_DetBaiChq:=nil;
   Application.CreateForm(TFrm_DetBaiChq, Frm_DetBaiChq);
   end;
Frm_DetBaiChq.memo1.Lines.Clear;

if DM6.Tb_ChqCPCHLOTE_BT.AsFloat>0 then
   begin
   Frm_DetBaiChq.Memo1.Lines.Add('Baixado Diretamente Pela baixa Cheque Imediato');
   Frm_DetBaiChq.Memo1.Lines.Add('Numero do Lote de Baixa de Origem: '+DM6.Tb_ChqCPCHLOTE_BT.AsString);
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('Select * from CADBCL01 where ');
   if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query1.Sql.add(' BL1CHAVE=0'+DM6.Tb_ChqCPCHLOTEBX.AsString
                      +' order by BL1CHAVE')
   else
      begin
      if DM1.Tb_PargerPMTE.AsFloat=2 then
         begin
         DM1.Query1.Sql.add(' (BL1CODEMP=0'+IntTostr(codemp)+' or BL1CODEMP=0'+IntTostr(codemp
                                                                               +iif(codemp>100,codemp-100,codemp+100)
                                                                               ) +') '
                      +' and BL1CHAVE=0'+DM6.Tb_ChqCPCHLOTEBX.AsString
                      +' order by BL1CHAVE');
         end
      else
         begin
         DM1.Query1.Sql.add(' BL1CODEMP=0'+IntTostr(codemp)
                      +' and BL1CHAVE=0'+DM6.Tb_ChqCPCHLOTEBX.AsString
                      +' order by BL1CHAVE');
         end;

      end;
   DM1.Query1.Open;

   if DM1.Query1.Eof then
      Frm_DetBaiChq.Memo1.Lines.Add('Não Foi encontrado o Lote de baixa do Cheque!')
   else
      begin
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS01').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS02').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add(DM1.Query1.fieldByName('BL1OBS03').AsString);
      Frm_DetBaiChq.Memo1.Lines.Add('Data do Lote de baixa: '+FormatDatetime(fdt2, DM1.Query1.fieldByName('BL1DATA').AsDateTime));
      end;
   end;
Frm_DetBaiChq.Show;
end;
procedure TFrm_MChqCP.SbDetOriClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;

begin
  inherited;
if not DM6.Tb_ChqCP.Active then
   begin
   fmensagem('Favor Aplicar a Seleção!',0,['0'],0);
   exit;
   end;
if DM6.Tb_ChqCPCHLOTE.AsFloat=0 then
   begin
   fmensagem('Cheque não foi lançado através de baixa de Título!',0,['0'],0);
   exit;
   end;

end;

procedure TFrm_MChqCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MChqCP.DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin   DM6.Tb_ChqCPCHCODCTA.Value:=ValFloat(fChamaBco(0,'frm_MCHQCP',Key));
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

procedure TFrm_MChqCP.DBE_CodCtaExit(Sender: TObject);
begin
  inherited;
macbanco:=false;
DM6.Tb_ChqCPCHNOMCTA.Value:=' ';

if (DM6.Tb_ChqCPCHCODCTA.IsNull) or (DM6.Tb_ChqCPCHCODCTA.Value=0) then
   exit;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   if not flqr2('BCBANCO','BC','CADBCO','N','BCCODBCO',DM6.Tb_ChqCPCHCODCTA.AsString) then
      begin
      fmensagem('Banco/Conta não Cadastrado!',0,['0'],0);
      DBE_CodCta.SetFocus;
      end
   else
      begin
      DM6.Tb_ChqCPCHNOMCTA.Value:=DM1.Query2.Fields[0].AsString;
      if not DBCB_NOMBCO.Focused then
         macbanco:=true;
      end;
   end;


end;

procedure TFrm_MChqCP.DBCB_NOMBCOEnter(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DM6.Tb_ChqCPCHNOMCTA.Value
                                 +'['+DM6.Tb_ChqCPCHCODCTA.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macbanco then
   DBE_CODDEP.SetFocus;
macbanco:=false;

end;

procedure TFrm_MChqCP.DBCB_NOMBCOExit(Sender: TObject);
begin
  inherited;
with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
if trim(DBCB_NOMBCO.Text)='' then
   DM6.Tb_ChqCPCHCODCTA.Value:=0
else
   begin
   DM6.Tb_ChqCPCHCODCTA.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
   DBE_CodCtaExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_MChqCP.DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM6.Tb_ChqCP.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM6.Tb_ChqCPCHCODCTA.Value:=ValFloat(fChamaBco(0,'frm_mChqCp',''));
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

procedure TFrm_MChqCP.DBE_CODDEPExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   DM6.Tb_ChqCPCHNOMDEP.Value:=' ';
   if Trim(DM6.Tb_ChqCPCHCODDEP.Value)<>'' then
      begin
      if not flqr2('DNOME','D','CADDEP','C','DCODDEP',DM6.Tb_ChqCPCHCODDEP.Value) then
         begin
         verteclado(1);
         fmensagem('Departamento não cadastrado!',0,['0'],0);
         DBE_CODDEP.SetFocus;
         end
      else
         begin
         DM6.Tb_ChqCPCHNOMDEP.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;

end;

procedure TFrm_MChqCP.DBE_CODDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM6.Tb_ChqCP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM6.Tb_ChqCPCHCODDEP.Value:=fChamaDeptoCX(0,'frm_mchqcp','');
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

procedure TFrm_MChqCP.DBCB_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DM6.Tb_ChqCPCHNOMDEP.Value
                                    +'['+DM6.Tb_ChqCPCHCODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CODCCU.SetFocus;
macdep:=false;

end;

procedure TFrm_MChqCP.DBCB_NOMDEPExit(Sender: TObject);
begin
  inherited;
with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
if trim(DBCB_NOMDEP.Text)='' then
   DM6.Tb_ChqCPCHCODDEP.Value:=''
else
   begin
   DM6.Tb_ChqCPCHCODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
   DBE_CODDEPExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_MChqCP.DBCB_NOMDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM6.Tb_ChqCP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM6.Tb_ChqCPCHCODDEP.Value:=fChamaDeptoCX(0,'frm_mChqcp','');
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

procedure TFrm_MChqCP.DBE_CODCCUExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   DM6.Tb_ChqCPCHNOMCC.Value:=' ';
   if Trim(DM6.Tb_ChqCPCHCODCC.Value)<>'' then
      begin
      if not flqr2('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',DM6.Tb_ChqCPCHCODCC.Value) then
         begin
         verteclado(1);
         fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
         DBE_CODCCU.SetFocus;
         end
      else
         begin
         DM6.Tb_ChqCPCHNATDC.Value:=DM1.Query2.Fields[1].AsString;
         DM6.Tb_ChqCPCHNOMCC.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;


end;

procedure TFrm_MChqCP.DBE_CODCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM6.Tb_ChqCP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM6.Tb_ChqCPCHCODCC.Value:=fChamaCCU(0,'frm_mChqCP','');
      DM6.Tb_ChqCPCHNATDC.Value:=DM1.Tb_CCUCCNAT.Value;
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

procedure TFrm_MChqCP.DBCB_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if DM6.Tb_ChqCP.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DM6.Tb_ChqCPCHNOMCC.AsString
                                    +'-'+DM6.Tb_ChqCPCHNATDC.AsString
                                    +'['+DM6.Tb_ChqCPCHCODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   lbl_obs.Top:=55;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_DESCMOV.SetFocus;
macccu:=false;

end;

procedure TFrm_MChqCP.DBCB_NOMCCUExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMCCU.ItemIndex<0 then
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
if trim(DBCB_NOMCCU.Text)='' then
   DM6.Tb_ChqCPCHCODCC.Value:=''
else
   begin
   DM6.Tb_ChqCPCHCODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
   DBE_CODCCUExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_MChqCP.DBCB_NOMCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM6.Tb_ChqCP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      DM6.Tb_ChqCPCHCODDEP.Value:=fChamaCCU(0,'frm_mChqCP','');
      DM6.Tb_ChqCPCHNATDC.Value:=DM1.Tb_CCUCCNAT.Value;
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

procedure TFrm_MChqCP.FormActivate(Sender: TObject);
begin
  inherited;
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

procedure TFrm_MChqCP.btnSairClick(Sender: TObject);
begin
  inherited;
  if    chq_ori = '' then close;
end;

procedure TFrm_MChqCP.FormKeyDown(Sender: TObject; var Key: Word;
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

end.



