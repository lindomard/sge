unit s_pos_integracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,uLkJSON;

type
  TFrm_Pos_Integracao = class(TForm)
    cds_formas: TClientDataSet;
    src_formas: TDataSource;
    cds_formasforma_pgto: TStringField;
    cds_formasvenda_id: TIntegerField;
    cds_formasvalor: TFloatField;
    cds_formassituacao: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsAdm: TTabSheet;
    Panel1: TPanel;
    gb_fechar_venda: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edt_valor: TEdit;
    cb_forma: TComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bbExluirForma: TButton;
    bbConsultarSituacao: TButton;
    edt_venda_id: TEdit;
    memo_obs: TMemo;
    Button1: TButton;
    Panel_cabecalho: TPanel;
    Label4: TLabel;
    edt_terminal: TEdit;
    Label6: TLabel;
    edt_id_empresa: TEdit;
    GroupBox2: TGroupBox;
    Memo_json: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_venda_idExit(Sender: TObject);
    procedure edt_valorExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }


    function fGerarJson: String;

  public
    { Public declarations }
  end;

var
  Frm_Pos_Integracao: TFrm_Pos_Integracao;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Pos_Integracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Pos_Integracao.edt_venda_idExit(Sender: TObject);
begin
edt_venda_id.text:=fdeixanum(edt_venda_id.text);
end;

procedure TFrm_Pos_Integracao.edt_valorExit(Sender: TObject);
begin
edt_valor.text:=Formatfloat(mcasas, valfloat(edt_valor.text));

end;

procedure TFrm_Pos_Integracao.Button1Click(Sender: TObject);
var
mMensagem: String;
begin
mMensagem:='';
if trim(edt_venda_id.text)='' then
   mMensagem:=mMensagem+'Chave Id da Venda é Obrigatorio!' + mQuebraLinha ;

if valfloat(edt_valor.text)=0 then
   mMensagem:=mMensagem+'Valor campo é obrigatorio!!' + mQuebraLinha ;


end;


function TFrm_Pos_Integracao.fGerarJson: String;
var
  js: TlkJSONobject;
  s: string;
  i : Integer;

    jsDentro : TlkJSONobject;

begin
result:='';

js := TlkJSONobject.Create;
  jsDentro := TlkJSONobject.Create;


try
    with js do begin
      Add('empresaId', edt_id_empresa.Text);
      Add('vendaId', edt_venda_id.Text);
      Add('valorTotal', mudaVP(FormatFloat('#################0.00', valfloat(edt_valor.text))));
      Add('terminal', edt_terminal.Text);
      Add('observacao', memo_obs.Lines.Text);

      js.Add('pagamentos', TlkJSONobject.Create);


      with jsDentro do begin
        jsDentro.Add('valor',  mudaVp( FormatFloat('#################0.00', valfloat(edt_valor.text))));
      end;


    end;
  i := 0;
  s := GenerateReadableText(js, i);
  result:=s;

finally
  js.Free;
end;

end;


end.
