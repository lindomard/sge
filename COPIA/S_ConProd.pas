unit S_ConProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, Grids, ExtCtrls, DBCtrls,S_DM1,db,dbtables,func,
  DBGrids, dbcgrids,lerarq,S_Fun,S_DM2,S_IMO,S_MPer,S_MPar,S_SI,func2,
  ComCtrls;

type
  TFrm_ConProd = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CB_Pesq: TComboBox;
    CAMPO: TMaskEdit;
    bbAtualizar: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator1: TDBNavigator;
    EXCLUIR: TBitBtn;
    IMPRIMIR: TBitBtn;
    GroupBox4: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    GroupBox5: TGroupBox;
    Qr_CP01: TQuery;
    Qr_CP01CP1CODEMP: TFloatField;
    Qr_CP01CP1LOTSEQ: TFloatField;
    Qr_CP01CP1CHAVE: TFloatField;
    Qr_CP01CP1DATA: TDateTimeField;
    Qr_CP01CP1TURNO: TStringField;
    Qr_CP01CP1REBARBAS: TStringField;
    Qr_CP01CP1DATAINC: TDateTimeField;
    Qr_CP01CP1USRINC: TFloatField;
    Qr_CP01CP1DATAALT: TDateTimeField;
    Qr_CP01CP1USRALT: TFloatField;
    Qr_CP02: TQuery;
    Qr_CP02CP2CODEMP: TFloatField;
    Qr_CP02CP2LOTSEQ: TFloatField;
    Qr_CP02CP2CHAVE: TFloatField;
    Qr_CP02CP2ITEM: TFloatField;
    Qr_CP02CP2CODMAQ: TFloatField;
    Qr_CP02CP2FRASCO: TStringField;
    Qr_CP02CP2COR: TStringField;
    Qr_CP02CP2CICLO: TFloatField;
    Qr_CP02CP2CAVIDADE: TFloatField;
    Qr_CP02CP2PRODUCAO: TFloatField;
    Qr_CP02CP2PERDA: TFloatField;
    Qr_CP02CP2HORTRAB: TFloatField;
    U_CP01: TUpdateSQL;
    U_CP02: TUpdateSQL;
    Src_CP01: TDataSource;
    Src_CP02: TDataSource;
    Qr_CP01CP1CODENC: TFloatField;
    Qr_CP01nomenc: TStringField;
    DBEdit2: TDBEdit;
    db_cbTurno: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    Qr_CP02nommaq: TStringField;
    Qr_CP02CP2DTHRIPAR: TDateTimeField;
    Qr_CP02CP2DTHRTPAR: TDateTimeField;
    Qr_CP02percPerda: TFloatField;
    dbGridCP02: TDBGrid;
    GroupBox9: TGroupBox;
    bbIncCP02: TBitBtn;
    bbAltCP02: TBitBtn;
    bbGravCP02: TBitBtn;
    bbCancCP02: TBitBtn;
    dbnavCP02: TDBNavigator;
    bbExcCP02: TBitBtn;
    Qr_CP02perda: TFloatField;
    Qr_CP02totperdas: TFloatField;
    Qr_CP02_MPER: TQuery;
    Qr_CP02_MPERCP2MPERSEQ: TFloatField;
    Qr_CP02_MPERCP2MPERCODMPER: TFloatField;
    Qr_CP02_MPERCP2MPERNOMPER: TStringField;
    U_CP02_MPER: TUpdateSQL;
    Src_CP02_MPER: TDataSource;
    Qr_CP02_MPERmotivo: TStringField;
    Qr_CP02_MPERCP2MPERCODEMP: TFloatField;
    Qr_CP02_MPERCP2MPERLOTSEQ: TFloatField;
    Qr_CP02_MPERCP2MPERCHAVE: TFloatField;
    Qr_CP02_MPAR: TQuery;
    U_CP02_MPAR: TUpdateSQL;
    Src_CP02_MPAR: TDataSource;
    Qr_CP02_MPARCP2MPARCODEMP: TFloatField;
    Qr_CP02_MPARCP2MPARLOTSEQ: TFloatField;
    Qr_CP02_MPARCP2MPARSEQ: TFloatField;
    Qr_CP02_MPARCP2MPARCODMPAR: TFloatField;
    Qr_CP02_MPARCP2MPARNOMPAR: TStringField;
    Qr_CP02_MPARCP2MPARDTHRTPAR: TDateTimeField;
    Qr_CP02_MPARCP2MPARCHAVE: TFloatField;
    Qr_CP02_MPARCP2MPARDTHRIPAR: TDateTimeField;
    Qr_CP02_MPARmotivo: TStringField;
    PageControl1: TPageControl;
    ts_div: TTabSheet;
    ts_pren: TTabSheet;
    ts_perdas: TTabSheet;
    ts_paradas: TTabSheet;
    DBEdit19: TDBEdit;
    StaticText18: TStaticText;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    StaticText12: TStaticText;
    StaticText11: TStaticText;
    StaticText10: TStaticText;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    StaticText9: TStaticText;
    StaticText8: TStaticText;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText7: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText6: TStaticText;
    db_cbFrasco: TDBComboBox;
    StaticText5: TStaticText;
    DBG_Perdas: TDBGrid;
    dbn_perdas: TDBNavigator;
    DBG_Par: TDBGrid;
    dbn_par: TDBNavigator;
    Qr_CP02_PREN: TQuery;
    Qr_CP02_PRENCP2PRENCODEMP: TFloatField;
    Qr_CP02_PRENCP2PRENLOTSEQ: TFloatField;
    Qr_CP02_PRENCP2PRENCHAVE: TFloatField;
    Qr_CP02_PRENCP2PRENCODMPREN: TFloatField;
    Qr_CP02_PRENnompren: TStringField;
    U_CP02_PREN: TUpdateSQL;
    Src_CP02_PREN: TDataSource;
    DBG_Pren: TDBGrid;
    dbn_pren: TDBNavigator;
    Qr_CP02_MPARCP2MPARCODMAQ: TFloatField;
    Qr_CP02_MPERCP2MPERCODMAQ: TFloatField;
    Qr_CP02_PRENCP2PRENCODMAQ: TFloatField;
    Qr_CP02_PRENCP2PRENSEQ: TFloatField;
    Qr_CP02_PRENCP2PRENNOMPREN: TStringField;
    bbPrensista: TBitBtn;
    BitBtn8: TBitBtn;
    PROTRO: TRadioGroup;
    Qr_CP01CP1PROTRO: TFloatField;
    Qr_CP02CP2PROTRO: TFloatField;
    Qr_CP02_PRENCP2PRENPROTRO: TFloatField;
    Qr_CP02_MPERCP2MPERPROTRO: TFloatField;
    Qr_CP02_MPARCP2MPARPROTRO: TFloatField;
    procedure BitBtn8Click(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_CP01DataChange(Sender: TObject; Field: TField);
    procedure Qr_CP01AfterCancel(DataSet: TDataSet);
    procedure Qr_CP01AfterPost(DataSet: TDataSet);
    procedure Qr_CP01AfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Qr_CP01CalcFields(DataSet: TDataSet);
    procedure Qr_CP02CalcFields(DataSet: TDataSet);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure Qr_CP02AfterPost(DataSet: TDataSet);
    procedure CB_PesqExit(Sender: TObject);
    procedure db_cbTurnoExit(Sender: TObject);
    procedure db_cbTurnoEnter(Sender: TObject);
    procedure db_cbFrascoEnter(Sender: TObject);
    procedure db_cbFrascoExit(Sender: TObject);
    procedure Qr_CP02AfterInsert(DataSet: TDataSet);
    procedure bbIncCP02Click(Sender: TObject);
    procedure bbAltCP02Click(Sender: TObject);
    procedure bbGravCP02Click(Sender: TObject);
    procedure bbCancCP02Click(Sender: TObject);
    procedure bbExcCP02Click(Sender: TObject);
    procedure Qr_CP02AfterEdit(DataSet: TDataSet);
    procedure Qr_CP02AfterDelete(DataSet: TDataSet);
    procedure Qr_CP02AfterCancel(DataSet: TDataSet);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure Qr_CP02_MPERBeforeInsert(DataSet: TDataSet);
    procedure Qr_CP02_MPERBeforePost(DataSet: TDataSet);
    procedure Src_CP02DataChange(Sender: TObject; Field: TField);
    procedure Qr_CP02_MPERCalcFields(DataSet: TDataSet);
    procedure DBG_PerdasKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_PerdasExit(Sender: TObject);
    procedure Qr_CP02_MPARBeforeInsert(DataSet: TDataSet);
    procedure Qr_CP02_MPARBeforePost(DataSet: TDataSet);
    procedure Qr_CP02_MPARCalcFields(DataSet: TDataSet);
    procedure DBG_ParExit(Sender: TObject);
    procedure DBG_ParKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_CP02_PRENBeforeInsert(DataSet: TDataSet);
    procedure Qr_CP02_PRENBeforePost(DataSet: TDataSet);
    procedure Qr_CP02_PRENCalcFields(DataSet: TDataSet);
    procedure DBG_PrenExit(Sender: TObject);
    procedure DBG_PrenKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_CP02_PRENAfterPost(DataSet: TDataSet);
    procedure Qr_CP02_PRENBeforeEdit(DataSet: TDataSet);
    procedure Qr_CP02_MPERAfterPost(DataSet: TDataSet);
    procedure Qr_CP02_MPARAfterPost(DataSet: TDataSet);
    procedure Qr_CP02_MPERBeforeEdit(DataSet: TDataSet);
    procedure Qr_CP02_MPARBeforeEdit(DataSet: TDataSet);
    procedure Qr_CP02BeforeEdit(DataSet: TDataSet);
    procedure Qr_CP02BeforeInsert(DataSet: TDataSet);
    procedure Qr_CP02_MPERAfterInsert(DataSet: TDataSet);
    procedure Qr_CP02_MPARAfterInsert(DataSet: TDataSet);
    procedure Qr_CP02_PRENAfterInsert(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure Qr_CP01BeforeInsert(DataSet: TDataSet);
    procedure Qr_CP01BeforeEdit(DataSet: TDataSet);
    procedure bbPrensistaClick(Sender: TObject);
    procedure MONTA_RELATORIO;
    procedure PROTROClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    STATUS_PT : STRING;
  end;

var
  Frm_ConProd: TFrm_ConProd;
  mConProd_Oper: Integer=0;
  mAtualizar2: Boolean=True;
  mAtualizar3: Boolean=True;
  mcodmaqant: Real=0;
  mcodant: Real=0;
  mcodigo: Real;
  mqtdreg: Integer;
implementation

uses S_Agde, S_DM4, Sr_ConProd;

{$R *.dfm}

procedure TFrm_ConProd.BitBtn8Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ConProd.INCLUIRClick(Sender: TObject);
begin
mConProd_Oper         :=0;
INCLUIR.Enabled       :=False;
ALTERAR.Enabled       :=False;
EXCLUIR.Enabled       :=False;
GRAVAR.Enabled        :=True;
IMPRIMIR.Enabled      :=False;
DBNavigator1.Enabled  :=False;
DBGrid1.Enabled       :=False;
bbAtualizar.Enabled   :=False;
bbIncCP02.Enabled     :=true;
bbAltCP02.Enabled     :=true;
bbExcCP02.Enabled     :=true;
bbGravCP02.Enabled    :=False;
bbCancCP02.Enabled    :=true;

Qr_CP01.Insert;

Qr_CP02.Close;
Qr_CP02.SQL.Clear;
Qr_CP02.SQL.add('Select * from CADCP02 where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
               +' CP2LOTSEQ is null '
               +' and CP2CHAVE is null'
               +' and CP2PROTRO = '+INTTOSTR(PROTRO.ITEMINDEX));
Qr_CP02.Open;


GroupBox4.Enabled   :=true;
ts_div.Enabled      :=true;
DBG_Perdas.ReadOnly :=false;
dbn_perdas.Enabled  :=true;
DBG_Par.ReadOnly    :=false;
dbn_par.Enabled     :=true;
DBG_Pren.ReadOnly   :=false;
dbn_pren.Enabled    :=true;

DBEdit2.SetFocus;

end;

procedure TFrm_ConProd.ALTERARClick(Sender: TObject);
begin
if Qr_CP01CP1CODEMP.IsNull then
   begin
   MessageDlg('Não ha registro selecionado!',mtWarning,[mbOk],0);
   exit;
   end;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
IMPRIMIR.Enabled    :=False;
GroupBox4.Enabled   :=True;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
bbAtualizar.Enabled :=False;
mConProd_Oper:=1;
bbIncCP02.Enabled     :=true;
bbAltCP02.Enabled     :=true;
bbExcCP02.Enabled     :=true;
bbGravCP02.Enabled    :=False;
bbCancCP02.Enabled    :=true;
ts_div.Enabled      :=true;
DBG_Perdas.ReadOnly :=false;
dbn_perdas.Enabled  :=true;
DBG_Par.ReadOnly    :=false;
dbn_par.Enabled     :=true;
DBG_Pren.ReadOnly   :=false;
dbn_pren.Enabled    :=true;
Qr_CP01.Edit;
DBEdit2.SetFocus;

end;

procedure TFrm_ConProd.GRAVARClick(Sender: TObject);
var
mitem: Real;
begin
if Qr_CP02.State in [dsEdit,dsInsert] then
   begin
   if Qr_CP02CP2CODMAQ.IsNull then
      Qr_CP02.Cancel
   else
      Qr_CP02.Post;
   end;
if Qr_CP02.RecordCount<1 then
   begin
   MessageDlg('Nada a ser gravado!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;

if mConProd_Oper=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCP01 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                     +' CP1LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                     +' and CP1CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                     +' and CP1PROTRO='+INTTOSTR(PROTRO.ItemIndex));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 253 ao excluir CADCP01',mtWarning,[mbOk],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCP02 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                     +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                     +' and CP2CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                     +' and CP2PROTRO='+INTTOSTR(PROTRO.ItemIndex));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 266 ao excluir CADCP01',mtWarning,[mbOk],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCP02_MPAR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                     +' CP2MPARLOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                     +' and CP2MPARCHAVE=0'+Qr_CP01CP1CHAVE.AsString
                     +' and CP2MPARPROTRO='+INTTOSTR(PROTRO.ItemIndex));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 358 ao excluir CADCP02_MPAR',mtWarning,[mbOk],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCP02_MPER where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                     +' CP2MPERLOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                     +' and CP2MPERCHAVE=0'+Qr_CP01CP1CHAVE.AsString
                     +' and CP2MPERPROTRO='+INTTOSTR(PROTRO.ItemIndex));                     
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 358 ao excluir CADCP02_MPAR',mtWarning,[mbOk],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCP02_PREN where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                     +' CP2PRENLOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                     +' and CP2PRENCHAVE=0'+Qr_CP01CP1CHAVE.AsString
                     +' and CP2PRENPROTRO='+INTTOSTR(PROTRO.ItemIndex));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 384 ao excluir CADCP02_PREN',mtWarning,[mbOk],0);
      end;


   mcodigo:=Qr_CP01CP1CHAVE.Value;
   end
