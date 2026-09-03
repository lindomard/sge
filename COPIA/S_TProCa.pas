unit S_TProCa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_DM2,S_dm1, Db, Dbtables, Buttons, DBCtrls,
  Grids, DBGrids, func;


type
  TFrm_TProCa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RGFONTE: TRadioGroup;
    RGTREG: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    LINHA: TEdit;
    COLUNA: TEdit;
    MENSAGEM: TEdit;
    CONDICAO: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    CAMPO1: TComboBox;
    CAMPO2: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    CAMPO: TComboBox;
    Label9: TLabel;
    SISTEMA: TComboBox;
    Label10: TLabel;
    CARACTER: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    TAMANHO: TEdit;
    RGTIPOC: TRadioGroup;
    RGALINHAR: TRadioGroup;
    Label5: TLabel;
    FORMATO: TComboBox;
    Src_TDV: TDataSource;
    Label13: TLabel;
    Label14: TLabel;
    OPERADOR: TComboBox;
    GroupBox1: TGroupBox;
    ZERAR: TCheckBox;
    Memo1: TMemo;
    Qr_TDVOP: TQuery;
    Qr_TDVOPTOCODEMP: TFloatField;
    Qr_TDVOPTODOC: TStringField;
    Qr_TDVOPTONOME: TStringField;
    Qr_TDVOPTOTOP1: TStringField;
    Qr_TDVOPTOOP1: TStringField;
    Qr_TDVOPTOPER1: TStringField;
    Qr_TDVOPTOTOP2: TStringField;
    Qr_TDVOPTOOP2: TStringField;
    Qr_TDVOPTOPER2: TStringField;
    Qr_TDVOPTOTOP3: TStringField;
    Qr_TDVOPTOOP3: TStringField;
    Qr_TDVOPdescricao: TStringField;
    Qr_TDVOPcampo1: TStringField;
    Qr_TDVOPcampo2: TStringField;
    Qr_TDVOPmoper: TStringField;
    Qr_TDVOPTOTOP0: TStringField;
    Qr_TDVOPTOOP0: TStringField;
    Qr_TDVOPTOPER0: TStringField;
    Qr_TDVOPcampo0: TStringField;
    Qr_TDVOPcampo3: TStringField;
    Qr_TDVOPTODESOP0: TStringField;
    Qr_TDVOPTODESOP1: TStringField;
    Qr_TDVOPTODESOP2: TStringField;
    Qr_TDVOPTODESOP3: TStringField;
    Qr_TDVOPTOCONDT1: TStringField;
    Qr_TDVOPTOCOND01: TStringField;
    Qr_TDVOPTODCOND01: TStringField;
    Qr_TDVOPTOCONDOP: TStringField;
    Qr_TDVOPTOCONDT2: TStringField;
    Qr_TDVOPTOCOND02: TStringField;
    Qr_TDVOPTODCOND02: TStringField;
    Qr_TDVOPTOTDET: TFloatField;
    Qr_TDVOPTOCODIGO: TFloatField;
    PRIMEIRO: TBitBtn;
    ULTIMO: TBitBtn;
    ANTERIOR: TBitBtn;
    PROXIMO: TBitBtn;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    EXCLUIR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    CB_BARRAS: TCheckBox;
    RG_EXTENSO: TRadioGroup;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    EXT_QTDL: TEdit;
    EXT_1LT: TEdit;
    EXT_1LP: TEdit;
    EXT_1IC: TEdit;
    EXT_2IC: TEdit;
    EXT_2LT: TEdit;
    EXT_2LP: TEdit;
    EXT_3IC: TEdit;
    EXT_3LT: TEdit;
    EXT_3LP: TEdit;
    lbl_concatenado: TLabel;
    CONCATENADO: TComboBox;
    CAMPO_EMP: TComboBox;
    CB_COND_CONT: TComboBox;
    Label15: TLabel;
    CB_COND_02_01: TComboBox;
    CB_COND_02_OP: TComboBox;
    Label30: TLabel;
    Label31: TLabel;
    CB_COND_02_02: TComboBox;
    RG_CORTARDE: TRadioGroup;
    CB_COND_CONT03: TComboBox;
    Label32: TLabel;
    CB_COND_03_01: TComboBox;
    Label33: TLabel;
    CB_COND_03_OP: TComboBox;
    Label34: TLabel;
    CB_COND_03_02: TComboBox;
    Label35: TLabel;
    Label36: TLabel;
    MLINHA: TEdit;
    MCOLUNA: TEdit;
    Label37: TLabel;
    SBNAplicar: TSpeedButton;
    CB_INFADIC: TComboBox;
    procedure RGTREGExit(Sender: TObject);
    procedure LINHAKeyPress(Sender: TObject; var Key: Char);
    procedure CARACTERKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CAMPOExit(Sender: TObject);
    procedure CAMPO1Exit(Sender: TObject);
    procedure CAMPO2Exit(Sender: TObject);
    procedure MENSAGEMExit(Sender: TObject);
    procedure SISTEMAExit(Sender: TObject);
    procedure Src_TDVDataChange(Sender: TObject; Field: TField);
    procedure PRIMEIROClick(Sender: TObject);
    procedure ULTIMOClick(Sender: TObject);
    procedure PROXIMOClick(Sender: TObject);
    procedure ANTERIORClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SAIRClick(Sender: TObject);
    procedure Qr_TDVOPCalcFields(DataSet: TDataSet);
    procedure OPERADORExit(Sender: TObject);
    procedure OPERADORChange(Sender: TObject);
    procedure MENSAGEMKeyPress(Sender: TObject; var Key: Char);
    procedure RG_EXTENSOExit(Sender: TObject);
    procedure CONCATENADOExit(Sender: TObject);
    procedure CAMPO_EMPExit(Sender: TObject);
    procedure CB_COND_02_01Exit(Sender: TObject);
    procedure CB_COND_02_02Exit(Sender: TObject);
    procedure CB_COND_03_01Exit(Sender: TObject);
    procedure CB_COND_03_02Exit(Sender: TObject);
    procedure MLINHAExit(Sender: TObject);
    procedure MCOLUNAExit(Sender: TObject);
    procedure SBNAplicarClick(Sender: TObject);
    procedure CONDICAOExit(Sender: TObject);
    procedure CB_COND_CONTExit(Sender: TObject);
    procedure CB_COND_02_OPExit(Sender: TObject);
    procedure CB_COND_CONT03Exit(Sender: TObject);
    procedure CB_COND_03_OPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fTproca01va(mtipo: Integer): Boolean;

var
  Frm_TProCa: TFrm_TProCa;
  mtipo: Integer;
  marquso,mcondt1, mcondt2: String;
  mcond_02_t1, mcond_02_t2: String;
  mcond_03_t1, mcond_03_t2: String;

  mpesq: String;
  mtdet: Integer=0;
implementation

uses S_TPro, lerarq;

{$R *.dfm}

procedure TFrm_TProCa.RGTREGExit(Sender: TObject);
begin
RGTIPOC.Enabled:=True;
if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=True;
   OPERADOR.Visible   :=False;
   CONCATENADO.Visible:=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   RGTIPOC.Enabled    :=False;
   CB_BARRAS.Visible  :=True;
   RG_EXTENSO.Visible :=True;
   CAMPO_EMP.Visible:=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible   :=True;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CONCATENADO.Visible:=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO.Visible      :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible:=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=True;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible:=False;
   end
else if RGTREG.ItemIndex=3 then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=True;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible:=False;
   end
else if RGTREG.ItemIndex=4 then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=True;
   ZERAR.Visible      :=True;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible:=False;
   end
else if RGTREG.ItemIndex=5 then
   begin
   lbl_concatenado.Caption:='Dados Empresa:';
   CONCATENADO.Visible:=False;
   CAMPO_EMP.Visible  :=True;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   if ValFloat(TAMANHO.Text)<=0 then
      TAMANHO.Text:='132';
   end
else if RGTREG.ItemIndex=6 then
   begin
   fmensagem('Opção Indisponivel',0,['0'],0);
   RGTREG.SetFocus;
   exit;
   end
else if RGTREG.ItemIndex=7 then
   begin
   lbl_concatenado.Caption:='Concatenado:';
   CONCATENADO.Visible:=true;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   if ValFloat(TAMANHO.Text)<=0 then
      TAMANHO.Text:='132';
   CAMPO_EMP.Visible:=False;
   end;


end;

procedure TFrm_TProCa.LINHAKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TProCa.CARACTERKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(CARACTER.Text)>1) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TProCa.FormCreate(Sender: TObject);
var
mlidos,mqtd: Integer;

begin
mpesq:='CADTDV';


if DM1.Tb_TDVCATCSTATUS.Value=1 then
   begin
   mpesq:='CADTAB';
   if Frm_TPro.NOMREL.Caption='Duplicata' then
      marquso:='CADDAR'
   else if (mrelat=0) or (mrelat=2) or (mrelat=4) or (mrelat=25) then
      marquso:='CAB'
   else if mrelat=1 then
      marquso:='COR'
   else if mrelat=3 then
      marquso:='SER'
   else if (mrelat=30) or (mrelat=31) or (mrelat=32) then
      marquso:='CADP02_TROCAS'
   else if (mrelat=40) or (mrelat=41) or (mrelat=42) then
      marquso:='CADPFP'
   else if (mrelat=35) or (mrelat=36) or (mrelat=37) then
      marquso:='CADP02_MP'
   else if (mrelat=50) or (mrelat=51) or (mrelat=52) then
      marquso:='CADPEN';
   end
else if mreltab2<>'' then
   marquso:=mreltab2
else
   marquso:=mreltab;
DM2.Tb_Arq.Close;
DM2.Tb_Arq.SQL.Clear;
DM2.Tb_Arq.SQL.Add('Select * From CADARQ where '
                  +' CANOMARQ='+chr(39)+marquso+CHR(39));
DM2.Tb_Arq.Open;
SISTEMA.Items.clear;
SISTEMA.Items.Add('Data');
SISTEMA.Items.Add('Hora');
SISTEMA.Items.Add('Pagina');
SISTEMA.Items.Add('Total de Pagina');

if (marquso='CADLDR') or (marquso='CADAJU') then
   SISTEMA.Items.Add('Periodo');
if mrelat=0 then
   Begin
   Label1.Caption:='Linha....:';
   Label13.Caption:='';
   Frm_TProCa.Caption:='Tabulacao do Cabecalho do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=1 then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao do Corpo do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=2 then
   begin
   if DM1.Tb_TDVCATCAVANCAROD.Value=1  then
      begin
      Label1.Caption:='Apos....:';
      Label13.Caption:='Linha(s)';
      end
   else
      begin
      Label1.Caption:='Linha....:';
      Label13.Caption:='';
      end;

   Frm_TProCa.Caption:='Tabulacao do Rodape do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=3 then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao do Cabecalho do Grupo do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=4 then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao do Rodape do Grupo do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=25 then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='ítens a serem impressos após os detalhes do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=98 then
   begin
   Label1.Caption:='Linha....:';
   Label13.Caption:='';
   Frm_TProCa.Caption:='Tabulacao da Pagina Inicial do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if mrelat=99 then
   begin
   Label1.Caption:='Linha....:';
   Label13.Caption:='';
   Frm_TProCa.Caption:='Tabulacao da Pagina Final do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end
