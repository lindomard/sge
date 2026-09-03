unit S_TUFCa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_DM2,S_dm1, Db, Dbtables, Buttons, DBCtrls,
  Grids, DBGrids, func, yupack;


type
  TFrm_TUFCa = class(TForm)
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
    PRIMEIRO: TYusoftGradientButton;
    ULTIMO: TYusoftGradientButton;
    PROXIMO: TYusoftGradientButton;
    ANTERIOR: TYusoftGradientButton;
    INCLUIR: TYusoftGradientButton;
    ALTERAR: TYusoftGradientButton;
    GRAVAR: TYusoftGradientButton;
    EXCLUIR: TYusoftGradientButton;
    CANCELAR: TYusoftGradientButton;
    SAIR: TYusoftGradientButton;
    Label13: TLabel;
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
    procedure RGTREGClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fTproca01va(mtipo: Integer): Boolean;

var
  Frm_TUFCa: TFrm_TUFCa;
  mtipo: Integer;
  mcondt1, mcondt2: String;

implementation

uses S_TPro;

{$R *.dfm}

procedure TFrm_TUFCa.RGTREGExit(Sender: TObject);
begin
RGTIPOC.Enabled:=True;
if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=False;
   CAMPO.Visible:=True;
   RGTIPOC.Enabled:=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible:=True;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=False;
   CAMPO.Visible:=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=True;
   CARACTER.Visible:=False;
   CAMPO.Visible:=False;
   end
else
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=True;
   CAMPO.Visible:=False;
   end;

end;

procedure TFrm_TUFCa.LINHAKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TUFCa.CARACTERKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(CARACTER.Text)>1) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TUFCa.FormCreate(Sender: TObject);
var
mlidos,mqtd: Integer;

begin
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
   Label1.Caption:='Linha....:';
   Label13.Caption:='';
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
   Frm_TProCa.Caption:='Tabulacao do Sub-Detalhe do Relatorio: '+Frm_TPro.NOMREL.Caption;
   end;



DM1.Tb_TDV.Close;
DM1.Tb_TDV.ParamByName('CODEMP').AsFloat :=Codemp;
DM1.Tb_TDV.ParamByName('DOC').AsString   :=Frm_Tpro.NOMARQ.Caption;
DM1.Tb_TDV.ParamByName('NOME').AsString :=Frm_Tpro.NOMREL.Caption;
DM1.Tb_TDV.ParamByName('LOCAL').AsInteger:=mrelat;
DM1.Tb_TDV.ParamByName('SEQ').AsString   :='%';
DM1.Tb_TDV.Open;

mlidos:=1;
{
msubdet = 1 Sub-Detalhes do pedido
}
if msubdet=1 then
   begin
   mqtd:=DM2.Qr_Tped.FieldCount;
   for mlidos:=1 to mqtd do
      begin
      CAMPO.Items.Add(DM2.Qr_Tped.Fields[mlidos-1].DisplayLabel);
      CAMPO1.Items.Add(DM2.Qr_Tped.Fields[mlidos-1].DisplayLabel);
      CAMPO2.Items.Add(DM2.Qr_Tped.Fields[mlidos-1].DisplayLabel);
      end;
   end
else if mreltab='CADPRO' then
   begin
   mqtd:=DM2.Qr_Tpro.FieldCount;
   for mlidos:=1 to mqtd do
      begin
      CAMPO.Items.Add(DM2.Qr_Tpro.Fields[mlidos-1].DisplayLabel);
      CAMPO1.Items.Add(DM2.Qr_Tpro.Fields[mlidos-1].DisplayLabel);
      CAMPO2.Items.Add(DM2.Qr_Tpro.Fields[mlidos-1].DisplayLabel);
      end;
   end
else if mreltab='CADFOR' then
   begin
   mqtd:=DM2.Qr_TFor.FieldCount;
   for mlidos:=1 to mqtd do
      begin
      CAMPO.Items.Add(DM2.Qr_TFor.Fields[mlidos-1].DisplayLabel);
      CAMPO1.Items.Add(DM2.Qr_TFor.Fields[mlidos-1].DisplayLabel);
      CAMPO2.Items.Add(DM2.Qr_TFor.Fields[mlidos-1].DisplayLabel);
      end;
   end
