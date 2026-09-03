unit S_Prod_Loc;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Buttons, Mask,func,S_DM3,S_DM1,lerarq,
  Grids, DBGrids;

type
  TFrm_Prod_Loc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MCHAVEI: TEdit;
    MCHAVEF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    RG_TIPO: TRadioGroup;
    bbPesq: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_OP01: TQuery;
    DBGrid1: TDBGrid;
    Src_Op01: TDataSource;
    Label5: TLabel;
    LOTSEQ: TEdit;
    Qr_OP01OP1_CODEMP: TFloatField;
    Qr_OP01OP1_FABENV: TFloatField;
    Qr_OP01OP1_LOTSEQ: TFloatField;
    Qr_OP01OP1_CODIGO: TFloatField;
    Qr_OP01OP1_NOME: TStringField;
    Qr_OP01OP1_ORIGEM: TFloatField;
    Qr_OP01OP1_DATA: TDateTimeField;
    Qr_OP01OP1_DATAPREV: TDateTimeField;
    Qr_OP01OP1_LOTE: TStringField;
    Qr_OP01OP1_DATAVEN: TDateTimeField;
    Qr_OP01OP1_TMPPREV: TFloatField;
    Qr_OP01OP1_TMPUTIL: TFloatField;
    Qr_OP01OP1_TOTPREV: TFloatField;
    Qr_OP01OP1_TOTPROD: TFloatField;
    Qr_OP01OP1_STATUS: TFloatField;
    Qr_OP01OP1_SITUACAO: TFloatField;
    Qr_OP01OP1_QTDMAN: TFloatField;
    Qr_OP01OP1_SITMP: TFloatField;
    Qr_OP01OP1_SITACAB: TFloatField;
    Qr_OP01OP1_OBS01: TStringField;
    Qr_OP01OP1_OBS02: TStringField;
    Qr_OP01OP1_OBS03: TStringField;
    Qr_OP01OP1_OBS04: TStringField;
    Qr_OP01OP1_OBS05: TStringField;
    Qr_OP01OP1_OBS06: TStringField;
    Qr_OP01OP1_OBS07: TStringField;
    Qr_OP01OP1_OBS08: TStringField;
    Qr_OP01OP1_OBS09: TStringField;
    Qr_OP01OP1_OBS10: TStringField;
    Qr_OP01Situacao: TStringField;
    procedure MCHAVEIKeyPress(Sender: TObject; var Key: Char);
    procedure BBSAIRClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbPesqClick(Sender: TObject);
    procedure MCHAVEIExit(Sender: TObject);
    procedure Qr_OP01CalcFields(DataSet: TDataSet);
    procedure LOTSEQExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
      mInd_Fab_Origem_op: Integer;

  end;

var
  Frm_Prod_Loc: TFrm_Prod_Loc;
implementation

uses S_Ind_Fab;

{$R *.dfm}

procedure TFrm_Prod_Loc.MCHAVEIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Prod_Loc.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Prod_Loc.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_OP01OP1_CODIGO.IsNull then
   begin
   MCHAVEI.Text:=Qr_OP01OP1_CODIGO.AsString;
   BBSAIR.Click;
   end;
end;

procedure TFrm_Prod_Loc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=9 then
   begin
   MCHAVEI.Text:=Qr_OP01OP1_CODIGO.AsString;
   BBSAIR.Click;
   end;
end;

procedure TFrm_Prod_Loc.bbPesqClick(Sender: TObject);
var
  minc: String;
begin
LOTSEQ.Text:=fdeixanum(LOTSEQ.Text);
Qr_OP01.Close;
Qr_OP01.SQL.Clear;
Qr_Op01.SQL.Add(' Select * From CADOP01 ');
minc:=' where ';
Qr_Op01.SQL.Add(minc+' OP1_FABENV=0'+IntToStr(mInd_Fab_Origem_op)
               +' and OP1_LOTSEQ=0'+trim(LOTSEQ.Text));
minc:=' and ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Qr_Op01.SQL.Add(minc+' OP1_CODEMP=0'+IntToStr(codemp));
   minc:=' and ';
   end;
if Trim(MCHAVEI.Text)<>'' then
   begin
   Qr_Op01.SQL.Add(minc+' OP1_CODIGO>=0'+Trim(MCHAVEI.Text));
   minc:=' and ';
   end;
if Trim(MCHAVEF.Text)<>'' then
   begin
   Qr_Op01.SQL.Add(minc+' OP1_CODIGO<=0'+Trim(MCHAVEF.Text));
   minc:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then                                         
   begin
   Qr_Op01.SQL.Add(minc+' OP1_DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   minc:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Op01.SQL.Add(minc+' OP1_DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   minc:=' and ';
   end;
if RG_TIPO.ItemIndex<>3 then
   Qr_Op01.SQL.add(minc+' OP1_STATUS=0'+IntToStr(RG_TIPO.ItemIndex));
Qr_Op01.Open;
Qr_Op01.sql.savetofile(mpastatemp + 'SQLop02.txt');



end;

procedure TFrm_Prod_Loc.MCHAVEIExit(Sender: TObject);
begin
if Trim(MCHAVEF.Text)='' then
   MCHAVEF.Text:=MCHAVEI.Text;
end;

procedure TFrm_Prod_Loc.Qr_OP01CalcFields(DataSet: TDataSet);
begin
if Qr_OP01OP1_STATUS.Value=0 then
   Qr_OP01Situacao.Value:='Pendente'
else if Qr_OP01OP1_STATUS.Value=1 then
   Qr_OP01Situacao.Value:='Baixou Mat.Primas'
else if Qr_OP01OP1_STATUS.Value=2 then
   Qr_OP01Situacao.Value:='Confirmado';

end;

procedure TFrm_Prod_Loc.LOTSEQExit(Sender: TObject);
begin
LOTSEQ.Text:=fdeixanum(LOTSEQ.Text);
end;

procedure TFrm_Prod_Loc.FormCreate(Sender: TObject);
begin
if Frm_Prod_Loc.mInd_Fab_Origem_op = 1 then
  Caption:='Localizar Ordem de Produção'
else
  Caption:='Localizar Ordem de Envase';
LOTSEQ.Text:=IntToStr(ls_lotfab);
end;

procedure TFrm_Prod_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
