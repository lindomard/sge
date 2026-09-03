unit uPayGoAPI;

interface

uses
  SysUtils, Classes, Forms, Windows, uPayGoTypes,dialogs;

type
   TResposta =  Record
    item: String;
    subItem: string;
    Resposta: String;           // Campo 010-000
end;

 const

    regCertificacao = '08467';//"03738";//Código obtido junto à PayGo no início do processo de certificação da Automação Comercial.
    reg716RazaoAutomacao = 'GERENTENET TECNOLOGIA DA INFORMACAO LTDA';//Código obtido junto à PayGo no início do processo de certificação da Automação Comercial.
    reg733VersaoInterface = '212';//Versão da interface
    reg735NomeAutomacao = 'GERENTENET';//Nome da aplicação de Automação Comercial.
    reg736VersaoAutomacao = '222';//Versão da Automação



type
  TPayGoAPI = class
  private

    tipoTransacao: string;
    gpPayGo701 : string;
    gpPayGo706 : string;
    gpPayGo716 : string;
    gpPayGo733 : string;
    gpPayGo735 : string;
    gpPayGo736 : string;
    gpPayGo738 : string;


    FPathReq: String;
    FPathResp: String;
    FPathConfig: String;
    mFazerBackups: boolean;
    FPathBkpResp: String;
    FPathBkpReq: String;



    procedure LimparArquivosAntigos;
    function AguardarResposta(const ATimeout: Integer): Boolean;
    function AguardarRespostaSts(const ATimeout: Integer): Boolean;

    function ProcessarArquivoResposta(const AFilePath: String): TRetornoPayGo;


    function capacidadeAutomacao: integer;

    procedure bkptef(pasta, pServico: string; pItens: tStrings);





  public





    FTimeoutSegundos: Integer;





    constructor Create();

    function ExecutarVenda(const AIdentificador: String; const VendaId: integer;  const AValor: Currency): TRetornoPayGo;


    function CancelarVenda(pIdentificacao: string;pItens: TStrings): TRetornoPayGo;

    function fTefAtivo(const AIdentificador: String): TRetornoPayGo;

    function ConfirmarTransacao(pItens: TStrings; pCNF: boolean): TRetornoPayGo;


//    procedure DesfazerTransacao(const AIdentificador, ANSU: String);

    function FuncoesAdministativas(const AIdentificador: String): TRetornoPayGo;

    function fLerResposta(pRetorno: String): TResposta;
    function fPegarSeqTef: integer;



    function fGravarReceb(pTransacao: String; pRetorno: TRetornoPayGo; pIdPedidoForma, pIdPedidoCab: integer): integer;







    procedure fAtualizarReceb(pChaveId, pStatus: integer);
    procedure fAbrirReceb;
    procedure fAbrirPedidoCab;


    procedure fAtualizarPedidoFormas(pChaveIdForma: integer; pConfirmaRecebimento: boolean);
    procedure fAtualizarPedidoCab(pChaveIdCab: integer; pValor: Real; pConfirmaRecebimento: boolean);

  end;

implementation

uses S_DM_CDS, func, StrUtils;

constructor TPayGoAPI.Create();
var
 APathReq, APathResp, APathConfig: String;
begin

APathReq    :='C:\PAYGO\Req';
APathResp   :='C:\PAYGO\Resp';
APathConfig :='C:\PAYGO\CONFIG';

  FPathReq := IncludeTrailingPathDelimiter(APathReq);
  FPathResp := IncludeTrailingPathDelimiter(APathResp);
  FPathConfig := IncludeTrailingPathDelimiter(APathConfig);
  if not DirectoryExists(FPathConfig) then
     CreateDir(FPathConfig);

    mFazerBackups:=true;
    FPathBkpResp:='c:\bkptef\resp\';
    FPathBkpReq:='c:\bkptef\req\';

  if not DirectoryExists('c:\bkptef') then
     CreateDir('c:\bkptef');

  if not DirectoryExists(FPathBkpResp) then
     CreateDir(FPathBkpResp);

  if not DirectoryExists(FPathBkpReq) then
     CreateDir(FPathBkpReq);



  FTimeoutSegundos := 120; // 2 minutos para digitação no Pinpad

