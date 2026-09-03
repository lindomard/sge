unit S_ManVei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,S_DM2,db,dbtables,func,lerarq,
  ExtCtrls, DBCtrls, Grids, DBGrids,S_Vei,S_MVei, RLReport;

type
  TFrm_ManVei = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODVEI: TEdit;
    NOMVEI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    cb_tppesq: TCheckBox;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
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
    bbimprimir: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    lbl_ordem: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    lbl_periodo: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    valortotal: TRLLabel;
    pcouni: TRLLabel;
    fpgto: TRLLabel;
    codigo: TRLLabel;
    descricao: TRLLabel;
    lbl_produto: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    lbl_totger: TRLLabel;
    RLLabel4: TRLLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    cb_bordas: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure CODVEIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVEIExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure CODVEIEnter(Sender: TObject);
    procedure dtenvExit(Sender: TObject);
    procedure dtretExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbimprimirClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBEdit13Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ManVei: TFrm_ManVei;
  Total_Geral: Real;

implementation

{$R *.dfm}

procedure TFrm_ManVei.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManVei.CODVEIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Vei, Frm_Vei);
   Frm_Vei.Edit1.Text:=key;
   Frm_Vei.Edit1.SelStart:=1;
   Frm_Vei.Edit1.SelLength:=1;
   Frm_Vei.PC1.ActivePageIndex:=1;
   vei_ori:='Frm_ManVei';
   Frm_Vei.ShowModal;
   CODVEI.Text:=DM2.Tb_Vei01V1CODVEI.AsString;
   Frm_Vei.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManVei.CODVEIExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODVEI.Text:=fdeixanum(CODVEI.Text);
if ValFloat(CODVEI.Text)=0 then
   CODVEI.Text:='';
if Trim(CODVEI.Text)<>'' then
   begin
   if flcadvei01(1,0,0,Trim(CODVEI.Text)) then
      begin
      NOMVEI.Text:=DM2.Tb_Vei01V1NOME.Value;
      end
   else
      begin
      MessageDlg('Veículo não Cadastrado!',mtWarning,[mbOk],0);
      CODVEI.SetFocus;
      end;
   end;
end;

procedure TFrm_ManVei.bbAtualizarClick(Sender: TObject);
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
CODVEI.Text:=fdeixanum(CODVEI.Text);
if not flcadvei01(1,0,0,Trim(CODVEI.Text)) then
   begin
   MessageDlg('Veículo não Cadastrado!',mtWarning,[mbOk],0);
   CODVEI.SetFocus;
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

if not flcadvei02(iif(cb_tppesq.Checked,1,0),0,0,ValInt(CODVEI.Text),9,mdatai,mdataf) then
   begin
   bbAlterar.Enabled:=False;
   bbExcluir.Enabled:=False;
   bbimprimir.Enabled:=False;
   end
else
   begin
   bbimprimir.Enabled:=True;
   bbAlterar.Enabled:=true;
   bbExcluir.Enabled:=true;
   end;
bbIncluir.Enabled:=True;
bbGravar.Enabled :=False;


end;

procedure TFrm_ManVei.bbIncluirClick(Sender: TObject);
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
bbimprimir.Enabled:=False;
GroupBox3.Enabled :=True;
DM2.Tb_Vei02.Append;
DbEdit1.SetFocus;
end;

procedure TFrm_ManVei.bbAlterarClick(Sender: TObject);
begin
if DM2.Tb_Vei02V2CODVEI.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   end;
dtret.Text         :=DM2.Tb_Vei02dataret.Value;
dtenv.Text         :=DM2.Tb_Vei02dataenv.Value;
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
DM2.Tb_Vei02.Edit;
DbEdit1.SetFocus;

end;

procedure TFrm_ManVei.bbExcluirClick(Sender: TObject);
begin
if DM2.Tb_Vei02V2CODVEI.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   end;
if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Vei02.Delete;
   bbCancelar.Click;
   end;

end;

procedure TFrm_ManVei.bbCancelarClick(Sender: TObject);
begin
bbIncluir.Enabled :=True;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=True;
if DM2.Tb_Vei02V2CODVEI.IsNull then
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
DM2.Tb_Vei02.Cancel;
GroupBox3.Enabled :=False;

end;

procedure TFrm_ManVei.bbGravarClick(Sender: TObject);
begin
DM2.Tb_Vei02V2CODVEI.AsString:=CODVEI.Text;
if Trim(dtenv.Text)<>'/  /' then
   DM2.Tb_Vei02V2DATAEM.Value:=StrToDate(dtenv.Text)
