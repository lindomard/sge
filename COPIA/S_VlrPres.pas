unit S_VlrPres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons,func;

type
  TFrm_VlrPres = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    VALOR: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    TAXA: TEdit;
    PARC: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    VALORP: TEdit;
    TOTFIN: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure TAXAExit(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure PARCKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function felevar(mvalor: Real; mvezes: Integer): Real;
var
  Frm_VlrPres: TFrm_VlrPres;

implementation

{$R *.DFM}

procedure TFrm_VlrPres.BitBtn2Click(Sender: TObject);
begin
close
end;

procedure TFrm_VlrPres.BitBtn1Click(Sender: TObject);
var
mresult, mvalor, mtaxa : Real;
mparc: Integer;
begin
mvalor:=StrtoFloat('0'+VALOR.Text);
mtaxa :=StrToFloat('0'+TAXA.Text);
mparc :=StrToInt('0'+PARC.Text);
if mtaxa<>0 then
   mresult:=((((  felevar((mtaxa/100+1),mparc))/(( felevar((mtaxa/100+1),mparc))-1))*mvalor)*(mtaxa/100))
else
   mresult:=mvalor/mparc;

// mresult:=(((((mtaxa/100+1)^mparc)/(((mtaxa/100+1)^mparc)-1))*mvalor)*(mtaxa/100));
//mresult:=^5;
VALORp.Text:=FormatFloat('###,##0.00',mresult);
TOTFIN.Text:=FormatFloat('###,##0.00',(mresult*mparc));
end;


Function felevar(mvalor: Real; mvezes: Integer): Real;
var
fmres: Real;
mqtd: Integer;
mvorigem: Real;
Begin
fmres:=mvalor;
mvorigem:= mvalor;
for mqtd:=1 to mvezes do
   begin
   if mqtd>1 then
      fmres:=fmres*mvorigem;
   end;
result:=fmres;
end;

procedure TFrm_VlrPres.VALORExit(Sender: TObject);
begin
VALOR.Text:=FormatFloat('#####0.00',StrToFloat('0'+VALOR.Text));
end;

procedure TFrm_VlrPres.TAXAExit(Sender: TObject);
begin
TAXA.Text:=FormatFloat('#####0.00',StrToFloat('0'+TAXA.Text));

end;

procedure TFrm_VlrPres.VALORKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_VlrPres.PARCKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_VlrPres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
