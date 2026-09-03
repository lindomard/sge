unit S_Tab_IE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls,S_DM1,func,lerarq,
  S_DM2, DB, DBTables;

type
  TFrm_Tab_IE = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CB_OP1: TComboBox;
    CB_OPER1: TComboBox;
    CB_OP2: TComboBox;
    CB_OPER2: TComboBox;
    CB_OP3: TComboBox;
    DBMemo1: TDBMemo;
    CB_OP0: TComboBox;
    CB_OPER0: TComboBox;
    Label6: TLabel;
    NOMCAM: TEdit;
    Src_TDVOP: TDataSource;
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
    Qr_TDVOPcampo1: TStringField;
    Qr_TDVOPcampo2: TStringField;
    Qr_TDVOPmoper: TStringField;
    Qr_TDVOPTOTOP0: TStringField;
    Qr_TDVOPTOOP0: TStringField;
    Qr_TDVOPTOPER0: TStringField;
    Qr_TDVOPcampo0: TStringField;
    Qr_TDVOPcampo3: TStringField;
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
    procedure Qr_TDVOPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBCANCELARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure Src_TDVOPDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab_IE: TFrm_Tab_IE;
  mcodigo,mlidos,mqtd,mopcao: Integer;
implementation

uses S_Tab00;

{$R *.dfm}

procedure TFrm_Tab_IE.Qr_TDVOPCalcFields(DataSet: TDataSet);
begin
mlidos:=0; mqtd:=0;
Qr_TDVOPcampo0.Value:=Qr_TDVOPTODESOP0.Value;
Qr_TDVOPcampo1.Value:=Qr_TDVOPTODESOP1.Value;
Qr_TDVOPcampo2.Value:=Qr_TDVOPTODESOP2.Value;
Qr_TDVOPcampo3.Value:=Qr_TDVOPTODESOP3.Value;
Qr_TDVOPcond01.Value:=Qr_TDVOPTODCOND01.Value;
Qr_TDVOPcond02.Value:=Qr_TDVOPTODCOND02.Value;

