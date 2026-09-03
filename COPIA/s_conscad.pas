unit s_conscad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, OleCtrls, SHDocVw
  , MSHTML, ActiveX;


type
  TObjectProcedure = procedure of object;

  TEventObject = class(TInterfacedObject, IDispatch)
  private
    FOnEvent: TObjectProcedure;
  protected
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult; stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer;  NameCount, LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; stdcall;
  public
    constructor Create(const OnEvent: TObjectProcedure);
    property OnEvent: TObjectProcedure read FOnEvent write FOnEvent;
  end;


type
  TFrm_ConsCad = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    tsSefaz: TTabSheet;
    tsReceitaFederal: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    edt_rf_cnpj: TEdit;
    lbl_url: TLabel;
    edt_url: TEdit;
    BBnAtu: TBitBtn;
    bbSair: TBitBtn;
    bbPreencher: TBitBtn;
    bbdados: TBitBtn;
    bbcodigo: TBitBtn;
    WebBrowser: TWebBrowser;
    tsRetorno: TTabSheet;
    Memo_dados: TMemo;
    Memo_codigo: TMemo;
    Panel_Cadastro: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label_end: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit_Nome: TEdit;
    Edit_Inscricao: TEdit;
    Edit_Endereco: TEdit;
    Edit_Numero: TEdit;
    Edit_Complemento: TEdit;
    Edit_Cep: TEdit;
    Edit_Bairro: TEdit;
    edt_municipio: TEdit;
    Edt_UF: TEdit;
    Label11: TLabel;
    edt_fantasia: TEdit;
    Label12: TLabel;
    edt_cnae_principal: TEdit;
    Label13: TLabel;
    Edt_cnae_segundario: TEdit;
    Label14: TLabel;
    edt_datacnpj: TEdit;
    Label15: TLabel;
    edt_codnat_juridica: TEdit;
    bbSairIncluir: TBitBtn;
    lbl_obscli: TLabel;
    procedure edt_rf_cnpjExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure WebBrowserDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure bbPreencherClick(Sender: TObject);
    procedure bbdadosClick(Sender: TObject);
    procedure bbcodigoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSairIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mIncluirNovo_rf: Boolean;
    mIncluirNovo_sefaz: Boolean;
    mcodloc: integer;
  end;

var
  Frm_ConsCad: TFrm_ConsCad;
  htmlDoc : IHTMLDocument2;

implementation

uses func, S_AGDE, lerarq, Func2;

{$R *.dfm}

{ TEventObject }

constructor TEventObject.Create(const OnEvent: TObjectProcedure);
begin
  inherited Create;
  FOnEvent := OnEvent;
end;

