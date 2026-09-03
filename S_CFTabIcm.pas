unit S_CFTabIcm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM6,s_dm1,lerarq,func,db,dbtables, ToolEdit, RXDBCtrl;

type
  TFrm_CFTabIcm = class(TFrm_C)
    lblNCM: TStaticText;
    dbeNCM: TDBEdit;
    lblALIQ: TStaticText;
    dbeTabelaIcms: TDBEdit;
    lblDESC: TStaticText;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    dbcbMonofasico: TDBCheckBox;
    bbBaixarNCM: TBitBtn;
    dbmDESC: TDBMemo;
    lblTribNac: TStaticText;
    dbeIcmsNacional: TDBEdit;
    dbeIcmsImportado: TDBEdit;
    dbmDescDesonera: TDBMemo;
    dbcbDesonera: TDBCheckBox;
    lblDescDes: TStaticText;
    lblTribImp: TStaticText;
    StaticText1: TStaticText;
    DBE_CI_CEST: TDBEdit;
    StaticText2: TStaticText;
    DBGrid_CADCLATABICM_CEST: TDBGrid;
    Tb_CADCLATABICM_CEST: TQuery;
    U_CADCLATABICM_CEST: TUpdateSQL;
    Src_CADCLATABICM_CEST: TDataSource;
    Tb_CADCLATABICM_CESTNCMCEST_CODNCM: TStringField;
    Tb_CADCLATABICM_CESTNCMCEST_CEST: TStringField;
    Src_CFTabIcm: TDataSource;
    StaticText3: TStaticText;
    DBE_CFUNIDADEEXP: TDBEdit;
    StaticText4: TStaticText;
    DBE_CIIRRF: TDBEdit;
    StaticText5: TStaticText;
    DBE_CICSLL: TDBEdit;
    StaticText6: TStaticText;
    DBECIVALAPROXEST: TDBEdit;
    StaticText7: TStaticText;
    DBE_CIVALAPROXMUN: TDBEdit;
    StaticText8: TStaticText;
    DBE_CIEX: TDBEdit;
    StaticText9: TStaticText;
    DBE_CITIPO: TDBEdit;
    StaticText10: TStaticText;
    DBE_CICLASSIF: TDBEdit;
    StaticText11: TStaticText;
    DBE_CIVERSAO: TDBEdit;
    StaticText12: TStaticText;
    db_CIDT_INI: TDBDateEdit;
    StaticText13: TStaticText;
    DB_CIDT_FIN: TDBDateEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SAIRClick(Sender: TObject);
    procedure bbBaixarNCMClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure Tb_CADCLATABICM_CESTBeforePost(DataSet: TDataSet);
    procedure DBGrid_CADCLATABICM_CESTExit(Sender: TObject);
    procedure Src_CFTabIcmDataChange(Sender: TObject; Field: TField);
    procedure Tb_CADCLATABICM_CESTAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
     mant_codncm: string;
    procedure fLerCADCLATABICM_CEST(pCodNCM,pCest: String);

  public
    { Public declarations }
  end;

var
  Frm_CFTabIcm: TFrm_CFTabIcm;
  mtabant: String;
  mOper: Integer=0;
  tabicm_ori: String='';

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_CFTabIcm.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadCFTabIcm(CAMPO.ItemIndex,0,Edit1.Text);
end;

procedure TFrm_CFTabIcm.INCLUIRClick(Sender: TObject);
begin
  inherited;
mOper:=0;
DM6.Tb_CFTabIcm.Append;
if DM6.Tb_CFTabIcmCIMONOFASICO.IsNull then
  dbcbMonofasico.Checked := False;
if DM6.Tb_CFTabIcmCIDI.IsNull then
  dbcbDesonera.Checked := False;
end;

procedure TFrm_CFTabIcm.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_CFTabIcmCICLASSIF.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
mOper:=1;
mtabant:=DM6.Tb_CFTabIcmCITABICMS.Value;
mcodigo:=DM6.Tb_CFTabIcmCICLASSIF.Value;

DM6.Tb_CFTabIcm.Edit;
end;

procedure TFrm_CFTabIcm.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_CFTabIcmCICLASSIF.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM6.Tb_CFTabIcm.Delete;
   end;

end;