else if mreltab='CADCLI' then
   begin
   mqtd:=DM2.Qr_TCli.FieldCount;
   for mlidos:=1 to mqtd do
      begin
      CAMPO.Items.Add(DM2.Qr_TCli.Fields[mlidos-1].DisplayLabel);
      CAMPO1.Items.Add(DM2.Qr_TCli.Fields[mlidos-1].DisplayLabel);
      CAMPO2.Items.Add(DM2.Qr_TCli.Fields[mlidos-1].DisplayLabel);
      end;
   end;


CAMPO.ItemIndex:=0;
CAMPO1.ItemIndex:=-1;
campo2.ItemIndex:=-1;
CONDICAO.ItemIndex:=-1;
mtipo:=8;
DM1.Tb_Tdv.First;
end;

procedure TFrm_TUFCa.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_TUFCa.CAMPOExit(Sender: TObject);
VAR
mlidos,mqtd: Integer;
mtipoc: TFieldType;
mnomec: String;
begin
mlidos:=1;


if msubdet=1 then
   mqtd:=DM2.Qr_Tped.FieldCount
else if mreltab='CADPRO' then
   mqtd:=DM2.Qr_Tpro.FieldCount
else if mreltab='CADFOR' then
   mqtd:=DM2.Qr_TFor.FieldCount
else if mreltab='CADCLI' then
   mqtd:=DM2.Qr_TCli.FieldCount;

for mlidos:=1 to mqtd do
   begin
   if msubdet=1 then
      begin
      mnomec:=DM2.Qr_Tped.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_Tped.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADPRO' Then
      begin
      mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADFOR' then
      begin
      mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADCLI' then
      begin
      mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
      end;

   if CAMPO.Text=mnomec then
      begin
      if (mtipoc=ftfloat) or
         (mtipoc=FtWord)  or
         (mtipoc=ftCurrency) or
         (mtipoc=ftInteger)  then
         begin
         RGTIPOC.ItemIndex:=1;
         TAMANHO.Text:='15';
         Formato.ItemIndex:=7;
         RGALINHAR.ItemIndex:=1;
         end
      else if (mtipoc=ftDateTime) or
              (mtipoc=ftDate) then
              begin
              RGTIPOC.ItemIndex:=2;
              TAMANHO.Text:='10';
              Formato.ItemIndex:=3;
              RGALINHAR.ItemIndex:=0;
              end
       else if (mtipoc=ftTime) then
              begin
              RGTIPOC.ItemIndex:=3;
              Tamanho.Text:='8';
              Formato.ItemIndex:=6;
              RGALINHAR.ItemIndex:=0;
              end
       else
            begin
            RGTIPOC.ItemIndex:=0;
            if msubdet=1 then
               TAMANHO.Text:=IntToStr(DM2.Qr_TPed.fields[mlidos-1].displayWidth)
            else if mreltab='CADPRO' then
               TAMANHO.Text:=IntToStr(DM2.Qr_Tpro.fields[mlidos-1].displayWidth)
            else if mreltab='CADFOR' then
               TAMANHO.Text:=IntToStr(DM2.Qr_TFor.fields[mlidos-1].displayWidth)
            else if mreltab='CADCLI' then
               TAMANHO.Text:=IntToStr(DM2.Qr_TCli.fields[mlidos-1].displayWidth);
            end;
      end;
   end;
RGTIPOC.Update;
RGTIPOC.Enabled:=False;
end;

procedure TFrm_TUFCa.CAMPO1Exit(Sender: TObject);
var
mlidos,mqtd: Integer;
achou: String;
mtipoc: TFieldType;
mnomec: String;

begin
if Trim(campo1.Text)='' then
   abort;
achou:='N';
mlidos:=1;
if msubdet=1 then
   mqtd:=DM2.Qr_Tped.FieldCount
else if mreltab='CADPRO' then
   mqtd:=DM2.Qr_Tpro.FieldCount
else if mreltab='CADFOR' then
   mqtd:=DM2.Qr_TFor.FieldCount
else if mreltab='CADCLI' then
   mqtd:=DM2.Qr_TCli.FieldCount;

for mlidos:=1 to mqtd do
   begin
   if msubdet=1 then
      begin
      mnomec:=DM2.Qr_TPed.Fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TPed.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADPRO' Then
      begin
      mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADFOR' then
      begin
      mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADCLI' then
      begin
      mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
      end;

   if CAMPO1.Text=mnomec then
      begin
      achou:='S';
      if (mtipoc=ftfloat) or
         (mtipoc=FtWord)  or
         (mtipoc=ftCurrency) or
         (mtipoc=ftInteger)  then
         mcondt1:='N'
      else if (mtipoc=ftDateTime) or
              (mtipoc=ftDate) then
         mcondt1:='D'
      else if (mtipoc=ftTime) then
         mcondt1:='H'
      else
         mcondt1:='S'
      end;
   end;