//  tipoTransacao: string;

    gpPayGo706 := '701-000 = ';
    gpPayGo706 := '706-000 = ' + inttostr(capacidadeAutomacao());
    gpPayGo716 := '716-000 = ' + reg716RazaoAutomacao;


    gpPayGo733 := '733-000 = ' + reg733VersaoInterface;
    gpPayGo735 := '735-000 = ' + reg735NomeAutomacao;
    gpPayGo736 := '736-000 = ' + reg736VersaoAutomacao;
    gpPayGo738 := '738-000 = ' + regCertificacao;



end;

procedure TPayGoAPI.LimparArquivosAntigos;
begin
  if FileExists(FPathReq + 'INTPOS.001') then DeleteFile(pchar(FPathReq + 'INTPOS.001'));
  if FileExists(FPathResp + 'INTPOS.001') then DeleteFile(pchar(FPathResp + 'INTPOS.001'));
  if FileExists(FPathResp + 'INTPOS.STS') then DeleteFile(pchar(FPathResp + 'INTPOS.STS'));
end;


function TPayGoAPI.ExecutarVenda(const AIdentificador: String; const VendaId: integer;  const AValor: Currency): TRetornoPayGo;
var
  SL: TStringList;
begin
  LimparArquivosAntigos;

  SL := TStringList.Create;
  try
    SL.Add('000-000 = CRT');
    SL.Add('001-000 = ' + AIdentificador);
    SL.Add('002-000 = ' + IntToStr(VendaId));
    SL.Add('003-000 = ' + formatfloat('000',  AValor*100));
    SL.Add('004-000 = 0');   // MOEDA 0-REAL
    SL.Add('701-000 = ');   // MOEDA 0-REAL
    SL.Add(gpPayGo706);
    SL.Add('716-000 = ' + reg716RazaoAutomacao);
    SL.Add(gpPayGo733);
    SL.Add(gpPayGo735);
    SL.Add('736-000 = ' + reg736VersaoAutomacao);
    SL.Add(gpPayGo738);

    SL.Add('999-999 = 0');
    bkptef(FPathReq,'VENDA', SL);

    SL.SaveToFile(FPathReq + 'INTPOS.001');
  finally
    SL.Free;
  end;

  if AguardarResposta(FTimeoutSegundos) then
     begin

     Result := ProcessarArquivoResposta(FPathResp + 'INTPOS.001');
     result.IdentificacaoVenda := AIdentificador;


     end
  else
  begin
    Result.Aprovado := False;
    Result.MensagemErro := 'Timeout: O cliente/Pinpad não respondeu a tempo.';
  end;
end;

function TPayGoAPI.AguardarResposta(const ATimeout: Integer): Boolean;
var
  TempoInicio: DWORD;
begin
  Result := False;
  TempoInicio := GetTickCount;

  while (GetTickCount - TempoInicio) < DWORD(ATimeout * 1000) do
  begin
    if FileExists(FPathResp + 'INTPOS.001') then
    begin
      Sleep(200); // Garante a gravação completa do arquivo
      Result := True;
      Exit;
    end;
    Application.ProcessMessages;
    Sleep(100);
  end;
end;


function TPayGoAPI.AguardarRespostaSts(const ATimeout: Integer): Boolean;
var
  TempoInicio: DWORD;
begin
  Result := False;
  TempoInicio := GetTickCount;

  while (GetTickCount - TempoInicio) < DWORD(ATimeout * 1000) do
  begin
    if FileExists(FPathResp + 'INTPOS.STS') then
    begin
      Sleep(200); // Garante a gravação completa do arquivo
      Result := True;
      Exit;
    end;
    Application.ProcessMessages;
    Sleep(100);
  end;
end;



function TPayGoAPI.ProcessarArquivoResposta(const AFilePath: String): TRetornoPayGo;
var
  SL: TStringList;
  I, PosIgual: Integer;
  Linha, Chave, Valor: String;
