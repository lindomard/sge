unit S_DM_CDS;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDM_CDS = class(TDataModule)
    cds_seqtef: TClientDataSet;
    cds_seqtefseqtef: TIntegerField;
    cds_receb: TClientDataSet;
    cds_recebstatus: TIntegerField;
    cds_recebcomprovante: TMemoField;
    cds_recebnomeRede: TStringField;
    cds_recebNSU: TStringField;
    cds_recebcodigoAutorizacao: TStringField;
    cds_recebchaveId: TIntegerField;
    src_receb: TDataSource;
    src_seq_tef: TDataSource;
    cds_config_tef: TClientDataSet;
    src_config_tef: TDataSource;
    cds_config_tefcf_tef_qtd_vias: TIntegerField;
    cds_config_tefcf_tempo_espera_tef: TIntegerField;
    cds_config_tefcf_tempo_espera_sts: TIntegerField;
    cds_config_tefcf_tef_via_reduzido: TIntegerField;
    cds_recebtransacao: TStringField;
    cds_recebstatus_calculado: TStringField;
    cds_pedido_cab: TClientDataSet;
    src_pedido_cab: TDataSource;
    cds_pedido_cabchaveId: TIntegerField;
    cds_pedido_cabcodcli: TFloatField;
    cds_pedido_cabrazao_social: TStringField;
    cds_pedido_cabvalor_tef: TFloatField;
    cds_pedido_cabvalor_tef_recebido: TFloatField;
    cds_pedido_formas: TClientDataSet;
    cds_pedido_formastransacao: TStringField;
    cds_pedido_formasforma_pgto: TStringField;
    cds_pedido_formasvalor: TFloatField;
    src_pedido_formas: TDataSource;
    cds_pedido_cabdata_hora_pedido: TDateTimeField;
    cds_pedido_cabdata_hora_colocacao: TDateTimeField;
    cds_pedido_formaschave_id: TIntegerField;
    cds_recebchave_id_forma: TIntegerField;
    cds_pedido_formassituacao_venda: TStringField;
    cds_pedido_cabobservacao: TStringField;
    cds_pedido_caberroaoconcluir: TIntegerField;
    cds_recebchave_id_cab: TIntegerField;
    cds_pedido_formaschave_id_cab: TIntegerField;
    cds_recebsequencia_forma: TIntegerField;
    cds_pedido_cabvalor_tef_restante: TFloatField;
    cds_config_tefcf_data_ult_bkp: TDateField;
    cds_pedido_formasnsu: TStringField;
    cds_pedido_formascomprovante: TMemoField;
    cds_pedido_cabfinalizado: TIntegerField;
    cds_pedido_cabvalor_pedido: TFloatField;
    cds_config_tefcf_pos_empresa_id: TIntegerField;
    cds_config_tefcf_pos_provider: TStringField;
    cds_config_tefcf_pos_terminalId: TStringField;
    cds_config_tefcl_pos_apelido: TStringField;
    cds_config_tefcl_pos_clientId: TStringField;
    cds_config_tefcl_pos_merchantId: TStringField;
    cds_config_tefcl_pos_tokenApi: TStringField;
    cds_config_tefcf_pos_ambiente: TStringField;
    cds_config_tefcf_pos_ativo: TIntegerField;
    cds_config_tefcf_pos_url: TStringField;
    cds_recebvalorVenda: TFloatField;
    procedure cds_recebCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_seqtefAfterPost(DataSet: TDataSet);
    procedure cds_recebAfterPost(DataSet: TDataSet);
    procedure cds_config_tefAfterPost(DataSet: TDataSet);
    procedure cds_pedido_cabAfterPost(DataSet: TDataSet);
    procedure cds_pedido_formasAfterPost(DataSet: TDataSet);
    procedure cds_pedido_cabCalcFields(DataSet: TDataSet);
  private
    { Private declarations }


  public
    { Public declarations }
    pathConfig : string;

    mNomeArquivoSeqTef: String;
    mNomeArquivoConfigTef: String;


    mNomeArquivoPedidoCab: String;
    mNomeArquivoPedidoFormas: String;
    mNomeArquivoReceb: String;

    procedure fTestarConfigTef;

    procedure FTestarSeqTef;

    procedure fTestarReceb;
    procedure fTestarPedidoCab;
    procedure fTestarPedidoFormas;

    procedure fFiltrarPedidoFormas(pChaveIdCab: Integer);
    procedure fFiltrarReceb(pChaveIdCab: Integer);

    procedure filtrarPedido(pChaveId: integer);


    function fBuscarChaveIdReceb: integer;

  end;

const
   mCasas        = '#,##0.00';
   mCadtef       = 'cadtef.dbf';
   mCadReceb     = 'cadreceb_v02.dbf';
   mCadConfig    = 'cadconfig_tef.dbf';
   mPedido_Cab   = 'pedido_cab.dbf';
   mPedidoFormas = 'pedido_formas.dbf';


