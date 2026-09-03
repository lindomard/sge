unit S_Cus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Buttons, ExtCtrls, S_DM1, DBCtrls, Mask,
  Grids, DBGrids, db, dbtables,func;

type
  TFrm_Cus = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRG_APLICSOB: TDBRadioGroup;
    DBRG_PCOPCIO: TDBRadioGroup;
    DBRG_FATOR: TDBRadioGroup;
    DBR_FORMULA: TDBRadioGroup;
    DBRG_TIPO: TDBRadioGroup;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cus: TFrm_Cus;
  mancus_ori: String='';
implementation

{$R *.dfm}

procedure TFrm_Cus.INCLUIRClick(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=0;
DM1.Tb_Pcus.Append;
DBEdit1.Enabled:=True;
DBEDIT1.SetFocus;
mcodigo:=DM1.Tb_PCusPCCODIGO.AsString;

end;

procedure TFrm_Cus.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_PCusPCCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
PC1.ActivePageIndex:=0;
tsCad.Enabled      :=True;
DBGrid1.Enabled    :=False;

DM1.Tb_Pcus.Edit;
DBEdit2.SetFocus;

end;

procedure TFrm_Cus.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_PCusPCCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_PCus.Delete;
   DBGrid1.Enabled   :=False;
   end;


end;

procedure TFrm_Cus.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_PCusPCNOME.IsNull) then
   begin
   MessageDlg('Nome tem que ser Preenchido!',mtWarning,[mbOk],0);
   DBEdit1.SetFocus;
   exit;
   end;
dm1.Tb_PCus.Post;
CANCELAR.Click;


end;

procedure TFrm_Cus.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_PCus.Cancel;
DBEdit1.Enabled   :=False;

end;



procedure TFrm_Cus.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_PCusPCCODIGO.AsString then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select PCNOME from CADPCUS where '
                     +' PCCODIGO=0'+Trim(DM1.Tb_PCusPCCODIGO.AsString));
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Código ja Cadastrado Anteriormente. Nome: '+DM1.Query1.Fields[0].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;
if DM1.Tb_PcusPCCODIGO.Value<0 then
   begin
   ShowMessage('Código tem que ser um valor positivo!');
   DBEdit1.SetFocus;
   exit;
   end;


end;

procedure TFrm_Cus.BBnAtuClick(Sender: TObject);
begin
  inherited;
DM1.Tb_Pcus.Close;
DM1.Tb_PCus.SQL.Clear;
DM1.Tb_PCus.SQL.add('Select * from CADPCUS ');
if trim(Edit1.Text)<>'' then
   begin
   if CAMPO.ItemIndex=0 then
      DM1.Tb_Pcus.SQL.Add(' where PCNOME like '+Quotedstr(EDIT1.Text+'%'))
   else
      DM1.Tb_Pcus.SQL.Add(' where PCCODIGO=0'+Trim(EDIT1.Text))
   end;
DM1.Tb_PCus.SQL.Add(' order by PCNOME');
DM1.Tb_PCus.Open;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;

end;

procedure TFrm_Cus.Edit1Exit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=1 then
   begin
   if fsonumero(Edit1.Text)<=0 then
      Edit1.Text:=''
   else
      Edit1.Text:=fdeixanum(Edit1.Text);
   end;
end;

procedure TFrm_Cus.SAIRClick(Sender: TObject);
begin
  inherited;
if mancus_ori='' then
   close;
end;

procedure TFrm_Cus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Cus.FormCreate(Sender: TObject);
begin
  inherited;
if DBNavigator1.DataSource<>DM1.Src_Pcus then
   DBNavigator1.DataSource:=DM1.Src_Pcus;
if DBGrid1.DataSource<>DM1.Src_Pcus then
   DBGrid1.DataSource:=DM1.Src_Pcus;

end;

end.
