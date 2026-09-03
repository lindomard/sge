unit S_Oper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM2,S_DM1,func,db,dbtables, ExtCtrls,S_TRelT, Grids, DBGrids,
  StdCtrls, Buttons, DBCtrls;

type
  TFrm_Oper = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Src_TDVOP: TDataSource;
    Label1: TLabel;
    CB_OP1: TComboBox;
    Label2: TLabel;
    CB_OPER1: TComboBox;
    CB_OP2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    CB_OPER2: TComboBox;
    Label5: TLabel;
    CB_OP3: TComboBox;
    Label6: TLabel;
    NOPER: TEdit;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
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
    DBMemo1: TDBMemo;
    Qr_TDVOPcampo1: TStringField;
    Qr_TDVOPcampo2: TStringField;
    Qr_TDVOPmoper: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    CB_OP0: TComboBox;
    CB_OPER0: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Qr_TDVOPTOTOP0: TStringField;
    Qr_TDVOPTOOP0: TStringField;
    Qr_TDVOPTOPER0: TStringField;
    Qr_TDVOPcampo0: TStringField;
    Qr_TDVOPcampo3: TStringField;
    Label12: TLabel;
    CAMPO1: TComboBox;
    CONDICAO: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    CAMPO2: TComboBox;
    Qr_TDVOPTOCONDT1: TStringField;
    Qr_TDVOPTOCOND01: TStringField;
    Qr_TDVOPTOCONDOP: TStringField;
    Qr_TDVOPTOCONDT2: TStringField;
    Qr_TDVOPTOCOND02: TStringField;
    Qr_TDVOPcond01: TStringField;
    Qr_TDVOPcond02: TStringField;
    Qr_TDVOPTODESOP0: TStringField;
    Qr_TDVOPTODESOP1: TStringField;
    Qr_TDVOPTODESOP2: TStringField;
    Qr_TDVOPTODESOP3: TStringField;
    Qr_TDVOPTODCOND01: TStringField;
    Qr_TDVOPTODCOND02: TStringField;
    Qr_TDVOPTOTDET: TFloatField;
    Qr_TDVOPTOCODIGO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBCANCELARClick(Sender: TObject);
    procedure Qr_TDVOPCalcFields(DataSet: TDataSet);
    procedure Src_TDVOPDataChange(Sender: TObject; Field: TField);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure NOPERExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Oper: TFrm_Oper;
  mopcao: Integer;
  mlidos, mqtd: Integer;
  marquso: String;

implementation

uses S_TPro, lerarq;

{$R *.dfm}

procedure TFrm_Oper.FormCreate(Sender: TObject);
begin
if mreltab2<>'' then
   begin
   Frm_Oper.Caption:='Configuracao de Operadores p/o Sub-Detalhe do Relatorio: '+Frm_Trelt.Qr_RelTCNOME.Value+'/'+marq2;
   marquso:=mreltab2;
   end
else
  begin
  Frm_Oper.Caption:='Configuracao de Operadores p/o Relatorio: '+Frm_Trelt.Qr_RelTCNOME.Value;
  marquso:=mreltab;
  end;

DM2.Tb_Arq.Close;
DM2.Tb_Arq.SQL.Clear;
DM2.Tb_Arq.SQL.Add('Select * From CADARQ where '
                  +' CANOMARQ='+chr(39)+marquso+CHR(39));
DM2.Tb_Arq.Open;
Qr_TDVOP.Close;
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
else
   Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
Qr_TDVOP.ParamByName('NOME').AsString  := Frm_TRelt.Qr_RelTCNOME.Value;
//Qr_TDVOP.ParamByName('TDET').AsFloat   := mrelat; // Estava com todos
Qr_TDVOP.ParamByName('TDET').AsString  := '%';

Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
Qr_TDVOP.Open;
While not Qr_TDVOP.Eof do
   begin
   CB_OP0.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP1.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP2.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP3.Items.Add(Qr_TDVOPdescricao.Value);
   Qr_TDVOP.Next;
   end;