if achou='N' then
   begin
   ShowMessage('Campo Invalido!');
   CAMPO1.SetFocus;
   end
else
   begin
   CONDICAO.ItemIndex:=-1;
   CONDICAO.Text:='';
   campo2.ItemIndex  :=-1;
   CAMPO2.Text:='';
   end;

end;

procedure TFrm_TUFCa.CAMPO2Exit(Sender: TObject);
var
mlidos,mposi,mqtd: Integer;
achou: String;
mcampo1, mcampo2: String;
mtipoc: TFieldType;
mnomec: String;

begin
achou:='N';
mlidos:=1;
if msubdet=1 then
   mqtd:=DM2.Qr_Tped.FieldCount
else if mreltab='CADPRO' then
   mqtd:=DM2.Qr_Tpro.FieldCount
else if mreltab='CADFOR' then
   mqtd:=DM2.Qr_TFor.FieldCount
else if mreltab='CADCLI' then
   mqtd:=DM2.Qr_TCli.FieldCount;
for mlidos:=1 to mqtd do
   begin
   if msubdet=1 then
      begin
      mnomec:=DM2.Qr_Tped.Fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_Tped.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADPRO' Then
      begin
      mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADFOR' then
      begin
      mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
      end
   else if mreltab='CADCLI' then
      begin
      mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
      mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
      end;

   if CAMPO2.Text=mnomec then
      begin
      achou:='S';
      if (mtipoc=ftfloat) or
         (mtipoc=FtWord)  or
         (mtipoc=ftCurrency) or
         (mtipoc=ftInteger)  then
         mcondt2:='N'
      else if (mtipoc=ftDateTime) or
              (mtipoc=ftDate) then
         mcondt2:='D'
      else if (mtipoc=ftTime) then
         mcondt2:='H'
       else
         mcondt2:='S'
      end;
   end;

if achou='S' then
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
if achou='N' then
   begin
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
if achou='S' then
   mcondt2:='C'
else
   mcondt2:='V';
end;

procedure TFrm_TUFCa.MENSAGEMExit(Sender: TObject);
begin
if Trim(MENSAGEM.Text)<>'' then
   begin
   TAMANHO.text:=IntToStr(Length(MENSAGEM.Text));
   FORMATO.ItemIndex:=-1;
   RGALINHAR.ItemIndex:=0;
   end;
end;

procedure TFrm_TUFCa.SISTEMAExit(Sender: TObject);
begin
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

procedure TFrm_TUFCa.Src_TDVDataChange(Sender: TObject; Field: TField);
var
mposi, mqtd: Integer;
mtipoc: TFieldType;
mnomec: String;
begin
if mtipo=8 then
   begin
   LINHA.Text         :=DM1.Tb_TDVTLIN.AsString;
   COLUNA.Text        :=DM1.Tb_TDVTCOL.AsString;
   RGFONTE.ItemIndex  :=DM1.Tb_TDVTFONTE.Value;
   RGTREG.ItemIndex   :=DM1.Tb_TDVTTIPO.Value;
   RGALINHAR.ItemIndex:=DM1.Tb_TDVTALINHAR.Value;
   FORMATO.Text       :=DM1.Tb_TDVTFORMATO.Value;
   if RGTREG.ItemIndex=0 then
      begin
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
   if msubdet=1 then
      mqtd:=DM2.Qr_Tped.FieldCount
   else if mreltab='CADPRO' then
      mqtd:=DM2.Qr_Tpro.FieldCount
   else if mreltab='CADFOR' then
      mqtd:=DM2.Qr_TFor.FieldCount
   else if mreltab='CADCLI' then
      mqtd:=DM2.Qr_TCli.FieldCount;
   For mposi:=1 to mqtd do
      begin
      if msubdet=1 then
         mnomec:=DM2.Qr_TPed.Fields[mposi-1].FieldName
      else if mreltab='CADPRO' Then
         begin
         mnomec:=DM2.Qr_Tpro.fields[mposi-1].FieldName;
         end
      else if mreltab='CADFOR' then
         begin
         mnomec:=DM2.Qr_TFor.fields[mposi-1].FieldName;
         end
      else if mreltab='CADCLI' then
         begin
         mnomec:=DM2.Qr_TCli.fields[mposi-1].FieldName;
         end;


      if mnomec=Trim(DM1.Tb_TDVTCOND02.Value) then
         CAMPO2.ItemIndex:=mposi-1;
      if mnomec=Trim(DM1.Tb_TDVTCOND01.Value) then
         CAMPO1.ItemIndex:=mposi-1;
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
   end;
