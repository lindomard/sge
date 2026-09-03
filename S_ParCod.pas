unit S_ParCod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,S_DM4,S_DM1,lerarq, Buttons,func;

type
  TFrm_ParCod = class(TForm)
    GroupBox2: TGroupBox;
    rg_tabelas: TRadioGroup;
    Label1: TLabel;
    CODIGO: TEdit;
    Label2: TLabel;
    DIG: TEdit;
    gb_status: TGroupBox;
    cb_status01: TCheckBox;
    cb_status02: TCheckBox;
    cb_status03: TCheckBox;
    cb_status04: TCheckBox;
    cb_status05: TCheckBox;
    cb_status06: TCheckBox;
    cb_status07: TCheckBox;
    cb_status08: TCheckBox;
    cb_status09: TCheckBox;
    lbl_desctab: TLabel;
    bbSalvar: TBitBtn;
    bbSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure rg_tabelasClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODIGOChange(Sender: TObject);
    procedure cb_status01Click(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure rg_tabelasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fatualizar(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_ParCod: TFrm_ParCod;
  mtabatual: array [1..11]of string;

implementation

uses DB;

{$R *.dfm}

procedure TFrm_ParCod.FormCreate(Sender: TObject);
begin
mtabatual   [01]:='CADBAI';
mtabatual   [02]:='CADLOC';
mtabatual   [03]:='CADCLI';
mtabatual   [04]:='CADCV';
mtabatual   [05]:='CADFOR';
mtabatual   [06]:='CADPRO';
mtabatual   [07]:='CADRED';
mtabatual   [08]:='CADFUN';
mtabatual   [09]:='CADGFOR';
mtabatual   [10]:='CADGRU';
mtabatual   [11]:='CADVEN';
fatualizar(3);
end;

function TFrm_ParCod.fatualizar(ptipo: Integer): Boolean;
begin
if not flcadparCod(0,mtabatual[ptipo]) then
   begin
   fAjustarcodigos(0);
   flcadparCod(0,mtabatual[ptipo]);
   end;
lbl_desctab.Caption:=DM4.Tb_ParCodPCDESCRICAO.Value;
CODIGO.Text        :=DM4.Tb_ParCodPCCODIGO.AsString;
DIG.Text           :='';
cb_status01.Checked:=DM4.Tb_ParCodPCBLQSTA01.AsInteger=1;
cb_status02.Checked:=DM4.Tb_ParCodPCBLQSTA02.AsInteger=1;
cb_status03.Checked:=DM4.Tb_ParCodPCBLQSTA03.AsInteger=1;
cb_status04.Checked:=DM4.Tb_ParCodPCBLQSTA04.AsInteger=1;
cb_status05.Checked:=DM4.Tb_ParCodPCBLQSTA05.AsInteger=1;
cb_status06.Checked:=DM4.Tb_ParCodPCBLQSTA06.AsInteger=1;
cb_status07.Checked:=DM4.Tb_ParCodPCBLQSTA07.AsInteger=1;
cb_status08.Checked:=DM4.Tb_ParCodPCBLQSTA08.AsInteger=1;
cb_status09.Checked:=DM4.Tb_ParCodPCBLQSTA09.AsInteger=1;
if DM4.Tb_ParCodPCTABELA.Value='CADCLI' then
   gb_status.Visible:=true
else
   gb_status.Visible:=false;
result:=true;

end;
procedure TFrm_ParCod.rg_tabelasClick(Sender: TObject);
begin
fatualizar(rg_tabelas.ItemIndex+1);
end;

procedure TFrm_ParCod.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ParCod.CODIGOChange(Sender: TObject);
begin
if CODIGO.Modified then bbSalvar.Enabled:=true;
end;

procedure TFrm_ParCod.cb_status01Click(Sender: TObject);
begin
bbSalvar.Enabled:=true;
end;

procedure TFrm_ParCod.bbSalvarClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADPARCOD set PCCODIGO=0'+Trim(CODIGO.Text)+' where '
                  +iif(DM1.Qr_TID.Locate('TINOME',mtabatual[rg_tabelas.ItemIndex+1],[]),'',
                  ' PCCODEMP=0'+InttoStr(codemp)+' and ')
                  +' PCTABELA='+chr(39)+mtabatual[rg_tabelas.itemindex+1]+CHR(39));
try
   DM1.Query1.execsql;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Atualizar o Arquivo de Parametros!',mtwarning,[mbOk],0);
   end;
fSequenceTestaeAjusta(mtabatual[rg_tabelas.itemindex+1],valint(codigo.Text));

MessageDlg('Registro Gravado!',mtInformation,[mbOk],0);
bbSalvar.Enabled:=false;
end;

procedure TFrm_ParCod.CODIGOExit(Sender: TObject);
begin
CODIGO.Text:=fdeixanum2(CODIGO.Text);
end;

procedure TFrm_ParCod.rg_tabelasEnter(Sender: TObject);
begin
bbSalvar.Enabled:=false;
end;

procedure TFrm_ParCod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
