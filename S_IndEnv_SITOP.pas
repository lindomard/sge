unit S_IndEnv_SITOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Buttons,
  DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TFrm_IndEnv_SITOP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BBSAIR: TBitBtn;
    src_op01: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid_op01: TDBGrid;
    qr_op01: TQuery;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    GB_DADOSPROC: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBMemo_obs: TDBMemo;
    src_op01_eta: TDataSource;
    qr_opeta: TQuery;
    qr_opetaETA_CODEMP: TFloatField;
    qr_opetaETA_CHAVE_OP: TFloatField;
    qr_opetaETA_CHAVE_OP_ANO: TFloatField;
    qr_opetaETA_ORDEM: TFloatField;
    qr_opetaETA_DESCRICAO: TStringField;
    qr_opetaETA_RESPONSAVEL: TStringField;
    qr_opetaETA_DATHOR_INIPROC: TDateTimeField;
    qr_opetaETA_DATHOR_TERMINO: TDateTimeField;
    qr_opetaETA_CONFERENTE: TStringField;
    qr_opetaETA_DATHOR_CONF: TDateTimeField;
    qr_opetaETA_RESULTADO: TStringField;
    qr_op01OP1_CODIGO: TFloatField;
    qr_op01OP1_DATA: TDateTimeField;
    qr_op01OP1_NOME: TStringField;
    qr_op01observacoes: TStringField;
    DBGrid_opeta: TDBGrid;
    DBE_ETA_DESCRICAO: TDBEdit;
    DBE_ETA_RESPONSAVEL: TDBEdit;
    DBE_ETA_DATHOR_INIPROC: TDBEdit;
    DBE_ETA_DATHOR_TERMINO: TDBEdit;
    DBE_ETA_CONFERENTE: TDBEdit;
    DBE_ETA_DATHOR_CONF: TDBEdit;
    DBE_ETA_RESULTADO: TDBEdit;
    qr_opetaETA_OBS: TMemoField;
    procedure BBSAIRClick(Sender: TObject);
    procedure src_op01DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

     mchaveop_eta_lida: integer;
     mpedori_chave: integer;
     mpedori_lotseq: integer;
     mpedori_codemp: integer;

     mopori_chaveop: integer;
     mopori_codemp: integer;

     procedure fLerdadosop;

    { Public declarations }
  end;

var
  Frm_IndEnv_SITOP: TFrm_IndEnv_SITOP;

implementation

uses S_DM1, lerarq, func_excecoes, Func;

{$R *.dfm}

procedure TFrm_IndEnv_SITOP.BBSAIRClick(Sender: TObject);
begin
close;
end;


procedure TFrm_IndEnv_SITOP.fLerdadosop;
begin
qr_op01.close;
qr_op01.sql.clear;
qr_op01.sql.add('Select OP1_CODIGO,OP1_DATA,OP1_NOME '
               +', CASE WHEN OP1_STATUS>1 then '+QuotedStr('** concluido! **')+' else '+QuotedStr('** em producao **')+' end || '
               +' case when OP1_PEDORI_CHAVE>0 then '
               +' (select '+QuotedStr('Pedido de origem ')+' || OP1_PEDORI_CHAVE ||'+QuotedStr(' data: ')+' || to_char(P1DATAP, '+QuotedStr('dd/mm/yyyy')+') || '
               +Quotedstr(' Cliente: ')+' || CRAZAO from CADP01,CADCLI where CCODCLI=P1CODEMP and P1CHAVE=OP1_PEDORI_CHAVE '
               +' and P1CODEMP=OP1_PEDORI_CODEMP and P1LOTSEQ=OP1_PEDORI_LOTSEQ   ) else '+QuotedStr(' ')+' end '
               +'  as OBSERVACOES '
               +' from CADOP01 where OP1_CODEMP='+Inttostr(iif(mopori_codemp=0,codemp,mopori_codemp)));
if mpedori_chave>0 then
   qr_op01.SQL.add(' and OP1_PEDORI_CHAVE=0'+IntToStr(mpedori_chave));
if mpedori_chave>0 then
   qr_op01.SQL.add(' and OP1_PEDORI_LOTSEQ=0'+IntToStr(mpedori_lotseq));
if mpedori_codemp>0 then
   qr_op01.SQL.add(' and OP1_PEDORI_CODEMP=0'+IntToStr(mpedori_codemp));

if mopori_chaveop>0 then
   qr_op01.SQL.add(' and OP1_CODIGO=0'+IntToStr(mopori_chaveop));

try
   qr_op01.open
except on e: Exception do
   begin
   ex_erroSql_Novo(qr_op01,118,'SGE','CADOP01');
   end;
   end;

end;
procedure TFrm_IndEnv_SITOP.src_op01DataChange(Sender: TObject;
  Field: TField);
begin

if  mchaveop_eta_lida<>qr_op01OP1_CODIGO.AsInteger then
   begin
   qr_opeta.Close;
   qr_opeta.SQL.clear;
   qr_opeta.SQL.Add('Select * from CADOP_ETA where '
                   +' ETA_CODEMP=:CODEMP '
                   +' and ETA_CHAVE_OP=:CHAVE '
                   +' and ETA_CHAVE_OP_ano=:CHAVE_ANO '
                   +' order by ETA_DATHOR_INIPROC ');
   qr_opeta.ParamByName('CODEMP').AsInteger   :=iif(mopori_codemp>0,mopori_codemp,codemp);
   qr_opeta.ParamByName('CHAVE').AsInteger    :=qr_op01OP1_CODIGO.AsInteger;
   qr_opeta.ParamByName('CHAVE_ANO').AsInteger:=0;
   try
      qr_opeta.Open;
   except on e: Exception do
      begin
      ex_erroSql_Novo(qr_opeta,132,'SGE','CADOP01');
      end;
      end;
   mchaveop_eta_lida:=qr_op01OP1_CODIGO.AsInteger;
   end;

end;

procedure TFrm_IndEnv_SITOP.FormCreate(Sender: TObject);
begin

     mchaveop_eta_lida:=0;


qr_opetaETA_DATHOR_INIPROC.DisplayFormat:=fdathor;
qr_opetaETA_DATHOR_TERMINO.DisplayFormat:=fdathor;
qr_opetaETA_DATHOR_CONF.DisplayFormat:=fdathor;


end;

end.