else if (mrelat=10) or (mrelat=13) or (mrelat=16) or (mrelat=19) or (mrelat=22) or (mrelat=25) or (mrelat=28) or (mrelat=31) or (mrelat=40) or (mrelat=50) then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao Cabecalho Sub-Detalhe do Relatorio: '+Frm_TPro.NOMREL.Caption+'/'+marq2;
   end
else if (mrelat=11) or (mrelat=14) or (mrelat=17) or (mrelat=20) or (mrelat=23) or (mrelat=26) or (mrelat=29) or (mrelat=32)  or (mrelat=41) or (mrelat=51) then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao Corpo/Detalhe do Sub-Detalhe do Relatorio: '+Frm_TPro.NOMREL.Caption+'/'+marq2;
   end
else if (mrelat=12) or (mrelat=15) or (mrelat=18) or (mrelat=21) or (mrelat=24) or (mrelat=27) or (mrelat=30) or (mrelat=33) or (mrelat=42) or (mrelat=52) then
   begin
   Label1.Caption:='Apos.....:';
   Label13.Caption:='Linha(s)';
   Frm_TProCa.Caption:='Tabulacao Rodape do Sub-Detalhe do Relatorio: '+Frm_TPro.NOMREL.Caption+'/'+marq2;
   end;

fltdvop(0,0,mreltab,Frm_TPro.NOMREL.Caption,mpesq,'','','');


While not DM2.Tb_OP.Eof do
   begin
   OPERADOR.Items.Add('Operador.: '+FormatFloat('000',DM2.Tb_OPTOCODIGO.Value));
   DM2.Tb_Op.Next;
   end;


fltdvjc(0,0,mreltab,Frm_TPro.NOMREL.Caption,IntToStr(mtdet),'','',mpesq);

While not DM2.Tb_JC.Eof do
   begin
   CONCATENADO.Items.Add(DM2.Tb_JCJCNOMCAM.Value);
   DM2.Tb_JC.Next;
   end;


flcadtdv(0,0,mreltab,frm_TPro.NOMREL.Caption,'',IntTosTr(mrelat),mpesq);

mlidos:=1;
{
msubdet = 1 Sub-Detalhes do pedido
}
DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   CAMPO.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO1.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO2.Items.Add(DM2.Tb_ArqCANOMREG.Value);

   CB_COND_02_01.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CB_COND_02_02.Items.Add(DM2.Tb_ArqCANOMREG.Value);

   CB_COND_03_01.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CB_COND_03_02.Items.Add(DM2.Tb_ArqCANOMREG.Value);


//   DM2.Tb_Arq.Open;
   dm2.Tb_Arq.Next;
   end;
if (mpesq='CADTAB') and (mrelat=4) then
   begin
   CAMPO1.Items.Add('Especial(Grupo Anterior)');
   CB_COND_02_01.Items.Add('Especial(Grupo Anterior)');
   CB_COND_03_01.Items.Add('Especial(Grupo Anterior)');
   end;

if (mpesq='CADTAB') and ( (mrelat>29) and (mrelat<33) )  then
   begin
   CAMPO1.Items.Add('Codigo Prod Entrada Anterior');
   CB_COND_02_01.Items.Add('Codigo Prod Entrada Anterior');
   CB_COND_03_01.Items.Add('Codigo Prod Entrada Anterior');
   end;


for mlidos:=0 to DM1.Tb_Emp.FieldCount-1 do
   begin
   if Length(DM1.Tb_Emp.Fields[mlidos].DisplayName)>2 then
      begin
      if copy(DM1.Tb_Emp.Fields[mlidos].DisplayName,1,3)='01-' then
         Continue;
      end;
   CAMPO_EMP.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   end;

CAMPO.ItemIndex:=0;
CAMPO1.ItemIndex:=-1;
campo2.ItemIndex:=-1;
CONDICAO.ItemIndex:=-1;

CB_COND_02_01.ItemIndex:=-1;
CB_COND_02_02.ItemIndex:=-1;
CB_COND_02_OP.ItemIndex:=-1;
CB_COND_CONT.ItemIndex:=-1;

CB_COND_03_01.ItemIndex:=-1;
CB_COND_03_02.ItemIndex:=-1;
CB_COND_03_OP.ItemIndex:=-1;
CB_COND_CONT03.ItemIndex:=-1;

CAMPO2.Items.Add('[Nulo/Branco]');
CB_COND_02_02.Items.Add('[Nulo/Branco]');
CB_COND_03_02.Items.Add('[Nulo/Branco]');


mtipo:=8;
DM1.Tb_Tdv.First;
end;

procedure TFrm_TProCa.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_TProCa.CAMPOExit(Sender: TObject);
VAR
mlidos,mqtd: Integer;
mtipoc: TFieldType;
mnomec: String;
begin
if CAMPO.ItemIndex<0 then
   with CAMPO do ItemIndex:=Items.IndexOf(CAMPO.Text);
CAMPO.text:=CAMPO.Items.Strings[CAMPO.ItemIndex];

mlidos:=1;

if DM2.Tb_Arq.Locate('CANOMREG',CAMPO.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value<>'N' then
      begin
      RG_EXTENSO.ItemIndex:=0;
      RG_EXTENSO.Enabled  :=False;
      CB_BARRAS.Enabled   :=False;
      end;

   if DM2.Tb_ArqCATIPO.Value='N' then
      Begin
      RGTIPOC.ItemIndex:=1;
      if DM2.Tb_ArqCATAMANHO.AsInteger>999 THEN
         TAMANHO.Text:='999'
      else
         TAMANHO.Text:=DM2.Tb_ArqCATAMANHO.AsString;
      FORMATO.ItemIndex:=7;
      RGALINHAR.ItemIndex:=1;
      RG_EXTENSO.Enabled:=True;
      CB_BARRAS.Enabled :=True;
      end
   else if DM2.Tb_ArqCATIPO.Value='D' then
      begin
      RGTIPOC.ItemIndex:=2;
      if DM2.Tb_ArqCATAMANHO.AsInteger>999 THEN
         TAMANHO.Text:='999'
      else
         TAMANHO.Text:=DM2.Tb_ArqCATAMANHO.AsString;
      Formato.ItemIndex:=3;
      RGALINHAR.ItemIndex:=0;
      end
   else if DM2.Tb_ArqCATIPO.Value='H' then
      begin
      RGTIPOC.ItemIndex:=3;
      if DM2.Tb_ArqCATAMANHO.AsInteger>999 THEN
         TAMANHO.Text:='999'
      else
         TAMANHO.Text:=DM2.Tb_ArqCATAMANHO.AsString;
      Formato.ItemIndex:=6;
      RGALINHAR.ItemIndex:=0;
      end
   else
      begin
      RGTIPOC.ItemIndex:=0;
      if DM2.Tb_ArqCATAMANHO.AsInteger>999 THEN
         TAMANHO.Text:='999'
      else
         TAMANHO.Text:=DM2.Tb_ArqCATAMANHO.AsString;
      RGALINHAR.ItemIndex:=0;
      FORMATO.Text:='';
      end;
   RGTIPOC.Update;
   RGTIPOC.Enabled:=False;
   end
else
   begin
   fmensagem('Nome do Campo Invalido',0,['0'],0);
   CAMPO.SetFocus;
   abort;
   end;
end;

procedure TFrm_TProCa.CAMPO1Exit(Sender: TObject);
begin
if CAMPO1.ItemIndex<0 then
   with CAMPO1 do ItemIndex:=Items.IndexOf(CAMPO1.Text);
CAMPO1.text:=CAMPO1.Items.Strings[CAMPO1.ItemIndex];

if Trim(campo1.Text)='' then
   begin
   CONDICAO.ItemIndex:=-1;
   CONDICAO.Text:='';
   campo2.ItemIndex  :=-1;
   CAMPO2.Text:='';
   exit;
   end;
if CAMPO1.Text='Codigo Prod Entrada Anterior' then
   mcondt1:='N'
else if CAMPO1.Text='Especial(Grupo Anterior)' then
   mcondt1:='S'

else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) then
   begin
   mcondt1:=DM2.Tb_ArqCATIPO.Value;
   end
else
   begin
   fmensagem('Campo Invalido!',0,['0'],0);
   CAMPO1.SetFocus;
   end;
end;

procedure TFrm_TProCa.CAMPO2Exit(Sender: TObject);
var
mlidos,mposi,mqtd: Integer;
achou: String;
mcampo1, mcampo2: String;
mtipoc: TFieldType;
mnomec: String;

begin
{
if CAMPO2.ItemIndex<0 then
   with CAMPO2 do ItemIndex:=Items.IndexOf(CAMPO2.Text);
CAMPO2.text:=CAMPO2.Items.Strings[CAMPO2.ItemIndex];
}
CB_COND_02_02.Items.Add('[Nulo/Branco]');
CB_COND_03_02.Items.Add('[Nulo/Branco]');

if CAMPO2.Text='[Nulo/Branco]' then
   begin
   mcondt2:='V'
   end
else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) then
   begin
   mcondt2:=DM2.Tb_ArqCATIPO.Value;
   if mcondt1<>mcondt2 then
      begin
      if mcondt1='N' then
         mcampo1:='Numerico'
      else if mcondt1='D' then
         mcampo1:='Data'
      else if mcondt1='H' then
         mcampo1:='Hora'
      else
         mcampo1:='String';
      if mcondt2='N' then
         mcampo2:='Numerico'
      else if mcondt2='D' then
         mcampo2:='Data'
      else if mcondt2='H' then
         mcampo2:='Hora'
      else
         mcampo2:='String';
      fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
      CAMPO2.SetFocus;
      exit;
      end;
   end
else
   begin
   mcondt2:='V';
   if mcondt1='N' then
      begin
      mqtd:=length(Trim(CAMPO2.Text));
      for mposi:=1 to mqtd do
         begin
         if not (campo2.Text[mposi] in ['0'..'9']) and not (CAMPO2.Text[mposi]=DecimalSeparator) then
            begin
            fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
            CAMPO2.SetFocus;
            exit;
            end;
         end;
      end
   else if mcondt1='D' then
      begin
      Try
        campo2.Text:=FormatDateTime(fdt2, StrToDate(CAMPO2.Text))
      Except
        fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' as barras!',0,['0'],0);
        CAMPO2.SetFocus;
        exit;
        end;
      end;
   end;
