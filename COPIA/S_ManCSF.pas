unit S_ManCSF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,db,dbtables,func,lerarq;

type
  TFrm_ManCSF = class(TFrm_C)
    Label1: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ManCSF: TFrm_ManCSF;

implementation

{$R *.dfm}

procedure TFrm_ManCSF.BBnAtuClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CSF.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
flcadcsf(campo.ItemIndex,1,edit1.Text);
INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=bbexc_true;
CANCELAR.Enabled:=True;

end;

procedure TFrm_ManCSF.DBRadioGroup1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_CSFCFTIPOC.Value=0 then
   begin
   Label3.Caption :='Nome..:';
   Label4.Visible :=False;
   DBEdit4.Visible:=False;
   Label10.Caption:='CNPF.:';
   Label11.Caption:='Identidade.:';
   DM1.Tb_CSFCFCGC.DisplayFormat:='000"."000"."000"-"00';
   end
else
   begin
   Label3.Caption :='Razão Social.:';
   Label4.Visible :=True;
   DBEdit4.Visible:=True;
   Label10.Caption:='CNPJ.:';
   Label11.Caption:='Inscrição.:';
   DM1.Tb_CSFCFCGC.DisplayFormat:='00"."000"."000"/"0000"-"00';
   end;


end;

procedure TFrm_ManCSF.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM1.Tb_CSF.Append;
DM1.Tb_CSFCFTIPOC.Value:=0;
mcodigo:=DM1.Tb_CSFCFCODSEQ.AsString;
DM1.Tb_CSFCFCODEMP.Value:=codemp;
DM1.Tb_CSFCFORDEMP.Value:=01;
DM1.Tb_CSFCFLOTSEQ.Value:=ls_numped;
DBEdit1.SetFocus;
PC1.ActivePageIndex:=0;

end;

procedure TFrm_ManCSF.ALTERARClick(Sender: TObject);
begin
  inherited;

DM1.Tb_CSF.Edit;
DBRadioGroup1.SetFocus;

end;

procedure TFrm_ManCSF.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CSFCFCHAVEP.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_CSF.Delete;
   CANCELAR.Click;
   end;

end;

procedure TFrm_ManCSF.GRAVARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_CSF.Post;

CANCELAR.Click;


end;

procedure TFrm_ManCSF.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CSF.State in [dsInsert, DsEdit] then
   DM1.Tb_CSF.Cancel;
INCLUIR.Enabled     :=bbinc_true;
ALTERAR.Enabled     :=bbalt_true;
EXCLUIR.Enabled     :=bbexc_true;

end;

procedure TFrm_ManCSF.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_ManCSF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
