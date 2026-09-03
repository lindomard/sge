unit S_RE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, ToolEdit, RLReport,
  ExtCtrls;

type
  TFrm_RE = class(TForm)
    GroupBox1: TGroupBox;
    Src_RE: TDataSource;
    DBGrid1: TDBGrid;
    Qr_RE: TQuery;
    bb_gerar: TButton;
    Up_RE: TUpdateSQL;
    Label1: TLabel;
    DT1: TDateEdit;
    Label2: TLabel;
    DT2: TDateEdit;
    rl_lotesre: TRLReport;
    RLBand2: TRLBand;
    RLBand20: TRLBand;
    rl_imgmod05: TRLImage;
    RLDBText43: TRLDBText;
    RLMemo2: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    robs_mod05: TRLMemo;
    rl_periodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    rl_codigo: TRLLabel;
    rl_nome: TRLLabel;
    rl_qtd: TRLLabel;
    rl_lote: TRLLabel;
    rl_vcto: TRLLabel;
    rl_lote_re: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Imprimir: TButton;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    rl_banner: TRLLabel;
    cb_vcto: TCheckBox;
    rg_tipo: TRadioGroup;
    Qr_REPF2CODEMP: TFloatField;
    Qr_REPF2CHAVE: TFloatField;
    Qr_REPF2LOTSEQ: TFloatField;
    Qr_REPF2ITEM: TFloatField;
    Qr_REPF2CODPRO: TFloatField;
    Qr_REPF2LOTE: TStringField;
    Qr_REPF2DATAV: TDateTimeField;
    Qr_REPF2QTDP: TFloatField;
    Qr_REPF2PU: TFloatField;
    Qr_REPF2DESC01: TFloatField;
    Qr_REPF2DESC02: TFloatField;
    Qr_REPF2DESC03: TFloatField;
    Qr_REPF2SIT: TStringField;
    Qr_REPF2ALIQ: TFloatField;
    Qr_REPF2ALIQNR: TFloatField;
    Qr_REPF2BASEN: TFloatField;
    Qr_REPF2ICMSN: TFloatField;
    Qr_REPF2BASER: TFloatField;
    Qr_REPF2ICMSR: TFloatField;
    Qr_REPF2STATUS: TFloatField;
    Qr_REPF2TAB: TStringField;
    Qr_REPF2LISTA: TFloatField;
    Qr_REPF2PCOTAB: TFloatField;
    Qr_REPF2TOTDES: TFloatField;
    Qr_REPF2BASENR: TFloatField;
    Qr_REPF2ICMSNR: TFloatField;
    Qr_REPF2ISENTAS: TFloatField;
    Qr_REPF2ALIPI: TFloatField;
    Qr_REPF2IPI: TFloatField;
    Qr_REPF2CFO: TFloatField;
    Qr_REPF2DESCRAT: TFloatField;
    Qr_REPF2PMC: TFloatField;
    Qr_REPF2VALDES: TFloatField;
    Qr_REPF2OUTRAS: TFloatField;
    Qr_REPF2QTDREC: TFloatField;
    Qr_REPF2PUOUT: TFloatField;
    Qr_REPF2PBT: TFloatField;
    Qr_REPF2VALDESOUT: TFloatField;
    Qr_REPF2TOTDESOUT: TFloatField;
    Qr_REPF2FRERAT: TFloatField;
    Qr_REPF2FRERATOUT: TFloatField;
    Qr_REPF2DESCRATOUT: TFloatField;
    Qr_REPF2ORIGEM: TFloatField;
    Qr_REPF2STATUS_PF1: TFloatField;
    Qr_REPF2SIV_OUTROS: TFloatField;
    Qr_REPF2LOTE_RE: TStringField;
    Qr_REPF2DTENTRADA: TDateTimeField;
    Qr_REPF2PREDICMNOR: TFloatField;
    Qr_REPF2CFOP_COMP: TStringField;
    Qr_REPF2OBS: TStringField;
    Qr_REPDNOME: TStringField;
    Qr_REORDEM: TFloatField;
    Qr_RELOTE_RE: TStringField;
    Qr_REPF2NOMPRO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bb_gerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_REAfterDelete(DataSet: TDataSet);
    procedure Qr_REAfterPost(DataSet: TDataSet);
    procedure Qr_REBeforeInsert(DataSet: TDataSet);
    procedure ImprimirClick(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_REBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RE: TFrm_RE;

implementation

uses Func, flerarq, S_DM1, S_SelEmp, lerarq;

{$R *.dfm}

procedure TFrm_RE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Frm_SelEmp.free;
Frm_SelEmp:=nil;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_RE.bb_gerarClick(Sender: TObject);
begin
Qr_RE.Close;
Qr_RE.SQL.Clear;
Qr_RE.SQL.Add(' select                            ');
Qr_RE.SQL.Add('   CADPF2.*,                       ');
Qr_RE.SQL.Add('   CADPRO.PDNOME,                  ');
Qr_RE.SQL.Add('   TO_NUMBER(LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'1234567890'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+'))) as ordem, ');
Qr_RE.SQL.Add(' PF2LOTE_RE AS LOTE_RE             ');
//Qr_RE.SQL.Add('   TO_NUMBER(LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'1234567890'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+'))) '
//             +'||decode(LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'MPE'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+')),null,'+Chr(39)+'XX'+chr(39)+','
//             +'   LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'MPE'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+'))) as LOTE_RE ');
//Qr_RE.SQL.Add('   TO_NUMBER(LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'1234567890'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+')))||decode(PDNIVEL,4,'+chr(39)+'MP'+chr(39)+',decode(PDNIVEL,6,'+chr(39)+'ME'+chr(39)+','+chr(39)+'XX'+chr(39)+')) as Lote_RE ');
Qr_RE.SQL.Add(' from                              ');
Qr_RE.SQL.Add('   CADPF1, CADPF2, CADPRO          ');
Qr_RE.SQL.Add(' where                             ');
Qr_RE.SQL.Add('   PDCODPRO=PF2CODPRO              ');
if rg_tipo.ItemIndex=0 then
  Qr_RE.SQL.Add(' and (PDNIVEL=0 or PDNIVEL=1)    ');