Qr_TDVOP.First;
mlidos:=0; mqtd:=0;
While not DM2.Tb_Arq.Eof do
   begin
   CAMPO1.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO2.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   if (DM2.Tb_ArqCATIPO.Value<>'N') and
      (DM2.Tb_ArqCATIPO.Value<>'D') then
      begin
      DM2.Tb_Arq.Next;
      Continue;
      end;
   CB_OP0.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CB_OP1.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CB_OP2.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CB_OP3.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
if mreltab='CADLDR' then
   begin
   CB_OP0.Items.Add('Saldo Inicial');
   CB_OP1.Items.Add('Saldo Inicial');
   CB_OP2.Items.Add('Saldo Inicial');
   CB_OP3.Items.Add('Saldo Inicial');
   end;
if mreltab='CADAJU' then
   begin
   CB_OP0.Items.Add('Saldo Inicial');
   CB_OP1.Items.Add('Saldo Inicial');
   CB_OP2.Items.Add('Saldo Inicial');
   CB_OP3.Items.Add('Saldo Inicial');
   end;
CB_OP0.Items.Add('Venda Periodo');
CB_OP1.Items.Add('Venda Periodo');
CB_OP2.Items.Add('Venda Periodo');
CB_OP3.Items.Add('Venda Periodo');

end;

procedure TFrm_Oper.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Oper.BBINCLUIRClick(Sender: TObject);
var
mcod: Integer;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select TOCODIGO from CTDVOP Where ');
if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   DM1.Query1.Sql.add(' TOCODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQl.add(' TODOC='+chr(39)+Frm_TRelt.Qr_RelTCDOC.Value+chr(39)
                  +' and TONOME='+chr(39)+Frm_TRelt.Qr_RelTCNOME.Value+chr(39)
//                  +' and TOTDET='+IntToStr(mrelat) // estava com todos
                  +' order by TOCODIGO');
DM1.Query1.Open;
if DM1.Query1.Eof then
   NOPER.Text:='1'
else
   begin
   mcod:=1;
   DM1.Query1.First;
   While not DM1.Query1.Eof do
      begin
      if mcod<>DM1.Query1.Fields[0].AsInteger then
         Break;
      DM1.Query1.Next;
      mcod:=mcod+1;
      end;
   if mcod>100 then
      begin
      ShowMessage('Número de maximo Operadores Esgotados.');
      BBCANCELAR.Click;
      abort;
      end;
   NOPER.Text:=InttoStr(mcod);
   end;
BBINCLUIR.Enabled :=False;
BBALTERAR.Enabled :=False;
BBGRAVAR.Enabled  :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
Panel3.Enabled    :=True;
NOPER.Enabled     := True;
NOPER.SetFocus;
CB_OP0.Text:='';
CB_OP1.Text:='';
CB_OP2.Text:='';
CB_OP3.Text:='';
CB_OPER0.Text:='';
CB_OPER1.Text:='';
CB_OPER2.Text:='';
CAMPO1.Text:='';
CAMPO2.Text:='';
CONDICAO.Text:='';
// valor de mopcao 0-Alterar 1-Incluir
mopcao:=1;
end;

procedure TFrm_Oper.BBALTERARClick(Sender: TObject);
begin
if mrelat<>Qr_TDVOPTOTDET.AsInteger then
   begin
   ShowMessage('Este Operador não pode ser alterado neste detalhe');
   exit;
   end;
NOPER.Enabled :=False;
Panel3.Enabled:=True;
CB_OP0.SetFocus;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBCANCELAR.Enabled:=true;
mopcao:=0;
// valor de mopcao 0-Alterar 1-Incluir

end;

procedure TFrm_Oper.BBGRAVARClick(Sender: TObject);

