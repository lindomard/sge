unit S_IndEnv_Fab_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Buttons, Mask,func,S_DM3,S_DM1,lerarq,
  Grids, DBGrids,s_lerarq_geral;

type
  TFrm_IndEnv_Fab_Loc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MCHAVEI: TEdit;
    MCHAVEF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    RG_STATUS: TRadioGroup;
    bbPesq: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_OP01: TQuery;
    DBGrid1: TDBGrid;
    Src_Op01: TDataSource;
    Qr_OP01OP1_CODIGO: TFloatField;
    Qr_OP01OP1_DATA: TDateTimeField;
    Qr_OP01OP1_NOME: TStringField;
    Qr_OP01OP1_LOTE: TStringField;
    Qr_OP01OP1_TOTPREV: TFloatField;
    Qr_OP01OP1_TOTPROD: TFloatField;
    Qr_OP01OP1_TMPPREV: TFloatField;
    Qr_OP01OP1_TMPUTIL: TFloatField;
    Qr_OP01OP1_STATUS: TFloatField;
    Qr_OP01Situacao: TStringField;
    Label5: TLabel;
    LOTSEQ: TEdit;
    Label6: TLabel;
    EDTLOTEOP: TEdit;
    RG_TIPO: TRadioGroup;
    EDTCODPRO: TEdit;
    Label7: TLabel;
    EDTNOMPRO: TEdit;
    Qr_OP01origem: TStringField;
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
    procedure EDTCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure EDTCODPROExit(Sender: TObject);
  private
    { Private declarations }

    procedure pBuscarLote(pCodpro: Real; pComboBox: tcombobox);

  public
    { Public declarations }
     mInd_Fab_Origem_op: Integer;

  end;

var
  Frm_IndEnv_Fab_Loc: TFrm_IndEnv_Fab_Loc;

implementation

uses S_Ind_Fab;

{$R *.dfm}

procedure TFrm_IndEnv_Fab_Loc.MCHAVEIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_IndEnv_Fab_Loc.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndEnv_Fab_Loc.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_OP01OP1_CODIGO.IsNull then
   begin
   MCHAVEI.Text:=Qr_OP01OP1_CODIGO.AsString;
   BBSAIR.Click;
   end;
end;

procedure TFrm_IndEnv_Fab_Loc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=9 then
   begin
   MCHAVEI.Text:=Qr_OP01OP1_CODIGO.AsString;
   BBSAIR.Click;
   end;
end;

procedure TFrm_IndEnv_Fab_Loc.bbPesqClick(Sender: TObject);
var
minc: String;
begin
LOTSEQ.Text:=fdeixanum(LOTSEQ.Text);
Qr_OP01.Close;
Qr_OP01.SQL.Clear;
Qr_Op01.SQL.Add('Select CADOP01.*,'
               +' case when NVL(OP1_CHAVE_FRAC,0)=0 then '+QuotedStr('Padrão')+' else '
               +QuotedStr(' Fracionamento ')+' || OP1_CHAVE_FRAC end as origem '
               +' From CADOP01 where OP1_FABENV=0'+IntToStr(mInd_Fab_Origem_op)
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
if trim(EDTLOTEOP.Text)<>'' then
  begin
  Qr_OP01.SQL.Add(minc+' upper(trim(OP1_LOTE))='+QuotedStr(Trim(UpperCase(EDTLOTEOP.Text))));
  minc:=' and ';
  end;
if trim(EDTCODPRO.Text)<>'' then
  begin
  Qr_OP01.SQL.Add(minc+' OP1_CODIGO in (select OP2_CODIGO from CADOP02 '
                 +' where OP2_CODIGO=OP1_CODIGO and OP2_CODPRO='+EDTCODPRO.Text+')');
  minc:=' and ';
  end;

if RG_TIPO.ItemIndex < 2 then
  begin
  Qr_Op01.SQL.add(minc+' OP1_CODIGO in (select OP2_CODIGO from CADOP02 '
                 +' where OP2_CODIGO=OP1_CODIGO '
                 +' and OP2_CODPRO in (select PDCODPRO from CADPRO where '
                 +' PDNIVEL='+IntToStr(RG_TIPO.ItemIndex+3)+'))');
  minc:=' and ';
  end;

if RG_STATUS.ItemIndex<>3 then
   Qr_Op01.SQL.add(minc+' OP1_STATUS=0'+IntToStr(RG_STATUS.ItemIndex));

Qr_Op01.SQL.add(' order by OP1_CODIGO ');

try
  Qr_Op01.Open;
except
  Qr_Op01.SQL.SaveToFile('c:\sql.txt');
  fmensagem('Erro ao selecionar os dados!',0,['0'],0);
  end;
end;

procedure TFrm_IndEnv_Fab_Loc.MCHAVEIExit(Sender: TObject);
begin
if Trim(MCHAVEF.Text)='' then
   MCHAVEF.Text:=MCHAVEI.Text;
end;

procedure TFrm_IndEnv_Fab_Loc.Qr_OP01CalcFields(DataSet: TDataSet);
begin
if Qr_OP01OP1_STATUS.Value=0 then
   Qr_OP01Situacao.Value:='Pendente'
else if Qr_OP01OP1_STATUS.Value=1 then
   Qr_OP01Situacao.Value:='Baixou Mat.Primas'
else if Qr_OP01OP1_STATUS.Value=2 then
   Qr_OP01Situacao.Value:='Confirmado';

end;

procedure TFrm_IndEnv_Fab_Loc.LOTSEQExit(Sender: TObject);
begin
LOTSEQ.Text:=Trim(LOTSEQ.Text);
end;

procedure TFrm_IndEnv_Fab_Loc.FormCreate(Sender: TObject);
begin
LOTSEQ.Text:=IntToStr(ls_lotfab);
MDT1.Text:=formatDateTime(fdt2, date);
MDT2.Text:=formatDateTime(fdt2, date);
end;

procedure TFrm_IndEnv_Fab_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_IndEnv_Fab_Loc.EDTCODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   EDTCODPRO.Text:=fChamaPro(0,'INDENV_FAB',key);
   key:=#0;
   EDTCODPROExit(Self);
   end;
end;

procedure TFrm_IndEnv_Fab_Loc.EDTCODPROExit(Sender: TObject);
begin
EDTCODPRO.Text := fdeixanum2(EDTCODPRO.Text);
if ValFloat(EDTCODPRO.Text) > 0 then
  begin
  if not flcadpro(1,0,0,EDTCODPRO.Text) then
    begin
    Fmensagem('Produto não Cadastrado!',0,['0'],0);
    EDTCODPRO.SetFocus;
    end
  else
    begin
    if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      EDTCODPRO.SetFocus;
      exit;
      end;
    end;
  EDTNOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
  end;
end;


procedure tFrm_IndEnv_Fab_loc.pBuscarLote(pCodpro: Real; pComboBox: tcombobox);
begin
end;


end.