begin
  FillChar(Result, SizeOf(Result), 0);
  Result.Aprovado := False;

  if not FileExists(AFilePath) then
  begin
    Result.MensagemErro := 'Arquivo de resposta não encontrado.';
    Exit;
  end;

  SL := TStringList.Create;
  try
    SL.LoadFromFile(AFilePath);
    for I := 0 to SL.Count - 1 do
    begin
      Linha := Trim(SL[I]);
      PosIgual := Pos('=', Linha);
      if PosIgual > 0 then
      begin
        Chave := Trim(Copy(Linha, 1, PosIgual - 1));
        Valor := Trim(Copy(Linha, PosIgual + 1, Length(Linha)));

        if Chave = '009-000' then
        begin
          Result.CodigoResposta := Valor;
          if (Valor = '00') or (Valor = '0') then
            Result.Aprovado := True;
        end
        else if Chave = '010-000' then
          Result.NomeRede := Valor
        else if Chave = '012-000' then
          Result.NSUTransacao := Valor
        else if Chave = '002-000' then
          Result.vendaId := valint(Valor)

        else if Chave = '013-000' then
          Result.CodigoAutorizacao := Valor
        else if Chave = '030-000' then
          Result.MensagemTrasacao := Valor

        else if Chave = '028-000' then
          Result.ComprovanteCliente := Result.ComprovanteCliente + Valor + #13#10;
      end;
    end;
    result.Itens := TStringList.create;
    for i:=0 to sl.Count-1 do
       begin
       result.itens.Add(sl[i]);
       end;

    bkptef(FPathResp,'RETORNO', SL);

  finally
    SL.Free;

  end;
end;

function TPayGoAPI.ConfirmarTransacao(pItens: TStrings; pCNF: boolean): TRetornoPayGo;
var
  SL: TStringList;
  x_reg: integer;
  mResposta: TResposta;
  NCU: String;
begin
  LimparArquivosAntigos;
  SL := TStringList.Create;

  try
  if pCNF then
     SL.Add('000-000 = CNF')
  else
     SL.Add('000-000 = NCM');
  for x_reg:=0 to pItens.Count-1 do
     begin
     mResposta := fLerResposta(pItens[x_reg]);
     if AnsiMatchStr(mResposta.item, ['001','002','010','012','027', '999']) then
        SL.Add(pItens[x_reg]);
     if (mResposta.item='012') then
        NCU:=mResposta.Resposta;
     end;

     bkptef(FPathReq,'CONFTRANS', SL);

    SL.SaveToFile(FPathReq + 'INTPOS.001');
  finally
    SL.Free;

  end;
  Result.Aprovado := true;
{
  if AguardarResposta(FTimeoutSegundos) then
    Result := ProcessarArquivoResposta(FPathResp + 'INTPOS.001')
  else
  begin
    Result.Aprovado := False;
    Result.MensagemErro := 'Timeout: O cliente/Pinpad não respondeu a tempo.';

  end;
    }
end;



function TPayGoAPI.FuncoesAdministativas(const AIdentificador: String): TRetornoPayGo;
var
  SL: TStringList;
begin
  LimparArquivosAntigos;
  SL := TStringList.Create;
  try
    SL.Add('000-000 = ADM');
    SL.Add('001-000 = ' + AIdentificador);
    SL.Add('999-999 = 0');
    SL.SaveToFile(FPathReq + 'INTPOS.001');
     bkptef(FPathReq,'ADM', SL);

  finally
    SL.Free;
  end;

  if AguardarResposta(1200) then
    Result := ProcessarArquivoResposta(FPathResp + 'INTPOS.001')
  else
  begin
    Result.Aprovado := False;
    Result.MensagemErro := 'Timeout: O cliente/Pinpad não respondeu a tempo.';
  end;

end;


{
procedure TPayGoAPI.DesfazerTransacao(const AIdentificador, ANSU: String);
var
  SL: TStringList;
begin
  LimparArquivosAntigos;
  SL := TStringList.Create;
  try
    SL.Add('000-000 = NCN');
    SL.Add('001-000 = ' + AIdentificador);
    SL.Add('012-000 = ' + ANSU);
    SL.Add('999-999 = 0');
    SL.SaveToFile(FPathReq + 'INTPOS.001');
  finally
    SL.Free;
  end;
end;
 }