else
   begin
   if protro.ItemIndex = 0 then
       begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.add('Select max(CP1CHAVE) from CADCP01'
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+Qr_CP01CP1CODEMP.AsString));

         DM1.Query2.Open;
         mcodigo:=DM1.Query2.Fields[0].AsFloat+1;
       end else
           begin
             mcodigo := StrToFloat(trim(CAMPO.text));
           end;
   end;

DM1.Query2.Params.CreateParam(ftstring,'CP1CODEMP'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1LOTSEQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1CHAVE'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1DATA'    ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1TURNO'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1REBARBAS',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1DATAINC' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1USRINC'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1DATAALT' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1USRALT'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1CODENC'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP1PROTRO'  ,ptinput);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCP01 ('
          +'CP1CODEMP'
          +',CP1LOTSEQ'
          +',CP1CHAVE'
          +',CP1DATA'
          +',CP1TURNO'
          +',CP1REBARBAS'
          +',CP1DATAINC'
          +',CP1USRINC'
          +',CP1DATAALT'
          +',CP1USRALT'
          +',CP1CODENC'
          +',CP1PROTRO'
          +') Values  ('
          +':CP1CODEMP'
          +',:CP1LOTSEQ'
          +',:CP1CHAVE'
          +',:CP1DATA'
          +',:CP1TURNO'
          +',:CP1REBARBAS'
          +',:CP1DATAINC'
          +',:CP1USRINC'
          +',:CP1DATAALT'
          +',:CP1USRALT'
          +',:CP1CODENC'
          +',:CP1PROTRO'
          +')'
          );

DM1.Query2.ParambyName('CP1CODEMP').AsFloat    :=codemp;
DM1.Query2.ParambyName('CP1LOTSEQ').AsFloat    :=0;
DM1.Query2.ParambyName('CP1CHAVE').AsFloat     :=mcodigo;
DM1.Query2.ParambyName('CP1DATA').AsDateTime   :=Qr_CP01CP1DATA.Value;
DM1.Query2.ParambyName('CP1TURNO').AsString    :=Qr_CP01CP1TURNO.AsString;
DM1.Query2.ParambyName('CP1REBARBAS').AsString :=Qr_CP01CP1REBARBAS.AsString;
DM1.Query2.ParambyName('CP1PROTRO').AsFloat    :=PROTRO.ItemIndex;

if Qr_CP01CP1DATAINC.IsNull then
   begin
   DM1.Query2.ParambyName('CP1DATAINC').AsDateTime:=date;
   DM1.Query2.ParambyName('CP1USRINC').AsFloat    :=codusr;
   end
else
   begin
   DM1.Query2.ParambyName('CP1DATAINC').AsDateTime:=Qr_CP01CP1DATAINC.Value;
   DM1.Query2.ParambyName('CP1USRINC').AsFloat    :=Qr_CP01CP1USRINC.Value;
   end;

