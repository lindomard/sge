unit S_CodEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,db,dbtables,func,S_DM1, Grids,
  Gauges,lerarq;

type
  TFrm_CodEmp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MCODEMP: TEdit;
    NOMEMP: TEdit;
    Label2: TLabel;
    NCODEMP: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NCODEMPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CodEmp: TFrm_CodEmp;

implementation

uses S_Stru;

{$R *.dfm}

procedure TFrm_CodEmp.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CodEmp.BitBtn1Click(Sender: TObject);
var
mqtd: Integer;
mExiste: Boolean;
begin

if ValFloat(MCODEMP.Text)=1 then
   begin
   MessageDlg('Esta Empresa não pode ter o codigo alterado!',mtWarning,[mbOk],0);
   exit;
   end;
if ValFloat(NCODEMP.Text)=0 then
   begin
   MessageDlg('Favor digitar um código valido para Empresa',mtWarning,[mbOk],0);
   NCODEMP.SetFocus;
   exit;
   end;
mexiste:=false;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('Select RAZAO from CADEMP where CODEMP=0'+Trim(NCODEMP.Text));
DM1.Query1.open;
if not DM1.Query1.Eof then
   begin
   mcinst:='Este código Pertence a empresa: '+DM1.Query1.fields[0].AsString+#13
          +'Quer Continuar e mudar somente os códigos dos dados';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      NCODEMP.SetFocus;
      exit;
      end;
   mExiste:=true;
   end;
if fmensagem('Confirma a troca de código',0,['1','2'],2)<>mrYes then
   exit;

if Frm_Stru=nil then
      Application.CreateForm(TFrm_Stru, Frm_Stru)
   else
      begin
      Frm_Stru.Free;
      Frm_Stru:=nil;
      Application.CreateForm(TFrm_Stru, Frm_Stru);
      end;


   Frm_Stru.ShowModal;
   Frm_Stru.Free;
   Frm_Stru:=nil;

Frm_Stru.Show;
Frm_Stru.label1.Caption:='Efetuando Troca de Código Aguarde';
Frm_Stru.Update;
Frm_Stru.verificar(3);
if not mexiste then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('update CADEMP set CODEMP=0'+Trim(NCODEMP.Text)+' where CODEMP=0'+Trim(MCODEMP.Text));
   try
      DM1.Query1.execsql;
      fdm1StartCommit;
   except
      end;
   end;

if pbanco=0 then
   begin
   Frm_Stru.fcortab(0);
   Frm_Stru.fcortab2(0);
   end;
DM1.Tb_Emp.Close;
DM1.Tb_Emp.SQL.Clear;
DM1.Tb_Emp.SQL.add('Select * from CADEMP where CODEMP=0'+Trim(NCODEMP.Text));
DM1.Tb_Emp.Open;
codemp:=DM1.Tb_EmpCODEMP.AsInteger;
//Frm_ppal.StatusBar1.Panels[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
//    +' '+DM1.Tb_EmpFANTASIA.Value;
DM1.Query1.close;
DM1.Query1.sql.clear;
DM1.Query1.SQL.Add('Update PARGER set EMPPRE=0'+Trim(NCODEMP.Text)
                  +' where EMPPRE=0'+Trim(MCODEMP.Text));
DM1.Query1.ExecSQL;
Frm_Stru.Label1.Caption:='Concluido!';
Frm_Stru.Update;
Frm_Stru.Free;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_CodEmp.NCODEMPExit(Sender: TObject);
begin
NCODEMP.Text:=FloatToStr(ValFloat((NCODEMP.Text)));
if ValFloat(NCODEMP.Text)=0 then
   exit;
if flqr1('RAZAO','','CADEMP','N','CODEMP',NCODEMP.Text) then
   begin
   MessageDlg('Código ja Cadastrado na Empresa: '+DM1.Query1.fields[0].AsString,mtWarning,[mbOk],0);
   NCODEMP.SetFocus;
   end;
end;

procedure TFrm_CodEmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

end.