function TEventObject.GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount, LocaleID: Integer; DispIDs: Pointer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.GetTypeInfoCount(out Count: Integer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult;
begin
  if (DispID = DISPID_VALUE) then
  begin
    if Assigned(FOnEvent) then FOnEvent;
    Result := S_OK;
  end
  else Result := E_NOTIMPL;
end;


procedure TFrm_ConsCad.bbcodigoClick(Sender: TObject);

var
    Html : IHTMLElement;
Begin
   If Assigned(WebBrowser.Document) then
   Begin
     Html := (WebBrowser.Document As IHTMLDocument2).body;
     While Html.parentElement <> Nil do
       Html := Html.parentElement;
        Memo_Codigo.Text := Html.outerHTML;
   End;


end;

procedure TFrm_ConsCad.bbdadosClick(Sender: TObject);
Var
  i, y : Integer;
begin
   Memo_Dados.lines.Text := WebBrowser.OleObject.Document.documentElement.innerText;
   For i := 0 To Memo_Dados.lines.Count-1 Do
   Begin
      For y := 0 To ComponentCount - 1 Do
         If Components[y] is TEdit Then
            If (Trim((Components[y] as TEdit).Hint)<>'') And ((Components[y] as TEdit).Hint = Trim(Memo_Dados.Lines[i])) Then
              (Components[y] as TEdit).Text := Trim(Memo_Dados.Lines[i+1]);
   End;
if fLerGenerico_query('CADCLI','CRAZAO,CCODCLI','CCNPJ='+fdeixanum(Edit_Inscricao.Text),query_consulta) then
   begin
   lbl_obscli.Caption:='Cliente encontrado na base de dados '+query_consulta.fieldbyname('CRAZAO').asstring+' Código '+query_consulta.fieldbyname('CCODCLI').AsString;
   bbSairIncluir.Visible:=false;
   lbl_obscli.Visible:=true;
   end
else
   begin
   bbSairIncluir.Visible:=true;
   lbl_obscli.Visible   :=false;
   end;

if fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LUF='+QuotedStr(Edt_UF.Text)+' and LNOME='+QuotedStr(edt_municipio.Text),query_consulta) then
   mcodloc:=query_consulta.FieldByName('LCODLOC').AsInteger;


end;

procedure TFrm_ConsCad.BBnAtuClick(Sender: TObject);
begin
  WebBrowser.Navigate(edt_url.Text);

end;

procedure TFrm_ConsCad.bbPreencherClick(Sender: TObject);
var
  i, j: Integer;
  FormItem: Variant;
  Botao : Variant;
  //sHtml : HTMLElement;
begin
  if VarIsNull(WebBrowser.OleObject.Document) or
     VarisEmpty(WebBrowser.OleObject.Document) then
    exit;
  //count forms on document
  for i := 0 to WebBrowser.OleObject.Document.Forms.Length -1 do
  begin
    FormItem := WebBrowser.OleObject.Document.Forms.Item(I);
    for j := 0 to FormItem.Length-1 do
    begin
       Memo_Dados.lines.add(FormItem.Item(j).Name+' >> '+FormItem.Item(j).Value);
      if (FormItem.Item(j).Name = 'cnpj') then
        FormItem.Item(j).Value := fdeixanum(edt_rf_cnpj.Text);
      if (FormItem.Item(j).Value = 'submit1') then
         FormItem.Item(j).Click;
    end;
 end;

end;

procedure TFrm_ConsCad.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ConsCad.bbSairIncluirClick(Sender: TObject);
begin
mIncluirNovo_rf:=true;
close;
end;

procedure TFrm_ConsCad.edt_rf_cnpjExit(Sender: TObject);
begin

if not FCGC(valfloat(edt_rf_cnpj.Text)) then
   if not Fcpf(fdeixanum(edt_rf_cnpj.Text)) then
      begin
      MessageDlg(edt_rf_cnpj.Text+ 'Não é um CNPJ válido!',mtError,[mbOk],0);
      exit;
      end;
edt_rf_cnpj.Text:=MaskCPFCNPJ(fdeixanum(edt_rf_cnpj.Text));
BBnAtuClick(self);

end;

procedure TFrm_ConsCad.FormShow(Sender: TObject);
begin
    mIncluirNovo_rf:=false;
    mIncluirNovo_sefaz:=false;
end;

procedure TFrm_ConsCad.WebBrowserDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
form_agde: TFrm_Agde;
begin
  if Assigned(WebBrowser.Document) then
  begin
    htmlDoc := WebBrowser.Document as IHTMLDocument2;
    // htmlDoc.onmouseover := (TEventObject.Create(Document_OnMouseOver) as IDispatch);
    // htmlDoc.onclick := (TEventObject.Create(Document_OnClick) as IDispatch);
  end;
  Application.CreateForm(TFrm_agde,Form_Agde);
  form_agde.Label1.Caption:='Carregando,aguarde...';
  form_agde.Show;
  If pos('Cnpjreva_Solicitacao2.asp',url) > 0 Then
     bbPreencher.Click;
  If pos('Cnpjreva_Comprovante.asp',url) > 0 Then
     bbdados.Click;
  bbcodigo.Click;
  freeandnil(form_agde);
end;

end.
