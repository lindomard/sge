unit S_MPed_Emp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,db,dbtables,func,S_Emp,S_DM2,lerarq;

type
  TFrm_MPed_Emp = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CODEMP_ORI: TEdit;
    CODEMP_DEST: TEdit;
    NOME_ORI: TEdit;
    NOME_DEST: TEdit;
    Label3: TLabel;
    CHAVE: TEdit;
    Label4: TLabel;
    ORDEM: TEdit;
    DATA: TEdit;
    Label5: TLabel;
    bbEfetivar: TBitBtn;
    bbSair: TBitBtn;
    Label6: TLabel;
    NUMNF: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure CODEMP_ORIKeyPress(Sender: TObject; var Key: Char);
    procedure CODEMP_ORIExit(Sender: TObject);
    procedure CODEMP_DESTKeyPress(Sender: TObject; var Key: Char);
    procedure CODEMP_DESTExit(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure ORDEMExit(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MPed_Emp: TFrm_MPed_Emp;

implementation

{$R *.dfm}

procedure TFrm_MPed_Emp.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MPed_Emp.CODEMP_ORIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Emp, Frm_Emp);
   Frm_Emp.Edit1.Text:=key;
   Frm_Emp.BBnAtu.Click;
   Frm_Emp.Edit1.SelStart:=1;
   Frm_Emp.Edit1.SelLength:=1;
   Frm_Emp.PC1.ActivePageIndex:=1;
   emp_ori:='Frm_MPed_Emp';
   if Frm_Emp.ShowModal=mrok then
      begin
      CODEMP_ORI.Text:=DM2.Tb_EmpCODEMP.AsString;
      end;
   Frm_Emp.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MPed_Emp.CODEMP_ORIExit(Sender: TObject);
begin
if ValFloat(CODEMP_ORI.Text)<=0 then
   CODEMP_ORI.Text:='';
if Trim(CODEMP_ORI.Text)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select RAZAO from CADEMP where CODEMP=0'+Trim(CODEMP_ORI.Text));
   DM1.Query1.Open;
   NOME_ORI.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_MPed_Emp.CODEMP_DESTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Emp, Frm_Emp);
   Frm_Emp.Edit1.Text:=key;
   Frm_Emp.BBnAtu.Click;
   Frm_Emp.Edit1.SelStart:=1;
   Frm_Emp.Edit1.SelLength:=1;
   Frm_Emp.PC1.ActivePageIndex:=1;
   emp_ori:='Frm_MPed_Emp';
   if Frm_Emp.ShowModal=mrok then
      begin
      CODEMP_DEST.Text:=DM2.Tb_EmpCODEMP.AsString;
      end;
   Frm_Emp.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_MPed_Emp.CODEMP_DESTExit(Sender: TObject);
begin
if ValFloat(CODEMP_DEST.Text)<=0 then
   CODEMP_DEST.Text:='';
if Trim(CODEMP_DEST.Text)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select RAZAO from CADEMP where CODEMP=0'+Trim(CODEMP_DEST.Text));
   DM1.Query1.Open;
   NOME_DEST.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_MPed_Emp.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=FloatTostr(fsonumero(CHAVE.Text));

end;

procedure TFrm_MPed_Emp.ORDEMExit(Sender: TObject);
begin
ORDEM.Text:=FloatTostr(fsonumero(ORDEM.Text));
if flcadp01(0,ValInt(CODEMP_ORI.Text),ls_numped,CHAVE.Text,ORDEM.Text) then
   begin
   DATA.Text:=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
   NUMNF.Text:=DM1.Tb_Ped01P1NUMNF.AsString;
   end;
end;

procedure TFrm_MPed_Emp.bbEfetivarClick(Sender: TObject);
begin
if ValInt(CODEMP_ORI.Text)<=0 then
   begin
   MessageDlg('Empresa Origem Campo Obrigatório!',mtWarning,[mbOk],0);
   CODEMP_ORI.SetFocus;
   exit;
   end;
if ValInt(CODEMP_DEST.Text)<=0 then
   begin
   MessageDlg('Empresa Destino Campo Obrigatório!',mtWarning,[mbOk],0);
   CODEMP_DEST.SetFocus;
   exit;
   end;

if not flcadp01(0,ValInt(CODEMP_ORI.Text),ls_numped,CHAVE.Text,ORDEM.Text) then
   begin
   MessageDlg('Pedido de Origem não Encontrado!',mtWarning,[mbOk],0);
   exit;
   end;
if flcadp01(0,ValInt(CODEMP_DEST.Text),ls_numped,CHAVE.Text,ORDEM.Text) then
   begin
   MessageDlg('ja existe um Pedido na Empresa de Destino com'+#13
             +'as mesmas Caracteristicas!',mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADDAR set CRCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where CRCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and CRNPED=0'+Trim(CHAVE.Text)
                   +' and CRORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADNS set NSCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where NSCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and NSLOTSEQ_CP=0'+IntToStr(ls_numped)
                   +' and NSCHAVEP=0'+Trim(CHAVE.Text)
                   +' and NSORDEMP=0'+Trim(ORDEM.Text)
                            +'  and NSTIPO<2 ' );
                   
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP01 set P1CODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P1CODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P1LOTSEQ=0'+IntTostr(ls_numped)
                   +' and P1CHAVE=0'+Trim(CHAVE.Text)
                   +' and P1ORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP01D set P1DCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P1DCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P1DLOTSEQ=0'+InttoStr(ls_numped)
                   +' and P1DCHAVE=0'+Trim(CHAVE.Text)
                   +' and P1DORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP01V set P1VCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P1VCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P1VLOTSEQ=0'+IntTostr(ls_numped)
                   +' and P1VCHAVE=0'+Trim(CHAVE.Text)
                   +' and P1VORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP02 set P2CODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P2CODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P2LOTSEQ=0'+InttoStr(ls_numped)
                   +' and P2CHAVE=0'+Trim(CHAVE.Text)
                   +' and P2ORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP02D set P2DCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P2DCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P2DLOTSEQ=0'+IntToStr(ls_numped)
                   +' and P2DCHAVE=0'+Trim(CHAVE.Text)
                   +' and P2DORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP02S set P2SCODEMP=0'+Trim(CODEMP_DEST.Text)
                   +' where P2SCODEMP=0'+Trim(CODEMP_ORI.Text)
                   +' and P2SLOTSEQ=0'+IntTostr(ls_numped)
                   +' and P2SCHAVE=0'+Trim(CHAVE.Text)
                   +' and P2SORDEM=0'+Trim(ORDEM.Text));
DM1.Query1.ExecSQL;
MessageDlg('Concluido!',mtWarning,[mbOk],0)

end;

procedure TFrm_MPed_Emp.NUMNFExit(Sender: TObject);
begin
if ValFloat(NUMNF.Text)>0 then
   begin
   if not flcadp01(3,ValInt(CODEMP_ORI.Text),ls_numped,NUMNF.Text,'') then
      begin
      MessageDlg('Nota Fiscal de Origem Encontrado!',mtWarning,[mbOk],0);
      exit;
      end
   else
      begin
      CHAVE.Text:=DM1.Tb_Ped01P1CHAVE.AsString;
      ORDEM.Text:=DM1.Tb_Ped01P1ORDEM.AsString;
      end;
   end;

end;

procedure TFrm_MPed_Emp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
