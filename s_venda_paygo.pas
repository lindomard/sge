unit s_venda_paygo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient, ComCtrls, uPayGoAPI, uPayGoTypes,
  DBCtrls, Spin, Mask,StrUtils,uLkJSON, s_vendas_pos,func,
  Menus,IdHTTP, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TFrm_Venda_PayGo = class(TForm)
    PageControl1: TPageControl;
    tsVendas: TTabSheet;
    tsConfiguracaoTef: TTabSheet;
    gb_fechar_venda: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    bbEnviarVenda: TButton;
    bbConfirmarVenda: TButton;
    bbFuncoesAdm: TButton;
    GroupBox2: TGroupBox;
    Memo_result: TMemo;
    tsReceb: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    bbAtualizarRecbto: TButton;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    edt_autorizacao: TEdit;
    Label10: TLabel;
    tsSeqTef: TTabSheet;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox6: TGroupBox;
    DBMemo2: TDBMemo;
    Button6: TButton;
    bbStatusVenda: TButton;
    bbNaoConfirmar: TButton;
    GroupBox7: TGroupBox;
    cb_tef_via_reduzido: TCheckBox;
    edt_tef_qtd_vias: TSpinEdit;
    Label13: TLabel;
    bbConfigTefSalvar: TButton;
    Label14: TLabel;
    edt_tempo_espera_tef: TSpinEdit;
    Label15: TLabel;
    edt_tempo_espera_sts: TSpinEdit;
    bbCancelar: TButton;
    GroupBox8: TGroupBox;
    Memo_enviado: TMemo;
    DBE_chaveId: TDBEdit;
    DBE_valor_pedido: TDBEdit;
    Label16: TLabel;
    DBE_valor_tef: TDBEdit;
    edt_valor_tef_tot: TDBEdit;
    DBE_valor_tef_recebido: TDBEdit;
    DBMemo3: TDBMemo;
    DBEd_valor: TDBEdit;
    DBE_forma_pgto: TDBEdit;
    Label17: TLabel;
    DBE_valor_tef_restante: TDBEdit;
    bbFechar: TButton;
    GroupBox9: TGroupBox;
    DBMemo4: TDBMemo;
    tsConfiigPos: TTabSheet;
    GroupBox10: TGroupBox;
    Label18: TLabel;
    edt_cfg_pos_id_empresa: TSpinEdit;
    Label19: TLabel;
    edt_cfg_pos_client_id: TEdit;
    Label20: TLabel;
    edt_cfg_pos_token_api: TEdit;
    Label21: TLabel;
    edt_cfg_pos_provider: TEdit;
    Label22: TLabel;
    edt_cfg_pos_terminal_id: TEdit;
    Label23: TLabel;
    edt_cfg_pos_apelido: TEdit;
    Label24: TLabel;
    edt_cfg_pos_merchantId: TEdit;
    Label25: TLabel;
    edt_cfg_pos_ambiente: TEdit;
    cb_cfg_pos_ativo: TCheckBox;
    bbPosCfgSalvar: TButton;
    edt_cfg_pos_url: TEdit;
    Label26: TLabel;
    GroupBox11: TGroupBox;
    Memo_retorno: TMemo;
    GroupBox12: TGroupBox;
    Memo_pos_enviado: TMemo;
    procedure bbEnviarVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbFuncoesAdmClick(Sender: TObject);
    procedure bbAtualizarRecbtoClick(Sender: TObject);
    procedure bbConfirmarVendaClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure bbConfigTefSalvarClick(Sender: TObject);
    procedure bbNaoConfirmarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure bbPosCfgSalvarClick(Sender: TObject);
  private
    { Private declarations }

    formPaygoApi : TPayGoAPI;

    mFormVendasPos: tFormVendasPos;


    function fSalvarConfigTef:boolean;


    function fSalvarConfigPos: boolean;








    procedure fImprimirComprovante(mOperacao: String; pRetorno: TRetornoPayGo; pImprimirCupom: boolean);



    procedure fPegarConfigTef;


    function fVendaPendenteDeConfirmacao: boolean;

    function fConfirmarTransacao(pChaveIdForma,pChaveIdRec,pStatusRec: Integer; pConfirmar: boolean): boolean;



    function fCancelarVenda: boolean;


    function DesfazerTransacoes: boolean;
    function ConcluirTransacoes: boolean;


    function fEfetuarVendaPayGo: boolean;




    function fGerarJsonConfig: String;



    procedure fAtualizarDisplay;



    function fEfetuarVendaPosCielo: boolean;


    function fGerarJsonVendas: String;


  public
    { Public declarations }
     mCanceladoPeloUsuario: boolean;
     mChaveIdCab: integer;

     function fVerificarPendencias: integer;

  end;