var
mlidos, mposi, mqtd: Integer;
mtipoc: TFieldType;
achou,mnomec,mnomec2,mcondt1,mcondt2: String;
mcampot1, mcampot2: String;
mtop0,mtop1,mtop2,mtop3,moper0,moper1,moper2,mcampo0,mcampo1,mcampo2,mcampo3: String;
begin
moper0:='';
moper1:='';
moper2:='';
mcampo0:='';
mcampo1:='';
mcampo2:='';
mcampo3:='';
mtop0:='S';
mtop1:='S';
mtop2:='S';
mtop3:='S';
if Trim(CB_OPER0.Text)<>'' then
   Begin
   if CB_Oper0.Text='Somar' then
      moper0:='+'
   else if cb_Oper0.Text='Multiplicar' then
      moper0:='*'
   else if CB_OPER0.Text='Dividir' then
      moper0:='/'
   else if CB_OPER0.Text='Subtrair' then
      moper0:='-'
   else if CB_OPER0.Text='Porcentagem' then
      moper0:='P';
   end;
if Trim(CB_OPER1.Text)<>'' then
   Begin
   if CB_Oper1.Text='Somar' then
      moper1:='+'
   else if cb_Oper1.Text='Multiplicar' then
      moper1:='*'
   else if CB_OPER1.Text='Dividir' then
      moper1:='/'
   else if CB_OPER1.Text='Subtrair' then
      moper1:='-'
   else if CB_OPER1.Text='Porcentagem' then
      moper1:='P';
   end;

if Trim(CB_OPER2.Text)<>'' then
   Begin
   if CB_Oper2.Text='Somar' then
      moper2:='+'
   else if cb_Oper2.Text='Multiplicar' then
      moper2:='*'
   else if CB_OPER2.Text='Dividir' then
      moper2:='/'
   else if CB_OPER2.Text='Subtrair' then
      moper2:='-'
   else if CB_OPER2.Text='Porcentagem' then
      moper2:='P';
   end;
// OPERADOR 0
if CB_OP0.Text<>'' then
   begin
   if copy(CB_OP0.Text,1,8)='Operador' then
      mcampo0:=CB_OP0.Text
   else if copy(CB_OP0.Text,1,13)='Saldo Inicial' then
      mcampo0:=CB_OP0.Text
   else if copy(CB_OP0.Text,1,13)='Venda Periodo' then
      mcampo0:=CB_OP0.Text
   else
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_OP0.Text,[]) then
         mcampo0:=DM2.Tb_ArqCANOMCAM.Value;
      end;
   end;
// campo 1
if CB_OP1.Text<>'' then
   begin
   if copy(CB_OP1.Text,1,8)='Operador' then
      mcampo1:=CB_OP1.Text
   else if copy(CB_OP1.Text,1,13)='Saldo Inicial' then
      mcampo1:=CB_OP1.Text
   else if copy(CB_OP1.Text,1,13)='Venda Periodo' then
      mcampo1:=CB_OP1.Text
   else
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_OP1.Text,[]) then
         mcampo1:=DM2.Tb_ArqCANOMCAM.Value;
      end;
   end;

// fim do campo 1


// campo 2
if CB_OP2.Text<>'' then
   begin
   if copy(CB_OP2.Text,1,8)='Operador' then
      mcampo2:=CB_OP2.Text
   else if copy(CB_OP2.Text,1,13)='Saldo Inicial' then
      mcampo2:=CB_OP2.Text
   else if copy(CB_OP2.Text,1,13)='Venda Periodo' then
      mcampo2:=CB_OP2.Text
   else
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_OP2.Text,[]) then
         mcampo2:=DM2.Tb_ArqCANOMCAM.Value;
      end;
   end;

// fim do campo 2
// inicio do campo 3
// campo 2
if CB_OP3.Text<>'' then
   begin
   if copy(CB_OP3.Text,1,8)='Operador' then
      mcampo3:=CB_OP3.Text
   else if copy(CB_OP3.Text,1,13)='Saldo Inicial' then
      mcampo3:=CB_OP3.Text
   else if copy(CB_OP3.Text,1,13)='Venda Periodo' then
      mcampo3:=CB_OP3.Text
   else
      begin
      if DM2.Tb_Arq.Locate('CANOMREG',CB_OP3.Text,[]) then
         mcampo3:=DM2.Tb_ArqCANOMCAM.Value;
      end;
   end;

