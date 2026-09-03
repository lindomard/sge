unit S_Tab01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_DM2,S_dm1, Db, Dbtables, Buttons, DBCtrls,
  Grids, DBGrids, func;


type
  TFrm_Tab01 = class(TForm)
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
    RG_TPSEL: TRadioGroup;
    CAMPO_EMP: TComboBox;
    Label15: TLabel;
    CB_BARRAS: TCheckBox;
    RG_EXTENSO: TRadioGroup;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    EXT_QTDL: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    EXT_1LT: TEdit;
    Label19: TLabel;
    EXT_1LP: TEdit;
    Label20: TLabel;
    EXT_1IC: TEdit;
    Label21: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label22: TLabel;
    EXT_2IC: TEdit;
    Label23: TLabel;
    EXT_2LT: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    EXT_2LP: TEdit;
    Label26: TLabel;
    EXT_3IC: TEdit;
    Label27: TLabel;
    EXT_3LT: TEdit;
    Label28: TLabel;
    EXT_3LP: TEdit;
    Label29: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBNavigator1: TDBNavigator;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    SAIR: TBitBtn;
    CAMPO_IE: TComboBox;
    Label30: TLabel;
    CONCATENADO: TComboBox;
    RG_CORTARDE: TRadioGroup;
    Label35: TLabel;
    Label36: TLabel;
    MLINHA: TEdit;
    Label37: TLabel;
    MCOLUNA: TEdit;
    SBNAplicar: TSpeedButton;
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
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure RGTREGClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure Qr_TDVOPCalcFields(DataSet: TDataSet);
    procedure OPERADORExit(Sender: TObject);
    procedure OPERADORChange(Sender: TObject);
    procedure MENSAGEMKeyPress(Sender: TObject; var Key: Char);
    procedure CAMPO_EMPExit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure RG_EXTENSOClick(Sender: TObject);
    procedure CAMPO_IEExit(Sender: TObject);
    procedure CONCATENADOExit(Sender: TObject);
    procedure RG_TPSELClick(Sender: TObject);
    procedure SBNAplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab01: TFrm_Tab01;
  mtipo: Integer;
  marquso,mcondt1, mcondt2: String;
//  mpesq: String;
implementation

uses S_TabM, S_Tab00, lerarq;


{$R *.dfm}

procedure TFrm_Tab01.LINHAKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Tab01.CARACTERKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(CARACTER.Text)>1) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Tab01.FormCreate(Sender: TObject);
var
mlidos,mqtd: Integer;

begin
if (mrelat=0) or ((mrelat=2) and (DM1.Tb_TDVCATCAVANCAROD.Value<>1))  then
   begin
   Label13.Caption:='';
   Label1.Caption:='Linha';
   end;
fltdvop(0,0,mreltab,Frm_TabM.NOMREL.Caption,mpesq,'','','0');

While not DM2.Tb_OP.Eof do
   begin
   if DM2.Tb_OPTOTDET.Value>97 then
      begin
      DM2.Tb_Op.Next;
      Continue;
      end;
   OPERADOR.Items.Add('Operador.: '+FormatFloat('000',DM2.Tb_OPTOCODIGO.Value));
   DM2.Tb_Op.Next;
   end;

flcadtdv(0,0,mreltab,Frm_TabM.NOMREL.Caption,IntTostr(mrelat),'',mpesq);

DM2.Tb_Arq.Close;
DM2.Tb_Arq.SQL.Clear;
DM2.Tb_Arq.SQL.Add('Select * From CADARQ2 where '
                  +' (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB01.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB02.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB02.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB03.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB03.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB04.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB04.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB05.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB05.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB06.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB06.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB07.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB07.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB08.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB08.Value+CHR(39)+')');
if (DM1.Tb_TDVCATCTAB09.Value)<>'' then
   DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+DM1.Tb_TDVCATCTAB09.Value+CHR(39)+')');


DM2.Tb_Arq.Open;

mlidos:=1;
{
msubdet = 1 Sub-Detalhes do pedido
}
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   fltdvft(0,0,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'6','CADTDV');
   end;
CAMPO.Items.Clear;
CAMPO1.ITEMS.Clear;
CAMPO2.ITEMS.Clear;

While not DM2.Tb_Arq.Eof do
   begin
   if DM1.Tb_TDVCATCQTDDIV.Value>1 then
      begin
      if DM1.Tb_TDVFT.Locate('TFCAMPO1',DM2.Tb_ArqCANOMCAM.Value,[]) then
         begin
         for mlidos:=1 to DM1.Tb_TDVCATCQTDDIV.AsInteger do
            begin
            CAMPO.Items.Add('Tot. Mes - '+FormatFloat('00',mlidos)
                            +' '+DM2.Tb_ArqCANOMREG.Value);
            CAMPO.Items.Add('Mes - '+FormatFloat('00',mlidos));
            CAMPO.Items.Add('Ano - '+FormatFloat('00',mlidos));
            end;
         DM2.Tb_Arq.Next;
         continue;
         end;
      end;
   CAMPO.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO1.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO2.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Open;
   dm2.Tb_Arq.Next;
   end;
{if (mpesq='CADTAB') and (mrelat=4) then
   CAMPO1.Items.Add('Especial(Grupo Anterior)');
}
for mlidos:=0 to DM1.Tb_Emp.FieldCount-1 do
   begin
   if Length(DM1.Tb_Emp.Fields[mlidos].DisplayName)>2 then
      begin
      if copy(DM1.Tb_Emp.Fields[mlidos].DisplayName,1,3)='01-' then
         Continue;
      end;
   CAMPO_EMP.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   end;