Qr_TDVOPmoper.Value:='Seleciona ('+Trim(Qr_TDVOPcampo0.Value)+Qr_TDVOPTOPER0.Value+Trim(Qr_TDVOPcampo1.Value);
if Trim(Qr_TDVOPTOOP2.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER1.Value+Qr_TDVOPcampo2.Value;
if Trim(Qr_TDVOPTOOP3.Value)<>'' then
   Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+Qr_TDVOPTOPER2.Value+Qr_TDVOPcampo3.Value;
Qr_TDVOPmoper.Value:=Qr_TDVOPmoper.Value+') para '+Qr_TDVOPTOCOND01.Value;

end;

procedure TFrm_Tab_IE.FormCreate(Sender: TObject);
begin

fltdvop(0,0,Frm_Tab00.Qr_RelTCDOC.Value,Frm_Tab00.Qr_RelTCNOME.Value,mpesq,'99','','');


Qr_TDVOP.Close;
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
else
   Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
Qr_TDVOP.ParamByName('DOC').AsString   := Frm_Tab00.Qr_RelTCDOC.Value;
Qr_TDVOP.ParamByName('NOME').AsString  := Frm_Tab00.Qr_RelTCNOME.Value;
Qr_TDVOP.ParamByName('TDET').AsString  := '99';
Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
Qr_TDVOP.Open;

DM2.Tb_Arq.First;
Qr_TDVOP.First;
mlidos:=0; mqtd:=0;
While not DM2.Tb_Arq.Eof do
   begin
   if (DM2.Tb_ArqCATIPO.Value<>'N') and
      (DM2.Tb_ArqCATIPO.Value<>'D') then
      begin
      DM2.Tb_Arq.Next;
      Continue;
      end;
   if DM1.Tb_TDVCATCQTDDIV.Value>1 then
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


end;

procedure TFrm_Tab_IE.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab_IE.BBINCLUIRClick(Sender: TObject);
begin
BBINCLUIR.Enabled :=False;
BBALTERAR.Enabled :=False;
BBGRAVAR.Enabled  :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
Panel3.Enabled    :=True;
NOMCAM.Text:='';
NOMCAM.SetFocus;
CB_OP0.Text:='';
CB_OP1.Text:='';
CB_OP2.Text:='';
CB_OP3.Text:='';
CB_OPER0.Text:='';
CB_OPER1.Text:='';
CB_OPER2.Text:='';
// valor de mopcao 0-Alterar 1-Incluir
mopcao:=1;

end;

procedure TFrm_Tab_IE.BBALTERARClick(Sender: TObject);
begin
Panel3.Enabled:=True;
CB_OP0.SetFocus;
mcodigo:=Qr_TDVOPTOCODIGO.AsInteger;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBCANCELAR.Enabled:=true;
mopcao:=0;
// valor de mopcao 0-Alterar 1-Incluir

end;

procedure TFrm_Tab_IE.BBGRAVARClick(Sender: TObject);
var
mlidos, mposi, mqtd: Integer;
mtipoc: TFieldType;
achou,mnomec,mnomec2,mcondt1,mcondt2: String;
mcampot1, mcampot2: String;
mtop0,mtop1,mtop2,mtop3,moper0,moper1,moper2,mcampo0,mcampo1,mcampo2,mcampo3: String;
begin
if Trim(NOMCAM.Text)='' then
   begin
   MessageDlg('Campo a ser gerado Preenchimento obrigatório!',mtWarning,[mbOk],0);
   NOMCAM.SetFocus;
   exit;
   end;
NOMCAM.Text:=Trim(NOMCAM.Text);
mqtd:=length(NOMCAM.Text);
if NOMCAM.Text[1] in ['0'..'9'] then
   begin
   MessageDlg('Campo a ser gerado não pode começar com números!',mtWarning,[mbOk],0);
   NOMCAM.SetFocus;
   exit;
   end;
for mlidos:=1 to mqtd do
   begin
   if not (NOMCAM.Text[mlidos] in ['0'..'9'])
      and not (NOMCAM.Text[mlidos] in ['A'..'Z'])
      and not (NOMCAM.Text[mlidos] in ['a'..'z'])
      and not (NOMCAM.Text[mlidos] in ['_']) then

      begin
      MessageDlg('Campo a ser gerado não pode conter este caractere: '+NOMCAM.Text[mlidos],mtWarning,[mbOk],0);
      exit;
      end;
   end;
mqtd:=length(NOMCAM.Text);
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

   if copy(CB_OP0.Text,1,11)='Tot. Mes - ' then
      begin
      mnomec:=copy(CB_OP0.Text,15,length(CB_OP0.Text)-13);
      if DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
         mcampo0:=Trim(DM2.Tb_ArqCANOMCAM.Value)+'_'+copy(CB_OP0.Text,12,2);
      end
   else if copy(CB_OP0.Text,1,8)='Operador' then
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
   if copy(CB_OP1.Text,1,11)='Tot. Mes - ' then
      begin
      mnomec:=copy(CB_OP1.Text,15,length(CB_OP1.Text)-13);
      if DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
         mcampo1:=Trim(DM2.Tb_ArqCANOMCAM.Value)+'_'+copy(CB_OP1.Text,12,2);
      end
   else if copy(CB_OP1.Text,1,8)='Operador' then
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
   if copy(CB_OP2.Text,1,11)='Tot. Mes - ' then
      begin
      mnomec:=copy(CB_OP2.Text,15,length(CB_OP2.Text)-13);
      if DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
         mcampo2:=Trim(DM2.Tb_ArqCANOMCAM.Value)+'_'+copy(CB_OP2.Text,12,2);
      end
   else if copy(CB_OP2.Text,1,8)='Operador' then
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
   if copy(CB_OP3.Text,1,11)='Tot. Mes - ' then
      begin
      mnomec:=copy(CB_OP3.Text,15,length(CB_OP3.Text)-13);
      if DM2.Tb_Arq.Locate('CANOMREG',mnomec,[]) then
         mcampo3:=Trim(DM2.Tb_ArqCANOMCAM.Value)+'_'+copy(CB_OP3.Text,12,2);
      end
   else if copy(CB_OP3.Text,1,8)='Operador' then
      mcampo3:=CB_OP3.Text
   else if copy(CB_OP3.Text,1,13)='Saldo Inicial' then
      mcampo3:=CB_OP3.Text
   else if copy(CB_OP3.Text,1,13)='Venda Periodo' then
      mcampo0:=CB_OP3.Text
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

if mopcao=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADTDV where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.Sql.add(' TCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.SQl.add(' TDOC='+chr(39)+mreltab+chr(39)
                     +' and TNOME='+chr(39)+Frm_Tab00.NOMREL.Text+chr(39)
                     +' and TTIPO=0'
                     +' and TCAMPO='+chr(39)+Trim(NOMCAM.Text)+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.fields[0].AsInteger>0 then
      begin
      MessageDlg('Ja Existe um Campo o Mesmo Nome. Nome: '+NOMCAM.Text+'.'+#13
                +'Use outro Nome.',mtWarning,[mbOk],0);
      NOMCAM.SetFocus;
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select count(*)  from CTDVOP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME',mpesq,[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                     +' TODOC='+chr(39)+mreltab+chr(39)
                     +' and TONOME='+chr(39)+Frm_Tab00.NOMREL.Text+chr(39)
                     +' and TOTDET=99 and TOCOND01='+chr(39)+Trim(NOMCAM.Text)+chr(39));
   DM1.Query2.Open;
   if DM1.Query2.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Ja Existe um Campo o Mesmo Nome. Nome: '+NOMCAM.Text+'.'+#13
                +'Use outro Nome.',mtWarning,[mbOk],0);
      NOMCAM.SetFocus;
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select max(TOCODIGO) from CTDVOP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME',mpesq,[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                     +' TODOC='+chr(39)+mreltab+chr(39)
                     +' and TONOME='+chr(39)+Frm_Tab00.NOMREL.Text+chr(39)
                     +' and TOTDET=99');
   DM1.Query2.Open;
   mcodigo:=DM1.Query2.Fields[0].AsInteger+1;
   DM2.Tb_Op.Append;
   end