if (Trim(CB_OP1.Text)<>'') and (mcampo1='') then
   begin
   Try
     CB_OP1.Text:=FormatFloat('##0.00',StrToFloat(CB_OP1.Text));
     mcampo1:=CB_OP1.Text;
     mtop1:='V';
   except
     ShowMessage('Campo/Valor Inalido!');
     CB_OP1.SetFocus;
     abort;
     end;
   end;
if (Trim(CB_OP2.Text)<>'') and (mcampo2='') then
   begin
   Try
     CB_OP2.Text:=FormatFloat('##0.00',StrToFloat(CB_OP2.Text));
     mcampo2:=CB_OP2.Text;
     mtop2:='V';
   except
     ShowMessage('Campo/Valor Inalido!');
     CB_OP2.SetFocus;
     abort;
     end;
   end;
if (Trim(CB_OP3.Text)<>'') and (mcampo3='') then
   begin
   Try
     CB_OP3.Text:=FormatFloat('##0.00',StrToFloat(CB_OP3.Text));
     mcampo3:=CB_OP3.Text;
     mtop3:='V';
   except
     ShowMessage('Campo/Valor Inalido!');
     CB_OP3.SetFocus;
     abort;
     end;
   end;

// fim do campo 3

if Trim(mcampo0)='' then
   begin
   ShowMessage('Campo/Valor Preenchimento Obrigatório.');
   CB_OP0.SetFocus;
   abort;
   end;
if Trim(mcampo3)<>'' then
   begin
   if (Trim(mcampo2)='') or (Trim(mcampo1)='') Then
      begin
      ShowMessage('Nao Pode Pular Campo.');
      CB_OP1.SetFocus;
      abort;
      end;
   end;

if Trim(mcampo2)<>'' then
   begin
   if Trim(mcampo1)='' Then
      begin
      ShowMessage('Nao Pode Pular Campo.');
      CB_OP1.SetFocus;
      abort;
      end;
   end;

if (Trim(moper0)<>'') and (Trim(mcampo1)='')  then
   begin
   ShowMessage('Campo/valor Tem quer Ser Preenchido.');
   CB_OP1.SetFocus;
   abort;
   end;
if (Trim(moper0)='') and (Trim(mcampo1)<>'')  then
   begin
   ShowMessage('Operador Tem quer Ser Preenchido.');
   CB_OPER0.SetFocus;
   abort;
   end;
if (Trim(moper1)<>'') and (Trim(mcampo1)='')  then
   begin
   ShowMessage('Campo/Valor Tem quer Ser Preenchido.');
   CB_OP1.SetFocus;
   abort;
   end;
if (Trim(moper1)<>'') and (Trim(mcampo2)='')  then
   begin
   ShowMessage('Campo/Valor Tem quer Ser Preenchido.');
   CB_OP2.SetFocus;
   abort;
   end;

if (Trim(moper2)<>'') and (Trim(mcampo3)='')  then
   begin
   ShowMessage('Campo/Valor Tem quer Ser Preenchido.');
   CB_OP3.SetFocus;
   abort;
   end;

if (Trim(moper2)='') and (Trim(mcampo3)<>'')  then
   begin
   ShowMessage('Operador Tem que Ser Preenchido.');
   CB_OPER2.SetFocus;
   abort;
   end;
if (Trim(moper1)='') and (Trim(mcampo2)<>'')  then
   begin
   ShowMessage('Operador Tem que Ser Preenchido.');
   CB_OPER1.SetFocus;
   abort;
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
   if DM2.Tb_ARq.Locate('CANOMREG',CAMPO1.Text,[]) then
      begin
      mcondt1:=DM2.Tb_ArqCATIPO.Value;
      end;

   if DM2.Tb_ARq.Locate('CANOMREG',CAMPO2.Text,[]) then
      begin
      mcondt2:=DM2.Tb_ArqCATIPO.Value;
      if mcondt1<>mcondt2 then
         begin
         if mcondt1='N' then
            mcampot1:='Numerico'
         else if mcondt1='D' then
            mcampot1:='Data'
         else if mcondt1='H' then
            mcampot1:='Hora'
         else
            mcampot1:='String';
         if mcondt2='N' then
            mcampot2:='Numerico'
         else if mcondt2='D' then
            mcampot2:='Data'
         else if mcondt2='H' then
            mcampot2:='Hora'
         else
            mcampot2:='String';
         ShowMessage('Invalido Comparar Campo: '+mcampot1+' com '+mcampot2);
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



