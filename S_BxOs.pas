unit S_BxOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DB, DBTables, DBCtrls, Buttons,S_IMPRES;

type
  TFrm_BxOs = class(TForm)
    CHAVEPED: TEdit;
    HORASAI: TMaskEdit;
    HORAENT: TMaskEdit;
    NOMTEC: TEdit;
    CODTEC: TEdit;
    NOMSOL: TEdit;
    MDATA: TMaskEdit;
    BAIRRO: TEdit;
    CEP: TEdit;
    RG_OPER: TRadioGroup;
    DATAAUT: TMaskEdit;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    CIDADE: TEdit;
    ENDERECO: TEdit;
    NOMCLI: TEdit;
    CODCLI: TEdit;
    CHAVE: TEdit;
    NOMAUT: TEdit;
    DATAENT: TMaskEdit;
    DATASAI: TMaskEdit;
    Label50: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    Label45: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnBuscar: TButton;
    GroupBox1: TGroupBox;
    Qr_Os01: TQuery;
    Qr_Os01OS1CODEMP: TFloatField;
    Qr_Os01OS1LOTSEQ: TFloatField;
    Qr_Os01OS1CHAVE: TFloatField;
    Qr_Os01OS1DATA: TDateTimeField;
    Qr_Os01OS1DATAAUT: TDateTimeField;
    Qr_Os01OS1DATADEV: TDateTimeField;
    Qr_Os01OS1DATAENT: TDateTimeField;
    Qr_Os01OS1CODCLI: TFloatField;
    Qr_Os01OS1CODVEN: TFloatField;
    Qr_Os01OS1OPER: TFloatField;
    Qr_Os01OS1DEFREC: TBlobField;
    Qr_Os01OS1OBS01: TStringField;
    Qr_Os01OS1OBS02: TStringField;
    Qr_Os01OS1OBS03: TStringField;
    Qr_Os01OS1OBS04: TStringField;
    Qr_Os01OS1STATUS: TFloatField;
    Qr_Os01OS1LOTSEQ_CP: TFloatField;
    Qr_Os01OS1CHAVEPED: TFloatField;
    Qr_Os01CRAZAO: TStringField;
    Qr_Os01CLOG: TStringField;
    Qr_Os01CBAIRRO: TStringField;
    Qr_Os01CCIDADE: TStringField;
    Qr_Os01CUF: TStringField;
    Qr_Os01CCEP: TStringField;
    Qr_Os01OS1TOTAL: TFloatField;
    Qr_Os01nomven: TStringField;
    Qr_Os01OS1TOTSER: TFloatField;
    Qr_Os01OS1DESCSER: TFloatField;
    Qr_Os01OS1TOTPEC: TFloatField;
    Qr_Os01OS1DESCPEC: TFloatField;
    Qr_Os01OS1ESTREG: TFloatField;
    Qr_Os01OS1DATALT: TDateTimeField;
    Qr_Os01OS1CODUSR: TFloatField;
    Qr_Os01OS1NOMEAUT: TStringField;
    Qr_Os01OS1NOMSOL: TStringField;
    Qr_Os01CFAX: TStringField;
    Qr_Os01CCPF: TFloatField;
    Qr_Os01CCNPJ: TFloatField;
    Qr_Os01CIE: TStringField;
    Qr_Os01CRG: TStringField;
    Qr_Os01OS1CODTEC: TFloatField;
    Qr_Os01nomtec: TStringField;
    Qr_Os01OS1HORADEV: TStringField;
    Qr_Os01OS1HORAENT: TStringField;
    Qr_Os01CFONE01: TStringField;
    Qr_Os01CDENOM: TStringField;
    Qr_Os01OS1DESCBAIXA: TMemoField;
    mObs: TMemo;
    Up_Os01: TUpdateSQL;
    bbGravar: TBitBtn;
    btnImprimir: TButton;
    Qr_Os02: TQuery;
    Qr_Os02OS2CODEMP: TFloatField;
    Qr_Os02OS2LOTSEQ: TFloatField;
    Qr_Os02OS2CHAVE: TFloatField;
    Qr_Os02OS2ITEM: TFloatField;
    Qr_Os02OS2CODPRO: TFloatField;
    Qr_Os02OS2MODELO: TStringField;
    Qr_Os02OS2MARCA: TStringField;
    Qr_Os02OS2SERIE: TStringField;
    Qr_Os02OS2NUMPAT: TStringField;
    Qr_Os02PDNOME: TStringField;
    Qr_Os02PDUND: TStringField;
    Qr_Os02OS2OBS01: TStringField;
    Qr_Os02OS2OBS02: TStringField;
    Qr_Os05: TQuery;
    Qr_Os05OS5CODEMP: TFloatField;
    Qr_Os05OS5LOTSEQ: TFloatField;
    Qr_Os05OS5CHAVE: TFloatField;
    Qr_Os05OS5ITEM: TFloatField;
    Qr_Os05OS5CODPRO: TFloatField;
    Qr_Os05OS5QTD: TFloatField;
    Qr_Os05OS5PU: TFloatField;
    Qr_Os05OS5DESC01: TFloatField;
    Qr_Os05OS5TOTDES: TFloatField;
    Qr_Os05PDNOME: TStringField;
    Qr_Os05PDUND: TStringField;
    Qr_Os05D: TQuery;
    Qr_Os05DOS5DCODEMP: TFloatField;
    Qr_Os05DOS5DLOTSEQ: TFloatField;
    Qr_Os05DOS5DCHAVE: TFloatField;
    Qr_Os05DOS5DITEM: TFloatField;
    Qr_Os05DOS5DCODPRO: TFloatField;
    Qr_Os05DOS5DLINHA: TFloatField;
    Qr_Os05DOS5DDESC: TStringField;
    Qr_Os04: TQuery;
    Qr_Os04OS4CODEMP: TFloatField;
    Qr_Os04OS4LOTSEQ: TFloatField;
    Qr_Os04OS4CHAVE: TFloatField;
    Qr_Os04OS4ITEM: TFloatField;
    Qr_Os04OS4CODPRO: TFloatField;
    Qr_Os04OS4QTD: TFloatField;
    Qr_Os04OS4PU: TFloatField;
    Qr_Os04OS4DESC01: TFloatField;
    Qr_Os04OS4TOTDES: TFloatField;
    Qr_Os04PDNOME: TStringField;
    Qr_Os04PDUND: TStringField;
    Qr_Os03: TQuery;
    Qr_Os03OS3CODEMP: TFloatField;
    Qr_Os03OS3LOTSEQ: TFloatField;
    Qr_Os03OS3CHAVE: TFloatField;
    Qr_Os03OS3ITEM: TFloatField;
    Qr_Os03OS3CODPRO: TFloatField;
    Qr_Os03OS3QTD: TFloatField;
    Qr_Os03PDNOME: TStringField;
    Qr_Os03PDUND: TStringField;
    Query1: TQuery;
    procedure btnBuscarClick(Sender: TObject);
    procedure Qr_Os01AfterDelete(DataSet: TDataSet);
    procedure Qr_Os01AfterPost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure Qr_Os01CalcFields(DataSet: TDataSet);
    procedure bbGravarClick(Sender: TObject);
    procedure CODTECKeyPress(Sender: TObject; var Key: Char);
    procedure CODTECExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function leros01(pcodemp, plotseq,pchave: Real): Boolean;
    function fManOS1Imprime(ptipo: Integer): Boolean;
    function fManOS1ImpCab(ptipo: Integer): Boolean;
    function fManos01TestaPag(ptipo: Integer): Boolean;
    procedure limparTela;
  public
    form_Impres_BxOs: TFrm_Impres;
    { Public declarations }
  end;