else
   begin
   if not fltdvop(0,0,Frm_Tab00.Qr_RelTCDOC.Value,Frm_Tab00.Qr_RelTCNOME.Value,mpesq,'99',IntToStr(mcodigo),'') then
      exit;
   DM2.Tb_Op.Edit;
   end;

DM2.Tb_OPTOCODIGO.Value:=mcodigo;
DM2.Tb_OPTOCODEMP.Value:=codemp;
DM2.Tb_OPTODOC.Value   :=mreltab;
DM2.Tb_OPTONOME.Value  :=Frm_Tab00.NOMREL.Text;
DM2.Tb_OPTOTDET.Value  :=99;
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
DM2.Tb_OPTODCOND01.Value:='';
DM2.Tb_OPTODCOND02.Value:='';
DM2.Tb_OPTOCONDT1.Value :='N';
DM2.Tb_OPTOCONDT2.Value :='';
DM2.Tb_OPTOCOND01.Value :=NOMCAM.Text;
DM2.Tb_OPTOCOND02.Value :='';
DM2.Tb_OPTOCONDOP.Value :='';
DM2.Tb_OP.Post;
Qr_TDVOP.Close;
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_TDVOP.ParamByName('CODEMP').AsString := '%'
else
   Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
Qr_TDVOP.ParamByName('DOC').AsString   := Frm_Tab00.Qr_RelTCDOC.Value;
Qr_TDVOP.ParamByName('NOME').AsString  := Frm_Tab00.Qr_RelTCNOME.Value;
Qr_TDVOP.ParamByName('TDET').AsString  := '99';
Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
Qr_TDVOP.Open;
Qr_tdvop.First;
BBCANCELAR.Click;

end;

procedure TFrm_Tab_IE.BBCANCELARClick(Sender: TObject);
begin
Panel3.Enabled:=False;
Qr_TDVOP.First;
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBEXCLUIR.Enabled:=True;

end;

procedure TFrm_Tab_IE.BBEXCLUIRClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADTDV where ');
if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   DM1.Query1.Sql.add(' TCODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQl.add(' TDOC='+chr(39)+mreltab+chr(39)
                  +' and TNOME='+chr(39)+Frm_Tab00.NOMREL.Text+chr(39)
                  +' and TTIPO=0'
                  +' and TCAMPO='+chr(39)+Trim(NOMCAM.Text)+chr(39));
DM1.Query1.Open;
if DM1.Query1.fields[0].AsInteger>0 then
   begin
   MessageDlg('Tem Relatorio Eque Esta Usando Este Operador.',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir Este Registros?',0,['1','2'],2)=mrYes then
   begin
   if not fltdvop(0,0,mreltab,Frm_Tab00.NOMREL.Text,mpesq,'99',IntTosTr(mcodigo),'') then
      begin
      DM2.Tb_Op.Delete;
      Qr_TDVOP.Close;
      if DM1.Qr_tid.Locate('TINOME',mpesq,[]) then
         Qr_TDVOp.ParamByName('CODEMP').AsString := '%'
      else
         Qr_TDVOP.ParamByName('CODEMP').AsFloat := codemp;
      Qr_TDVOP.ParamByName('DOC').AsString   := mreltab;
      Qr_TDVOP.ParamByName('NOME').AsString  := Frm_Tab00.NOMREL.Text;
      Qr_TDVOP.ParamByName('TDET').AsFloat   := 99;
      Qr_TDVOP.ParamByName('CODIGO').AsString:= '%';
      Qr_TDVOP.Open;
      mqtd:=0;
      MessageDlg('Registro Excluido!',mtInformation,[mbOk],0);
      end;
   end;
end;

procedure TFrm_Tab_IE.Src_TDVOPDataChange(Sender: TObject; Field: TField);
begin
mcodigo:=Qr_TDVOPTOCODIGO.AsInteger;
NOMCAM.Text :=Qr_TDVOPTOCOND01.Value;
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
end;

procedure TFrm_Tab_IE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;


end;

end.