fltdvop(0,0,mreltab,Frm_TrelT.Qr_RelTCNOME.Value,mpesq,Inttostr(mrelat),Trim(NOPER.Text),'');


if mopcao=1 then
   begin
   DM2.Tb_OP.Append;
   DM2.Tb_OPTOCODIGO.Value:=StrToInt('0'+NOPER.Text);
   end
else
   begin
   DM2.Tb_OP.Edit;
   end;
DM2.Tb_OPTOCODEMP.Value:=codemp;
DM2.Tb_OPTODOC.Value   :=Frm_TRelt.Qr_RelTCDOC.Value;
DM2.Tb_OPTONOME.Value  :=Frm_TRelt.Qr_RelTCNOME.Value;
DM2.Tb_OPTOTDET.Value  :=mrelat;
DM2.Tb_OPTOTOP0.Value  :=mtop0;
DM2.Tb_OPTODESOP0.Value:=CB_OP0.Text;
DM2.Tb_OPTOOP0.Value   :=mcampo0;
DM2.Tb_OPTOPER0.Value  :=moper0;
DM2.Tb_OPTOTOP1.Value  :=mtop1;
DM2.Tb_OPTODESOP1.Value:=CB_OP1.Text;
DM2.Tb_OPTOOP1.Value   :=mcampo1;
DM2.Tb_OPTOPER1.Value  :=moper1;
DM2.Tb_OPTOTOP2.Value  :=mtop2;
DM2.Tb_OPTODESOP2.Value:=CB_OP2.Text;
DM2.Tb_OPTOOP2.Value   :=mcampo2;
DM2.Tb_OPTOPER2.Value  :=moper2;
DM2.Tb_OPTOTOP3.Value  :=mtop3;
DM2.Tb_OPTODESOP3.Value:=CB_OP3.Text;
DM2.Tb_OPTOOP3.Value   :=mcampo3;
DM2.Tb_OPTODCOND01.Value:=CAMPO1.Text;
DM2.Tb_OPTODCOND02.Value:=CAMPO2.Text;
DM2.Tb_OPTOCONDT1.Value :=mcondt1;
DM2.Tb_OPTOCONDT2.Value :=mcondt2;
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO1.Text,[]) Then
   DM2.Tb_OPTOCOND01.Value :=DM2.Tb_ArqCANOMCAM.Value
else
   DM2.Tb_OPTOCOND01.Value :=CAMPO1.Text;
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO2.Text,[]) Then
   DM2.Tb_OPTOCOND02.Value :=DM2.Tb_ArqCANOMCAM.Value
else
   DM2.Tb_OPTOCOND02.Value :=CAMPO2.Text;
if Trim(CONDICAO.Text)<>'' then
   begin
   CONDICAO.Text:=CONDICAO.Text+'   ';
   mposi:=1;
   while true do
      begin
      if CONDICAO.Text[mposi]=' ' then
         begin
         DM2.Tb_OPTOCONDOP.Value:=copy(CONDICAO.Text,1,mposi-1);
         break;
         end;
      mposi:=mposi+1;
      end;
   end;


DM2.Tb_Op.Post;
Qr_TDVOP.Close;
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
else
   Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