function TPayGoAPI.fTefAtivo(const AIdentificador: String): TRetornoPayGo;
var
  SL: TStringList;
begin
  LimparArquivosAntigos;
  SL := TStringList.Create;
  try
    SL.Add('000-000 = ATV');
    SL.Add('001-000 = ' + AIdentificador);
    SL.Add('999-999 = 0');
    SL.SaveToFile(FPathReq + 'INTPOS.001');
    bkptef(FPathReq,'ATV', SL);

  finally
    SL.Free;
  end;

  if AguardarRespostaSts(7) then
    Result.Aprovado:=true
  else
  begin
    Result.Aprovado := False;
    Result.MensagemErro := 'Timeout: O cliente/Pinpad não respondeu a tempo.';
  end;

end;

function TPayGoAPI.CancelarVenda(pIdentificacao: string; pItens: TStrings): TRetornoPayGo;
var
x_reg: integer;

mResposta: TResposta;
ItensEnvio: tStrings;

var
  SL: TStringList;
  ValorCentavos: Int64;
begin

  LimparArquivosAntigos;

  SL := TStringList.Create;
  try
    SL.Add('000-000 = CNC');
    SL.Add('001-000 = '+pIdentificacao);

  for x_reg:=0 to pItens.Count-1 do
     begin
     mResposta := fLerResposta(pItens[x_reg]);
     if AnsiMatchStr(mResposta.item, ['003','010','012','022','023']) then
        begin
        SL.Add(pItens[x_reg]);

{
        if mResposta.item='022' then
           sl.add('022-000 = '+FormatDatetime('ddmmyyyy', date))
        else
           SL.Add(pItens[x_reg]);
}
        end;
     end;





    SL.Add('999-999 = 0');


    bkptef(FPathReq,'CANVDA', SL);

    SL.SaveToFile(FPathReq + 'INTPOS.001');
    ItensEnvio:=TStringList.create;
    ItensEnvio.AddStrings(sl);
  finally
    SL.Free;
  end;

  if AguardarResposta(FTimeoutSegundos) then
     begin
     Result := ProcessarArquivoResposta(FPathResp + 'INTPOS.001');
     result.ItensEnvio:=TStringList.Create;
     result.ItensEnvio.AddStrings(ItensEnvio);
     end
  else
     begin
     Result.Aprovado := False;
     result.ItensEnvio:=TStringList.Create;     
     result.ItensEnvio.AddStrings(ItensEnvio);
     Result.MensagemErro := 'Timeout no cancelamento.';
   end;
end;


function TPayGoAPI.fLerResposta(pRetorno: String): TResposta;
begin
Result.item:=copy(pRetorno,1,3);
Result.subItem:=copy(pRetorno,5,3);


Result.Resposta:=copy(pRetorno,11,length(pRetorno)-10);
end;



function TPayGoAPI.fPegarSeqTef: integer;
begin

DM_CDS.fTestarConfigTef;
DM_CDS.cds_seqtef.close;
DM_CDS.cds_seqtef.Open;
if DM_CDS.cds_seqtef.IsEmpty then
   DM_CDS.cds_seqtef.Insert
else
   DM_CDS.cds_seqtef.edit;

DM_CDS.cds_seqtefseqtef.AsInteger:=DM_CDS.cds_seqtefseqtef.AsInteger+1;
result:=DM_CDS.cds_seqtefseqtef.AsInteger;
DM_CDS.cds_seqtef.Post;
DM_CDS.cds_seqtef.Close;


end;




procedure TPayGoAPI.fAbrirReceb;
begin
if not FileExists(DM_CDS.mNomeArquivoReceb) then
   begin
   DM_CDS.cds_receb.CreateDataSet;
   DM_CDS.cds_receb.SaveToFile(DM_CDS.mNomeArquivoReceb);
   DM_CDS.cds_receb.Close;
   end;
