unit S_ManImo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,S_DM2,db,dbtables,func,lerarq,
  ExtCtrls, DBCtrls, Grids, DBGrids,S_Imo,S_MImo, RLReport, RLRichFilter,
  RLFilters, RLXLSFilter;

type
  TFrm_ManImo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODIMO: TEdit;
    NOMIMO: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    cb_tppesq: TCheckBox;
    bbAtualizar: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    bbIncluir: TBitBtn;
    bbAlterar: TBitBtn;
    bbGravar: TBitBtn;
    bbCancelar: TBitBtn;
    bbExcluir: TBitBtn;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    db_datenv: TDBEdit;
    Label12: TLabel;
    db_datret: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    dtenv: TMaskEdit;
    dtret: TMaskEdit;
    bbSair: TBitBtn;
    bbimprimir: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    lbl_ordem: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    lbl_periodo: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    rl_dt_retorno: TRLDBText;
    rl_dt_envio: TRLLabel;
    lbl_retorno: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText14: TRLDBText;
    RLBand3: TRLBand;
    lbl_codigo: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_fpgto: TRLLabel;
    lbl_pcouni: TRLLabel;
    lbl_qtd: TRLLabel;
    lbl_valtot: TRLLabel;
    lbl_produto: TRLLabel;
    procedure bbSairClick(Sender: TObject);
    procedure CODIMOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIMOExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure CODIMOEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbimprimirClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ManImo: TFrm_ManImo;

implementation

{$R *.dfm}

procedure TFrm_ManImo.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManImo.CODIMOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Imo, Frm_Imo);
   Frm_Imo.Edit1.Text:=key;
   Frm_Imo.Edit1.SelStart:=1;
   Frm_Imo.Edit1.SelLength:=1;
   Frm_Imo.PC1.ActivePageIndex:=1;
   imo_ori:='Frm_ManImo';
   Frm_Imo.ShowModal;
   CODIMO.Text:=DM2.Tb_Imo01IM1CODIMO.AsString;
   Frm_Imo.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManImo.CODIMOExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODIMO.Text:=fdeixanum(CODIMO.Text);
if ValFloat(CODIMO.Text)=0 then
   CODIMO.Text:='';
if Trim(CODIMO.Text)<>'' then
   begin
   if flcadimo01(1,0,0,Trim(CODIMO.Text)) then
      begin
      NOMIMO.Text:=DM2.Tb_Imo01IM1NOME.Value;
      end
   else
      begin
      MessageDlg('Imóvel não Cadastrado!',mtWarning,[mbOk],0);
      CODIMO.SetFocus;
      end;
   end;
end;

