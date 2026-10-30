unit S_C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids,
  DBGrids, jpeg,s_DM1;

type
  TFrm_C = class(TForm)
    Panel1: TPanel;
    BBnAtu: TBitBtn;
    CAMPO: TComboBox;
    PC1: TPageControl;
    tsCad: TTabSheet;
    tsTab: TTabSheet;
    MANUT: TGroupBox;
    ALTERAR: TBitBtn;
    INCLUIR: TBitBtn;
    GroupBox2: TGroupBox;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    GRAVAR: TBitBtn;
    SAIR: TBitBtn;
    Edit1: TMaskEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    lbl_emp: TLabel;
    Pesquisapor: TLabel;
    procedure SAIRClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CORRIGE_LABEL : Boolean ;
  public
    { Public declarations }
    mtipo: Integer;    
  end;

var
  Frm_C: TFrm_C;
  mcodigo: String;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  mcaporig: String;
implementation

uses Func;

{$R *.dfm}

procedure TFrm_C.SAIRClick(Sender: TObject);
begin
modalResult:=MrOk;
end;

procedure TFrm_C.INCLUIRClick(Sender: TObject);
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

procedure TFrm_C.ALTERARClick(Sender: TObject);
begin
if PC1.ActivePage=tsTab then
   PC1.ActivePage:=tsCad;
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

procedure TFrm_C.EXCLUIRClick(Sender: TObject);
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

procedure TFrm_C.CANCELARClick(Sender: TObject);
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

procedure TFrm_C.FormCreate(Sender: TObject);
begin
    mcaporig:=Caption;
{
    if DM1.Tb_PargerPUSA_DEGRADE.Value = 1 THEN
    BEGIN

        imagem_jpg1.Visible := true;
        imagem_jpg2.Visible := true;
        imagem_jpg3.Visible := true;
        imagem_jpg4.Visible := true;

        imagem_jpg1.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
        imagem_jpg2.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
        imagem_jpg3.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
        imagem_jpg4.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);

        imagem_jpg1.SendToBack;
        imagem_jpg2.SendToBack;
        imagem_jpg3.SendToBack;
        imagem_jpg4.SendToBack;

        CORRIGE_LABEL();
    END;
}
end;

function TFrm_C.CORRIGE_LABEL : Boolean ;
var
n : LongInt ;
begin
{
Result := false ;
  for n := 0 to ( ComponentCount - 1 ) do
  begin
      if ( components[n].ClassType = TLabel ) then
      begin
             TLabel (components[n]).Transparent := TRUE;
      end ;
  end ;
}  
End;

procedure TFrm_C.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
if (key<>9) and (key<>27) then
   begin
   if (key=115) and (shift=[ssalt]) then
   else
      begin
      if key=8 then
         begin
         Edit1.Text:=copy(Edit1.Text,1,length(Edit1.Text)-1);
         key:=0;
         end
      else if (key=32) or (key>60) then
         begin
         Edit1.Text:=Edit1.Text+Char(key);
         key:=0;
         end;
      end;
   end;
}
end;

procedure TFrm_C.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_C.FormShow(Sender: TObject);
begin
if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end;
if CAMPO.ItemIndex=-1 then
   CAMPO.ItemIndex:=0;
if mtipo<>1 then
   BBnAtu.Click;
Edit1.SetFocus;
end;

end.
