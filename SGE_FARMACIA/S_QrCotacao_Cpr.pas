unit S_QrCotacao_Cpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RLReport, DB, DBTables;

type
  TQr_Cotacao_Cpr = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rlUnitario: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    Tb_CC1: TQuery;
    Src_CC1: TDataSource;
    Src_CC2: TDataSource;
    Tb_CC2: TQuery;
    Tb_CC1CCT1CODEMP: TFloatField;
    Tb_CC1CCT1CHAVE: TFloatField;
    Tb_CC1CCT1LOTSEQ: TFloatField;
    Tb_CC1CCT1OBS: TStringField;
    Tb_CC1CCT1DATA: TDateTimeField;
    Tb_CC1CCT1CASAS: TFloatField;
    Tb_CC2CCT2CODEMP: TFloatField;
    Tb_CC2CCT2CHAVE: TFloatField;
    Tb_CC2CCT2LOTSEQ: TFloatField;
    Tb_CC2CCT2CODPRO: TFloatField;
    Tb_CC2CCT2QTD: TFloatField;
    Tb_CC2CCT2OBS: TStringField;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Src_CC3: TDataSource;
    Tb_CC3: TQuery;
    Tb_CC3CCT3CODEMP: TFloatField;
    Tb_CC3CCT3CHAVE: TFloatField;
    Tb_CC3CCT3LOTSEQ: TFloatField;
    Tb_CC3CCT3CODFOR: TFloatField;
    Tb_CC3CCT3CODPRO: TFloatField;
    Tb_CC3CCT3PRECO: TFloatField;
    Tb_CC3CCT3QTD: TFloatField;
    Tb_CC3CCT3OBS: TMemoField;
    Tb_CC3CCT3PRAZO: TFloatField;
    RLDBText6: TRLDBText;
    Tb_CC3xTotal: TFloatField;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    Tb_CC3NOMPRO: TStringField;
    RLDBText9: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText11: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    rl_banner: TRLLabel;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    rlTotall: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText12: TRLDBText;
    Tb_CC3NOMFOR: TStringField;
    rlGrupo: TRLReport;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText17: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLBand7: TRLBand;
    RLLabel20: TRLLabel;
    Tb_Grupo: TQuery;
    Tb_GrupoCCT2CHAVE: TFloatField;
    Tb_GrupoCCT2CODPRO: TFloatField;
    Tb_GrupoPDNOME: TStringField;
    Tb_GrupoCCT2QTD: TFloatField;
    Tb_GrupoCCT3CODFOR: TFloatField;
    Tb_GrupoCCT3QTD: TFloatField;
    Tb_GrupoCCT3PRECO: TFloatField;
    Tb_GrupoTOTAL: TFloatField;
    Tb_GrupoCCT3PRAZO: TFloatField;
    RLGroup1: TRLGroup;
    Src_Grupo: TDataSource;
    RLBand9: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand6: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLBand8: TRLBand;
    RLLabel21: TRLLabel;
    rlTotGerGrupo: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText18: TRLDBText;
    Tb_GrupoFRAZAO: TStringField;
    Tb_CC3CCT2NOMPRO: TStringField;
    Tb_CC3CCT2UNDPRO: TStringField;
    RLcab_det: TRLBand;
    rlCodPro: TRLLabel;
    rlNomPro: TRLLabel;
    rlPreco: TRLLabel;
    rlQtd: TRLLabel;
    rlTotal: TRLLabel;
    rlPrazo: TRLLabel;
    rlcab_obs: TRLLabel;
    RLDBText25: TRLDBText;
    Tb_CC3preco_imp: TStringField;
    Tb_CC3total_imp: TStringField;
    Tb_CC3obs_imp: TStringField;
    lbl_CCT2UNDPRO: TRLLabel;
    rldb_CCT2UNDPRO: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText26: TRLDBText;
    Tb_GrupoPDUND: TStringField;
    procedure Tb_CC3CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlUnitarioBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    xTotGer : Double;
  public
    { Public declarations }
    function AbreBanco(Codemp, Lotseq, Chave, CodFor: Integer): Boolean;
    function AbreBanco2(Codemp, Lotseq, Chave, CodFor: Integer): Boolean;
  end;

