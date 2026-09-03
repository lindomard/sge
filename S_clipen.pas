unit S_clipen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, Mask, ToolEdit, ExtCtrls,
  Buttons;

type
  TFrm_CliPen = class(TForm)
    GB_FILTROS: TGroupBox;
    rg_csitcli: TRadioGroup;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    CB_CPF: TCheckBox;
    CB_RG: TCheckBox;
    CB_ENDER: TCheckBox;
    CB_CIDADE: TCheckBox;
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    bb_exportar: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bb_exportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CliPen: TFrm_CliPen;

implementation

uses Func, lerarq, S_DM1, uExport, Func2;

{$R *.dfm}

procedure TFrm_CliPen.Button1Click(Sender: TObject);
var
  tempor: String;
  codigo: string;
  msts: boolean;
begin
tempor:='';
codigo:='';
// verificação de nulos
tempor:=fProcTemp(0);
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' create table '+tempor+' as ');

Query1.SQL.Add(' select ctppessoa as FISJUR,                            '
              +'       ccodcli as CODCLI,                               '
              +'       crazao as RAZAO,                                 '
              +'       clog as LOG,                                     '
              +'       cbairro as BAIRRO,                               '
              +'       ccodloc as CODCIDADE,                            '
              +'       CCIDADE as CIDADE,                               ');

if CB_CIDADE.Checked=TRUE then
  Query1.SQL.Add('       lcodmun_ibge as IBGE,                          ')
else
  Query1.SQL.Add('       0 as IBGE,                                     ');

Query1.SQL.Add('       cuf as UF,                                       '
              +'       ccep as CEP,                                     '
              +'       decode(ctppessoa,0,crg,1,cie) as RG_IE,          '
              +'       decode(ctppessoa,0,ccpf,1,ccnpj) as CPF_CNPJ     '
              +' from cadcli                                            ');

if CB_CIDADE.Checked=True then
  Query1.SQL.Add(', cadloc');


Query1.SQL.Add(' where cstatus < 9                                      ');

if trim(DateEdit1.Text)<>'/  /' then
  Query1.SQL.Add(' and cdtcad>='+chr(39)+DateEdit1.Text+chr(39));

if trim(DateEdit2.Text)<>'/  /' then
  Query1.SQL.Add(' and cdtcad<='+chr(39)+DateEdit2.Text+chr(39));

if CB_CIDADE.Checked=True then
  Query1.SQL.Add(' and ccodloc=lcodloc ');

if (rg_csitcli.ItemIndex>=0) and (rg_csitcli.ItemIndex<5) then
  Query1.SQL.Add(' and csitcli='+IntToStr(rg_csitcli.ItemIndex));

Query1.SQL.Add(' and (trim (decode(ctppessoa,0,crg,1,cie)) is null      '
              +' or trim (decode(ctppessoa,0,ccpf,1,ccnpj)) is null     '
              +' or trim (decode(ctppessoa,0,ccpf,1,ccnpj))=0           ');

if CB_ENDER.Checked=True then
  begin
  Query1.SQL.Add(' or trim(clog) is null                                  '
                +' or trim(cbairro) is null                               '
                +' or trim(ccidade) is null                               '
                +' or ccodloc=0                                           '
                +' or trim (cuf) is null                                  '
                +' or trim (ccep) is null                                 ');
  end;

if CB_CIDADE.Checked=True then
  Query1.SQL.Add(' or trim(lcodmun_ibge) is null or trim(lcodmun_ibge)=0  ');

Query1.SQL.Add(')');

if cb_cpf.Checked=true then
  begin

  DM1.Tb_Cli.Close;
  DM1.Tb_Cli.SQL.Clear;
  DM1.Tb_Cli.SQL.Add(' select * from cadcli where ccpf is not null or ccnpj is not null');
  DM1.Tb_Cli.SQL.Add(' order by ccodcli ');
  DM1.Tb_Cli.Open;

  DM1.Tb_Cli.First;
  while not DM1.Tb_Cli.Eof do
    begin
    if DM1.Tb_CliCTPPESSOA.AsInteger=0 then
      msts:=Fcpf(COMPLETA_COM(DM1.Tb_CliCCPF.AsString,'0',11,0))
    else if DM1.Tb_CliCTPPESSOA.AsInteger=1 then
      msts:=FCGC(DM1.Tb_CliCCNPJ.AsInteger);
    if msts=false then
      begin
      if trim(codigo)='' then
        codigo:=' and (';
      if codigo=' and (' then
        codigo:=codigo+' ccodcli='+DM1.Tb_CliCCODCLI.AsString
      else
       codigo:=codigo+' or ccodcli='+DM1.Tb_CliCCODCLI.AsString;
      end;
    DM1.Tb_Cli.Next;
    end;
  if trim(codigo)<>'' then
    codigo:=codigo+')';

  Query1.SQL.Add(' union ');

  Query1.SQL.Add(' select ctppessoa as FISJUR,                            '
                +'       ccodcli as CODCLI,                               '
                +'       crazao as RAZAO,                                 '
                +'       clog as LOG,                                     '
                +'       cbairro as BAIRRO,                               '
                +'       ccodloc as CODCIDADE,                            '
                +'       CCIDADE as CIDADE,                               '
                +'       0 as IBGE,                                       '
                +'       cuf as UF,                                       '
                +'       ccep as CEP,                                     '
                +'       decode(ctppessoa,0,crg,1,cie) as RG_IE,          '
                +'       decode(ctppessoa,0,ccpf,1,ccnpj) as CPF_CNPJ     '
                +' from cadcli                                            '
                +' where cstatus<9  '+codigo+'                            ');

  end;
try
  Query1.ExecSQL;
except
  Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
  fmensagem('Erro ao gerar instrução',0,['0'],0);
  Exit;
  end;
Query1.close;
query1.sql.clear;
query1.sql.add('select * from '+tempor+' order by razao');
Query1.Open;
bb_exportar.Enabled:=Query1.IsEmpty=false;

end;

procedure TFrm_CliPen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CliPen.bb_exportarClick(Sender: TObject);
begin
bb_exportar.Enabled:=false;
fGerarPlanilhaExcel([],DataSource1);
bb_exportar.Enabled:=true;

end;

end.