var
  Frm_BxOs: TFrm_BxOs;
  mOpOs2     : Integer=0;
  mOpOs5     : Integer=0;
  mOpOs4     : Integer=0;
  mOpOs3     : Integer=0;
  mItem      : Integer=0;
  mManOs_Oper: Integer=0;
  mchaveos     : Integer;
  mQtd       : Integer;
  mlin       : Integer=0;
  mPag       : Integer=0;
  os_origem  : String;
  os5Ser_ant : Integer;
  os4Pro_ant : Integer;

implementation

uses Func, lerarq, S_DM1, S_ConsOS, S_DM2, S_DM4 , func_excecoes;

{$R *.dfm}

procedure TFrm_BxOs.limparTela;
begin
CHAVE.Text   :='';
MDATA.Text   :='';
CODCLI.Text  :='';
NOMCLI.Text  :='';
ENDERECO.Text:='';
BAIRRO.Text  :='';
CIDADE.Text  :='';
CEP.Text     :='';
CODVEN.Text  :='';
CODTEC.Text  :='';
CHAVEPED.Text:='';
NOMVEN.Text  :='';
NOMTEC.Text  :='';
NOMAUT.Text  :='';
DATAAUT.Text:='/  /';
DATASAI.Text:='/  /';
DATAENT.Text:='/  /';
HORAENT.Text:='';
RG_OPER.ItemIndex:=0;
mObs.Lines.Clear;
end;