procedure TFrm_CFTabIcm.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM6.Tb_CFTabIcmCICLASSIF.Value='_') or (DM6.Tb_CFTabIcmCICLASSIF.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   dbmDESC.SetFocus;
   exit;
   end;
if mOper=1 then
   begin
   if (mtabant<>DM6.Tb_CFTabIcmCITABICMS.Value) or
      (mcodigo<>DM6.Tb_CFTabIcmCICLASSIF.Value) then
      begin
      DM1.Query1.close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('Select * from CADCLATABICM where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCFO',[]),'',' CICODEMP=0'+InttoStr(codemp)+' and ')
                        +' CICLASSIF='+chr(39)+DM6.Tb_CFTabIcmCICLASSIF.Value+chr(39)
                        +' and CITABICMS='+chr(39)+DM6.Tb_CFTabIcmCITABICMS.Value+chr(39));
      DM1.Query1.Open;
      if not (DM1.Query1.IsEmpty) then
         begin
         fmensagem('Ja existe um registros com as caracteristicas digitadas!',0,['1'],0);
         CANCELARClick(self);
         exit;
         end;
      end;
   end
else if mOper=0 then
   begin
   DM1.Query1.close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('Select * from CADCLATABICM where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCFO',[]),'',' CICODEMP=0'+InttoStr(codemp)+' and ')
                     +' CICLASSIF='+chr(39)+DM6.Tb_CFTabIcmCICLASSIF.Value+chr(39)
                     +' and CITABICMS='+chr(39)+DM6.Tb_CFTabIcmCITABICMS.Value+chr(39));
   DM1.Query1.Open;
   if not (DM1.Query1.IsEmpty) then
      begin
      CANCELARClick(self);
      exit;
      end;
   end;

dm6.Tb_CFTabIcm.Post;
CANCELAR.Click;

end;

procedure TFrm_CFTabIcm.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_CFTabIcm.State in [dsEdit,dsInsert] then
   DM6.Tb_CFTabIcm.Cancel;

end;

procedure TFrm_CFTabIcm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CFTabIcm.SAIRClick(Sender: TObject);
begin
  inherited;
  if tabicm_ori = '' then close;
end;

procedure TFrm_CFTabIcm.bbBaixarNCMClick(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Quer realmente baixar no site da intersys os codigos ncm cadastrados?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
fBaixarNCM;

end;

procedure TFrm_CFTabIcm.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if tabicm_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;
end;

procedure TFrm_CFTabIcm.FormCreate(Sender: TObject);
begin
  inherited;
DBGrid1.DataSource:=DM6.Src_CFTabIcm;
DBNavigator2.DataSource:=DM6.Src_CFTabIcm;
DM6.Tb_CFTabIcmCIPERC_IRRF.DisplayFormat := mcasas_pct;
DM6.Tb_CFTabIcmCIPERC_CSLL.DisplayFormat := mcasas_pct;


end;

procedure TFrm_CFTabIcm.c(DataSet: TDataSet);
begin
  inherited;
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

procedure TFrm_CFTabIcm.Tb_CADCLATABICM_CESTBeforePost(DataSet: TDataSet);
begin
  inherited;
if (Tb_CADCLATABICM_CESTNCMCEST_CODNCM.IsNull) or (Tb_CADCLATABICM_CESTNCMCEST_CODNCM.IsNull) then
   begin
   Tb_CADCLATABICM_CEST.Cancel;
   exit;
   end;
end;

procedure TFrm_CFTabIcm.DBGrid_CADCLATABICM_CESTExit(Sender: TObject);
begin
  inherited;
if Tb_CADCLATABICM_CEST.State in [dsedit,dsinsert] then
   Tb_CADCLATABICM_CEST.Post;
end;


procedure TFrm_CFTabIcm.fLerCADCLATABICM_CEST(pCodNCM,pCest: String);
begin
Tb_CADCLATABICM_CEST.Close;
Tb_CADCLATABICM_CEST.SQL.clear;
Tb_CADCLATABICM_CEST.SQL.Add('Select NCMCEST_CODNCM,NCMCEST_CEST from CADCLATABICM_CEST '
                            +' where NCMCEST_CODNCM=:CODNCM '
                            +' ORDER BY NCMCEST_CEST');

Tb_CADCLATABICM_CEST.Parambyname('CODNCM').asstring:=pCodNcm;
try

   Tb_CADCLATABICM_CEST.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CADCLATABICM_CEST,270,'func Erro:'+e.Message ,'CADCLATABICM_CEST');
   end;
   end;
mant_codncm:=DM6.Tb_CFTabIcmCICLASSIF.AsString;

end;

procedure TFrm_CFTabIcm.Src_CFTabIcmDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if mant_codncm<>DM6.Tb_CFTabIcmCICLASSIF.AsString then
   begin
   fLerCADCLATABICM_CEST(DM6.Tb_CFTabIcmCICLASSIF.AsString,'');
   end;

end;

procedure TFrm_CFTabIcm.Tb_CADCLATABICM_CESTAfterInsert(DataSet: TDataSet);
begin
  inherited;
Tb_CADCLATABICM_CESTNCMCEST_CODNCM.AsString:=DM6.Tb_CFTabIcmCICLASSIF.AsString;

end;

end.