end;

procedure TFrm_TProCa.MENSAGEMExit(Sender: TObject);
begin
if Trim(MENSAGEM.Text)<>'' then
   begin
   TAMANHO.text:=IntToStr(Length(MENSAGEM.Text));
   FORMATO.ItemIndex:=-1;
   RGALINHAR.ItemIndex:=0;
   end;
end;

procedure TFrm_TProCa.SISTEMAExit(Sender: TObject);
begin
if SISTEMA.ItemIndex<0 then
   with SISTEMA do ItemIndex:=Items.IndexOf(SISTEMA.Text);
SISTEMA.text:=SISTEMA.Items.Strings[SISTEMA.ItemIndex];

if SISTEMA.ItemIndex=0 then
   begin
   TAMANHO.Text:='8';
   FORMATO.ItemIndex:=3;
   RGALINHAR.ItemIndex:=0;
   end
else if SISTEMA.ItemIndex=1 then
   begin
   TAMANHO.Text:='10';
   FORMATO.ItemIndex:=6;
   RGALINHAR.Itemindex:=0;
   end
else
   begin
   TAMANHO.Text:='4';
   FORMATO.ItemIndex:=8;
   RGALINHAR.Itemindex:=0;
   end;

end;

procedure TFrm_TProCa.Src_TDVDataChange(Sender: TObject; Field: TField);
var
mposi, mqtd: Integer;
mtipoc: TFieldType;
mnomec,mnomec2: String;
begin
if mtipo=8 then
   begin
   CAMPO2.Text  :='';
   CAMPO1.Text  :='';
   CAMPO.Text   :='';
   CONDICAO.Text:='';

   CB_COND_02_01.Text  :='';
   CB_COND_02_02.Text  :='';
   CB_COND_02_OP.Text  :='';
   CB_COND_CONT.Text   :='';

   CB_COND_03_01.Text  :='';
   CB_COND_03_02.Text  :='';
   CB_COND_03_OP.Text  :='';
   CB_COND_CONT03.Text   :='';


   if DM1.Tb_TDVTTIPO.Value=4 then
      begin
      Qr_TDVOP.Close;
      Qr_TDVOP.SQL.Clear;
      Qr_TDVOP.SQL.Add('Select * from CTDVOP where '
                      +iif(DM1.Qr_TID.Locate('TINOME',mpesq,[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                      +' TODOC='+chr(39)+mreltab+chr(39)
                      +' and TONOME='+chr(39)+Frm_TPro.NOMREL.Caption+chr(39)
                      +' and TOCODIGO=0'+DM1.Tb_TDVTCAMPO.AsString);
      Qr_TDVOP.Open;

      OPERADOR.Text      :='Operador.: '+Formatfloat('000',Qr_TDVOPTOCODIGO.Value);
      if DM1.Tb_TDVTZERVAR.Value=1 then
         ZERAR.Checked:=True
      else
         ZERAR.Checked:=False;
      GroupBox1.Caption:='Formula do Calculo do Operador Selecionado:';
      Memo1.Text:=Qr_TDVOPmoper.Value;
      end
   else if DM1.Tb_TDVTTIPO.Value=7 then
      begin
      Memo1.Text:='';
      GroupBox1.Caption:='Campos Concatenados:';
      DM2.Tb_JC.Locate('JCNOMCAM',DM1.Tb_TDVTCAMPO.Value,[]);
      if Trim(DM2.Tb_JCJCCAMPO01.Value)<>'' then
         begin
         mnomec:='';
         if DM2.Tb_JCJCESPACO01.Value>0 then
            Memo1.Text:=Memo1.Text+insere(' ',' ',DM2.Tb_JCJCESPACO01.AsInteger);
         if DM2.Tb_JCJCTCAMPO1.Value=0  then
            mnomec:='Campo da Tabela'
         else if DM2.Tb_JCJCTCAMPO1.Value=1 then
            mnomec:='Mensagem'
         else if DM2.Tb_JCJCTCAMPO1.Value=2 then
            mnomec:='Dados da Empresa';
         if DM2.Tb_JCJCBRANCOS01.Value=1 then
            mnomec:=TrimLeft(mnomec)
         else if DM2.Tb_JCJCBRANCOS01.Value=2 then
            mnomec:=TrimRight(mnomec)
         else if DM2.Tb_JCJCBRANCOS01.Value=3 then
            mnomec:=Trim(mnomec);
         if (DM2.Tb_JCJCTAMMAX01.Value>0) and (length(mnomec)>DM2.Tb_JCJCTAMMAX01.Value) then
            mnomec:=copy(mnomec,1,DM2.Tb_JCJCTAMMAX01.AsInteger);
         Memo1.Text:=Memo1.Text+mnomec;
         end;

      if Trim(DM2.Tb_JCJCCAMPO02.Value)<>'' then
         begin
         mnomec:='';
         if DM2.Tb_JCJCESPACO02.Value>0 then
            Memo1.Text:=Memo1.Text+insere(' ',' ',DM2.Tb_JCJCESPACO02.AsInteger);
         if DM2.Tb_JCJCTCAMPO2.Value=0  then
            mnomec:='Campo da Tabela'
         else if DM2.Tb_JCJCTCAMPO2.Value=1 then
            mnomec:='Mensagem'
         else if DM2.Tb_JCJCTCAMPO2.Value=2 then
            mnomec:='Dados da Empresa';
         if DM2.Tb_JCJCBRANCOS02.Value=1 then
            mnomec:=TrimLeft(mnomec)
         else if DM2.Tb_JCJCBRANCOS02.Value=2 then
            mnomec:=TrimRight(mnomec)
         else if DM2.Tb_JCJCBRANCOS02.Value=3 then
            mnomec:=Trim(mnomec);
         if (DM2.Tb_JCJCTAMMAX02.Value>0) and (length(mnomec)>DM2.Tb_JCJCTAMMAX02.Value) then
            mnomec:=copy(mnomec,1,DM2.Tb_JCJCTAMMAX02.AsInteger);
         Memo1.Text:=Memo1.Text+mnomec;
         end;

      if Trim(DM2.Tb_JCJCCAMPO03.Value)<>'' then
         begin
         mnomec:='';
         if DM2.Tb_JCJCESPACO03.Value>0 then
            Memo1.Text:=Memo1.Text+insere(' ',' ',DM2.Tb_JCJCESPACO03.AsInteger);
         if DM2.Tb_JCJCTCAMPO3.Value=0  then
            mnomec:='Campo da Tabela'
         else if DM2.Tb_JCJCTCAMPO3.Value=1 then
            mnomec:='Mensagem'
         else if DM2.Tb_JCJCTCAMPO3.Value=2 then
            mnomec:='Dados da Empresa';
         if DM2.Tb_JCJCBRANCOS03.Value=1 then
            mnomec:=TrimLeft(mnomec)
         else if DM2.Tb_JCJCBRANCOS03.Value=2 then
            mnomec:=TrimRight(mnomec)
         else if DM2.Tb_JCJCBRANCOS03.Value=3 then
            mnomec:=Trim(mnomec);
         if (DM2.Tb_JCJCTAMMAX03.Value>0) and (length(mnomec)>DM2.Tb_JCJCTAMMAX03.Value) then
            mnomec:=copy(mnomec,1,DM2.Tb_JCJCTAMMAX03.AsInteger);
         Memo1.Text:=Memo1.Text+mnomec;
         end;
      if Trim(DM2.Tb_JCJCCAMPO04.Value)<>'' then
         begin
         mnomec:='';
         if DM2.Tb_JCJCESPACO04.Value>0 then
            Memo1.Text:=Memo1.Text+insere(' ',' ',DM2.Tb_JCJCESPACO04.AsInteger);
         if DM2.Tb_JCJCTCAMPO4.Value=0  then
            mnomec:='Campo da Tabela'
         else if DM2.Tb_JCJCTCAMPO4.Value=1 then
            mnomec:='Mensagem'
         else if DM2.Tb_JCJCTCAMPO4.Value=2 then
            mnomec:='Dados da Empresa';
         if DM2.Tb_JCJCBRANCOS04.Value=1 then
            mnomec:=TrimLeft(mnomec)
         else if DM2.Tb_JCJCBRANCOS04.Value=2 then
            mnomec:=TrimRight(mnomec)
         else if DM2.Tb_JCJCBRANCOS04.Value=3 then
            mnomec:=Trim(mnomec);
         if (DM2.Tb_JCJCTAMMAX04.Value>0) and (length(mnomec)>DM2.Tb_JCJCTAMMAX04.Value) then
            mnomec:=copy(mnomec,1,DM2.Tb_JCJCTAMMAX04.AsInteger);
         Memo1.Text:=Memo1.Text+mnomec;
         end;
      end;
   LINHA.Text           :=DM1.Tb_TDVTLIN.AsString;
   COLUNA.Text          :=DM1.Tb_TDVTCOL.AsString;
   RGFONTE.ItemIndex    :=DM1.Tb_TDVTFONTE.AsInteger;
   RGTREG.ItemIndex     :=DM1.Tb_TDVTTIPO.Asinteger;
   RGALINHAR.ItemIndex  :=DM1.Tb_TDVTALINHAR.Asinteger;
   RG_CORTARDE.ItemIndex:=DM1.Tb_TDVTCCORTARDE.Asinteger;

   FORMATO.Text        :=DM1.Tb_TDVTFORMATO.Value;
   CB_BARRAS.Checked   :=DM1.Tb_TDVTCBARRAS.Value=1;
   CB_INFADIC.ItemIndex:=DM1.Tb_TDVTCINFADIC.AsInteger;
   RG_EXTENSO.ItemIndex:=DM1.Tb_TDVTCEXTENSO.AsInteger;
   EXT_QTDL.Text       :=DM1.Tb_TDVTCEXT_QTDL.AsString;
   EXT_1IC.Text        :=DM1.Tb_TDVTCEXT_1IC.AsString;
   EXT_1LT.Text        :=DM1.Tb_TDVTCEXT_1LT.AsString;
   EXT_1LP.Text        :=DM1.Tb_TDVTCEXT_1LP.AsString;
   EXT_2IC.Text        :=DM1.Tb_TDVTCEXT_2IC.AsString;
   EXT_2LT.Text        :=DM1.Tb_TDVTCEXT_2LT.AsString;
   EXT_2LP.Text        :=DM1.Tb_TDVTCEXT_2LP.AsString;
   EXT_3IC.Text        :=DM1.Tb_TDVTCEXT_3IC.AsString;
   EXT_3LT.Text        :=DM1.Tb_TDVTCEXT_3LT.AsString;
   EXT_3LP.Text        :=DM1.Tb_TDVTCEXT_3LP.AsString;

   if RGTREG.ItemIndex=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCAMPO.Value,[]) then
         begin
         with CAMPO do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
         CAMPO.text:=CAMPO.items[CAMPO.itemIndex];
         end;

{

         campo
          CB_TIPO2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];

         with CB_TIPO2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];


      mqtd:=0;
      While True do
         begin
lindomar
         if Trim(CAMPO.Items[mqtd])='' then break;
         if CAMPO.Items[mqtd]=DM1.Tb_TDVTDCAMPO.Value then
            Begin
            CAMPO.itemindex:=mqtd;
            break;
            end;
         mqtd:=mqtd+1;
         end;
}
      end
   else if RGTREG.ItemIndex=1 then
      begin
      CAMPO.ItemIndex:=-1;
      MENSAGEm.Text:=DM1.Tb_TDVTDCAMPO.Value;
      end
   else if RGTREG.ItemIndex=2 Then
      begin
      CAMPO.ItemIndex:=-1;
      SISTEMA.Text:=DM1.Tb_TDVTCAMPO.Value;
      end
   else if RGTREG.ItemIndex=3 then
      begin
      CARACTER.Text:=DM1.Tb_TDVTDCAMPO.Value;
      end
   else if RGTREG.ItemIndex=5 then
      CAMPO_EMP.Text:=DM1.Tb_TDVTDCAMPO.Value
   else if RGTREG.ItemIndex=7 then
      CONCATENADO.Text:=DM1.Tb_TDVTDCAMPO.Value;

   if DM1.Tb_TDVTTIPOC.Value='C' then
      RGTIPOC.ItemIndex:=0
   else if DM1.Tb_TDVTTipoc.Value='N' then
      RGTIPOC.ItemIndex:=1
   else if DM1.Tb_TDVTTIPOC.Value='D' then
      RGTIPOC.ItemIndex:=2
   else
      RGTIPOC.ItemIndex:=3;
   TAMANHO.Text:=DM1.Tb_TDVTTAM.AsString;
   CAMPO2.Text:=DM1.Tb_TDVTCOND02.Value;
   CAMPO1.Text:=DM1.Tb_TDVTCOND01.Value;
   CB_COND_02_01.Text:=DM1.Tb_TDVTCOND_02_01.Value;
   CB_COND_03_01.Text:=DM1.Tb_TDVTCOND_03_01.Value;


   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND02.Value,[]) then
      begin
      with CAMPO2 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CAMPO2.text:=CAMPO2.items[CAMPO2.itemIndex];
      end;

   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND01.Value,[]) then
      begin
      with CAMPO1 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CAMPO1.text:=CAMPO1.items[CAMPO1.itemIndex];
      end;