function TFrm_BxOs.leros01(pcodemp, plotseq,pchave: Real): Boolean;
begin
Qr_Os01.Close;
Qr_Os01.SQL.Clear;
Qr_Os01.SQL.Add('Select  OS1CODEMP, '
               +'        OS1LOTSEQ, '
               +'        OS1CHAVE, '
               +'        OS1DATA, '
               +'        OS1DATAAUT, '
               +'        OS1NOMEAUT, '
               +'        OS1DATADEV, '
               +'        OS1HORADEV, '
               +'        OS1DATAENT, '
               +'        OS1HORAENT, '
               +'        OS1CODCLI, '
               +'        OS1CODVEN, '
               +'        OS1CODTEC, '
               +'        OS1OPER, '
               +'        OS1DEFREC, '
               +'        OS1OBS01, '
               +'        OS1OBS02, '
               +'        OS1OBS03, '
               +'        OS1OBS04, '
               +'        OS1STATUS,'
               +'        OS1LOTSEQ_CP, '
               +'        OS1CHAVEPED, '
               +'        OS1TOTAL, '
               +'        OS1TOTSER, '
               +'        OS1DESCSER, '
               +'        OS1TOTPEC, '
               +'        OS1DESCPEC, '
               +'        OS1ESTREG, '
               +'        OS1DATALT, '
               +'        OS1CODUSR, '
               +'        OS1NOMSOL, '
               +'        OS1DESCBAIXA, '
               +'        CRAZAO,CLOG, '
               +'        CBAIRRO,CCIDADE,CUF, '
               +'        CCEP, CFONE01, CFAX, CFAX,CCPF,CCNPJ,CIE,CRG,CDENOM '

               +'        from CADOS01,CADCLI where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+FloatToStr(pcodemp)+' and ')
               +'        OS1LOTSEQ=0'+FloatTostr(plotseq)
               +'   and  OS1CHAVE=0'+FloatTostr(pchave)
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=OS1CODEMP ')
               +' and CCODCLI=OS1CODCLI ');
Qr_Os01.Open;
if Qr_Os01.Eof then
  Result:=False
else
  Result:=true;

end;



procedure TFrm_BxOs.btnBuscarClick(Sender: TObject);
begin
if Trim(CHAVE.Text)='' then
  begin
  Application.CreateForm(TFrm_ConsOS, Frm_ConsOS);
  Frm_ConsOS.ShowModal;
  CHAVE.Text := Frm_ConsOS.Qr_Os01OS1CHAVE.AsString;
  Frm_ConsOS.Free;
  end;

if not leros01(codemp,0,ValFloat(CHAVE.Text)) then
  begin
  fMensagem('Chave não Encontrada!',0,['0'],0);
  exit;
  end;
if Qr_Os01OS1STATUS.Value=0 then
  begin
  fMensagem('Ordem de Serviço em Aberto!!',0,['0'],0);
  exit;
  end
else if Qr_Os01OS1STATUS.Value=9 then
  begin
  fMensagem('Chave Excluida!',0,['0'],0);
  exit;
  end;
//CHAVE.Text:=Qr_Os01OS1CHAVE.AsString;
if (Qr_Os01OS1DATA.IsNull) or (Qr_Os01OS1DATA.Value<=pdatanula) then
  MDATA.Text:='/  /'
else
  MDATA.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATA.Value);
CODCLI.Text  :=Qr_Os01OS1CODCLI.AsString;
NOMCLI.Text  :=Qr_Os01CRAZAO.AsString;
ENDERECO.Text:=Qr_Os01CLOG.AsString;
BAIRRO.Text  :=Qr_Os01CBAIRRO.AsString;
CIDADE.Text  :=Qr_Os01CCIDADE.Value+'-'+Qr_Os01CUF.Value;
CEP.Text     :=Qr_Os01CCEP.Value;
CODVEN.Text  :=Qr_Os01OS1CODVEN.AsString;
CODTEC.Text  :=Qr_Os01OS1CODTEC.AsString;
CHAVEPED.Text:=Qr_Os01OS1CHAVEPED.AsString;
NOMVEN.Text  :=Qr_Os01nomven.AsString;
NOMTEC.Text  :=Qr_Os01nomtec.AsString;
NOMSOL.Text  :=Qr_Os01OS1NOMSOL.AsString;
NOMAUT.Text  :=Qr_Os01OS1NOMEAUT.AsString;
if (Qr_Os01OS1DATAAUT.IsNull) or (Qr_Os01OS1DATAAUT.Value<=pdatanula) then
  DATAAUT.Text:='/  /'
else
  DATAAUT.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATAAUT.Value);
if (Qr_Os01OS1DATADEV.IsNull) or (Qr_Os01OS1DATADEV.Value<=pdatanula) then
  DATASAI.Text:='/  /'
else
  DATASAI.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATADEV.Value);
HORASAI.Text   :=Qr_Os01OS1HORADEV.Value;
if (Qr_Os01OS1DATAENT.IsNull) or (Qr_Os01OS1DATAENT.Value<=pdatanula) then
  DATAENT.Text:='/  /'
else
  DATAENT.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATAENT.Value);
