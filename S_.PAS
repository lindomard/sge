unit S_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TFrm_ = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    PC1: TPageControl;
    tsCad: TTabSheet;
    tsTab: TTabSheet;
    BBnAtu: TBitBtn;
    Edit1: TEdit;
    CAMPO: TComboBox;
    DBNavigator1: TDBNavigator;
    CANCELAR: TBitBtn;
    GRAVAR: TBitBtn;
    EXCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    INCLUIR: TBitBtn;
    SAIR: TBitBtn;
    DBGrid1: TDBGrid;
    procedure SBnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_: TFrm_;
  mtipo: Integer;
  mcodigo: String;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;

implementation

{$R *.DFM}

procedure TFrm_.SBnSairClick(Sender: TObject);
begin
Screen.ActiveForm.Close;
end;

procedure TFrm_.FormActivate(Sender: TObject);
begin
CAMPO.ItemIndex:=0;
// If PC1.ActivePage=tsCad then
   BBnAtu.Click;

{If Edit1.Text<>'_' then
   begin
   Edit1.Text:='9999999';
   BBnAtu.Click;
   end;
Edit1.Text:='';}
end;

procedure TFrm_.SAIRClick(Sender: TObject);
begin
modalresult:=mrOk;
//close;
end;

procedure TFrm_.GRAVARClick(Sender: TObject);
begin
panel3.Setfocus;

end;

procedure TFrm_.INCLUIRClick(Sender: TObject);
begin
PC1.ActivePageIndex:=0;
tsCad.Enabled       :=True;
DBGrid1.Enabled     :=False;
ALTERAR.Enabled     :=False;
INCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
BBnAtu.Enabled      :=False;
DBNavigator1.Enabled:=False;

end;

procedure TFrm_.ALTERARClick(Sender: TObject);
begin
PC1.ActivePageIndex :=0;
tsCad.Enabled       :=True;
DBGrid1.Enabled     :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
BBnAtu.Enabled      :=False;
DBNavigator1.Enabled:=False;

end;

procedure TFrm_.EXCLUIRClick(Sender: TObject);
begin
INCLUIR.Enabled     :=bbinc_true;
DBGrid1.Enabled     :=true;
ALTERAR.Enabled     :=bbalt_true;
GRAVAR.Enabled      :=False;
EXCLUIR.Enabled     :=bbexc_true;
CANCELAR.Enabled    :=True;
tsCad.Enabled       :=False;
BBnAtu.Enabled      :=True;
DBNavigator1.Enabled:=True;

end;

procedure TFrm_.CANCELARClick(Sender: TObject);
begin
DBGrid1.Enabled     :=True;
INCLUIR.Enabled     :=bbinc_true;
ALTERAR.Enabled     :=bbalt_true;
GRAVAR.Enabled      :=false;
EXCLUIR.Enabled     :=bbexc_true;
CANCELAR.Enabled    :=True;
tsCad.Enabled       :=False;
BBnAtu.Enabled      :=True;
DBNavigator1.Enabled:=True;

end;

procedure TFrm_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
