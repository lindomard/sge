unit S_PfPRe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, func, StdCtrls, Buttons, Grids, ComCtrls, FileCtrl;

type
  TFrm_PfPRe = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FileListBox1: TFileListBox;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    STG0: TStringGrid;
    STG1: TStringGrid;
    STG2: TStringGrid;
    STG3: TStringGrid;
    STG4: TStringGrid;
    STG5: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    NOMARQ: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PfPRe: TFrm_PfPRe;

implementation

{$R *.DFM}

procedure TFrm_PfPRe.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PfPRe.BitBtn1Click(Sender: TObject);
var
f: TextFile;
MTSG0, MTSG1, MTSG2, MTSG3, MTSG4, MTSG5, mreg : Integer;
mtexto: String;
begin
if trim(NOMARQ.Caption)='' then
   begin
   ShowMessage('Favor Selecionar um Arquivo a ser Lido');
   FileListBox1.SetFocus;
   abort;
   end;
AssignFile(f,NOMARQ.Caption);
Reset(F);
MTSG0:=1; MTSG1:=1; MTSG2:=1; MTSG3:=1; MTSG4:=1; MTSG5:=1;
mreg:=0;
ReadLn(F,mtexto);
While not Eof(f) do
   begin
   mreg:=mreg+1;
   if copy(mtexto,1,1)='0' then
      begin
      STG0.RowCount:=mtsg0+1;
      STG0.Cells[0,MTSG0]:=copy(mtexto,2,8);
      STG0.Cells[1,MTSG0]:=copy(mtexto,10,14);
      STG0.Cells[2,MTSG0]:=copy(mtexto,24,35);
      STG0.Cells[3,MTSG0]:=copy(mtexto,59,6);
      MTSG0:=MTSG0+1;
      end;
   if copy(mtexto,1,1)='1' then
      begin
      STG1.RowCount:=MTSG1+1;
      STG1.Cells[0,MTSG1] :=copy(mtexto,2,6);
      STG1.Cells[1,MTSG1] :=copy(mtexto,8,9);
      STG1.Cells[2,MTSG1] :=copy(mtexto,17,50);
      STG1.Cells[3,MTSG1] :=copy(mtexto,67,8);
      STG1.Cells[4,MTSG1] :=copy(mtexto,75,8);
      STG1.Cells[5,MTSG1] :=copy(mtexto,83,6);
      STG1.Cells[6,MTSG1] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,89,12))/100);
      STG1.Cells[7,MTSG1] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,101,12))/100);
      STG1.Cells[8,MTSG1] :=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,113,12))/100);
      STG1.Cells[9,MTSG1] :=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,125,12))/100);
      STG1.Cells[10,MTSG1]:=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,137,12))/100);
      STG1.Cells[11,MTSG1]:=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,149,12))/100);
      STG1.Cells[12,MTSG1]:=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,161,12))/100);
      STG1.Cells[13,MTSG1]:=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,173,12))/100);
      MTSG1:=MTSG1+1;
      end;

   if copy(mtexto,1,1)='2' then
      begin
      STG2.RowCount:=MTSG2+1;
      STG2.Cells[0,MTSG2] :=copy(mtexto,2,6);
      STG2.Cells[1,MTSG2] :=copy(mtexto,8,4);
      STG2.Cells[2,MTSG2] :=FormatFloat('#0.00',StrToFloat(copy(mtexto,12,4))/100);
      STG2.Cells[3,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,16,12))/100);
      STG2.Cells[4,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,28,12))/100);
      STG2.Cells[5,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,40,12))/100);
      STG2.Cells[6,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,52,12))/100);
      STG2.Cells[7,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,64,12))/100);
      STG2.Cells[8,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,76,12))/100);
      STG2.Cells[9,MTSG2] :=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,88,12))/100);
      STG2.Cells[10,MTSG2]:=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,100,12))/100);
      STG2.Cells[11,MTSG2]:=FormatFloat('#,##0.00',StrToFloat('0'+copy(mtexto,112,12))/100);
      MTSG2:=MTSG2+1;
      end;
   if copy(mtexto,1,1)='3' then
      begin
      STG3.RowCount:=MTSG3+1;
      STG3.Cells[0,0] :=copy(mtexto,2,6);
      STG3.Cells[1,0] :=copy(mtexto,8,6);
      STG3.Cells[2,0] :=copy(mtexto,14,14);
      STG3.Cells[3,0] :=copy(mtexto,28,35);
      STG3.Cells[4,0] :=copy(mtexto,53,4);
      STG3.Cells[5,0] :=copy(mtexto,57,3);
      STG3.Cells[6,0] :=copy(mtexto,60,6);
      STG3.Cells[7,0] :=Formatfloat('#,##0.00',StrtoFloat('0'+copy(mtexto,66,12))/100);
      STG3.Cells[8,0] :=FormatFloat('#0.00',   StrToFloat('0'+copy(mtexto,72,4))/100);
      STG3.Cells[9,0] :=Formatfloat('#,##0.00',StrtoFloat('0'+copy(mtexto,76,12))/100);
      STG3.Cells[10,0]:=FormatFloat('#0.00',   StrToFloat('0'+copy(mtexto,88,4))/100);
      STG3.Cells[11,0]:=copy(mtexto,92,2);
      MTSG3:=MTSG3+1;
      end;
   if copy(mtexto,1,1)='8' then
      begin
      STG4.RowCount:=MTSG4+1;
      STG4.Cells[0,0] :=copy(mtexto,2,6);   //'Cod.Cliente';
      STG4.Cells[1,0] :=copy(mtexto,8,10);  // 'Núm.Duplic';
      STG4.Cells[2,0] :=copy(mtexto,18,3);  // 'Banco';
      STG4.Cells[3,0] :=copy(mtexto,21,12); // 'Num.Bloq.Banc.';
      STG4.Cells[4,0] :=copy(mtexto,33,8);  // 'Dt.Emissão';
      STG4.Cells[5,0] :=copy(mtexto,41,8);  // 'Dt.Vcto.';
      STG4.Cells[6,0] :=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,49,12))/100); // 'Valor Título';
      STG4.Cells[7,0] :=FormatFloat('#,##0.00',StrtoFloat('0'+copy(mtexto,61,12))/100); // 'Desc. a Vista';
      STG4.Cells[8,0] :=copy(mtexto,73,8);  // valor Inicial';
      STG4.Cells[9,0] :=copy(mtexto,81,8);  // 'Valor Final';
      STG4.Cells[10,0]:=Formatfloat('#,##0.00',StrtoFloat('0'+copy(mtexto,89,12))/100); // 'Desc. PPN';
      STG4.Cells[11,0]:=copy(mtexto,101,8); // 'Valor Inicial';
      STG4.Cells[12,0]:=copy(mtexto,109,8); // 'Valor Final';
      STG4.Cells[13,0]:=Formatfloat('#,##0.00',StrtoFloat('0'+copy(mtexto,117,12))/100); // 'Juros Diário';
      MTSG4:=MTSG4+1;
      end;
   if copy(mtexto,1,1)='9' then
      begin
      STG5.Cells[0,0] :=copy(mtexto,2,9);
      STG5.Cells[1,0] :=copy(mtexto,11,9);
      STG5.Cells[2,0] :=copy(mtexto,20,9); // 'Total Tipo 3';
      STG5.Cells[3,0] :=copy(mtexto,29,9); // 'Total Tipo 8';
      end;
   ReadLn(F,mtexto);
   end;