var
  Frm_Venda_PayGo: TFrm_Venda_PayGo;

implementation

uses  S_DM_CDS, uToast, s_tef_pendentes, S_DM4, lerarq, UPagamentoModel;

{$R *.dfm}

procedure TFrm_Venda_PayGo.bbEnviarVendaClick(Sender: TObject);
var
mMensagem: String;

begin
mMensagem:='';
if (DM_CDS.cds_pedido_formas.IsEmpty) then
   begin
   mMensagem:=mMensagem+'Selecionar uma venda para efetuar o Recebimento!' + mQuebraLinha;
   end
else
   begin
   if (DM_CDS.cds_pedido_formassituacao_venda.Value<>'PENDENTE') then
       mMensagem:=mMensagem+'Selecinar uma forma de pagamento valida para efetuar o Recebimento!' + mQuebraLinha ;
   end;
if not AnsiMatchText(DM_CDS.cds_pedido_formasforma_pgto.Value, ['DEBITO', 'CREDITO', 'PIX']) then
   begin
   mMensagem:=mMensagem+'Forma de Pagamento '+DM_CDS.cds_pedido_formasforma_pgto.Value+' não é uma forma de pagamento válida!' + mQuebraLinha ;
   end;


if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[MbOk],0);
   exit;
   end;
if mTipoTef=1 then
   fEfetuarVendaPosCielo
else
   fEfetuarVendaPayGo;

if (DM_CDS.cds_pedido_cabvalor_tef_restante.AsFloat<=0) then
   begin
   close;
   end;
end;


function TFrm_Venda_PayGo.fEfetuarVendaPayGo: boolean;
var
mRetorno :TRetornoPayGo;
mIdentificacao: String;

begin



mIdentificacao := Formatfloat('000', formPaygoApi.fPegarSeqTef);

mRetorno :=  formPaygoApi.ExecutarVenda(mIdentificacao,   DM_CDS.cds_pedido_formaschave_id.AsInteger, DM_CDS.cds_pedido_formasvalor.AsFloat);
if (mRetorno.Aprovado) then
   begin
   formPaygoApi.fGravarReceb('VENDA',mRetorno,DM_CDS.cds_pedido_formaschave_id.AsInteger,DM_CDS.cds_pedido_formaschave_id_cab.AsInteger);
   fImprimirComprovante('VENDA RECEBIMENTO',mRetorno,false);
   fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, true);
//      formPaygoApi.fAtualizarPedidoFormas(DM_CDS.cds_recebchave_id_forma.AsInteger,true);
//   fTotalizarFpgto;
   bbAtualizarRecbtoClick(self);
   ExibirToast(mRetorno.MensagemTrasacao);
   result:=true;
   end
else
   begin
   ExibirToast('Efetuando Vendas '+ mRetorno.MensagemTrasacao);
   result:=false;
   end;


end;





{
procedure TFrm_Venda_PayGo.fTotalizarFpgto;
var
mTotalFp: real;
begin
DM_CDS.filtrarPedido(mChaveIdCab);
mTotalFp:=0;
DM_CDS.cds_pedido_formas.DisableControls;
DM_CDS.cds_pedido_formas.first;
While not DM_CDS.cds_pedido_formas.Eof do
   begin
   mTotalFp:=mTotalFp+DM_CDS.cds_pedido_formasvalor.AsFloat;
   DM_CDS.cds_pedido_formas.Next;
   end;
DM_CDS.cds_pedido_formas.EnableControls;
//edt_total_fp.Text:=Formatfloat(mcasas,  mTotalFp);
//edt_restante.Text:=Formatfloat(mcasas,  valfloat(edt_valor_venda.Text)-mTotalFp);

end;
 }
procedure TFrm_Venda_PayGo.FormCreate(Sender: TObject);
begin



PageControl1.ActivePageIndex:=0;
//cds_formas_posvalor.DisplayFormat:=mcasas;
 formPaygoApi := TPayGoAPI.Create();
 mFormVendasPos := tFormVendasPos.Create();
fPegarConfigTef;
fAtualizarDisplay;
end;

procedure TFrm_Venda_PayGo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

if formPaygoApi<>nil then
   freeandNIl(formPaygoApi);

if (mFormVendasPos<>nil) then
   freeandNil(mFormVendasPos);


end;

