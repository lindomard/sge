unit S_ParPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,db,dbtables, ExtCtrls, Mask, DBCtrls, Grids,
  DBGrids, Buttons,func,lerarq;

type
  TFrm_ParPreco = class(TForm)
    GroupBox1: TGroupBox;
    Tb_PARAJP01: TQuery;
    Tb_PARAJP02: TQuery;
    Tb_PARAJP01PA1CODEMP: TFloatField;
    Tb_PARAJP01PA1TPRECO: TFloatField;
    Tb_PARAJP01PA1IVA: TFloatField;
    Tb_PARAJP01PA1REDUTOR: TFloatField;
    Tb_PARAJP01PA1ICMSC: TFloatField;
    Tb_PARAJP01PA1ICMSD: TFloatField;
    Tb_PARAJP01PA1OUTROSAC: TFloatField;
    Tb_PARAJP01PA1CODUSR: TFloatField;
    Tb_PARAJP02PA2CODEMP: TFloatField;
    Tb_PARAJP02PA2TPRECO: TFloatField;
    Tb_PARAJP02PA2CODTPRO: TFloatField;
    Tb_PARAJP02PA2PERACRE: TFloatField;
    U_PARAJP01: TUpdateSQL;
    U_PARAJP02: TUpdateSQL;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Src_PARAJP01: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    bbGravar: TBitBtn;
    BitBtn1: TBitBtn;
    Tb_PARAJP02nomtipo: TStringField;
    Src_Parajp02: TDataSource;
    DBEdit3: TDBEdit;
    procedure Tb_PARAJP02CalcFields(DataSet: TDataSet);
    procedure Tb_PARAJP01BeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Tb_PARAJP02AfterInsert(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Tb_PARAJP02BeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ParPreco: TFrm_ParPreco;
  pParPrecoOrigem: Integer=0;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ParPreco.Tb_PARAJP02CalcFields(DataSet: TDataSet);
begin
if flqr1('TNOME','T','CADTP','N','TCODTIP',Tb_PARAJP02PA2CODTPRO.AsString) then
   Tb_PARAJP02nomtipo.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TFrm_ParPreco.Tb_PARAJP01BeforePost(DataSet: TDataSet);
begin
if Tb_PARAJP02PA2CODTPRO.IsNull then
   begin
   MessageDlg('Código do Tipo de Produto, campo Obrigatório!',mtWarning,[mbok],0);
   abort;
   end;
if Tb_PARAJP02nomtipo.IsNull then
   begin
   MessageDlg('Favor digitar um código de tipo válido!',mtWarning,[mbok],0);
   abort;
   end;
if (Tb_PARAJP02PA2PERACRE.IsNull) then
   begin
   MessageDlg('% de acréscimos Campo Obrigatório!',mtWarning,[mbok],0);
   abort;
   end;
if (Tb_PARAJP02PA2PERACRE.Value<=0) then
   begin
   MessageDlg('% de acréscimos tem que ser um valor positivo!',mtWarning,[mbok],0);
   abort;
   end;

end;

procedure TFrm_ParPreco.FormCreate(Sender: TObject);
begin
Tb_PARAJP01.Close;
if DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   Tb_PARAJP01.ParamByName('CODEMP').AsString:='%'
else
   Tb_PARAJP01.ParamByName('CODEMP').AsFloat :=codemp;
Tb_PARAJP01.ParamByName('TPRECO').AsFloat    :=pParPrecoOrigem;
Tb_PARAJP01.Open;
if Tb_PARAJP01.Eof then
   begin
   Tb_PARAJP01.Append;
   Tb_PARAJP01PA1CODEMP.Value  :=codemp;
   Tb_PARAJP01PA1TPRECO.Value  :=pParPrecoOrigem;
   Tb_PARAJP01PA1IVA.Value     :=0;
   Tb_PARAJP01PA1REDUTOR.Value :=0;
   Tb_PARAJP01PA1ICMSC.Value   :=0;
   Tb_PARAJP01PA1ICMSD.Value   :=0;
   Tb_PARAJP01PA1OUTROSAC.Value:=0;
   Tb_PARAJP01PA1CODUSR.Value  :=codemp;
   end
else
   Tb_PARAJP01.Edit;
Tb_PARAJP02.Close;
if DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   Tb_PARAJP02.ParamByName('CODEMP').AsString:='%'
else
   Tb_PARAJP02.ParamByName('CODEMP').AsFloat :=codemp;
Tb_PARAJP02.ParamByName('TPRECO').AsFloat    :=pParPrecoOrigem;
Tb_PARAJP02.ParamByName('CODTPRO').AsString  :='%';
Tb_PARAJP02.Open;

end;

procedure TFrm_ParPreco.bbGravarClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from PARAJUP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PA1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' PA1TPRECO=0'+IntToStr(pParPrecoOrigem));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,152,'Frm_ParPreco','PARAJUP01');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from PARAJUP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PA2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' PA2TPRECO=0'+IntToStr(pParPrecoOrigem));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,164,'Frm_ParPreco','PARAJUP02');
   end;

