unit s_cHoraOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Buttons, DB, DBTables, RxMemDS,
  DBGrids, RLReport;

type
  TFrm_cHoraOp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_vBurden: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Query1: TQuery;
    RxMemoryData1: TRxMemoryData;
    DBGrid1: TDBGrid;
    RxMemoryData1OPERACAO: TStringField;
    RxMemoryData1VAL_EQUIP: TFloatField;
    RxMemoryData1N_FUNCIONARIO: TFloatField;
    RxMemoryData1MO_DIRETA: TFloatField;
    RxMemoryData1ENC_SOCIAIS: TFloatField;
    RxMemoryData1SM_MO_ENC: TFloatField;
    RxMemoryData1HORA_PROD: TFloatField;
    RxMemoryData1CH_MO_DI: TFloatField;
    RxMemoryData1CH_X_BURDEN: TFloatField;
    RxMemoryData1DEP_P_HORA: TFloatField;
    RxMemoryData1C_HORA_TOTAL: TFloatField;
    DataSource1: TDataSource;
    btn_Imprimir: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    rl_Operacao: TRLLabel;
    rl_MOD: TRLLabel;
    rl_ES: TRLLabel;
    rl_soma_MOD_ES: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    rl_valEqui: TRLLabel;
    RLLabel8: TRLLabel;
    rl_Horas: TRLLabel;
    RLLabel2: TRLLabel;
    rl_ch_mod: TRLLabel;
    RLLabel3: TRLLabel;
    rl_nFun: TRLLabel;
    RLLabel4: TRLLabel;
    rl_ch_burden: TRLLabel;
    RLLabel9: TRLLabel;
    rl_Deprec: TRLLabel;
    RLLabel11: TRLLabel;
    rl_chT: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    Label9: TLabel;
    edt_horas: TEdit;
    RLAngleLabel1: TRLAngleLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLAngleLabel2: TRLAngleLabel;
    RLLabel1: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLDB_coefburden: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure Calcular_Custo(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_horasKeyPress(Sender: TObject; var Key: Char);
    procedure edt_horasExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cHoraOp: TFrm_cHoraOp;

implementation

uses S_CBurden, Func, S_DM1, S_DM4, lerarq;

{$R *.dfm}

procedure TFrm_cHoraOp.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_CBurden,Frm_CBurden);
Frm_CBurden.btn_CalcularClick(self);
edt_vBurden.Text:=Frm_CBurden.STG1.Cells[2,Frm_CBurden.STG1.RowCount-1];
FreeAndNil(Frm_CBurden);
RxMemoryData1.Open;
end;

procedure TFrm_cHoraOp.Calcular_Custo(Sender: TObject);
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT IM1CODIMO, IM1NOME,IM1VALORCPR,IM1PERCDEP FROM CADIMO01 ORDER BY IM1NOME');
Query1.Open;
RxMemoryData1.Close;
RxMemoryData1.Open;
while not Query1.Eof do
  begin
  RxMemoryData1.Append;
  RxMemoryData1OPERACAO.AsString:=Query1.FieldByName('IM1NOME').AsString;
  RxMemoryData1VAL_EQUIP.AsFloat:=Query1.FieldByName('IM1VALORCPR').AsFloat;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' SELECT SUM(CFSALARIO) AS SALARIO, COUNT(*) AS TOTAL '
                    +' FROM CADFUN WHERE CFCODFUN IN ( SELECT CFI_CODFUN '
                    +' FROM CADFIMO WHERE  CFI_CODIMO='+Query1.FieldByName('IM1CODIMO').AsString+')');
  DM1.Query1.Open;
  RxMemoryData1N_FUNCIONARIO.AsInteger:=DM1.Query1.FieldByName('TOTAL').AsInteger;
  RxMemoryData1MO_DIRETA.AsFloat:=DM1.Query1.FieldByName('SALARIO').AsFloat;
  RxMemoryData1ENC_SOCIAIS.AsFloat:=RxMemoryData1MO_DIRETA.AsFloat*0.7;
  RxMemoryData1SM_MO_ENC.AsFloat:=RxMemoryData1MO_DIRETA.AsFloat+RxMemoryData1ENC_SOCIAIS.AsFloat;
  RxMemoryData1HORA_PROD.AsFloat:=ValFloat(edt_horas.Text);
  try
    RxMemoryData1CH_MO_DI.AsFloat:=RxMemoryData1SM_MO_ENC.AsFloat/RxMemoryData1HORA_PROD.AsFloat;
  except
    RxMemoryData1CH_MO_DI.AsFloat:=0;
    end;
  RxMemoryData1CH_X_BURDEN.AsFloat:=RxMemoryData1CH_MO_DI.AsFloat*ValFloat(edt_vBurden.Text);
  RxMemoryData1DEP_P_HORA.AsFloat:=Query1.FieldByName('IM1VALORCPR').AsFloat/20000*Query1.FieldByName('IM1PERCDEP').AsFloat;
  RxMemoryData1C_HORA_TOTAL.AsFloat:=RxMemoryData1CH_X_BURDEN.AsFloat+RxMemoryData1DEP_P_HORA.AsFloat;
  RxMemoryData1.Post;
  Query1.Next;
  end;
end;

procedure TFrm_cHoraOp.btn_ImprimirClick(Sender: TObject);
begin
RLReport1.PreviewModal;
end;

procedure TFrm_cHoraOp.FormShow(Sender: TObject);
begin
if flfilpad(0,'_'+Name,'') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','edt_horas',[]) then
    edt_horas.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  end;
Calcular_Custo(self);
end;

procedure TFrm_cHoraOp.edt_horasKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
  begin
  Key:=' ';
  Abort;
  end;
edt_horas.Text:=Trim(edt_horas.Text);
end;

procedure TFrm_cHoraOp.edt_horasExit(Sender: TObject);
begin
Calcular_Custo(Self);
end;

procedure TFrm_cHoraOp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fDeletaPadroes(0,'_'+Name,'');
fGravaPadroes(0,'edt_horas','text','_'+Name,edt_horas.Text);
end;

procedure TFrm_cHoraOp.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLDB_coefburden.text:=edt_vBurden.Text;
end;

procedure TFrm_cHoraOp.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:= pBanner_Intersys;
end;

end.
