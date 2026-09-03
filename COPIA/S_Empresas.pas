unit S_Empresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1, StdCtrls, Grids, DBGrids, DB, DBTables,func, Buttons;

type
  TFrm_Empresas = class(TForm)
    Label1: TLabel;
    Tb_Emp: TQuery;
    Src_Emp: TDataSource;
    Tb_EmpOK: TStringField;
    Tb_EmpCODEMP: TFloatField;
    Tb_EmpRAZAO: TStringField;
    DBGrid1: TDBGrid;
    U_Emp: TUpdateSQL;
    bbSair: TBitBtn;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Tb_EmpBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresas: TFrm_Empresas;

implementation

{$R *.dfm}

procedure TFrm_Empresas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=32 then
   begin
   Tb_emp.Edit;
   if trim(Tb_EmpOK.AsString)='' then
      Tb_EmpOK.Value:='P'
   else
      Tb_EmpOK.Value:=' ';
   Tb_Emp.Post;
   end;

end;

procedure TFrm_Empresas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{ce_qtdemp:=0;
ce_empsel:=-1;}
Tb_Emp.First;
While not Tb_Emp.Eof do
   begin
   if (Tb_EmpOK.AsString)='' then
      begin
      Tb_emp.Next;
      Continue;
      end;
{   ce_qtdemp:=ce_qtdemp+1;
   SetLength(ce_codempati,ce_qtdemp);
   SetLength(ce_nomcamemp,ce_qtdemp);
   ce_codempati[ce_qtdemp-1]:=Tb_EmpCODEMP.AsString;
   ce_nomcamemp[ce_qtdemp-1]:=ce_campoatual;
   if ce_empsel=-1 then
      begin
      if Tb_EmpCODEMP.AsInteger>100 then
         ce_empsel:=1
      else
         ce_empsel:=0;
      end
   else if Tb_EmpCODEMP.AsInteger>100 then
      begin
      if ce_empsel=0 then
         ce_empsel:=2;
      end
   else
      begin
      if ce_empsel=1 then
         ce_empsel:=2;
      end;

   Tb_Emp.Next;}
   end;
{if ce_qtdemp=0 then
   begin
   ce_qtdemp:=ce_qtdemp+1;
   SetLength(ce_codempati,ce_qtdemp);
   SetLength(ce_nomcamemp,ce_qtdemp);
   ce_codempati[ce_qtdemp-1]:=IntToStr(codemp);
   ce_nomcamemp[ce_qtdemp-1]:=ce_campoatual;
   if codemp>100 then
      ce_empsel:=1
   else
      ce_empsel:=0;
   end;}

end;

procedure TFrm_Empresas.bbSairClick(Sender: TObject);
begin
{
x: Integer;
begin
for x:=0 to Screen.FormCount-1 do
   begin
   if Screen.Forms[x].WindowState=wsMinimized then
      begin
      Screen.Forms[x].WindowState=wsNormal;
      break;
      end;
   end;


screen;
if screen.ActiveForm.formState=[fsModal] then
   screen.ActiveForm.WindowState:=wsMinimized;


if Form2.formState=[fsShowing] then
   label1.Caption:='Chamada show'
else if Form2.formState=[fsModal] then
   label1.Caption:='Chamada showModal'
else
   label1.Caption:='DESCONHECIDO';
}
close;
end;

procedure TFrm_Empresas.FormActivate(Sender: TObject);
var
x: Integer;

begin
Tb_Emp.Close;
Tb_emp.SQL.Clear;
Tb_Emp.SQL.Add('Select '+chr(39)+' '+chr(39)+' ok, CODEMP, RAZAO from CADEMP '
              +' where STATUS<>9  '
              +' order by CODEMP ');
Tb_Emp.Open;
{for x:=0 to high(ce_codempati) do
   begin
   if Tb_Emp.Locate('CODEMP',ce_codempati[x],[]) then
      begin
      Tb_emp.Edit;
      Tb_EmpOK.Value:='P';
      Tb_Emp.Post;
      end;
   end;}

end;

procedure TFrm_Empresas.Tb_EmpBeforeInsert(DataSet: TDataSet);
begin
Abort;
end;

procedure TFrm_Empresas.DBGrid1DblClick(Sender: TObject);
begin
Tb_emp.Edit;
if trim(Tb_EmpOK.AsString)='' then
   Tb_EmpOK.Value:='P'
else
   Tb_EmpOK.Value:=' ';
Tb_Emp.Post;

end;

end.
