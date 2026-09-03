unit S_DM_Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Buttons,lerarq;

type
  TFrm_DM_Config = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DM_ENDIP: TEdit;
    DM_PORTA: TEdit;
    bbEndIP: TBitBtn;
    bbPorta: TBitBtn;
    bbSair: TBitBtn;
    procedure DM_ENDIPChange(Sender: TObject);
    procedure DM_PORTAChange(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbEndIPClick(Sender: TObject);
    procedure bbPortaClick(Sender: TObject);
    procedure DM_PORTAExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DM_Config: TFrm_DM_Config;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_DM_Config.DM_ENDIPChange(Sender: TObject);
begin
if DM_ENDIP.Modified then bbEndIP.Enabled:=True;
end;

procedure TFrm_DM_Config.DM_PORTAChange(Sender: TObject);
begin
if DM_PORTA.Modified then bbPorta.Enabled:=True;
end;

procedure TFrm_DM_Config.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DM_Config.FormCreate(Sender: TObject);
begin
flparger(0,0,'1');
DM_ENDIP.Text:=DM1.Tb_PargerPDM_ENDIP.Value;
DM_PORTA.Text:=DM1.Tb_PargerPDM_PORTA.AsString;

end;

procedure TFrm_DM_Config.bbEndIPClick(Sender: TObject);
begin
bbEndIP.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update PARGER set PDM_ENDIP='+chr(39)+DM_ENDIP.Text+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,70,'Frm_DM_Config','PARGER');
   end;

end;

procedure TFrm_DM_Config.bbPortaClick(Sender: TObject);
begin
bbPorta.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update PARGER set PDM_PORTA=0'+Trim(DM_PORTA.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,70,'Frm_DM_Config','PARGER');
   end;

end;

procedure TFrm_DM_Config.DM_PORTAExit(Sender: TObject);
begin
DM_PORTA.Text:=IntToStr(ValInt(DM_PORTA.Text));
end;

procedure TFrm_DM_Config.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
flparger(0,0,'1');
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.
