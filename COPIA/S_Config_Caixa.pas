unit S_Config_Caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit;

type
  TFrm_Config_Caixa = class(TForm)
    Label1: TLabel;
    DTBLOQCX: TDateEdit;
    bbSalvar: TBitBtn;
    bbSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Config_Caixa: TFrm_Config_Caixa;

implementation

uses S_DM4, lerarq, S_DM1, Func, Func2;

{$R *.dfm}

procedure TFrm_Config_Caixa.FormCreate(Sender: TObject);
begin
flparger02(0,0,'1');
DTBLOQCX.EditMask:='!99/99/9999;1; ';
if DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime<=pdatanula then
   DTBLOQCX.Text    :='/  /'
else
   DTBLOQCX.Text    :=FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime);

end;

procedure TFrm_Config_Caixa.bbSalvarClick(Sender: TObject);
begin
flcadpar02(0,0,CodUsr,IntToStr(61));
if DM4.Tb_Par02PA2PDSN.Value = 'S' then
  begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=61;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para Confirmar a alteração da data de bloqueio do caixa.';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
    begin
    fMensagem('Alteração não Aceita!',0,['0'],0);
    if DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime<=pdatanula then
      DTBLOQCX.Text    :='/  /'
    else
      DTBLOQCX.Text    :=FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime);
    exit;
    end;
  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
if trim(DTBLOQCX.Text)='/  /' then
   DM1.Query1.SQL.Add('Update PARGER02 set PG2DTBLOQCX=null')
else
   begin
   DM1.Query1.SQL.Add('Update PARGER02 set PG2DTBLOQCX=:DTBLOQCX');
   DM1.Query1.ParamByName('DTBLOQCX').AsString:=DTBLOQCX.Text;
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
flparger02(0,0,'1');
 
fmensagem('Concluido!',0,['0'],0);

end;

procedure TFrm_Config_Caixa.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Config_Caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.
