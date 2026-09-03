unit S_Fig_TelaCheia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, func, Buttons,printers;

type
  TFrm_Fig_TelaCheia = class(TForm)
    Panel1: TPanel;
    CB_TAMORI: TCheckBox;
    bbFechar: TBitBtn;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    bbImpProposta: TBitBtn;
    Label1: TLabel;
    edt_col_esquerda: TEdit;
    Label2: TLabel;
    edt_linha_Superior: TEdit;
    Label3: TLabel;
    edt_col_Direita: TEdit;
    Label4: TLabel;
    edt_linha_inferior: TEdit;
    PrintDialog: TPrintDialog;
    sbnPadrao: TSpeedButton;
    procedure CB_TAMORIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bbImpPropostaClick(Sender: TObject);
    procedure sbnPadraoClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fig_TelaCheia: TFrm_Fig_TelaCheia;

implementation

uses S_DM4, lerarq;

{$R *.dfm}

procedure TFrm_Fig_TelaCheia.CB_TAMORIClick(Sender: TObject);
begin
if CB_TAMORI.Checked then
   begin
   Image1.Stretch:=false;
   Image1.Align:=alNone;
   end
else
   begin
   Image1.Stretch:=true;
   Image1.Align:=alClient;
   end;


end;

procedure TFrm_Fig_TelaCheia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fig_TelaCheia.bbFecharClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Fig_TelaCheia.FormResize(Sender: TObject);
begin
Image1.Width:=ScrollBox1.Width-4;
Image1.top:=0;
Image1.Height:=ScrollBox1.Height-4;


end;

procedure TFrm_Fig_TelaCheia.bbImpPropostaClick(Sender: TObject);
var
img:TImage;
path:string;
      startPage : Integer;
      endPage   : Integer;
      total_pages: Integer;

begin
if Image1.Picture<>nil then
   begin
   IF PrintDialog.Execute then
      begin
      Printer.Copies := printDialog.Copies;
      Printer.BeginDoc;
      if printDialog.PrintRange = prPageNums then
         begin
         startPage := printDialog.FromPage;
         endPage   := printDialog.ToPage;
         end
      else // All pages
         begin
         startPage := 1;
         endPage   := TOTAL_PAGES;
         end;
      with Printer.Canvas do
          begin
          StretchDraw(Rect(ValInt(edt_col_esquerda.Text),ValInt(edt_linha_Superior.Text)
          ,valint(edt_col_Direita.Text),valint(edt_linha_inferior.Text)),Image1.Picture.Graphic);
          end;
      Printer.EndDoc;
      end;
   end;

end;

procedure TFrm_Fig_TelaCheia.sbnPadraoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FIG_TELACHEIA','');
fGravaPadroes(-1,'COL_ESQUERDA'      ,'text'   ,'_FIG_TELACHEIA',edt_col_esquerda.Text);
fGravaPadroes(-1,'COL_DIREITA'       ,'text'   ,'_FIG_TELACHEIA',edt_col_Direita.Text);
fGravaPadroes(-1,'COL_LINHA_SUPERIOR','text'   ,'_FIG_TELACHEIA',edt_linha_Superior.Text);
fGravaPadroes(-1,'COL_LINHA_INFERIOR','text'   ,'_FIG_TELACHEIA',edt_linha_inferior.Text);

end;

procedure TFrm_Fig_TelaCheia.FormClick(Sender: TObject);
begin
if flfilpad(-1,'_FIG_TELACHEIA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','COL_ESQUERDA',[]) then
      edt_col_esquerda.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','COL_DIREITA',[]) then
      edt_col_Direita.Text := DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','COL_LINHA_SUPERIOR',[]) then
      edt_linha_Superior.Text := DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','COL_LINHA_INFERIOR',[]) then
      edt_linha_inferior.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   end;
end;

end.
