unit S_Sintegra_Advert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrm_Sintegra_Advert = class(TForm)
    Panel1: TPanel;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsXml: TTabSheet;
    GroupBox1: TGroupBox;
    lbl_texto_proc: TLabel;
    NOMPROC: TEdit;
    SbnProcurar: TSpeedButton;
    Memo_NFSNaoEnc: TRichEdit;
    Memo_xml: TRichEdit;
    tsXmlView: TTabSheet;
    Memo_xmlRet: TRichEdit;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SbnProcurarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    function ProcurarMemo_Xml(pPalavra: String): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Sintegra_Advert: TFrm_Sintegra_Advert;

implementation

{$R *.dfm}

procedure TFrm_Sintegra_Advert.bbSairClick(Sender: TObject);
begin

close;
end;

procedure TFrm_Sintegra_Advert.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

function tFrm_Sintegra_Advert.ProcurarMemo_Xml(pPalavra: String): Boolean;
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
  with Memo_xml do
  begin
    { begin the search after the current selection if there is one }
    { otherwise, begin at the start of the text }
    if SelLength <> 0 then

      StartPos := SelStart + SelLength
    else

      StartPos := 0;

    { ToEnd is the length from StartPos to the end of the text in the rich edit control }

    ToEnd := Length(Text) - StartPos;

//    FoundAt := FindText(pPalavra , StartPos, ToEnd, [stMatchCase]);
    FoundAt := FindText(pPalavra , StartPos, ToEnd, [stWholeWord]);
    if FoundAt <> -1 then
       begin
      SetFocus;
       SelStart := FoundAt;
       SelLength := Length(pPalavra);
//      texto_impres.SelText := pNovoValor;
       end;
  end;
end;

procedure TFrm_Sintegra_Advert.FormCreate(Sender: TObject);
begin
//Frm_Sintegra_Advert.tsXml.TabVisible:=false;

end;

procedure TFrm_Sintegra_Advert.SbnProcurarClick(Sender: TObject);
begin
ProcurarMemo_Xml(NOMPROC.Text);
Memo_xml.SetFocus;

end;

procedure TFrm_Sintegra_Advert.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsXml then
   begin
   lbl_texto_proc.Visible:=true;
   NOMPROC.Visible       :=true;
   SbnProcurar.Visible   :=true;
   end
else
   begin
   lbl_texto_proc.Visible:=true;
   NOMPROC.Visible       :=true;
   SbnProcurar.Visible   :=true;
   end;




end;

end.

