unit S_DadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,func,db,dbtables;

type
  TFrm_DadCli = class(TForm)
    Label2: TLabel;
    RAZSOC: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CNPF: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    DENOM: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ENDERECO: TEdit;
    Label9: TLabel;
    BAIRRO: TEdit;
    Label10: TLabel;
    CIDADE: TEdit;
    Label11: TLabel;
    UF: TEdit;
    CNPJ: TMaskEdit;
    Label13: TLabel;
    RG: TEdit;
    Label14: TLabel;
    IE: TEdit;
    bbConfSai: TBitBtn;
    BitBtn1: TBitBtn;
    lbl_codconv: TLabel;
    txt_codconv: TEdit;
    lbl_nomconv: TLabel;
    txt_nomconv: TMaskEdit;
    Label12: TLabel;
    CEP: TMaskEdit;
    TELEFONE: TEdit;
    FAX: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbConfSaiClick(Sender: TObject);
    procedure CNPJExit(Sender: TObject);
    procedure CNPFExit(Sender: TObject);
    procedure txt_codconvExit(Sender: TObject);
    procedure CEPExit(Sender: TObject);
    procedure FAXExit(Sender: TObject);
    procedure TELEFONEExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

    ant_codcli  : Real;
    ant_cnpj    : Real;
    ant_cnpf    : Real;
    ant_razao   : String;
    ant_fone    : String;
    ant_denom   : String;
    ant_fax     : String;
    ant_endereco: String;
    ant_bairro  : String;
    ant_cidade  : String;
    ant_uf      : String;
    ant_cep     : String;
    ant_rg      : String;
    ant_ie      : String;
    mReadonly   : Boolean;
    mTabStop : Boolean;
    function FAtualizaText(pTipo: Integer): Boolean;

    function fLimparTextos: Boolean;

  end;
var
  Frm_DadCli: TFrm_DadCli;
implementation

uses S_DM1, lerarq, S_BuscaCep, S_DM_MYSQL;

{$R *.dfm}

procedure TFrm_DadCli.BitBtn1Click(Sender: TObject);
begin
if trim(ant_razao)<>'' then
   begin
   Frm_DadCli.CNPJ.Text    :=FormatFloat(pDFCNPJ,ant_cnpj);
   Frm_DadCli.CNPF.Text    :=FormatFloat(pDFCNPF,ant_cnpf);
   Frm_DadCli.RAZSOC.Text  :=ant_razao;
   Frm_DadCli.DENOM.Text   :=ant_denom;
   Frm_DadCli.TELEFONE.Text:=ant_fone;
   Frm_DadCli.FAX.Text     :=ant_fax;
   Frm_DadCli.ENDERECO.Text:=ant_endereco;
   Frm_DadCli.BAIRRO.Text  :=ant_bairro;
   Frm_DadCli.CIDADE.Text  :=ant_cidade;
   Frm_DadCli.UF.Text      :=ant_uf;
   Frm_DadCli.CEP.Text     :=ant_cep;
   Frm_DadCli.RG.Text      :=ant_rg;
   Frm_DadCli.IE.Text      :=ant_ie;
   end;
close;
end;

procedure TFrm_DadCli.bbConfSaiClick(Sender: TObject);
begin
close;
end;

function TFrm_DadCli.fAtualizaText(ptipo: Integer): Boolean;
begin
Frm_DadCli.CNPJ.ReadOnly       :=mReadonly;
Frm_DadCli.CNPF.ReadOnly       :=mReadonly;
Frm_DadCli.RAZSOC.ReadOnly     :=mReadonly;
Frm_DadCli.DENOM.ReadOnly      :=mReadonly;
Frm_DadCli.TELEFONE.ReadOnly   :=mReadonly;
Frm_DadCli.FAX.ReadOnly        :=mReadonly;
Frm_DadCli.ENDERECO.ReadOnly   :=mReadonly;
Frm_DadCli.BAIRRO.ReadOnly     :=mReadonly;
Frm_DadCli.CIDADE.ReadOnly     :=mReadonly;
Frm_DadCli.UF.ReadOnly         :=mReadonly;
Frm_DadCli.CEP.ReadOnly        :=mReadonly;
Frm_DadCli.RG.ReadOnly         :=mReadonly;
Frm_DadCli.IE.ReadOnly         :=mReadonly;
Frm_DadCli.txt_codconv.ReadOnly:=mReadonly;