procedure TFrm_Venda_PayGo.bbFuncoesAdmClick(Sender: TObject);

var
retornoPaygo: TRetornoPayGo;
begin
retornoPaygo :=    formPaygoApi.FuncoesAdministativas('VISA');
if (retornoPaygo.Aprovado) then
    begin
    fImprimirComprovante('Funcoes Administrativas',retornoPaygo,false);
    end
else
   begin

   ExibirToast('Funcoes Administrativas: '+ retornoPaygo.MensagemTrasacao);


   end;

end;



procedure TFrm_Venda_PayGo.fImprimirComprovante(mOperacao: String; pRetorno: TRetornoPayGo; pImprimirCupom: boolean);
var
i: integer;
Resposta: TResposta;
begin

Memo_result.Lines.add(centra(mOperacao,'*',80));
Memo_result.Lines.add('Codigo da Resposta '+pRetorno.CodigoResposta);
Memo_result.Lines.add('Nome Rede '+pRetorno.NomeRede);
Memo_result.Lines.add('NsuTransacao '+pRetorno.NSUTransacao);
Memo_result.Lines.add('Codigo autorizacao '+pRetorno.CodigoAutorizacao);
Memo_result.Lines.add('comprovate do cleinte  '+pRetorno.ComprovanteCliente);
Memo_result.Lines.add('comprovate do Lojista  '+pRetorno.ComprovanteLojista);
Memo_result.Lines.add('Aprovado   '+iif(pRetorno.Aprovado=true,'Sim','***Nao***'));
Memo_result.Lines.add('Mensagem de Erro  '+pRetorno.MensagemErro);

for i:=0 to pRetorno.Itens.Count-1 do
   begin
   Memo_result.Lines.add(pRetorno.Itens[i]);
   Resposta := formPaygoApi.fLerResposta(pRetorno.Itens[i]);
//   Memo_result.Lines.add('Item '+ Resposta.item+' sub-item ' + Resposta.subItem + '['+Resposta.Resposta+']');

   end;



end;
procedure TFrm_Venda_PayGo.bbAtualizarRecbtoClick(Sender: TObject);
begin
formPaygoApi.fAbrirReceb;

DM_CDS.cds_receb.Filtered := False;
DM_CDS.cds_receb.Filter := 'chave_id_cab='+intTostr(mChaveIdCab);
DM_CDS.cds_receb.Filtered := True;
DM_CDS.cds_receb.First;



end;

procedure TFrm_Venda_PayGo.bbConfirmarVendaClick(Sender: TObject);

begin

if not DM_CDS.cds_receb.IsEmpty then
   begin
   DM_CDS.cds_receb.Last;
   if (DM_CDS.cds_recebstatus.AsInteger<>0) and (DM_CDS.cds_recebstatus.AsInteger<>7) then
      begin
      MessageDlg('NSU '+DM_CDS.cds_recebNSU.AsString+' REDE '+DM_CDS.cds_recebnomeRede.AsString+' Status da Venda '+DM_CDS.cds_recebstatus.AsString,mtWarning,[mbOk],0);
      exit;
      end;
   fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, true);


   end;

end;

function TFrm_Venda_PayGo.fConfirmarTransacao(pChaveIdForma,pChaveIdRec,pStatusRec: Integer; pConfirmar: boolean): boolean;
var
retornoPaygo: TRetornoPayGo;
itens: TStrings;
begin
itens:=TStringList.Create;
itens.Text := DM_CDS.cds_recebcomprovante.AsString;
retornoPaygo := formPaygoApi.ConfirmarTransacao(itens,pConfirmar);
if retornoPaygo.Aprovado then
   begin
   formPaygoApi.fAtualizarReceb(pChaveIdRec,iif(pStatusRec=7,iif(pConfirmar=true,9,8),iif(pconfirmar=true,1,2)));
   formPaygoApi.fAtualizarPedidoFormas(pChaveIdForma,iif(pStatusRec=7,false,true));
   result:=true;
   end
else
   begin
   ExibirToast('Confirmação '+iif(pStatusRec=7,iif(pConfirmar=true,'Cancelamento/Venda','cancelamento Estorno'),iif(pconfirmar=true, 'Venda','estorno'))+': '+ retornoPaygo.MensagemTrasacao);
   result:=false;
   end;


end;

procedure TFrm_Venda_PayGo.Button6Click(Sender: TObject);
begin
DM_CDS.cds_seqtef.close;
if FileExists(DM_CDS.mNomeArquivoReceb) then
   begin
   DM_CDS.cds_seqtef.LoadFromFile(DM_CDS.mNomeArquivoSeqTef);
   DM_CDS.cds_seqtef.open;
   end;