HORAENT.Text     :=Qr_Os01OS1HORAENT.Value;
RG_OPER.ItemIndex:=Qr_Os01OS1OPER.AsInteger;
mObs.Text := Qr_Os01OS1DESCBAIXA.AsString;

if not Qr_Os01.IsEmpty then
  begin
  Qr_Os02.Close;
  Qr_Os02.SQL.Clear;
  Qr_Os02.SQL.add('Select OS2CODEMP, '
                 +'       OS2LOTSEQ, '
                 +'        OS2CHAVE, '
                 +'         OS2ITEM, '
                 +'        OS2CODPRO, '
                 +'        OS2MODELO, '
                 +'        OS2MARCA, '
                 +'        OS2SERIE, '
                 +'        OS2NUMPAT, '
                 +'        OS2OBS01, '
                 +'        OS2OBS02, '
                 +'        PDNOME,PDUND from CADOS02,CADPRO '
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS2CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                 +' OS2LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                 +' and OS2CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS2CODEMP ')
                 +' and PDCODPRO=OS2CODPRO'
                 +' order by OS2ITEM ');
  Qr_Os02.Open;
  Qr_Os03.Close;
  Qr_Os03.SQL.Clear;
  Qr_Os03.SQL.add('Select OS3CODEMP, '
                 +'       OS3LOTSEQ, '
                 +'       OS3CHAVE, '
                 +'       OS3ITEM, '
                 +'       OS3CODPRO, '
                 +'       OS3QTD, '
                 +'       PDNOME,PDUND from CADOS03,CADPRO '
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS3CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                 +'OS3LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                 +'   and OS3CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS3CODEMP ')
                 +' and PDCODPRO=OS3CODPRO'
                 +' order by OS3ITEM ');
  Qr_Os03.Open;
  Qr_Os04.Close;
  Qr_Os04.SQL.Clear;
  Qr_Os04.SQL.add('Select OS4CODEMP, '
                 +'       OS4LOTSEQ, '
                 +'        OS4CHAVE, '
                 +'        OS4ITEM, '
                 +'        OS4CODPRO, '
                 +'        OS4QTD, '
                 +'        OS4PU, '
                 +'        OS4DESC01, '
                 +'       OS4TOTDES, '
                 +'       PDNOME,PDUND from CADOS04,CADPRO '
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS4CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                 +' OS4LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                 +' and OS4CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS4CODEMP ')
                 +' and PDCODPRO=OS4CODPRO'
                 +' order by OS4ITEM ');
  Qr_Os04.Open;
  Qr_Os05.Close;
  Qr_Os05.SQL.Clear;
  Qr_Os05.SQL.add('Select OS5CODEMP, '
                 +'        OS5LOTSEQ, '
                 +'        OS5CHAVE, '
                 +'        OS5ITEM, '
                 +'        OS5CODPRO, '
                 +'        OS5QTD, '
                 +'        OS5PU, '
                 +'        OS5DESC01, '
                 +'        OS5TOTDES, '
                 +'        PDNOME,PDUND from CADOS05,CADPRO '
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                 +' OS5LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                 +' and OS5CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS5CODEMP ')
                 +' and PDCODPRO=OS5CODPRO'
                 +' order by OS5ITEM ');
  Qr_Os05.Open;
  Qr_Os05D.Close;
  Qr_Os05D.SQL.Clear;
  Qr_Os05D.SQL.add('Select OS5DCODEMP, '
                 +'        OS5DLOTSEQ, '
                 +'        OS5DCHAVE, '
                 +'        OS5DITEM, '
                 +'        OS5DCODPRO, '
                 +'        OS5DLINHA, '
                 +'        OS5DDESC from CADOS05D '
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5DCODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                 +' OS5DLOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                 +' and OS5DCHAVE=0'+Qr_Os01OS1CHAVE.AsString
                 +' order by OS5DITEM,OS5DLINHA ');
  Qr_Os05D.Open;
  end;
end;

procedure TFrm_BxOs.Qr_Os01AfterDelete(DataSet: TDataSet);
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

procedure TFrm_BxOs.Qr_Os01AfterPost(DataSet: TDataSet);
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

procedure TFrm_BxOs.btnGravarClick(Sender: TObject);
begin
Qr_Os01.Edit;
Qr_Os01OS1DESCBAIXA.AsString  :=mObs.Text;
Qr_Os01OS1NOMSOL.AsString     :=NOMSOL.Text;
Qr_Os01OS1OPER.AsInteger      :=RG_OPER.ItemIndex;
Qr_Os01OS1DATAENT.AsString    :=DATAENT.Text;
Qr_Os01OS1HORAENT.AsString    :=HORAENT.Text;
Qr_Os01OS1DATADEV.AsString    :=DATASAI.Text;
Qr_Os01OS1HORADEV.AsString    :=HORASAI.Text;
Qr_Os01OS1CODTEC.AsInteger    :=StrToInt(CODTEC.Text);
Qr_Os01.Post;
end;

