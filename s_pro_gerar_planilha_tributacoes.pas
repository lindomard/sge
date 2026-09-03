unit s_pro_gerar_planilha_tributacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, Mask, ToolEdit,
  ExtCtrls;

type
  Tfrm_pro_gerar_planilha_tributacoes = class(TForm)
    Panel_cab: TPanel;
    Label1: TLabel;
    edt_datUltSai: TDateEdit;
    GroupBox1: TGroupBox;
    Panel_rod: TPanel;
    BBGerar: TBitBtn;
    bbSair: TBitBtn;
    Memo_comando: TMemo;
    bbSelecionar: TBitBtn;
    src_pro: TDataSource;
    DBGrid1: TDBGrid;
    qr_pro: TQuery;
    procedure bbSairClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBGerarClick(Sender: TObject);
  private
    { Private declarations }
     procedure displayFormat;




     function fAtendeExigencias: boolean;

  public
    { Public declarations }

  end;

var
  frm_pro_gerar_planilha_tributacoes: Tfrm_pro_gerar_planilha_tributacoes;

implementation

uses Func, func_excecoes, uExport, S_DM1;

{$R *.dfm}

procedure Tfrm_pro_gerar_planilha_tributacoes.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_pro_gerar_planilha_tributacoes.bbSelecionarClick(
  Sender: TObject);
begin
qr_pro.SQL.clear;
qr_pro.SQL.add(Memo_comando.Text);
if edt_datUltSai.Date<=pDataNula then
   qr_pro.ParamByName('DTULTSAI').AsDateTime := StrToDate('01/01/2059')
else
   qr_pro.ParamByName('DTULTSAI').AsDateTime := edt_datUltSai.Date;
try
   qr_pro.open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_pro,65,'SGE','GERAR_PLANILHA');
   end;
   end;


end;

procedure Tfrm_pro_gerar_planilha_tributacoes.displayFormat;
begin
qr_pro.FieldByName('CODIGO_PRODUTO').DisplayLabel:='Código';
qr_pro.FieldByName('NOME_PRODUTO').DisplayLabel:='Descrição';
qr_pro.FieldByName('UNIDADE').DisplayLabel:='Und';
qr_pro.FieldByName('CODIGO_BARRAS').DisplayLabel:='Código de Barras';
qr_pro.FieldByName('CODNCM').DisplayLabel:='Código Ncm';
qr_pro.FieldByName('CEST').DisplayLabel:='Cest';
qr_pro.FieldByName('DATA_ULT_SAIDA').DisplayLabel:='Data da Última Saida';
qr_pro.FieldByName('PDTABICM').DisplayLabel:='Tab Icms';
qr_pro.FieldByName('ALIQ_ICMS').DisplayLabel:='Aliq Icms';
qr_pro.FieldByName('ORIGEM_PRODUTO').DisplayLabel:='Origem Produto';
qr_pro.FieldByName('CST_REVENDA_DENTRO_ESTADO').DisplayLabel:='CST P/Rev Dentro Estado';
qr_pro.FieldByName('CST_REV_DENTRO_EST_CONSUFINAL').DisplayLabel:='Cst Cons Final Dentro do Estado';
qr_pro.FieldByName('CST_REVENDA_FORA_ESTADO').DisplayLabel:='CST Revenda Fora do Estado';
qr_pro.FieldByName('CST_REV_FORA_EST_CONSFINAL').DisplayLabel:='CST Cons Final Fora do Estado';
qr_pro.FieldByName('PISCOFINS_ENTRADA').DisplayLabel:='Cst Pis/Cofins Entrada';
qr_pro.FieldByName('ALIQUOTA_PIS_ENTRADA').DisplayLabel:='Aliquota Pis Entrada';
qr_pro.FieldByName('ALIQUOTA_COFINS_ENTRADA').DisplayLabel:='Aliquota Cofins Entrada';
qr_pro.FieldByName('ALIQUOTA_COFINS_SAIDA').DisplayLabel:='Aliquota Cofins Saida';
qr_pro.FieldByName('PISCOFINS_SAIDA').DisplayLabel:='Cst Pis/Cofins Saida';
qr_pro.FieldByName('ALIQUOTA_PIS_SAIDA').DisplayLabel:='Aliquota Pis Saida';
qr_pro.FieldByName('CODBENEF_REV_FORAEST').DisplayLabel:='Código Beneficio Revenda Fora Estado';
qr_pro.FieldByName('CODBENEF_CONSF_FORAEST').DisplayLabel:='Código Beneficio Cons Final ';
qr_pro.FieldByName('CODBENEF_REV_DENTROEST').DisplayLabel:='Código Beneficio Revenda Dentro Estado ';
qr_pro.FieldByName('CODBENEF_CONSF_DENTROEST').DisplayLabel:='Código Beneficio Cons Final Dentro Estado';













end;


procedure Tfrm_pro_gerar_planilha_tributacoes.FormCreate(Sender: TObject);
begin
bbSelecionarClick(self);
displayFormat;

end;

procedure Tfrm_pro_gerar_planilha_tributacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure Tfrm_pro_gerar_planilha_tributacoes.BBGerarClick(
  Sender: TObject);
begin

if not fAtendeExigencias then
   exit;

BBGerar.Enabled:=false;

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  Src_pro.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
BBGerar.Enabled:=true;

end;

function Tfrm_pro_gerar_planilha_tributacoes.fAtendeExigencias: boolean;
var
query_temp: tQuery;
begin
result:=true;
query_temp:=tQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.SQL.add('Select CRAZAO,CCODCLI,CALIQA,CUF from CADCLI where CCODCLI=1');
try
   query_temp.open;
   if (query_temp.IsEmpty) or (query_temp.fieldbyName('CUF').AsString<>DM1.Tb_EmpUF.AsString) then
      begin
      MessageDlg('Para Fazer a Exportação é necessario que tenha cadastrado o cliente 1 no Estado de '+DM1.Tb_EmpUF.AsString,mtWarning,[mbOk],0);
      result:=false;
      end;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,157,'SGE','CADCLI');
   result:=false;
   end;
   end;
query_temp.close;
freeandnil(query_temp);


end;

end.
