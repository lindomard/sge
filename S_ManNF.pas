unit S_ManNF;

interface

uses
  Windows, Messages, StdCtrls, Buttons, Controls, Classes,
  SysUtils, Variants,  Forms,
  Dialogs, lerarq,S_DM1,func;

type
  TFrm_ManNF = class(TForm)
    Label1: TLabel;
    NUMNF: TEdit;
    Label2: TLabel;
    NOVNUM: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure NOVNUMKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Origem: Integer;
  end;

var
  Frm_ManNF: TFrm_ManNF;
  mannf_aceito: Boolean;
implementation

{$R *.dfm}

procedure TFrm_ManNF.NOVNUMKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ManNF.BitBtn1Click(Sender: TObject);
begin
if Trim(NOVNUM.Text)='' then
   NOVNUM.Text:=NUMNF.Text;
if flcadns(0,0,ls_numped,Trim(NOVNUM.Text),'','') then
   begin
   if fMensagem('Ja Existe uma nota com este mesmo número emitida em: '+Formatdatetime(fdt2, DM1.Tb_NsNSDTEMIS.Value)+#13
             +'Posso Continuar mesmo assim?',0,['1','2'],2)<>mrYes then
      begin
      NOVNUM.SetFocus;
      exit;
      end;
   end;
modalResult:=mrOk;
mannf_aceito:=True;
close;
end;

procedure TFrm_ManNF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Trim(NOVNUM.Text)='' then
   NOVNUM.Text:=NUMNF.Text;
end;

procedure TFrm_ManNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ManNF.BitBtn2Click(Sender: TObject);
begin
Origem:=-99;
Close;
end;

procedure TFrm_ManNF.FormShow(Sender: TObject);
begin
if Origem=0 then
  begin
  BitBtn2.Enabled:=False;
  end;
end;

end.
