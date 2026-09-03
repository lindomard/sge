unit s_ultvenc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Buttons, ExtCtrls, DB, DBTables,
  RLReport, S_SelEmp, ToolEdit, CurrEdit;

type
  TFrm_UltVenC = class(TForm)
    Panel1: TPanel;
    bb_analise: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    mDtini: TMaskEdit;
    Label3: TLabel;
    mDtfin: TMaskEdit;
    ProgressBar1: TProgressBar;
    Query1: TQuery;
    RLReport1: TRLReport;
    DataSource1: TDataSource;
    RLBand1: TRLBand;
    lbl_empresa: TRLLabel;
    RLBand2: TRLBand;
    lbl_codcli: TRLLabel;
    lbl_nomcli: TRLLabel;
    lbl_total: TRLLabel;
    lbl_ped: TRLLabel;
    codcli: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText3: TRLDBText;
    Query1CHAVE: TFloatField;
    Query1CLIENTE: TFloatField;
    Query1TOTAL_L: TFloatField;
    lbl_data: TRLLabel;
    RLDBText4: TRLDBText;
    lbl_ender: TRLLabel;
    RLLabel1: TRLLabel;
    rl_periodo: TRLLabel;
    Query1NOMCLI: TStringField;
    RLDBText1: TRLDBText;
    Label4: TLabel;
    mValorCpr: TCurrencyEdit;
    Query1DATA: TDateTimeField;
    bbSair: TBitBtn;
    StaticText4: TStaticText;
    EDT_CODREG: TEdit;
    lbx_CODREG: TListBox;
    OMITIR_CODREG: TCheckBox;
    StaticText1: TStaticText;
    edt_codred: TEdit;
    lbx_codred: TListBox;
    OMITIR_CODRED: TCheckBox;
    Label5: TLabel;
    cb_ordem: TComboBox;
    procedure bb_analiseClick(Sender: TObject);
    procedure mDtiniExit(Sender: TObject);
    procedure mDtfinExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDT_CODREGExit(Sender: TObject);
    procedure EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codredExit(Sender: TObject);
    procedure edt_codredKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

   ordem :array[0..7,0..1] of string;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_UltVenC: TFrm_UltVenC;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_UltVenC.bb_analiseClick(Sender: TObject);
begin
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' SELECT * FROM USER_TABLES WHERE TABLE_NAME='+chr(39)+'TEMPORARY'+chr(39));
DM1.Query1.Open;
if not DM1.Query1.IsEmpty then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' DROP TABLE TEMPORARY ');
  DM1.Query1.ExecSQL;
  end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' CREATE TABLE TEMPORARY (');
