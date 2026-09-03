unit S_AjuDevCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,s_dm1,lerarq,func, Buttons,S_Agde, S_SelEmp;

type
  TFrm_AjuDevCli = class(TForm)
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    bbAjustar: TBitBtn;
    bbSair: TBitBtn;
    procedure bbAjustarClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    end;

var
  Frm_AjuDevCli: TFrm_AjuDevCli;

implementation

{$R *.dfm}

procedure TFrm_AjuDevCli.bbAjustarClick(Sender: TObject);
begin
FAjustarDevCli(0,fSonumero(codcli.text));
end;


procedure TFrm_AjuDevCli.CODCLIExit(Sender: TObject);
begin
codcli.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      Fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text:='';
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;

end;

procedure TFrm_AjuDevCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AjuDevCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuDevCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AjuDevCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TFrm_AjuDevCli.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

end.