end;

procedure TFrm_Venda_PayGo.fPegarConfigTef;
begin
DM_CDS.fTestarConfigTef;
DM_CDS.cds_config_tef.LoadFromFile(DM_CDS.mNomeArquivoConfigTef);
DM_CDS.cds_config_tef.Open;
cb_tef_via_reduzido.Checked := DM_CDS.cds_config_tefcf_tef_via_reduzido.AsInteger=1;
edt_tef_qtd_vias.Value  := DM_CDS.cds_config_tefcf_tef_qtd_vias.AsInteger;


edt_cfg_pos_url.text         := DM_CDS.cds_config_tefcf_pos_url.value;
edt_cfg_pos_id_empresa.Value := DM_CDS.cds_config_tefcf_pos_empresa_id.value;
edt_cfg_pos_provider.Text    := DM_CDS.cds_config_tefcf_pos_provider.Value;
edt_cfg_pos_terminal_id.Text := DM_CDS.cds_config_tefcf_pos_terminalId.Value;
edt_cfg_pos_apelido.Text     := DM_CDS.cds_config_tefcl_pos_apelido.Value;
edt_cfg_pos_client_id.Text   := DM_CDS.cds_config_tefcl_pos_clientId.Value;
edt_cfg_pos_merchantId.Text  := DM_CDS.cds_config_tefcl_pos_merchantId.Value;
edt_cfg_pos_token_api.Text   := DM_CDS.cds_config_tefcl_pos_tokenApi.Value;
edt_cfg_pos_ambiente.text    := DM_CDS.cds_config_tefcf_pos_ambiente.Value;
cb_cfg_pos_ativo.Checked     := DM_CDS.cds_config_tefcf_pos_ativo.Value=1;
 

DM_CDS.cds_config_tef.close;

end;

function TFrm_Venda_PayGo.fSalvarConfigTef: boolean;
begin
try
   DM_CDS.FTestarSeqTef;
   DM_CDS.cds_config_tef.LoadFromFile(DM_CDS.mNomeArquivoConfigTef);
   DM_CDS.cds_config_tef.Open;
   if DM_CDS.cds_config_tef.IsEmpty then
      DM_CDS.cds_config_tef.Append
   else
      DM_CDS.cds_config_tef.Edit;

   DM_CDS.cds_config_tefcf_tef_via_reduzido.AsInteger := iif(cb_tef_via_reduzido.Checked,1,0);
   DM_CDS.cds_config_tefcf_tef_qtd_vias.AsInteger := edt_tef_qtd_vias.Value;
   DM_CDS.cds_config_tef.Post;
   DM_CDS.cds_config_tef.SaveToFile(DM_CDS.mNomeArquivoConfigTef);
   DM_CDS.cds_config_tef.close;
   result:=true;
except
   result:=false;
   end;

end;


procedure TFrm_Venda_PayGo.bbConfigTefSalvarClick(Sender: TObject);
begin
if fSalvarConfigTef then
   MessageDlg('Configurações Salva!',mtInformation,[mbok],0)
else
   MessageDlg('Erro ao Salvar Configurações!',mtError,[mbok],0)



end;

procedure TFrm_Venda_PayGo.bbNaoConfirmarClick(Sender: TObject);

begin

if not DM_CDS.cds_receb.IsEmpty then
   begin
   DM_CDS.cds_receb.Last;

   if (DM_CDS.cds_recebstatus.AsInteger<>0) and (DM_CDS.cds_recebstatus.AsInteger<>7) then
      begin
      MessageDlg('NSU '+DM_CDS.cds_recebNSU.AsString+' REDE '+DM_CDS.cds_recebnomeRede.AsString+' Status da Venda '+DM_CDS.cds_recebstatus.AsString,mtWarning,[mbOk],0);
      exit;


      end;

   fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, false);




   end;





end;


procedure TFrm_Venda_PayGo.bbCancelarClick(Sender: TObject);
begin
if DM_CDS.cds_receb.IsEmpty then
   begin
   ExibirToast('Selecione uma Venda valida para efetuar o cancelamento.');

   end
else
   begin
   fCancelarVenda;
   end;
end;


function TFrm_Venda_PayGo.fCancelarVenda:boolean;
var
itens: TStrings;
mRetorno :TRetornoPayGo;
mIdentificacao: string;

mChaveIdVenda: integer;

begin