procedure TFrm_BxOs.Qr_Os01CalcFields(DataSet: TDataSet);
begin
flcadfun(1,0,Qr_Os01OS1CODTEC.AsString);
Qr_Os01nomtec.AsString := DM2.Tb_FunCFNOMFUN.AsString;
flcadven(1,0,Qr_Os01OS1CODVEN.AsString);
Qr_Os01nomven.AsString := DM1.Tb_VenVNOME.AsString;
end;

procedure TFrm_BxOs.bbGravarClick(Sender: TObject);
var
  dt1, dt2 : String;
begin
try
  StrToDate(DATAENT.Text);
  dt1 := DATAENT.Text;
except
  dt1 := '01/01/1900';
  end;
try
  StrToDate(DATASAI.Text);
  dt2 := DATASAI.Text;
except
  dt2 := '01/01/1900';
  end;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' update CADOS01 set OS1DESCBAIXA ='+QuotedStr(mObs.Text)+','
              +' OS1NOMSOL ='+QuotedStr(NOMSOL.Text)+', OS1OPER='+IntToStr(RG_OPER.ItemIndex)+','
              +' OS1DATAENT = '+QuotedStr(dt1)+', OS1HORAENT = '+QuotedStr(HORAENT.Text)+','
              +' OS1DATADEV = '+QuotedStr(dt2)+', OS1HORADEV = '+QuotedStr(HORASAI.Text)+','
              +' OS1CODTEC ='+CODTEC.Text+' where OS1CHAVE = '+Qr_Os01OS1CHAVE.AsString+' and '
              +' OS1CODEMP ='+Qr_Os01OS1CODEMP.AsString+' and OS1LOTSEQ ='+Qr_Os01OS1LOTSEQ.AsString);
try
  Query1.ExecSQL;
  fmensagem('Gravado!',0,['0'],0);
except
  ex_erroSql_Novo(Query1,520,'s_BxOs','CADOS01');
  end;
end;

procedure TFrm_BxOs.CODTECKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEC.Text:=fChamafun(0,'frm_manos',key);
   CODTECExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_BxOs.CODTECExit(Sender: TObject);
begin
if ValFloat(CODTEC.Text)=0 then
   begin
   CODTEC.Text:='';
   NOMTEC.Text:='';
   exit;
   end;
CODTEC.Text:=fdeixanum(CODTEC.Text);

if flcadfun(1,0,CODTEC.Text) then
   begin
   NOMTEC.Text  :=DM2.Tb_FunCFNOMFUN.Value;
   end
else
   begin
   fMensagem('Funcionário não Cadastrado!',0,['0'],0);
   CODTEC.SetFocus;
   end;

end;

procedure TFrm_BxOs.FormCreate(Sender: TObject);
begin
Qr_Os01.Close;
end;

procedure TFrm_BxOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;


function TFrm_BxOs.fManOS1Imprime(ptipo: Integer): Boolean;
var
  mImpCab: Boolean;
  x,y,z: Integer;
  mlinha: String;
  xTotal: Real;
