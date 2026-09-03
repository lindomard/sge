unit S_Texto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QRCtrls, jpeg, QuickRpt, Buttons, ComCtrls, ExtCtrls,db,dbtables,
  lerarq, RLReport, RLRichText;

type
  TFrm_Texto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PageControl1: TPageControl;
    ts_texto: TTabSheet;
    Texto: TRichEdit;
    Panel2: TPanel;
    bbNovo: TBitBtn;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRRichText1: TQRRichText;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    ts_legenda: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    OpenDialog1: TOpenDialog;
    GroupBox4: TGroupBox;
    bbAdquirir: TBitBtn;
    bbSalvar: TBitBtn;
    GroupBox5: TGroupBox;
    bbAbrir: TBitBtn;
    bbGravar: TBitBtn;
    GroupBox6: TGroupBox;
    bbFonte: TBitBtn;
    bbCorfundo: TBitBtn;
    GroupBox7: TGroupBox;
    bbImprimir: TBitBtn;
    bbFechar: TBitBtn;
    SaveDialog1: TSaveDialog;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    GroupBox8: TGroupBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLBand2: TRLBand;
    RLRichText1: TRLRichText;
    RLBand3: TRLBand;
    DataSource1: TDataSource;
    procedure bbAdquirirClick(Sender: TObject);
    procedure bbNovoClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbFonteClick(Sender: TObject);
    procedure bbCorfundoClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbAbrirClick(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Texto: TFrm_Texto;
  mTabTemp: String;
  mTexto_Origem: String;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure TFrm_Texto.bbAdquirirClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   Texto.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Texto.bbNovoClick(Sender: TObject);
begin
Texto.Lines.Clear;
end;

procedure TFrm_Texto.bbSalvarClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         Texto.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      Texto.Lines.SaveToFile(SaveDialog1.FileName);
   end;
end;

procedure TFrm_Texto.bbFonteClick(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto.SelAttributes);
If FontDialog1.Execute Then
   If Texto.SelLength > 0 Then
      Texto.SelAttributes.Assign(FontDialog1.font)
   else
      Texto.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Texto.bbCorfundoClick(Sender: TObject);
begin
ColorDialog1.Color := Texto.Color;
If Colordialog1.Execute Then
   texto.Color := ColorDialog1.Color;

end;

procedure TFrm_Texto.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Texto.BitBtn5Click(Sender: TObject);
begin
  FindDialog1.Execute;

end;

procedure TFrm_Texto.BitBtn6Click(Sender: TObject);
begin
 ReplaceDialog1.Execute;
end;

procedure TFrm_Texto.FindDialog1Find(Sender: TObject);
var
  Aux : longInt;
  Inicio, Fim : Integer;
begin
If Texto.SelLength > 0 Then
   Inicio := Texto.SelStart + Texto.SelLength
else
   Inicio := 0;
Fim := Length(texto.Text) - Inicio;
//aux :=  texto.FindText(finddialog1.findtext, inicio, fim, [stmatchcase]);

//aux :=  texto.FindText(finddialog1.findtext, inicio, fim, [stWholeWord,stmatchcase]);

//aux :=  texto.FindText(finddialog1.findtext, inicio, fim, [stWholeWord]);
aux :=  texto.FindText(finddialog1.findtext, inicio, fim, []);



//TSearchType = (stWholeWord, stMatchCase);
//  TSearchTypes = set of TSearchType;
If aux <> -1 Then
   Begin
   Texto.SetFocus;
   Texto.SelStart := Aux;
   Texto.SelLength := Length(FindDialog1.FindText);
   End
else
   ShowMessage('Não foi possível encontrar "'+finddialog1.findtext + '"');


end;

procedure TFrm_Texto.bbGravarClick(Sender: TObject);
begin
mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
Texto.Lines.saveToFile(mTabTemp);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from CADTEXTO where ');
DM1.Query1.SQL.add(' TTCHAVE='+chr(39)+mTexto_Origem+chr(39));
DM1.Query1.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftMemo,'TTTEXTO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDESCRICAO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDATA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTCHAVE',ptinput);