end;

procedure TFrm_TUFCa.PRIMEIROClick(Sender: TObject);
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

procedure TFrm_TUFCa.ULTIMOClick(Sender: TObject);
begin
if not DM1.Tb_TDV.Eof then
   dm1.Tb_TDV.last;
ftproCa01va(0);

end;

procedure TFrm_TUFCa.PROXIMOClick(Sender: TObject);
begin
if not dm1.Tb_TDV.Eof then
   DM1.Tb_TDV.Next;
fTProCa01va(0);

end;

procedure TFrm_TUFCa.ANTERIORClick(Sender: TObject);
begin
if not DM1.Tb_TDV.Bof then
   DM1.Tb_TDV.Prior;
ftproca01va(0);

end;

procedure TFrm_TUFCa.INCLUIRClick(Sender: TObject);
begin
LINHA.Text         :='';
COLUNA.Text        :='';
RGFONTE.ItemIndex  :=DM1.Tb_TDVTFONTE.Value;
RGTREG.ItemIndex   :=0;
RGALINHAR.ItemIndex:=0;
FORMATO.Text       :='';
RGTREG.ItemIndex   :=0;
CAMPO.Text   :='';
MENSAGEM.Text:='';
SISTEMA.Text :='';
CARACTER.Text:='';
RGTIPOC.ItemIndex:=0;
TAMANHO.Text:='';
CAMPO2.Text :='';
CAMPO1.Text :='';
CONDICAO.Text:='';
panel1.Enabled:=True;
DBGrid1.Enabled:=False;
fTproca01va(1);
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
mtipo:=0;
LINHA.SetFocus;

end;

procedure TFrm_TUFCa.ALTERARClick(Sender: TObject);
begin
if DM1.Tb_TDV.Eof then
   begin
   ShowMessage('Nao a registro a ser alterado');
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
mtipo:=1;
end;

procedure TFrm_TUFCa.GRAVARClick(Sender: TObject);
var
mlidos,mqtd, mposi, mreg, mreg1: Integer;
achou, mcampo1, mcampo2, oper: String;
mtipoc: TFieldType;
mnomec,mnomec2: String;

begin
if (RGTREG.ItemIndex=3) and (Trim(TAMANHO.Text)='') then
   begin
   ShowMessage('Favor digitar a quantidade de Vezes que o Caractere sera Repetido');
   TAMANHO.SetFocus;
   abort;
   end;
if StrtoInt('0'+Trim(LINHA.Text))<=0 then
   begin
   ShowMessage('Número de linha Invalido.');
   LINHA.SetFocus;
   Abort;
   end;
if StrToInt('0'+Trim(COLUNA.Text))<=0 then
   begin
   ShowMessage('Numero de Coluna Invalido');
   COLUNA.SetFocus;
   abort;
   end;
if RGTREG.ItemIndex=0 then
   begin
   if Trim(CAMPO.Text)=''then
      begin
      ShowMessage('Nome do Campo Invalido.');
      CAMPO.SetFocus;
      abort;
      end;
   end
else if RGTREG.ItemIndex=1 then
   begin
   if Trim(MENSAGEM.Text)='' Then
      begin
      ShowMessage('Mensagem Invalida');
      MENSAGEM.SetFocus;
      abort;
      end;
   end
else if RGTREG.ItemIndex=2 then
   begin
   if Trim(SISTEMA.Text)='' then
      begin
      ShowMessage('Campo do Sistema Invalido');
      SISTEMA.SetFocus;
      Abort;
      end;
   end
else
   begin
   if Trim(CARACTER.Text)='' Then
      begin
      ShowMessage('Caractere Invalido');
      CARACTER.SetFocus;
      Abort;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   if (Trim(CAMPO2.Text)='') or (Trim(CONDICAO.Text)='') then
      begin
      ShowMessage('Condicao Invalida');
      CAMPO1.SetFocus;
      abort;
      end;
   end
