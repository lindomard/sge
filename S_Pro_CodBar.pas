unit S_Pro_CodBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,func,lerarq,S_DM1, DB, DBTables,
  DBCtrls, Grids, DBGrids;

type
  TFrm_Pro_CodBar = class(TForm)
    lbl_nompro: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbSair: TBitBtn;
    Src_Pro_CodBar: TDataSource;
    U_Pro_CodBar: TUpdateSQL;
    Tb_Pro_CodBar: TQuery;
    Tb_Pro_CodBarCBCODEMP: TFloatField;
    Tb_Pro_CodBarCBCODPRO: TFloatField;
    Tb_Pro_CodBarCBCODBAR: TStringField;
    Tb_Pro_CodBarCBQTDMULT: TFloatField;
    DBGrid_cadpro_codbar: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure Tb_Pro_CodBarBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_Pro_CodBarBeforeEdit(DataSet: TDataSet);
    procedure Tb_Pro_CodBarBeforeInsert(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid_cadpro_codbarExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tb_Pro_CodBarAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_CodBar: TFrm_Pro_CodBar;
  mCodPro_Ori: Real;
  mCodBar_Ant: Real;
  mOper_CodBar: Integer;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_Pro_CodBar.Tb_Pro_CodBarBeforePost(DataSet: TDataSet);

var
mcodpro_sai: string;
query_pro: TQuery;
   procedure pfechartudo;
   begin
   if query_pro<>nil then
      begin
      query_pro.close;
      freeandnil(query_pro);
      end
   end;

begin
if (Tb_Pro_CodBarCBCODBAR.IsNull) or (Tb_Pro_CodBarCBCODBAR.AsFloat=0) then
   begin
   Tb_Pro_CodBar.Cancel;
   DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_CodBarCBCODBAR;
   abort;
   exit;
   end;
if not (DM1.Tb_Pro.Active) or (mCodPro_Ori<>DM1.Tb_ProPDCODPRO.AsFloat) then
   begin
   if not flcadpro(1,0,0,FloatToStr(mCodPro_Ori)) then
      begin
      fmensagem('Produto Excluido no Decorrer da Operação!',0,['0'],0);
      Tb_Pro_CodBar.Cancel;
      DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_CodBarCBCODBAR;
      abort;
      bbSair.Click;
      end;
   end;
if (mCodBar_Ant<>Tb_Pro_CodBarCBCODBAR.AsFloat) then
   begin
   if fExisteCodigoCadastrado(Tb_Pro_CodBarCBCODBAR.AsString,mcodpro_sai) then
      begin
      query_pro:=TQuery.create(nil);
      query_pro.databasename:=DM1.SG_ASSOC.databasename;
      query_pro.Close;
      query_pro.SQL.Clear;
      query_pro.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where PDCODPRO=0'+Tb_Pro_CodBarCBCODBAR.AsString);
      try
         query_pro.Open;
      except on e : exception do
         begin

         ex_erroSql_Novo(Query_pro,95,'s_mcodp','CADAGRU_PRO');
         pfechartudo;
         Tb_Pro_CodBar.Cancel;
         DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_CodBarCBCODBAR;
         abort;

         exit;
         end
         end;
      if query_pro.IsEmpty=false then
         begin
         verteclado(0);
         fmensagem('Este código ja esta cadastrado no produto: '+query_pro.Fields[1].AsString,0,['0'],0);
         pfechartudo;
         Tb_Pro_CodBar.Cancel;
         DBGrid_cadpro_codbar.SelectedField:=Tb_Pro_CodBarCBCODBAR;
         abort;

         exit;
         end;
      end;
   end;
Tb_Pro_CodBarCBCODEMP.Value:=codemp;
Tb_Pro_CodBarCBCODPRO.Value:=mCodPro_Ori;
if Tb_Pro_CodBarCBQTDMULT.AsFloat=0 then
   Tb_Pro_CodBarCBQTDMULT.Value:=1;


pfechartudo;


end;

procedure TFrm_Pro_CodBar.c(DataSet: TDataSet);
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

procedure TFrm_Pro_CodBar.Tb_Pro_CodBarBeforeEdit(DataSet: TDataSet);
begin
  mCodBar_Ant :=Tb_Pro_CodBarCBCODBAR.AsFloat;
  mOper_CodBar:=1;

end;

procedure TFrm_Pro_CodBar.Tb_Pro_CodBarBeforeInsert(DataSet: TDataSet);
begin
  mCodBar_Ant :=0;
  mOper_CodBar:=0;

end;

procedure TFrm_Pro_CodBar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_CodBar.DBGrid_cadpro_codbarExit(Sender: TObject);
begin
if Tb_Pro_CodBar.State in [dsEdit,dsInsert] then
   Tb_Pro_CodBar.Post;

end;

procedure TFrm_Pro_CodBar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pro_CodBar.Tb_Pro_CodBarAfterEdit(DataSet: TDataSet);
begin
mCodBar_Ant:=tb_Pro_CodBarCBCODBAR.AsFloat;

end;

end.
