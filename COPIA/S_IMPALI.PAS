unit S_ImpAli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges, Buttons, FileCtrl, ExtCtrls,Func;

type
  TFrm_ImpAli = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FileListBox1: TFileListBox;
    NARQ: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ImpAli: TFrm_ImpAli;

implementation

uses S_DM1, S_Stru;

{$R *.DFM}

procedure TFrm_ImpAli.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpAli.BitBtn1Click(Sender: TObject);
var
mlidos, malt, mqtd: integer;
a: string;
mcgc{, maliq}: real;
F: TextFile;
begin
If not FileExists(NARQ.Text) then
   begin
   ShowMessage('Escolha um Arquivo Válido para a Importação!');
   NARQ.SetFocus;
   Exit;
   end;
AssignFile(F,NARQ.Text);
Reset(F);
mqtd:=FileSize(F);
mlidos:=0;
malt:=0;
a:='';
ReadLn(F,a);
If Length(a)<>120 then
   begin
   label1.Update;
   ShowMessage('Arquivo Danificado, ou Inválido');
   Exit;
   end;
Application.CreateForm(TFrm_Stru, Frm_Stru);
Frm_Stru.fHabDes_trigger(1,'CADCLI');

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCLI set CALIQDEB=0');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


label1.Visible:=true;
label2.Visible:=true;
label3.Visible:=true;
Gauge1.Visible:=true;
While not Eof(F) do
   begin
   ReadLn(F,a);
   mlidos:=mlidos+1;
   gauge1.Progress:=mlidos*100 div mqtd;
   mcgc:=StrToFloat('0'+copy(a,10,14));
   label1.Caption:='Totais: Lidos....: '+FormatFloat('0000000',mlidos)+' Alterados....: '+FormatFloat('0000000',malt);
   label2.Caption:='Razão Social.....: '+copy(a,24,46);
   label3.Caption:='C.N.P.J. ........: '+FloatToStr(mcgc);
   label1.Update;
   label2.Update;
   label3.Update;
   verteclado(0);
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('UPdate CADCLI SET CALIQDEB='+Trim(copy(a,109,2))
                     +'Where CCNPJ='+FloatToStr(mcgc));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) as qtd from CADCLI WHERE CALIQDEB>0');
DM1.Query1.Open;
malt:=DM1.Query1.fields[0].AsInteger;
label1.Caption:='Totais: Lidos....: '+FormatFloat('0000000',mlidos)+' Alterados....: '+FormatFloat('0000000',malt);
label1.Update;
Frm_Stru.fHabDes_trigger(0,'CADCLI');
Frm_Stru.Free;
verteclado(0);
ShowMessage('Concluido!');
label1.Visible:=false;
label2.Visible:=false;
label3.Visible:=false;
Gauge1.Visible:=False;
end;

procedure TFrm_ImpAli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
