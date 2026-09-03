unit S_LOptico_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_LOptico_Res = class(TForm)
    Label1: TLabel;
    CONTEUDO: TEdit;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    CAMERA: TEdit;
    BANCO: TEdit;
    COMPENSACAO: TEdit;
    AGENCIA: TEdit;
    VCTO: TEdit;
    MOEDA: TEdit;
    CONTA: TEdit;
    NUMCHQ: TEdit;
    CODCAR: TEdit;
    CODCED: TEdit;
    NOSNUM: TEdit;
    VALOR: TEdit;
    BitBtn1: TBitBtn;
    NUMDIV: TEdit;
    ANOREF: TEdit;
    MESREF: TEdit;
    NUMNF: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LOptico_Res: TFrm_LOptico_Res;

implementation

uses S_LOptica;

{$R *.dfm}

procedure TFrm_LOptico_Res.FormCreate(Sender: TObject);
begin
CAMERA.Text     :=lo_camera;
CONTEUDO.Text   :=Frm_LOptica.CODBAR.Text;
BANCO.Text      :=FloatToStr(lo_banco);
AGENCIA.Text    :=FloatTostr(lo_agencia);
NUMCHQ.Text     :=FloatTostr(lo_numchq);
COMPENSACAO.Text:=FloatToStr(lo_compens);
NUMDIV.Text     :=FloatTosTr(lo_numero);
CONTA.Text      :=FloatToStr(lo_conta);
//lo_obs    :='';
NOSNUM.Text     :=lo_nosnum;
VALOR.Text      :=FormatFloat(mcasas,lo_valor);
MOEDA.Text      :=FloatTosTr(lo_moeda);
if lo_dtvcto>pdatanula then
   VCTO.Text:=FormatDateTime(fdt2, lo_DtVcto)
else
   VCTO.Text:='/  /';
CODCAR.Text     :=FloatToStr(lo_CodCar);
CODCED.Text     :=FloatToStr(lo_CodCed);
NUMNF.Text      :=FloatToStr(lo_nmnf);
MESREF.Text     :=FloatTosTr(lo_MesRef);
ANOREF.Text     :=FloatToStr(lo_AnoRef);
end;

procedure TFrm_LOptico_Res.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
