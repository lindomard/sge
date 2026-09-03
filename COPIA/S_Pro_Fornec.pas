unit S_Pro_Fornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,func,lerarq,S_DM1, DB, DBTables,
  DBCtrls, Grids, DBGrids,S_For;

type
  TFrm_Pro_Fornec = class(TForm)
    lbl_nompro: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbSair: TBitBtn;
    Src_Pro_Fornec: TDataSource;
    U_Pro_Fornec: TUpdateSQL;
    Tb_Pro_Fornec: TQuery;
    DBGrid_cadpro_codbar: TDBGrid;
    DBNavigator1: TDBNavigator;
    Tb_Pro_FornecPFCODEMP: TFloatField;
    Tb_Pro_FornecPFCODFOR: TFloatField;
    Tb_Pro_FornecPFSALDO: TFloatField;
    Tb_Pro_FornecNOMFOR: TStringField;
    Tb_Pro_FornecPFCODPRO: TFloatField;
    Tb_Pro_FornecPFCODPFORN: TStringField;
    procedure Tb_Pro_FornecBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_Pro_FornecBeforeEdit(DataSet: TDataSet);
    procedure Tb_Pro_FornecBeforeInsert(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid_cadpro_codbarColExit(Sender: TObject);
    procedure DBGrid_cadpro_codbarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_cadpro_codbarExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_Fornec: TFrm_Pro_Fornec;
  mCodPro_Fornec_Ori: Real;
  mCodFor_Ant: Real;
  mOper_Fornec: Integer;
implementation

{$R *.dfm}

procedure TFrm_Pro_Fornec.Tb_Pro_FornecBeforePost(DataSet: TDataSet);
begin
if (Tb_Pro_FornecPFCODFOR.IsNull) or (Tb_Pro_FornecPFCODFOR.AsFloat=0) then
   begin
   Tb_Pro_Fornec.Cancel;
   DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_FornecPFCODFOR;
   abort;
   exit;
   end;
if not (DM1.Tb_Pro.Active) or (mCodPro_Fornec_Ori<>DM1.Tb_ProPDCODPRO.AsFloat) then
   begin
   if not flcadpro(1,0,0,FloatToStr(mCodPro_Fornec_Ori)) then
      begin
      fmensagem('Produto Excluido no Decorrer da Operação!',0,['0'],0);
      Tb_Pro_Fornec.Cancel;
      DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_FornecPFCODFOR;
      abort;
      bbSair.Click;
      end;
   end;
if (mOper_Fornec=0) or
   ((mOper_Fornec=1) and (mCodFor_Ant<>Tb_Pro_FornecPFCODFOR.AsFloat)) then
   begin
   DM1.query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.add('Select count(*) from CODPFOR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PFCODEMP=0'+IntTosTr(codemp)+' and ')
                     +' PFCODPRO=0'+FloatToStr(mCodPro_Fornec_Ori)
                     +' and PFCODFOR=0'+Tb_Pro_FornecPFCODFOR.AsString);
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Codigo ja Cadastrado anteriormente!',0,['0'],0);
      Tb_Pro_Fornec.Cancel;
      DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_FornecPFCODFOR;
      abort;
      exit;
      end;
   end;
Tb_Pro_FornecPFCODEMP.Value:=codemp;
Tb_Pro_FornecPFCODPRO.Value:=mCodPro_Fornec_Ori;
//if Tb_Pro_FornecPFCODPFOR.AsFloat=0 then
//   Tb_Pro_FornecPFCODPFOR.Value:=0;
if Tb_Pro_FornecPFCODPFORN.IsNull then
   Tb_Pro_FornecPFCODPFORN.Value:=' ';

end;

procedure TFrm_Pro_Fornec.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_Pro_Fornec.Tb_Pro_FornecBeforeEdit(DataSet: TDataSet);
begin
  mCodFor_Ant :=Tb_Pro_FornecPFCODFOR.AsFloat;
  mOper_Fornec:=1;

end;

procedure TFrm_Pro_Fornec.Tb_Pro_FornecBeforeInsert(DataSet: TDataSet);
begin
  mCodFor_Ant :=0;
  mOper_Fornec:=0;

end;

procedure TFrm_Pro_Fornec.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_Fornec.DBGrid_cadpro_codbarColExit(Sender: TObject);
begin
if Tb_Pro_Fornec.State in [dsEdit,dsInsert] then
   begin
   if Tb_Pro_FornecPFCODFOR.IsNull then
      Tb_Pro_FornecPFCODFOR.Value:=0;
   if Tb_Pro_FornecPFCODFOR.AsFloat<>0 then
      begin
      if DBGrid_cadpro_codbar.SelectedField=Tb_Pro_FornecPFCODFOR then
         begin
         if not flqr1('FRAZAO,FDENOM','F','CADFOR','N','FCODFOR',Tb_Pro_FornecPFCODFOR.AsString) then
            begin
            fmensagem('Fornecedor nao cadastrado!',0,['0'],0);
            DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_FornecPFCODFOR;
            abort;
            exit;
            end
         else
            Tb_Pro_FornecNOMFOR.Value:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   end;
end;

procedure TFrm_Pro_Fornec.DBGrid_cadpro_codbarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Tb_Pro_Fornec.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_cadpro_codbar.SelectedField=Tb_Pro_FornecPFCODFOR then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
         begin
         Tb_Pro_FornecPFCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro_Fornec',Key));
         Tb_Pro_FornecNOMFOR.Value  :=DM1.Tb_ForFRAZAO.Value;
         key:=#0;
         end;
      end;
   end;

end;

procedure TFrm_Pro_Fornec.DBGrid_cadpro_codbarExit(Sender: TObject);
begin
if Tb_Pro_Fornec.State in [dsEdit,dsInsert] then
   Tb_Pro_Fornec.Post;

end;

procedure TFrm_Pro_Fornec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
