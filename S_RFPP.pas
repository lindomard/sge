unit S_RFPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, db,dbtables,func,S_DM1,S_Impres,lerarq, S_SelEmp;

type
  TFrm_RFPP = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    SAIR: TBitBtn;
    IMPRIMIR: TBitBtn;              
    Qr_FP: TQuery;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPDESC: TStringField;
    Qr_FPTOTAL: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_RFPP : tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RFPP: TFrm_RFPP;


implementation

{$R *.dfm}

procedure TFrm_RFPP.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RFPP.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      end
   end;

end;

procedure TFrm_RFPP.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      end;
   end;


end;

procedure TFrm_RFPP.IMPRIMIRClick(Sender: TObject);
var
mpag, mlin: Integer;
mtotal : Real;
begin
la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
Qr_Fp.Close;
Qr_Fp.SQl.Clear;
Qr_Fp.SQl.add('select fpforma,fpdesc,sum(fpvalor) as TOTAL from FPCP,CADFP'
             +' where '+fla_EmpBaixaAlta(0,'CADDAP','',codemp,'FPCP.FPCODEMP',' and ')
             +' FPCODIGO=FPFORMA ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Fp.SQL.Add(' and FPDATA>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Fp.SQL.Add(' and FPDATA<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
Qr_Fp.SQL.add(' Group by FPFORMA,FPDESC');
Qr_Fp.Sql.SaveToFile(mpastatemp + 'sql.txt');

Qr_Fp.Open;
if Qr_Fp.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição solicitada ',mtWarning,[mbOk],0);
   exit;
   end;
mpag:=0;
mlin:=0;
testeform := TFrm_RFPP(FindGlobalComponent('form_impres_RFPP'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RFPP);

form_impres_RFPP.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

While not Qr_Fp.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_RFPP.RDprint1.impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_RFPP.RDprint1.impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      form_impres_RFPP.Rdprint1.impf(02,01,'Resumo de Pagamentos por Formas.',mnormal);
      form_impres_RFPP.Rdprint1.impf(02,64,'Data: '+FormatDatetime(fdt2,date),mnormal);
      form_impres_RFPP.RDprint1.impf(03,01,centra(fperiodo(0,mdt1.text,mdt2.text),' ',60),mneg);
      form_impres_RFPP.RDprint1.impf(04,17,'+-----+----------------------+----------------+',mnormal);
      form_impres_RFPP.RDprint1.impf(05,17,'|Codig| Forma de Pagamento   |     Total      |',mnormal);
      mlin:=5;
      end;
   mlin:=mlin+1;
   form_impres_RFPP.Rdprint1.ImpF(mlin,17,'|'+centra(FormatFloat('00',Qr_FPFPFORMA.Value),' ',5)+'| '
                           +insere2(Qr_FPFPDESC.Value,' ',20)+' | '
                           +insere(FormatFloat('0.00',Qr_FPTOTAL.Value),' ',14)+' |',mnormal);
   mtotal:=mtotal+Qr_FpTOTAL.Value;
   Qr_Fp.Next;
   if Qr_Fp.Eof then
      begin
      mlin:=mlin+1;
      form_impres_RFPP.Rdprint1.ImpF(mlin,17,'|     | '
                           +insere2('-Total','.',20)+' | '
                           +insere(FormatFloat('0.00',mtotal),' ',14)+' |',mnormal);
      mlin:=mlin+1;
      form_impres_RFPP.RDprint1.impf(mlin,17,'+-----+----------------------+----------------+',mnormal);

      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_RFPP.RDprint1.impf(mlin,17,'+-----+----------------------+----------------+',mnormal);
      form_impres_RFPP.RDprint1.Novapagina;
      end
   end;
if form_impres_RFPP.RDprint1.Setup then form_impres_RFPP.RDprint1.Fechar;
form_impres_RFPP.free;
form_impres_RFPP:=nil;

end;

procedure TFrm_RFPP.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=FormatDateTime(fdt2, date);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_RFPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RFPP.FormKeyDown(Sender: TObject; var Key: Word;
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