//      with CAMPO1 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);

   CONDICAO.Text:='';

   if Trim(DM1.Tb_TDVTCONDOP.Value)='=' then
      CONDICAO.Text:='= Igual'
   else if Trim(DM1.Tb_TDVTCONDOP.Value)='<' then
      CONDICAO.Text:='< Menor'
   else if Trim(DM1.Tb_TDVTCONDOP.Value)='>' then
      CONDICAO.Text:='> Maior'
   else if Trim(DM1.Tb_TDVTCONDOP.Value)='>=' then
      CONDICAO.Text:='>= Maior ou Igual'
   else if Trim(DM1.Tb_TDVTCONDOP.Value)='<=' then
      CONDICAO.Text:='<= Menor ou Igual'
   else if Trim(DM1.Tb_TDVTCONDOP.Value)='<>' then
      CONDICAO.Text:='<> Diferente';

// continuaçao da condicao

   CB_COND_CONT.Text :=DM1.Tb_TDVTCOND_CONT.Value;
   CB_COND_02_02.Text:=DM1.Tb_TDVTCOND_02_02.Value;
   CB_COND_02_01.Text:=DM1.Tb_TDVTCOND_02_01.Value;
   CB_COND_02_OP.Text:='';

   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND_02_02.Value,[]) then
      begin
      with CB_COND_02_02 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CB_COND_02_02.text:=CB_COND_02_02.items[CB_COND_02_02.itemIndex];
      end;

   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND_02_01.Value,[]) then
      begin
      with CB_COND_02_01 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CB_COND_02_01.text:=CB_COND_02_01.items[CB_COND_02_01.itemIndex];
      end;

   if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='=' then
      CB_COND_02_OP.Text:='= Igual'
   else if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='<' then
      CB_COND_02_OP.Text:='< Menor'
   else if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='>' then
      CB_COND_02_OP.Text:='> Maior'
   else if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='>=' then
      CB_COND_02_OP.Text:='>= Maior ou Igual'
   else if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='<=' then
      CB_COND_02_OP.Text:='<= Menor ou Igual'
   else if Trim(DM1.Tb_TDVTCOND_02_OP.Value)='<>' then
      CB_COND_02_OP.Text:='<> Diferente';


   CB_COND_CONT03.Text :=DM1.Tb_TDVTCOND_CONT03.Value;
   CB_COND_03_02.Text:=DM1.Tb_TDVTCOND_03_02.Value;
   CB_COND_03_01.Text:=DM1.Tb_TDVTCOND_03_01.Value;
   CB_COND_03_OP.Text:='';

   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND_03_02.Value,[]) then
      begin
      with CB_COND_03_02 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CB_COND_03_02.text:=CB_COND_03_02.items[CB_COND_03_02.itemIndex];
      end;

   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCOND_03_01.Value,[]) then
      begin
      with CB_COND_03_01 do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
      CB_COND_03_01.text:=CB_COND_03_01.items[CB_COND_03_01.itemIndex];
      end;

   if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='=' then
      CB_COND_03_OP.Text:='= Igual'
   else if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='<' then
      CB_COND_03_OP.Text:='< Menor'
   else if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='>' then
      CB_COND_03_OP.Text:='> Maior'
   else if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='>=' then
      CB_COND_03_OP.Text:='>= Maior ou Igual'
   else if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='<=' then
      CB_COND_03_OP.Text:='<= Menor ou Igual'
   else if Trim(DM1.Tb_TDVTCOND_03_OP.Value)='<>' then
      CB_COND_03_OP.Text:='<> Diferente';

   end;


if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=True;
   OPERADOR.Visible   :=False;
   CONCATENADO.Visible:=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   RGTIPOC.Enabled    :=False;
   CB_BARRAS.Visible  :=True;
   RG_EXTENSO.Visible :=True;
   CAMPO_EMP.Visible  :=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible   :=True;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CONCATENADO.Visible:=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO.Visible      :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=True;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   end
else if RGTREG.ItemIndex=3 then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=True;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   end
else if RGTREG.ItemIndex=4 then
   begin
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=True;
   ZERAR.Visible      :=True;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   end
else if RGTREG.ItemIndex=5 then
   begin
   lbl_concatenado.Caption:='Dados Empresa: ';
   CONCATENADO.Visible:=False;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=True;
   end
else if RGTREG.ItemIndex=7 then
   begin
   lbl_concatenado.Caption:='Concatenado: ';
   CONCATENADO.Visible:=true;
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=True;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   end;

end;

procedure TFrm_TProCa.PRIMEIROClick(Sender: TObject);
begin
if not DM1.Tb_TDV.Bof then
   DM1.Tb_TDV.First;
fTProca01va(0);

end;

function fTproca01va(mtipo: Integer): Boolean;
begin
if mtipo=1 then
   begin
   Frm_TProCa.PRIMEIRO.Enabled:=False;
   Frm_TProCa.ULTIMO.Enabled  :=False;
   Frm_TProCa.PROXIMO.Enabled :=false;
   Frm_TProCa.ANTERIOR.Enabled:=False;
   end
else
   begin
   Frm_TProCa.PRIMEIRO.Enabled:=True;
   Frm_TProCa.ULTIMO.Enabled  :=True;
   Frm_TProCa.PROXIMO.Enabled :=True;
   Frm_TProCa.ANTERIOR.Enabled:=True;
   if DM1.Tb_TDV.Bof then
      begin
      Frm_TProCa.PRIMEIRO.Enabled:=False;
      Frm_TProCa.ANTERIOR.Enabled:=False;
      end;
   if DM1.Tb_TDV.Eof then
      begin
      Frm_TProCa.ULTIMO.Enabled:=False;
      Frm_TProCa.PROXIMO.Enabled:=False;
      end;
   end;
result:=True;
end;

procedure TFrm_TProCa.ULTIMOClick(Sender: TObject);
begin
if not DM1.Tb_TDV.Eof then
   dm1.Tb_TDV.last;
ftproCa01va(0);

end;

procedure TFrm_TProCa.PROXIMOClick(Sender: TObject);
begin
if not dm1.Tb_TDV.Eof then
   DM1.Tb_TDV.Next;
fTProCa01va(0);

end;

procedure TFrm_TProCa.ANTERIORClick(Sender: TObject);
begin
if not DM1.Tb_TDV.Bof then
   DM1.Tb_TDV.Prior;
ftproca01va(0);

end;

procedure TFrm_TProCa.INCLUIRClick(Sender: TObject);
begin
CB_INFADIC.ItemIndex:=0;
CB_BARRAS.Checked   :=False;
RG_EXTENSO.ItemIndex:=0;
EXT_1IC.Text        :='';
EXT_1LP.Text        :='';
EXT_1LT.Text        :='';
EXT_2IC.Text        :='';
EXT_2LP.Text        :='';
EXT_2LT.Text        :='';
EXT_3IC.Text        :='';
EXT_3LP.Text        :='';
EXT_3LT.Text        :='';
COLUNA.Text         :='';
LINHA.Text         :='';
COLUNA.Text        :='';
RGFONTE.ItemIndex  :=DM1.Tb_TDVTFONTE.Asinteger;
RGTREG.ItemIndex   :=0;
RGALINHAR.ItemIndex:=0;
RG_CORTARDE.ItemIndex:=0;
FORMATO.Text       :='';
RGTREG.ItemIndex   :=0;
ZERAR.Checked      :=False;
OPERADOR.Text      :='';
CAMPO.Text   :='';
MENSAGEM.Text:='';
SISTEMA.Text :='';
CARACTER.Text:='';
RGTIPOC.ItemIndex:=0;
TAMANHO.Text:='';
CAMPO2.Text :='';
CAMPO1.Text :='';
CONDICAO.Text:='';

CB_COND_02_01.Text :='';
CB_COND_02_02.Text :='';
CB_COND_02_OP.Text :='';
CB_COND_CONT.Text  :='';

CB_COND_03_01.Text :='';
CB_COND_03_02.Text :='';
CB_COND_03_OP.Text :='';
CB_COND_CONT03.Text  :='';

panel1.Enabled:=True;
DBGrid1.Enabled:=False;
fTproca01va(1);
RGFONTE.ItemIndex  :=DM1.Tb_TDVCATCFPADRAO.Asinteger;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
INCLUIR.Enabled :=False;
SBNAplicar.Enabled:=false;

mtipo:=0;
LINHA.SetFocus;

end;

