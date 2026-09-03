unit S_Pro_Nov_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_Pro_Nov, DBTables, Menus, DB, ComCtrls, ToolWin, DBCtrls,
  CheckLst, ExtCtrls, StdCtrls, DBGrids, Grids, Buttons, Mask, RxDBComb,
  ADODB;

type
  TFrm_Pro_Nov_Menu = class(TFrm_Pro_Nov)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sgridClick(Sender: TObject);
    procedure btn_lgridClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_Nov_Menu: TFrm_Pro_Nov_Menu;

implementation

uses Func, lerarq, S_DM1, S_Des;

{$R *.dfm}

procedure TFrm_Pro_Nov_Menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Pro_Nov_Menu.btn_sgridClick(Sender: TObject);
begin
SalvarGrid('Frm_Pro_Nov', DBGrid1);
end;

procedure TFrm_Pro_Nov_Menu.btn_lgridClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' delete from CADINFGRID where GFORMULARIO='+CHR(39)+'Frm_Pro_Nov'+CHR(39));
DM1.Query1.ExecSQL;
end;

procedure TFrm_Pro_Nov_Menu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=114) and not (DM1.Tb_ProPDNOME.IsNull) then
   begin
   Application.Createform(TFrm_Des, Frm_Des);
   pcodtip:=DM1.Tb_ProPDCODTIP.AsInteger;
   Frm_Des.NOMPRO.Caption:=DM1.Tb_ProPDNOME.Value;
   Frm_Des.MARCA.Caption :=DM1.Tb_ProPDMARCA.Value;
   Frm_Des.PRECO.Caption :=FormatFloat(mcasaspu,DM1.Tb_ProPDPRECO1.Value);
//   Frm_Des.PMC.Text   :=FormatFloat(mcasaspu,DM1.Tb_ProPDPMC.Value);
   Frm_Des.DESC.Text  :=FormatFloat(mcasaspu,DM1.Tb_ProPDDESC1.Value);
   Frm_Des.DESC02.Text:=FormatFloat(mcasaspu,DM1.Tb_ProPDDESC2.Value);
   Frm_Des.DESC03.Text:=FormatFloat(mcasaspu,DM1.Tb_ProPDDESC3.Value);
   Frm_Des.TIPO.Text  :=DM1.Tb_ProPDNOMTIP.Value;
   Frm_Des.PRECOExit(self);
   Frm_Des.ShowModal;
   Frm_Des.Free;
   Frm_Des:=nil;
   key:= 0;
   end;
  
{if (key=115) and not (DM1.Tb_ProPDNOME.IsNull) then
   bb_ultcompClick(self);
}

end;

end.
