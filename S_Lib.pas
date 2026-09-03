unit S_Lib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, db,dbtables,func,S_DM2,S_DM1;

type
  TFrm_Lib = class(TForm)
    Label1: TLabel;
    SENHA: TEdit;
    bbok: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    CODLIB: TEdit;
    bbInternet: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbInternetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function fpalnum(ptipo:Integer;ppal:String): String;
Function finverte(pqtd: Integer; pnome:String): String;

var
  Frm_Lib: TFrm_Lib;
  mtotal : Integer;
  lib_origem: Integer=0;
implementation

uses lerarq, S_AtuSis;

{$R *.dfm}

Function fpalnum(ptipo:Integer;ppal:String): String;
var
mqtd: Integer;
mpal: String;
mletra: String;
mresult: Boolean;
begin
mpal:='';
mresult:=True;
for mqtd:=1 to length(ppal) do
   begin
   mletra:=copy(ppal,mqtd,1);
   mpal:=mpal+IntToStr(integer(mletra[1])-64-ptipo);
   if ((integer(mletra[1])-64-ptipo)<0) or
      ((integer(mletra[1])-64-ptipo)>9) then
      mresult:=False;
   end;
if not mresult then
   mpal:='';
result:=mpal;
end;



procedure TFrm_Lib.FormCreate(Sender: TObject);
var
mcgc: String;
mqtd: Integer;
begin
if not flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp))) then
   begin
   fMensagem('Sistema não Configurado!',0,['0'],0);
   close;
   end;
mcgc:=FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value);
mtotal:=0;
for mqtd:=1 to 14 do
  begin
  mtotal:=mtotal+StrToInt(copy(mcgc,mqtd,1));
  end;
mtotal:=StrToInt('0'+modulo11(IntTostr(mtotal)));
if mtotal<1 then
   mtotal:=1;
lib_origem:=0;
end;
Function finverte(pqtd:Integer;pnome:String): String;
var
mnome: String;
mreg, mqtd: Integer;
begin
mreg:=pqtd;
mnome:='';
for mqtd:=1 to pqtd do
   begin
   mnome:=mnome+char(integer(pnome[mreg])-mqtd);
   mreg:=mreg-1;
   end;
result:=mnome;
end;

procedure TFrm_Lib.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
msistema: String;
begin
if key=113 then
   begin
   msistema:=PalNum(DM1.Tb_PargerPA001.Value);
   ShowMessage('Esta cópia esta licenciada até: '+
              copy(msistema,1,2)+'/'+
              copy(msistema,3,2)+'/'+
              copy(msistema,5,4));
   end;

end;

procedure TFrm_Lib.bbInternetClick(Sender: TObject);
begin

if Frm_Atusis=nil then
   Application.CreateForm(TFrm_Atusis, Frm_Atusis)
else
   begin
   Frm_Atusis.Free;
   Frm_Atusis:=nil;
   Application.CreateForm(TFrm_Atusis, Frm_Atusis);
   end;
HabilitaDesabilita(0);
Frm_AtuSis.ShowModal;
Frm_Atusis.Free;
Frm_Atusis:=nil;
lib_origem:=1;
bbok.Click;

end;

procedure TFrm_Lib.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
