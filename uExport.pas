{
 Autor: Francisco Carlos da Rocha Gomes
 Empresa: Embrapa-Acre
 Data: Terca-feira, 20 de julho de 1999.
 Observacao: Esta rotina foi desenvolvida e testada com Delphi 4, Excel e o Word do Office 97
}
unit uExport;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Dialogs, DB, DBTables, ComCtrls, ExtCtrls,variants;

type
  TfExport = class(TForm)
    lbDestino: TListBox;
    btExcTudo: TSpeedButton;
    lblDestino: TLabel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    StatusBar1: TStatusBar;
    lbOrigem: TListBox;
    lblOrigem: TLabel;
    btIncluir: TSpeedButton;
    btIncTudo: TSpeedButton;
    btExcluir: TSpeedButton;
    ckNovoDst: TCheckBox;
    edNomDst: TEdit;
    lblNomDst: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RadioGroup1: TRadioGroup;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btIncTudoClick(Sender: TObject);
    procedure btExcTudoClick(Sender: TObject);
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure VerBotoes;
    procedure RadioGroup1Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure ParaExcel(DataSet1: TDataSet; Campos: TStrings; NomPlan: String;
                        NovaPasta: Boolean);
    procedure ParaWord(DataSet1: TDataSet; Campos: TStrings; NomTitulo: String;
                        NovoDoc: Boolean);

    procedure ParaCSV(DataSet1: TDataSet; Campos: TStrings; NomPlan: String; NovaPasta: Boolean);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    XLApp: variant;             {variavel do Excel}
    WordApp: variant;           {variavel do Word}
    Workbook: variant;          {pasta do Excel}
    WorkSheet: variant;         {planilha do Excel}
    ContPlan: integer;          {contador de planilhas}

    Document: variant;          {documento do Word}
    Range: variant;             {intervalo de texto do Word}
    Tabela: variant;            {tabela de um documento do Word}
    Linha: variant;             {linha de uma tabela de um documento do Word}
    { Private declarations }
  public
    DataSet1: TDataSet;         {DataSet a ser exportado}
    { Public declarations }
  end;

var
  fExport: TfExport;
  mExpCampos: array of string;

implementation
uses ComObj, XLConst, Func;       {units para fazer o OLE}


{$R *.DFM}

procedure TfExport.FormCreate(Sender: TObject);
begin
  ContPlan := 0;            {Inicializa o contador de planilhas}
end;