fltdvop(0,0,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mpesq,'99','','0');

CAMPO_IE.Items.Clear;

While not DM2.Tb_Op.Eof do
   begin
   CAMPO_IE.Items.Add(DM2.Tb_OPTOCOND01.Value);
   DM2.Tb_Op.Next;
   end;
CAMPO_IE.ItemIndex:=0;
CAMPO.ItemIndex:=0;
CAMPO1.ItemIndex:=-1;
campo2.ItemIndex:=-1;
CONDICAO.ItemIndex:=-1;

fltdvjc(0,0,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'','','',mpesq);

While not DM2.Tb_JC.Eof do
   begin
   CONCATENADO.Items.Add(DM2.Tb_JCJCNOMCAM.Value);
   DM2.Tb_JC.Next;
   end;

CAMPO2.Items.Add('[Nulo/Branco]');

mtipo:=8;
DM1.Tb_Tdv.First;
end;

procedure TFrm_Tab01.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab01.CAMPOExit(Sender: TObject);
VAR
mlidos,mqtd: Integer;
mtipoc: TFieldType;
mnomec: String;
begin
if CANCELAR.Focused then
   exit;
if CAMPO.ItemIndex<0 then
   with CAMPO do ItemIndex:=Items.IndexOf(CAMPO.Text);
CAMPO.text:=CAMPO.Items.Strings[CAMPO.ItemIndex];
   
CAMPO.Text:=CAMPO.items.Strings[CAMPO.itemindex];

mlidos:=1;
if copy(CAMPO.Text,1,11)='Tot. Mes - ' then
   begin
   mnomec:=copy(CAMPO.Text,15,length(CAMPO.Text)-13);
   if not DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
      begin
      MessageDlg('Erro ao tentar localizar este campo',mtInformation,[mbok],0);
      CAMPO.SetFocus;
      exit;
      end;
   RGTIPOC.ItemIndex:=1;
   RG_TPSEL.ItemIndex  :=0;
   RG_TPSEL.Enabled    :=False;
   RG_EXTENSO.Enabled  :=True;
   CB_BARRAS.Enabled   :=True;
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='15';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=7;
    RGALINHAR.ItemIndex:=1;
   end
else if copy(CAMPO.Text,1,6)='Mes - ' then
   begin
   RGTIPOC.ItemIndex:=1;
   RG_TPSEL.ItemIndex  :=0;
//   RG_TPSEL.Enabled    :=False;
   RG_EXTENSO.Enabled  :=False;
   CB_BARRAS.Enabled   :=False;
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='2';
   if Formato.ItemIndex<0 then
      FORMATO.Text     :='00';
   RGALINHAR.ItemIndex:=1;
   end
else if copy(CAMPO.Text,1,6)='Ano - ' then
   begin
   RGTIPOC.ItemIndex:=1;
   RG_TPSEL.ItemIndex  :=0;
//   RG_TPSEL.Enabled    :=False;
   RG_EXTENSO.Enabled  :=False;
   CB_BARRAS.Enabled   :=False;
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='4';
   if Formato.ItemIndex<0 then
      FORMATO.Text     :='0000';
   RGALINHAR.ItemIndex:=1;
   end
