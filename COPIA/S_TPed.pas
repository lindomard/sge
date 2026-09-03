unit S_TPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, db, dbtables, func, s_Cli, S_DM1,
  S_Impres, S_SelEmp;

type
  TFrm_TPed = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    RG_TIPO: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    CODCLI: TEdit;
    NOMCLI: TLabel;
    SpeedButton1: TSpeedButton;
    Qr_Ped: TQuery;
    Qr_PedQTD: TFloatField;
    Qr_PedP2CODPRO: TFloatField;
    Qr_PedPDNOME: TStringField;
    Qr_PedPDUND: TStringField;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_tped: tfrm_impres;
    Form_SelEmp: TFrm_SelEmp;    
  end;

var
  Frm_TPed: TFrm_TPed;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_TPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TPed.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Caption:='Todos...'
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CRAZAO from CADCLI where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
      DM1.Query1.SQL.add(' CCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.Add(' CCODCLI=0'+Trim(CODCLI.text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      ShowMessage('Cliente nao Cadastrado');
      codcli.SetFocus;
      end
   else
      NOMCLI.Caption:=DM1.Query1.Fields[0].AsString;
   end;   
end;

procedure TFrm_TPed.SpeedButton1Click(Sender: TObject);
begin
CODCLI.Text:=fChamaCli(0,'Frm_TPed','');
end;

procedure TFrm_TPed.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      abort
      end
   end;

end;

procedure TFrm_TPed.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      abort
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      abort;
      end;
   end;


end;

procedure TFrm_TPed.BitBtn1Click(Sender: TObject);
begin
Qr_Ped.Close;
Qr_Ped.SQL.Clear;
mcinst4:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

Qr_Ped.SQL.Add('Select '+mcinst4+'  as qtd,P2CODPRO,PDNOME,PDUND'
              +' from CADP02,CADP01,CADPRO where ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.Add(' P2CODEMP=0'+IntToStr(codemp)+' and P1CODEMP=P2CODEMP and ');
Qr_ped.SQL.add(' P1LOTSEQ=P2LOTSEQ and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM and ');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
  Qr_Ped.Sql.add(' PDCODEMP=P2CODEMP and ');
Qr_ped.SQL.Add(' PDCODPRO=P2CODPRO');
if Trim(MDT1.Text)<>'/  /' then
  Qr_Ped.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));


if Trim(MDT2.Text)<>'/  /' then
  Qr_Ped.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

if CODCLI.Text<>'' then
   Qr_Ped.SQl.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
if RG_TIPO.ItemIndex<>0 then
   Qr_Ped.SQL.Add(' and P1TIPO=0'+IntToStr(RG_TIPO.itemIndex-1));

Qr_Ped.SQL.Add(' group by P2CODPRO,PDNOME,PDUND '
              +' order by PDNOME');
Qr_Ped.Open;
if Qr_Ped.Eof then
   begin
   ShowMessage('Nao Tem nada a ser impresso na Condicao Solicitada');
   MDT1.SetFocus;
   Abort;
   end;
form_impres_tped.mpag:=0;
form_impres_tped.mlin:=0;
form_impres_tped.RDprint1.abrir;
While not Qr_Ped.Eof do
   begin
   if form_impres_tped.mlin=0 then
      begin
      form_impres_tped.mpag:=form_impres_tped.mpag+1;
      form_impres_tped.mlin:=form_impres_tped.fImprimirCabecalho(136,'Resumo de Pedidos');
      form_impres_tped.mlin:=form_impres_tped.mlin+1;
      if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
         form_impres_tped.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',60),mneg)
      else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
         form_impres_tped.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
      else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
         form_impres_tped.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
      else
         form_impres_tped.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
      form_impres_tped.mlin:=3;
      if Trim(CODCLI.Text)<>'' then
         begin
         form_impres_tped.mlin:=form_impres_tped.mlin+1;
         form_impres_tped.RDprint1.ImpF(form_impres_tped.mlin,01,Centra('Cliente.: '+TRIM(codcli.Text)+'-'+NOMCLI.Caption,' ',60),mneg);
         end;
      form_impres_tped.mlin:=form_impres_tped.mlin+1;
      form_impres_tped.Rdprint1.Impf(form_impres_tped.mlin,02,'+---------------+-------------+-----+----------------------------------------+',mnormal);
      form_impres_tped.mlin:=form_impres_tped.mlin+1;
      form_impres_tped.Rdprint1.ImpF(form_impres_tped.mlin,02,'|    Código     | Quantidade  | Und |Descricao                               |',mnormal);
      end;
   form_impres_tped.mlin:=form_impres_tped.mlin+1;
   form_impres_tped.RDprint1.ImpF(form_impres_tped.mlin,02,'| '+insere(Qr_PedP2CODPRO.AsString,' ',13)+' | '
                           +insere(Formatfloat('###,##0.00',Qr_Pedqtd.Value),' ',11)+' | '
                           +insere2(Qr_PedPDUND.Value,' ',3)+' |'+insere2(Qr_PedPDNOME.value,' ',40)+'|',mnormal);

   Qr_Ped.Next;
   if Qr_Ped.Eof then
      begin
      form_impres_tped.mlin:=form_impres_tped.mlin+1;
      form_impres_tped.Rdprint1.Impf(form_impres_tped.mlin,02,'Fim...----------+-------------+-----+----------------------------------------+',mnormal);
      end
   else if form_impres_tped.mlin>60 then
      begin
      form_impres_tped.mlin:=form_impres_tped.mlin+1;
      form_impres_tped.Rdprint1.Impf(form_impres_tped.mlin,02,'Continua...-----+-------------+-----+----------------------------------------+',mnormal);
      form_impres_tped.RDprint1.Novapagina;
      form_impres_tped.mlin:=0;
      end;
   end;
{
 +---------------+-------------+-----+----------------------------------------+
 |    Código     | Quantidade  | Und |Descricao                               |
 | 1234567890123 | 1234567.890 | 123 |1234567890123456789012345678901234567890|
 +---------------+-------------+-----+----------------------------------------+
 |    Código     | Quantidade  | Und |Descricao                               |
 | 1234567890123 | 1234567.890 | 123 |1234567890123456789012345678901234567890|
 }
if form_impres_tped.Rdprint1.Setup then form_impres_tped.RDprint1.Fechar;
end;

procedure TFrm_TPed.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_TPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_TPed.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_TPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