procedure TfExport.FormDestroy(Sender: TObject);
begin
  if not VarIsEmpty(XLApp) then
  begin
{    XLApp.DisplayAlerts := False;  // descarta os arquivos nao salvos }
    XLApp.Quit;
  end;
end;

procedure TfExport.FormActivate(Sender: TObject);
var y,i,x: integer;
mAchou: boolean;
begin
  RadioGroup1Click(RadioGroup1);
  lbOrigem.Clear;
  if edNomDst.Text = '' then
    edNomDst.Text := DataSet1.Name;
  for i := 0 to DataSet1.FieldCount - 1 do
     begin
     if (DataSet1.Fields[i].DataType<>ftMemo) and (DataSet1.fields[i].DataType<>ftBlob) then
        lbOrigem.Items.AddObject(DataSet1.Fields[i].FieldName,
                              Pointer(DataSet1.Fields[i].Index));
     end;

  if high(mExpCampos)>0 then
     begin
     for x:=0 to high(mexpCampos) do
        begin
        for y:=0 to lbOrigem.Items.Count-1 do
           begin
           if Uppercase(lbOrigem.Items[y])=Uppercase(mExpCampos[x]) then
              begin
              lbOrigem.Selected[y]:=True; ;
              btIncluirClick(self);
              break;
              end;
           end;
        end;
     end;
  VerBotoes;
end;

procedure TfExport.btIncluirClick(Sender: TObject);
var Index: Integer;
begin
  Index := GetFirstSelection(lbOrigem);
  MoveSelected(lbOrigem, lbDestino.Items);
  SetItem(lbOrigem, Index);
end;

procedure TfExport.btExcluirClick(Sender: TObject);
var Index: Integer;
begin
  Index := GetFirstSelection(lbDestino);
  MoveSelected(lbDestino, lbOrigem.Items);
  SetItem(lbDestino, Index);
end;

procedure TfExport.btIncTudoClick(Sender: TObject);
var i: Integer;
begin
  for i := 0 to lbOrigem.Items.Count - 1 do
     lbDestino.Items.AddObject(lbOrigem.Items[i],
                               lbOrigem.Items.Objects[i]);
  lbOrigem.Items.Clear;
  SetItem(lbOrigem, 0);
end;

procedure TfExport.btExcTudoClick(Sender: TObject);
var i: Integer;
begin

  for i := 0 to lbDestino.Items.Count - 1  do
     lbOrigem.Items.AddObject(lbDestino.Items[i],
                              lbDestino.Items.Objects[i]);
  lbDestino.Items.Clear;
  SetItem(lbDestino, 0);
end;

procedure TfExport.MoveSelected(List: TCustomListBox; Items: TStrings);
var i: integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[i] then
    begin
      Items.AddObject(List.Items[i], List.Items.Objects[i]);
      List.Items.Delete(i);
    end;
end;

procedure TfExport.VerBotoes;
var
  OriVazio, DstVazio: Boolean;
begin
  OriVazio := lbOrigem.Items.Count = 0;
  DstVazio := lbDestino.Items.Count = 0;
  btIncluir.Enabled := not OriVazio;
  btIncTudo.Enabled := not OriVazio;
  btExcluir.Enabled := not DstVazio;
  btExcTudo.Enabled := not DstVazio;
  btOk.Enabled      := not DstVazio;
end;

function TfExport.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TfExport.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then
       Index := 0
    else if Index > MaxIndex then
       Index := MaxIndex;
    Selected[Index] := True;
  end;
  VerBotoes;
end;

procedure TfExport.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: begin                                     {Excel}
         lblNomDst.Caption := 'Nome da Planilha:';
         ckNovoDst.Caption  := 'Nova pasta';
       end;
    1: begin                                     {Word}
         lblNomDst.Caption := 'Titulo:';
         ckNovoDst.Caption  := 'Novo Documento';
       end;
  end;
end;

procedure TfExport.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfExport.btOkClick(Sender: TObject);

begin
  DecimalSeparator:='.';
  case RadioGroup1.ItemIndex of
    0: ParaExcel(DataSet1, lbDestino.Items, edNomDst.Text, ckNovoDst.Checked);
    1: ParaWord (DataSet1, lbDestino.Items, edNomDst.Text, ckNovoDst.Checked);
    2: ParaCSV(DataSet1, lbDestino.Items, edNomDst.Text, ckNovoDst.Checked);

  end;
  DecimalSeparator:=sys_decimal;
end;



procedure TfExport.ParaExcel(DataSet1: TDataSet; Campos: TStrings; NomPlan: String; NovaPasta: Boolean);

var i, x, j_teste: integer;
   A: TDateTime;
   b: String;
begin
  b:='';
  if (NomPlan = '') then
    NomPlan := 'Plan';

  if VarIsEmpty(XLApp) then
     XLApp:= CreateOleObject('Excel.Application');     {acessa o Excel}

  if (XLApp.Workbooks.Count = 0) or NovaPasta then     {não há nenhuma pasta ou desej_testea criar uma nova }
  begin
    WorkBook  := XLApp.Workbooks.Add(xlWBatWorkSheet); {cria uma nova pasta com uma planilha}
    WorkSheet := Workbook.WorkSheets[1];               {definicao da planilha}
  end
  else
    WorkSheet :=
        Workbook.Worksheets.Add(,Workbook.WorkSheets[Workbook.WorkSheets.Count],
                                1,xlWorkSheet);
  Inc(ContPlan);                            {incrementa o contador de planilhas}
  WorkSheet.Name := NomPlan + IntToStr(ContPlan);

  XLApp.Visible := True;                    {torna o Excel visivel}
  for x := 0 to Campos.Count - 1 do         {insere um cabecalho na planilha}
  begin

    j_teste := Integer(Campos.Objects[x]);
   if (DataSet1.Fields[j_teste].DataType<>ftMemo) and (DataSet1.fields[j_teste].DataType<>ftBlob) then
      begin
      WorkSheet.Cells[1, x + 1].Font.Bold  := True;  {coloca o cabecalho em negrito}
      WorkSheet.Cells[1, x + 1]            := DataSet1.Fields[j_teste].FieldName;
      if Length(DataSet1.Fields[j_teste].FieldName) < DataSet1.Fields[j_teste].DisplayWidth   then
         WorkSheet.Columns[x + 1].ColumnWidth := DataSet1.Fields[j_teste].DisplayWidth
      else
         WorkSheet.Columns[x + 1].ColumnWidth := Length(DataSet1.Fields[j_teste].FieldName);
      end;
  end;
  i := 1;
  DataSet1.First;
  while not DataSet1.Eof do                  {insere dados da tabela para a planilha}
  begin
    Inc(i);
    for x := 0 to Campos.Count - 1 do
    begin
       WorkSheet.Cells[i, x + 1].Font.Color:=$00FD0000;
       j_teste := integer(Campos.Objects[x]);
       if DataSet1.Fields[j_teste].DataType=ftDateTime then
          a:=DataSet1.Fields[j_teste].AsDateTime
       else    b:=DataSet1.Fields[j_teste].AsString;
       if DataSet1.Fields[j_teste].DataType=ftDateTime then
          WorkSheet.Cells[i, x + 1] :=CHR(39)+FormatDateTime('dd/mm/yyyy',a)
       else   WorkSheet.Cells[i, x + 1] :=b;
//      if Dataset1.Fields[j_teste].DataType=ftDate then  WorkSheet.Cells[i, x + 1]    :=FormatDateTime('dd/mm/yyyy',DataSet1.Fields[j_teste].Value)
    end;
    DataSet1.Next;
  end;
end;

procedure TfExport.ParaCSV(DataSet1: TDataSet; Campos: TStrings; NomPlan: String; NovaPasta: Boolean);

var i, x, j: integer;
   A: String;

mArqCSV: tStringList;
mLinha: String;
begin

mArqCSV:=tStringList.create;

mLinha:='';
for x := 0 to Campos.Count - 1 do         {insere um cabecalho na planilha}
   begin
   j := Integer(Campos.Objects[x]);
   if (DataSet1.Fields[j].DataType<>ftMemo) and (DataSet1.fields[j].DataType<>ftBlob) then
      mLinha:=mLInha+DataSet1.Fields[j].FieldName+';';
   end;

mArqCSV.add(mlinha);


DataSet1.First;
while not DataSet1.Eof do                  {insere dados da tabela para a planilha}
   begin
   Inc(i);
   mLinha:='';
   for x := 0 to Campos.Count - 1 do
      begin
      j := integer(Campos.Objects[x]);
      if DataSet1.Fields[j].DataType=ftDateTime then
         a:=FormatDateTime('dd/mm/yyyy',DataSet1.Fields[j].AsDateTime)
//         a:=Quotedstr( FormatDateTime('dd/mm/yyyy',DataSet1.Fields[j].AsDateTime) )
      else
         a:=DataSet1.Fields[j].AsString ;
      mLinha:=mLinha+a+';'
      end;
   mArqCSV.add(mlinha);
   DataSet1.Next;
   end;
SaveDialog1.FileName:=mcamtmp+'\planilha.csv';
if SaveDialog1.Execute then
   begin
   mArqCSV.SaveToFile(fretiraextensao(SaveDialog1.FileName)+'.csv');
   fExecutarArquivo(SaveDialog1.FileName);
   end;

end;

procedure TfExport.ParaWord(DataSet1: TDataSet; Campos: TStrings; NomTitulo: String; NovoDoc: Boolean);
var
  i, x, j: integer;
begin
  if VarIsEmpty(WordApp) then
     WordApp:= CreateOleObject('Word.Application');     {acessa o Word}
  WordApp.Visible := true;
  if (WordApp.Documents.Count = 0) or NovoDoc then      {não há nenhum doc ou deseja criar um novo }
    Document := WordApp.Documents.Add
  else
    Document := WordApp.ActiveDocument;
  Document.ShowSpellingErrors := false;                 {não mostra os erros ortográficos}
  Document.Paragraphs.Add;
  Range := Document.Range(Document.Paragraphs.Item(1).Range.Start);
  Range.Text := NomTitulo;
  for i := 1 to 2 do
    Document.Paragraphs.Add;
  Range := Document.Range(Document.Paragraphs.Item(3).Range.Start);
  Tabela := Document.Tables.Add(Range, 1, Campos.Count);
  for x := 0 to Campos.Count - 1 do              {insere um cabecalho na tabela}
  begin
    j := Integer(Campos.Objects[x]);
     if (DataSet1.Fields[j].DataType<>ftMemo) and (DataSet1.fields[j].DataType<>ftBlob) then
        begin
        Tabela.Cell(1, x + 1).Range.Text := DataSet1.Fields[j].FieldName;
//    Tabela.Cell(1, x + 1).Range.Text := DataSet1.Fields[j].FieldName;
        Tabela.Cell(1, x + 1).Range.Bold := true;
        end;
     end;
  i := 1;
  DataSet1.First;
  while not DataSet1.Eof do                  {insere dados da tabela para a planilha}
  begin
    Inc(i);
    Linha := Tabela.Rows.Add;
    Linha.Range.Bold := false;
    for x := 0 to Campos.Count - 1 do
    begin
      j := integer(Campos.Objects[x]);
      if Dataset1.Fields[j].DataType=ftdate then
          Tabela.Cell(i, x + 1).Range.Text := FormatDateTime('dd/mm/yyyy',DataSet1.Fields[j].Value)
      else if Dataset1.Fields[j].DataType=ftfloat then Tabela.Cell(i, x + 1).Range.Text := DataSet1.Fields[j].AsFloat
      else Tabela.Cell(i, x + 1).Range.Text := DataSet1.Fields[j].AsString;
    end;
    DataSet1.Next;
  end;
end;

procedure TfExport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