if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   DM1.Query2.SQL.Add('Update CADTEXTO set ');
   DM1.Query2.SQL.Add(' TTTEXTO=:TTTEXTO ');
   DM1.Query2.SQL.Add(',TTDESCRICAO=:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA=:TTDATA ');
   DM1.Query2.SQL.Add(' where TTCHAVE=:TTCHAVE ');
   end
else
   begin
   DM1.Query2.SQL.Add('Insert into CADTEXTO ( ');
   DM1.Query2.SQL.Add(' TTTEXTO ');
   DM1.Query2.SQL.Add(',TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA ');
   DM1.Query2.SQL.Add(',TTCHAVE ');
   DM1.Query2.SQL.Add(') values (');
   DM1.Query2.SQL.Add(' :TTTEXTO ');
   DM1.Query2.SQL.Add(',:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',:TTDATA ');
   DM1.Query2.SQL.Add(',:TTCHAVE ');
   DM1.Query2.SQL.Add(')');
   end;

DM1.Query2.ParamByName('TTTEXTO').LoadFromFile(mTabTemp,ftMemo);

//DM1.Query2.ParambyName('TTTEXTO').AsString:=LoadFromFile(mTabTemp);
// AsString    := Texto.Lines.Text;
//RLRichText1.lines.loadfromfile('C:\TREEVIEW.TXT');

DM1.Query2.ParambyName('TTDESCRICAO').AsString:='Contrato de Prestação de Serviços';
DM1.Query2.ParambyName('TTDATA').AsDateTime   :=date;
DM1.Query2.ParambyName('TTCHAVE').AsString    :=mTexto_Origem;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Gravar o arquivo!',mtWarning,[mbOk],0);
   end;
deletefile(mTabTemp);

end;

procedure TFrm_Texto.bbAbrirClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select TTTEXTO from CADTEXTO where ');
DM1.Query1.SQL.add(' TTCHAVE='+chr(39)+mTexto_Origem+chr(39));
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
   frm_Texto.Texto.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_Texto.ReplaceDialog1Replace(Sender: TObject);
begin
With TReplaceDialog(Sender) do
   Begin
   If Pos(uppercase(findText), uppercase(Texto.Lines.Text)) > 0 Then
//   If Pos(findText, Texto.Lines.Text) > 0 Then
      Begin
      Texto.SelStart := Pos(uppercase(FindText), uppercase(Texto.Lines.text)) - 1;
      Texto.SelLength := Length(FindText);
      texto.SelText := ReplaceText;
      end
   else
      Messagedlg(Concat('Não foi possível encontrar"',findText, '"'), mterror, [mbok],0);
   end;

end;

procedure TFrm_Texto.bbImprimirClick(Sender: TObject);
begin

DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'CABREL'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');

DM1.Query2.Open;
if not DM1.Query2.Eof then
   begin
   if not (DM1.Query2.Fields[0].IsNull)  and  (DM1.Query2.Fields[0].AsString<>'') then
//   if not (DM1.Query2.Fields[0].IsNull) then
      begin
      (DM1.Query2.FieldbyName('LSLOGO') as TBlobField).SaveToFile('C:\SGE\LOGSIS.JPG');
//      DM1.Query2.Fields[0].SaveToFile('C:\SGE\LOGSIS.JPG');
      RLImage1.Picture.LoadFromFile('C:\SGE\LOGSIS.JPG');
      RLBand1.Visible :=true;
      end
   else
      RLBand1.Visible :=false;
   end
else
   begin
   RLImage1.Picture:=nil;
   RLBand1.Visible :=false;
   end;
deletefile('C:\SGE\LOGSIS.JPG');


mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
Texto.Lines.saveToFile(mTabTemp);
RLRichText1.lines.loadfromfile(mTabTemp);
RLReport1.PreviewModal;
deletefile(mTabTemp);
end;

procedure TFrm_Texto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
