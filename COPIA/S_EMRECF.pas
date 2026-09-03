unit S_EMRECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,func,lerarq,S_DM1,S_PECF, Buttons, DB,
  DBTables, ExtCtrls;

type
  TFrm_EMRECF = class(TForm)
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label1: TLabel;
    CODIMP: TEdit;
    nomimp: TEdit;
    CB_VIS: TCheckBox;
    CB_TPIMP: TCheckBox;
    Qr_MI01: TQuery;
    Qr_MI01aliq01: TFloatField;
    Qr_MI01CMCODEMP: TFloatField;
    Qr_MI01CMCODIMP: TFloatField;
    Qr_MI01CMDATA: TDateTimeField;
    Qr_MI01CMCONRED: TFloatField;
    Qr_MI01CMCOO: TFloatField;
    Qr_MI01CMVDABRUT: TFloatField;
    Qr_MI01CMVDALIQ: TFloatField;
    Qr_MI01CMCUPCAN: TFloatField;
    Qr_MI01CMACRECUP: TFloatField;
    Qr_MI01CMDESCUP: TFloatField;
    Qr_MI01CMISSCUP: TFloatField;
    Qr_MI01CMISENTAS: TFloatField;
    Qr_MI01CMNAOINC: TFloatField;
    Qr_MI01CMSUBTRI: TFloatField;
    Qr_MI01valiq01: TFloatField;
    Qr_MI01aliq02: TFloatField;
    Qr_MI01valiq02: TFloatField;
    Qr_MI01aliq03: TFloatField;
    Qr_MI01valiq03: TFloatField;
    Qr_MI01aliq04: TFloatField;
    Qr_MI01valiq04: TFloatField;
    Qr_MI01aliq05: TFloatField;
    Qr_MI01valiq05: TFloatField;
    Qr_MI01serie: TStringField;
    Qr_MI01ordem: TStringField;
    Qr_MI01desccanc: TFloatField;
    Qr_MI01totimp: TFloatField;
    Qr_MI01outrosrec: TFloatField;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    NOMRES: TEdit;
    Funcao: TEdit;
    observ: TMemo;
    procedure MDT1Exit(Sender: TObject);
    procedure CODIMPKeyPress(Sender: TObject; var Key: Char);
    procedure CODIMPExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure Qr_MI01CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EMRECF: TFrm_EMRECF;
  maliquota: array [1..5] of Real;

implementation

uses Sr_EMRECF, S_MRECF;

{$R *.dfm}

procedure TFrm_EMRECF.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text))
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_EMRECF.CODIMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_MRECF, Frm_MRECF);
   Frm_MRECF.Edit1.Text:=key;
   Frm_MRECF.BBnAtu.Click;
   Frm_MRECF.Edit1.SelStart:=1;
   Frm_MRECF.Edit1.SelLength:=1;
   Frm_MRECF.PC1.ActivePageIndex:=1;
   Frm_MRECF.ShowModal;
   CODIMP.Text:=DM1.Tb_ECFCFCAIXA.AsString;
   Frm_MRECF.Free;
   key:=#0;
   end
else
   begin
   If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
   end;
end;

procedure TFrm_EMRECF.CODIMPExit(Sender: TObject);
begin
if valfloat(CODIMP.Text)<1 then
   begin
   nomimp.Text:='Todas...';
   CODIMP.Text:='';
   end
else if flcadecf(1,0,Trim(CODIMP.Text)) then
   nomimp.Text:=DM1.Tb_ECFCFNOME.Value
else
   begin
   MessageDlg('Impressora não Cadastrada!',mtWarning,[mbOk],0);
   CODIMP.SetFocus;
   end;


end;

procedure TFrm_EMRECF.bbImprimirClick(Sender: TObject);
var
minc: String;
mqtd: Integer;
begin
if Trim(MDT1.Text)='/  /' then
   begin
   MessageDlg('Data campo Obrigatório!',mtWarning,[mbOk],0);
   mdt1.SetFocus;
   exit;
   end;
bbImprimir.Enabled:=false;
maliquota[1]:=0;
maliquota[2]:=0;
maliquota[3]:=0;
maliquota[4]:=0;
maliquota[5]:=0;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select CM2ALIQ from CADMI02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CM2VALOR<>0  '
                  +iif(Trim(CODIMP.Text)='','',' and CM2CODIMP=0'+Trim(CODIMP.Text))
                  +iif(Trim(MDT1.Text)='/  /','',' and CM2DATA='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39))
                  +' group by CM2ALIQ ');
DM1.Query1.Open;
mqtd:=1;
While not DM1.Query1.Eof do
   begin
   if mqtd <6 then
      begin
      maliquota[mqtd]:=DM1.Query1.Fields[0].Value;
      mqtd:=mqtd+1;
      end;
   DM1.Query1.Next;
   end;


minc:=' where ';
Qr_MI01.Close;
Qr_MI01.SQL.Clear;
Qr_MI01.SQL.add('Select * from CADMI01 ');
if DM1.Qr_Tid.Locate('TINOME','CADECF',[]) then
   begin
   Qr_MI01.SQL.Add(minc+' CMCODEMP=0'+IntToStr(codemp));
   minc:=' and ';
   end;
