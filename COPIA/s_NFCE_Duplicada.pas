unit s_NFCE_Duplicada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Spin, StdCtrls,
  ExtCtrls, Buttons;

type
  TFrm_NFCE_Duplicada = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Memo_motivo: TMemo;
    Panel1: TPanel;
    Label2: TLabel;
    edt_numnf_ant: TEdit;
    Label3: TLabel;
    edt_numnf_novo: TEdit;
    Label4: TLabel;
    edt_serie_ant: TSpinEdit;
    Label5: TLabel;
    edt_serie_nova: TSpinEdit;
    GRAVAR: TBitBtn;
    bbSair: TBitBtn;
    Label6: TLabel;
    edt_ch_Acesso: TEdit;
    Label7: TLabel;
    edt_cnf_ant: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure edt_numnf_novoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mAtualizarNFE: Boolean;
  end;

var
  Frm_NFCE_Duplicada: TFrm_NFCE_Duplicada;

implementation

{$R *.dfm}

uses func;

procedure TFrm_NFCE_Duplicada.bbSairClick(Sender: TObject);
begin
    mAtualizarNFE:=false;
    close;

end;

procedure TFrm_NFCE_Duplicada.edt_numnf_novoExit(Sender: TObject);
begin
if fsonumero(edt_numnf_novo.Text)<=0 then
   edt_numnf_novo.Text:='1'
else
   edt_numnf_novo.Text:=fdeixanum(edt_numnf_novo.Text);
end;

procedure TFrm_NFCE_Duplicada.FormShow(Sender: TObject);
begin
   SetWindowPos(handle, HWND_TOPMOST, Left, Top,Width,Height, 0);
   SetWindowPos(handle, HWND_NOTOPMOST, Left, Top,Width, Height, 0);

end;

procedure TFrm_NFCE_Duplicada.GRAVARClick(Sender: TObject);
begin
if (edt_serie_ant.Value=edt_serie_nova.Value) and
   (fsonumero(edt_numnf_ant.text)=fsonumero(edt_numnf_novo.text)) then
   begin
   messagedlg('Nao houve alteração!',mtwarning,[mbOk],0);
   exit
   end
else
   begin
   mAtualizarNFE:=true;
   close;
   end;

end;

end.