procedure TFrm_ManImo.bbAtualizarClick(Sender: TObject);
var
mdatai, mdataf: string;
begin
if (Trim(MDT2.Text)<>'/  /') and (Trim(MDT1.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrToDate(MDT2.Text) then
      Begin
      MessageDlg('Data inicial maior que final. Inválido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
CODIMO.Text:=fdeixanum(CODIMO.Text);
if not flcadimo01(1,0,0,Trim(CODIMO.Text)) then
   begin
   MessageDlg('Imóvel não Cadastrado!',mtWarning,[mbOk],0);
   CODIMO.SetFocus;
   exit;
   end;

if Trim(MDT1.Text)='/  /' then
   mdatai:=''
else
   mdatai:=FormatDateTime(fdt, StrToDate(MDT1.Text));
if Trim(MDT2.Text)='/  /' then
   mdataf:=''
else
   mdataf:=FormatDateTime(fdt, StrToDate(MDT2.Text));

if not flcadimo02(iif(cb_tppesq.Checked,1,0),0,0,ValInt(CODIMO.Text),mdatai,mdataf) then
   begin
   bbAlterar.Enabled :=False;
   bbExcluir.Enabled :=False;
   bbimprimir.Enabled:=False;
   end
else
   begin
   bbAlterar.Enabled :=True;
   bbExcluir.Enabled :=True;
   bbimprimir.Enabled:=True;
   end;
bbIncluir.Enabled:=True;
bbGravar.Enabled :=False;
end;

procedure TFrm_ManImo.bbIncluirClick(Sender: TObject);
begin
dtret.Text         :='/  /';
dtenv.Text         :='/  /';

dtenv.Visible      :=True;
dtret.Visible      :=True;
db_datenv.Visible  :=False;
db_datret.Visible  :=False;

bbIncluir.Enabled :=False;
bbAlterar.Enabled :=False;
bbGravar.Enabled  :=True;
bbCancelar.Enabled:=True;
bbExcluir.Enabled :=True;
bbimprimir.Enabled:=False;;
GroupBox3.Enabled :=True;
DM2.Tb_Imo02.Append;
DbEdit1.SetFocus;
end;

procedure TFrm_ManImo.bbAlterarClick(Sender: TObject);
begin
if DM2.Tb_Imo02IM2CODIMO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   end;
dtret.Text         :=DM2.Tb_Imo02dataret.Value;
dtenv.Text         :=DM2.Tb_Imo02dataenv.Value;
dtenv.Visible      :=True;
dtret.Visible      :=True;
db_datenv.Visible  :=False;
db_datret.Visible  :=False;
bbIncluir.Enabled :=False;
bbAlterar.Enabled :=False;
bbGravar.Enabled  :=True;
bbCancelar.Enabled:=True;
bbExcluir.Enabled :=True;
bbimprimir.Enabled:=False;
GroupBox3.Enabled :=True;
DM2.Tb_Imo02.Edit;
DbEdit1.SetFocus;

end;

procedure TFrm_ManImo.bbExcluirClick(Sender: TObject);
begin
if DM2.Tb_Imo02IM2CODIMO.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   end;
if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Imo02.Delete;
   bbCancelar.Click;
   end;

end;

procedure TFrm_ManImo.bbCancelarClick(Sender: TObject);
begin
bbIncluir.Enabled :=True;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=True;
if DM2.Tb_Imo02IM2CODIMO.IsNull then
   begin
   bbAlterar.Enabled :=False;
   bbExcluir.Enabled :=False;
   bbimprimir.Enabled:=False;
   end
else
   begin
   bbAlterar.Enabled :=True;
   bbExcluir.Enabled :=True;
   bbimprimir.Enabled:=True;
   end;
DM2.Tb_Imo02.Cancel;
GroupBox3.Enabled :=False;

end;

procedure TFrm_ManImo.bbGravarClick(Sender: TObject);
begin


if Trim(dtenv.Text)<>'/  /' then
   DM2.Tb_Imo02IM2DATAEM.Value:=StrToDate(dtenv.Text)
else
   DM2.Tb_Imo02IM2DATAEM.Value:=pdatanula;

if Trim(dtret.Text)<>'/  /' then
   DM2.Tb_Imo02IM2DATARM.Value:=StrToDate(dtret.Text)
else
   DM2.Tb_Imo02IM2DATARM.Value:=pdatanula;
if DM2.Tb_Imo02IM2STATUS.Value=-1 then
   DM2.Tb_Imo02IM2STATUS.Value:=0;   
dm2.Tb_Imo02.Post;
bbCancelar.Click;
end;

procedure TFrm_ManImo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_MImo, Frm_MImo);
   Frm_MImo.Edit1.Text:=key;
   Frm_MImo.Edit1.SelStart:=1;
   Frm_MImo.Edit1.SelLength:=1;
   Frm_MImo.PC1.ActivePageIndex:=1;
   man_ori:='Frm_MImoImo';
   if Frm_MImo.ShowModal=mrOk then
      begin
      DM2.Tb_Imo02IM2CODMAN.Value:=DM2.Tb_MImoMCODMAN.Value;
      end;
   Frm_MImo.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManImo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If DM2.Tb_Imo02.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: bbGravar.Click;
      mrNo : bbCancelar.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_Imo02IM2STATUS.Value=-1 then
   DM2.Tb_Imo02.Delete;

end;

procedure TFrm_ManImo.DBEdit1Exit(Sender: TObject);
begin
if bbCancelar.Focused then
   exit;
 if not flqr1('MNOME','M','CADMIMO','N','MCODMAN',DM2.Tb_Imo02IM2CODMAN.AsString) then
   begin
   MessageDlg('Manutenção não Cadastrada!',mtWarning,[mbOk],0);
   if (DBEdit1.Visible) and (DBEdit1.Enabled) and (GroupBox3.Enabled) then
      DBEdit1.SetFocus;
   end;

end;

procedure TFrm_ManImo.CODIMOEnter(Sender: TObject);
begin
bbIncluir.Enabled :=False;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=False;
bbAlterar.Enabled :=False;
bbExcluir.Enabled :=False;
bbimprimir.Enabled:=False;
GroupBox3.Enabled :=False;
DM2.Tb_Imo02.Close;

end;

procedure TFrm_ManImo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ManImo.bbimprimirClick(Sender: TObject);
begin
bbAtualizarClick(self);
if DM2.Tb_Imo02.IsEmpty then
  begin
  fmensagem('Favor selecione um periodo '+#13+' ou produto com  movimentação',0,['0'],0);
  Exit;
  end
else
  begin
  if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    lbl_periodo.Caption:='De '+MDT1.Text+' à '+MDT2.Text+'.';
    end
  else if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT1.Text)='/  /') then
    begin
   lbl_periodo.Caption:=' Apartir do dia '+MDT1.Text+'.';
    end
  else if (Trim(MDT1.Text)='/  /') and (Trim(MDT1.Text)<>'/  /') then
    begin
   lbl_periodo.Caption:=' Até o dia '+MDT1.Text+'.';
    end
  else if (Trim(MDT1.Text)='/  /') and (Trim(MDT1.Text)='/  /') then
    begin
    lbl_periodo.Caption:=' Sem periodo pre-definido.';
    end;
  lbl_produto.Caption:='Produto..: '+FormatFloat('0000',ValFloat(CODIMO.Text))+' - '+NOMIMO.Text;
  RLReport1.PreviewModal;
  end;
end;

procedure TFrm_ManImo.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if DM2.Tb_Imo02IM2DATAEM.AsDateTime=dm2.Tb_Imo02IM2DATARM.AsDateTime then
  begin
  rl_dt_envio.Caption:='Data de Aquisição..:';
  lbl_retorno.Visible:=False;
  rl_dt_retorno.Visible:=False;
  end
else
  begin
  rl_dt_envio.Caption:='Data de Envio..:';
  lbl_retorno.Visible:=True;
  rl_dt_retorno.Visible:=True;
  end;
end;

end.
