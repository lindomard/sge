unit S_Agde;                
              
interface                           
                                             
uses

  Gauges, Buttons, jpeg, Classes , ExtCtrls, Controls, StdCtrls,
  Windows, Messages, SysUtils, Variants, Graphics, Forms,
  Dialogs;


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
type                                    
                                
  TFrm_Agde = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;              
    bbCancelar: TBitBtn;
    gb_progres: TGroupBox;
    Gauge1: TGauge;
    gb_Progres2: TGroupBox;
    Gauge2: TGauge;
    Label2: TLabel;                          
    ListBox1: TListBox;
    bbProgAberto: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure mess(Sender: TObject);
    procedure bbProgAbertoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private                     
    { Private declarations }
  public
    { Public declarations }
    mag_qtdreg: Integer;
    mag_qtdlis: Integer;
    function fAgdeProgramaAberto(pNomProg: String): Boolean;
    function fAgdeQtdProg(pNomProg: String): Integer;
  end;
  
  function EnumWindowsProc(Wnd : HWnd;Form : TFrm_Agde) : Boolean; Export; {$ifdef Win32} StdCall; {$endif}

var
  Frm_Agde: TFrm_Agde;
  cancelar_proc:Boolean=False;
  mplid: Integer;
  mpqtd: Integer;
  mplid2: Integer;
  mpqtd2: Integer;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Agde.Timer1Timer(Sender: TObject);
begin
if Label1.Font.Color=clred then
   Label1.Font.Color:=clGreen
else
   label1.Font.Color:=ClRed;
Label1.Update;
end;

procedure TFrm_Agde.mess(Sender: TObject);
begin
if fMensagem('Quer Realmente Cancelar o Processamento?',0,['1','2'],2)=mrYes then
   cancelar_proc:=True;
end;

function EnumWindowsProc(Wnd : HWnd;Form : TFrm_Agde) : Boolean; Export; {$ifdef Win32} StdCall; {$endif}
var
  Buffer : Array[0..99] of char;           
begin
  GetWindowText(Wnd,Buffer,100);
  if StrLen(Buffer) <> 0 then                  
    Form.listBox1.Items.Add(StrPas(Buffer));
  Result:=True;
end;

Function TFrm_Agde.fAgdeProgramaAberto(pNomProg: String): Boolean;
var
  ptam,x : Integer;          
begin
ptam:=length(pNomProg);
bbProgAberto.Click;
Result := False;


for x:=0 to Frm_Agde.ListBox1.Items.Count-1 do
   begin
   if ptam>0 then
      begin
      if lowercase(copy(ListBox1.Items[x],1,ptam))=lowercase(pNomProg) then
         begin
         result:=True;
         break
         end;         
      end
   else
      begin
      if lowercase(ListBox1.Items[x])=lowercase(pNomProg) then
         begin 
         result:=True;
         break
         end;
      end;
   end;
end;


Function TFrm_Agde.fAgdeQtdProg(pNomProg: String): Integer;
var
 x   : Integer;
 qtd : Integer;
 nome: string;
begin
 qtd :=0;
bbProgAberto.Click;

 pNomProg := LowerCase(pNomProg);
 for x := 0 to ListBox1.Items.Count-1 do
   begin
   nome:=ListBox1.Items[x];
   if LowerCase(ListBox1.Items[x])=pNomProg then
      begin
      qtd:=qtd+1;
      end;
   end;
//qtd:=1;  // lindomar
result:=qtd;                                      

end;

procedure TFrm_Agde.bbProgAbertoClick(Sender: TObject);
begin
ListBox1.Items.Clear;
EnumWindows(@EnumWindowsProc,LongInt(Self));
end;

procedure TFrm_Agde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
