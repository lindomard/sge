unit S_Des;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,func,S_DM1,S_DM4, ExtCtrls, Mask, ToolEdit, CurrEdit;

type
  TFrm_Des = class(TForm)
    Label6: TLabel;
    GroupBox1: TGroupBox;
    TIPO: TEdit;
    Panel_cab: TPanel;
    StaticText1: TStaticText;
    NOMPRO: TStaticText;
    StaticText3: TStaticText;
    MARCA: TStaticText;
    StaticText5: TStaticText;
    PRECO: TStaticText;
    StaticText7: TStaticText;
    Label12: TLabel;
    DESC: TCurrencyEdit;
    DESC02: TCurrencyEdit;
    DESC03: TCurrencyEdit;
    PCOLIQ: TCurrencyEdit;
    StaticText2: TStaticText;
    procedure DESCExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DESCKeyPress(Sender: TObject; var Key: Char);
    procedure TIPOEnter(Sender: TObject);
    procedure DESC02Exit(Sender: TObject);
    procedure DESC03Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PRECOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function fcalcpreco(ppreco,pdesc1,pdesc2,pdesc3: Real): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Des: TFrm_Des;
  Ori_iva: Real;
  Ori_icmsc: Real;
  Ori_icmsd: Real;
  Ori_redutor: Real;
  Ori_outrosac: Real;
  pcodtip: Integer=0;

implementation

{$R *.dfm}

procedure TFrm_Des.DESCExit(Sender: TObject);
begin
DESC.Text:=FormatFloat(mcasas, ValFloat(DESC.Text));
fcalcpreco(ValFloat(PRECO.Caption),ValFloat(DESC.Text),ValFloat(DESC02.Text),ValFloat(DESC03.Text));
end;

procedure TFrm_Des.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=27 then
   modalresult:=mrOk;

end;

procedure TFrm_Des.DESCKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Des.TIPOEnter(Sender: TObject);
begin
DESC.SetFocus;
end;

function TFrm_Des.fcalcpreco(ppreco,pdesc1,pdesc2,pdesc3: Real): Boolean;
var
mvalor, micmsd, micmsc: Real;
begin
mvalor:=0; micmsd:=0; micmsc:=0;
micmsd:=ppreco+(ppreco*Ori_iva/100);
micmsd:=micmsd-(micmsd*Ori_redutor/100);
micmsd:=micmsd*Ori_icmsd/100;
ppreco:=ppreco-(ppreco*pdesc1/100);
ppreco:=ppreco-(ppreco*pdesc2/100);
ppreco:=ppreco-(ppreco*pdesc3/100);
micmsc:=ppreco*Ori_icmsc/100;
mvalor:=ppreco+(micmsd-micmsc);
mvalor:=mvalor+(mvalor*Ori_outrosac)/100;
if DM4.Tb_ParAJP02.Locate('PA2CODTPRO',pcodtip,[]) then
   begin
   mvalor:=mvalor+(mvalor*DM4.Tb_ParAJP02PA2PERACRE.Value)/100;
   end;
{
if DM1.Tb_PargerPACREGER.Value>0 then
   begin
   mvalor:=mvalor+(mvalor*DM1.Tb_PargerPACREGER.Value)/100;
   end;
}
PCOLIQ.Text:=FormatFloat(mcasaspu, mvalor);
PCOLIQ.Update;
result:=true;
end;
procedure TFrm_Des.DESC02Exit(Sender: TObject);
begin
DESC02.Text:=FormatFloat(mcasas, ValFloat(DESC02.Text));
fcalcpreco(ValFloat(PRECO.Caption),ValFloat(DESC.Text),ValFloat(DESC02.Text),ValFloat(DESC03.Text));

end;

procedure TFrm_Des.DESC03Exit(Sender: TObject);
begin
DESC03.Text:=FormatFloat(mcasas, ValFloat(DESC03.Text));
fcalcpreco(ValFloat(PRECO.Caption),ValFloat(DESC.Text),ValFloat(DESC02.Text),ValFloat(DESC03.Text));

end;

procedure TFrm_Des.FormCreate(Sender: TObject);
begin
DM4.Tb_ParAj01.Close;
if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   DM4.Tb_ParAj01.ParamByName('CODEMP').AsString:='%'
else
   DM4.Tb_ParAj01.ParamByName('CODEMP').AsFloat:=codemp;
DM4.Tb_ParAj01.ParamByName('TPRECO').AsFloat   :=0;
DM4.Tb_ParAj01.Open;
if DM4.Tb_ParAj01.Eof then
   begin
   Ori_iva     :=0;
   Ori_icmsc   :=0;
   Ori_icmsd   :=0;
   Ori_redutor :=0;
   Ori_outrosac:=0;
   end
else
   begin
   Ori_iva     :=iif(DM4.Tb_ParAj01PA1IVA.IsNull,0,DM4.Tb_ParAj01PA1IVA.Value);
   Ori_icmsc   :=iif(DM4.Tb_ParAj01PA1ICMSC.IsNull,0,DM4.Tb_ParAj01PA1ICMSC.Value);
   Ori_icmsd   :=iif(DM4.Tb_ParAj01PA1ICMSD.IsNull,0,DM4.Tb_ParAj01PA1ICMSD.Value);
   Ori_redutor :=iif(DM4.Tb_ParAj01PA1REDUTOR.IsNull,0,DM4.Tb_ParAj01PA1REDUTOR.Value);
   Ori_outrosac:=iif(DM4.Tb_ParAj01PA1OUTROSAC.IsNull,0,DM4.Tb_ParAj01PA1OUTROSAC.Value);
   end;
DM4.Tb_ParAJP02.Close;
if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   DM4.Tb_ParAJP02.ParamByName('CODEMP').AsString:='%'
else
   DM4.Tb_ParAJP02.ParamByName('CODEMP').AsFloat :=codemp;
DM4.Tb_ParAJP02.ParamByName('TPRECO').AsFloat    :=0;
DM4.Tb_ParAJP02.ParamByName('TCODTPRO').AsString :='%';
DM4.Tb_ParAJP02.Open;
end;

procedure TFrm_Des.PRECOExit(Sender: TObject);
begin
PRECO.Caption:=FormatFloat(mcasas, ValFloat(PRECO.Caption));
fcalcpreco(ValFloat(PRECO.Caption),ValFloat(DESC.Text),ValFloat(DESC02.Text),ValFloat(DESC03.Text));

end;

procedure TFrm_Des.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
