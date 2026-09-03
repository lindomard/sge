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
var
Form_folha: TFrm_FolManL01;
begin
if fgfolmanverifica(0) then
   begin
   testeform := TFrm_FolMan(FindGlobalComponent('form_folha'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,Form_folha);

      Form_Folha.top:=0;
      Form_Folha.pf_local:=0;

      end;

   Form_folha.FormStyle:=fsMDIChild;
   Form_folha.Visible      :=true;
   Form_folha.Top          :=0;

   if Form_folha.WindowState=WsMinimized then
      Form_folha.WindowState:=WsNormal
   else
      Form_folha.Show;
   end;


end;

procedure TFrm_FolMan.bb_FeriasClick(Sender: TObject);
var
form_ferias: TFrm_FolManL01;
begin
if fgfolmanverifica(4) then
   begin

   testeform := TFrm_FolMan(FindGlobalComponent('frm_ferias'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,form_ferias);
      form_ferias.top:=0;
      Form_Ferias.pf_local:=4;

      end;

   Form_ferias.FormStyle:=fsMDIChild;
   Form_ferias.Visible      :=true;
   Form_ferias.Top          :=0;

   if form_ferias.WindowState=WsMinimized then
      form_ferias.WindowState:=WsNormal
   else
      form_ferias.Show;

   end;

end;

procedure TFrm_FolMan.bb_13unicoClick(Sender: TObject);
var
 form13unico: TFrm_FolManL01;
begin
if fgfolmanverifica(1) then
   begin

   testeform := TFrm_FolMan(FindGlobalComponent('form13unico'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,form13unico);
      form13unico.top:=0;
      form13unico.pf_local:=1;
      end;

   form13unico.FormStyle:=fsMDIChild;
   form13unico.Visible      :=true;
   form13unico.Top          :=0;

   if form13unico.WindowState=WsMinimized then
      form13unico.WindowState:=WsNormal
   else
      form13unico.Show;
   end;

end;

procedure TFrm_FolMan.bb_13ppClick(Sender: TObject);
var
form_folha13: TFrm_FolManL01;
begin

if fgfolmanverifica(2) then
   begin
   testeform := TFrm_FolMan(FindGlobalComponent('form_folha13'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,form_folha13);
       form_folha13.pf_local:=2;

      form_folha13.top:=0;
      end;

   form_folha13.FormStyle:=fsMDIChild;
   form_folha13.Visible      :=true;
   form_folha13.Top          :=0;

   if form_folha13.WindowState=WsMinimized then
      form_folha13.WindowState:=WsNormal
   else
      form_folha13.Show;
   end;

end;

procedure TFrm_FolMan.bb_spClick(Sender: TObject);
var
form_folha132a: TFrm_FolManL01;
begin
if fgfolmanverifica(3) then
   begin
   testeform := TFrm_FolMan(FindGlobalComponent('form_folha132a'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,form_folha132a);
      form_folha132a.pf_local:=3;
      form_folha132a.top:=0;
      end;

   form_folha132a.FormStyle:=fsMDIChild;
   form_folha132a.Visible      :=true;
   form_folha132a.Top          :=0;

   if form_folha132a.WindowState=WsMinimized then
      form_folha132a.WindowState:=WsNormal
   else
      form_folha132a.Show;
   end;
end;

procedure TFrm_FolMan.bb_recisaoClick(Sender: TObject);
var
form_recisao: TFrm_FolManL01;
begin
if fgfolmanverifica(5) then
   begin
   testeform := TFrm_FolMan(FindGlobalComponent('form_recisao'));
   if (testeform=nil)  then
      begin
      Application.createform(tFrm_FolManL01,form_recisao);
      form_recisao.pf_local:=5;
      form_recisao.top:=0;
      end;

   form_recisao.FormStyle:=fsMDIChild;
   form_recisao.Visible      :=true;
   form_recisao.Top          :=0;


   if form_recisao.WindowState=WsMinimized then
      form_recisao.WindowState:=WsNormal
   else
      form_recisao.Show;
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
