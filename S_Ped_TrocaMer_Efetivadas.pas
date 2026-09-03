unit S_Ped_TrocaMer_Efetivadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables;

type
  TFrm_Ped_TrocaMer_Efetivadas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_chaveped: TEdit;
    edt_datap: TEdit;
    edt_totall: TEdit;
    edt_razao: TEdit;
    memo_endereco: TMemo;
    GB_COTADAS: TGroupBox;
    GB_FATURADAS: TGroupBox;
    bbSair: TBitBtn;
    Qr_Cotadas: TQuery;
    Src_Cotadas: TDataSource;
    DBGrid_cotadas: TDBGrid;
    DBGrid_Faturadas: TDBGrid;
    Src_faturadas: TDataSource;
    Qr_Faturadas: TQuery;
    Qr_CotadasP2TRO_CODEMP: TFloatField;
    Qr_CotadasP2TRO_LOTSEQ: TFloatField;
    Qr_CotadasP2TRO_CHAVE: TFloatField;
    Qr_CotadasP2TRO_ITEM: TFloatField;
    Qr_CotadasP2TRO_CODPRO_ENTRA: TFloatField;
    Qr_CotadasP2TRO_LOTE_ENTRA: TStringField;
    Qr_CotadasP2TRO_DTVCTO_ENTRA: TDateTimeField;
    Qr_CotadasP2TRO_QTD_ENTRA: TFloatField;
    Qr_CotadasP2TRO_PCOUNI_ENTRA: TFloatField;
    Qr_FaturadasP2TRO_CODEMP: TFloatField;
    Qr_FaturadasP2TRO_LOTSEQ: TFloatField;
    Qr_FaturadasP2TRO_CHAVE: TFloatField;
    Qr_FaturadasP2TRO_ITEM: TFloatField;
    Qr_FaturadasP2TRO_CODPRO_ENTRA: TFloatField;
    Qr_FaturadasP2TRO_LOTE_ENTRA: TStringField;
    Qr_FaturadasP2TRO_DTVCTO_ENTRA: TDateTimeField;
    Qr_FaturadasP2TRO_QTD_ENTRA: TFloatField;
    Qr_FaturadasP2TRO_PCOUNI_ENTRA: TFloatField;
    Qr_FaturadasP2TRO_CODPRO_SAIDA: TFloatField;
    Qr_FaturadasP2TRO_LOTE_SAIDA: TStringField;
    Qr_FaturadasP2TRO_DTVCTO_SAIDA: TDateTimeField;
    Qr_FaturadasP2TRO_QTD_SAIDA: TFloatField;
    Qr_FaturadasP2TRO_PCOUNI_SAIDA: TFloatField;
    Qr_CotadasPDNOME: TStringField;
    Qr_CotadasPDUND: TStringField;
    Qr_CotadasTOTALBRU: TFloatField;
    Qr_FaturadasTOTALBRU: TFloatField;
    Qr_FaturadasPDNOME: TStringField;
    Qr_FaturadasPDUND: TStringField;
    Qr_Cotadasdtvcto_entra: TStringField;
    Qr_Faturadasdt_vcto_saida: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure Src_CotadasDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_TrocaMer_Efetivadas: TFrm_Ped_TrocaMer_Efetivadas;

implementation

uses S_DM1, lerarq, Func;

{$R *.dfm}

procedure TFrm_Ped_TrocaMer_Efetivadas.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_TrocaMer_Efetivadas.Src_CotadasDataChange(
  Sender: TObject; Field: TField);
begin

if not Qr_CotadasP2TRO_CODPRO_ENTRA.IsNull then
   begin
   if (not Qr_Faturadas.Active) or (Qr_CotadasP2TRO_CODPRO_ENTRA.AsFloat<>Qr_FaturadasP2TRO_CODPRO_ENTRA.AsFloat) then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2TRO_CODEMP','PDCODPRO','P2TRO_CODPRO_SAIDA');

      Qr_Faturadas.Close;
      Qr_Faturadas.SQL.Clear;
      Qr_Faturadas.SQL.Add('Select P2TRO_CODEMP, '
                          +'       P2TRO_LOTSEQ, '
                          +'  P2TRO_CHAVE, '
                          +'  P2TRO_ITEM, '
                          +'  P2TRO_CODPRO_ENTRA, '
                          +'  P2TRO_LOTE_ENTRA, '
                          +'  P2TRO_DTVCTO_ENTRA, '
                          +'  P2TRO_QTD_ENTRA, '
                          +'  P2TRO_PCOUNI_ENTRA, '
                          +'  P2TRO_CODPRO_SAIDA, '
                          +'  P2TRO_LOTE_SAIDA, '
                          +'  P2TRO_DTVCTO_SAIDA, '
                          +'  P2TRO_QTD_SAIDA, '
                          +'  P2TRO_PCOUNI_SAIDA, '
                          +'  (P2TRO_QTD_SAIDA*P2TRO_PCOUNI_SAIDA) AS TOTALBRU, '
                          +'  PDNOME,PDUND '
                          +'  from CADP02_TROCAS'+iif(la_tabelas='','',',')+la_tabelas
                          +'       '+la_Join
                          +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                          +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                          +fla_EmpBaixaAlta(0,'CADPED',' ',codemp,'P2TRO_CODEMP',' and ')
                            );
      Qr_Faturadas.SQL.Add(' P2TRO_LOTSEQ=0'+Qr_CotadasP2TRO_LOTSEQ.AsString);
      Qr_Faturadas.SQL.Add(' and P2TRO_CHAVE=0'+Qr_CotadasP2TRO_CHAVE.AsString);
      try
         Qr_Faturadas.Open;
      except
         Qr_Faturadas.sql.savetofile('c:\sql02.txt');
         end;

      end;
   end;

end;

procedure TFrm_Ped_TrocaMer_Efetivadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