if DM_CDS.cds_receb.active=false then
   DM_CDS.cds_receb.open;

end;

procedure TPayGoAPI.fAbrirPedidoCab;
begin
DM_CDS.fTestarPedidoCab;
if DM_CDS.cds_pedido_cab.active=false then
   DM_CDS.cds_pedido_cab.open;

end;


function TPayGoAPI.fGravarReceb(pTransacao: String; pRetorno: TRetornoPayGo; pIdPedidoForma, pIdPedidoCab: integer): integer;
begin
//DM_CDS.fTestarReceb;


//DM_CDS.cds_receb.LoadFromFile(DM_CDS.mNomeArquivoReceb);
DM_CDS.cds_receb.Open;
DM_CDS.cds_receb.Insert;
DM_CDS.cds_recebtransacao.AsString       :=pTransacao;

DM_CDS.cds_recebstatus.AsInteger          :=0;

try
   if Assigned(pRetorno.Itens) then
      DM_CDS.cds_recebcomprovante.Value         :=pRetorno.Itens.Text;
Except
   end;

DM_CDS.cds_recebnomeRede.AsString         :=pRetorno.NomeRede;
DM_CDS.cds_recebNSU.AsString              :=pRetorno.NSUTransacao;
DM_CDS.cds_recebcodigoAutorizacao.AsString:=pRetorno.CodigoAutorizacao;
DM_CDS.cds_recebchaveId.Value             :=DM_CDS.fBuscarChaveIdReceb;
DM_CDS.cds_recebchave_id_forma.Value      :=pIdPedidoForma;
DM_CDS.cds_recebchave_id_cab.Value        :=pIdPedidoCab;
result:=DM_CDS.cds_recebchaveId.Value;
DM_CDS.cds_receb.post;




end;



procedure TPayGoAPI.fAtualizarReceb(pChaveId, pStatus: integer);
{

0-pendente
1-confirmado
2-nao confirmado(cancelado)
7-pedido de exclusao
8-excluido confirmado
9-excluido nao confirmado(cancelado)
}

begin
DM_CDS.fTestarReceb;

{
DM_CDS.cds_receb.LoadFromFile(DM_CDS.mNomeArquivoReceb);
DM_CDS.cds_receb.Open;
}
if DM_CDS.cds_receb.Locate('chaveId',pChaveId,[]) then
   begin
   DM_CDS.cds_receb.Edit;
   DM_CDS.cds_recebstatus.AsInteger          :=pStatus;
   DM_CDS.cds_receb.Post;
   end;



end;


procedure TPayGoAPI.fAtualizarPedidoFormas(pChaveIdForma: integer; pConfirmaRecebimento: boolean);



begin
//DM_CDS.fTestarPedidoFormas;

DM_CDS.cds_pedido_formas.First;

if DM_CDS.cds_pedido_formas.Locate('chave_Id',pChaveIdForma,[]) then
   begin
   DM_CDS.cds_pedido_formas.Edit;
   DM_CDS.cds_pedido_formassituacao_venda.value := iif(pConfirmaRecebimento=true,'RECEBIDA','AGUARDANDO');
   DM_CDS.cds_pedido_formas.Post;
   fAtualizarPedidoCab(DM_CDS.cds_pedido_formaschave_id_cab.AsInteger,DM_CDS.cds_pedido_formasvalor.AsFloat, pConfirmaRecebimento);
   end;


end;




procedure TPayGoAPI.fAtualizarPedidoCab(pChaveIdCab: integer; pValor: Real; pConfirmaRecebimento: boolean);

begin
//DM_CDS.fTestarPedidoCab;


//DM_CDS.cds_pedido_cab.LoadFromFile(DM_CDS.mNomeArquivoPedidoCab);
//DM_CDS.cds_pedido_cab.Open;
if DM_CDS.cds_pedido_cab.Locate('chaveId',pChaveIdCab,[]) then
   begin
   DM_CDS.cds_pedido_cab.Edit;
   DM_CDS.cds_pedido_cabvalor_tef_recebido.value := DM_CDS.cds_pedido_cabvalor_tef_recebido.value + (pValor * iif(pConfirmaRecebimento,1,-1));

   DM_CDS.cds_pedido_cab.Post;
   end;
