unit s_Email_NFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, Grids, DBGrids, Buttons, Mask,
  ToolEdit, DBCtrls;

type
  TFrm_Email_NFe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    Label2: TLabel;
    rg_status: TRadioGroup;
    bbSair: TBitBtn;
    bbAplicar: TBitBtn;
    Panel_itens: TPanel;
    src_email_nfe: TDataSource;
    DBGrid1: TDBGrid;
    qr_email_nfe: TQuery;
    qr_email_nfeER_ID: TFloatField;
    qr_email_nfeER_DATA_REC: TDateTimeField;
    qr_email_nfeERA_DATHOR_IMP: TDateTimeField;
    qr_email_nfeERA_ARQUIVO_XML: TMemoField;
    qr_email_nfeERA_XML_CNPJ_EMIT: TStringField;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    qr_email_nfeERA_STATUS: TFloatField;
    qr_email_nfeERA_CHAVE_PED_DEST: TFloatField;
    qr_email_nfeERA_ID: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mBaixaIdMessage: integer;
  end;

var
  Frm_Email_NFe: TFrm_Email_NFe;

implementation

uses Func, func_excecoes, S_DM1;

{$R *.dfm}

procedure TFrm_Email_NFe.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Email_NFe.bbAplicarClick(Sender: TObject);
begin
if (edt_datini.Date>pdatanula) and (edt_datfin.Date>pdatanula) then
   begin
   if edt_datfin.date<edt_datini.date then
      begin
      Messagedlg('Data inicial maior que final é invalido!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      exit;
      end;
   end;


qr_email_nfe.close;       
qr_email_nfe.SQL.clear;
qr_email_nfe.sql.add('select ER_ID '
                    +',ER_DATA_REC '
                    +',ERA_CHAVE_PED_DEST '
                    +',ERA_DATHOR_IMP '
                    +',ERA_ARQUIVO_XML '
                    +',ERA_XML_CNPJ_EMIT '
                    +',ERA_STATUS '
                    +',ERA_ID '
                    +' FROM CADEMAIL_RECEBIDO,CADEMAIL_REC_ANEXO '
                    +' WHERE ERA_ID_REC=ER_ID ');


qr_email_nfe.SQL.Add(' and ERA_XML_CNPJ_DEST='+quotedstr( FormatFloat('00000000000000', DM1.Tb_empCGC.asfloat)));

if edt_datini.Date>pdatanula then
   begin
   qr_email_nfe.SQL.Add(fFormatdatetimeParaConsulta('ER_DATA_REC',true,edt_datini.date));
   end;
if edt_datfin.Date>pdatanula then
   begin
   qr_email_nfe.SQL.Add(fFormatdatetimeParaConsulta('ER_DATA_REC',FALSE,edt_datfin.date));
   end;
if rg_status.ItemIndex<3 then
   qr_email_nfe.SQL.Add(' and ERA_STATUS='+inttostr(rg_status.itemindex));

try
   qr_email_nfe.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(qr_email_nfe,83,'_stru '+e.message,'user');
   end;
   end;



end;

procedure TFrm_Email_NFe.DBGrid1DblClick(Sender: TObject);
begin
if (qr_email_nfeERA_STATUS.AsFloat=0) then
   begin
   if Application.MessageBox(pchar('Quer Realmente Gerar o Xml do Email '+qr_email_nfeER_ID.AsString+' de '+formatdatetime(fdt2, qr_email_nfeER_DATA_REC.AsDateTime)),'Confirmação'
    ,MB_YESNO+MB_DEFBUTTON2)=mrYes then
    begin
    mBaixaIdMessage := qr_email_nfeERA_ID.AsInteger;
    close();
    end;
   end;
end;

procedure TFrm_Email_NFe.FormCreate(Sender: TObject);
begin
mBaixaIdMessage :=0;
end;

end.