Qr_TDVOP.ParamByName('NOME').AsString  := Frm_TRelt.Qr_RelTCNOME.Value;
Qr_TDVOP.ParamByName('TDET').AsFloat   := mrelat;
Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
Qr_TDVOP.Open;
mqtd:=0;
While true do
   begin
   if CB_OP0.Items[mqtd]='' then
      break
   else if copy(CB_OP0.Items[mqtd],1,8)='Operador' then
      begin
      CB_OP0.Items.Delete(mqtd);
      CB_OP1.Items.Delete(mqtd);
      CB_OP2.Items.Delete(mqtd);
      CB_OP3.Items.Delete(mqtd);
      end;
   mqtd:=mqtd+1;
   end;
While not Qr_TDVOP.Eof do
   begin
   CB_OP0.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP1.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP2.Items.Add(Qr_TDVOPdescricao.Value);
   CB_OP3.Items.Add(Qr_TDVOPdescricao.Value);
   Qr_TDVOP.Next;
   end;
Qr_tdvop.First;
BBCANCELAR.Click;
end;
procedure TFrm_Oper.BBCANCELARClick(Sender: TObject);
begin
Panel3.Enabled:=False;
Qr_TDVOP.First;
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBEXCLUIR.Enabled:=True;
end;

procedure TFrm_Oper.Qr_TDVOPCalcFields(DataSet: TDataSet);
begin
Qr_TDVOPdescricao.Value:='Operador.: '+FormatFloat('000',Qr_TDVOPTOCODIGO.Value);
mlidos:=0; mqtd:=0;
Qr_TDVOPcampo0.Value:=Qr_TDVOPTODESOP0.Value;
Qr_TDVOPcampo1.Value:=Qr_TDVOPTODESOP1.Value;
Qr_TDVOPcampo2.Value:=Qr_TDVOPTODESOP2.Value;
Qr_TDVOPcampo3.Value:=Qr_TDVOPTODESOP3.Value;
Qr_TDVOPcond01.Value:=Qr_TDVOPTODCOND01.Value;
Qr_TDVOPcond02.Value:=Qr_TDVOPTODCOND02.Value;