var
  DM_CDS: TDM_CDS;

implementation

{$R *.dfm}

procedure TDM_CDS.cds_recebCalcFields(DataSet: TDataSet);
begin
 


case cds_recebstatus.AsInteger of
  0: cds_recebstatus_calculado.Value:='Pendente de Confirmação';
  1: cds_recebstatus_calculado.Value:='venda confirmada';
  2: cds_recebstatus_calculado.Value:='Nao confirmada/cancelada';
  7: cds_recebstatus_calculado.Value:='Pedido de estorno/exclusao';
  8: cds_recebstatus_calculado.Value:='estorno/exclusao confirmado';
  9: cds_recebstatus_calculado.Value:='estorno/exclusao nao confirmado(cancelado)';
else cds_recebstatus_calculado.Value:='**Desconhecido**';
   end;

end;

procedure TDM_CDS.DataModuleCreate(Sender: TObject);

begin

  DM_CDS.cds_pedido_formasvalor.DisplayFormat:=mcasas;

  cds_pedido_cabvalor_tef_restante.DisplayFormat:=mCasas;
  cds_pedido_cabvalor_tef_recebido.DisplayFormat:=mCasas;
  cds_pedido_cabvalor_tef.DisplayFormat         :=mCasas;

  pathConfig := 'C:\PAYGO\CONFIG';
  if not DirectoryExists(pathConfig) then
     CreateDir(pathConfig); 
  pathConfig := IncludeTrailingPathDelimiter(pathConfig);


  mNomeArquivoSeqTef      :=PathConfig+mCadtef;
  mNomeArquivoReceb       :=PathConfig+mCadReceb;
  mNomeArquivoConfigTef   :=PathConfig+mCadConfig;
  mNomeArquivoPedidoCab   :=PathConfig+mPedido_Cab;
  mNomeArquivoPedidoFormas:=PathConfig+mPedidoFormas;


  fTestarConfigTef;
  FTestarSeqTef;
  fTestarPedidoCab;
  fTestarPedidoFormas;
  fTestarReceb;



end;



procedure TDM_cds.FTestarSeqTef;
begin
if not FileExists(mNomeArquivoSeqTef) then
   begin
   DM_CDS.cds_seqtef.Close;
   DM_CDS.cds_seqtef.CreateDataSet;
   DM_CDS.cds_seqtef.Open;
   DM_CDS.cds_seqtef.Append;
   DM_CDS.cds_seqtefseqtef.Value:=0;
   DM_CDS.cds_seqtef.Post;
   DM_CDS.cds_seqtef.SaveToFile(mNomeArquivoSeqTef);
   DM_CDS.cds_seqtef.Close;
   end
else if DM_CDS.cds_seqtef.Active=False then
   DM_CDS.cds_seqtef.LoadFromFile(mNomeArquivoSeqTef);


end;

procedure TDM_CDS.fTestarConfigTef;
begin
if not FileExists(mNomeArquivoConfigTef) then
   begin
   DM_CDS.cds_config_tef.Close;
   DM_CDS.cds_config_tef.CreateDataSet;
   DM_CDS.cds_config_tef.Open;
   DM_CDS.cds_config_tef.Append;
   DM_CDS.cds_config_tefcf_tef_via_reduzido.Value:=0;
   DM_CDS.cds_config_tefcf_tef_qtd_vias.Value:=1;
   DM_CDS.cds_config_tefcf_tempo_espera_tef.Value:=250;
   DM_CDS.cds_config_tefcf_tempo_espera_sts.Value:=7;


   DM_CDS.cds_config_tef.Post;
   DM_CDS.cds_config_tef.Close;
   end
else if DM_CDS.cds_config_tef.Active=False then
   DM_CDS.cds_config_tef.LoadFromFile(mNomeArquivoConfigTef);


end;


procedure TDM_CDS.fTestarReceb;
begin
if not FileExists(mNomeArquivoReceb) then
   begin
   DM_CDS.cds_receb.Close;
   DM_CDS.cds_receb.CreateDataSet;
   DM_CDS.cds_receb.SaveToFile(mNomeArquivoReceb);
   DM_CDS.cds_receb.open;
   end
else if DM_CDS.cds_receb.Active=False then
   begin
   DM_CDS.cds_receb.LoadFromFile(mNomeArquivoReceb);
   DM_CDS.cds_receb.open;
   end;
DM_CDS.cds_receb.Filter:='';
DM_CDS.cds_receb.Filtered:=false;

end;