var
  Qr_Cotacao_Cpr: TQr_Cotacao_Cpr;

implementation

uses S_DM1, Math, lerarq, Func, func_excecoes;

{$R *.dfm}
function TQr_Cotacao_Cpr.AbreBanco2(Codemp, Lotseq, Chave, CodFor: Integer): Boolean;
begin
Tb_CC1.Close;
Tb_CC1.SQL.Clear;
Tb_CC1.SQL.Add(' select * from CADCOT1 where 1=1 ');
Tb_CC1.SQL.Add(' and CCT1CODEMP='+IntToStr(Codemp));
Tb_CC1.SQL.Add(' and CCT1LOTSEQ='+IntToStr(Lotseq));
Tb_CC1.SQL.Add(' and CCT1CHAVE ='+IntToStr(Chave));
Tb_CC1.Open;
if Tb_CC1.IsEmpty then
  Result := false
else
  begin
  Tb_Grupo.Close;
  Tb_Grupo.SQL.Clear;
  Tb_Grupo.SQL.Add(' select  CCT2CHAVE, CCT2CODPRO, CCT2NOMPRO AS PDNOME, CCT2UNDPRO AS PDUND,         '
                +' nvl(CCT2QTD,0) as CCT2QTD, CCT3CODFOR, FRAZAO,             '
                +' nvl(CCT3QTD,0) as CCT3QTD, nvl(CCT3PRECO,0) as CCT3PRECO,  '
                +' nvl(CCT3QTD,0)*nvl(CCT3PRECO,0) as Total, '
                +' nvl(CCT3PRAZO,0) CCT3PRAZO                '
                +' from CADCOT2,CADCOT3,  CADFOR '
                +' where CCT2CODEMP=CCT3CODEMP and CCT2CHAVE=CCT3CHAVE '
                +' and CCT2LOTSEQ=CCT3LOTSEQ  '
                +' and CCT3CODFOR=FCODFOR and CCT2ITEM=CCT3ITEM ');
  Tb_Grupo.SQL.Add(' and CCT2CODEMP='+IntToStr(Codemp));
  Tb_Grupo.SQL.Add(' and CCT2LOTSEQ='+IntToStr(Lotseq));
  Tb_Grupo.SQL.Add(' and CCT2CHAVE ='+IntToStr(Chave));
  Tb_Grupo.SQL.Add(' order by cct2chave, cct3codfor ');
  Tb_Grupo.Open;
  Result := True;
  end;
end;

function TQr_Cotacao_Cpr.AbreBanco(Codemp, Lotseq, Chave, CodFor: Integer): Boolean;
begin
Tb_CC1.Close;
Tb_CC1.SQL.Clear;
Tb_CC1.SQL.Add(' select * from CADCOT1 where 1=1 ');
Tb_CC1.SQL.Add(' and CCT1CODEMP='+IntToStr(Codemp));
Tb_CC1.SQL.Add(' and CCT1LOTSEQ='+IntToStr(Lotseq));
Tb_CC1.SQL.Add(' and CCT1CHAVE ='+IntToStr(Chave));
Tb_CC1.Open;
if Tb_CC1.IsEmpty then
  Result := false