DM1.Query2.ParambyName('CP1DATAALT').AsDateTime :=Date;
DM1.Query2.ParambyName('CP1USRALT').AsFloat     :=codusr;
DM1.Query2.ParambyName('CP1CODENC').AsFloat      :=Qr_CP01CP1CODENC.Value;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
//   DM1.Query2.Sql.SaveToFile('c:\sql1.txt');
   MessageDlg('Erro 333 ao incluir cabecalho!',mtWarning,[mbOk],0);
   end;

DM1.Query2.Params.CreateParam(ftstring,'CP2CODEMP'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2LOTSEQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2CHAVE'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2ITEM'    ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2CODMAQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2FRASCO'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2COR'     ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2CICLO'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2CAVIDADE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRODUCAO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PERDA'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2HORTRAB' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2DTHRIPAR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2DTHRTPAR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PROTRO'  ,ptinput);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCP02 ('
          +'CP2CODEMP'
          +',CP2LOTSEQ'
          +',CP2CHAVE'
          +',CP2ITEM'
          +',CP2CODMAQ'
          +',CP2FRASCO'
          +',CP2COR'
          +',CP2CICLO'
          +',CP2CAVIDADE'
          +',CP2PRODUCAO'
          +',CP2PERDA'
          +',CP2HORTRAB'
          +',CP2DTHRIPAR'
          +',CP2DTHRTPAR'
          +',CP2PROTRO'
          +') Values  ('
          +':CP2CODEMP'
          +',:CP2LOTSEQ'
          +',:CP2CHAVE'
          +',:CP2ITEM'
          +',:CP2CODMAQ'
          +',:CP2FRASCO'
          +',:CP2COR'
          +',:CP2CICLO'
          +',:CP2CAVIDADE'
          +',:CP2PRODUCAO'
          +',:CP2PERDA'
          +',:CP2HORTRAB'
          +',:CP2DTHRIPAR'
          +',:CP2DTHRTPAR'
          +',:CP2PROTRO'
          +')'
          );

Qr_CP02.First;
mitem:=0;
While not Qr_CP02.Eof do
   begin
   mitem:=mitem+1;
   DM1.Query2.ParambyName('CP2CODEMP').AsFloat     :=codemp;
   DM1.Query2.ParambyName('CP2LOTSEQ').AsFloat     :=0;
   DM1.Query2.ParambyName('CP2CHAVE').AsFloat      :=mcodigo;
   DM1.Query2.ParambyName('CP2ITEM').AsFloat       :=mitem;
   DM1.Query2.ParambyName('CP2CODMAQ').AsFloat     :=Qr_CP02CP2CODMAQ.Value;
   DM1.Query2.ParambyName('CP2FRASCO').AsString    :=Qr_CP02CP2FRASCO.AsString;
   DM1.Query2.ParambyName('CP2COR').AsString       :=Qr_CP02CP2COR.AsString;
   DM1.Query2.ParambyName('CP2CICLO').AsFloat      :=Qr_CP02CP2CICLO.Value;
   DM1.Query2.ParambyName('CP2CAVIDADE').AsFloat   :=Qr_CP02CP2CAVIDADE.Value;
   DM1.Query2.ParambyName('CP2PRODUCAO').AsFloat   :=Qr_CP02CP2PRODUCAO.Value;
   DM1.Query2.ParambyName('CP2PERDA').AsFloat      :=Qr_CP02CP2PERDA.Value;
   DM1.Query2.ParambyName('CP2HORTRAB').AsFloat    :=Qr_CP02CP2HORTRAB.Value;
   DM1.Query2.ParambyName('CP2DTHRIPAR').AsDateTime:=Qr_CP02CP2DTHRIPAR.Value;
   DM1.Query2.ParambyName('CP2DTHRTPAR').AsDateTime:=Qr_CP02CP2DTHRTPAR.Value;
   DM1.Query2.ParambyName('CP2PROTRO').AsFloat     :=PROTRO.ItemIndex;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
//      DM1.Query2.Sql.SaveToFile('c:\sql2.txt');
      MessageDlg('Erro 428 ao incluir detalhes!',mtError,[mbOk],0);
      end;
   Qr_CP02.Next;
   end;

Qr_CP02_MPER.Filter:='';
Qr_CP02_MPAR.Filter:='';
Qr_CP02_PREN.Filter:='';
Qr_CP02_MPER.Filtered:=false;
Qr_CP02_MPAR.Filtered:=false;
Qr_CP02_PREN.Filtered:=false;


DM1.Query2.Params.CreateParam(ftstring,'CP2MPERCODEMP' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERLOTSEQ' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERSEQ'    ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERCODMPER',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERNOMPER' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERCHAVE'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERCODMAQ' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPERPROTRO' ,ptinput);


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCP02_MPER ('
          +'CP2MPERCODEMP'
          +',CP2MPERLOTSEQ'
          +',CP2MPERSEQ'
          +',CP2MPERCODMPER'
          +',CP2MPERNOMPER'
          +',CP2MPERCHAVE'
          +',CP2MPERCODMAQ'
          +',CP2MPERPROTRO'
          +') Values  ('
          +':CP2MPERCODEMP'
          +',:CP2MPERLOTSEQ'
          +',:CP2MPERSEQ'
          +',:CP2MPERCODMPER'
          +',:CP2MPERNOMPER'
          +',:CP2MPERCHAVE'
          +',:CP2MPERCODMAQ'
          +',:CP2MPERPROTRO'
          +')'
          );

Qr_CP02_MPER.First;
mitem:=0;
While not Qr_CP02_MPER.Eof do
   begin
   mitem:=mitem+1;
   DM1.Query2.ParambyName('CP2MPERCODEMP').AsFloat  :=codemp;
   DM1.Query2.ParambyName('CP2MPERLOTSEQ').AsFloat  :=0;
   DM1.Query2.ParambyName('CP2MPERSEQ').AsFloat     :=mitem;
   DM1.Query2.ParambyName('CP2MPERCODMPER').AsFloat :=Qr_CP02_MPERCP2MPERCODMPER.Value;
   DM1.Query2.ParambyName('CP2MPERNOMPER').AsString :=Qr_CP02_MPERmotivo.Value;
   DM1.Query2.ParambyName('CP2MPERCHAVE').AsFloat   :=mcodigo;
   DM1.Query2.ParambyName('CP2MPERCODMAQ').AsFloat  :=Qr_CP02_MPERCP2MPERCODMAQ.Value;
   DM1.Query2.ParambyName('CP2MPERPROTRO').AsFloat  :=PROTRO.ItemIndex;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
//      DM1.Query2.Sql.SaveToFile('c:\sql2.txt');
      MessageDlg('Erro 428 ao incluir detalhes!',mtError,[mbOk],0);
      end;
   Qr_CP02_MPER.Next;
   end;


DM1.Query2.Params.CreateParam(ftstring,'CP2MPARCODEMP'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARLOTSEQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARSEQ'     ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARCODMPAR' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARNOMPAR'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARDTHRTPAR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARCHAVE'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARDTHRIPAR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARCODMAQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2MPARPROTRO'  ,ptinput);


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCP02_MPAR ('
          +'CP2MPARCODEMP'
          +',CP2MPARLOTSEQ'
          +',CP2MPARSEQ'
          +',CP2MPARCODMPAR'
          +',CP2MPARNOMPAR'
          +',CP2MPARDTHRTPAR'
          +',CP2MPARCHAVE'
          +',CP2MPARDTHRIPAR'
          +',CP2MPARCODMAQ'
          +',CP2MPARPROTRO'
          +') Values  ('
          +':CP2MPARCODEMP'
          +',:CP2MPARLOTSEQ'
          +',:CP2MPARSEQ'
          +',:CP2MPARCODMPAR'
          +',:CP2MPARNOMPAR'
          +',:CP2MPARDTHRTPAR'
          +',:CP2MPARCHAVE'
          +',:CP2MPARDTHRIPAR'
          +',:CP2MPARCODMAQ'
          +',:CP2MPARPROTRO'
          +')'
          );
Qr_CP02_MPAR.First;
mitem:=0;
While not Qr_CP02_MPAR.Eof do
   begin
   mitem:=mitem+1;
   DM1.Query2.ParambyName('CP2MPARCODEMP').AsFloat      :=codemp;
   DM1.Query2.ParambyName('CP2MPARLOTSEQ').AsFloat      :=0;
   DM1.Query2.ParambyName('CP2MPARSEQ').AsFloat         :=mitem;
   DM1.Query2.ParambyName('CP2MPARCODMPAR').AsFloat     :=Qr_CP02_MPARCP2MPARCODMPAR.Value;
   DM1.Query2.ParambyName('CP2MPARNOMPAR').AsString     :=Qr_CP02_MPARmotivo.Value;
   DM1.Query2.ParambyName('CP2MPARDTHRTPAR').AsDateTime :=Qr_CP02_MPARCP2MPARDTHRTPAR.Value;
   DM1.Query2.ParambyName('CP2MPARCHAVE').AsFloat       :=mcodigo;
   DM1.Query2.ParambyName('CP2MPARDTHRIPAR').AsDateTime :=Qr_CP02_MPARCP2MPARDTHRIPAR.Value;
   DM1.Query2.ParambyName('CP2MPARCODMAQ').AsFloat      :=Qr_CP02_MPARCP2MPARCODMAQ.Value;
   DM1.Query2.ParambyName('CP2MPARPROTRO').AsFloat      :=PROTRO.ItemIndex;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
//      DM1.Query2.Sql.SaveToFile('c:\sql2.txt');
      MessageDlg('Erro 679 ao incluir detalhes!',mtError,[mbOk],0);
      end;
   Qr_CP02_MPAR.Next;
   end;
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENCODEMP'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENLOTSEQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENCHAVE'   ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENSEQ'     ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENCODMPREN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENNOMPREN' ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENCODMAQ'  ,ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CP2PRENPROTRO'  ,ptinput);

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCP02_PREN ('
          +'CP2PRENCODEMP'
          +',CP2PRENLOTSEQ'
          +',CP2PRENCHAVE'
          +',CP2PRENSEQ'
          +',CP2PRENCODMPREN'
          +',CP2PRENNOMPREN'
          +',CP2PRENCODMAQ'
          +',CP2PRENPROTRO'
          +') Values  ('
          +':CP2PRENCODEMP'
          +',:CP2PRENLOTSEQ'
          +',:CP2PRENCHAVE'
          +',:CP2PRENSEQ'
          +',:CP2PRENCODMPREN'
          +',:CP2PRENNOMPREN'
          +',:CP2PRENCODMAQ'
          +',:CP2PRENPROTRO'
          +')'
          );

Qr_CP02_PREN.First;
mitem:=0;
While not Qr_CP02_PREN.Eof do
   begin
   mitem:=mitem+1;
   DM1.Query2.ParambyName('CP2PRENCODEMP').AsFloat   :=codemp;
   DM1.Query2.ParambyName('CP2PRENLOTSEQ').AsFloat   :=0;
   DM1.Query2.ParambyName('CP2PRENCHAVE').AsFloat    :=mcodigo;
   DM1.Query2.ParambyName('CP2PRENSEQ').AsFloat      :=mitem;
   DM1.Query2.ParambyName('CP2PRENCODMPREN').AsFloat :=Qr_CP02_PRENCP2PRENCODMPREN.Value;
   DM1.Query2.ParambyName('CP2PRENNOMPREN').AsString :=Qr_CP02_PRENnompren.Value;
   DM1.Query2.ParambyName('CP2PRENCODMAQ').AsFloat   :=Qr_CP02_PRENCP2PRENCODMAQ.Value;
   DM1.Query2.ParambyName('CP2PRENPROTRO').AsFloat   :=PROTRO.ItemIndex;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
//      DM1.Query2.Sql.SaveToFile('c:\sql2.txt');
      MessageDlg('Erro 732 ao incluir detalhes!',mtError,[mbOk],0);
      end;
   Qr_CP02_PREN.Next;
   end;

Frm_Agde.Free;
CANCELAR.Click;
Qr_CP01.Locate('CP1CHAVE',mcodigo,[]);

end;

procedure TFrm_ConProd.CANCELARClick(Sender: TObject);
begin
Qr_CP01.Cancel;
INCLUIR.Enabled     :=True;
ALTERAR.Enabled     :=True;
EXCLUIR.Enabled     :=True;
GRAVAR.Enabled      :=False;
IMPRIMIR.Enabled    :=True;
GroupBox4.Enabled   :=False;
ts_div.Enabled      :=false;
DBG_Perdas.ReadOnly :=true;
dbn_perdas.Enabled  :=false;
DBG_Par.ReadOnly    :=true;
dbn_par.Enabled     :=false;
DBG_Pren.ReadOnly   :=true;
dbn_pren.Enabled    :=false;

bbIncCP02.Enabled     :=False;
bbAltCP02.Enabled     :=False;
bbExcCP02.Enabled     :=False;
bbGravCP02.Enabled    :=False;
bbCancCP02.Enabled    :=False;


DBNavigator1.Enabled:=True;
DBGrid1.Enabled     :=True;
bbAtualizar.Enabled :=True;
bbAtualizar.Click;

end;

procedure TFrm_ConProd.EXCLUIRClick(Sender: TObject);
begin
if Qr_CP01CP1CHAVE.IsNull then
   begin
   MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[],0);
   exit;
   end;