result:=true;
itens:=TStringList.Create;
if DM_CDS.cds_recebstatus.AsInteger<>1  then
   begin
   MessageDlg('NSU '+DM_CDS.cds_recebNSU.AsString+' REDE '+DM_CDS.cds_recebnomeRede.AsString+' Status da Venda '+DM_CDS.cds_recebstatus.AsString
   +' Não Podera Ser Excluido ' ,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
mChaveIdVenda := DM_CDS.cds_recebchaveId.AsInteger;
itens.Text:=DM_CDS.cds_recebcomprovante.AsString;
mIdentificacao := Formatfloat('000', formPaygoApi.fPegarSeqTef);

mRetorno := formPaygoApi.CancelarVenda(mIdentificacao,itens);


fImprimirComprovante('************CANCELAMENTO DE VENDA***********',mRetorno,false);

if (mRetorno.Aprovado) then
   begin

   formPaygoApi.fGravarReceb('EST0RNO VENDA',mRetorno,DM_CDS.cds_recebchave_id_forma.AsInteger,DM_CDS.cds_recebchave_id_cab.AsInteger  );
   if fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger,true) then
      begin
      formPaygoApi.fAtualizarReceb(DM_CDS.cds_recebchaveId.AsInteger,1);
      formPaygoApi.fAtualizarReceb(mChaveIdVenda,2);
      formPaygoApi.fAtualizarPedidoFormas(DM_CDS.cds_recebchave_id_forma.AsInteger,false);



//      fTotalizarFpgto;
      bbAtualizarRecbtoClick(self);
      ExibirToast(mRetorno.MensagemTrasacao);
      MessageDlg(mRetorno.MensagemTrasacao+'.Estorno de Pagamento Concluido com Sucesso!',mtInformation,[mbOk],0);
      end
   else
      begin
      result:=false;
      MessageDlg(mRetorno.MensagemTrasacao+'.Erro ao Tentar Cancelar Venda!',mtInformation,[mbOk],0);

      end;


   end
else
   begin
   result:=false;
   ExibirToast(mRetorno.MensagemTrasacao);
   MessageDlg('Nao Foi Possivel Realizar o Estorno: '+mRetorno.MensagemTrasacao+' '+ mRetorno.CodigoResposta+' '+mRetorno.MensagemErro ,mtInformation,[mbOk],0);
   end;

end;

function TFrm_Venda_PayGo.fVerificarPendencias: integer;
var
mExistePendencia: boolean;
begin
result:=0;
mExistePendencia :=true;
formPaygoApi.fAbrirPedidoCab;
While mExistePendencia do
   begin
   mExistePendencia :=false;

   DM_CDS.cds_pedido_cab.First;
   While not DM_CDS.cds_pedido_cab.eof do
      begin
      if (DM_CDS.cds_pedido_caberroaoconcluir.AsInteger=0) and
         (DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat>0) AND        (DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat<DM_CDS.cds_pedido_cabvalor_tef.AsFloat) then
         begin
         mExistePendencia :=true;
         result:=DM_CDS.cds_pedido_cabchaveId.AsInteger;
         if fVendaPendenteDeConfirmacao=false then
            begin
            if not (DM_CDS.cds_pedido_cab.State in [dsEdit,dsInsert]) then
               DM_CDS.cds_pedido_cab.edit;

            DM_CDS.cds_pedido_caberroaoconcluir.AsInteger:=1;
            DM_CDS.cds_pedido_cab.Post;
            exit;
            end;
         end;
      DM_CDS.cds_pedido_cab.Next;
      end;
   end;



end;

function TFrm_Venda_PayGo.fVendaPendenteDeConfirmacao:boolean;
begin
result:=true;
if (DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat>0) AND (DM_CDS.cds_pedido_cabvalor_tef.AsFloat<>DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat) then
   begin
   Application.CreateForm(TFrm_tef_pendentes, Frm_tef_pendentes);
    Frm_tef_pendentes.lbl_notifica.Caption:=Format('Foi encontrado uma transacao pendente cliente %s. Pedido %s Valor total do Pedido %2.f Valor Tef %2.f '
    +' Valor Aprovado  %2.f  '
          ,[DM_CDS.cds_pedido_cabrazao_social.AsString,DM_CDS.cds_pedido_cabchaveId.AsString,
          DM_CDS.cds_pedido_cabvalor_pedido.AsFloat, DM_CDS.cds_pedido_cabvalor_tef.AsFloat,
          DM_CDS.cds_pedido_cabvalor_tef.AsFloat]);
   Frm_tef_pendentes.ShowModal;
   if Frm_tef_pendentes.mConclusao=0 then
      result:=ConcluirTransacoes
   else if Frm_tef_pendentes.mConclusao=1 then
      result:=DesfazerTransacoes
   else
      begin
      result:=false;
      end;
   end;
{
else
   begin
   MessageDlg('Arquivos de Controles pedido_forma.dbf esta com problemas',mtWarning,[mbOk],0);
   result:=false;

   end;

end

else
   begin
   MessageDlg('Arquivos de Controles pedido_cab.dbf esta com problemas',mtWarning,[mbOk],0);
   result:=false;

   end;
}
end;