end;




{

function TPayGoAPI.StatusDaVenda(pItens: TStrings): TRetornoPayGo;
var
  SL: TStringList;
  x_reg: integer;
  mResposta: TResposta;
  ItensEnvio: TStrings;


begin
LimparArquivosAntigos;


SL := TStringList.Create;
try

   SL.Add('000-000 = CRT');
   for x_reg:=0 to pItens.Count-1 do
      begin
      mResposta := fLerResposta(pItens[x_reg]);
      if AnsiMatchStr(mResposta.item, ['001','999']) then
         begin
         SL.Add(pItens[x_reg]);
         end;
       end;

   Itensenvio := TStringList.create;
   ItensEnvio.AddStrings(sl);
   SL.SaveToFile(FPathReq + 'INTPOS.001');

finally
  SL.Free;
end;

if AguardarResposta(20) then
   begin
   Result := ProcessarArquivoResposta(FPathResp + 'INTPOS.001');
   if Result.Aprovado=false then
      begin
      result.ItensEnvio:= TStringList.create;
      for x_reg:=0 to ItensEnvio.Count-1 do
         begin
         result.ItensEnvio.Add(ItensEnvio[x_reg])
         end;
      end;
   end
else
   begin
   result.Itens:= TStringList.create;
   result.Itens.Add('Operação Cancelada');

   result.ItensEnvio:= TStringList.create;
   for x_reg:=0 to ItensEnvio.Count-1 do
      begin
      result.ItensEnvio.Add(ItensEnvio[x_reg])
      end;
   Result.Aprovado := False;
   Result.MensagemErro := 'Timeout: O cliente/Pinpad não respondeu a tempo.';
   end;

end;

 }


function TPayGoAPI.capacidadeAutomacao: integer;
begin

{
         //1: funcionalidade de troco (ver campo 708-000)
        //2: funcionalidade de desconto (ver campo 709-000)
        //4: valor fixo, sempre incluir
        //8: vias diferenciadas do comprovante para Cliente/Estabelecimento (campos 712-000 a 715-000)
        //16: cupom reduzido (campos 710-000 e 711-000)
        //32: funcionalidade de valor devido (ver campo 743-000)
        //64: funcionalidade de valor reajustado (ver campo 744-000)
        //128: suporta NSU com tamanho de até 40 caracteres (campos 012-000 e 025- 000)
        //256: suporta índice da aplicação com tamanho de até 4 caracteres (campo 739-000)

}
DM_CDS.fTestarConfigTef;

try
   DM_CDS.cds_config_tef.LoadFromFile(DM_CDS.mNomeArquivoConfigTef);
   DM_CDS.cds_config_tef.Open;
   if (DM_CDS.cds_config_tefcf_tef_via_reduzido.AsInteger=1) AND
      (DM_CDS.cds_config_tefcf_tef_qtd_vias.AsInteger=2) then
       result := 4 + 8 + 16 + 128
    else if (DM_CDS.cds_config_tefcf_tef_qtd_vias.AsInteger=2) then
       result := 4 + 8 + 128
    else
       result := 4 + 128;
   DM_CDS.cds_config_tef.close;
except
   result:=0;
   end;


end;


procedure TPayGoAPI.bkptef(pasta, pServico: string; pItens: tStrings);
var
mArqTemp: String;
x_tent: integer;
begin
if mFazerBackups then
   begin
   mArqTemp:= StringReplace(pasta, 'paygo', 'bkptef', [rfIgnoreCase, rfReplaceAll])+pServico;
   x_tent:=0;
   While true do
      begin
      if FileExists(mArqTemp+inttostr(x_tent)+'.txt') then
         x_tent:=x_tent+1
      else
         begin
         mArqTemp := mArqTemp+inttostr(x_tent)+'.txt';
         break;
         end;
       end;
   pItens.SaveToFile(mArqTemp);
   end;
end;



end.