if Trim(CODIMP.Text)<>'' then
   begin
   Qr_MI01.SQL.add(minc+' CMCODIMP=0'+Trim(CODIMP.Text));
   minc:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_MI01.SQL.add(minc+' CMDATA='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   minc:=' and ';
   end;
{if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_MI01.SQL.add(minc+' CMDATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   minc:=' and ';
   end;
   }
Qr_MI01.SQL.Add(' order by CMCODIMP ');
Qr_MI01.Open;
if Qr_MI01.Eof then
   begin
   MessageDlg('Nada ha ser impresso!',mtWarning,[mbOk],0);
   bbImprimir.Enabled:=true;
   exit;
   end;


if CB_TPIMP.Checked then
   begin
   end
else
   begin
   mtvdabru  :=0;
   mtdesccanc:=0;
   mtisscup  :=0;
   mtvdaliq  :=0;
   mtIsentas :=0;
   mtSubTr   :=0;
   mTvaliq1  :=0;
   mTvaliq2  :=0;
   mTvaliq3  :=0;
   mTvaliq4  :=0;
   mTvaliq5  :=0;
   mTTotImp  :=0;
   mToutros  :=0;
   if Qr_EMRECF=nil then
      Application.CreateForm(TQr_EMRECF, Qr_EMRECF);
   if maliquota[01]>0 then
      Qr_EMRECF.Qr_Aliq1.Caption:=FormatFloat(mcasas, maliquota[1])+'%'
   else
      Qr_EMRECF.Qr_Aliq1.Caption:='    %';
   if maliquota[02]>0 then
      Qr_EMRECF.Qr_Aliq2.Caption:=FormatFloat(mcasas, maliquota[2])+'%'
   else
      Qr_EMRECF.Qr_Aliq2.Caption:='    %';
   if maliquota[03]>0 then
      Qr_EMRECF.Qr_Aliq3.Caption:=FormatFloat(mcasas, maliquota[3])+'%'
   else
      Qr_EMRECF.Qr_Aliq3.Caption:='    %';

   if maliquota[04]>0 then
      Qr_EMRECF.Qr_Aliq4.Caption:=FormatFloat(mcasas, maliquota[4])+'%'
   else
      Qr_EMRECF.Qr_Aliq4.Caption:='    %';
   if maliquota[05]>0 then
      Qr_EMRECF.Qr_Aliq5.Caption:=FormatFloat(mcasas, maliquota[5])+'%'
   else
      Qr_EMRECF.Qr_Aliq5.Caption:='    %';
   Qr_EMRECF.lb_numero.Caption  :='';
   Qr_EMRECF.lb_nome.Caption    :=DM1.Tb_EmpRAZAO.Value;
   Qr_EMRECF.lb_endereco.Caption:=Trim(DM1.Tb_EmpENDERECO.Text)+' '+Trim(DM1.Tb_EmpBAIRRO.Value)+' '+Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value;
   Qr_EMRECF.lb_insc.Caption    :=DM1.Tb_EmpINSCRICAO.Value;
   Qr_EMRECF.lb_cgc.Caption     :=FormatFloat('00"."000"."000"."0000"/"00',DM1.Tb_EmpCGC.Value);
   Qr_EMRECF.Qr_Obser.Lines.Clear;
   Qr_EMRECF.Qr_Obser.Lines.Add(Observ.Text);
   Qr_EMRECF.Lb_Resp.Caption  :=NOMRES.Text;
   Qr_EMRECF.Lb_Funcao.Caption:=Funcao.Text;
   verteclado(0);
   Qr_EMRECF.PreviewModal;
   Qr_EMRECF.Free;
   Qr_EMRECF:=nil;
   end;
bbImprimir.Enabled:=true;
end;

procedure TFrm_EMRECF.FormCreate(Sender: TObject);
begin
NOMRES.Text:=DM1.Tb_EmpRESPONS.Value;
Funcao.Text:=DM1.Tb_EmpFUNCAORES.Value;
end;

procedure TFrm_EMRECF.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EMRECF.Qr_MI01CalcFields(DataSet: TDataSet);
begin
Qr_MI01totimp.Value:=0;
Qr_MI01desccanc.Value :=Qr_MI01CMCUPCAN.Value+Qr_MI01CMDESCUP.Value;
Qr_MI01outrosrec.Value:=0;
if (maliquota[1]=0) and
   (maliquota[2]=0) and
   (maliquota[3]=0) and
   (maliquota[4]=0) and
   (maliquota[5]=0) then
   exit;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select CM2ALIQ,CM2VALOR from CADMI02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CM2VALOR<>0 '
                  +' AND CM2CODIMP=0'+Qr_MI01CMCODIMP.AsString
                  +' and CM2DATA='+chr(39)+FormatDateTime(fdt, Qr_MI01CMDATA.Value)+chr(39)
                  +' order by CM2ALIQ ');
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   if DM1.Query1.Fields[0].AsFloat=maliquota[1] then
      Qr_MI01valiq01.Value:=DM1.Query1.Fields[1].AsFloat
   else if DM1.Query1.Fields[0].AsFloat=maliquota[2] then
      Qr_MI01valiq02.Value:=DM1.Query1.Fields[1].AsFloat
   else if DM1.Query1.Fields[0].AsFloat=maliquota[3] then
      Qr_MI01valiq03.Value:=DM1.Query1.Fields[1].AsFloat
   else if DM1.Query1.Fields[0].AsFloat=maliquota[4] then
      Qr_MI01valiq04.Value:=DM1.Query1.Fields[1].AsFloat
   else if DM1.Query1.Fields[0].AsFloat=maliquota[5] then
      Qr_MI01valiq05.Value:=DM1.Query1.Fields[1].AsFloat;
   Qr_MI01totimp.Value:=Qr_MI01totimp.Value+arredonda((DM1.Query1.Fields[1].Value*DM1.Query1.Fields[0].Value/100),2);
   DM1.Query1.Next;
   end;

end;

procedure TFrm_EMRECF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
