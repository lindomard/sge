unit s_caucao_remessa_localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids, DB,
  DBTables, func_excecoes;

type
  Tfrm_caucao_remessa_localizar = class(TForm)
    Panel1: TPanel;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    Label1: TLabel;
    edt_chave_id_inicial: TEdit;
    Label2: TLabel;
    edt_chave_id_final: TEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    Qr_Dup: TQuery;
    Src_ComV: TDataSource;
    DBGrid1: TDBGrid;
    Qr_DupTC_CHAVE_ID: TFloatField;
    Qr_DupTC_DATA: TDateTimeField;
    Qr_DupTC_CODBCO_CREDITO: TFloatField;
    Qr_DupTC_ID_LDR_CREDITO: TFloatField;
    Qr_DupTC_VALOR_CREDITO: TFloatField;
    Qr_DupTC_OBSERVACOES: TMemoField;
    Qr_Dupbcbanco: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

    procedure fFerDados;

  public
     mChaveId: integer;
    { Public declarations }
  end;

var
  frm_caucao_remessa_localizar: Tfrm_caucao_remessa_localizar;

implementation

uses lerarq, Func;

{$R *.dfm}

procedure Tfrm_caucao_remessa_localizar.FormCreate(Sender: TObject);
begin
mChaveId :=0;
end;

procedure Tfrm_caucao_remessa_localizar.DBGrid1DblClick(Sender: TObject);
begin
if Qr_DupTC_CHAVE_ID.AsInteger>0 then
   begin
   mChaveId:=Qr_DupTC_CHAVE_ID.AsInteger;
   bbSairClick(self);
   end;
end;

procedure Tfrm_caucao_remessa_localizar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_caucao_remessa_localizar.fFerDados;
var
mDataPesq: string;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADBCO','BCCODEMP',inttostr(codemp),'BCCODBCO','TC_CODBCO_CREDITO');
mDataPesq := 'TC_DATA';
Qr_dup.close;
Qr_Dup.SQL.clear;
Qr_Dup.SQL.Add('Select TC_CHAVE_ID'
               +',TC_DATA'
               +',TC_CODBCO_CREDITO'
               +',bcbanco'
               +',TC_ID_LDR_CREDITO'
               +',TC_VALOR_CREDITO'
               +',TC_OBSERVACOES'
               +' from CADTIT_CAUCAO_CAB '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where 1=1 '+iif(la_instrucao='','',' and ')+la_instrucao);

if trim(edt_datini.Text)<>'/  /' then
   Qr_DUP.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,edt_datini.Date));

if edt_datfin.Date>pDatanula then
   Qr_DUP.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,FALSE,edt_datfin.Date));


if fsonumero(edt_chave_id_inicial.Text)>0 then
   Qr_DUP.SQL.Add(' and TC_CHAVE_ID>='+fdeixanum(edt_chave_id_inicial.text));

if fsonumero(edt_chave_id_final.Text)>0 then
   Qr_DUP.SQL.Add(' and TC_CHAVE_ID<='+fdeixanum(edt_chave_id_final.text));
try
   Qr_Dup.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(qr_dup,109,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   end;
   end;

end;


procedure Tfrm_caucao_remessa_localizar.BitBtn1Click(Sender: TObject);
begin
fFerDados;
end;

end.