else
  begin
  Tb_CC2.Close;
  Tb_CC2.SQL.Clear;
  Tb_CC2.SQL.Add(' select * from CADCOT2 where 1=1 ');
  Tb_CC2.SQL.Add(' and CCT2CODEMP='+IntToStr(Codemp));
  Tb_CC2.SQL.Add(' and CCT2LOTSEQ='+IntToStr(Lotseq));
  Tb_CC2.SQL.Add(' and CCT2CHAVE ='+IntToStr(Chave));
  Tb_CC2.Open;



  Tb_CC3.Close;
  TB_CC3.SQL.Clear;

  Tb_CC3.SQL.Add('Select CADCOT3.*,CCT2NOMPRO,CCT2UNDPRO  '
                +', case when CCT3PRECO>0 THEN  to_char(CCT3PRECO, '+QuotedStr('FM999G999G999D990')+')  else '
                +QuotedStr('_______________')+' end as preco_imp'
                +', case when CCT3PRECO>0 and CCT3QTD>0 THEN  to_char(CCT3PRECO*CCT3QTD, '
                +QuotedStr('FM999G999G999D90')+') else '+QuotedStr('_______________')+' end as total_imp'
                +','+QuotedStr('_______________________')+' as obs_imp '
                +' from CADCOT3,CADCOT2 '
                +' WHERE CCT3CODEMP=CCT2CODEMP '
                +' AND CCT3CHAVE=CCT2CHAVE '
               +'  AND CCT3LOTSEQ=CCT2LOTSEQ '
               +'  AND CCT3ITEM=CCT2ITEM'
               );
  Tb_CC3.SQL.Add(' and CCT3CODEMP='+IntToStr(Codemp));
  Tb_CC3.SQL.Add(' and CCT3LOTSEQ='+IntToStr(Lotseq));
  Tb_CC3.SQL.Add(' and CCT3CHAVE ='+IntToStr(Chave));
  if CodFor > 0 then
    Tb_CC3.SQL.Add(' and CCT3CODFOR ='+IntToStr(CodFor));
  try
     Tb_CC3.Open;
  except on e : exception do
      ex_erroSql_Novo(tb_CC3,236,'_stru'+e.message,'CADCCT3');
      end;


  Tb_CC3.SQL.savetofile(mpastatemp +'sqlteste.txt');
  Result := True;
  end;
end;


procedure TQr_Cotacao_Cpr.Tb_CC3CalcFields(DataSet: TDataSet);
begin
Tb_CC3xTotal.AsFloat := Tb_CC3CCT3QTD.AsFloat * Tb_CC3CCT3PRECO.AsFloat;
{
if not flcadpro(1,0,0,Tb_CC3CCT3CODPRO.AsString) then
  Tb_CC3NOMPRO.AsString:='Não Encontrado!'
else
  Tb_CC3NOMPRO.AsString:=DM1.Tb_ProPDNOME.AsString;
  }
if not flcadfor(1,0,Tb_CC3CCT3CODFOR.AsString) then
  Tb_CC3NOMFOR.AsString:='Não Encontrado!'
else
  Tb_CC3NOMFOR.AsString:=DM1.Tb_ForFCODFOR.AsString+' - '
                        +DM1.Tb_ForFRAZAO.AsString
                        +DM1.Tb_ForFFONEC01.AsString;
end;

procedure TQr_Cotacao_Cpr.FormCreate(Sender: TObject);
begin
Tb_CC3xTotal.DisplayFormat:=mcasas;
Tb_CC3CCT3PRECO.DisplayFormat:=MCASASPU;

end;

procedure TQr_Cotacao_Cpr.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_banner.Caption:=pBanner_Intersys;
end;

procedure TQr_Cotacao_Cpr.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xTotGer := xTotGer + Tb_CC3xTotal.AsFloat;
end;

procedure TQr_Cotacao_Cpr.rlUnitarioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xTotGer:=0;
end;

procedure TQr_Cotacao_Cpr.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlTotall.Caption := FormatFloat('#,##0.00',xTotGer);
end;

procedure TQr_Cotacao_Cpr.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xTotGer := xTotGer + Tb_GrupoTotal.AsFloat;
end;

procedure TQr_Cotacao_Cpr.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlTotGerGrupo.Caption := FormatFloat('#,##0.00',xTotGer);
xTotGer := 0;
end;

end.