procedure TFrm_TProCa.ALTERARClick(Sender: TObject);
begin
if DM1.Tb_TDVTCODEMP.IsNull then
   begin
   fmensagem('Não há registro a ser alterado!',0,['0'],0);
   abort;
   end;
Panel1.Enabled:=True;
DBGrid1.Enabled:=False;
fTproCa01va(1);
LINHA.SetFocus;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
SBNAplicar.Enabled:=false;

mtipo:=1;
end;

procedure TFrm_TProCa.GRAVARClick(Sender: TObject);
var
mlidos,mqtd, mposi, mreg, mreg1: Integer;
achou, mcampo1, mcampo2, oper: String;
mtipoc: TFieldType;
mnomec,mnomec2: String;

begin
Panel3.SetFocus;
if (RGTREG.ItemIndex=3) and (Trim(TAMANHO.Text)='') then
   begin
   fmensagem('Favor digitar a quantidade de Vezes que o Caractere sera Repetido!',0,['0'],0);
   TAMANHO.SetFocus;
   exit;
   end;
if (RGTREG.ItemIndex=4) then
   begin
   Qr_TDVOP.Close;
   Qr_TDVOP.SQL.Clear;
   Qr_TDVOP.SQL.Add('Select * from CTDVOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME',mpesq,[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                   +' TODOC='+chr(39)+mreltab+chr(39)
                   +' and TONOME='+chr(39)+Frm_TPro.NOMREL.Caption+chr(39)
                   +' and TOCODIGO=0'+Trim(copy(OPERADOR.Text,12,3)));
   Qr_TDVOP.Open;

   if Qr_TDVOP.Eof then
      begin
      fmensagem('Favor digitar um operador Valido!',0,['0'],0);
      OPERADOR.SetFocus;
      exit;
      end;
   end;

if (RGTREG.ItemIndex=7) then
   begin
   if not DM2.Tb_JC.Locate('JCNOMCAM',CONCATENADO.Text,[]) then
      begin
      fmensagem('Favor Digitar o Campo Valido!',0,['0'],0);
      CONCATENADO.SetFocus;
      exit;
      end;
   end;


if StrtoInt('0'+Trim(LINHA.Text))<=0 then
   begin
   Fmensagem('Número de linha Invalido!',0,['0'],0);
   LINHA.SetFocus;
   exit;
   end;
if StrToInt('0'+Trim(COLUNA.Text))<=0 then
   begin
   Fmensagem('Numero de Coluna Invalido!',0,['0'],0);
   COLUNA.SetFocus;
   exit;
   end;
if RGTREG.ItemIndex=0 then
   begin
   if Trim(CAMPO.Text)=''then
      begin
      Fmensagem('Nome do Campo Invalido!',0,['0'],0);
      CAMPO.SetFocus;
      exit;
      end;
   end
else if RGTREG.ItemIndex=1 then
   begin
   if Trim(MENSAGEM.Text)='' Then
      begin
      fmensagem('Mensagem Invalida',0,['0'],0);
      MENSAGEM.SetFocus;
      abort;
      end;
   end
else if RGTREG.ItemIndex=2 then
   begin
   if Trim(SISTEMA.Text)='' then
      begin
      fmensagem('Campo do Sistema Invalido',0,['0'],0);
      SISTEMA.SetFocus;
      Abort;
      end;
   end
else if RGTREG.ItemIndex=3 then
   begin
   if Trim(CARACTER.Text)='' Then
      begin
      fmensagem('Caractere Invalido',0,['0'],0);
      CARACTER.SetFocus;
      Abort;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   if (Trim(CAMPO2.Text)='') or (Trim(CONDICAO.Text)='') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CAMPO1.SetFocus;
      exit;
      end;
   end
else
   begin
   if (Trim(CAMPO2.Text)<>'') or (Trim(CONDICAO.Text)<>'') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CAMPO1.SetFocus;
      exit;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   if (CAMPO1.Text<>'Especial(Grupo Anterior)') and
      (CAMPO1.Text<>'Codigo Prod Entrada Anterior') then
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) then
         mcondt1:=DM2.Tb_ArqCATIPO.Value
      else
         mcondt1:='';
      end
   else
      mcondt1:='N';
   if CAMPO2.Text='[Nulo/Branco]' then
      begin
      mcondt2:='V'
      end
   else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) then
      begin
      mcondt2:=DM2.Tb_ArqCATIPO.Value;
      if mcondt1<>mcondt2 then
         begin
         if mcondt1='N' then
            mcampo1:='Numerico'
         else if mcondt1='D' then
            mcampo1:='Data'
         else if mcondt1='H' then
            mcampo1:='Hora'
         else
            mcampo1:='String';
         if mcondt2='N' then
            mcampo2:='Numerico'
         else if mcondt2='D' then
            mcampo2:='Data'
         else if mcondt2='H' then
            mcampo2:='Hora'
         else
            mcampo2:='String';
         Fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
         CAMPO2.SetFocus;
         exit;
         end;
      end
   else
      begin
      mcondt2:='V';
      if mcondt1='N' then
         begin
         mqtd:=length(Trim(CAMPO2.Text));
         for mposi:=1 to mqtd do
            begin
            if not (campo2.Text[mposi] in ['0'..'9']) and not (CAMPO2.Text[mposi]=DecimalSeparator) then
               begin
               Fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
               CAMPO2.SetFocus;
               exit;
               end;
            end;
         end
      else if mcondt1='D' then
         begin
         Try
           campo2.Text:=FormatDateTime(fdt2, StrToDate(CAMPO2.Text))
         Except
           Fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' com as barras',0,['0'],0);
           CAMPO2.SetFocus;
           exit;
           end;
         end;
      end;
   end;
// condicao 2

if Trim(CB_COND_02_01.Text)<>'' then
   begin
   if (Trim(CB_COND_02_02.Text)='') or (Trim(CB_COND_02_OP.Text)='') or (Trim(CB_COND_CONT.Text)='') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CB_COND_02_01.SetFocus;
      exit;
      end;
   end
else
   begin
   if (Trim(CB_COND_02_02.Text)<>'') or (Trim(CB_COND_02_OP.Text)<>'') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CB_COND_02_01.SetFocus;
      exit;
      end;
   end;
if Trim(CB_COND_02_01.Text)<>'' then
   begin
   if (CB_COND_02_01.Text<>'Especial(Grupo Anterior)') and
      (CB_COND_02_01.Text<>'Codigo Prod Entrada Anterior') then
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_01.Text,[]) then
         mcond_02_t1:=DM2.Tb_ArqCATIPO.Value
      else
         mcond_02_t1:='';
      end
   else
      mcond_02_t1:='N';
   if CB_COND_02_02.Text='[Nulo/Branco]' then
       begin
       mcond_02_t2:='V'
       end
   else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_02.Text,[]) then
      begin
      mcond_02_t2:=DM2.Tb_ArqCATIPO.Value;
      if mcond_02_t1<>mcond_02_t2 then
         begin
         if mcond_02_t1='N' then
            mcampo1:='Numerico'
         else if mcond_02_t1='D' then
            mcampo1:='Data'
         else if mcond_02_t1='H' then
            mcampo1:='Hora'
         else
            mcampo1:='String';
         if mcondt2='N' then
            mcampo2:='Numerico'
         else if mcond_02_t2='D' then
            mcampo2:='Data'
         else if mcond_02_t2='H' then
            mcampo2:='Hora'
         else
            mcampo2:='String';
         Fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
         CB_COND_02_02.SetFocus;
         exit;
         end;
      end
   else
      begin
      mcond_02_t2:='V';
      if mcond_02_t1='N' then
         begin
         mqtd:=length(Trim(CB_COND_02_02.Text));
         for mposi:=1 to mqtd do
            begin
            if not (CB_COND_02_02.Text[mposi] in ['0'..'9']) and not (CB_COND_02_02.Text[mposi]=DecimalSeparator) then
               begin
               Fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
               CB_COND_02_02.SetFocus;
               exit;
               end;
            end;
         end
      else if mcond_02_t1='D' then
         begin
         Try
           CB_COND_02_02.Text:=FormatDateTime(fdt2, StrToDate(CB_COND_02_02.Text))
         Except
           Fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' com as barras',0,['0'],0);
           CB_COND_02_02.SetFocus;
           exit;
           end;
         end;
      end;
   end;


// termino condicao 2



// condicao 3

if Trim(CB_COND_03_01.Text)<>'' then
   begin
   if (Trim(CB_COND_03_02.Text)='') or (Trim(CB_COND_03_OP.Text)='') or (Trim(CB_COND_CONT03.Text)='') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CB_COND_03_01.SetFocus;
      exit;
      end;
   end
else
   begin
   if (Trim(CB_COND_03_02.Text)<>'') or (Trim(CB_COND_03_OP.Text)<>'') then
      begin
      Fmensagem('Condicao Invalida!',0,['0'],0);
      CB_COND_03_01.SetFocus;
      exit;
      end;
   end;
if Trim(CB_COND_03_01.Text)<>'' then
   begin
   if (CB_COND_03_01.Text<>'Especial(Grupo Anterior)') and
      (CB_COND_03_01.Text<>'Codigo Prod Entrada Anterior') then
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_01.Text,[]) then
         mcond_03_t1:=DM2.Tb_ArqCATIPO.Value
      else
         mcond_03_t1:='';
      end
   else
      mcond_03_t1:='N';

   if CB_COND_03_02.Text='[Nulo/Branco]' then
      begin
      mcond_03_t2:='V'
      end
   else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_02.Text,[]) then
      begin
      mcond_03_t2:=DM2.Tb_ArqCATIPO.Value;
      if mcond_03_t1<>mcond_03_t2 then
         begin
         if mcond_03_t1='N' then
            mcampo1:='Numerico'
         else if mcond_03_t1='D' then
            mcampo1:='Data'
         else if mcond_03_t1='H' then
            mcampo1:='Hora'
         else
            mcampo1:='String';
         if mcondt2='N' then
            mcampo2:='Numerico'
         else if mcond_03_t2='D' then
            mcampo2:='Data'
         else if mcond_03_t2='H' then
            mcampo2:='Hora'
         else
            mcampo2:='String';
         Fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
         CB_COND_03_02.SetFocus;
         exit;
         end;
      end
   else
      begin
      mcond_03_t2:='V';
      if mcond_03_t1='N' then
         begin
         mqtd:=length(Trim(CB_COND_03_02.Text));
         for mposi:=1 to mqtd do
            begin
            if not (CB_COND_03_02.Text[mposi] in ['0'..'9']) and not (CB_COND_03_02.Text[mposi]=DecimalSeparator) then
               begin
               Fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
               CB_COND_03_02.SetFocus;
               exit;
               end;
            end;
         end
      else if mcond_03_t1='D' then
         begin
         Try
           CB_COND_03_02.Text:=FormatDateTime(fdt2, StrToDate(CB_COND_03_02.Text))
         Except
           Fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' com as barras',0,['0'],0);
           CB_COND_03_02.SetFocus;
           exit;
           end;
         end;
      end;
   end;