Frm_DadCli.CNPJ.TabStop        :=mTabStop;
Frm_DadCli.CNPF.TabStop        :=mTabStop;
Frm_DadCli.RAZSOC.TabStop      :=mTabStop;
Frm_DadCli.DENOM.TabStop       :=mTabStop;
Frm_DadCli.TELEFONE.TabStop    :=mTabStop;
Frm_DadCli.FAX.TabStop         :=mTabStop;
Frm_DadCli.ENDERECO.TabStop    :=mTabStop;
Frm_DadCli.BAIRRO.TabStop      :=mTabStop;
Frm_DadCli.CIDADE.TabStop      :=mTabStop;
Frm_DadCli.UF.TabStop          :=mTabStop;
Frm_DadCli.CEP.TabStop         :=mTabStop;
Frm_DadCli.RG.TabStop          :=mTabStop;
Frm_DadCli.IE.TabStop          :=mTabStop;
Frm_DadCli.txt_codconv.TabStop :=mTabStop;


{
if mParentFont=false then
   begin
   Frm_DadCli.CNPJ.Color     := clWindow;
   Frm_DadCli.CNPF.Color     := clWindow;
   Frm_DadCli.RAZSOC.Color   := clWindow;
   Frm_DadCli.DENOM.Color    := clWindow;
   Frm_DadCli.TELEFONE.Color := clWindow;
   Frm_DadCli.FAX.Color      := clWindow;
   Frm_DadCli.ENDERECO.Color := clWindow;
   Frm_DadCli.BAIRRO.Color   := clWindow;
   Frm_DadCli.CIDADE.Color   := clWindow;
   Frm_DadCli.UF.Color       := clWindow;
   Frm_DadCli.CEP.Color      := clWindow;
   Frm_DadCli.RG.Color       := clWindow;
   Frm_DadCli.IE.Color       := clWindow;
   end;
}
result:=true;
end;


function TFrm_DadCli.fLimparTextos: Boolean;
begin
Frm_DadCli.CNPJ.Clear;
Frm_DadCli.CNPF.Clear;
Frm_DadCli.RAZSOC.Clear;
Frm_DadCli.DENOM.Clear;
Frm_DadCli.TELEFONE.Clear;
Frm_DadCli.FAX.Clear;
Frm_DadCli.ENDERECO.Clear;
Frm_DadCli.BAIRRO.Clear;
Frm_DadCli.CIDADE.Clear;
Frm_DadCli.UF.Clear;
Frm_DadCli.CEP.Clear;
Frm_DadCli.RG.Clear;
Frm_DadCli.IE.Clear;
Frm_DadCli.txt_codconv.Clear;

result:=true;
end;

procedure TFrm_DadCli.CNPJExit(Sender: TObject);
begin
CNPJ.Text:=FormatFloat(pDFCNPJ, fsonumero(CNPJ.Text));
end;

procedure TFrm_DadCli.CNPFExit(Sender: TObject);
begin
CNPF.Text:=FormatFloat(pDFCNPF, fsonumero(CNPF.Text));

end;

procedure TFrm_DadCli.txt_codconvExit(Sender: TObject);
begin
txt_codconv.Text:=fdeixanum2(txt_codconv.Text);
if txt_codconv.Text='' then
   txt_nomconv.Text:=''
else
   begin
   txt_codconv.Text:=DM1.Tb_CliCCODCV.AsString;
   txt_nomconv.Text:=DM1.Tb_CliCNOMCV.AsString;
   end;
end;

procedure TFrm_DadCli.CEPExit(Sender: TObject);
begin
if (trim(ENDERECO.Text)='') and (fsonumero(CEP.Text)<>0) then
   begin
   testeform := TFrm_DadCli(FindGlobalComponent('Frm_buscacep'));
   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      freeandNil(Frm_BuscaCep);
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_cli';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.edtCep.Text:=CEP.Text;
   Frm_BuscaCep.bbBuscarCEPClick(Self);
   if Frm_BuscaCep.mCepencontrado then
      begin
      Frm_DadCli.ENDERECO.Text:=Frm_BuscaCep.edtLogradouro.Text;
      Frm_DadCli.CEP.Text     :=Frm_BuscaCep.edtCep.Text;

//      MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      Frm_DadCli.BAIRRO.Text  :=Frm_BuscaCep.edtBairro.Text;
      Frm_DadCli.CIDADE.Text  :=Frm_BuscaCep.edtCidade.Text;
      Frm_DadCli.UF.Text      :=Frm_BuscaCep.edtUF.Text;
      end;
   FreeAndNil(Frm_BuscaCep);
   end;

end;

procedure TFrm_DadCli.FAXExit(Sender: TObject);
begin
FAX.Text:=MaskFone(FAX.Text);

end;

procedure TFrm_DadCli.TELEFONEExit(Sender: TObject);
begin
TELEFONE.Text:=MaskFone(TELEFONE.Text);

end;

end.