if fmensagem('Confirma a Exclusão!',0,['1','2'],2)<>mrYes then
   exit;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=40;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para autorizar a exclusão';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;


Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCP01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                  +' CP1LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP1CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                  +' and CP1PROTRO='+INTTOSTR(PROTRO.ItemIndex));                  
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 253 ao excluir CADCP01',mtWarning,[mbOk],0);
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCP02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+Qr_CP01CP1CODEMP.AsString+' and ')
                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                  +' and CP2PROTRO='+INTTOSTR(PROTRO.ItemIndex));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 266 ao excluir CADCP02',mtWarning,[mbOk],0);
   end;
Frm_Agde.Free;
CANCELAR.Click;

end;

procedure TFrm_ConProd.bbAtualizarClick(Sender: TObject);
begin
Qr_CP01.close;
Qr_CP01.SQL.Clear;
Qr_CP01.SQL.Add('Select * from CADCP01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Qr_CP01.SQL.Add(mcinst+' CP1CODEMP=0'+IntTostr((codemp)));
   mcinst:=' and ';
   end;
if not (Trim(CAMPO.Text)='') and not (Trim(CAMPO.Text)='/  /') then
   begin
   if CB_Pesq.ItemIndex=0 then
      begin
      CAMPO.Text:=fdeixanum2(CAMPO.Text);
      Qr_CP01.SQL.add(mcinst+' CP1LOTSEQ=0 and CP1CHAVE=0'+Trim(CAMPO.Text));
      mcinst:=' and ';
      end
   else if CB_Pesq.ItemIndex=1 then
      begin
      Qr_CP01.SQL.Add(' and CP1DATA='+chr(39)+FormatDateTime(fdt, StrToDate(CAMPO.Text))+chr(39));
      end;
   end;
      Qr_CP01.SQL.add(mcinst+' CP1PROTRO = '+INTTOSTR(PROTRO.ITEMINDEX));
Qr_CP01.Open;
INCLUIR.Enabled       :=True;
ALTERAR.Enabled       :=True;
EXCLUIR.Enabled       :=True;
GRAVAR.Enabled        :=False;
CANCELAR.Enabled      :=True;
IMPRIMIR.Enabled      :=True;

{
bbIncCP02.Enabled     :=True;
bbAltCP02.Enabled     :=True;
bbExcCP02.Enabled     :=True;
bbGravCP02.Enabled    :=False;
bbCancCP02.Enabled    :=True;
}

end;

procedure TFrm_ConProd.Src_CP01DataChange(Sender: TObject; Field: TField);
begin
if mAtualizar2 then
   begin
   Qr_CP02.Close;
   Qr_CP02.SQL.Clear;
   Qr_CP02.SQL.add('Select * from CADCP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE  =0'+Qr_CP01CP1CHAVE.AsString
                  +' and CP2PROTRO ='+INTTOSTR(PROTRO.ITEMINDEX)
                  +' order by CP2ITEM ');
   Qr_CP02.Open;

   Qr_CP02_MPER.Close;
   Qr_CP02_MPER.SQL.Clear;
   Qr_CP02_MPER.SQL.add('Select * from CADCP02_MPER where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2MPERLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPERCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2MPERPROTRO='+INTTOSTR(PROTRO.ItemIndex)
                  +' order by CP2MPERCODMAQ,CP2MPERSEQ ');
   Qr_CP02_MPER.Open;

   Qr_CP02_MPAR.Close;
   Qr_CP02_MPAR.SQL.Clear;
   Qr_CP02_MPAR.SQL.add('Select * from CADCP02_MPAR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2MPARLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPARCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2MPARPROTRO='+INTTOSTR(PROTRO.ItemIndex)
                  +' order by CP2MPARCODMAQ,CP2MPARSEQ ');
   Qr_CP02_MPAR.Open;

   Qr_CP02_PREN.Close;
   Qr_CP02_PREN.SQL.Clear;
   Qr_CP02_PREN.SQL.add('Select * from CADCP02_PREN where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2PRENLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2PRENCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2PRENPROTRO='+INTTOSTR(PROTRO.ItemIndex)
                  +' order by CP2PRENCODMAQ,CP2PRENSEQ ');
   Qr_CP02_PREN.Open;
   end;

end;

procedure TFrm_ConProd.Qr_CP01AfterCancel(DataSet: TDataSet);
begin
mAtualizar2:=true;
end;

procedure TFrm_ConProd.Qr_CP01AfterPost(DataSet: TDataSet);
begin
mAtualizar2:=true;
end;

procedure TFrm_ConProd.Qr_CP01AfterDelete(DataSet: TDataSet);
begin
mAtualizar2:=true;
end;

procedure TFrm_ConProd.FormCreate(Sender: TObject);
begin
mAtualizar2:=true;
mAtualizar3:=true;
Qr_CP01CP1DATA.DisplayFormat        :=fdt2;
Qr_CP01CP1DATA.EditMask             :=pEditMascData;
Qr_CP02CP2PERDA.DisplayFormat       :='#,##0';
Qr_CP02CP2HORTRAB.DisplayFormat     :='#,##0.000';
Qr_CP02perda.DisplayFormat          :='#,##0';
Qr_CP02percPerda.DisplayFormat      :='#,##0.00';
Qr_CP02totperdas.DisplayFormat      :='#,##0';


DM4.Tb_CP01CP1DATA.DisplayFormat    :=fdt2;
DM4.Tb_CP01CP1DATA.EditMask         :=pEditMascData;
DM4.Tb_CP02CP2PERDA.DisplayFormat   :='#,##0';
DM4.Tb_CP02CP2HORTRAB.DisplayFormat :='#,##0.000';
DM4.Tb_CP02perda.DisplayFormat      :='#,##0';
DM4.Tb_CP02percPerda.DisplayFormat  :='#,##0.00';
DM4.Tb_CP02totperdas.DisplayFormat  :='#,##0';
DBG_Par.ReadOnly:=false;

CB_Pesq.ItemIndex                   :=0;
PROTRO.ItemIndex                    :=0;
INCLUIR.Visible                     := true;
bbAtualizarClick(SELF);
end;

procedure TFrm_ConProd.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;

   Frm_Fun.Edit1.Text:=key;
   Frm_Fun.Edit1.SelStart:=1;
   Frm_Fun.Edit1.SelLength:=1;
   Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
   Frm_Fun.fun_ori:='Frm_conprod';
   if Frm_Fun.ShowModal=mrok then
      begin
      Qr_CP01CP1CODENC.Value:=DM2.Tb_FunCFCODFUN.Value;
      DBEdit3Exit(self);
      end;
   Frm_Fun.Free;
   Frm_Fun:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ConProd.DBEdit3Exit(Sender: TObject);
begin
if Qr_CP01.State in [dsEdit,dsInsert] then
   begin
   if (Qr_CP01CP1CODENC.Value<>0) and  not (Qr_CP01CP1CODENC.IsNull) then
      begin
      if not flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP01CP1CODENC.AsString) then
         begin
         MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
         DBEdit3.SetFocus;
         exit;
         end;
      end;
   end