else
   begin
   if (Trim(CAMPO2.Text)<>'') or (Trim(CONDICAO.Text)<>'') then
      begin
      ShowMessage('Condicao Invalida');
      CAMPO1.SetFocus;
      abort;
      end;
   end;
if Trim(CAMPO1.Text)<>'' then
   begin
   achou:='N';
   mlidos:=1;
   if msubdet=1 then
      mqtd:=DM2.Qr_TPed.FieldCount
   else if mreltab='CADPRO' then
      mqtd:=DM2.Qr_Tpro.FieldCount
   else if mreltab='CADFOR' then
      mqtd:=DM2.Qr_TFor.FieldCount
   else if mreltab='CADCLI' then
      mqtd:=DM2.Qr_TCli.FieldCount;
   for mlidos:=1 to mqtd do
      begin
      if msubdet=1 then
         begin
         mnomec:=DM2.Qr_Tped.Fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_TPed.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADPRO' Then
         begin
         mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADFOR' then
         begin
         mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADCLI' then
         begin
         mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
         end;

      if CAMPO2.Text=mnomec then
         begin
         achou:='S';
         if (mtipoc=ftfloat) or
            (mtipoc=FtWord)  or
            (mtipoc=ftCurrency) or
            (mtipoc=ftInteger)  then
            mcondt2:='N'
         else if (mtipoc=ftDateTime) or
                 (mtipoc=ftDate) then
            mcondt2:='D'
         else if (mtipoc=ftTime) then
            mcondt2:='H'
         else
            mcondt2:='S'
         end;
      end;
   if achou='S' then
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
   if achou='N' then
      begin
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
   if achou='S' then
      mcondt2:='C'
   else
      mcondt2:='V';
   end;



if mtipo=0 then
   DM1.Tb_TDV.Append
else
   DM1.Tb_TDV.Edit;

