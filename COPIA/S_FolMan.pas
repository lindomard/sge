unit S_FolMan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,lerarq,func,S_FolManL01;

type
  TFrm_FolMan = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    bb_Folha: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_13unico: TBitBtn;
    bb_13pp: TBitBtn;
    bb_sp: TBitBtn;
    bb_recisao: TBitBtn;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure bb_FolhaClick(Sender: TObject);
    procedure bb_FeriasClick(Sender: TObject);
    procedure bb_13unicoClick(Sender: TObject);
    procedure bb_13ppClick(Sender: TObject);
    procedure bb_spClick(Sender: TObject);
    procedure bb_recisaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure MESKeyPress(Sender: TObject; var Key: Char);
    procedure ANOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fgfolmanverifica(ptipo: Integer): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_FolMan: TFrm_FolMan;

implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_FolMan.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FolMan.bb_FolhaClick(Sender: TObject);
begin
if fgfolmanverifica(0) then
   begin
   pf_local:=0;
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;


end;

procedure TFrm_FolMan.bb_FeriasClick(Sender: TObject);
begin
pf_local:=4;
if fgfolmanverifica(pf_local) then
   begin
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;

end;

procedure TFrm_FolMan.bb_13unicoClick(Sender: TObject);
begin
pf_local:=1;
if fgfolmanverifica(pf_local) then
   begin
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;

end;

procedure TFrm_FolMan.bb_13ppClick(Sender: TObject);
begin
pf_local:=2;
if fgfolmanverifica(pf_local) then
   begin
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;

end;

procedure TFrm_FolMan.bb_spClick(Sender: TObject);
begin
pf_local:=3;
if fgfolmanverifica(pf_local) then
   begin
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;
end;

procedure TFrm_FolMan.bb_recisaoClick(Sender: TObject);
begin
pf_local:=5;
if fgfolmanverifica(pf_local) then
   begin
   Application.CreateForm(TFrm_FolManL01, Frm_FolManL01);
   Frm_FolManL01.ShowModal;
   Frm_FolManL01.Free;
   end;
end;

function TFrm_FolMan.fgfolmanverifica(ptipo: Integer): Boolean;
begin
if ptipo=5 then
   begin
   MessageDlg('Em Fase de desenvolvimento!',mtWarning,[mbOk],0);
   Result:=False;
   exit;
   end;
if not flParFPag(0,0,'1') then
   begin
   MessageDlg('Arquivo de Parametros da folha não Encontrado!',mtError,[mbok],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSAL.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODGRA.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de gratificações em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSAL.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSFAM.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario de familia em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODVT.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de vale transporte!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFQTDHM.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o quantidade de horas por mes!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODINSS.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de INSS em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;

if DM2.Tb_ParFPagPFCODIR.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de Imposto de Renda em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODFGTS.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de FGTS em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
result:=true;
end;


procedure TFrm_FolMan.FormCreate(Sender: TObject);
begin
mes.Text:=FormatDateTime('mm',pdatasis);
ano.Text:=FormatDateTime('yyyy',pdatasis);

end;

procedure TFrm_FolMan.MESExit(Sender: TObject);
begin
if (ValFloat(MES.Text)<1) or (ValFloat(MES.Text)>12) then
   begin
   MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

end;

procedure TFrm_FolMan.MESKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_FolMan.ANOExit(Sender: TObject);
begin
if ValFloat(ANO.Text)<2000 then
   begin
   MessageDlg('Ano Invalido!',mtWarning,[mbOk],0);
   ANO.SetFocus;
   end;

end;

procedure TFrm_FolMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