if rg_tipo.ItemIndex=1 then
  Qr_RE.SQL.Add(' and (PDNIVEL=2)    ');
Qr_RE.SQL.Add(' and PF1CODEMP=PF2CODEMP           ');
Qr_RE.SQL.Add(' and PF1CHAVE=PF2CHAVE             ');
Qr_RE.SQL.Add(' and PF1LOTSEQ=PF2LOTSEQ           ');
if cb_vcto.Checked then
  begin
  Qr_RE.SQL.Add(' and trim(PF2LOTE) is not null     ');
  Qr_RE.SQL.Add(' and trim(PF2DATAV) is not null    ');
  end;
Qr_RE.SQL.Add(Iif(Trim(DT1.Text)<>'/  /',' and PF1DATANF>='+chr(39)+DT1.Text+chr(39),' '));
Qr_RE.SQL.Add(Iif(Trim(DT2.Text)<>'/  /',' and PF1DATANF<='+chr(39)+DT2.Text+chr(39),' '));
Qr_RE.SQL.Add(Iif(fRetInstMECadastro('CADPRO','PDCODEMP',codemp)<>'',' and '+fRetInstMECadastro('CADPRO','PDCODEMP',codemp),' '));
Qr_RE.SQL.Add(' and TO_NUMBER(LTRIM(translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE, translate('+chr(39)+' '+chr(39)+'||PF2LOTE_RE,'+chr(39)+'1234567890'+chr(39)+','+chr(39)+' '+chr(39)+'),'+chr(39)+' '+chr(39)+'))) is not null ');
Qr_RE.SQL.Add(' order by                          ');
Qr_RE.SQL.Add('  ORDEM                       ');
Qr_RE.Open;


end;

procedure TFrm_RE.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Frm_SelEmp);
end;

procedure TFrm_RE.Qr_REAfterDelete(DataSet: TDataSet);
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

procedure TFrm_RE.Qr_REAfterPost(DataSet: TDataSet);
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

procedure TFrm_RE.Qr_REBeforeInsert(DataSet: TDataSet);
begin
Abort;
end;

procedure TFrm_RE.ImprimirClick(Sender: TObject);
var
  Periodo: String;
begin
bb_gerarClick(Self);
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
  begin
  rl_imgmod05.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
  end;
DM1.Tb_Emp.Locate('CODEMP',codemp,[]);
Periodo:='Periodo ';

if Trim(DT1.Text)<>'/  /' then
 Periodo:=Periodo+' de '+DT1.Text;

if Trim(DT2.Text)<>'/  /' then
  if Trim(DT1.Text)<>'/  /' then
    Periodo:=Periodo+' à '+DT2.Text+'.'
  else
    Periodo:=Periodo+' de '+DT2.Text+'.';

if (Trim(DT1.Text)='/  /') and (Trim(DT2.Text)='/  /') then
  Periodo:=Periodo+' Indefinido.';

rl_periodo.Caption:=Periodo;

rl_lotesre.PreviewModal;
end;

procedure TFrm_RE.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_banner.Caption:=pBanner_Intersys;
end;

procedure TFrm_RE.Qr_REBeforePost(DataSet: TDataSet);
begin
Qr_REPF2LOTE_RE.AsString:=Qr_RELOTE_RE.AsString;
end;

end.