else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value<>'N' then
      begin
      RG_TPSEL.ItemIndex  :=0;
      RG_TPSEL.Enabled    :=true;
      RG_EXTENSO.ItemIndex:=0;
      RG_EXTENSO.Enabled  :=False;
      CB_BARRAS.Enabled   :=False;
      end;
   if DM2.Tb_ArqCATIPO.Value='N' then
      Begin
      RG_TPSEL.Enabled  :=True;
      RG_EXTENSO.Enabled:=True;
      CB_BARRAS.Enabled :=True;
      RGTIPOC.ItemIndex:=1;
      if Trim(TAMANHO.Text)='' then
         TAMANHO.Text     :=DM2.Tb_ArqCATAMANHO.AsString;
      if Formato.ItemIndex<0 then
         FORMATO.ItemIndex:=7;
      RGALINHAR.ItemIndex:=1;
      end
   else if DM2.Tb_ArqCATIPO.Value='D' then
      begin
      RGTIPOC.ItemIndex:=2;
      if Trim(TAMANHO.Text)='' then
         TAMANHO.Text     :=DM2.Tb_ArqCATAMANHO.AsString;
      if Formato.ItemIndex<0 then
         FORMATO.ItemIndex:=3;
      if RGALINHAR.ItemIndex<0 then
         RGALINHAR.ItemIndex:=0;
      end
   else if DM2.Tb_ArqCATIPO.Value='H' then
      begin
      RGTIPOC.ItemIndex:=3;
      if Trim(TAMANHO.Text)='' then
         TAMANHO.Text     :=DM2.Tb_ArqCATAMANHO.AsString;
      if Formato.ItemIndex<0 then
         FORMATO.ItemIndex:=6;
      RGALINHAR.ItemIndex:=0;
      end
   else
      begin
      RGTIPOC.ItemIndex:=0;
      if Trim(TAMANHO.Text)='' then
         TAMANHO.Text     :=DM2.Tb_ArqCATAMANHO.AsString;
      if Formato.ItemIndex<0 then
         FORMATO.Text     :='';
      RGALINHAR.ItemIndex:=0;
      end;
   RGTIPOC.Update;
   RGTIPOC.Enabled:=False;
   end
else
   begin
   ShowMessage('Nome do Campo Invalido');
   CAMPO.SetFocus;
   abort;
   end;
end;

procedure TFrm_Tab01.CAMPO1Exit(Sender: TObject);
begin
if Trim(campo1.Text)='' then
   begin
   CONDICAO.ItemIndex:=-1;
   CONDICAO.Text:='';
   campo2.ItemIndex  :=-1;
   CAMPO2.Text:='';
   abort;
   end;
if CAMPO1.Text='Especial(Grupo Anterior)' then
   mcondt1:='S'
else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) then
   begin
   mcondt1:=DM2.Tb_ArqCATIPO.Value;
   end
else
   begin
   ShowMessage('Campo Invalido!');
   CAMPO1.SetFocus;
   end
end;

procedure TFrm_Tab01.CAMPO2Exit(Sender: TObject);
var
mlidos,mposi,mqtd: Integer;
achou: String;
mcampo1, mcampo2: String;
mtipoc: TFieldType;
mnomec: String;

