unit S_Excel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Buttons, ExtCtrls,
  uexport, Grids, DBGrids, xmldom, XMLIntf, msxmldom, XMLDoc, DBClient,
  Provider;

type
  TFrm_Excel = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    bbProc: TBitBtn;
    bbExportar: TBitBtn;
    BitBtn1: TBitBtn;
    Qr_Excel: TQuery;
    Src_Excel: TDataSource;
    DBGrid1: TDBGrid;
    bbxml: TBitBtn;
    SaveDialog1: TSaveDialog;
    Panel2: TPanel;
    Label1: TLabel;
    bbSalvarString: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure bbProcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbxmlClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSalvarStringClick(Sender: TObject);
  private
    { Private declarations }

    function fQuerytoXML_delphi(DataSet  : TDataSet;pNomeSaida: String): Integer;


    function MakeXML( Dataset : TDataset ) : Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Excel: TFrm_Excel;

implementation

{$R *.dfm}

procedure TFrm_Excel.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Excel.bbExportarClick(Sender: TObject);
begin
if (Qr_Excel.Active=false) or (Qr_Excel.IsEmpty) then
   exit;
bbExportar.Enabled:=false;

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  Src_Excel.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
bbExportar.Enabled:=true;


end;

procedure TFrm_Excel.bbProcClick(Sender: TObject);
begin
if Trim(Memo1.Text)='' then
   begin
   MessageDlg('Favor Digitar uma instrução!',mtWarning,[mbOk],0);
   Memo1.SetFocus;
   end;
bbExportar.Enabled:=false;

Qr_Excel.Close;
Qr_Excel.SQL.Clear;
Qr_Excel.SQL.Add(Memo1.Text);
Try
   Qr_Excel.Open;
except on e : exception do
   begin
   MessageDlg('Instrução inválida!'+e.message ,mtWarning,[mbOk],0);
   Memo1.SetFocus;
   exit;
   end;
   end;
bbExportar.Enabled:=true;
end;

procedure TFrm_Excel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;


function TFrm_Excel.fQuerytoXML_delphi(DataSet  : TDataSet;pNomeSaida: String): Integer;
var
 LProvider : TDataSetProvider;
 LClient   : TClientDataSet;
begin
   LProvider:=TDataSetProvider.Create(nil);
   try
     LProvider.DataSet:=DataSet;
     LClient:=TClientDataSet.Create(nil);
     try
       DataSet.DisableControls;
       try
        if not DataSet.Active then
          DataSet.Active:=True;
        LClient.SetProvider(LProvider);
        LClient.Active:=True;
        LClient.SaveToFile(pNomeSaida, dfXMLUTF8);
       finally
         DataSet.EnableControls;
       end;
     finally
       LClient.Free;
     end;
   finally
     LProvider.Free;
   end;
end;
procedure TFrm_Excel.bbxmlClick(Sender: TObject);
begin
if (Qr_Excel.Active=false) or (Qr_Excel.IsEmpty) then
   exit;
bbxml.Enabled:=false;
MakeXML(Src_Excel.DataSet);

//fQuerytoXML_delphi(Src_Excel.DataSet,'c:\teste_carlota.xml');
bbxml.Enabled:=true;

end;



function TFrm_Excel.MakeXML( Dataset : TDataset ) : Boolean;
var
i: Integer;
mArquivo: TStringList;

     function MakeTag( TagName, Value : String ) : string;
     begin
     Result := '<' + TagName + '>' + Value + '</' + TagName + '>';
     end;

begin
Result := true;
if (not Dataset.Active) or (Dataset.IsEmpty) then
   begin
   result:=false;
   Exit;
   end;
mArquivo:=TStringList.create;

mArquivo.Add('<?xml version="1.0" encoding="utf-8"?>');
mArquivo.Add('<REGISTROS>');
Dataset.First;
while not Dataset.EOF do
   begin
//   Result := Result + '<REGISTROS>';
   for i := 0 to Dataset.Fields.Count-1 do
      mArquivo.Add(MakeTag(Dataset.Fields[i].FieldName,fLimparString(Dataset.Fields[i].Text)));
   Dataset.Next;
   end;
mArquivo.Add('</REGISTROS>');

//Result := Result + '</' + Dataset.Name + '>';
if SaveDialog1.Execute then
   begin
   mArquivo.SaveToFile(SaveDialog1.FileName);
   result:=true;
   end
else
   result:=false;
freeandnil(marquivo);
end;

procedure TFrm_Excel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then bbProcClick(self);
end;

procedure TFrm_Excel.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = Ord('A')) and (ssCtrl in Shift) then
   begin
   TMemo(Sender).SelectAll;
   Key := 0;
   end;
end;

procedure TFrm_Excel.bbSalvarStringClick(Sender: TObject);
var
memo_string: TStringList;
x_lin: integer;
begin
if SaveDialog1.execute then
   begin
   memo_string:=TStringList.create;
   for x_lin:=0 to memo1.lines.count-1 do
      begin
      memo_string.add('query_exe.sql.add('+QuotedStr(memo1.lines[x_lin])+');');
      end;
   memo_string.savetofile(savedialog1.filename);
   messagedlg('Salvo como '+SaveDialog1.filename,mtwarning,[mbOk],0);
   freeandnil(memo_string);
   end;

end;

end.
