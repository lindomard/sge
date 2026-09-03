unit S_EstCQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CheckLst, RLReport, ComCtrls, DB,
  DBTables, ExtCtrls,S_SelEmp;

type
  TFrm_EstCQ = class(TForm)
    PageControl1: TPageControl;
    TsFiltros: TTabSheet;
    TsAnalitico: TTabSheet;
    RLReport1: TRLReport;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Button1: TButton;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    rgTipo: TCheckListBox;
    Label4: TLabel;
    SrcAnalitico: TDataSource;
    QryAnalitico: TQuery;
    QryAnaliticoP1CHAVE: TFloatField;
    QryAnaliticoP1NUMNF: TFloatField;
    QryAnaliticoP1DATANF: TDateTimeField;
    QryAnaliticoP1CODCLI: TFloatField;
    QryAnaliticoP1CODTRA: TFloatField;
    QryAnaliticoTIPO: TFloatField;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    rlChave: TRLLabel;
    RLLabel2: TRLLabel;
    rlnumnf: TRLLabel;
    rldatanf: TRLLabel;
    rlcliente: TRLLabel;
    rltransp: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    QryAnaliticoNOMCLI: TStringField;
    QryAnaliticoNOMTRA: TStringField;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    rgModelo: TRadioGroup;
    QrySintetico: TQuery;
    TsSintetico: TTabSheet;
    RLReport2: TRLReport;
    SrcSintetico: TDataSource;
    QrySinteticoTIPO: TFloatField;
    QrySinteticoTOTAL: TFloatField;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand4: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand5: TRLBand;
    QryAnaliticoNOMTIP: TStringField;
    RLLabel3: TRLLabel;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    rlTotalOco: TRLLabel;
    RLLabel7: TRLLabel;
    rlTotalPed: TRLLabel;
    RLBand10: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel30: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    banner: TRLLabel;
    RLBand8: TRLBand;
    RLSystemInfo8: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLSystemInfo9: TRLSystemInfo;
    RLLabel11: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure QryAnaliticoCalcFields(DataSet: TDataSet);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    xQtdOco: Integer;
  public
    { Public declarations }

  end;

var
  Frm_EstCQ: TFrm_EstCQ;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_EstCQ.Button1Click(Sender: TObject);
var
  cons_date: String;
  x : Integer;
  ok: Boolean;
  Sql: String;
begin
ok:=false;
Sql:='';
for x:=0 to rgTipo.Items.Count -1 do
  begin
  if rgTipo.Checked[x] then
    begin
    ok:=true;
    Break;
    end;
  end;

if not ok then
  begin
  ShowMessage('Escolha ao menos 1 opção!');
  Abort;
  end;

if trim(DateEdit1.Text)<>'/  /' then
  cons_date:=' and P1DATDOC>='+QuotedStr(DateToStr(DateEdit1.Date));
if trim(DateEdit2.Text)<>'/  /' then
  cons_date:=cons_date+' and P1DATDOC<='+QuotedStr(DateToStr(DateEdit2.Date));

{if rgTipo.Checked[0] then
  begin
  Sql:=Sql+'  select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 0 as TIPO from ( ';
  Sql:=Sql+'  select unique P2CHAVE AS CHAVE, P2CODEMP as CODEMP ';
  Sql:=Sql+'  from CADP02,CADP02_LOTES ';
  Sql:=Sql+'  where P2LM_CHAVE(+)=P2CHAVE and P2LM_CODPRO(+)=P2CODPRO ';
  Sql:=Sql+'   and P2LM_CODEMP(+)=P2CODEMP and P2LM_LOTSEQ(+)=P2LOTSEQ ';
  Sql:=Sql+'   and decode(P2LOTE,NULL,P2LM_LOTE,P2LOTE) is null ';
  Sql:=Sql+'   and P2CHAVE in (select UNIQUE P1CHAVE from CADP01  ';
  Sql:=Sql+'   where P1EMIDOC>0 and P1STATUS<9 '+cons_date+')), CADP01 ';
  Sql:=Sql+'   where P1CHAVE=CHAVE and P1CODEMP=CODEMP ';
  for x:=1 to rgTipo.Items.Count -1 do
    begin
    if rgTipo.Checked[x] then
      begin
      Sql:=Sql+' union ';
      Break;
      end;
    end;
  end;

  }

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if rgTipo.Checked[0] then
  begin
  Sql:=Sql+'  select unique P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 0 as TIPO  ';
  Sql:=Sql+'  from CADP01, CADP02,CADP02_LOTES ';
  Sql:=Sql+'  where P1CODEMP=P2CODEMP and P1CHAVE=P2CHAVE and P1LOTSEQ=P2LOTSEQ ';
  Sql:=Sql+'   and P1EMIDOC>0 and P1STATUS<9 '+cons_date;
  Sql:=Sql+'   and P2LM_CHAVE(+)=P2CHAVE and P2LM_CODPRO(+)=P2CODPRO ';
  Sql:=Sql+'   and P2LM_CODEMP(+)=P2CODEMP and P2LM_LOTSEQ(+)=P2LOTSEQ ';
  Sql:=Sql+'   and decode(P2LOTE,NULL,P2LM_LOTE,P2LOTE) is null ';
  Sql:=Sql+iif(la_Empresas='','',' and '+la_Empresas);
  for x:=1 to rgTipo.Items.Count -1 do
    begin
    if rgTipo.Checked[x] then
      begin
      Sql:=Sql+' union ';
      Break;
      end;
    end;
  end;