begin
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) then
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
      ShowMessage('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2);
      CAMPO2.SetFocus;
      abort;
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
            ShowMessage('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal');
            CAMPO2.SetFocus;
            abort;
            end;
         end;
      end
   else if mcondt1='D' then
      begin
      Try
        campo2.Text:=FormatDateTime('dd/mm/yyyy', StrToDate(CAMPO2.Text))
      Except
        ShowMessage('Data Invalida. Favor digitar no Formato dd/mm/yyyy com as barras');
        CAMPO2.SetFocus;
        abort;
        end;
      end;
   end;
end;

procedure TFrm_Tab01.MENSAGEMExit(Sender: TObject);
begin
if Trim(MENSAGEM.Text)<>'' then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :=IntToStr(Length(MENSAGEM.Text));
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=-1;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   end;
end;

procedure TFrm_Tab01.SISTEMAExit(Sender: TObject);
begin
if SISTEMA.ItemIndex<0 then
   with SISTEMA do ItemIndex:=Items.IndexOf(SISTEMA.Text);
SISTEMA.text:=SISTEMA.Items.Strings[SISTEMA.ItemIndex];

SISTEMA.Text:=SISTEMA.items.Strings[SISTEMA.itemindex];

if SISTEMA.ItemIndex=0 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='8';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=3;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   end
else if SISTEMA.ItemIndex=1 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='10';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=6;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   end
else if SISTEMA.itemindex=2 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='4';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=8;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   end
else if SISTEMA.itemindex=3 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='30';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=-1;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   end
else if SISTEMA.itemindex=4 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='15';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=7;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=1;
   RGTIPOC.ItemIndex:=1;
   end
else if SISTEMA.itemindex=5 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='15';
   if Formato.ItemIndex<0 then
      FORMATO.ItemIndex:=7;
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=1;
   RGTIPOC.ItemIndex:=1;
   end
else if SISTEMA.itemindex>10 then
   begin
   if Trim(TAMANHO.Text)='' then
      TAMANHO.Text     :='60';
   if RGALINHAR.ItemIndex<0 then
      RGALINHAR.ItemIndex:=0;
   RGTIPOC.ItemIndex:=1;
   end;


end;

procedure TFrm_Tab01.Src_TDVDataChange(Sender: TObject; Field: TField);
var
mposi, mqtd: Integer;
mtipoc: TFieldType;
mnomec,mnomec2: String;
begin
if mtipo=8 then
   begin
   if DM1.Tb_TDVTTIPO.Value=4 then
      begin
      Qr_TDVOP.Close;
      if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
         Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
      else
         Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;

      Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
      Qr_TDVOP.ParamByName('NOME').AsString  := Frm_TabM.NOMREL.Caption;
//      Qr_TDVOP.ParamByName('TDET').AsString  := '%';
      Qr_TDVOP.ParamByName('CODIGO').AsFloat := DM1.Tb_TDVTCAMPO.AsFloat;
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
   LINHA.Text            :=DM1.Tb_TDVTLIN.AsString;
   COLUNA.Text           :=DM1.Tb_TDVTCOL.AsString;
   RGFONTE.ItemIndex     :=DM1.Tb_TDVTFONTE.AsInteger;
   RGTREG.ItemIndex      :=DM1.Tb_TDVTTIPO.Asinteger;
   RGALINHAR.ItemIndex   :=DM1.Tb_TDVTALINHAR.Asinteger;
   RG_CORTARDE.ItemIndex :=DM1.Tb_TDVTCCORTARDE.Asinteger;
   FORMATO.Text          :=DM1.Tb_TDVTFORMATO.Value;
   CB_BARRAS.Checked     :=DM1.Tb_TDVTCBARRAS.Value=1;
   RG_EXTENSO.ItemIndex  :=DM1.Tb_TDVTCEXTENSO.AsInteger;
   EXT_QTDL.Text         :=DM1.Tb_TDVTCEXT_QTDL.AsString;
   EXT_1IC.Text          :=DM1.Tb_TDVTCEXT_1IC.AsString;
   EXT_1LT.Text          :=DM1.Tb_TDVTCEXT_1LT.AsString;
   EXT_1LP.Text          :=DM1.Tb_TDVTCEXT_1LP.AsString;
   EXT_2IC.Text          :=DM1.Tb_TDVTCEXT_2IC.AsString;
   EXT_2LT.Text          :=DM1.Tb_TDVTCEXT_2LT.AsString;
   EXT_2LP.Text          :=DM1.Tb_TDVTCEXT_2LP.AsString;
   EXT_3IC.Text          :=DM1.Tb_TDVTCEXT_3IC.AsString;
   EXT_3LT.Text          :=DM1.Tb_TDVTCEXT_3LT.AsString;
   EXT_3LP.Text          :=DM1.Tb_TDVTCEXT_3LP.AsString;

   if RGTREG.ItemIndex=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVTCAMPO.Value,[]) then
         begin
         with CAMPO do ItemIndex:=Items.IndexOf(DM2.Tb_ArqCANOMREG.Value);
         CAMPO.text:=CAMPO.items[CAMPO.itemIndex];
         end;
{
      mqtd:=0;
      While True do
         begin
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
   else
      begin
      CARACTER.Text:=DM1.Tb_TDVTDCAMPO.Value;
      end;
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
   CONDICAO.Text:='';


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
   RG_TPSEL.ItemIndex  :=DM1.Tb_TDVTCTPSEL.AsInteger;

   end;

if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=True;
   CAMPO_EMP.Visible  :=False;
   RG_TPSEL.Visible   :=True;
   RG_EXTENSO.Visible :=True;
   CB_BARRAS.Visible  :=True;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   RGTIPOC.Enabled    :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible   :=True;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO.Visible      :=False;
   CAMPO_EMP.Visible  :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   RG_EXTENSO.Visible :=False;
   CB_BARRAS.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=True;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   CAMPO_EMP.Visible  :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   RG_TPSEL.Visible   :=False;
   RG_EXTENSO.Visible :=False;
   CB_BARRAS.Visible  :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=3 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=True;
   CAMPO.Visible      :=False;
   CAMPO_EMP.Visible  :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   RG_EXTENSO.Visible :=False;
   CB_BARRAS.Visible  :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=4 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=True;
   ZERAR.Visible      :=True;
   GroupBox1.Visible  :=True;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=5 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CAMPO_EMP.Visible  :=True;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=6 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   CAMPO_EMP.Visible  :=False;
//   RG_TPSEL.Visible   :=False;
   RG_EXTENSO.Visible :=True;
   CB_BARRAS.Visible  :=True;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=true;
   RGTIPOC.Enabled    :=False;
   CAMPO_IE.Visible   :=True;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=7 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   CAMPO_EMP.Visible  :=False;
//   RG_TPSEL.Visible   :=False;
   RG_EXTENSO.Visible :=False;
   CB_BARRAS.Visible  :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=true;
   RGTIPOC.Enabled    :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=True;
   end;
end;

procedure TFrm_Tab01.INCLUIRClick(Sender: TObject);
begin
LINHA.Text           :='';
RG_TPSEL.ItemIndex   :=0;
CB_BARRAS.Checked    :=False;
RG_EXTENSO.ItemIndex :=0;
EXT_1IC.Text         :='';
EXT_1LP.Text         :='';
EXT_1LT.Text         :='';
EXT_2IC.Text         :='';
EXT_2LP.Text         :='';
EXT_2LT.Text         :='';
EXT_3IC.Text         :='';
EXT_3LP.Text         :='';
EXT_3LT.Text         :='';
COLUNA.Text          :='';
RGFONTE.ItemIndex    :=DM1.Tb_TDVTFONTE.Asinteger;
RGTREG.ItemIndex     :=0;
RGALINHAR.ItemIndex  :=0;
RG_CORTARDE.ItemIndex:=0;
FORMATO.Text         :='';
RGTREG.ItemIndex     :=0;
ZERAR.Checked        :=False;
OPERADOR.Text        :='';
CAMPO.Text           :='';
CAMPO_IE.Text        :='';
MENSAGEM.Text        :='';
SISTEMA.Text         :='';
CARACTER.Text        :='';
RGTIPOC.ItemIndex    :=0;
TAMANHO.Text         :='';
CAMPO2.Text          :='';
CAMPO1.Text          :='';
CONDICAO.Text        :='';
panel1.Enabled       :=True;
DBGrid1.Enabled      :=False;
RGFONTE.ItemIndex    :=DM1.Tb_TDVCATCFPADRAO.Asinteger;
ALTERAR.Enabled      :=False;
INCLUIR.Enabled      :=False;
GRAVAR.Enabled       :=True;
EXCLUIR.Enabled      :=False;
CANCELAR.Enabled     :=True;
mtipo:=0;
LINHA.SetFocus;
SBNAplicar.Enabled:=false;

end;

procedure TFrm_Tab01.ALTERARClick(Sender: TObject);
begin
if DM1.Tb_TDVTDOC.IsNull  then
   begin
   ShowMessage('Nao a registro a ser alterado');
   abort;
   end;
Panel1.Enabled:=True;
DBGrid1.Enabled:=False;
LINHA.SetFocus;
if RGTIPOC.ItemIndex=1 then
   begin
   CB_BARRAS.Enabled :=True;
   RG_EXTENSO.Enabled:=True;
   RG_TPSEL.Enabled  :=True;
   end
else
   begin
//   RG_TPSEL.Enabled  :=False;
   CB_BARRAS.Enabled :=False;
   RG_EXTENSO.Enabled:=False;
   end;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
mtipo:=1;
SBNAplicar.Enabled:=false;

end;

procedure TFrm_Tab01.GRAVARClick(Sender: TObject);
var
mlidos,mqtd, mposi, mreg, mreg1: Integer;
achou, mcampo1, mcampo2, oper: String;
mtipoc: TFieldType;
mnomec,mnomec2: String;

begin
Panel3.SetFocus;
if (RGTREG.ItemIndex=3) and (Trim(TAMANHO.Text)='') then
   begin
   MessageDlg('Favor digitar a quantidade de Vezes que o Caractere sera Repetido!',mtWarning,[mbOk],0);
   TAMANHO.SetFocus;
   exit;
   end;
if (RGTREG.ItemIndex=6) and (Trim(CAMPO_IE.Text)='') then
   begin
   MessageDlg('O Campo tem que ser Selecionado!',mtWarning,[mbok],0);
   CAMPO_IE.SetFocus;
   exit;
   end;
if (RGTREG.ItemIndex=4) then
   begin
   Qr_TDVOP.Close;
   if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
   else
      Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;

   Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
   Qr_TDVOP.ParamByName('NOME').AsString  := Frm_TabM.NOMREL.Caption;
//   Qr_TDVOP.ParamByName('TDET').AsString  := '%';
   Qr_TDVOP.ParamByName('CODIGO').AsFloat := StrToInt('0'+copy(OPERADOR.Text,12,3));
   Qr_TDVOP.Open;
   if Qr_TDVOP.Eof then
      begin
      MessageDlg('Favor digitar um operador Valido!',mtWarning,[mbOk],0);
      OPERADOR.SetFocus;
      exit;
      end;
   end;
if (RGTREG.ItemIndex=7) then
   begin
   if not DM2.Tb_JC.Locate('JCNOMCAM',CONCATENADO.Text,[]) then
      begin
      MessageDlg('Favor Digitar o Campo Valido!',mtWarning,[mbOk],0);
      CONCATENADO.SetFocus;
      exit;
      end;
   end;



if StrtoInt('0'+Trim(LINHA.Text))<=0 then
   begin
   MessageDlg('Número de linha Invalido!',mtWarning,[mbOk],0);
   LINHA.SetFocus;
   exit;
   end;
if StrToInt('0'+Trim(COLUNA.Text))<=0 then
   begin
   MessageDlg('Numero de Coluna Invalido!',mtWarning,[mbOk],0);
   COLUNA.SetFocus;
   exit;
   end;
if RGTREG.ItemIndex=0 then
   begin
   if Trim(CAMPO.Text)=''then
      begin
      MessageDlg('Nome do Campo Invalido!',mtWarning,[mbOk],0);
      CAMPO.SetFocus;
      exit;
      end;
   end
else if RGTREG.ItemIndex=1 then
   begin
   if Trim(MENSAGEM.Text)='' Then
      begin
      MessageDlg('Mensagem Invalida!',mtWarning,[mbOk],0);
      MENSAGEM.SetFocus;
      exit;
      end;
   end
else if RGTREG.ItemIndex=2 then
   begin
   if Trim(SISTEMA.Text)='' then
      begin
      MessageDlg('Campo do Sistema Invalido!',mtWarning,[mbOk],0);
      SISTEMA.SetFocus;
      exit;
      end;
   end
else if RGTREG.ItemIndex=3 then
   begin
   if Trim(CARACTER.Text)='' Then
      begin
      MessageDlg('Caractere Invalido!',mtWarning,[mbOk],0);
      CARACTER.SetFocus;
      exit;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   if (Trim(CAMPO2.Text)='') or (Trim(CONDICAO.Text)='') then
      begin
      MessageDlg('Condicao Invalida!',mtWarning,[mbOk],0);
      CAMPO1.SetFocus;
      exit;
      end;
   end
else
   begin
   if (Trim(CAMPO2.Text)<>'') or (Trim(CONDICAO.Text)<>'') then
      begin
      MessageDlg('Condicao Invalida',mtWarning,[mbOk],0);
      CAMPO1.SetFocus;
      exit;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) then
      mcondt1:=DM2.Tb_ArqCATIPO.Value
   else
      mcondt1:='';
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) then
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
         MessageDlg('Invalido Comparar Campo: '+mcampo1+' com '+mcampo2,mtWarning,[mbOk],0);
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
               MessageDlg('Valor do Campo 2 invalido. Validos Somente Numeros ou Separador Decimal!',mtWarning,[mbOk],0);
               CAMPO2.SetFocus;
               exit;
               end;
            end;
         end
      else if mcondt1='D' then
         begin
         Try
           campo2.Text:=FormatDateTime('dd/mm/yyyy', StrToDate(CAMPO2.Text))
         Except
           MessageDlg('Data Invalida. Favor digitar no Formato dd/mm/yyyy com as barras!',mtWarning,[mbOk],0);
           CAMPO2.SetFocus;
           exit;
           end;
         end;
      end;
   end;