DM1.query2.Close;
DM1.query2.SQL.Clear;
DM1.query2.Params.Clear;
DM1.query2.Params.CreateParam(ftstring,'PA1CODEMP',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1TPRECO',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1IVA',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1REDUTOR',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1ICMSC',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1ICMSD',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1OUTROSAC',ptinput);
DM1.query2.Params.CreateParam(ftstring,'PA1CODUSR',ptinput);
DM1.query2.SQL.add('Insert into PARAJUP01 ('
                  +' PA1CODEMP, '
                  +' PA1TPRECO, '
                  +' PA1IVA, '
                  +' PA1REDUTOR, '
                  +' PA1ICMSC, '
                  +' PA1ICMSD, '
                  +' PA1OUTROSAC, '
                  +' PA1CODUSR) values ('
                  +' :PA1CODEMP, '
                  +' :PA1TPRECO, '
                  +' :PA1IVA, '
                  +' :PA1REDUTOR, '
                  +' :PA1ICMSC, '
                  +' :PA1ICMSD, '
                  +' :PA1OUTROSAC, '
                  +' :PA1CODUSR )');
DM1.query2.ParambyName('PA1CODEMP').AsFloat  := codemp;
DM1.query2.ParambyName('PA1TPRECO').AsFloat  := pParPrecoOrigem;
DM1.query2.ParambyName('PA1IVA').AsFloat     := Tb_PARAJP01PA1IVA.Value;
DM1.query2.ParambyName('PA1REDUTOR').AsFloat := Tb_PARAJP01PA1REDUTOR.Value;
DM1.query2.ParambyName('PA1ICMSC').AsFloat   := Tb_PARAJP01PA1ICMSC.Value;
DM1.query2.ParambyName('PA1ICMSD').AsFloat   := Tb_PARAJP01PA1ICMSD.Value;
DM1.query2.ParambyName('PA1OUTROSAC').AsFloat:= Tb_PARAJP01PA1OUTROSAC.Value;
DM1.query2.ParambyName('PA1CODUSR').AsFloat  := codusr;
Try
   DM1.query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,205,'Frm_ParPreco','PARAJUP01');
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.query2.Params.Clear;
DM1.Query2.Params.CreateParam(ftstring,'PA2CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PA2TPRECO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PA2CODTPRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PA2PERACRE',ptinput);
DM1.Query2.SQL.add('Insert into PARAJUP02 ('
                  +' PA2CODEMP, '
                  +' PA2TPRECO, '
                  +' PA2CODTPRO, '
                  +' PA2PERACRE) values ('
                  +' :PA2CODEMP, '
                  +' :PA2TPRECO, '
                  +' :PA2CODTPRO, '
                  +' :PA2PERACRE) ');
Tb_PARAJP02.First;
While not Tb_PARAJP02.Eof do
   begin
   if Tb_PARAJP02PA2PERACRE.IsNull then
      begin
      Tb_PARAJP02.Next;
      Continue;
      end;
   DM1.Query2.ParambyName('PA2CODEMP').AsFloat  := codemp;
   DM1.Query2.ParambyName('PA2TPRECO').AsFloat  := pParPrecoOrigem;
   DM1.Query2.ParambyName('PA2CODTPRO').AsFloat := Tb_PARAJP02PA2CODTPRO.Value;
   DM1.Query2.ParambyName('PA2PERACRE').AsFloat := Tb_PARAJP02PA2PERACRE.Value;
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,205,'Frm_ParPreco','PARAJUP02');
      end;
   Tb_PARAJP02.Next;
   end;
Close;
end;

procedure TFrm_ParPreco.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ParPreco.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=DecimalSeparator;
end;

procedure TFrm_ParPreco.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_ParPreco.DBGrid1ColExit(Sender: TObject);
begin
if Tb_PARAJP02.State in [dsInsert, dsEdit] then
   begin
   if DBGrid1.SelectedField=Tb_PARAJP02PA2CODTPRO then
      begin
      if not flcadtpro(1,0,Tb_PARAJP02PA2CODTPRO.AsString) then
         begin
         MessageDlg('Tipo não Cadastrado!',mtWarning,[mbOk],0);
         Tb_PARAJP02PA2CODTPRO.Value:=0;
         abort;
         end;
      end;
   end;
end;

procedure TFrm_ParPreco.Tb_PARAJP02AfterInsert(DataSet: TDataSet);
begin
Tb_PARAJP02PA2CODEMP.Value:=codemp;
Tb_PARAJP02PA2TPRECO.Value:=pParPrecoOrigem;

end;

procedure TFrm_ParPreco.DBGrid1Exit(Sender: TObject);
begin
if Tb_PARAJP02.State in [DsInsert, DsEdit] then
   begin
   if Tb_PARAJP02PA2CODTPRO.IsNull or Tb_PARAJP02PA2PERACRE.IsNull then
      Tb_PARAJP02.Cancel
   else
      Tb_PARAJP02.Post;   
   end;
end;

procedure TFrm_ParPreco.Tb_PARAJP02BeforePost(DataSet: TDataSet);
begin
if not flcadtpro(1,0,Tb_PARAJP02PA2CODTPRO.AsString) then
   begin
   MessageDlg('Tipo não Cadastrado!',mtWarning,[mbOk],0);
   Tb_PARAJP02PA2CODTPRO.Value:=0;
   abort;
   end;
end;

procedure TFrm_ParPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
