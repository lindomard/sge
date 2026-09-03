unit S_DadosCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs,
  StdCtrls, Buttons,  ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TDadosContribuinte = record
  atividade_principal_text: string;
  atividade_principal_code: string;
  data_situacao: tdatetime;
  nome: string;
  fantasia: string;
  cep: string;
  logradouro: string;
  complemento: string;
  numero: string;

  bairro: string;
  municipio: string;
  codigo_ibge: string;
  uf: string;
  email: string;
  cnpj: string;
  cpf: string;
  inscricao_estadual: string;
  data_ultima_atualizacao: tdatetime;
  natureza_juridica:  string;
  tipo:  string;
  motivo_situacao:  string;
  situacao_especial:  string;
  data_situacao_especial:  tdatetime;
  telefone:  string;
  atividades_secundarias:  string;
  qsa:  string;
  extra:  string;
  dtiniativ: string;
  dUltSit: string;
  dBaixa: string;
  IEUnica: string;
  IEAtual: string;
  csit: integer;
  regapur: string;
  cnae:string;
  status: string;
  status_descricao:string;
  indCredNFe: integer;
  indCredCTe: integer;

  resposta: string;



  
  end;


type
  TFrm_DadosCNPJ = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    BBnAtu: TBitBtn;
    edt_rf_cnpj: TEdit;
    bbSair: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Edit_CNPJ: TEdit;
    Label3: TLabel;
    Edit_Nome: TEdit;
    Label11: TLabel;
    edt_fantasia: TEdit;
    Label_end: TLabel;
    Edit_Endereco: TEdit;
    Label6: TLabel;
    Edit_Numero: TEdit;
    Label7: TLabel;
    Edit_Complemento: TEdit;
    Label5: TLabel;
    Edit_Cep: TEdit;
    Label8: TLabel;
    Edit_Bairro: TEdit;
    Label9: TLabel;
    edt_municipio: TEdit;
    Label10: TLabel;
    Edt_UF: TEdit;
    Label12: TLabel;
    edt_cnae_principal: TEdit;
    Label13: TLabel;
    Edt_cnae_segundario: TEdit;
    Label14: TLabel;
    edt_datacnpj: TEdit;
    Label15: TLabel;
    edt_codnat_juridica: TEdit;
    bbSairIncluir: TBitBtn;
    Label1: TLabel;
    edt_inscicao_estadual: TEdit;
    edt_codigo_ibge: TEdit;
    Label16: TLabel;
    IdHTTP1: TIdHTTP;
    procedure BBnAtuClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure edt_rf_cnpjChange(Sender: TObject);
    procedure edt_rf_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mIncluirNovo_rf: Boolean;
    mcodloc: integer;

  end;
function fConsultaCNPJ_receita_federal(pcnpj: string; out pDadosContribuinte: TDadosContribuinte): boolean;

var
  Frm_DadosCNPJ: TFrm_DadosCNPJ;
  mDadosContribuinte: TDadosContribuinte;
implementation

{$R *.dfm}

uses FUNC, lerarq;

procedure TFrm_DadosCNPJ.BBnAtuClick(Sender: TObject);
begin
if fsonumero(edt_rf_cnpj.Text)>0 then
   begin
   if not FCGC(fsonumero(edt_rf_cnpj.Text)) then
      begin
      MessageDlg('CNPJ Invalido!',mtError,[mbOk],0);
      edt_rf_cnpj.SetFocus;
      exit;
      end;
   if fConsultaCNPJ_receita_federal(edt_rf_cnpj.Text,mDadosContribuinte) then
      begin
//      mDadosContribuinte     :=fConsultaCNPJ_receita_federal(edt_rf_cnpj.Text);
      Edit_CNPJ.Text          :=MaskCPFCNPJ(mDadosContribuinte.cnpj);
      edt_inscicao_estadual.Text     :=mDadosContribuinte.inscricao_estadual;

      Edit_Nome.Text          :=mDadosContribuinte.nome;
      edt_fantasia.Text       :=mDadosContribuinte.fantasia;
      Edit_Endereco.Text      :=mDadosContribuinte.logradouro;
      Edit_Numero.Text        :=mDadosContribuinte.numero;
      Edit_Complemento.Text   :=mDadosContribuinte.complemento;
      Edit_Cep.Text           :=mDadosContribuinte.cep;
      Edit_Bairro.Text        :=mDadosContribuinte.bairro;
      edt_municipio.Text      :=mDadosContribuinte.municipio;
      Edt_UF.Text             :=mDadosContribuinte.uf;
      edt_codigo_ibge.Text    :=mDadosContribuinte.codigo_ibge;
      edt_cnae_principal.Text :=mDadosContribuinte.atividade_principal_code;
      Edt_cnae_segundario.Text:=mDadosContribuinte.atividades_secundarias;
      if mDadosContribuinte.data_situacao>pdatanula then
         edt_datacnpj.Text       :=FormatDateTime(fdt2, mDadosContribuinte.data_situacao)
      else
         edt_datacnpj.Clear;

      edt_codnat_juridica.Text:=mDadosContribuinte.natureza_juridica;
      if fLerGenerico_query('CADCLI','CRAZAO',' CCNPJ='+fdeixanum(Edit_CNPJ.Text),query_consulta) then
         bbSairIncluir.Visible:=false
      else
        bbSairIncluir.Visible:=true;
      end;
  end;


end;

procedure TFrm_DadosCNPJ.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DadosCNPJ.bbSairIncluirClick(Sender: TObject);
begin
mIncluirNovo_rf:=true;
close;

end;

procedure TFrm_DadosCNPJ.edt_rf_cnpjChange(Sender: TObject);
begin
TEdit(Sender).Text := Mascara_edit(TEdit(Sender).Text,pmaskcnpj);
TEdit(Sender).SelStart := Length(TEdit(Sender).Text);

end;

procedure TFrm_DadosCNPJ.edt_rf_cnpjKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8]) then Abort;

end;




function fConsultaCNPJ_receita_federal(pcnpj: string; out pDadosContribuinte: TDadosContribuinte): boolean;

var
IP : TIdHTTP;
Temporario : String;

mUrl: string;
begin


try
   IP := TIdHTTP.Create(nil);
   with IP do
   begin
   Temporario   := Get(mUrl);//'checkip.dyndns.org');      For X := 1 to Length(Temporario) do
   end;
   IP.Free;
except on e : exception do
   begin
   Messagedlg('Erro ao ler dados da receita federaql '+e.message,mterror,[mbOk],0);
   end;
   end;
end;
end.