end;

procedure TFrm_ConProd.Qr_CP01CalcFields(DataSet: TDataSet);
begin
if (Qr_CP01CP1CODENC.Value=0) or (Qr_CP01CP1CODENC.IsNull) then
   Qr_CP01nomenc.Value:='não cadastrado'
else
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP01CP1CODENC.AsString) then
      Qr_CP01nomenc.Value:=DM1.Query1.Fields[0].AsString
   else
      Qr_CP01nomenc.Value:='não cadastrado';
   end;
end;

procedure TFrm_ConProd.Qr_CP02CalcFields(DataSet: TDataSet);
begin
if (Qr_CP02CP2CODMAQ.Value=0) or (Qr_CP02CP2CODMAQ.IsNull) then
   Qr_CP02nommaq.Value:='não cadastrado'
else
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
      Qr_CP02nommaq.Value:=DM1.Query1.Fields[0].AsString
   else
      Qr_CP02nommaq.Value:='não cadastrado';
   end;


// formula = 3600 / (ciclo*cavidade*horas trab)
if (Qr_CP02CP2CICLO.AsFloat+Qr_CP02CP2CAVIDADE.AsFloat+Qr_CP02CP2HORTRAB.Asfloat)<>0 then
   begin
   try
      Qr_CP02perda.Value:=(3600/Qr_CP02CP2CICLO.Asfloat)*Qr_CP02CP2CAVIDADE.Asfloat*Qr_CP02CP2HORTRAB.Asfloat;
   except
      Qr_CP02perda.Value:=0;
      end;
   end;
if (Qr_CP02perda.AsFloat+Qr_CP02CP2PRODUCAO.AsFloat)>0 then
    Qr_CP02totperdas.Value:=Qr_CP02perda.AsFloat-Qr_CP02CP2PRODUCAO.AsFloat;
Qr_CP02percPerda.Value:=0;
if (Qr_CP02perda.AsFloat<>0) and (Qr_CP02CP2PRODUCAO.AsFloat<>0) then
   begin
   try
      Qr_CP02percPerda.Value:=((Qr_CP02CP2PRODUCAO.Value*100)/Qr_CP02perda.Value)-100;
   except
      Qr_CP02percPerda.Value:=0;
      end;
   end;
end;

procedure TFrm_ConProd.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if Qr_CP02.State in [dsedit,dsinsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_Imo, Frm_Imo);
      Frm_Imo.Edit1.Text:=key;
      Frm_Imo.Edit1.SelStart:=1;
      Frm_Imo.Edit1.SelLength:=1;
      Frm_Imo.PC1.ActivePageIndex:=1;
      imo_ori:='Frm_conprod';
      if Frm_Imo.ShowModal=mrok then
         begin
         Qr_CP02CP2CODMAQ.Value:=DM2.Tb_Imo01IM1CODIMO.Value;
         end;
      Frm_Imo.Free;
      key:=#0;
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ConProd.DBEdit5Exit(Sender: TObject);
begin
if Qr_CP02.State in [dsEdit,dsInsert] then
   begin
   if (Qr_CP02CP2CODMAQ.Value<>0) and not  (Qr_CP02CP2CODMAQ.IsNull) then
      begin
      if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
         Qr_CP02nommaq.Value:=DM1.Query1.Fields[0].AsString
      else
         Qr_CP02nommaq.Value:='não cadastrado';
      end;
   end;

end;

procedure TFrm_ConProd.DBCtrlGrid1Exit(Sender: TObject);
begin
if Qr_CP02.State in [dsInsert,dsEdit] then
   begin
   if (Qr_CP02CP2CODMAQ.IsNull) or (Qr_CP02CP2CODMAQ.Value=0) then
      Qr_CP02.Cancel
   else
      Qr_CP02.Post;
   end;
end;

procedure TFrm_ConProd.Qr_CP02AfterPost(DataSet: TDataSet);
begin
mqtdreg:=0;
mcodigo:=Qr_CP02CP2CODMAQ.Value;

if mcodigo<>mcodmaqant then
   begin
   Qr_CP02.First;
   While not Qr_CP02.Eof do
      begin
      if mcodigo=Qr_CP02CP2CODMAQ.Value then
         begin
         mqtdreg:=mqtdreg+1;
         end;
      Qr_CP02.Next;
      end;
   Qr_CP02.First;
   Qr_CP02.Locate('CP2CODMAQ',mcodigo,[]);
   if mqtdreg>1 then
      begin
      MessageDlg('Não Pode Haver mais de uma maquina por lote!',mtWarning,[mbOk],0);
      if mcodmaqant>0 then
         begin
         Qr_CP02.Edit;
         Qr_CP02CP2CODMAQ.Value:=mcodant;
         Qr_CP02.Post;
         end
      else
         begin
         Qr_CP02.Delete;
         end;
      exit;
      end;
  end;

bbIncCP02.Enabled :=true;
bbAltCP02.Enabled :=true;
bbExcCP02.Enabled :=true;
bbGravCP02.Enabled:=false;
if (mcodmaqant>0) and (mcodmaqant<>Qr_CP02CP2CODMAQ.Value) then
   begin
   Qr_CP02_MPER.First;
   While not Qr_CP02_MPER.Eof do
      begin
      Qr_CP02_MPER.Edit;
      Qr_CP02_MPERCP2MPERCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;
      Qr_CP02_MPER.Post;
      Qr_CP02_MPER.Next;
      end;

   Qr_CP02_MPAR.First;
   While not Qr_CP02_MPAR.Eof do
      begin
      Qr_CP02_MPAR.Edit;
      Qr_CP02_MPARCP2MPARCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;
      Qr_CP02_MPAR.Post;
      Qr_CP02_MPAR.Next;
      end;

   Qr_CP02_PREN.First;
   While not Qr_CP02_PREN.Eof do
      begin
      Qr_CP02_PREN.Edit;
      Qr_CP02_PRENCP2PRENCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;
      Qr_CP02_PREN.Post;
      Qr_CP02_PREN.Next;
      end;
   end;
mAtualizar3:=true;

end;

procedure TFrm_ConProd.CB_PesqExit(Sender: TObject);
begin
if CB_Pesq.ItemIndex=1 then
   CAMPO.EditMask:='!99/99/9999;1; '
else
   CAMPO.EditMask:='';   
end;

procedure TFrm_ConProd.db_cbTurnoExit(Sender: TObject);
begin
if Trim(db_cbTurno.Text)<>'' then
   begin
   if db_cbTurno.ItemIndex=-1 then
      begin
      mcinst2:=db_cbTurno.Text;
      with db_cbTurno do ItemIndex:=Items.IndexOf(db_cbTurno.Text);

      db_cbTurno.text:=db_cbTurno.Items.Strings[db_cbTurno.ItemIndex];
      if trim(db_cbTurno.Text)='' then
         begin
         fGravaStrings('ConProd_Turno',mcinst2);
         db_cbTurno.Items:=fLerStrings('ConProd_Turno');
         db_cbTurno.Text:=mcinst2;
         with db_cbTurno do ItemIndex:=Items.IndexOf(db_cbTurno.Text);
         end;
      end
   else
      db_cbTurno.text:=db_cbTurno.Items.Strings[db_cbTurno.ItemIndex];
   end;
