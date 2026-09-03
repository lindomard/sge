unit S_CadSol_Pesq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Mask, StdCtrls, ExtCtrls, ToolEdit, Grids, DBGrids;

type
  TFrm_CadSol_Pesq = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lblSolicitante: TLabel;
    Label1: TLabel;
    CODSOL: TEdit;
    NOMSOL: TEdit;
    cbDpto: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dtIni: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnBuscar: TButton;
    rgStatus: TRadioGroup;
    dtFin: TDateEdit;
    DataSource1: TDataSource;
    Tb_Sol1: TQuery;
    Tb_Sol1CS1CODEMP: TFloatField;
    Tb_Sol1CS1CHAVE: TFloatField;
    Tb_Sol1CS1LOTSEQ: TFloatField;
    Tb_Sol1CS1CODDEP: TFloatField;
    Tb_Sol1CS1CODSOL: TStringField;
    Tb_Sol1CS1OBS: TStringField;
    Tb_Sol1CS1DATA: TDateTimeField;
    Tb_Sol1NOMSOL: TStringField;
    Tb_Sol1NOMDEP: TStringField;
    chaveIni: TEdit;
    chaveFim: TEdit;
    Tb_Sol1CS1STATUS: TFloatField;
    procedure btnBuscarClick(Sender: TObject);
    procedure CODSOLExit(Sender: TObject);
    procedure CODSOLKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Tb_Sol1CalcFields(DataSet: TDataSet);
    procedure chaveIniExit(Sender: TObject);
    procedure chaveFimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadSol_Pesq: TFrm_CadSol_Pesq;

implementation

uses S_DM1, Func, Math, lerarq, S_DM6;

{$R *.dfm}

procedure TFrm_CadSol_Pesq.btnBuscarClick(Sender: TObject);
var
  Query: TQuery;
begin
Query := TQuery.Create(self);
Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
Tb_Sol1.Close;
Tb_Sol1.SQL.Clear;
Tb_Sol1.SQL.Add('select * from CADSOL1 where 1=1 ');
Tb_Sol1.SQL.Add(codemp2('CS1CODEMP',codemp));
if ValFloat(CODSOL.Text)>0 then
  Tb_Sol1.SQL.Add(' and CS1CODSOL='+CODSOL.Text);
if cbDpto.ItemIndex<>cbDpto.Items.Count-1 then
  begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('select * from CADPRO_DPTO where 1=1');
  Query.SQL.Add(fla_EmpBaixaAlta(0,'CADPRO_DPTO',' and ',codemp,' PRODEP_CODEMP',''));
  Query.SQL.Add(' and PRODEP_NOME='+QuotedStr(cbDpto.Items[cbDpto.ItemIndex]));
  Query.Open;
  if not Query.IsEmpty then
    Tb_Sol1.SQL.Add(' and CS1CODDEP='+Query.FieldByName('PRODEP_CODDEP').AsString);
  end;
if ValFloat(chaveIni.Text)>0 then
  Tb_Sol1.SQL.Add(' and CS1CHAVE>='+FloatToStr(ValFloat(chaveIni.Text)));
if ValFloat(chaveFim.Text)>0 then
  Tb_Sol1.SQL.Add(' and CS1CHAVE<='+FloatToStr(ValFloat(chaveFim.Text)));
if Trim(dtIni.Text)<>'/  /' then
  Tb_Sol1.SQL.Add(' and CS1DATA>='+QuotedStr(dtIni.Text));
if Trim(dtFin.Text)<>'/  /' then
  Tb_Sol1.SQL.Add(' and CS1DATA<='+QuotedStr(dtFin.Text));
if rgStatus.ItemIndex<2 then
  Tb_Sol1.SQL.Add(' and CS1STATUS = '+IntToStr(rgStatus.ItemIndex));
Tb_Sol1.Open;
end;

procedure TFrm_CadSol_Pesq.CODSOLExit(Sender: TObject);
begin
CODSOL.Text:=FloatToStr(ValFloat(CODSOL.Text));
if ValFloat(CODSOL.Text)>0 then
  begin
  if not flqr1('NOMUSR','','CADUSR','N','CODUSR',CODSOL.Text) then
    begin
    if ValFloat(CODSOL.Text)<>1111 then
      CODSOL.SetFocus
    else
      NOMSOL.Text:='Suporte/Desenvolvimento';
    end
  else
    NOMSOL.Text:=DM1.Query1.Fields[0].AsString;
  end
else
  begin
  CODSOL.Clear;
  NOMSOL.Clear;
  end;
end;

procedure TFrm_CadSol_Pesq.CODSOLKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODSOL.Text:=fChamaUsr(0,'frm_RCRec',Key);
  CODSOLExit(Self);
  key:=#0;
  end;
end;

procedure TFrm_CadSol_Pesq.FormCreate(Sender: TObject);
begin
cbDpto.Clear;
flcadpro_dpto(0,1,'');
while not (DM6.Tb_Prod_Dep.Eof) do
  begin
  cbDpto.Items.Add(DM6.Tb_Prod_DepPRODEP_NOME.AsString);
  DM6.Tb_Prod_Dep.next;
  end;
cbDpto.Items.Add('Todos');
end;

procedure TFrm_CadSol_Pesq.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_CadSol_Pesq.Tb_Sol1CalcFields(DataSet: TDataSet);
begin
if not Tb_Sol1CS1CODSOL.IsNull then
  begin
  if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_Sol1CS1CODSOL.AsString) then
    Tb_Sol1NOMSOL.AsString := DM1.Query1.FieldByName('NOMUSR').AsString
  else
    begin
    if Tb_Sol1CS1CODSOL.AsInteger=1111 then
      Tb_Sol1NOMSOL.AsString:='Suporte/Desenvolvimento';
    end;
  end;

if not Tb_Sol1CS1CODDEP.IsNull then
  begin
  if flqr1('PRODEP_NOME','','CADPRO_DPTO','N','PRODEP_CODDEP',Tb_Sol1CS1CODDEP.AsString) then
    Tb_Sol1NOMDEP.AsString := DM1.Query1.FieldByName('PRODEP_NOME').AsString
  end;


end;

procedure TFrm_CadSol_Pesq.chaveIniExit(Sender: TObject);
begin
chaveIni.Text:=FloatToStr(ValFloat(chaveIni.Text));
end;

procedure TFrm_CadSol_Pesq.chaveFimExit(Sender: TObject);
begin
chaveFim.Text:=FloatToStr(ValFloat(chaveFim.Text));
end;

end.