Qr_TDVOPmoper.Value:='OPERADOR='+Trim(Qr_TDVOPcampo0.Value)+Qr_TDVOPTOPER0.Value+Trim(Qr_TDVOPcampo1.Value);
if Trim(Qr_TDVOPTOOP2.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER1.Value+Qr_TDVOPcampo2.Value;
if Trim(Qr_TDVOPTOOP3.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER2.Value+Qr_TDVOPcampo3.Value;

end;

procedure TFrm_Oper.Src_TDVOPDataChange(Sender: TObject; Field: TField);
begin
NOPER.Text:=Qr_TDVOPTOCODIGO.AsString;
CB_OP0.Text:=Qr_TDVOPcampo0.Value;
CB_OP1.Text:=Qr_TDVOPcampo1.Value;
CB_OP2.Text:=Qr_TDVOPcampo2.Value;
CB_OP3.Text:=Qr_TDVOPcampo3.Value;
if Qr_TDVOPTOPER0.Value='+' then
   CB_OPER0.Text:='Somar'
else if Qr_TDVOPTOPER0.Value='*' then
   CB_OPER0.Text:='Multiplicar'
else if Qr_TDVOPTOPER0.Value='/' then
   CB_OPER0.Text:='Dividir'
else if Qr_TDVOPTOPER0.Value='-' then
   CB_OPER0.Text:='Subtrair'
else if Qr_TDVOPTOPER0.Value='P' then
   CB_OPER0.Text:='Porcentagem'
else
   CB_OPER0.Text:='';
if Qr_TDVOPTOPER1.Value='+' then
   CB_OPER1.Text:='Somar'
else if Qr_TDVOPTOPER1.Value='*' then
   CB_OPER1.Text:='Multiplicar'
else if Qr_TDVOPTOPER1.Value='/' then
   CB_OPER1.Text:='Dividir'
else if Qr_TDVOPTOPER1.Value='-' then
   CB_OPER1.Text:='Subtrair'
else if Qr_TDVOPTOPER1.Value='P' then
   CB_OPER1.Text:='Porcentagem'
else
   CB_OPER1.Text:='';

if Qr_TDVOPTOPER2.Value='+' then
   CB_OPER2.Text:='Somar'
else if Qr_TDVOPTOPER2.Value='*' then
   CB_OPER2.Text:='Multiplicar'
else if Qr_TDVOPTOPER2.Value='/' then
   CB_OPER2.Text:='Dividir'
else if Qr_TDVOPTOPER2.Value='-' then
   CB_OPER2.Text:='Subtrair'
else if Qr_TDVOPTOPER2.Value='P' then
   CB_OPER2.Text:='Porcentagem'
else
   CB_OPER2.Text:='';
CAMPO1.Text:=Qr_TDVOPcond01.Text;
CAMPO2.Text:=Qr_TDVOPcond02.Text;
CONDICAO.Text:=Qr_TDVOPTOCONDOP.Value;


end;

procedure TFrm_Oper.BBEXCLUIRClick(Sender: TObject);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADTDV where ');
if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   DM1.Query1.Sql.add(' TCODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQl.add(' TDOC='+chr(39)+Frm_TrelT.Qr_RelTCDOC.Value+chr(39)
                  +' and TNOME='+chr(39)+Frm_TRelt.Qr_RelTCNOME.Value+chr(39)
                  +' and TTIPO=4'
                  +' and TCAMPO='+chr(39)+NOPER.Text+chr(39));
DM1.Query1.Open;
if DM1.Query1.fields[0].AsInteger>0 then
   begin
   ShowMessage('Tem Relatorio que Esta Usando Este Operador.');
   exit;
   end;
if fMensagem('Quer Realmente Excluir Este Registros?',0,['1','2'],2)=mrYes then
   begin

   if fltdvop(0,0,Frm_TrelT.Qr_RelTCDOC.Value,Frm_TrelT.Qr_RelTCNOME.Value,mpesq,Inttostr(mrelat),Trim(NOPER.Text),'') then
      begin
      DM2.Tb_Op.Delete;
      Qr_TDVOP.Close;
      if DM1.Qr_tid.Locate('TINOME',mpesq,[]) then
         Qr_TDVOp.ParamByName('CODEMP').AsString := '%'
      else
         Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
      Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
      Qr_TDVOP.ParamByName('NOME').AsString  := Frm_TRelt.Qr_RelTCNOME.Value;
      Qr_TDVOP.ParamByName('TDET').AsFloat   := mrelat;
      Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
      Qr_TDVOP.Open;
      mqtd:=0;
      While true do
         begin
         if CB_OP0.Items[mqtd]='' then
            break
         else if copy(CB_OP0.Items[mqtd],1,8)='Operador' then
            begin
            CB_OP0.Items.Delete(mqtd);
            CB_OP1.Items.Delete(mqtd);
            CB_OP2.Items.Delete(mqtd);
            CB_OP3.Items.Delete(mqtd);
            end;
         mqtd:=mqtd+1;
         end;
      While not Qr_TDVOP.Eof do
         begin
         CB_OP0.Items.Add(Qr_TDVOPdescricao.Value);
         CB_OP1.Items.Add(Qr_TDVOPdescricao.Value);
         CB_OP2.Items.Add(Qr_TDVOPdescricao.Value);
         CB_OP3.Items.Add(Qr_TDVOPdescricao.Value);
         Qr_TDVOP.Next;
         end;
      end;
      Qr_tdvop.First;
   end;
end;

procedure TFrm_Oper.NOPERExit(Sender: TObject);
begin
CB_OP0.Items.Add('Operador.: '+FormatFloat('000',StrToFloat('0'+NOPER.Text)));
CB_OP1.Items.Add('Operador.: '+FormatFloat('000',StrToFloat('0'+NOPER.Text)));
CB_OP2.Items.Add('Operador.: '+FormatFloat('000',StrToFloat('0'+NOPER.Text)));
CB_OP3.Items.Add('Operador.: '+FormatFloat('000',StrToFloat('0'+NOPER.Text)));
end;

procedure TFrm_Oper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