end;

procedure TFrm_ConProd.db_cbTurnoEnter(Sender: TObject);
begin
db_cbTurno.Items:=fLerStrings('ConProd_Turno');

end;

procedure TFrm_ConProd.db_cbFrascoEnter(Sender: TObject);
begin
db_cbFrasco.Items:=fLerStrings('ConProd_Frasco');

end;

procedure TFrm_ConProd.db_cbFrascoExit(Sender: TObject);
begin
if Trim(db_cbFrasco.Text)<>'' then
   begin
   if db_cbFrasco.ItemIndex=-1 then
      begin
      mcinst2:=db_cbFrasco.Text;
      with db_cbFrasco do ItemIndex:=Items.IndexOf(db_cbFrasco.Text);
      db_cbFrasco.text:=db_cbFrasco.Items.Strings[db_cbFrasco.ItemIndex];
      if trim(db_cbFrasco.Text)='' then
         begin
         fGravaStrings('ConProd_Frasco',mcinst2);
         db_cbFrasco.Items:=fLerStrings('ConProd_Frasco');

         db_cbFrasco.Text:=mcinst2;
         with db_cbFrasco do ItemIndex:=Items.IndexOf(db_cbFrasco.Text);
         end;
      end
   else
      db_cbFrasco.text:=db_cbFrasco.Items.Strings[db_cbFrasco.ItemIndex];
   end;
end;

procedure TFrm_ConProd.Qr_CP02AfterInsert(DataSet: TDataSet);
begin

DBEdit5.SetFocus;
bbIncCP02.Enabled :=false;
bbAltCP02.Enabled :=false;
bbExcCP02.Enabled :=false;
bbGravCP02.Enabled:=true;
end;

procedure TFrm_ConProd.bbIncCP02Click(Sender: TObject);
begin
bbIncCP02.Enabled   :=False;
bbAltCP02.Enabled   :=False;
bbExcCP02.Enabled   :=False;
bbGravCP02.Enabled  :=True;
dbnavCP02.Enabled   :=False;
dbGridCP02.Enabled  :=False;
PageControl1.ActivePage:=ts_div;
GroupBox4.Enabled   :=true;

Qr_CP02.Insert;

DBEdit5.SetFocus;

end;

procedure TFrm_ConProd.bbAltCP02Click(Sender: TObject);
begin
if Qr_CP02CP2CODMAQ.IsNull then
   begin
   MessageDlg('Não ha registro selecionado!',mtWarning,[mbOk],0);
   exit;
   end;
bbIncCP02.Enabled     :=False;
bbAltCP02.Enabled     :=False;
bbExcCP02.Enabled     :=False;
bbGravCP02.Enabled    :=True;
dbnavCP02.Enabled     :=False;
dbGridCP02.Enabled    :=False;
Qr_CP02.Edit;
PageControl1.ActivePage:=ts_div;
DBEdit5.SetFocus;

end;

procedure TFrm_ConProd.bbGravCP02Click(Sender: TObject);
begin
Qr_CP02.Post;
bbCancCP02.Click;
bbIncCP02.SetFocus;

end;

procedure TFrm_ConProd.bbCancCP02Click(Sender: TObject);
begin
Qr_CP02.Cancel;
bbIncCP02.Enabled     :=True;
bbAltCP02.Enabled     :=True;
bbExcCP02.Enabled     :=True;
bbGravCP02.Enabled    :=False;
dbnavCP02.Enabled     :=True;
dbGridCP02.Enabled    :=True;

end;

procedure TFrm_ConProd.bbExcCP02Click(Sender: TObject);
begin
if Qr_CP02CP2CHAVE.IsNull then
   begin
   MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[],0);
   exit;
   end;
if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
   exit;
Qr_CP02.Delete;
CANCELAR.Click;


end;

procedure TFrm_ConProd.Qr_CP02AfterEdit(DataSet: TDataSet);
begin
if Qr_CP01.State in [dsEdit,dsInsert] then
   begin
   bbIncCP02.Enabled :=false;
   bbAltCP02.Enabled :=false;
   bbExcCP02.Enabled :=false;
   bbGravCP02.Enabled:=true;
   end;
end;

procedure TFrm_ConProd.Qr_CP02AfterDelete(DataSet: TDataSet);
begin

Qr_CP02_MPER.First;
While not Qr_CP02_MPER.Eof do
   begin
   Qr_CP02.Delete;
   Qr_CP02_MPER.Next;
   end;

Qr_CP02_MPAR.First;
While not Qr_CP02_MPAR.Eof do
   begin
   Qr_CP02_MPAR.Delete;
   Qr_CP02_MPAR.Next;
   end;

Qr_CP02_PREN.First;
While not Qr_CP02_PREN.Eof do
   begin
   Qr_CP02_PREN.Delete;
   Qr_CP02_PREN.Next;
   end;
if Qr_CP01.State in [dsEdit,dsInsert] then
   begin
   bbIncCP02.Enabled :=true;
   bbAltCP02.Enabled :=true;
   bbExcCP02.Enabled :=true;
   bbGravCP02.Enabled:=false;
   end;

end;

procedure TFrm_ConProd.Qr_CP02AfterCancel(DataSet: TDataSet);
begin
if Qr_CP01.State in [dsEdit,dsInsert] then
   begin
   bbIncCP02.Enabled :=true;
   bbAltCP02.Enabled :=true;
   bbExcCP02.Enabled :=true;
   bbGravCP02.Enabled:=false;
   end;
mAtualizar3:=true;
end;

procedure TFrm_ConProd.IMPRIMIRClick(Sender: TObject);
begin


