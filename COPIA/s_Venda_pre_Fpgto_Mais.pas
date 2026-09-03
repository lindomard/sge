unit s_Venda_pre_Fpgto_Mais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,dbtables;

type
  TFrm_Venda_pre_Fpgto_Mais = class(TForm)
    edt_cnpf: TEdit;
    edt_emitente: TEdit;
    StaticText1: TStaticText;
    edt_codfp: TEdit;
    edt_nomfp: TEdit;
    StaticText2: TStaticText;
    edt_parc: TEdit;
    edt_qtdparc: TEdit;
    StaticText3: TStaticText;
    edt_dtvcto: TEdit;
    edt_prazo: TEdit;
    StaticText4: TStaticText;
    edt_valor: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    edt_numdoc: TEdit;
    Edit7: TEdit;
    edt_banco: TEdit;
    Edit6: TEdit;
    edt_ctacor: TEdit;
    Edit8: TEdit;
    edt_agencia: TEdit;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    procedure edt_cnpfExit(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fTestaDadosCheques: Boolean;

  public
    { Public declarations }
    mConfirma: Boolean;
  end;

var
  Frm_Venda_pre_Fpgto_Mais: TFrm_Venda_pre_Fpgto_Mais;

implementation

uses Func, S_DM1;

{$R *.dfm}

procedure TFrm_Venda_pre_Fpgto_Mais.edt_cnpfExit(Sender: TObject);
begin
edt_cnpf.Text:=fdeixanum(edt_cnpf.Text);

if length(edt_cnpf.Text)<1 then
   edt_cnpf.Text:=''
else if length(edt_cnpf.Text)>11 then
   edt_cnpf.Text:=FormatFloat(pDFCNPJ, fsonumero(edt_cnpf.text))
else
   edt_cnpf.Text:=FormatFloat(pDFCNPF, fsonumero(edt_cnpf.text));
if fsonumero(edt_cnpf.Text)<>0 then
   fTestaDadosCheques;

end;

procedure TFrm_Venda_pre_Fpgto_Mais.btn_gravarClick(Sender: TObject);
begin
mConfirma:=true;
close;
end;

procedure TFrm_Venda_pre_Fpgto_Mais.btn_cancelarClick(Sender: TObject);
begin
mConfirma:=false;
close;

end;

procedure TFrm_Venda_pre_Fpgto_Mais.FormShow(Sender: TObject);
begin
mConfirma:=false;

end;

function TFrm_Venda_pre_Fpgto_Mais.fTestaDadosCheques: Boolean;
var
query_chq: tQuery;
begin

query_chq:=tQuery.create(nil);
Query_chq.DatabaseName:='SG_ASSOC';
query_chq.close;

query_chq.SQL.Clear;
query_chq.SQL.Add('Select CHNUMERO,CHBANCO,CHSERIE,CHCOMP,CHEMIT, '
                  +' CHCPF, CHRG, CHCC,CHDTNAS,CHAGENCIA from CADCHQ where '
                  +' CHCPF=:CPF AND rownum < 6'
                  +' order by CHDTEMIS DESC ');
query_chq.ParamByName('CPF').Value:=fsonumero(edt_cnpf.Text);
try
   query_chq.open;
except
   query_chq.sql.savetofile('C:\SQL.TXT');
   end;
if not query_chq.IsEmpty then
   begin
   While not query_chq.Eof do
      begin
     if valint(edt_banco.text)=0 then
         edt_banco.Text:=Query_chq.fieldbyName('CHBANCO').AsString;
      if trim(edt_agencia.text)='' then
         edt_agencia.Text:=Query_chq.fieldbyName('CHAGENCIA').AsString;
      if length(edt_emitente.Text)<4 then
         edt_emitente.Text:=Query_chq.fieldbyName('CHEMIT').AsString;

      if fsonumero(edt_ctacor.text)=0 then
         edt_ctacor.Text:=Query_chq.fieldbyName('CHCC').AsString;
      result:=true;
      break;
      end;
   end
else
   begin
   query_chq.close;
   query_chq.SQL.Clear;
   query_chq.SQL.Add('Select '
                    +' NVL( LTRIM(translate(PFPNUMDOC , translate(PFPNUMDOC , '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+QuotedStr(' ')+')) ,0) AS CHNUMERO,'
                     +' PFPBANCO as  CHBANCO,PFPSERIE as  CHSERIE,'
                     +' PFPCOMP as CHCOMP,PFPEMITENTE as CHEMIT, '
                    +'   PFPCNPF AS CHCPF, PFPRG AS CHRG,  PFPCC AS CHCC , PFPDTNAS AS CHDTNAS'
                    +' , PFPAGENCIA AS CHAGENCIA from CADPFP where '
                     +' PFPCNPF=:CPF and rownum < 6'
                     +' order by pfpdata DESC ');
   query_chq.ParamByName('CPF').Value:=fsonumero(edt_cnpf.Text);
   try
      query_chq.open;
   except
      query_chq.sql.savetofile('C:\SQL.TXT');
      end;

   While not query_chq.Eof do
      begin
     if valint(edt_banco.text)=0 then
         edt_banco.Text:=Query_chq.fieldbyName('CHBANCO').AsString;
      if trim(edt_agencia.text)='' then
         edt_agencia.Text:=Query_chq.fieldbyName('CHAGENCIA').AsString;
      if length(edt_emitente.Text)<4 then
         edt_emitente.Text:=Query_chq.fieldbyName('CHEMIT').AsString;

      if fsonumero(edt_ctacor.text)=0 then
         edt_ctacor.Text:=Query_chq.fieldbyName('CHCC').AsString;
      result:=true;
      break;
      end;
   end;
freeandnil(query_chq);
result:=true;
end;

end.
