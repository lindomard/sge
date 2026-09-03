unit S_Rel_OrcProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBTables;

type
  Tfrm_RelOrcProducao = class(TForm)
    rlp_orcproducao: TRLReport;
    Qry_Grupo: TQuery;
    Ds_Grupo: TDataSource;
    Qry_Cliente: TQuery;
    Ds_Cliente: TDataSource;
    Qry_GrupoNOMEPRODUTO: TStringField;
    Qry_GrupoQTDE: TFloatField;
    Qry_GrupoSOBRA: TFloatField;
    Qry_GrupoQUEBRA: TFloatField;
    Qry_GrupoOUTROS: TFloatField;
    Qry_GrupoNOMEGRUPO: TStringField;
    Qry_GrupoTOTAL: TFloatField;
    Qry_GrupoRETORNO: TFloatField;
    Qry_GrupoUSADO: TFloatField;
    rlp_finalizacao: TRLReport;
    RLBand6: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    lbl_chave2: TRLLabel;
    lbl_data2: TRLLabel;
    lbl_razao2: TRLLabel;
    lbl_fantasia2: TRLLabel;
    lbl_endereco2: TRLLabel;
    lbl_numero2: TRLLabel;
    lbl_complemento2: TRLLabel;
    lbl_bairro2: TRLLabel;
    lbl_cidade2: TRLLabel;
    lbl_ufed2: TRLLabel;
    lbl_cep2: TRLLabel;
    lbl_fonefax2: TRLLabel;
    RL_TIPO: TRLMemo;
    RL_DESCRICAO: TRLMemo;
    rl_qtde: TRLMemo;
    tl_valor: TRLMemo;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText3: TRLDBText;
    rl_tipo2: TRLMemo;
    rl_saida: TRLMemo;
    rl_retorno: TRLMemo;
    rl_usado: TRLMemo;
    rl_sbra: TRLMemo;
    rl_quebra: TRLMemo;
    rl_outros: TRLMemo;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    rlm_descricao: TRLMemo;
    rlm_qtde: TRLMemo;
    rlm_retorno: TRLMemo;
    rlm_quebra: TRLMemo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    lbl_chave: TRLLabel;
    lbl_data: TRLLabel;
    lbl_razao: TRLLabel;
    lbl_fantasia: TRLLabel;
    lbl_endereco: TRLLabel;
    lbl_numero: TRLLabel;
    lbl_complemento: TRLLabel;
    lbl_bairro: TRLLabel;
    lbl_cidade: TRLLabel;
    lbl_ufed: TRLLabel;
    lbl_cep: TRLLabel;
    lbl_fonefax: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    dblbl_qtde: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand1: TRLBand;
    RLLabel15: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    procedure rlp_orcproducaoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLGroup1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RelOrcProducao: Tfrm_RelOrcProducao;

implementation

uses S_OrcProducao;

{$R *.dfm}

procedure Tfrm_RelOrcProducao.rlp_orcproducaoBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   Qry_Grupo.Close;
   Qry_Grupo.SQL.Clear;
   Qry_Grupo.SQL.Add(' SELECT                         '+
                     '  PDNOME NOMEPRODUTO,           '+
                     '  PROD2QTD_UTILIZ AS QTDE,      '+
                     '  PROD2QTD_SOBRA AS SOBRA,      '+
                     '  PROD2QTD_QUEBRA AS QUEBRA,    '+
                     '  PROD2QTD_OUTROS AS OUTROS,    '+
                     '  GRNOME AS NOMEGRUPO,          '+
                     '  SUM(PROD2VLTOT) AS TOTAL,     '+
                     '  0 AS RETORNO,                 '+
                     '  0 AS USADO                    '+
                     ' FROM                           '+
                     '  CADPROD_02,                   '+
                     '  CADPRO,                       '+
                     '  CADGRU                        '+
                     ' WHERE                          '+
                     '  PROD2CHAVE  =:pChave      AND '+
                     '  PDCODPRO    = PROD2CODPRO AND '+
                     '  PDCODGRU    = GRCODGRU        '+
                     ' GROUP BY                       '+
                     '  PROD2QTD_UTILIZ,              '+
                     '  PROD2QTD_SOBRA,               '+
                     '  PROD2QTD_QUEBRA,              '+
                     '  PROD2QTD_OUTROS,              '+
                     '  PDNOME,                       '+
                     '  PDCODGRU,                     '+
                     '  GRNOME                        '+
                     ' ORDER BY                       '+
                     '  GRNOME                        ');
  Qry_Grupo.ParamByName('pChave').AsFloat := xChave;
  Qry_Grupo.Open;

  
end;

procedure Tfrm_RelOrcProducao.FormShow(Sender: TObject);
begin
   Qry_Cliente.Close;
   Qry_Cliente.SQL.Clear;
   Qry_Cliente.sQL.Add(' SELECT                      '+
                       '   PROD1CHAVE AS CHAVE,      '+
                       '   PROD1DATA AS DATA,        '+
                       '   PROD1CODCLI AS CODIGO,    '+
                       '   CRAZAO AS RAZAO,          '+
                       '   CDENOM AS FANTASIA,       '+
                       '   CLOG AS ENDERECO,         '+
                       '   CNUM AS NUMERO,           '+
                       '   CCOMPL AS COMPLEMENTO,    '+
                       '   CBAIRRO AS BAIRRO,        '+
                       '   CCIDADE AS CIDADE,        '+
                       '   CUF AS ESTADO,            '+
                       '   CCEP AS CEP,              '+
                       '   CFONECOM AS FONE,         '+
                       '   CFONERES AS FAX           '+
                       ' FROM                        '+
                       '   CADPROD_01,               '+
                       '   CADCLI                    '+
                       ' WHERE                       '+
                       '   PROD1CODCLI = CCODCLI AND '+
                       '   PROD1CHAVE  = :pChave     ');
   Qry_Cliente.ParamByName('pChave').AsFloat := xChave;
   Qry_Cliente.Open;

   if not Qry_Cliente.IsEmpty then begin
      lbl_chave.Caption       := Qry_Cliente.FieldByName('CHAVE').AsString;
      lbl_data.Caption        := FormatDateTime('DD/MM/YYYY',Qry_Cliente.FieldByName('DATA').AsDateTime);
      lbl_razao.Caption       := Qry_Cliente.FieldByName('RAZAO').AsString;
      lbl_fantasia.Caption    := Qry_Cliente.FieldByName('FANTASIA').AsString;
      lbl_endereco.Caption    := Qry_Cliente.FieldByName('ENDERECO').AsString;
      lbl_numero.Caption      := Qry_Cliente.FieldByName('NUMERO').AsString;
      lbl_complemento.Caption := Qry_Cliente.FieldByName('COMPLEMENTO').AsString;
      lbl_bairro.Caption      := Qry_Cliente.FieldByName('BAIRRO').AsString;
      lbl_cidade.Caption      := Qry_Cliente.FieldByName('CIDADE').AsString;
      lbl_ufed.Caption        := Qry_Cliente.FieldByName('ESTADO').AsString;
      lbl_cep.Caption         := Qry_Cliente.FieldByName('CEP').AsString;
      lbl_fonefax.Caption     := Qry_Cliente.FieldByName('FONE').AsString+'/'+Qry_Cliente.FieldByName('FAX').AsString;
   end;
end;

procedure Tfrm_RelOrcProducao.RLGroup1AfterPrint(Sender: TObject);
begin
   rlp_orcproducao.NewPage;
end;

end.
