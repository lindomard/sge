unit S_Transp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_, ComCtrls, Buttons, StdCtrls, ExtCtrls, S_DM1, func, db, dbtables,
  Mask, DBCtrls, Grids, DBGrids, S_CEndCEP, S_CCepEnd, yupack;

type
  TFrm_Transp = class(TFrm_)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PRIMEIROClick(Sender: TObject);
    procedure ULTIMOClick(Sender: TObject);
    procedure PROXIMOClick(Sender: TObject);
    procedure ANTERIORClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function ftra01va(mtipo: Integer): Boolean;

var
  Frm_Transp: TFrm_Transp;

implementation

{$R *.dfm}

procedure TFrm_Transp.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadtra(CAMPO.ItemIndex,Edit1.Text);
end;

procedure TFrm_Transp.INCLUIRClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_Tra.Active then
   begin
   flcadtra(1,'999999');
   end;
PC1.ActivePageIndex:=0;
DM1.Tb_tra.Append;
TsCad.Enabled:=True;
DBGrid1.Enabled:=False;
ftra01va(1);
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
DBEDIT2.SetFocus;
end;

procedure TFrm_Transp.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_Tra.Eof then
   begin
   ShowMessage('Nao a registro a ser alterado');
   abort;
   end;
tsCad.Enabled:=True;
DBGrid1.Enabled:=False;
ftra01va(1);

DM1.Tb_Tra.Edit;
DBEdit2.SetFocus;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
if DM1.Tb_Tra.Eof then
   begin
   ShowMessage('Nao a registro a ser alterado');
   abort;
   end;
DM1.Tb_Tra.Edit;
DBEdit2.SetFocus;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;

end;

procedure TFrm_Transp.GRAVARClick(Sender: TObject);
begin
  inherited;
tsCad.Enabled:=False;
DBGrid1.Enabled:=True;
ftra01va(0);

dm1.tB_Tra.Post;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;

end;

procedure TFrm_Transp.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_Tra.Eof then
   begin
   ShowMessage('Nao ha registro a ser excluido!');
   abort;
   end;
if Application.MessageBox('Quer Realmente Excluir a Transportadora?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
   tsCad.Enabled:=False;
   DBGrid1.Enabled:=True;
   ftra01va(0);
   DM1.Tb_Tra.Delete;
   INCLUIR.Enabled:=True;
   ALTERAR.Enabled:=True;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=True;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_Transp.CANCELARClick(Sender: TObject);
begin
  inherited;
tsCad.Enabled:=False;
DBGrid1.Enabled:=True;
ftra01va(0);
DM1.Tb_Tra.Cancel;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=false;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;

end;

procedure TFrm_Transp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
If key=113 then
   begin
   Application.Createform(TFrm_CEndCEp, Frm_CEndCEp);
   Frm_CEndCep.ShowModal;
   if (DM1.Tb_Tra.State in [DsEdit, DsInsert]) and (Frm_CEndCEP.ModalResult=mrok) then
      begin
      if Frm_CEndCEP.NOMLOG.Text<>'CEP POR CIDADE' then
         begin
         DM1.Tb_TraTRNLOG.Value:=Trim(Frm_CEndCEP.TPLOG.Text)+' '+Frm_CEndCEP.NOMLOG.Text;
         DM1.Tb_TraTRBAIRRO.Value:=Frm_CendCep.BAIRRO.Text;
         end;
      DM1.Tb_TraTRCIDADE.Value:=Frm_CEndCEP.CIDADE.Text;
      DM1.Tb_TraTRUF.Value    :=Frm_CEndCep.UF.Text;
      DM1.Tb_TraTRCEP.Value   :=Frm_CEndCEP.CEP.Text;
      end;
   FRm_CEndCEP.Free;
   end  ;
If key=114 then
   begin
   Application.Createform(TFrm_CCEPend, Frm_CCEPend);
   Frm_CCEPend.ShowModal;
   if (DM1.Tb_Tra.State in [DsEdit, DsInsert]) and (Frm_CcepEnd.ModalResult=mrok) then
      begin
      if DM1.Tb_LocCEPLOC.Value>0 then
         begin
         DM1.Tb_TraTRCEP.Value:=Formatfloat('00000-000',DM1.Tb_LocCEPLOC.Value)
         end
      else
         begin
         DM1.Tb_TraTRNLOG.Value:=Trim(DM1.Tb_Logtipolog.Value)+' '+DM1.Tb_LogNOMELOG.Value;
         DM1.Tb_TraTRBAIRRO.Value:=DM1.Tb_BaiEXTENSOBAI.Value;
         DM1.Tb_TraTRCEP.Value   :=Formatfloat('00000-000',DM1.Tb_LogCEPLOG.Value);
         end;
      DM1.Tb_TraTRCIDADE.Value:=DM1.Tb_LocNOMELOC.Value;
      DM1.Tb_TraTRUF.Value    :=DM1.Tb_LocUFLOC.Value;
      end;
   FRm_CCEPend.Free;
   end;

end;

function ftra01va(mtipo: Integer): Boolean;
begin
if mtipo=1 then
   begin
   Frm_Tra.PROXIMO.Enabled   :=False;
   Frm_Tra.ANTERIOR.Enabled  :=False;
   Frm_Tra.ULTIMO.Enabled    :=False;
   Frm_Tra.PRIMEIRO.Enabled  :=False;
   end
else
   begin
   Frm_Tra.PRIMEIRO.Enabled:=True;
   Frm_Tra.ULTIMO.Enabled  :=True;
   Frm_Tra.PROXIMO.Enabled :=True;
   Frm_Tra.ANTERIOR.Enabled:=True;
   if DM1.Tb_Tra.Bof then
      begin
      Frm_Tra.PRIMEIRO.Enabled:=False;
      Frm_Tra.ANTERIOR.Enabled:=False;
      end;
   if DM1.Tb_Tra.Eof then
      begin
      Frm_Tra.ULTIMO.Enabled:=False;
      Frm_Tra.PROXIMO.Enabled:=False;
      end;
   end;
result:=True;
end;

procedure TFrm_Transp.PRIMEIROClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_Tra.Bof then
   DM1.Tb_Tra.First;
fTra01va(0);

end;

procedure TFrm_Transp.ULTIMOClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_Tra.Eof then
   dm1.Tb_Tra.last;
ftra01va(0);

end;

procedure TFrm_Transp.PROXIMOClick(Sender: TObject);
begin
  inherited;
if not dm1.Tb_Tra.Eof then
   DM1.Tb_Tra.Next;
ftra01va(0);

end;

procedure TFrm_Transp.ANTERIORClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_Tra.Bof then
   DM1.Tb_Tra.Prior;
ftra01va(0);

end;

procedure TFrm_Transp.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not (DM1.Tb_Tra.State in [DsInsert, DsEdit]) then
   ftra01va(0);

end;

procedure TFrm_Transp.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
close;
end;

end.