{
DM4.Tb_CP01.close;
DM4.Tb_CP01.SQL.Clear;
DM4.Tb_CP01.SQL.Add('Select * from CADCP01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   DM4.Tb_CP01.SQL.Add(mcinst+' CP1CODEMP=0'+IntTostr((codemp)));
   mcinst:=' and ';
   end;
if not (Trim(CAMPO.Text)='') and not (Trim(CAMPO.Text)='/  /') then
   begin
   if CB_Pesq.ItemIndex=0 then
      begin
      CAMPO.Text:=fdeixanum2(CAMPO.Text);
      DM4.Tb_CP01.SQL.add(mcinst+' CP1LOTSEQ=0 and CP1CHAVE=0'+Trim(CAMPO.Text));
      mcinst:=' and ';
      end
   else if CB_Pesq.ItemIndex=1 then
      begin
      DM4.Tb_CP01.SQL.Add(' and CP1DATA='+chr(39)+FormatDateTime(fdt, StrToDate(CAMPO.Text))+chr(39));
      end;
   end;
DM4.Tb_CP01.Open;
DM4.Tb_CP02.Close;
DM4.Tb_CP02.SQL.Clear;
DM4.Tb_CP02.SQL.add('Select * from CADCP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                  +' order by CP2ITEM ');
DM4.Tb_CP02.Open;


DM4.Tb_CP01.close;
DM4.Tb_CP01.SQL.Clear;
DM4.Tb_CP01.SQL.Add('Select * from CADCP01 ');
DM4.Tb_CP01.Open;
}
Application.CreateForm(TQr_ConProd, Qr_ConProd);
STATUS_PT := '0';
Qr_ConProd.qr_titrel.Caption := 'RELATÓRIO DE PRODUÇÃO';
MONTA_RELATORIO;
verteclado(0);
Qr_ConProd.PreviewModal;
Qr_ConProd.Free;

Application.CreateForm(TQr_ConProd, Qr_ConProd);
STATUS_PT := '1';
Qr_ConProd.qr_titrel.Caption := 'RELATÓRIO TROCA DE MOLDE';
MONTA_RELATORIO;
IF NOT Qr_ConProd.Tb_ConProd.IsEmpty THEN
BEGIN
   verteclado(0);
   Qr_ConProd.PreviewModal;
   Qr_ConProd.Free;
END ELSE Qr_ConProd.Free;

end;

procedure TFrm_ConProd.Qr_CP02_MPERBeforeInsert(DataSet: TDataSet);
begin
mcodant:=0;
Qr_CP02_MPER.Last;
end;

procedure TFrm_ConProd.Qr_CP02_MPERBeforePost(DataSet: TDataSet);
begin
if Qr_CP02_MPERmotivo.IsNull then
   begin
   if Qr_CP02_MPERCP2MPERCODMPER.IsNull then
      Qr_CP02_MPER.Cancel
   else
      MessageDlg('Motivo não Cadastrado!',mtWarning,[mbOk],0);
   abort;
   end;


end;

procedure TFrm_ConProd.Src_CP02DataChange(Sender: TObject; Field: TField);
begin

      Qr_CP02_MPER.Filter:='CP2MPERCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString;
      Qr_CP02_MPAR.Filter:='CP2MPARCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString;
      Qr_CP02_PREN.Filter:='CP2PRENCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString;
      Qr_CP02_MPER.Filtered:=true;
      Qr_CP02_MPAR.Filtered:=true;
      Qr_CP02_PREN.Filtered:=true;

{
if mAtualizar3 then
   begin
   if not mAtualizar2 then
      begin
      Qr_CP02_MPER.Filter:='CP2MPERCODMAQ=0'+Qr_CP02_MPERCP2MPERCODMAQ.AsString;
      Qr_CP02_MPAR.Filter:='CP2MPARCODMAQ=0'+Qr_CP02_MPERCP2MPERCODMAQ.AsString;
      Qr_CP02_PREN.Filter:='CP2PRENCODMAQ=0'+Qr_CP02_MPERCP2MPERCODMAQ.AsString;
      Qr_CP02_MPER.Filtered:=true;
      Qr_CP02_MPAR.Filtered:=true;
      Qr_CP02_PREN.Filtered:=true;
      end
   else
      begin
      Qr_CP02_MPER.Filter:='';
      Qr_CP02_MPAR.Filter:='';
      Qr_CP02_PREN.Filter:='';
      Qr_CP02_MPER.Filtered:=false;
      Qr_CP02_MPAR.Filtered:=false;
      Qr_CP02_PREN.Filtered:=false;
      Qr_CP02_MPER.Close;
      Qr_CP02_MPER.SQL.Clear;
      Qr_CP02_MPER.SQL.add('Select * from CADCP02_MPER where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2MPERLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPERCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2MPERCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString
                  +' order by CP2MPERSEQ ');
      Qr_CP02_MPER.Open;

      Qr_CP02_MPAR.Close;
      Qr_CP02_MPAR.SQL.Clear;
      Qr_CP02_MPAR.SQL.add('Select * from CADCP02_MPAR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2MPARLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPARCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2MPARCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString
                  +' order by CP2MPARSEQ ');
      Qr_CP02_MPAR.Open;

      Qr_CP02_PREN.Close;
      Qr_CP02_PREN.SQL.Clear;
      Qr_CP02_PREN.SQL.add('Select * from CADCP02_PREN where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2PRENLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2PRENCHAVE=0'+Qr_CP02CP2CHAVE.AsString
                  +' and CP2PRENCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString
                  +' order by CP2PRENSEQ ');
      Qr_CP02_PREN.Open;
      end;
   end;
}
end;

procedure TFrm_ConProd.Qr_CP02_MPERCalcFields(DataSet: TDataSet);
begin
if (Qr_CP02_MPERCP2MPERCODMPER.Value<>0) and not  (Qr_CP02_MPERCP2MPERCODMPER.IsNull) then
   begin
   if flqr1('CMPMOTIVO','CMP','CADMPER','N','CMPCODIGO',Qr_CP02_MPERCP2MPERCODMPER.AsString) then
      Qr_CP02_MPERmotivo.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_ConProd.DBG_PerdasKeyPress(Sender: TObject; var Key: Char);
begin
if (DBG_Perdas.SelectedField=Qr_CP02_MPERCP2MPERCODMPER) and
   (Qr_CP02_MPER.State in [dsInsert,dsEdit])  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_mPer, Frm_mPer);
      Frm_mPer.Edit1.Text:=key;
      Frm_mPer.Edit1.SelStart:=1;
      Frm_mPer.Edit1.SelLength:=1;
      Frm_mPer.PC1.ActivePageIndex:=1;
      mper_ori:='Frm_conprod';
      if Frm_mPer.ShowModal=mrok then
         begin
         Qr_CP02_MPERCP2MPERCODMPER.Value:=DM4.Tb_MPerCMPCODIGO.Value;
         end;
      Frm_mPer.Free;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;
end;

procedure TFrm_ConProd.DBG_PerdasExit(Sender: TObject);
begin
if Qr_CP02_MPER.State in [dsEdit,dsInsert] then
   begin
   if Qr_CP02_MPERmotivo.IsNull then
      Qr_CP02_MPER.Cancel
   else
      Qr_CP02_MPER.Post;
   end;
end;

procedure TFrm_ConProd.Qr_CP02_MPARBeforeInsert(DataSet: TDataSet);
begin
mcodant:=0;
Qr_CP02_MPAR.Last;

end;

procedure TFrm_ConProd.Qr_CP02_MPARBeforePost(DataSet: TDataSet);
begin
if Qr_CP02_MPARmotivo.IsNull then
   begin
   if Qr_CP02_MPARCP2MPARCODMPAR.IsNull then
      Qr_CP02_MPAR.Cancel
   else
      MessageDlg('Motivo não Cadastrado!',mtWarning,[mbOk],0);
   abort;
   end;

end;

procedure TFrm_ConProd.Qr_CP02_MPARCalcFields(DataSet: TDataSet);
begin
if (Qr_CP02_MPARCP2MPARCODMPAR.Value<>0) and not  (Qr_CP02_MPARCP2MPARCODMPAR.IsNull) then
   begin
   if flqr1('MPARMOTIVO','MPAR','CADMPAR','N','MPARCODIGO',Qr_CP02_MPARCP2MPARCODMPAR.AsString) then
      Qr_CP02_MPARmotivo.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_ConProd.DBG_ParExit(Sender: TObject);
begin
if Qr_CP02_MPAR.State in [dsEdit,dsInsert] then
   begin
   if Qr_CP02_MPARmotivo.IsNull then
      Qr_CP02_MPAR.Cancel
   else
      Qr_CP02_MPAR.Post;
   end;

end;

procedure TFrm_ConProd.DBG_ParKeyPress(Sender: TObject; var Key: Char);
begin
if (DBG_Par.SelectedField=Qr_CP02_MPARCP2MPARCODMPAR) and
   (Qr_CP02_MPAR.State in [dsInsert,dsEdit])  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_mPar, Frm_mPar);
      Frm_mPar.Edit1.Text:=key;
      Frm_mPar.Edit1.SelStart:=1;
      Frm_mPar.Edit1.SelLength:=1;
      Frm_mPar.PC1.ActivePageIndex:=1;
      mper_ori:='Frm_conprod';
      if Frm_mPar.ShowModal=mrok then
         begin
         Qr_CP02_mParCP2MPARCODMPAR.Value:=DM4.Tb_MParMPARCODIGO.Value;
         end;
      Frm_mPar.Free;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd.Qr_CP02_PRENBeforeInsert(DataSet: TDataSet);
begin
mcodant:=0;
Qr_CP02_PREN.Last;

end;

procedure TFrm_ConProd.Qr_CP02_PRENBeforePost(DataSet: TDataSet);
begin
if (Qr_CP02_PRENnompren.IsNull) then
   begin
   if Qr_CP02_PRENCP2PRENCODMPREN.IsNull then
      Qr_CP02_PREN.Cancel
   else
      MessageDlg('Funcionario não cadastrado!',mtWarning,[mbOk],0);
   abort;
   end;
end;

procedure TFrm_ConProd.Qr_CP02_PRENCalcFields(DataSet: TDataSet);
begin

if (Qr_CP02_PRENCP2PRENCODMPREN.Value<>0) and not  (Qr_CP02_PRENCP2PRENCODMPREN.IsNull) then
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP02_PRENCP2PRENCODMPREN.AsString) then
      Qr_CP02_PRENnompren.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_ConProd.DBG_PrenExit(Sender: TObject);
begin
if Qr_CP02_PREN.State in [dsEdit,dsInsert] then
   begin
   if Qr_CP02_PRENnompren.IsNull then
      Qr_CP02_PREN.Cancel
   else
      Qr_CP02_PREN.Post;
   end;

end;

procedure TFrm_ConProd.DBG_PrenKeyPress(Sender: TObject; var Key: Char);
begin
if (DBG_Pren.SelectedField=Qr_CP02_PRENCP2PRENCODMPREN) and
   (Qr_CP02_PREN.State in [dsInsert,dsEdit])  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if frm_fun=nil then
         Application.CreateForm(Tfrm_Fun, Frm_Fun)
      else
         begin
         Frm_Fun.free;
         Frm_Fun:=nil;
         Application.CreateForm(Tfrm_Fun, Frm_Fun)
         end;
      Frm_Fun.Edit1.Text:=key;
      Frm_Fun.Edit1.SelStart:=1;
      Frm_Fun.Edit1.SelLength:=1;
      Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
      Frm_Fun.fun_ori:='Frm_conprod';
      if Frm_Fun.ShowModal=mrok then
         begin
         Qr_CP02_PRENCP2PRENCODMPREN.Value:=DM2.Tb_FunCFCODFUN.Value;
         DBG_PrenExit(self);
         end;
      Frm_Fun.Free;
      Frm_Fun:=nil;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd.Qr_CP02_PRENAfterPost(DataSet: TDataSet);
begin


