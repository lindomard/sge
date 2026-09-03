unit S_DCBPRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,S_DM1,func,lerarq, DB, DBTables, Grids,
  DBGrids, DBCtrls, Buttons,S_DCB;

type
  TFrm_DCBPRO = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Tb_PGen: TQuery;
    U_PGen: TUpdateSQL;
    Tb_PGenPGCODEMP: TFloatField;
    Tb_PGenPGCODPRO: TFloatField;
    Tb_PGennomdcb: TStringField;
    Src_Pgen: TDataSource;
    Tb_PGenPGCODDCB: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Tb_PGenCalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_PGenAfterInsert(DataSet: TDataSet);
    procedure Tb_PGenBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tb_PGenBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DCBPRO: TFrm_DCBPRO;
  form_dcb: TFrm_DCB;
implementation


{$R *.dfm}

procedure TFrm_DCBPRO.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_DCBPRO.Tb_PGenCalcFields(DataSet: TDataSet);
begin
if flqr1('CGNOME','CG','CADGEN','C','CGCODDCB',Tb_PGenPGCODDCB.Value) then
   begin
   Tb_PGennomdcb.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_DCBPRO.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   ShowMessage('Erro ao Gravar. Registro Duplicado ou Campo Invalido');
   end;

end;

procedure TFrm_DCBPRO.Tb_PGenAfterInsert(DataSet: TDataSet);
begin
Tb_PGenPGCODEMP.Value:=codemp;
Tb_PGenPGCODPRO.Value:=ValFloat(CODPRO.Text);
end;

procedure TFrm_DCBPRO.Tb_PGenBeforePost(DataSet: TDataSet);
begin
if (Tb_PGenPGCODDCB.IsNull) or (Trim(Tb_PGenPGCODDCB.Value)='') then
   begin
   Tb_PGen.Cancel;
   abort;
   exit;
   end;
if not flqr1('CGNOME','CG','CADGEN','C','CGCODDCB',Tb_PGenPGCODDCB.Value) then
   begin
   MessageDlg('Código do DCB não Encontrado!',mtWarning,[mbOk],0);
   Abort;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select * from CADPGEN where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PGCODEMP=0'+Inttostr(codemp)+' and ')
                  +' PGCODPRO=0'+Trim(CODPRO.Text)
                  +' and PGCODDCB='+chr(39)+Tb_PGenPGCODDCB.Value+chr(39));
DM1.Query1.Open;
if not DM1.Query1.Eof then
   begin
   MessageDlg('Não Pode Haver Duplicidade de DCB no Mesmo Produto!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;
end;

procedure TFrm_DCBPRO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_DCBPRO.Tb_PGenBeforeDelete(DataSet: TDataSet);
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADPGEN where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PGCODPRO=0'+Trim(CODPRO.Text)
                  +' AND PGCODDCB='+chr(39)+Tb_PGenPGCODDCB.Value+chr(39));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
end;

end;

procedure TFrm_DCBPRO.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=114) and (Tb_PGen.State in [dsInsert,dsEdit]) then
   begin
   if form_dcb=nil then
     Application.createform(TFrm_DCB,Form_DCB);
   dcb_ori     := 'frm_dcb';

   if form_DCB.ShowModal=mrOk then
      begin
      Tb_PGenPGCODDCB.AsString:=DM1.Tb_GenCGCODDCB.AsString;
      end;
   end;
end;

end.