begin
Qr_Os01.First;
testeform := TFrm_BxOs(FindGlobalComponent('form_Impres_BxOs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_BxOs);

form_Impres_BxOs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Os01.Eof do
   begin
   mpag:=0;
   mlin:=0;
   fManOS1ImpCab(0);
   Qr_Os02.First;
   mImpCab:=True;
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   x:=0;
   if flcadser01(0,Qr_Os01OS1CODCLI.AsString,'') then
      begin
      While not DM4.Tb_CSer01.Eof do
         begin
         mlin:=mlin+1;
         form_Impres_BxOs.RDprint1.impf(mlin,01,'Objeto: '+insere2(DM4.Tb_CSer01nompro.Value,' ',50)
                                 +' Marca: '+insere2(' ',' ',30)
                                 +' Modelo: '+insere2(' ',' ',27),mreduz);
         mlin:=mlin+1;
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere2('-','-',131)+'+',mreduz);
         DM4.Tb_CSer01.Next;
         end;
      end;

{
Objeto: 12345678901234567890123456789012345678901234567890 Marca: 123456789012345678901234567890 Modelo: 123456789012345678901234567
Serie.: 12345678901234567890  Qtd.Ramais Analogicos: 1234567890 Digitais: 1234567890   Qtd.Mesas: 1234567890 Qtd.Troncos: 1234567890

Objeto: 12345678901234567890123456789012345678901234567890 Marca: 1234567890123456789012345678901234567890 Modelo: 12345678901234567
Serie.: 12345678901234567890  Qtd.Ramais Analogicos: 1234567890 Digitais: 1234567890   Qtd.Mesas: 1234567890 Qtd.Troncos: 1234567890

      end;
 }
   While not Qr_Os02.Eof do
      begin
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'Objeto: '+insere2((Qr_Os02OS2CODPRO.AsString+' - '+Qr_Os02PDNOME.Value),' ',45)
                              +' Fabric: '+Insere2(Qr_Os02OS2MARCA.Value,' ',20)
                              +' Modelo: '+Insere2(Qr_Os02OS2MODELO.Value,' ',20)
                              +' Série: '+Insere2(Qr_Os02OS2SERIE.Value,' ',20),mreduz);
      if (Trim(Qr_Os02OS2OBS01.Value)<>'') or (Trim(Qr_Os02OS2OBS02.Value)<>'') then
         begin
         if Trim(Qr_Os02OS2OBS01.Value)<>'' then
            begin
            fManos01TestaPag(0);
            mlin:=mlin+1;
            form_Impres_BxOs.RDprint1.ImpF(mlin,01,Qr_Os02OS2OBS01.Value,mreduz);
            end;
         if Trim(Qr_Os02OS2OBS02.Value)<>'' then
            begin
            fManos01TestaPag(0);
            mlin:=mlin+1;
            form_Impres_BxOs.RDprint1.ImpF(mlin,01,Qr_Os02OS2OBS02.Value,mreduz);
            end;
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end
      else
         begin
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      Qr_Os02.Next;
      end;
{
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'Objeto: '+insere2('_','_',45)
                              +' Fabric: '+Insere2('_','_',20)
                              +' Modelo: '+Insere2('_','_',20)
                              +' Série: '+Insere2('_','_',20),mreduz);
      fManos01TestaPag(0);
      mlin:=mlin+1;
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
      end;
 }
   mlin:=mlin+1;
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,Centra('DEFEITO RECLAMADO E/OU SERVICOS',' ',80),mneg);
   fManos01TestaPag(0);
   x:=0;
   z:=1;
   while (z < length(Qr_Os01OS1DEFREC.AsString))do
     begin
     mlin:=mlin+1;
     form_Impres_BxOs.RDprint1.ImpF(mlin,01,Copy(Qr_Os01OS1DEFREC.AsString,z,130),mnormal);
     x := x + 1;
     z := z + 130;
     end;

   if x<3 then
      begin
      for y:=x to 3 do
         begin
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,' ',mreduz);
         end;
      end;
// serviços executados

   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,Centra('SERVICOS EXECUTADOS',' ',80),mneg);
   x:=0;
   xTotal:=0;
   Qr_Os05.First;
   while not Qr_Os05.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                                                        |  Valor Total  |',mreduz);
         end;
{
|Item|Quantidade |und|    Código     | Descricao dos Servicos                                      |Preco Unitario |  Valor Total  |
| 123|123456.123 |123|12345678901234 | 123456789012345678901234567890123456789012345678901234567890|ZZZ.ZZZ.ZZ9,99 |ZZZ.ZZZ.ZZ9,99 |
}
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      mlinha:='|'+insere(FormatFloat('###0', Qr_Os05OS5ITEM.Value),' ',05)
             +'|'+insere(FormatFloat(mcasqtd, Qr_Os05OS5QTD.Value),' ',11)
             +' |'+Centra(Qr_Os05OS5CODPRO.AsString,' ',14)+'| ';
      Qr_Os05D.First;
      if Qr_Os05D.Locate('OS5DCODEMP;OS5DLOTSEQ;OS5DCHAVE;OS5DITEM',
                         vararrayof([Qr_Os05OS5CODEMP.Value,
                                     Qr_Os05OS5LOTSEQ.Value,
                                     Qr_Os05OS5CHAVE.Value,
                                     Qr_Os05OS5ITEM.Value]),[]) then
          begin
          mlin:=mlin-1;
          While (not (Qr_Os05D.Eof) and
            (Qr_Os05DOS5DCODEMP.Value =Qr_Os05OS5CODEMP.Value) and
            (Qr_Os05DOS5DLOTSEQ.Value =Qr_Os05OS5LOTSEQ.Value)  and
               (Qr_Os05DOS5DCHAVE.Value  =Qr_Os05OS5CHAVE.Value)  and
               (Qr_Os05DOS5DITEM.Value     =Qr_Os05OS5ITEM.Value))  do
            begin
            mlinha:=mlinha+insere2(Qr_Os05DOS5DDESC.Value,' ',62);
            Qr_Os05D.Next;
            if (Qr_Os05D.Eof)
               or (Qr_Os05DOS5DCODEMP.Value<>Qr_Os05OS5CODEMP.Value)
               or (Qr_Os05DOS5DLOTSEQ.Value<>Qr_Os05OS5LOTSEQ.Value)
               or (Qr_Os05DOS5DCHAVE.Value <>Qr_Os05OS5CHAVE.Value)
               or (Qr_Os05DOS5DITEM.Value  <>Qr_Os05OS5ITEM.Value)  then
               begin
               mlinha:=mlinha+' '+insere(' ',' ',14)
                      +' |'+insere(FormatFloat(mcasas, (Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)),' ',14)+' |';
               end
            else
               mlinha:=mlinha+'                |               |';
            mlin:=mlin+1;
            x:=x+1;
            fManos01TestaPag(0);
            form_Impres_BxOs.RDprint1.ImpF(mlin,01,mlinha,mreduz);
            mlinha:='|     |            |               | '
            end;
         end
      else
         begin
         mlinha:=mlinha+insere2(Qr_Os05PDNOME.Value,' ',62)
                +' '+insere(' ',' ',14)
                +'  |'+insere(FormatFloat(mcasas, (Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)-Qr_Os05OS5TOTDES.Value),' ',14)+' |';
         xTotal:=xTotal+(Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)-Qr_Os05OS5TOTDES.Value;
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,mlinha,mreduz);
         end;
      Qr_Os05.Next;
      end;
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                                                        |  Valor Total  |',mreduz);
      end;

   if x<10 then
      begin
      for y:=x to 9 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______________|_______________________________________________________________________________|_______________|',mreduz);
