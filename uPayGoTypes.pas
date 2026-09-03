unit uPayGoTypes;

interface
uses classes;

type
  ETipoOperacaoTEF = (opCRT, opCNC, opATV, opNCN, opCNF);

  TRetornoPayGo = record
    CodigoResposta: String;     // Campo 009-000 (00 = Aprovado)
    NomeRede: String;           // Campo 010-000
    NSUTransacao: String;       // Campo 012-000
    CodigoAutorizacao: String;  // Campo 013-000
    ComprovanteCliente: String; // Campo 028-000
    ComprovanteLojista: String;
    IdentificacaoVenda: String;
    Aprovado: Boolean;
    MensagemErro: String;
    MensagemTrasacao: String;
    vendaId: integer;
    Itens: TStrings;
    ItensEnvio: TStrings;

  end;

implementation

end.