procedure TDM_CDS.filtrarPedido(pChaveId: integer);
begin
    DM_CDS.cds_receb.Filtered := False;
    DM_CDS.cds_receb.Filter := 'chave_id_cab='+intTostr(pChaveId);
    DM_CDS.cds_receb.Filtered := True;
    DM_CDS.cds_receb.First;

    DM_CDS.cds_pedido_formas.Filtered := False;
    DM_CDS.cds_pedido_formas.Filter := 'chave_id_cab='+intTostr(pChaveId);
    DM_CDS.cds_pedido_formas.Filtered := True;
    DM_CDS.cds_pedido_formas.First;

    DM_CDS.cds_pedido_cab.Filtered := False;
    DM_CDS.cds_pedido_cab.Filter := 'chaveId='+intTostr(pChaveId);
    DM_CDS.cds_pedido_cab.Filtered := True;
    DM_CDS.cds_pedido_cab.First;


end;


procedure TDM_CDS.fTestarPedidoCab;
begin
if not FileExists(mNomeArquivoPedidoCab) then
   begin
   DM_CDS.cds_pedido_cab.Close;
   DM_CDS.cds_pedido_cab.CreateDataSet;
   DM_CDS.cds_pedido_cab.SaveToFile(mNomeArquivoPedidoCab);
   DM_CDS.cds_pedido_cab.open;
   end
else if DM_CDS.cds_pedido_cab.Active=False then
   begin
   DM_CDS.cds_pedido_cab.LoadFromFile(mNomeArquivoPedidoCab);
   DM_CDS.cds_pedido_cab.open;
   end;
DM_CDS.cds_pedido_cab.Filter:='';
DM_CDS.cds_pedido_cab.Filtered:=false;


end;

procedure TDM_CDS.fTestarPedidoFormas;
begin
if not FileExists(mNomeArquivoPedidoFormas) then
   begin
   DM_CDS.cds_pedido_formas.Close;
   DM_CDS.cds_pedido_formas.CreateDataSet;
   DM_CDS.cds_pedido_formas.SaveToFile(mNomeArquivoPedidoFormas);
   DM_CDS.cds_pedido_formas.open;
   end
else if DM_CDS.cds_pedido_formas.Active=False then
   begin
   DM_CDS.cds_pedido_formas.LoadFromFile(mNomeArquivoPedidoFormas);
   DM_CDS.cds_pedido_formas.open;
   end;
DM_CDS.cds_pedido_formas.Filter:='';
DM_CDS.cds_pedido_formas.Filtered:=false;

end;



procedure TDM_CDS.cds_seqtefAfterPost(DataSet: TDataSet);
begin
   DM_CDS.cds_seqtef.SaveToFile(mNomeArquivoSeqTef);

end;

procedure TDM_CDS.cds_recebAfterPost(DataSet: TDataSet);
begin
   DM_CDS.cds_receb.SaveToFile(mNomeArquivoReceb);

end;

procedure TDM_CDS.cds_config_tefAfterPost(DataSet: TDataSet);
begin
   DM_CDS.cds_config_tef.SaveToFile(mNomeArquivoConfigTef);

end;

procedure TDM_CDS.cds_pedido_cabAfterPost(DataSet: TDataSet);
begin
   DM_CDS.cds_pedido_cab.SaveToFile(mNomeArquivoPedidoCab);

end;

procedure TDM_CDS.cds_pedido_formasAfterPost(DataSet: TDataSet);
begin
   DM_CDS.cds_pedido_formas.SaveToFile(mNomeArquivoPedidoFormas);

end;


procedure TDM_CDS.fFiltrarReceb(pChaveIdCab: Integer);
begin
    DM_CDS.cds_receb.Filtered := False;
    DM_CDS.cds_receb.Filter := 'chave_id_cab='+intTostr(pChaveIdcab);
    DM_CDS.cds_receb.Filtered := True;
    DM_CDS.cds_receb.First;

end;

procedure TDM_CDS.fFiltrarPedidoFormas(pChaveIdCab: Integer);
begin
    DM_CDS.cds_pedido_formas.Filtered := False;
    DM_CDS.cds_pedido_formas.Filter := 'chave_id_cab='+intTostr(pChaveIdcab);
    DM_CDS.cds_pedido_formas.Filtered := True;
    DM_CDS.cds_pedido_formas.First;

end;


procedure TDM_CDS.cds_pedido_cabCalcFields(DataSet: TDataSet);
begin
DM_CDS.cds_pedido_cabvalor_tef_restante.Value :=
      DM_CDS.cds_pedido_cabvalor_tef.Value -
      DM_CDS.cds_pedido_cabvalor_tef_recebido.Value;
end;


function TDM_CDS.fBuscarChaveIdReceb: integer;
var
cds_id_receb: TClientDataSet;

begin
if not FileExists(mNomeArquivoReceb) then
   result:=-1
else
   begin
   cds_id_receb := tClientDataSet.Create(nil);
   cds_id_receb.LoadFromFile(mNomeArquivoReceb);
   result:=cds_id_receb.RecordCount+1;
   cds_id_receb.Close;
   freeandnil(cds_id_receb);
   end;


end;

end.