//         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|00000|>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>TOTAL DOS SERVIÇOS PRESTADOS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>|'+Insere(formatfloat(mcasas,xTotal),' ',15)+'|',mreduz);
//TOTAL
      end;
// pecas utilizadas

   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,Centra('PECAS UTILIZADAS',' ',80),mneg);
   x:=0;
   Qr_Os04.First;
   while not Qr_Os04.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  Descricao das Pecas                                                          |Preco Unitario |  Valor Total  |',mreduz);
         end;
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|'+insere(FormatFloat('###0', Qr_Os04OS4ITEM.Value),' ',04)
                              +' | '+insere(FormatFloat(mcasqtd, Qr_Os04OS4QTD.Value),' ',10)
                              +' | '+insere2(Qr_Os04PDNOME.Value,' ',77)
                              +' |'+insere(FormatFloat(mcasaspu, Qr_Os04OS4PU.Value),' ',14)
                              +' |'+insere(FormatFloat(mcasas, (Qr_Os04OS4PU.Value*Qr_Os04OS4QTD.Value)),' ',14)+' |',mreduz);
      Qr_Os04.Next;
      end;



//|Item | Quantidade |  und  |     Código     | Descricao dos Servicos                             | Preco Unitario |    Valor Total |
//  123   1234567890    123    12345678901234   123456789012345678901234567890123456789001234567890| zzz.zzz.zz9,99 | zzz.zzz.zz9,99 |

   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  Descricao das Pecas                                                          |Preco Unitario |  Valor Total  |',mreduz);
      end;

   if x<6 then
      begin
      for y:=x to 6 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______________________________________________________________________________|_______________|_______________|',mreduz);
         end;
      end;

// acessorios


   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_BxOs.RDprint1.ImpF(mlin,01,Centra('ITENS PARA CONSERTOS EM LABORATORIOS',' ',80),mneg);
   x:=0;
   Qr_Os03.First;
   while not Qr_Os03.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  und  | Descricao dos Itens                                                                                   |',mreduz);
         end;
      mlin:=mlin+1;
      fManos01TestaPag(0);

      x:=x+1;
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|'+insere(FormatFloat('###0', Qr_Os03OS3ITEM.Value),' ',04)
                              +' |'+insere(FormatFloat(mcasqtd, Qr_Os03OS3QTD.Value),' ',12)
                              +'|  '+insere2(Qr_Os03PDUND.Value,' ',4)
                              +' |'+insere2(Qr_Os03PDNOME.Value,' ',102)+'|',mreduz);
      Qr_Os03.Next;
      end;
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  und  | Descricoes dos Itens                                                                                  |',mreduz);
      end;

//|Item | Quantidade |  und  |     Código     | Descricao dos Servicos                             | Preco Unitario |    Valor Total |
//  123   1234567890    123    12345678901234   123456789012345678901234567890123456789001234567890| zzz.zzz.zz9,99 | zzz.zzz.zz9,99 |


   if x<2 then
      begin
      for y:=x to 2 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______|_______________________________________________________________________________________________________|',mreduz);

//         form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      end;
    mlin:=mlin+1;
    form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
    mlin:=mlin+1;
    form_Impres_BxOs.RDprint1.ImpF(mlin,01,Centra('BAIXA TECNICA',' ',80),mneg);
    mlin:=mlin+1;
    form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere2('Descricao da baixa tecnica.',' ',130)+'+',mreduz);
    z:=1;
    while (z < length(Qr_Os01OS1DESCBAIXA.AsString)) do
      begin
      mlin:=mlin+1;
      form_Impres_BxOs.RDprint1.ImpF(mlin,01,Copy(Qr_Os01OS1DESCBAIXA.AsString,z,130),mreduz);
      z := z + 130;
      end;
   mlin:=mlin+1;
   Qr_OS01.Next;
   end;