DM1.Query1.SQL.Add(' CLIENTE integer,');
DM1.Query1.SQL.Add(' CHAVE integer,');
DM1.Query1.SQL.Add(' DATA varchar(10))');
try
  DM1.Query1.ExecSQL;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select p1codcli, max(p1datdoc) from cadp01 ');
  DM1.Query1.SQL.Add(' where p1status <'+mstatus_excluido+' ');
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query1.SQL.Add(iif(trim(la_Empresas)<>'',' and '+la_Empresas,' '));
  if (mDtini.Text<>'01/01/1900') and (trim(mdtini.Text)<>'/  /') then
    begin
    DM1.Query1.SQL.Add(' and P1DATDOC>='+chr(39)+mDtini.Text+chr(39));
    end;
  if (mDtfin.Text<>'01/01/1900') and (trim(mDtfin.Text)<>'/  /') then
    begin
    DM1.Query1.SQL.Add(' and P1DATDOC<='+chr(39)+mDtfin.Text+chr(39));
    end;
  DM1.Query1.SQL.Add(' group by p1codcli ');
  DM1.Query1.Open;
  ProgressBar1.Max:=DM1.Query1.RecordCount;
  ProgressBar1.Position:=0;
  DM1.Query1.First;
  while not DM1.Query1.Eof do
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add(' select max(P1CHAVE) from CADP01 ');
    DM1.Query2.SQL.Add(' where P1CODCLI='+DM1.Query1.fieldByName('P1CODCLI').AsString);
    la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
    DM1.Query2.SQL.Add(iif(trim(la_Empresas)<>'',' and '+la_Empresas,' '));
    DM1.Query2.SQL.Add(' and P1DATDOC='+chr(39)+DM1.Query1.fieldByName('max(P1datdoc)').AsString+chr(39));
    DM1.Query2.Open;
    DM1.Query3.Close;
    DM1.Query3.SQL.Clear;
    DM1.Query3.SQL.Add(' insert into TEMPORARY values ('+DM1.Query1.FieldByName('P1CODCLI').AsString+','+DM1.Query2.FieldByName('MAX(P1Chave)').AsString+','+chr(39)+dm1.Query1.fieldByName('max(P1datdoc)').AsString+chr(39)+')');
    try
      DM1.Query3.ExecSQL;
    except
      DM1.Query3.Sql.SaveToFile(SALVA_NOME('c:\SGE\ERROSQL\','EX'));
      end;
    ProgressBar1.Position:=ProgressBar1.Position+1;
    DM1.Query1.Next;
  end;
except
  ShowMessage('Erro ao Criar Tabela');
  DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\SGE\ERROSQL\','EX'));
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select CHAVE, CLIENTE, DATA, sum(P1TOTALL) as Total_L, CRAZAO as NomCli ');
Query1.SQL.Add(' from temporary, CADP01, cadcli ');
Query1.SQL.Add(' where CHAVE=P1CHAVE and CLIENTE=P1CODCLI and DATA=P1DATDOC and CCODCLI=CLIENTE');
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
Query1.SQL.Add(iif(trim(la_Empresas)<>'',' and '+la_Empresas,' '));
Query1.SQL.Add(' group by CHAVE,CLIENTE,DATA, CRAZAO ');
Query1.SQL.Add(' order by CRAZAO ');
try
  Query1.Open;
except
  Query1.SQL.SaveToFile('C:\Sql.TXT');
  end;
  }

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select P1CHAVE as CHAVE, '
              +' P1CODCLI as CLIENTE, '
              +' P1DATDOC as DATA, '
//              +' sum(P1TOTALL) as Total_L, CRAZAO as NomCli '
              +' sum(P1TOTALL+P1ICMSR) as Total_L, CRAZAO as NomCli '
              +'  from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+''
               +' and P1CHAVE IN ( '
               +'       select max(P1CHAVE) as chave FROM CADP01 '
               +'    WHERE P1STATUS<'+mstatus_excluido+' ');
               if trim(mDtini.text)<>'/  /' then
                  Query1.Sql.add(fFormatdatetimeParaConsulta('P1DATDOC',true,strtodate(mdtINI.text)));

               if trim(mDtfin.text)<>'/  /' then
                  Query1.Sql.add(fFormatdatetimeParaConsulta('P1DATDOC',false,strtodate(mdtFIN.text)));
               if mValorCpr.Value<>0 then
//                  Query1.Sql.add(' and (P1TOTALL)>='+mudavp(mValorCpr.Text));
                  Query1.Sql.add(' and (P1TOTALL+P1ICMSR)>='+mudavp(mValorCpr.Text));
               Query1.Sql.add('   group by p1codcli) ');
if trim(mDtini.text)<>'/  /' then
    Query1.Sql.add(fFormatdatetimeParaConsulta('P1DATDOC',true,strtodate(mdtINI.text)));
if trim(mDtfin.text)<>'/  /' then
   Query1.Sql.add(fFormatdatetimeParaConsulta('P1DATDOC',false,strtodate(mdtfIN.text)));
if mValorCpr.Value<>0 then
//   Query1.Sql.add(' and (P1TOTALL)>='+mudavp(mValorCpr.Text));
   Query1.Sql.add(' and (P1TOTALL+P1ICMSR)>='+mudavp(mValorCpr.Text));


mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
if trim(mcinst2)<>'' then
  Query1.SQL.Add(' and CROTA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_CODRED);
if trim(mcinst2)<>'' then
  Query1.SQL.Add(' and CCODRED '+mcinst2);

Query1.Sql.add(' group by P1CODCLI,P1CHAVE,P1DATDOC,CRAZAO');
Query1.Sql.add(' order by ' + ordem[cb_ordem.itemindex][1]);

try
   query1.Open;
except
   query1.SQL.SaveToFile('c:\sql.txt');
   end;
rl_periodo.Caption:=fperiodo(0,mDtini.Text,mDtfin.Text);
RLReport1.PreviewModal;
end;

procedure TFrm_UltVenC.mDtiniExit(Sender: TObject);
begin
if (mdtini.text<>'01/01/1900') and (trim(mDtini.Text)<>'/  /') then
  begin
  try
    strtodate(mDtini.Text);
  except
    mDtini.SetFocus;
    ShowMessage('Data Invalida!');
    end;
  end;
end;

procedure TFrm_UltVenC.mDtfinExit(Sender: TObject);
begin
if (mDtfin.text<>'01/01/1900') and (trim(mDtfin.Text)<>'/  /') then
  begin
  try
    strtodate(mDtfin.Text);
  except
    mDtfin.SetFocus;
    ShowMessage('Data Invalida!');
    end;
  end;
end;

procedure TFrm_UltVenC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_UltVenC.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_empresa.Caption:=dm1.Tb_EmpRAZAO.AsString;
lbl_ender.Caption:=dm1.Tb_EmpENDERECO.AsString+' - '+dm1.Tb_EmpBAIRRO.AsString+' - '+dm1.Tb_EmpCIDADE.AsString+' - '+dm1.Tb_EmpUF.AsString;
end;

procedure TFrm_UltVenC.FormCreate(Sender: TObject);
var
x_ordem: integer;
begin

ordem[0][0]:='Razão Social';
ordem[0][1]:='NOMCLI';

ordem[1][0]:='Razão Social + Data';
ordem[1][1]:='NOMCLI,DATA';


ordem[2][0]:='Razão Social + Data Decrescente';
ordem[2][1]:='NOMCLI,DATA DESC ';



ordem[3][0]:='Razão Social + Valor';
ordem[3][1]:='NOMCLI,TOTAL_L';


ordem[4][0]:='Razão Social + Valor Decrescente';
ordem[4][1]:='NOMCLI,,TOTAL_L DESC ';


ordem[5][0]:='Data';
ordem[5][1]:='DATA';


ordem[6][0]:='Data Decrescente';
ordem[6][1]:='DATA DESC ';



ordem[7][0]:='Valor';
ordem[7][1]:='TOTAL_L';

ordem[7][0]:='Valor Decrescente';
ordem[7][1]:='TOTAL_L DESC';

cb_ordem.Items.clear;
for x_ordem := 0 to high(ordem) do
   begin
   cb_ordem.Items.add(ordem[x_ordem][0]);
   end;

cb_ordem.itemindex:=0;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Query1DATA.DisplayFormat:=fdt2;
end;

procedure TFrm_UltVenC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_UltVenC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_UltVenC.FormShow(Sender: TObject);
begin
mDtini.Text:=DateToStr(Date);
mDtfin.Text:=DateToStr(Date);

end;

procedure TFrm_UltVenC.EDT_CODREGExit(Sender: TObject);
begin

edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codreg.ItemIndex:=lbx_codreg.Items.Count-1;
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end
   else
      begin
      fmensagem('Região Não Cadastrado!',0,['0'],0);
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end;
   end;


end;

procedure TFrm_UltVenC.EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_rped',key));
   edt_codregExit(self);
   key:=#0;
   end;

end;

procedure TFrm_UltVenC.lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_CODREG.ItemIndex>=0 then
      lbx_CODREG.Items.Delete(lbx_CODREG.ItemIndex);

end;

procedure TFrm_UltVenC.edt_codredExit(Sender: TObject);
begin
edt_CODRED.Text:=fdeixanum2(edt_CODRED.Text);
if Trim(edt_CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',edt_CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      edt_CODRED.text := '';
      edt_CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      edt_CODRED.text := '';
      edt_CODRED.SetFocus;
      end;
   end;



end;

procedure TFrm_UltVenC.edt_codredKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   key:=#0;
   end;

end;

procedure TFrm_UltVenC.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

end.