if rgTipo.Checked[1] then
  begin
  Sql:=Sql+' select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 1 as TIPO ';
  Sql:=Sql+' from CADP01 ';
  Sql:=Sql+' where P1EMIDOC>0 and P1STATUS<9 and P1CODTRA=0 ';
  Sql:=Sql+cons_date;
  Sql:=Sql+iif(la_Empresas='','',' and '+la_Empresas);
  for x:=2 to rgTipo.Items.Count -1 do
    begin
    if rgTipo.Checked[x] then
      begin
      Sql:=Sql+' union ';
      Break;
      end;
    end;
  end;
if rgTipo.Checked[2] then
  begin
  Sql:=Sql+' select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 2 as TIPO ';
  Sql:=Sql+' from CADP01 ';
  Sql:=Sql+' where P1EMIDOC>0 and P1STATUS<9 and P1TIPO=8 ';
  Sql:=Sql+cons_date;
  Sql:=Sql+iif(la_Empresas='','',' and '+la_Empresas);
  end;

if rgModelo.ItemIndex=0 then
  begin
  QryAnalitico.Close;
  QryAnalitico.SQL.Clear;
  QryAnalitico.SQL.Add(' select * from (');
  QryAnalitico.SQL.Add(Sql);
  QryAnalitico.SQL.Add(') order by tipo');
  try
   QryAnalitico.Open;
  except
    QryAnalitico.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
    end;
  RLReport1.PreviewModal;
  end
else
  begin
  QrySintetico.Close;
  QrySintetico.SQL.Clear;
  QrySintetico.SQL.Add(' select Tipo, Count(*) as TOTAL from (');
  QrySintetico.SQL.Add(Sql);
  QrySintetico.SQL.Add(') group by TIPO ');
  QrySintetico.SQL.Add(' order by TIPO');
  try
    QrySintetico.Open;
  except
    QrySintetico.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
    end;
  RLReport2.PreviewModal;
  end;
end;

procedure TFrm_EstCQ.QryAnaliticoCalcFields(DataSet: TDataSet);
begin
flcadcli(1,0,QryAnaliticoP1CODCLI.AsString);
QryAnaliticoNOMCLI.AsString:=DM1.Tb_CliCCODCLI.AsString+' - '+DM1.Tb_CliCRAZAO.AsString;
flcadtra(1,0,QryAnaliticoP1CODTRA.AsString);
QryAnaliticoNOMTRA.AsString:=DM1.Tb_TraTRCODTRA.AsString+' - '+DM1.Tb_TraTRRAZTRA.AsString;
if QryAnaliticoTIPO.AsInteger = 0 then
  QryAnaliticoNOMTIP.AsString:='NOTAS FISCAL COM PRODUTOS SEM LOTE.'
else if QryAnaliticoTIPO.AsInteger = 1 then
  QryAnaliticoNOMTIP.AsString:='NOTAS FISCAL SEM TRANSPORTADORA'
else if QryAnaliticoTIPO.AsInteger = 2 then
  QryAnaliticoNOMTIP.AsString:='NOTAS FISCAL DEV. CLIENTE ENTRADA.';

end;

procedure TFrm_EstCQ.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xQtdOco:=0;
end;

procedure TFrm_EstCQ.RLBand2AfterPrint(Sender: TObject);
begin
xQtdOco:=xQtdOco+1;
end;

procedure TFrm_EstCQ.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlTotalOco.Caption:=IntToStr(xQtdOco);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select count(*) as total from (   '
                  +' select unique p1chave '
                  +' from cadp01 '
                  +' where p1emidoc>0 and p1status<9'
                  +iif(la_Empresas='','',' and '+la_Empresas));
if Trim(DateEdit1.Text)<>'/  /' then
  DM1.Query1.SQL.Add(' and P1DATDOC>='+QuotedStr(DateEdit1.Text));
if Trim(DateEdit2.Text)<>'/  /' then
  DM1.Query1.SQL.Add(' and P1DATDOC<='+QuotedStr(DateEdit2.Text));
DM1.Query1.SQL.Add(')');
DM1.Query1.Open;
rlTotalPed.Caption:=DM1.Query1.FieldByName('TOTAL').AsString;
end;

procedure TFrm_EstCQ.FormCreate(Sender: TObject);
begin
TsAnalitico.TabVisible:=False;
TsSintetico.TabVisible:=False;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_EstCQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EstCQ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