end;

procedure TFrm_PfPRe.FileListBox1Change(Sender: TObject);
begin
NOMARQ.Caption:=FileListBox1.FileName;
NOMARQ.Update;
end;

procedure TFrm_PfPRe.FormCreate(Sender: TObject);
begin
STG0.Cells[0,0]:='Data Emissão';
STG0.Cells[1,0]:='CNPJ';
STG0.Cells[2,0]:='Razão Social';
STG0.Cells[3,0]:='Num.Pedido';


STG1.Cells[0,0] :='Número NF';
STG1.Cells[1,0] :='CFO';
STG1.Cells[2,0] :='Nome Operação';
STG1.Cells[3,0] :='Dt.Emissão';
STG1.Cells[4,0] :='Data Saida';
STG1.Cells[5,0] :='Núm.Pedido';
STG1.Cells[6,0] :='Tot.Mercadoria';
STG1.Cells[7,0] :='Total IPI';
STG1.Cells[8,0] :='Tot Desconto';
STG1.Cells[9,0] :='Total Repasse';
STG1.Cells[10,0]:='B.Calc.Icms Ret.';
STG1.Cells[11,0]:='Icms Retido';
STG1.Cells[12,0]:='Total Liquido';
STG1.Cells[13,0]:='Valor Icms';

STG2.Cells[0,0] :='Número NF';
STG2.Cells[1,0] :='CFO';
STG2.Cells[2,0] :='% Icms';
STG2.Cells[3,0] :='Tot.Mercadorias';
STG2.Cells[4,0] :='Total IPI';
STG2.Cells[5,0] :='Tot.Desconto';
STG2.Cells[6,0] :='Tot.Repasse';
STG2.Cells[7,0] :='B.Calc.Icms Ret.';
STG2.Cells[8,0] :='Icms Retido';
STG2.Cells[9,0] :='B.Calc.Icms Normal';
STG2.Cells[10,0]:='Crédito Icms';
STG2.Cells[11,0]:='Tot.Cod.Oper';

STG3.Cells[0,0] :='Número NF';
STG3.Cells[1,0] :='Cód.Produto';
STG3.Cells[2,0] :='Cód.Barras';
STG3.Cells[3,0] :='Descrição';
STG3.Cells[4,0] :='CFO';
STG3.Cells[5,0] :='Und';
STG3.Cells[6,0] :='Quantidade';
STG3.Cells[7,0] :='Preço Unitário';
STG3.Cells[8,0] :='% Desconto';
STG3.Cells[9,0] :='Total Produtos';
STG3.Cells[10,0]:='% Icms';
STG4.Cells[11,0]:='Sequencia';

STG4.Cells[0,0] :='Cod.Cliente';
STG4.Cells[1,0] :='Núm.Duplic';
STG4.Cells[2,0] :='Banco';
STG4.Cells[3,0] :='Num.Bloq.Banc.';
STG4.Cells[4,0] :='Dt.Emissão';
STG4.Cells[5,0] :='Dt.Vcto.';
STG4.Cells[6,0] :='Valor Título';
STG4.Cells[7,0] :='Desc. a Vista';
STG4.Cells[8,0] :='Valor Inicial';
STG4.Cells[9,0] :='Valor Final';
STG4.Cells[10,0]:='Desc. PPN';
STG4.Cells[11,0]:='Valor Inicial';
STG4.Cells[12,0]:='Valor Final';
STG4.Cells[13,0]:='Juros Diário';

STG5.Cells[0,0] :='Total Tipo 1';
STG5.Cells[1,0] :='Total Tipo 2';
STG5.Cells[2,0] :='Total Tipo 3';
STG5.Cells[3,0] :='Total Tipo 8';

end;

procedure TFrm_PfPRe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
