unit S_CECR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, S_DM1,func;

type
  TFrm_CECR = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    STG1: TStringGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CECR: TFrm_CECR;
  mlin: Integer;
implementation

uses S_CEle, S_CEC;

{$R *.DFM}

procedure TFrm_CECR.FormCreate(Sender: TObject);
begin
mlin:=0;
STG1.RowCount:=2;
STG1.Cells[0,0]:='Codigo';
STG1.Cells[1,0]:='Descrição';
STG1.Cells[2,0]:='Quantidade Lidas';
STG1.Cells[3,0]:='Quantidade Pedido';
mlin:=1;
Frm_CEC.Tb_CeleRes.First;
While not FRM_CEC.Tb_CeleRes.Eof do
   begin
   if FRM_CEC.Tb_CeleResCEQTDL.Value<>FRM_CEC.Tb_CeleResCEQTDP.Value then
      begin
      mlin:=mlin+1;
      STG1.RowCount:=MLIN;

      STG1.Cells[00,mlin-1]:=Formatfloat('000000000000',FRM_CEC.Tb_CeleResCECODBAR.Value);
      STG1.Cells[01,mlin-1]:=FRM_CEC.Tb_CeleResdescricao.AsString;
      STG1.Cells[02,mlin-1]:=Insere2(FRM_CEC.Tb_CeleResCEQTDL.AsString,' ',10);
      STG1.Cells[03,mlin-1]:=Insere2(FRM_CEC.Tb_CeleResCEQTDP.AsString,' ',10);
      end;
   FRM_CEC.Tb_CeleRes.Next;
   end;
end;

procedure TFrm_CECR.BitBtn1Click(Sender: TObject);
begin
close;
//ModalResult:=mrOk;
end;

procedure TFrm_CECR.FormActivate(Sender: TObject);
begin
if mlin=0 then
   begin
   ShowMessage('Não Ha divergencias.');
   BitBtn1.Click;
   end;
end;

procedure TFrm_CECR.BitBtn2Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFrm_CECR.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (arow>0) and ((aCol=0) or (Acol=2) or (Acol=3)) then
   begin

//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_CECR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