mlin:=mlin+1;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
mlin:=mlin+1;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,'RECEBI OS SERVICOS E/OU MATERIAIS CONSTANTE NESTA OS',mreduz);
mlin:=mlin+2;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,'                                                                          Data:    /   /          Horario de Entrada: ______:_______',mreduz);
mlin:=mlin+2;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,'                                                                          Data:    /   /          Horario de Saida  : ______:_______',mreduz);
mlin:=mlin+3;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,'____________________________________                                                              __________________________________',mreduz);
mlin:=mlin+1;
fManos01TestaPag(0);
form_Impres_BxOs.RDprint1.ImpF(mlin,01,' Assinatura do Cliente por extenso                                                                              Tecnico',mreduz);
mlin:=mlin+1;
form_Impres_BxOs.RDprint1.ImpF(mlin,01,insere2('=','=',132),mreduz);


{
RECEBI OS SERVICOS E/OU MATERIAIS CONSTANTE NESTA OS
                                                                          Data:    /   /          Horario de Entrada: ______:_______
                                                                          Data:    /   /          Horario de Saida  : ______:_______
____________________________________                                                              __________________________________
 Assinatura do Cliente por extenso                                                                              Tecnico
}
if form_Impres_BxOs.RDprint1.Setup then form_Impres_BxOs.RDprint1.Fechar;
form_Impres_BxOs.free;
form_Impres_BxOs:=nil;
result:=true;
end;

function TFrm_BxOS.fManOS1ImpCab(ptipo: Integer): Boolean;
var
mLin_Cab: Integer;
begin
mLin_Cab:=1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere2('-','-',130)+'+',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)              +' Ordem de Servico: '+Formatfloat('000000', Qr_Os01OS1CHAVE.Value)+insere2(' ',' ',45)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_cab,01,'|'+insere2('Endereco: '+DM1.Tb_EmpENDERECO.Value,' ',60)  +' Data.......: '+FormatdateTime(fdt2, Qr_Os01OS1DATA.Value)  +insere2(' ',' ',46)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_cab,01,'|'+insere2('Bairro..: '+DM1.Tb_EmpBAIRRO.Value  ,' ',60)  +' Cidade.....: '+insere2(Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value,' ',56) +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Fone....: '+DM1.Tb_EmpFONE.Value    ,' ',60)  +' Fax........: '+insere2(DM1.Tb_EmpFAX.Value,' ',56) +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere2('-','-',130)+'+',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Cliente.: '+Qr_Os01OS1CODCLI.AsString+'-'+Qr_Os01CRAZAO.Value     ,' ',60)  +' Solicitante: '+insere2(Qr_Os01OS1NOMSOL.Value,' ',56)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Fantasia: '+Qr_Os01CDENOM.AsString,' ',60)  +'              '+insere2(' ',' ',56)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;

form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Endereco: '+Trim(Qr_Os01CLOG.Value)+' '+Qr_Os01CBAIRRO.Value,' ',60)          +' Cidade.....: '+insere2(Trim(Qr_Os01CCIDADE.Value)+'-'+Qr_Os01CUF.Value,' ',42)+' CEP:' +insere2(Qr_Os01CCEP.Value,' ',9)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;
if Qr_Os01CCNPJ.Value>0 then
   form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('CNPJ....: '+FormatFloat('00"."000"."000/0000-00',Qr_Os01CCNPJ.Value),' ',30)+' Ins.Est: '+insere2(Qr_Os01CIE.Value,' ',20)
                                  +' Telefone...: '+insere2(Qr_Os01CFONE01.Value,' ',22)
                                  +' Fax........: '+insere2(Qr_Os01CFAX.Value,' ',20)+'|',mreduz)
else
   form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('CPF.....: '+FormatFloat('000"."000"."000-00',Qr_Os01CCPF.Value),' ',26)+' Reg.Geral..: '+insere2(Qr_Os01CRG.Value,' ',20)
                                  +' Telefone...: '+insere2(Qr_Os01CFONE01.Value,' ',22)
                                  +' Fax........: '+insere2(Qr_Os01CFAX.Value,' ',20)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;

form_Impres_BxOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere('-','-',130)+'+',mreduz);
mlin:=mLin_Cab;
result:=true;
end;

function TFrm_BxOS.fManos01TestaPag(ptipo: Integer): Boolean;
begin
if mlin>60 then
   begin
   form_Impres_BxOs.RDprint1.Novapagina;
   fManOS1ImpCab(0);
   result:=true
   end
else
   result:=False;
end;


procedure TFrm_BxOs.btnImprimirClick(Sender: TObject);
begin
fManOS1Imprime(0);
end;

end.
