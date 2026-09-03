unit S_TabM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, S_TProCa, RDprint, S_DM1, db, dbtables,
  func,  S_Tab00, S_Sdet, S_Tab07, S_Tab06, S_TDet,S_Tab01,S_Tab05;

type
  TFrm_TabM = class(TForm)
    Panel1: TPanel;
    CABECALHO: TBitBtn;
    CORPO: TBitBtn;
    RODAPE: TBitBtn;
    EXPORTAR: TBitBtn;
    SAIR: TBitBtn;
    RDprint1: TRDprint;
    SELECIONAR: TBitBtn;
    NOMREL: TLabel;
    Label2: TLabel;
    NOMARQ: TLabel;
    CAB_GRU: TBitBtn;
    CAB_SG: TBitBtn;
    IMP_INI: TBitBtn;
    IMP_FIM: TBitBtn;
    ROD_GRU: TBitBtn;
    IMPORTAR: TBitBtn;
    BBVIS: TBitBtn;
    ROD_SG: TBitBtn;
    bbRegua: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    procedure CABECALHOClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure CORPOClick(Sender: TObject);
    procedure RODAPEClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure CAB_GRUClick(Sender: TObject);
    procedure IMP_INIClick(Sender: TObject);
    procedure IMP_FIMClick(Sender: TObject);
    procedure ROD_GRUClick(Sender: TObject);
    procedure IMPORTARClick(Sender: TObject);
    procedure BBVISClick(Sender: TObject);
    procedure CAB_SGClick(Sender: TObject);
    procedure ROD_SGClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TabM: TFrm_TabM;
  mrelat : Integer;
implementation

uses S_Tab00Fil, S_Tab00Ord, S_Per, S_Tab00Gru, S_Tab00SG, S_Tab00Div;

{$R *.dfm}

procedure TFrm_TabM.CABECALHOClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=0;
if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Cabeçalho do Relatório';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;
end;

procedure TFrm_TabM.EXPORTARClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
if Frm_Tab07=nil then
   Application.CreatEform(TFrm_Tab07, Frm_Tab07)
else
   begin
   Frm_Tab07.free;
   Frm_Tab07:=nil;
   Application.CreateForm(TFrm_Tab07, Frm_Tab07);
   end;


Frm_Tab07.ShowModal;
Frm_Tab07.Free;
Frm_Tab07:=nil;
end;

procedure TFrm_TabM.CORPOClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=1;

if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Corpo do Relatório/Detalhes';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;

end;

procedure TFrm_TabM.RODAPEClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=2;
if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir na parte inferior do relatório Rodapé';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;
end;

procedure TFrm_TabM.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TabM.SELECIONARClick(Sender: TObject);
begin
if Frm_Tab00FIL=nil then
   Application.CreateForm(TFrm_Tab00fil, Frm_Tab00Fil);
if Frm_Tab00Ord=nil then
   Application.CreateForm(TFrm_Tab00Ord, Frm_Tab00Ord);
if Frm_Tab00Div=nil then
   Application.CreateForm(TFrm_Tab00div, Frm_Tab00div);
if Frm_Tab00Gru=nil then
   Application.CreateForm(TFrm_Tab00Gru, Frm_Tab00Gru);
if Frm_Tab00SG=nil then
   Application.CreateForm(TFrm_Tab00SG, Frm_Tab00SG);
if Frm_Tab00=nil then
   Application.CreateForm(TFrm_Tab00, Frm_Tab00)
else
   begin
   Frm_Tab00.free;
   Frm_Tab00:=nil;
   Application.CreateForm(TFrm_Tab00, Frm_Tab00)
   end;

Frm_Tab00.ShowModal;
Frm_Tab00.Free;
Frm_Tab00:=nil;
Frm_Tab00Fil.Free;
Frm_Tab00Fil:=nil;
Frm_Tab00Ord.Free;
Frm_Tab00Ord:=nil;
Frm_Tab00Gru.Free;
Frm_Tab00Gru:=nil;
Frm_Tab00SG.Free;
Frm_Tab00SG:=nil;
Frm_Tab00div.Free;
Frm_Tab00div:=nil;
end;

procedure TFrm_TabM.CAB_GRUClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=3;

if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Cabeçalho de um novo Grupo';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;

end;

procedure TFrm_TabM.IMP_INIClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=98;

if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Inicio do Relatório';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;


end;

procedure TFrm_TabM.IMP_FIMClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=99;
if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Final do Relatório';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;


end;

procedure TFrm_TabM.ROD_GRUClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=4;
if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir Sempre que Finalizar um Grupo Rodapé do Grupo';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;



end;

procedure TFrm_TabM.IMPORTARClick(Sender: TObject);
begin

if Frm_Tab06=nil then
   Application.CreateForm(TFrm_Tab06, Frm_Tab06)
else
   begin
   Frm_Tab06.free;
   Frm_Tab06:=nil;
   Application.CreateForm(TFrm_Tab06, Frm_Tab06)
   end;
morigem:=0;

Frm_Tab06.ShowModal;
Frm_Tab06.Free;
Frm_Tab06:=nil;


end;

procedure TFrm_TabM.BBVISClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
if frm_tab05=nil then
   Application.CreateForm(TFrm_Tab05, Frm_Tab05);
mnomrel:=Trim(NOMREL.Caption);
Frm_Tab05.ShowModal;
Frm_Tab05:=nil;
end;

procedure TFrm_TabM.CAB_SGClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=7;

if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Cabeçalho do Sub-Grupo Ao Iniciar um novo Sub-Grupo';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;


end;

procedure TFrm_TabM.ROD_SGClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=8;
if Frm_Tab01=nil then
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
else
   begin
   Frm_Tab01.free;
   Frm_Tab01:=nil;
   Application.CreateForm(TFrm_Tab01, Frm_Tab01)
   end;
Frm_Tab01.Caption:=Trim(DM1.Tb_TDVCATCNOME.Value)+'-Imprimir no Rodapé do Sub-Grupo ao terminar a impressão de um Sub-Grupo';
Frm_Tab01.ShowModal;
Frm_Tab01.Free;
Frm_Tab01:=nil;


end;

procedure TFrm_TabM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
