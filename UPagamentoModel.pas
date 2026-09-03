unit UPagamentoModel;

interface

uses
  Classes, Contnrs,uLkJSON;

type
  // Objeto para os itens da lista "pagamentos"
  TPagamentoItem = class
  private
    FID: Integer;
    FValor: Double;
    FFormaPagamento: string;
    FParcelas: Integer;
    FStatus: string;
  public
    property Id: Integer read FID write FID;
    property Valor: Double read FValor write FValor;
    property FormaPagamento: string read FFormaPagamento write FFormaPagamento;
    property Parcelas: Integer read FParcelas write FParcelas;
    property Status: string read FStatus write FStatus;
  end;

  // Objeto Principal
  TVendaPagamento = class
  private
    FID: Integer;
    FEmpresaId: Integer;
    FVendaId: Integer;
    FValor: Double;
    FFormaPagamento: string;
    FParcelas: Integer;
    FTerminal: string;
    FStatus: string;
    FObservacao: string;
    FCriadoEm: string;
    FAtualizadoEm: string;
    FPagamentos: TObjectList; // Coleção de TPagamentoItem
    FValorTotal: Double;
  public
    constructor Create;
    destructor Destroy; override;

    property Id: Integer read FID write FID;
    property EmpresaId: Integer read FEmpresaId write FEmpresaId;
    property VendaId: Integer read FVendaId write FVendaId;
    property Valor: Double read FValor write FValor;
    property FormaPagamento: string read FFormaPagamento write FFormaPagamento;
    property Parcelas: Integer read FParcelas write FParcelas;
    property Terminal: string read FTerminal write FTerminal;
    property Status: string read FStatus write FStatus;
    property Observacao: string read FObservacao write FObservacao;
    property CriadoEm: string read FCriadoEm write FCriadoEm;
    property AtualizadoEm: string read FAtualizadoEm write FAtualizadoEm;
    property Pagamentos: TObjectList read FPagamentos;
    property ValorTotal: Double read FValorTotal write FValorTotal;

    function CarregarVendaDoJson(const AJsonStr: string): TVendaPagamento;

  end;

implementation

{ TVendaPagamento }

constructor TVendaPagamento.Create;
begin
  inherited Create;
  // Creates OwnsObjects = True para liberar os itens automaticamente ao destruir
  FPagamentos := TObjectList.Create(True);
end;

destructor TVendaPagamento.Destroy;
begin
  FPagamentos.Free;
  inherited Destroy;
end;


function TVendaPagamento.CarregarVendaDoJson(const AJsonStr: string): TVendaPagamento;
var
  jsRoot, jsPagamentos, jsItem: TlkJSONbase;
  i: Integer;
  ItemPag: TPagamentoItem;
begin
  Result := TVendaPagamento.Create;

  jsRoot := TlkJSON.ParseText(AJsonStr);
  if not Assigned(jsRoot) then Exit;

  try
    // Preenche propriedades do Objeto Principal
    if jsRoot.Field['id'] <> nil then 
      Result.Id := jsRoot.Field['id'].Value;
      
    if jsRoot.Field['empresaId'] <> nil then 
      Result.EmpresaId := jsRoot.Field['empresaId'].Value;
      
    if jsRoot.Field['vendaId'] <> nil then 
      Result.VendaId := jsRoot.Field['vendaId'].Value;
      
    if jsRoot.Field['valor'] <> nil then 
      Result.Valor := jsRoot.Field['valor'].Value;
      
    if jsRoot.Field['formaPagamento'] <> nil then 
      Result.FormaPagamento := jsRoot.Field['formaPagamento'].Value;
      
    if jsRoot.Field['parcelas'] <> nil then 
      Result.Parcelas := jsRoot.Field['parcelas'].Value;
      
    if jsRoot.Field['terminal'] <> nil then 
      Result.Terminal := jsRoot.Field['terminal'].Value;

    if jsRoot.Field['status'] <> nil then 
      Result.Status := jsRoot.Field['status'].Value;
      
    if jsRoot.Field['observacao'] <> nil then 
      Result.Observacao := jsRoot.Field['observacao'].Value;
      
    if jsRoot.Field['criadoEm'] <> nil then 
      Result.CriadoEm := jsRoot.Field['criadoEm'].Value;
      
    if jsRoot.Field['atualizadoEm'] <> nil then 
      Result.AtualizadoEm := jsRoot.Field['atualizadoEm'].Value;
      
    if jsRoot.Field['valorTotal'] <> nil then 
      Result.ValorTotal := jsRoot.Field['valorTotal'].Value;

    // Preenche o Array de Pagamentos
    jsPagamentos := jsRoot.Field['pagamentos'];
    if (jsPagamentos <> nil) and (jsPagamentos is TlkJSONlist) then
    begin
      for i := 0 to TlkJSONlist(jsPagamentos).Count - 1 do
      begin
        jsItem := TlkJSONlist(jsPagamentos).Child[i];
        
        ItemPag := TPagamentoItem.Create;
        if jsItem.Field['id'] <> nil then 
          ItemPag.Id := jsItem.Field['id'].Value;
          
        if jsItem.Field['valor'] <> nil then 
          ItemPag.Valor := jsItem.Field['valor'].Value;
          
        if jsItem.Field['formaPagamento'] <> nil then 
          ItemPag.FormaPagamento := jsItem.Field['formaPagamento'].Value;
          
        if jsItem.Field['parcelas'] <> nil then 
          ItemPag.Parcelas := jsItem.Field['parcelas'].Value;
          
        if jsItem.Field['status'] <> nil then 
          ItemPag.Status := jsItem.Field['status'].Value;

        // Adiciona à lista
        Result.Pagamentos.Add(ItemPag);
      end;
    end;

  finally
    jsRoot.Free;
  end;
end;


end.