mqtdreg:=0;
mcodigo:=Qr_CP02_PRENCP2PRENCODMPREN.Value;
if mcodigo<>mcodant then
   begin
   Qr_CP02_PREN.First;
   While not Qr_CP02_PREN.Eof do
      begin
      if mcodigo=Qr_CP02_PRENCP2PRENCODMPREN.Value then
         begin
         mqtdreg:=mqtdreg+1;
         end;
     Qr_CP02_PREN.Next;
     end;
  Qr_CP02_PREN.First;
  Qr_CP02_PREN.Locate('CP2PRENCODMPREN',mcodigo,[]);
  if mqtdreg>1 then
     begin
     MessageDlg('Não Pode Haver Registros Duplicados!',mtWarning,[mbOk],0);
     if mcodant>0 then
        begin
        Qr_CP02_PREN.Edit;
        Qr_CP02_PRENCP2PRENCODMPREN.Value:=mcodant;
        Qr_CP02_PREN.Post;
        end
     else
        begin
        Qr_CP02_PREN.Delete;
        end;
     end;
  end;


end;

procedure TFrm_ConProd.Qr_CP02_PRENBeforeEdit(DataSet: TDataSet);
begin
mcodant:=Qr_CP02_PRENCP2PRENCODMPREN.Value;
end;

procedure TFrm_ConProd.Qr_CP02_MPERAfterPost(DataSet: TDataSet);
begin
mqtdreg:=0;
mcodigo:=Qr_CP02_MPERCP2MPERCODMPER.Value;
if mcodigo<>mcodant then
   begin
   Qr_CP02_MPER.First;
   While not Qr_CP02_MPER.Eof do
      begin
      if mcodigo=Qr_CP02_MPERCP2MPERCODMPER.Value then
         begin
         mqtdreg:=mqtdreg+1;
         end;
     Qr_CP02_MPER.Next;
     end;
  Qr_CP02_MPER.First;
  Qr_CP02_MPER.Locate('CP2MPERCODMPER',mcodigo,[]);
  if mqtdreg>1 then
     begin
     MessageDlg('Não Pode Haver Registros Duplicados!',mtWarning,[mbOk],0);
     if mcodant>0 then
        begin
        Qr_CP02_MPER.Edit;
        Qr_CP02_MPERCP2MPERCODMPER.Value:=mcodant;
        Qr_CP02_MPER.Post;
        end
     else
        begin
        Qr_CP02_MPER.Delete;
        end;
     end;
  end;


end;

procedure TFrm_ConProd.Qr_CP02_MPARAfterPost(DataSet: TDataSet);
begin
mqtdreg:=0;
mcodigo:=Qr_CP02_MPARCP2MPARCODMPAR.Value;
if mcodigo<>mcodant then
   begin
   Qr_CP02_MPAR.First;
   While not Qr_CP02_MPAR.Eof do
      begin
      if mcodigo=Qr_CP02_MPARCP2MPARCODMPAR.Value then
         begin
         mqtdreg:=mqtdreg+1;
         end;
     Qr_CP02_MPAR.Next;
     end;
  Qr_CP02_MPAR.First;
  Qr_CP02_MPAR.Locate('CP2MPARCODMPAR',mcodigo,[]);
  if mqtdreg>1 then
     begin
     MessageDlg('Não Pode Haver Registros Duplicados!',mtWarning,[mbOk],0);
     if mcodant>0 then
        begin
        Qr_CP02_MPAR.Edit;
        Qr_CP02_MPARCP2MPARCODMPAR.Value:=mcodant;
        Qr_CP02_MPAR.Post;
        end
     else
        begin
        Qr_CP02_MPAR.Delete;
        end;
     end;
  end;


end;

procedure TFrm_ConProd.Qr_CP02_MPERBeforeEdit(DataSet: TDataSet);
begin
mcodant:=Qr_CP02_MPERCP2MPERCODMPER.Value;

end;

procedure TFrm_ConProd.Qr_CP02_MPARBeforeEdit(DataSet: TDataSet);
begin
mcodant:=Qr_CP02_MPARCP2MPARCODMPAR.Value;

end;

procedure TFrm_ConProd.Qr_CP02BeforeEdit(DataSet: TDataSet);
begin
mcodmaqant:=Qr_CP02CP2CODMAQ.Value;
mAtualizar3:=false;

end;

procedure TFrm_ConProd.Qr_CP02BeforeInsert(DataSet: TDataSet);
begin

mcodmaqant:=0;
mAtualizar3:=false;
Qr_CP02.Last;

end;

procedure TFrm_ConProd.Qr_CP02_MPERAfterInsert(DataSet: TDataSet);
begin
if (Qr_CP02CP2CODMAQ.IsNull) then
   begin
   MessageDlg('Favor Digitar Primeiro o Código da Maquina!',mtWarning,[mbOk],0);
   abort;
   end
else
   Qr_CP02_MPERCP2MPERCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;


end;

procedure TFrm_ConProd.Qr_CP02_MPARAfterInsert(DataSet: TDataSet);
begin
if (Qr_CP02CP2CODMAQ.IsNull) then
   begin
   MessageDlg('Favor Digitar Primeiro o Código da Maquina!',mtWarning,[mbOk],0);
   abort;
   end
else
   Qr_CP02_MPARCP2MPARCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;

end;

procedure TFrm_ConProd.Qr_CP02_PRENAfterInsert(DataSet: TDataSet);
begin
if (Qr_CP02CP2CODMAQ.IsNull) then
   begin
   MessageDlg('Favor Digitar Primeiro o Código da Maquina!',mtWarning,[mbOk],0);
   abort;
   end
else
   Qr_CP02_PRENCP2PRENCODMAQ.Value:=Qr_CP02CP2CODMAQ.Value;

end;

procedure TFrm_ConProd.PageControl1Change(Sender: TObject);
begin
if ts_div.Enabled then
   begin
   if PageControl1.ActivePage=ts_div then
      DBEdit5.SetFocus
   else if PageControl1.ActivePage=ts_pren then
      DBG_Pren.SetFocus
   else if PageControl1.ActivePage=ts_perdas then
      DBG_Perdas.SetFocus
   else if PageControl1.ActivePage=ts_paradas then
      DBG_Par.SetFocus;
   end;
end;
procedure TFrm_ConProd.Qr_CP01BeforeInsert(DataSet: TDataSet);
begin
mAtualizar2:=false;
Qr_CP01.Last;

end;

procedure TFrm_ConProd.Qr_CP01BeforeEdit(DataSet: TDataSet);
begin
mAtualizar2:=false;

end;

procedure TFrm_ConProd.bbPrensistaClick(Sender: TObject);
begin
PageControl1.ActivePage:=ts_pren;
end;


procedure TFrm_ConProd.MONTA_RELATORIO;
begin

Qr_ConProd.Tb_ConProdCP1DATA.DisplayFormat   :=fdt2;
Qr_ConProd.Tb_ConProdCP1DATA.EditMask        :=pEditMascData;
Qr_ConProd.Tb_ConProdCP2PERDA.DisplayFormat  :='#,##0';
Qr_ConProd.Tb_ConProdCP2HORTRAB.DisplayFormat:='#,##0.000';
Qr_ConProd.Tb_ConProdperda.DisplayFormat     :='#,##0';
Qr_ConProd.Tb_ConProdpercPerda.DisplayFormat :='#,##0.00';
Qr_ConProd.Tb_ConProdtotperdas.DisplayFormat :='#,##0';

Qr_ConProd.lbl_fantasia_emp.Caption:=DM1.Tb_EmpFANTASIA.Value;
Qr_ConProd.lbl_razao_emp.Caption:=DM1.Tb_EmpRAZAO.Value;
Qr_ConProd.Tb_ConProd.Close;
Qr_ConProd.Tb_ConProd.Sql.Clear;
Qr_ConProd.Tb_ConProd.Sql.Add('Select CP1CODEMP, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1LOTSEQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CHAVE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1TURNO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1REBARBAS, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CODENC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2ITEM, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMAQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2FRASCO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2COR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CICLO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CAVIDADE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PRODUCAO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PERDA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2HORTRAB, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRIPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRTPAR from CADCP01,CADCP02 where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+IntToStr(codemp)+' and '));
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                             +'       and CP1CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                             +'       and CP1PROTRO='+''''+STATUS_PT+'''');

Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2CODEMP=CP1CODEMP ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2LOTSEQ=CP1LOTSEQ ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2CHAVE =CP1CHAVE  ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2PROTRO=CP1PROTRO ');
Qr_ConProd.Tb_ConProd.Sql.Add(' order by CP2LOTSEQ,CP2CHAVE,CP2ITEM  ');
Qr_ConProd.Tb_ConProd.Open;


cp_chaveant:=Qr_ConProd.Tb_ConProdCP1CHAVE.Value;
sr_codmper:=0;
sr_codmpar:=0;

end;

procedure TFrm_ConProd.PROTROClick(Sender: TObject);
begin
    IF CAMPO.TEXT <> '' THEN
    BEGIN
     bbAtualizarClick(SELF);
     if Qr_CP01.State in [dsEdit,dsInsert] then DBEdit2.SetFocus;
    END;
end;

procedure TFrm_ConProd.DBGrid1CellClick(Column: TColumn);
begin
    CAMPO.TEXT := Qr_CP01CP1CHAVE.AsString;
end;

procedure TFrm_ConProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