// termino condicao 3

if RGTIPOC.ItemIndex<>1 then
   begin
   CB_BARRAS.Checked   :=False;
   RG_EXTENSO.ItemIndex:=0;
   EXT_QTDL.Text       :='';
   EXT_1IC.Text        :='';
   EXT_1LT.Text        :='';
   EXT_1LP.Text        :='';
   EXT_2IC.Text        :='';
   EXT_2LT.Text        :='';
   EXT_2LP.Text        :='';
   EXT_3IC.Text        :='';
   EXT_3LT.Text        :='';
   EXT_3LP.Text        :='';
   end
else
   begin
   if (CB_BARRAS.Checked) and (RG_EXTENSO.ItemIndex>0) then
      begin
      Fmensagem('O número não pode ser Barras e Extenso ao mesmo Tempo',0,['0'],0);
      CB_BARRAS.SetFocus;
      exit;
      end
   else if CB_BARRAS.Checked then
      begin
      RG_EXTENSO.ItemIndex:=0;
      EXT_QTDL.Text       :='';
      EXT_1IC.Text        :='';
      EXT_1LT.Text        :='';
      EXT_1LP.Text        :='';
      EXT_2IC.Text        :='';
      EXT_2LT.Text        :='';
      EXT_2LP.Text        :='';
      EXT_3IC.Text        :='';
      EXT_3LT.Text        :='';
      EXT_3LP.Text        :='';
      end
   else if RG_EXTENSO.ItemIndex=0 then
      begin
      EXT_QTDL.Text       :='';
      EXT_1IC.Text        :='';
      EXT_1LT.Text        :='';
      EXT_1LP.Text        :='';
      EXT_2IC.Text        :='';
      EXT_2LT.Text        :='';
      EXT_2LP.Text        :='';
      EXT_3IC.Text        :='';
      EXT_3LT.Text        :='';
      EXT_3LP.Text        :='';
      end
   else if RG_EXTENSO.ItemIndex>0 then
      begin
      if ValFloat(EXT_QTDL.Text)=0 then
         begin
         Fmensagem('Sobre o Extenso o campo dividir em, tem que ser maior que zero',0,['0'],0);
         RG_EXTENSO.SetFocus;
         exit;
         end
      else if valfloat(EXT_QTDL.Text)=1 then
         begin
         if ValFloat(EXT_1IC.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'primeira linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_1LT.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'primeira linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_1LP.Text)<0 then
            begin
            Fmensagem('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'primeira linha tem que ser igual ou maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else
            begin
            EXT_2IC.Text:='';
            EXT_2LT.Text:='';
            EXT_2LP.Text:='';
            EXT_3IC.Text:='';
            EXT_3LT.Text:='';
            EXT_3LP.Text:='';
            end;
         end
      else if valfloat(EXT_QTDL.Text)=2 then
         begin
         if ValFloat(EXT_2IC.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'segunda linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_2LT.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'segunda linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_2LP.Text)<0 then
            begin
            Fmensagem('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'segunda linha tem que ser igual ou maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else
            begin
            EXT_3IC.Text:='';
            EXT_3LT.Text:='';
            EXT_3LP.Text:='';
            end;
         end
      else if valfloat(EXT_QTDL.Text)=3 then
         begin
         if ValFloat(EXT_3IC.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'terceira linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_3LT.Text)<1 then
            begin
            Fmensagem('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'terceira linha tem que ser maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_3LP.Text)<0 then
            begin
            Fmensagem('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'terceira linha tem que ser igual ou maior que zero',0,['0'],0);
            RG_EXTENSO.SetFocus;
            exit;
            end;
         end;
      end;

   end;


if mtipo=0 then
   DM1.Tb_TDV.Append
else
   DM1.Tb_TDV.Edit;
DM1.Tb_TDVTCODEMP.Value:=codemp;
DM1.Tb_TDVTDOC.Value   :=mreltab;    // Nome do documento CADPRO-Produto CADCLI-Cliente ...
DM1.Tb_TDVTNOME.Value  :=Frm_TPro.NOMREL.Caption;
DM1.Tb_TDVTLOCAL.Value :=mrelat;                  // Detalhes do Formulario Frm_Sdet
DM1.Tb_TDVTCOL.Value   :=StrToInt('0'+COLUNA.Text);
DM1.Tb_TDVTLIN.Value   :=StrToInt('0'+LINHA.Text);
DM1.Tb_TDVTFONTE.Value :=RGFONTE.ItemIndex;
DM1.Tb_TDVTTIPO.Value  :=RGTREG.ItemIndex;
DM1.Tb_TDVTFORMATO.Value :=FORMATO.Text;
DM1.Tb_TDVTALINHAR.Value:=RGALINHAR.ItemIndex;
DM1.Tb_TDVTCCORTARDE.Value:=RG_CORTARDE.ItemIndex;
DM1.Tb_TDVTFORMATO.Value  :=FORMATO.Text;
DM1.Tb_TDVTALINHAR.Value  :=RGALINHAR.ItemIndex;
DM1.Tb_TDVTCBARRAS.Value  :=iif(CB_BARRAS.Checked,1,0);
DM1.Tb_TDVTCINFADIC.Value :=CB_INFADIC.ItemIndex;
DM1.Tb_TDVTCEXTENSO.Value :=RG_EXTENSO.ItemIndex;
DM1.Tb_TDVTCEXT_QTDL.Value:=ValFloat(EXT_QTDL.Text);
DM1.Tb_TDVTCEXT_1IC.Value :=Valfloat(EXT_1IC.Text);
DM1.Tb_TDVTCEXT_1LP.Value :=ValFloat(EXT_1LP.Text);
DM1.Tb_TDVTCEXT_1LT.Value :=ValFloat(EXT_1LT.Text);
DM1.Tb_TDVTCEXT_2IC.Value :=Valfloat(EXT_2IC.Text);
DM1.Tb_TDVTCEXT_2LP.Value :=ValFloat(EXT_2LP.Text);
DM1.Tb_TDVTCEXT_2LT.Value :=ValFloat(EXT_2LT.Text);
DM1.Tb_TDVTCEXT_3IC.Value :=Valfloat(EXT_3IC.Text);
DM1.Tb_TDVTCEXT_3LP.Value :=ValFloat(EXT_3LP.Text);
DM1.Tb_TDVTCEXT_3LT.Value :=ValFloat(EXT_3LT.Text);
if ZERAR.Checked then
   DM1.Tb_TDVTZERVAR.Value:=1
else
   DM1.Tb_TDVTZERVAR.Value:=0;

DM1.Tb_TDVTCONDT1.Value :=mcondt1;
DM1.Tb_TDVTCONDT2.Value :=mcondt2;
if CAMPO1.Text='Especial(Grupo Anterior)' then
   DM1.Tb_TDVTCOND01.Value :='Especial(Grupo Anterior)'
else if CAMPO1.Text='Codigo Prod Entrada Anterior' then
   DM1.Tb_TDVTCOND01.Value :='Codigo Prod Entrada Anterior'
else if Trim(CAMPO1.Text)='' then
   DM1.Tb_TDVTCOND01.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) Then
      DM1.Tb_TDVTCOND01.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND01.Value:='';
if Trim(CAMPO2.Text)='' then
   DM1.Tb_TDVTCOND02.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) Then
      DM1.Tb_TDVTCOND02.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND02.Value:=CAMPO2.Text;
if Trim(CONDICAO.Text)<>'' then
   begin
   mposi:=1;
   while true do
      begin
      if CONDICAO.Text[mposi]=' ' then
         begin
         DM1.Tb_TDVTCONDOP.Value:=copy(CONDICAO.Text,1,mposi-1);
         break;
         end;
      mposi:=mposi+1;
      end;
   end;
// inicio condiçoes 02
DM1.Tb_TDVTCOND_CONT.Value  :=CB_COND_CONT.Text;
DM1.Tb_TDVTCOND_02_T1.Value :=mcond_02_t1;
DM1.Tb_TDVTCOND_02_T2.Value :=mcond_02_t2;
if CB_COND_02_01.Text='Especial(Grupo Anterior)' then
   DM1.Tb_TDVTCOND_02_01.Value :='Especial(Grupo Anterior)'
else if CB_COND_02_01.Text='Codigo Prod Entrada Anterior' then
   DM1.Tb_TDVTCOND_02_01.Value :='Codigo Prod Entrada Anterior'
else if Trim(CB_COND_02_01.Text)='' then
   DM1.Tb_TDVTCOND_02_01.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_01.Text,[]) Then
      DM1.Tb_TDVTCOND_02_01.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND_02_01.Value:='';
if Trim(CB_COND_02_02.Text)='' then
   DM1.Tb_TDVTCOND_02_02.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_02.Text,[]) Then
      DM1.Tb_TDVTCOND_02_02.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND_02_02.Value:=CB_COND_02_02.Text;
if Trim(CB_COND_02_OP.Text)<>'' then
   begin
   mposi:=1;
   while true do
      begin
      if CB_COND_02_OP.Text[mposi]=' ' then
         begin
         DM1.Tb_TDVTCOND_02_OP.Value:=copy(CB_COND_02_OP.Text,1,mposi-1);
         break;
         end;
      mposi:=mposi+1;
      end;
   end;

// termino condicoes 02


// inicio condiçoes 03
DM1.Tb_TDVTCOND_CONT03.Value  :=CB_COND_CONT03.Text;
DM1.Tb_TDVTCOND_03_T1.Value :=mcond_03_t1;
DM1.Tb_TDVTCOND_03_T2.Value :=mcond_03_t2;
if CB_COND_03_01.Text='Especial(Grupo Anterior)' then
   DM1.Tb_TDVTCOND_03_01.Value :='Especial(Grupo Anterior)'
else if CB_COND_03_01.Text='Codigo Prod Entrada Anterior' then
   DM1.Tb_TDVTCOND_03_01.Value :='Codigo Prod Entrada Anterior'
else if Trim(CB_COND_03_01.Text)='' then
   DM1.Tb_TDVTCOND_03_01.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_01.Text,[]) Then
      DM1.Tb_TDVTCOND_03_01.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND_03_01.Value:='';
if Trim(CB_COND_03_02.Text)='' then
   DM1.Tb_TDVTCOND_03_02.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_02.Text,[]) Then
      DM1.Tb_TDVTCOND_03_02.Value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCOND_03_02.Value:=CB_COND_03_02.Text;
if Trim(CB_COND_03_OP.Text)<>'' then
   begin
   mposi:=1;
   while true do
      begin
      if CB_COND_03_OP.Text[mposi]=' ' then
         begin
         DM1.Tb_TDVTCOND_03_OP.Value:=copy(CB_COND_03_OP.Text,1,mposi-1);
         break;
         end;
      mposi:=mposi+1;
      end;
   end;