if RGTIPOC.ItemIndex<>1 then
   begin
//   RG_TPSEL.ItemIndex  :=0;
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
   if (CB_BARRAS.Checked) and (RG_EXTENSO.ItemIndex>0) and (RG_EXTENSO.ItemIndex<3) then
      begin
      Messagedlg('O número não pode ser Barras e Extenso ao mesmo Tempo',mtWarning,[mbOk],0);
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
   else if (RG_EXTENSO.ItemIndex>0) and (RG_EXTENSO.ItemIndex<3) then
      begin
      if ValFloat(EXT_QTDL.Text)=0 then
         begin
         MessageDlg('Sobre o Extenso o campo dividir em, tem que ser maior que zero',mtWarning,[mbok],0);
         RG_EXTENSO.SetFocus;
         exit;
         end
      else if valfloat(EXT_QTDL.Text)=1 then
         begin
         if ValFloat(EXT_1IC.Text)<1 then
            begin
            MessageDlg('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'primeira linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_1LT.Text)<1 then
            begin
            MessageDlg('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'primeira linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_1LP.Text)<0 then
            begin
            MessageDlg('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'primeira linha tem que ser igual ou maior que zero',mtWarning,[mbOk],0);
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
            MessageDlg('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'segunda linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_2LT.Text)<1 then
            begin
            MessageDlg('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'segunda linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_2LP.Text)<0 then
            begin
            MessageDlg('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'segunda linha tem que ser igual ou maior que zero',mtWarning,[mbOk],0);
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
            MessageDlg('Sobre o Extenso o campo iniciar na coluna da'+#13
                      +'terceira linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_3LT.Text)<1 then
            begin
            MessageDlg('Sobre o Extenso o campo tamanho/qtd.caracteres na coluna da'+#13
                      +'terceira linha tem que ser maior que zero',mtWarning,[mbOk],0);
            RG_EXTENSO.SetFocus;
            exit;
            end
         else if valfloat(EXT_3LP.Text)<0 then
            begin
            MessageDlg('Sobre o Extenso o campo avancar na coluna da'+#13
                      +'terceira linha tem que ser igual ou maior que zero',mtWarning,[mbOk],0);
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
DM1.Tb_TDVTCODEMP.Value   :=codemp;
DM1.Tb_TDVTDOC.Value      :=mreltab;    // Nome do documento CADPRO-Produto CADCLI-Cliente ...
DM1.Tb_TDVTNOME.Value     :=Frm_TabM.NOMREL.Caption;
DM1.Tb_TDVTLOCAL.Value    :=mrelat;                  // Detalhes do Formulario Frm_Sdet
DM1.Tb_TDVTCOL.Value      :=StrToInt('0'+COLUNA.Text);
DM1.Tb_TDVTLIN.Value      :=StrToInt('0'+LINHA.Text);
DM1.Tb_TDVTFONTE.Value    :=RGFONTE.ItemIndex;
DM1.Tb_TDVTTIPO.Value     :=RGTREG.ItemIndex;
DM1.Tb_TDVTFORMATO.Value  :=FORMATO.Text;
DM1.Tb_TDVTALINHAR.Value  :=RGALINHAR.ItemIndex;
DM1.Tb_TDVTCCORTARDE.Value:=RG_CORTARDE.ItemIndex;
DM1.Tb_TDVTCONDT1.Value   :=mcondt1;
DM1.Tb_TDVTCONDT2.Value   :=mcondt2;
DM1.Tb_TDVTCTPSEL.Value   :=RG_TPSEL.ItemIndex;
DM1.Tb_TDVTCBARRAS.Value  :=iif(CB_BARRAS.Checked,1,0);
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
DM1.Tb_TDVTCTPVAR.Value   :=0;
if Trim(CAMPO1.Text)='' then
   DM1.Tb_TDVTCOND01.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) Then
      begin
      DM1.Tb_TDVTCOND01.Value:=DM2.Tb_ArqCANOMCAM.Value;
      DM1.Tb_TDVTCOND01_TAB.Value:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Tb_TDVTCOND01.Value:='';
if Trim(CAMPO2.Text)='' then
   DM1.Tb_TDVTCOND02.Value :=''
else
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) Then
      begin
      DM1.Tb_TDVTCOND02.Value:=DM2.Tb_ArqCANOMCAM.Value;
      DM1.Tb_TDVTCOND02_TAB.Value:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Tb_TDVTCOND02.Value:=CAMPO2.Text;
if ZERAR.Checked then
   DM1.Tb_TDVTZERVAR.Value:=1
else
   DM1.Tb_TDVTZERVAR.Value:=0;
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
if RGTREG.ItemIndex=0 then
   begin
   if copy(CAMPO.Text,1,11)='Tot. Mes - ' then
      begin
      mnomec:=copy(CAMPO.Text,15,length(CAMPO.Text)-13);
      if not DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
         begin
         MessageDlg('Erro ao tentar localizar este campo',mtInformation,[mbok],0);
         CAMPO.SetFocus;
         exit;
         end;
      DM1.Tb_TDVTCAMPO.value    :=Trim(DM2.Tb_ArqCANOMCAM.Value)+'_'+copy(CAMPO.Text,12,2);
      DM1.Tb_TDVTDCAMPO.Value :=CAMPO.Text;
      DM1.Tb_TDVTCTPVAR.Value   :=1;
      end
   else if copy(CAMPO.Text,1,5)='Mes -' then
      begin
      DM1.Tb_TDVTCAMPO.value    :='MES_'+copy(CAMPO.Text,7,2);
      DM1.Tb_TDVTDCAMPO.Value :=CAMPO.Text;
      DM1.Tb_TDVTCTPVAR.Value   :=1;
      end
   else if copy(CAMPO.Text,1,5)='Ano -' then
      begin
      DM1.Tb_TDVTCAMPO.value    :='ANO_'+copy(CAMPO.Text,7,2);
      DM1.Tb_TDVTDCAMPO.Value :=CAMPO.Text;
      DM1.Tb_TDVTCTPVAR.Value   :=1;
      end
   else if DM2.Tb_Arq.Locate('CANOMREG',CAMPO.Text,[]) then
      begin
      DM1.Tb_TDVTCAMPO.value    :=DM2.Tb_ArqCANOMCAM.Value;
      DM1.Tb_TDVTCAMPO_TAB.Value:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Tb_TDVTCAMPO.Value:=CAMPO.Text;
   DM1.Tb_TDVTDCAMPO.Value :=CAMPO.Text;

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
else if RGTREG.ItemIndex=6 then
   begin
   DM1.Tb_TDVTDCAMPO.Value:=CAMPO_IE.Text;
   DM1.Tb_TDVTCAMPO.Value :=CAMPO_IE.Text;
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

procedure TFrm_Tab01.EXCLUIRClick(Sender: TObject);
begin
if DM1.Tb_TDVTDOC.IsNull  then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir o Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_TDV.Delete;
   INCLUIR.Enabled:=True;
   DBGrid1.Enabled:=true;
   ALTERAR.Enabled:=True;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=True;
   CANCELAR.Enabled:=True;
   panel1.Enabled:=False;
   end;

mtipo:=8;

end;

procedure TFrm_Tab01.CANCELARClick(Sender: TObject);
begin
panel3.SetFocus;
DM1.Tb_TDV.Cancel;
DBGrid1.Enabled:=True;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=false;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;
panel1.Enabled:=False;
SBNAplicar.Enabled:=true;

mtipo:=8;
end;

procedure TFrm_Tab01.RGTREGClick(Sender: TObject);
begin
RGTIPOC.Enabled:=True;
if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=True;
   RG_TPSEL.Visible   :=True;
   CB_BARRAS.Visible  :=True;
   RG_EXTENSO.Visible :=True;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   RGTIPOC.Enabled    :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible   :=True;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=True;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=3 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=True;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=4 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=True;
   ZERAR.Visible      :=True;
   GroupBox1.Visible  :=True;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=5 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
   RG_TPSEL.ItemIndex :=0;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=False;
   CAMPO_EMP.Visible  :=True;
   CAMPO_IE.Visible   :=False;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=6 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=True;
   RG_EXTENSO.Visible :=True;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=true;
   RGTIPOC.Enabled    :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=true;
   CONCATENADO.Visible:=False;
   end
else if RGTREG.ItemIndex=7 then
   begin
   MENSAGEM.Visible   :=False;
   SISTEMA.Visible    :=False;
   CARACTER.Visible   :=False;
   CAMPO.Visible      :=False;
//   RG_TPSEL.Visible   :=False;
   CB_BARRAS.Visible  :=False;
   RG_EXTENSO.Visible :=False;
   OPERADOR.Visible   :=False;
   ZERAR.Visible      :=False;
   GroupBox1.Visible  :=true;
   RGTIPOC.Enabled    :=False;
   CAMPO_EMP.Visible  :=False;
   CAMPO_IE.Visible   :=False;
   if ValFloat(TAMANHO.Text)<=0 then
      TAMANHO.Text:='132';
   CONCATENADO.Visible:=true;
   end;

end;

procedure TFrm_Tab01.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab01.Qr_TDVOPCalcFields(DataSet: TDataSet);
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

procedure TFrm_Tab01.OPERADORExit(Sender: TObject);
begin
RGTIPOC.ItemIndex:=1;
if Trim(TAMANHO.Text)='' then
   TAMANHO.Text     :='15';
if Formato.ItemIndex<0 then
   FORMATO.ItemIndex:=7;
if RGALINHAR.ItemIndex<0 then
   RGALINHAR.ItemIndex:=1;

end;

procedure TFrm_Tab01.OPERADORChange(Sender: TObject);
begin
RGTIPOC.ItemIndex:=1;
TAMANHO.Text:='15';
FORMATO.Text:='###,##0.00';
RGALINHAR.ItemIndex:=1;

end;

procedure TFrm_Tab01.MENSAGEMKeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM.Text)>140) and (key<>#8) then
   begin
   ShowMessage('Tamanho Maximo Permitido 140 Caracteres');
   key:=#0;
   end;
end;

procedure TFrm_Tab01.CAMPO_EMPExit(Sender: TObject);
var
x: Integer;
begin
CAMPO_EMP.Text:=CAMPO_EMP.items.Strings[CAMPO_EMP.itemindex];
if CAMPO_EMP.Text='' then
   begin
   MessageDlg('Campo Inválido.!',mtWarning,[mbOk],0);
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
procedure TFrm_Tab01.GroupBox2Exit(Sender: TObject);
begin
GroupBox2.Visible:=False;
end;

procedure TFrm_Tab01.RG_EXTENSOClick(Sender: TObject);
begin
if (RG_EXTENSO.ItemIndex=0) or (RG_EXTENSO.ItemIndex=3) then
   groupbox2.Visible:=False
else
   GroupBox2.Visible:=True;
end;

procedure TFrm_Tab01.CAMPO_IEExit(Sender: TObject);
begin
if CANCELAR.Focused then
   exit;
CAMPO_IE.Text:=CAMPO_IE.items.Strings[CAMPO_IE.itemindex];
if Trim(TAMANHO.Text)='' then
   TAMANHO.Text     :='15';
if Formato.ItemIndex<0 then
   FORMATO.ItemIndex:=7;
RGALINHAR.ItemIndex:=1;
RGTIPOC.ItemIndex:=1;

end;

procedure TFrm_Tab01.CONCATENADOExit(Sender: TObject);
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

procedure TFrm_Tab01.RG_TPSELClick(Sender: TObject);
begin
if RGTIPOC.Itemindex<>1 then
   begin
   if (RG_TPSEL.Itemindex=1)  then
      begin
      MessageDLG('Instrução Inválida para este tipo de Campo!',mtwarning,[mbOk],0);
      RG_TPSEL.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab01.SBNAplicarClick(Sender: TObject);
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
if fmensagem('Quer Incrementar os Valores?',0,['1','2'],2)<>mrYes then
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
         MessageDlg('Não Sera Possivel Fazer o Incremento nas colunas, '+#13
                   +'pois a mesma podera ficar com valores inferior a 1(um)',mtWarning,[mbOk],0);

         DM1.Tb_TDV.GotoBookmark(mPosReg);
         SBNAplicar.Enabled:=true;
         exit;
         end;
      end;
   if mIncLIn<>0 then
      begin
      if (DM1.Tb_TDVTLIN.Value+mIncLin)<=0 then
         begin
         MessageDlg('Não Sera Possivel Fazer o Incremento nas linhas, '+#13
                   +'pois a mesma podera ficar com valores inferior a 1(um)',mtWarning,[mbOk],0);

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

procedure TFrm_Tab01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
