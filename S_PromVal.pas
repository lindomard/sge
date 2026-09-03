unit S_PromVal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids,S_DM2, Buttons, DB,func;

type
  TFrm_PromVal = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PCOVDA: TEdit;
    DESC01: TEdit;
    DESC02: TEdit;
    DESC03: TEdit;
    DESCFIN: TEdit;
    COMIS: TEdit;
    bbConfirmar: TBitBtn;
    bbSemProm: TBitBtn;
    Src_PPR: TDataSource;
    Label7: TLabel;
    QTDMIN: TEdit;
    procedure Src_PPRDataChange(Sender: TObject; Field: TField);
    procedure bbConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSemPromClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PromVal: TFrm_PromVal;
  promval_antes: String='';
  promval_modo: Integer=0;

implementation

{$R *.dfm}

procedure TFrm_PromVal.Src_PPRDataChange(Sender: TObject; Field: TField);
begin
PCOVDA.Text :=FormatFloat(mcasaspu,   DM2.Qr_PPRPPPCOVDA.Value);
DESC01.Text :=FormatFloat(mcasas_pct, DM2.Qr_PPRPPDESC_1.Value);
DESC02.Text :=FormatFloat(mcasas_pct, DM2.Qr_PPRPPDESC_2.Value);
DESC03.Text :=FormatFloat(mcasas_pct, DM2.Qr_PPRPPDESC_3.Value);
DESCFIN.Text:=FormatFloat(mcasas_pct, DM2.Qr_PPRPPDESC_F.Value);
COMIS.Text  :=FormatFloat(mcasas_pct, DM2.Qr_PPRPPCOMIS.Value);
QTDMIN.Text :=FormatFloat(mcasqtd,    DM2.Qr_PPRPPQTDMIN.Value);

end;

procedure TFrm_PromVal.bbConfirmarClick(Sender: TObject);
begin
if fMensagem('Confirma a Promoção?',0,['1','2'],0)<>mrYes then
   abort;
promval_antes:=DM2.Qr_PPRPPPROMOCAO.Value;
end;

procedure TFrm_PromVal.FormActivate(Sender: TObject);
begin
if Trim(promval_antes)<>'' then
   begin
   DM2.Qr_PPR.Locate('PPPROMOCAO',promval_antes,[]);

   end;
end;

procedure TFrm_PromVal.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=9) then
   begin
   bbConfirmar.SetFocus;
   end;

end;

procedure TFrm_PromVal.bbSemPromClick(Sender: TObject);
begin
if fmensagem('Confirma que a Venda a Sem Promoção?',0,['1','2'],0)<>mrYes then
   abort;

end;

procedure TFrm_PromVal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