// termino condicoes 03

if RGTREG.ItemIndex=0 then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO.Text,[]) then
      DM1.Tb_TDVTCAMPO.value:=DM2.Tb_ArqCANOMCAM.Value
   else
      DM1.Tb_TDVTCAMPO.Value:=CAMPO.Text;
   DM1.Tb_TDVTDCAMPO.Value:=CAMPO.Text;
   end
else if RGTREG.ItemIndex=1 then
   begin
   DM1.Tb_TDVTCAMPO.Value  :=MENSAGEM.Text;
   DM1.Tb_TDVTDCAMPO.Value :=MENSAGEM.Text;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   DM1.Tb_TDVTCAMPO.Value  :=SISTEMA.Text;
   DM1.Tb_TDVTDCAMPO.Value :=SISTEMA.Text;
   end
else if RGTREG.ItemIndex=3 then
   begin
   DM1.Tb_TDVTCAMPO.Value :=CARACTER.Text;
   DM1.Tb_TDVTDCAMPO.Value:=CARACTER.Text;
   end
else if RGTREG.ItemIndex=4 then
   begin
   DM1.Tb_TDVTCAMPO.Value:=copy(OPERADOR.Text,12,3);
   DM1.Tb_TDVTDCAMPO.Value:=OPERADOR.Text;
   end
else if RGTREG.ItemIndex=5 then
   begin
   for mposi:=0 to DM1.Tb_Emp.FieldCount-1 do
      begin
      if CAMPO_EMP.Text=DM1.Tb_Emp.Fields[mposi].DisplayName then
         begin
         DM1.Tb_TDVTDCAMPO.Value:=CAMPO_EMP.Text;
         DM1.Tb_TDVTCAMPO.Value :=DM1.Tb_Emp.Fields[mposi].FieldName;
         break;
         end;
      end;
   end
else if RGTREG.ItemIndex=7 then
   begin
   DM1.Tb_TDVTCAMPO.Value :=CONCATENADO.Text;
   DM1.Tb_TDVTDCAMPO.Value:=CONCATENADO.Text;
   end;


if RGTIPOC.ItemIndex=0 then
   DM1.Tb_TDVTTIPOC.Value:='C'
else if RGTIPOc.ItemIndex=1 then
   DM1.Tb_TDVTTIPOC.Value:='N'
else if RGTIPOC.ItemIndex=2 then
   DM1.Tb_TDVTTIPOC.Value:='D'
else
   DM1.Tb_TDVTTIPOC.Value:='H';
DM1.Tb_TDVTTAM.Value:=StrToInt('0'+TAMANHO.Text);
DM1.Tb_TDV.Post;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;
panel1.Enabled:=False;
dbgrid1.Enabled:=True;
mtipo:=8;
end;

procedure TFrm_TProCa.EXCLUIRClick(Sender: TObject);
begin
if DM1.Tb_TDVTCODEMP.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   abort;
   end;
if fmensagem('Quer Realmente Excluir o Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_TDV.Delete;
   INCLUIR.Enabled:=True;
   DBGrid1.Enabled:=true;
   ftproca01va(0);
   ALTERAR.Enabled:=True;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=True;
   CANCELAR.Enabled:=True;
   panel1.Enabled:=False;
   end;

mtipo:=8;

end;

procedure TFrm_TProCa.CANCELARClick(Sender: TObject);
begin
panel3.SetFocus;
DM1.Tb_TDV.Cancel;
fTproCa01va(0);
DBGrid1.Enabled:=True;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=false;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;
SBNAplicar.Enabled:=true;

panel1.Enabled:=False;
mtipo:=8;
end;

procedure TFrm_TProCa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
fTproCa01va(0);
end;

procedure TFrm_TProCa.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TProCa.Qr_TDVOPCalcFields(DataSet: TDataSet);
var
mlidos, mqtd: Integer;
begin
Qr_TDVOPdescricao.Value:='Operador.: '+Qr_TDVOPTOCODIGO.AsString;
mlidos:=0; mqtd:=0;
Qr_TDVOPcampo0.Value:=Qr_TDVOPTODESOP0.Value;
Qr_TDVOPcampo1.Value:=Qr_TDVOPTODESOP1.Value;
Qr_TDVOPcampo2.Value:=Qr_TDVOPTODESOP2.Value;
Qr_TDVOPcampo3.Value:=Qr_TDVOPTODESOP3.Value;
Qr_TDVOPmoper.Value:='OPERADOR='+Trim(Qr_TDVOPcampo0.Value)+Qr_TDVOPTOPER0.Value+Trim(Qr_TDVOPcampo1.Value);
if Trim(Qr_TDVOPTOOP2.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER1.Value+Qr_TDVOPcampo2.Value;
if Trim(Qr_TDVOPTOOP3.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER2.Value+Qr_TDVOPcampo3.Value;

end;

procedure TFrm_TProCa.OPERADORExit(Sender: TObject);
begin
RGTIPOC.ItemIndex:=1;
TAMANHO.Text:='15';
FORMATO.Text:='###,##0.00';
RGALINHAR.ItemIndex:=1;

end;

procedure TFrm_TProCa.OPERADORChange(Sender: TObject);
begin
RGTIPOC.ItemIndex:=1;
TAMANHO.Text:='15';
FORMATO.Text:='###,##0.00';
RGALINHAR.ItemIndex:=1;

end;

procedure TFrm_TProCa.MENSAGEMKeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM.Text)>140) and (key<>#8) then
   begin
   fmensagem('Tamanho Maximo Permitido 140 Caracteres',0,['0'],0);
   key:=#0;
   end;
end;

procedure TFrm_TProCa.RG_EXTENSOExit(Sender: TObject);
begin
if (RG_EXTENSO.ItemIndex=0) or (RG_EXTENSO.ItemIndex=3) then
   groupbox2.Visible:=False
else
   GroupBox2.Visible:=True;

end;

procedure TFrm_TProCa.CONCATENADOExit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CONCATENADO.Text;
if CONCATENADO.ItemIndex<0 then
   begin
   for x:=0 to CONCATENADO.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CONCATENADO.Items.Strings[x]) then
         begin
         CONCATENADO.ItemIndex:=x;
         break;
         end;
      end;
   end;
CONCATENADO.Text:=CONCATENADO.Items.Strings[CONCATENADO.Itemindex];
end;

procedure TFrm_TProCa.CAMPO_EMPExit(Sender: TObject);
var
x: Integer;
begin
CAMPO_EMP.Text:=CAMPO_EMP.items.Strings[CAMPO_EMP.itemindex];
if CAMPO_EMP.Text='' then
   begin
   Fmensagem('Campo Inválido.!',0,['0'],0);
   CAMPO_EMP.SetFocus;
   end;

for x:=0 to DM1.Tb_Emp.FieldCount-1 do
   begin
   if CAMPO_EMP.Text=DM1.Tb_Emp.Fields[x].DisplayName then
      begin
      if (DM1.Tb_Emp.Fields[x].DataType=ftfloat) or
         (DM1.Tb_Emp.Fields[x].DataType=ftWord) or
         (DM1.Tb_Emp.Fields[x].DataType=ftCurrency) or
         (DM1.Tb_Emp.Fields[x].DataType=ftInteger) Then
         Begin
         RGTIPOC.ItemIndex:=1;
         if Trim(TAMANHO.Text)='' then
            TAMANHO.Text     :='15';
         if Formato.ItemIndex<0 then
            FORMATO.ItemIndex:=7;
         if RGALINHAR.ItemIndex<0 then
            RGALINHAR.ItemIndex:=1;
         end
      else if (DM1.Tb_Emp.Fields[x].DataType=ftDateTime) or
              (DM1.Tb_Emp.Fields[x].DataType=ftDate) then
         Begin
         RGTIPOC.ItemIndex:=2;
         if Trim(TAMANHO.Text)='' then
            TAMANHO.Text     :='10';
         if Formato.ItemIndex<0 then
            FORMATO.ItemIndex:=3;
         if RGALINHAR.ItemIndex<0 then
            RGALINHAR.ItemIndex:=0;
         end
      else if (DM1.Tb_Emp.Fields[x].DataType=ftTime) then
         begin
         RGTIPOC.ItemIndex:=3;
         if Trim(TAMANHO.Text)='' then
            TAMANHO.Text     :='8';
         if Formato.ItemIndex<0 then
            FORMATO.ItemIndex:=6;
         if RGALINHAR.ItemIndex<0 then
            RGALINHAR.ItemIndex:=0;
         end
      else
         begin
         RGTIPOC.ItemIndex:=0;
         if Trim(TAMANHO.Text)='' then
            TAMANHO.Text     :=IntToStr(DM1.Tb_Emp.Fields[x].Size);
         if Formato.ItemIndex<0 then
            FORMATO.Text:='';
         if RGALINHAR.ItemIndex<0 then
            RGALINHAR.ItemIndex:=0;

         end;
     end;
  end;
end;

procedure TFrm_TProCa.CB_COND_02_01Exit(Sender: TObject);
begin
if CB_COND_02_01.ItemIndex<0 then
   with CB_COND_02_01 do ItemIndex:=Items.IndexOf(CB_COND_02_01.Text);
CB_COND_02_01.text:=CB_COND_02_01.Items.Strings[CB_COND_02_01.ItemIndex];

if Trim(CB_COND_02_01.Text)='' then
   begin
   CB_COND_02_OP.ItemIndex:=-1;
   CB_COND_02_OP.Text:='';
   CB_COND_02_02.ItemIndex  :=-1;
   CB_COND_02_02.Text:='';
   exit;
   end;
if CB_COND_02_01.Text='Codigo Prod Entrada Anterior' then
   mcond_02_t1:='N'
else if CB_COND_02_01.Text='Especial(Grupo Anterior)' then
   mcond_02_t1:='S'
else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_01.Text,[]) then
   begin
   mcond_02_t1:=DM2.Tb_ArqCATIPO.Value;
   end
else
   begin
   Fmensagem('Campo Invalido!',0,['0'],0);
   CB_COND_02_01.SetFocus;
   end;

end;

procedure TFrm_TProCa.CB_COND_02_02Exit(Sender: TObject);
var
mlidos,mposi,mqtd: Integer;
achou: String;
mcampo1, mcampo2: String;
mtipoc: TFieldType;
mnomec: String;
begin
{
if CB_COND_02_02.ItemIndex<0 then
   with CB_COND_02_02 do ItemIndex:=Items.IndexOf(CB_COND_02_02.Text);
CB_COND_02_02.text:=CB_COND_02_02.Items.Strings[CB_COND_02_02.ItemIndex];
}
if CB_COND_02_02.Text='[Nulo/Branco]' then
   begin
   mcond_02_t2:='V'
   end