function TFrm_Venda_PayGo.DesfazerTransacoes: boolean;
begin
if not DM_CDS.cds_receb.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]) then
   begin
   MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
   result:=false;
   exit;
   end;


While (not DM_CDS.cds_receb.eof) and (DM_CDS.cds_recebchave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_recebstatus.AsInteger=0 then
      begin
      if not fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, false) then
         begin
         MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM_CDS.cds_receb.Next;
   end;

DM_CDS.cds_receb.First;
if not DM_CDS.cds_receb.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]) then
   begin
   MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
   result:=false;
   exit;
   end;

While (not DM_CDS.cds_receb.eof) and (DM_CDS.cds_recebchave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_recebstatus.AsInteger=7 then
      begin
      if not fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, false) then
         begin
         MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM_CDS.cds_receb.Next;
   end;


DM_CDS.cds_receb.First;
if not DM_CDS.cds_receb.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]) then
   begin
   MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
While (not DM_CDS.cds_receb.eof) and ( DM_CDS.cds_recebchave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_recebtransacao.AsString='VENDA' then
      begin
      if DM_CDS.cds_recebstatus.AsInteger=1 then
         begin
         if not fCancelarVenda then
            begin
            MessageDlg('Não foi possivel desfazer as transações, utilize funcoes administrativas',mtError,[mbOk],0);
            result:=false;
            exit;
            end;
         end;
      end;
   DM_CDS.cds_receb.Next;
   end;


end;





function TFrm_Venda_PayGo.ConcluirTransacoes: boolean;
begin

if not DM_CDS.cds_receb.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]) then
   begin
   MessageDlg('Não foi possivel concluir as transações, utilize funcoes administrativas',mtError,[mbOk],0);
   result:=false;
   exit;
   end;


While (not DM_CDS.cds_receb.eof) and  (DM_CDS.cds_recebchave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_recebstatus.AsInteger=0 then
      begin
      if not fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, true) then
         begin
         MessageDlg('Não foi possivel concluir as transações, utilize funcoes administrativas',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM_CDS.cds_receb.Next;
   end;

DM_CDS.cds_receb.first;
DM_CDS.cds_receb.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]);