DM1.Tb_TDVTCODEMP.Value:=codemp;
DM1.Tb_TDVTDOC.Value   :=Frm_Tpro.NOMARQ.Caption;    // Nome do documento CADPRO-Produto CADCLI-Cliente ...
DM1.Tb_TDVTNOME.Value  :=Frm_TPro.NOMREL.Caption;
DM1.Tb_TDVTLOCAL.Value :=mrelat;                  // local 0-Cabecalho 1-Corpo 2-Rodape 3-Cabecalho do Grupo
DM1.Tb_TDVTCOL.Value   :=StrToInt('0'+COLUNA.Text);
DM1.Tb_TDVTLIN.Value   :=StrToInt('0'+LINHA.Text);
DM1.Tb_TDVTFONTE.Value :=RGFONTE.ItemIndex;
DM1.Tb_TDVTTIPO.Value  :=RGTREG.ItemIndex;
DM1.Tb_TDVTFORMATO.Value :=FORMATO.Text;
DM1.Tb_TDVTALINHAR.Value:=RGALINHAR.ItemIndex;
DM1.Tb_TDVTCONDT1.Value :=mcondt1;
DM1.Tb_TDVTCONDT2.Value :=mcondt2;
DM1.Tb_TDVTCOND02.Value:=CAMPO2.Text;
if Trim(CAMPO1.Text)<>'' then
   begin
   if msubdet=1 then
      mqtd:=DM2.Qr_TPed.FieldCount
   else if mreltab='CADPRO' then
      mqtd:=DM2.Qr_Tpro.FieldCount
   else if mreltab='CADFOR' then
      mqtd:=DM2.Qr_TFor.FieldCount
   else if mreltab='CADCLI' then
      mqtd:=DM2.Qr_TCli.FieldCount;
   For mposi:=1 to mqtd do
      begin
      if msubdet=1 then
         begin
         mnomec:=DM2.Qr_TPed.Fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_Tped.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADPRO' Then
         begin
         mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADFOR' then
         begin
         mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADCLI' then
         begin
         mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
         end;

      if mnomec=Trim(CAMPO1.Text) then
         begin
         if msubdet=1 then
            DM1.Tb_TDVTCOND01.Value:=DM2.Qr_TPed.Fields[mposi-1].FieldName
         else if mreltab='CADPRO' then
            DM1.Tb_TDVTCOND01.Value:=DM2.Qr_Tpro.Fields[mposi-1].FieldName
         else if mreltab='CADFOR' then
            DM1.Tb_TDVTCOND01.Value:=DM2.Qr_TFor.Fields[mposi-1].FieldName
         else if mreltab='CADCLI' then
            DM1.Tb_TDVTCOND01.Value:=DM2.Qr_TCli.Fields[mposi-1].FieldName;
         end;
      if mnomec=Trim(CAMPO2.Text) then
         begin
         if msubdet=1 then
            DM1.Tb_TDVTCOND02.Value:=DM2.Qr_TPed.Fields[mposi-1].FieldName
         else if mreltab='CADPRO' then
            DM1.Tb_TDVTCOND02.Value:=DM2.Qr_Tpro.Fields[mposi-1].FieldName
         else if mreltab='CADFOR' then
            DM1.Tb_TDVTCOND02.Value:=DM2.Qr_TFor.Fields[mposi-1].FieldName
         else if mreltab='CADCLI' then
            DM1.Tb_TDVTCOND02.Value:=DM2.Qr_TCli.Fields[mposi-1].FieldName;

         end;
      end;
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
   mlidos:=1;
   if msubdet=1 then
      mqtd:=DM2.Qr_TPed.FieldCount
   else if mreltab='CADPRO' then
      mqtd:=DM2.Qr_Tpro.FieldCount
   else if mreltab='CADFOR' then
      mqtd:=DM2.Qr_TFor.FieldCount
   else if mreltab='CADCLI' then
      mqtd:=DM2.Qr_TCli.FieldCount;
   For mlidos:=1 to mqtd do
      begin
      if msubdet=1 then
         begin
         mnomec2:=DM2.Qr_Tped.Fields[mlidos-1].FieldName;
         mnomec :=DM2.Qr_TPed.Fields[mlidos-1].DisplayLabel;
         mtipoc :=DM2.Qr_TPed.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADPRO' Then
         begin
         mnomec2:=DM2.Qr_TPro.Fields[mlidos-1].FieldName;
         mnomec:=DM2.Qr_Tpro.fields[mlidos-1].DisplayLabel;
         mtipoc:=DM2.Qr_Tpro.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADFOR' then
         begin
         mnomec:=DM2.Qr_TFor.fields[mlidos-1].DisplayLabel;
         mnomec2:=DM2.Qr_TFor.Fields[mlidos-1].FieldName;
         mtipoc:=DM2.Qr_TFor.Fields[mlidos-1].DataType;
         end
      else if mreltab='CADCLI' then
         begin
         mnomec:=DM2.Qr_TCli.fields[mlidos-1].DisplayLabel;
         mnomec2:=DM2.Qr_TCli.Fields[mlidos-1].FieldName;
         mtipoc:=DM2.Qr_TCli.Fields[mlidos-1].DataType;
         end;
      if CAMPO.Text=mnomec then
         begin
         DM1.Tb_TDVTCAMPO.Value  :=mnomec2;
         end;
      end;
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
else
   begin
   DM1.Tb_TDVTCAMPO.Value :=CARACTER.Text;
   DM1.Tb_TDVTDCAMPO.Value:=CARACTER.Text;

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

procedure TFrm_TUFCa.EXCLUIRClick(Sender: TObject);
begin
if DM1.Tb_TDV.Eof then
   begin
   ShowMessage('Nao ha registro a ser excluido!');
   abort;
   end;
if Application.MessageBox('Quer Realmente Excluir o Registro?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
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

procedure TFrm_TUFCa.CANCELARClick(Sender: TObject);
begin
DM1.Tb_TDV.Cancel;
fTproCa01va(0);
DBGrid1.Enabled:=True;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=false;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;
panel1.Enabled:=False;
mtipo:=8;
end;

procedure TFrm_TUFCa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
fTproCa01va(0);
end;

procedure TFrm_TUFCa.RGTREGClick(Sender: TObject);
begin
RGTIPOC.Enabled:=True;
if RGTREG.ItemIndex=0 then
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=False;
   CAMPO.Visible:=True;
   RGTIPOC.Enabled:=False;
   end
else if RGTREG.ItemIndex=1 Then
   begin
   MENSAGEM.Visible:=True;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=False;
   CAMPO.Visible:=False;
   end
else if RGTREG.ItemIndex=2 Then
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=True;
   CARACTER.Visible:=False;
   CAMPO.Visible:=False;
   end
else
   begin
   MENSAGEM.Visible:=False;
   SISTEMA.Visible :=False;
   CARACTER.Visible:=True;
   CAMPO.Visible:=False;
   end;
end;

procedure TFrm_TUFCa.SAIRClick(Sender: TObject);
begin
close;
end;

end.