else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_02_02.Text,[]) then
   begin
   mcond_02_t2:=DM2.Tb_ArqCATIPO.Value;
   if mcond_02_t1<>mcond_02_t2 then
      begin
      if mcond_02_t1='N' then
         mcampo1:='Numerico'
      else if mcond_02_t1='D' then
         mcampo1:='Data'
      else if mcond_02_t1='H' then
         mcampo1:='Hora'
      else
         mcampo1:='String';
      if mcond_02_t2='N' then
         mcampo2:='Numerico'
      else if mcond_02_t2='D' then
         mcampo2:='Data'
      else if mcond_02_t2='H' then
         mcampo2:='Hora'
      else
         mcampo2:='String';
      Fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
      CB_COND_02_02.SetFocus;
      exit;
      end;
   end
else
   begin
   mcond_02_t2:='V';
   if mcond_02_t1='N' then
      begin
      mqtd:=length(Trim(CB_COND_02_02.Text));
      for mposi:=1 to mqtd do
         begin
         if not (CB_COND_02_02.Text[mposi] in ['0'..'9']) and not (CB_COND_02_02.Text[mposi]=DecimalSeparator) then
            begin
            Fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
            CB_COND_02_02.SetFocus;
            exit;
            end;
         end;
      end
   else if mcondt1='D' then
      begin
      Try
        CB_COND_02_02.Text:=FormatDateTime(fdt2, StrToDate(CB_COND_02_02.Text))
      Except
        Fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' as barras!',0,['0'],0);
        CB_COND_02_02.SetFocus;
        exit;
        end;
      end;
   end;

end;

procedure TFrm_TProCa.CB_COND_03_01Exit(Sender: TObject);
begin
if CB_COND_03_01.ItemIndex<0 then
   with CB_COND_03_01 do ItemIndex:=Items.IndexOf(CB_COND_03_01.Text);
CB_COND_03_01.text:=CB_COND_03_01.Items.Strings[CB_COND_03_01.ItemIndex];

if Trim(CB_COND_03_01.Text)='' then
   begin
   CB_COND_03_OP.ItemIndex:=-1;
   CB_COND_03_OP.Text:='';
   CB_COND_03_02.ItemIndex  :=-1;
   CB_COND_03_02.Text:='';
   exit;
   end;
if CB_COND_03_01.Text='Codigo Prod Entrada Anterior' then
   mcond_03_t1:='N'
else if CB_COND_03_01.Text='Especial(Grupo Anterior)' then
   mcond_03_t1:='S'
else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_01.Text,[]) then
   begin
   mcond_03_t1:=DM2.Tb_ArqCATIPO.Value;
   end
else
   begin
   Fmensagem('Campo Invalido!',0,['0'],0);
   CB_COND_03_01.SetFocus;
   end;


end;

procedure TFrm_TProCa.CB_COND_03_02Exit(Sender: TObject);
var
mlidos,mposi,mqtd: Integer;
achou: String;
mcampo1, mcampo2: String;
mtipoc: TFieldType;
mnomec: String;
begin
{
if CB_COND_03_02.ItemIndex<0 then
   with CB_COND_03_02 do ItemIndex:=Items.IndexOf(CB_COND_03_02.Text);
CB_COND_03_02.text:=CB_COND_03_02.Items.Strings[CB_COND_03_02.ItemIndex];
}
if CB_COND_03_02.Text='[Nulo/Branco]' then
   begin
   mcond_03_t2:='V'
   end
else if DM2.Tb_Arq.Locate('CANOMREG',CB_COND_03_02.Text,[]) then
   begin
   mcond_03_t2:=DM2.Tb_ArqCATIPO.Value;
   if mcond_03_t1<>mcond_03_t2 then
      begin
      if mcond_03_t1='N' then
         mcampo1:='Numerico'
      else if mcond_03_t1='D' then
         mcampo1:='Data'
      else if mcond_03_t1='H' then
         mcampo1:='Hora'
      else
         mcampo1:='String';
      if mcond_03_t2='N' then
         mcampo2:='Numerico'
      else if mcond_03_t2='D' then
         mcampo2:='Data'
      else if mcond_03_t2='H' then
         mcampo2:='Hora'
      else
         mcampo2:='String';
      Fmensagem('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,0,['0'],0);
      CB_COND_03_02.SetFocus;
      exit;
      end;
   end
else
   begin
   mcond_03_t2:='V';
   if mcond_03_t1='N' then
      begin
      mqtd:=length(Trim(CB_COND_03_02.Text));
      for mposi:=1 to mqtd do
         begin
         if not (CB_COND_03_02.Text[mposi] in ['0'..'9']) and not (CB_COND_03_02.Text[mposi]=DecimalSeparator) then
            begin
            Fmensagem('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',0,['0'],0);
            CB_COND_03_02.SetFocus;
            exit;
            end;
         end;
      end
   else if mcondt1='D' then
      begin
      Try
        CB_COND_03_02.Text:=FormatDateTime(fdt2, StrToDate(CB_COND_03_02.Text))
      Except
        Fmensagem('Data Invalida. Favor digitar no Formato '+fdt2+' as barras!',0,['0'],0);
        CB_COND_03_02.SetFocus;
        exit;
        end;
      end;
   end;


end;

procedure TFrm_TProCa.MLINHAExit(Sender: TObject);
var
x: Integer;
begin

mcinst:='';
if trim(MLINHA.Text)<>'' then
   begin
   if MLINHA.Text[1]='-' then
      mcinst:='-'
   end;
for x:=1 to Length(MLINHA.Text) do
   If MLINHA.Text[x] in ['0'..'9'] then
      mcinst:=mcinst+MLINHA.Text[x];
MLINHA.Text:=mcinst;

end;

procedure TFrm_TProCa.MCOLUNAExit(Sender: TObject);
var
x: Integer;
begin

mcinst:='';
if trim(MCOLUNA.Text)<>'' then
   begin
   if MCOLUNA.Text[1]='-' then
      mcinst:='-'
   end;
for x:=1 to Length(MCOLUNA.Text) do
   If MCOLUNA.Text[x] in ['0'..'9'] then
      mcinst:=mcinst+MCOLUNA.Text[x];
MCOLUNA.Text:=mcinst;


end;

procedure TFrm_TProCa.SBNAplicarClick(Sender: TObject);
var
mPosReg: TBookmark;
mIncLin, mIncCol: Integer;

begin
SBNAplicar.Enabled:=false;
if (trim(MLINHA.Text)='') and (trim(MCOLUNA.Text)='') then
   begin
   SBNAplicar.Enabled:=true;
   exit;
   end;
if DM1.Tb_TDV.Eof then
   begin
   SBNAplicar.Enabled:=true;
   exit;
   end;
if FMensagem('Quer Incrementar os Valores?',0,['1','2'],2)<>mrYes then
   begin
   SBNAplicar.Enabled:=true;
   exit;
   end;
mPosReg        :=DM1.Tb_TDV.GetBookmark;
if trim(MLINHA.Text)<>'' then
   mIncLin:=StrToInt(MLINHA.Text)
else
   mIncLin:=0;
if trim(MCOLUNA.Text)<>'' then
   mIncCol:=StrToInt(MCOLUNA.Text)
else
   mIncCol:=0;

While not DM1.Tb_TDV.Eof do
   begin
   if mIncCol<>0 then
      begin
      if (DM1.Tb_TDVTCOL.Value+mIncCol)<=0 then
         begin
         Fmensagem('Não Sera Possivel Fazer o Incremento nas colunas, '+#13
                   +'pois a mesma podera ficar com valores inferior a 1(um)',0,['0'],0);

         DM1.Tb_TDV.GotoBookmark(mPosReg);
         SBNAplicar.Enabled:=true;
         exit;
         end;
      end;
   if mIncLIn<>0 then
      begin
      if (DM1.Tb_TDVTLIN.Value+mIncLin)<=0 then
         begin
         Fmensagem('Não Sera Possivel Fazer o Incremento nas linhas, '+#13
                   +'pois a mesma podera ficar com valores inferior a 1(um)',0,['0'],0);

         DM1.Tb_TDV.GotoBookmark(mPosReg);
         SBNAplicar.Enabled:=true;
         exit;
         end;
      end;
   DM1.Tb_TDV.Next;
   end;
DM1.Tb_TDV.GotoBookmark(mPosReg);


While not DM1.Tb_TDV.Eof do
   begin
   DM1.Tb_TDV.edit;
   DM1.Tb_TDVTCOL.Value:=DM1.Tb_TDVTCOL.Value+mIncCol;
   DM1.Tb_TDVTlin.Value:=DM1.Tb_TDVTLIN.Value+mIncLin;
   DM1.Tb_TDV.Post;
   DM1.Tb_TDV.Next;
   end;
DM1.Tb_TDV.GotoBookmark(mPosReg);

MCOLUNA.Text:='';
MLINHA.Text:='';
SBNAplicar.Enabled:=true;

end;

procedure TFrm_TProCa.CONDICAOExit(Sender: TObject);
begin
if CONDICAO.ItemIndex<0 then
   with CONDICAO do ItemIndex:=Items.IndexOf(CONDICAO.Text);
CONDICAO.text:=CONDICAO.Items.Strings[CONDICAO.ItemIndex];

end;

procedure TFrm_TProCa.CB_COND_CONTExit(Sender: TObject);
begin
if CB_COND_CONT.ItemIndex<0 then
   with CB_COND_CONT do ItemIndex:=Items.IndexOf(CB_COND_CONT.Text);
CB_COND_CONT.text:=CB_COND_CONT.Items.Strings[CB_COND_CONT.ItemIndex];

end;

procedure TFrm_TProCa.CB_COND_02_OPExit(Sender: TObject);
begin
if CB_COND_02_OP.ItemIndex<0 then
   with CB_COND_02_OP do ItemIndex:=Items.IndexOf(CB_COND_02_OP.Text);
CB_COND_02_OP.text:=CB_COND_02_OP.Items.Strings[CB_COND_02_OP.ItemIndex];

end;

procedure TFrm_TProCa.CB_COND_CONT03Exit(Sender: TObject);
begin
if CB_COND_CONT03.ItemIndex<0 then
   with CB_COND_CONT03 do ItemIndex:=Items.IndexOf(CB_COND_CONT03.Text);
CB_COND_CONT03.text:=CB_COND_CONT03.Items.Strings[CB_COND_CONT03.ItemIndex];

end;

procedure TFrm_TProCa.CB_COND_03_OPExit(Sender: TObject);
begin
if CB_COND_03_OP.ItemIndex<0 then
   with CB_COND_03_OP do ItemIndex:=Items.IndexOf(CB_COND_03_OP.Text);
CB_COND_03_OP.text:=CB_COND_03_OP.Items.Strings[CB_COND_03_OP.ItemIndex];

end;

procedure TFrm_TProCa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