While (not DM_CDS.cds_receb.eof) and (DM_CDS.cds_recebchave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_recebstatus.AsInteger=7 then
      begin
      if not fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, true) then
         begin
         MessageDlg('Não foi possivel concluir as transações, utilize funcoes administrativas',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM_CDS.cds_receb.Next;
   end;



//DM_CDS.cds_pedido_formas.filtered :=false;
DM_CDS.cds_pedido_formas.First;
if not DM_CDS.cds_pedido_formas.Locate('chave_id_cab',DM_CDS.cds_pedido_cabchaveId.AsInteger,[]) then
   begin
   MessageDlg('Não foi possivel concluir as transações, utilize funcoes administrativas',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
While (not DM_CDS.cds_pedido_formas.eof) and (DM_CDS.cds_pedido_formaschave_id_cab.AsInteger=DM_CDS.cds_pedido_cabchaveId.AsInteger) do
   begin
   if DM_CDS.cds_pedido_formassituacao_venda.Value='PENDENTE' then
      begin
      if not fEfetuarVendaPayGo then
         begin
         MessageDlg('Não foi possivel confirmar as transações, utilize funcoes administrativas',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM_CDS.cds_pedido_formas.Next;
   end;

result:=true;
end;


procedure TFrm_Venda_PayGo.bbFecharClick(Sender: TObject);
begin
mCanceladoPeloUsuario:=true;
close;
end;

procedure TFrm_Venda_PayGo.bbPosCfgSalvarClick(Sender: TObject);
var

pUrl: String;
mRetorno: String;

begin
if fSalvarConfigPos then
   begin

   pUrl:=edt_cfg_pos_url.Text+'api/pos/configuracoes';
   Memo_pos_enviado.Lines.clear;
   Memo_pos_enviado.Lines.add('URL: '+pUrl);
   Memo_pos_enviado.Lines.add(fGerarJsonConfig);
   mRetorno := mFormVendasPos.fEnviarPos(pUrl, fGerarJsonConfig);
   Memo_retorno.Lines.text:=mRetorno;


   MessageDlg('Configurações Salva!',mtInformation,[mbok],0);
   end
else
   MessageDlg('Erro ao Salvar Configurações!',mtError,[mbok],0)

end;



function TFrm_Venda_PayGo.fSalvarConfigPos: boolean;
begin
try
   DM_CDS.FTestarSeqTef;
   DM_CDS.cds_config_tef.LoadFromFile(DM_CDS.mNomeArquivoConfigTef);
   DM_CDS.cds_config_tef.Open;
   if DM_CDS.cds_config_tef.IsEmpty then
      DM_CDS.cds_config_tef.append
   else
      DM_CDS.cds_config_tef.edit;
   DM_CDS.cds_config_tefcf_pos_url.value        := edt_cfg_pos_url.text;
   DM_CDS.cds_config_tefcf_pos_empresa_id.value := edt_cfg_pos_id_empresa.Value;
   DM_CDS.cds_config_tefcf_pos_provider.Value   :=  edt_cfg_pos_provider.Text;
   DM_CDS.cds_config_tefcf_pos_terminalId.Value :=  edt_cfg_pos_terminal_id.Text;
   DM_CDS.cds_config_tefcl_pos_apelido.Value    :=  edt_cfg_pos_apelido.Text;
   DM_CDS.cds_config_tefcl_pos_clientId.Value   :=  edt_cfg_pos_client_id.Text;
   DM_CDS.cds_config_tefcl_pos_merchantId.Value :=  edt_cfg_pos_merchantId.Text;
   DM_CDS.cds_config_tefcl_pos_tokenApi.Value   :=  edt_cfg_pos_token_api.Text;
   DM_CDS.cds_config_tefcf_pos_ambiente.Value   :=  edt_cfg_pos_ambiente.text;
   DM_CDS.cds_config_tefcf_pos_ativo.Value      :=  iif(cb_cfg_pos_ativo.Checked,1,0);
   DM_CDS.cds_config_tef.Post;
   DM_CDS.cds_config_tef.SaveToFile(DM_CDS.mNomeArquivoConfigTef);
   DM_CDS.cds_config_tef.close;
   result:=true;
except
   result:=false;
   end;

end;






function TFrm_Venda_PayGo.fGerarJsonConfig: String;
var
  JsonRoot: TlkJSONobject;
  JsonList: TlkJSONlist;
  ItemObj: TlkJSONobject;
  I: Integer;
  S: String;
begin
  JsonRoot := TlkJSONobject.Create;
  JsonList := TlkJSONlist.Create;
  try
    // Create and add child objects to the list
    JsonRoot.Add('empresaId', edt_cfg_pos_id_empresa.Value);
    JsonRoot.Add('provider', edt_cfg_pos_provider.Text);
    JsonRoot.Add('terminalId', edt_cfg_pos_terminal_id.text);
    JsonRoot.Add('apelido', edt_cfg_pos_apelido.text);
    JsonRoot.Add('clientId', edt_cfg_pos_client_id.Text);
    JsonRoot.Add('merchantId', edt_cfg_pos_merchantId.Text);
    JsonRoot.Add('tokenApi', edt_cfg_pos_token_api.Text);
    JsonRoot.Add('ambiente', edt_cfg_pos_apelido.Text);
    if cb_cfg_pos_ativo.Checked=true then
       JsonRoot.Add('ativo', true)
    else
       JsonRoot.Add('ativo', false);

    // Generate output text
    I := 0;
    S := TlkJSON.GenerateText(JsonRoot);
    result:=s;
  finally
    JsonRoot.Free; // Frees the root and all owned child objects/lists
  end;



end;




function TFrm_Venda_PayGo.fGerarJsonVendas: String;
var
  JsonRoot: TlkJSONobject;
  JsonList: TlkJSONlist;
  ItemObj: TlkJSONobject;
  S: String;
  x_parc: integer;
begin
  JsonRoot := TlkJSONobject.Create;
  JsonList := TlkJSONlist.Create;
  try
      JsonRoot.Add('empresaId', edt_cfg_pos_id_empresa.Value);
      JsonRoot.Add('vendaId', DM_CDS.cds_pedido_cabchaveId.AsInteger);
      JsonRoot.Add('valorTotal', DM_CDS.cds_pedido_formasvalor.AsFloat);
      JsonRoot.Add('terminal', edt_cfg_pos_terminal_id.Text);
      JsonRoot.Add('observacao',DM_CDS.cds_pedido_cabobservacao.AsString);


    x_parc:=0;
    DM_CDS.cds_pedido_formas.First;
    while not DM_CDS.cds_pedido_formas.Eof do
      begin
      x_parc:=x_parc+1;
      ItemObj := TlkJSONobject.Create;
      ItemObj.Add('valor', DM_CDS.cds_pedido_formasvalor.AsFloat);
      ItemObj.Add('formaPagamento', DM_CDS.cds_pedido_formasforma_pgto.AsString);
      ItemObj.Add('parcelas', x_parc);
      JsonList.Add(ItemObj); // Add object to TlkJSONlist
      DM_CDS.cds_pedido_formas.next;
      end;


    // Attach the list to the root object under a key name
      JsonRoot.Add('pagamentos', JsonList);

    // Generate output text
      S := TlkJSON.GenerateText(JsonRoot);
      result:=s;
  finally
    JsonRoot.Free; // Frees the root and all owned child objects/lists
  end;


end;



procedure TFrm_Venda_PayGo.fAtualizarDisplay;
begin
if (mTipoTef=1) then
   begin
   bbEnviarVenda.Caption:='Enviar Pagamento (POS)';
   Frm_Venda_PayGo.Caption:='Venda POS';
   end
else
   begin
   bbEnviarVenda.Caption:='Enviar Pagamento (TEF)';
   Frm_Venda_PayGo.Caption:='Venda TEF-PayGo';
   end;


end;


// cielo pos


function TFrm_Venda_PayGo.fEfetuarVendaPosCielo: boolean;

var
mJsonVendas: String;
pUrl: String;
mRetorno :TRetornoPayGo;

mRet: String;

Venda: TVendaPagamento;
ItemPag: TPagamentoItem;
VendaPagamento: TVendaPagamento;
i: integer;
begin




pUrl:= edt_cfg_pos_url.Text+ 'api/pos/vendas';

Memo_pos_enviado.Lines.clear;
Memo_pos_enviado.Lines.add('URL: '+pUrl);
Memo_pos_enviado.Lines.add(fGerarJsonVendas);

mRet := mFormVendasPos.fEnviarPos(pUrl, fGerarJsonVendas);


VendaPagamento:=TVendaPagamento.Create;
Venda := VendaPagamento.CarregarVendaDoJson(mrET);




{
try
    // Lendo as propriedades do objeto principal
    ShowMessage('Venda ID: ' + IntToStr(Venda.VendaId) + #13#10 +
                'Terminal: ' + Venda.Terminal + #13#10 +
                'Status: ' + Venda.Status);

    // Percorrendo a lista interna de pagamentos
    for i := 0 to Venda.Pagamentos.Count - 1 do
    begin
      ItemPag := TPagamentoItem(Venda.Pagamentos[i]);
      ShowMessage('Item Pagamento ID: ' + IntToStr(ItemPag.Id) + #13#10 +
                  'Valor: ' + FloatToStr(ItemPag.Valor));
    end;

  finally
    Venda.Free; // Isso destruirá o objeto principal e todos os objetos internos automaticamente
  end;

}

Memo_retorno.Lines.Text:=mRet;

mRetorno:=mFormVendasPos.AguardarRespostaPos(DM_CDS.cds_pedido_formaschave_id.AsInteger, edt_cfg_pos_url.Text,formPaygoApi.FTimeoutSegundos);


if (mRetorno.Aprovado) then
   begin
   formPaygoApi.fGravarReceb('VENDA',mRetorno,DM_CDS.cds_pedido_formaschave_id.AsInteger,DM_CDS.cds_pedido_formaschave_id_cab.AsInteger);
//   fImprimirComprovante('VENDA RECEBIMENTO',mRetorno,false);
  // fConfirmarTransacao(DM_CDS.cds_recebchave_id_forma.AsInteger, DM_CDS.cds_recebchaveId.AsInteger, DM_CDS.cds_recebstatus.AsInteger, true);
//      formPaygoApi.fAtualizarPedidoFormas(DM_CDS.cds_recebchave_id_forma.AsInteger,true);
//   fTotalizarFpgto;
   bbAtualizarRecbtoClick(self);
   ExibirToast(mRetorno.MensagemTrasacao);
   result:=true;
   end
else
   begin
   ExibirToast('Efetuando Vendas '+ mRetorno.MensagemTrasacao);
   result:=false;
   end;


end;

// cielo pos final

end.