else
   DM2.Tb_Vei02V2DATAEM.Value:=pdatanula;
if Trim(dtret.Text)<>'/  /' then
   DM2.Tb_Vei02V2DATARM.Value:=StrToDate(dtret.Text)
else
   DM2.Tb_Vei02V2DATARM.Value:=pdatanula;
if (DM2.Tb_Vei02V2STATUS.Value=-1) or (DM2.Tb_Vei02V2STATUS.IsNull) then
   DM2.Tb_Vei02V2STATUS.Value:=0;
dm2.Tb_Vei02.Post;
bbCancelar.Click;


end;

procedure TFrm_ManVei.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_MVei, Frm_MVei);
   Frm_MVei.Edit1.Text:=key;
   Frm_MVei.Edit1.SelStart:=1;
   Frm_MVei.Edit1.SelLength:=1;
   Frm_MVei.PC1.ActivePageIndex:=1;
   man_ori:='Frm_ManVei';
   Frm_MVei.ShowModal;
   DM2.Tb_Vei02V2CODMAN.Value:=DM2.Tb_MVeiMCODMAN.Value;
   Frm_MVei.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManVei.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If DM2.Tb_Vei02.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: bbGravar.Click;
      mrNo : bbCancelar.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_Vei02V2STATUS.Value=-1 then
   DM2.Tb_Vei02.Delete;

end;

procedure TFrm_ManVei.DBEdit1Exit(Sender: TObject);
begin
if bbCancelar.Focused then
   exit;
if not flqr1('MNOME','M','CADMVEI','N','MCODMAN',DM2.Tb_MVeiMCODMAN.AsString) then
   begin
   MessageDlg('Manutenção não Cadastrada!',mtWarning,[mbOk],0);
   if (DBEdit1.Visible) and (DBEdit1.Enabled) and (GroupBox3.Enabled) then
      DBEdit1.SetFocus;
   end;

end;

procedure TFrm_ManVei.CODVEIEnter(Sender: TObject);
begin
bbIncluir.Enabled :=False;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=False;
bbAlterar.Enabled :=False;
bbExcluir.Enabled :=False;
GroupBox3.Enabled :=False;
DM2.Tb_Vei02.Close;

end;

procedure TFrm_ManVei.dtenvExit(Sender: TObject);
begin
if Trim(dtenv.Text)<>'/  /' then
   begin
   try
      dtenv.Text:=FormatDateTime(fdt2, StrToDate(dtenv.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      exit;
      end;
   if trim(dtret.Text)='/  /' then
      dtret.Text:=dtenv.Text;

   end;
end;

procedure TFrm_ManVei.dtretExit(Sender: TObject);
begin
if Trim(dtret.Text)<>'/  /' then
   begin
   try
      dtret.Text:=FormatDateTime(fdt2, StrToDate(dtret.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      exit;
      end;
   if trim(dtenv.Text)='/  /' then
      dtenv.Text:=dtret.Text;

   end;

end;

procedure TFrm_ManVei.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ManVei.bbimprimirClick(Sender: TObject);
begin
RLReport1.Borders.DrawBottom:=cb_bordas.Checked;
RLReport1.Borders.DrawLeft  :=cb_bordas.Checked;
RLReport1.Borders.DrawRight :=cb_bordas.Checked;
RLReport1.Borders.DrawTop   :=cb_bordas.Checked;

bbAtualizarClick(self);
Total_Geral:=0;
if DM2.Tb_Vei02.IsEmpty then
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
  else if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
    begin
   lbl_periodo.Caption:=' Apartir do dia '+MDT1.Text+'.';
    end
  else if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
   lbl_periodo.Caption:=' Até o dia '+MDT1.Text+'.';
    end
  else if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
    begin
    lbl_periodo.Caption:=' Sem periodo pre-definido.';
    end;
  lbl_produto.Caption:='Veiculo..: '+FormatFloat('0000',ValFloat(CODVEI.Text))+' - '+NOMVEI.Text;
  RLReport1.PreviewModal;
  end;
end;

procedure TFrm_ManVei.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
Total_Geral:=Total_Geral+dm2.Tb_Vei02total.AsFloat;
end;

procedure TFrm_ManVei.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totger.Caption:=FormatFloat('###,##0.00',Total_Geral);
DM2.Tb_Vei02totalsdesc.DisplayFormat:=mcasaspu;
end;

procedure TFrm_ManVei.DBEdit13Exit(Sender: TObject);
begin
if trim(DBEdit13.Text)='' then
  DBEdit13.Text:='0,00';
DBEdit13.Text:=FormatFloat('###,##0.00',ValFloat(DBEdit13.Text));
end;

end.
