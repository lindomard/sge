unit S_Ind_Prod_Analise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DB, DBTables, Grids, DBGrids, Buttons, Mask,
  DBCtrls, ExtCtrls,s_lerarq_geral;

type
  TFrm_Ind_Prod_Analise = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_codpro: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label5: TLabel;
    edt_codfor: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    GroupBox2: TGroupBox;
    clb_status: TCheckListBox;
    GroupBox3: TGroupBox;
    CLBNivel: TCheckListBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Qr_Pfor02_Lotes: TQuery;
    Qr_Pfor02_LotesPF2L_LOTE: TStringField;
    Qr_Pfor02_LotesPF2L_LOTE_RE: TStringField;
    Qr_Pfor02_LotesPF2L_DTVCTO: TDateTimeField;
    Qr_Pfor02_LotesPF2L_QTD: TFloatField;
    Qr_Pfor02_LotesPF2L_CHAVE: TFloatField;
    Qr_Pfor02_LotesPF2L_LOTSEQ: TFloatField;
    Qr_Pfor02_LotesPF2L_CODEMP: TFloatField;
    Qr_Pfor02_LotesPF2L_ITEM: TFloatField;
    Qr_Pfor02_LotesPF2L_STATUS_ANALISE: TFloatField;
    Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO: TStringField;
    Qr_Pfor02_LotesPF1NUMNF: TFloatField;
    Qr_Pfor02_LotesPF1_NFE_CHAVE: TStringField;
    src_Pfor02_Lotes: TDataSource;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox5: TGroupBox;
    Qr_Pfor02_LotesPDNOME: TStringField;
    Qr_Pfor02_LotesPDUND: TStringField;
    Qr_Pfor02_LotesSTATUS_ANALISE: TStringField;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Qr_Pfor02_LotesPF2L_CODPRO: TFloatField;
    DBRadioGroup1: TDBRadioGroup;
    bbEfetuar: TBitBtn;
    U_Pfor02_Lotes: TUpdateSQL;
    Qr_Pfor02_LotesPF1FILIAL: TFloatField;
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLBNivelClick(Sender: TObject);
    procedure clb_statusClick(Sender: TObject);
    procedure bbEfetuarClick(Sender: TObject);
    procedure Qr_Pfor02_LotesAfterPost(DataSet: TDataSet);
    procedure Qr_Pfor02_LotesBeforeEdit(DataSet: TDataSet);
    procedure Qr_Pfor02_LotesBeforePost(DataSet: TDataSet);
    procedure Qr_Pfor02_LotesBeforeInsert(DataSet: TDataSet);
    procedure Qr_Pfor02_LotesBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ind_Prod_Analise: TFrm_Ind_Prod_Analise;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_Ind_Prod_Analise.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.Text);
if Trim(edt_codpro.Text)<>'' then
   begin
   if not flcadpro(1,0,0,edt_codpro.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      edt_codpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      edt_codpro.text := '';
      edt_codpro.setfocus;
      end;

   end;

end;

procedure TFrm_Ind_Prod_Analise.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'ind_prod_analise',key);
   key:=#0;
   edt_codproExit(Self);
   end;

end;

procedure TFrm_Ind_Prod_Analise.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Ind_Prod_Analise.edt_codforExit(Sender: TObject);
begin
edt_codfor.Text:=fdeixanum2(edt_codfor.Text);

if Trim(edt_codfor.Text)<>'' then
   begin
   if not flcadfor(1,0,edt_codfor.Text) then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      edt_codfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      edt_codfor.text := '';
      edt_codfor.setfocus;
      end;
   end;

end;

procedure TFrm_Ind_Prod_Analise.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(edt_codfor.text)<>0 then
      edt_codforExit(self);
   edt_codfor.text := '';
   key:=#0;
   end;

end;

procedure TFrm_Ind_Prod_Analise.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Ind_Prod_Analise.bbAplicarClick(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(0,'CADPF1','PF1CODEMP','PF2L_CODEMP','PF1LOTSEQ','PF2L_LOTSEQ','PF1CHAVE','PF2L_CHAVE');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2L_CODEMP','PDCODPRO','PF2L_CODPRO');

Qr_Pfor02_Lotes.Close;
Qr_Pfor02_Lotes.SQL.clear;
Qr_Pfor02_Lotes.SQL.Add('select PF2L_LOTE,PF2L_LOTE_RE,PF2L_DTVCTO,PF2L_QTD,PF2L_CHAVE,PF2L_LOTSEQ,PF2L_CODEMP,PF2L_ITEM,PF2L_CODPRO '
                       +' ,PF2L_STATUS_ANALISE,PF2L_STATUS_ANALISE_MOTIVO,PF1NUMNF,PF1_NFE_CHAVE '
                       +',CASE WHEN PF2L_STATUS_ANALISE=0 THEN '+QuotedStr('PRODUTO LIBERADO')
                       +' WHEN PF2L_STATUS_ANALISE=1 THEN '+QuotedStr('AGUARDANDO ANALISE')
                       +' WHEN PF2L_STATUS_ANALISE=9 THEN '+QuotedStr('PRODUTO REPROVADO')
                       +' ELSE '+QuotedStr('DESCONHECIDO')+' END AS STATUS_ANALISE  '
                       +' ,PDNOME,PDUND,CASE WHEN PF1FILIAL IS NULL THEN 1 WHEN PF1FILIAL=0 THEN 1 ELSE PF1FILIAL END AS PF1FILIAL '
                       +' from CADPF2_LOTES_ORC'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'          where '+la_instrucao+iif(la_instrucao='','',' and ')
                       +' PF1STATUS=1 AND PF1TIPO<>2 ');


mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Qr_Pfor02_Lotes.SQL.Add(' and PF2L_CODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Pfor02_Lotes.SQL.Add(' and PF1CODFOR '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNIVEL);
if trim(mcinst2)<>'' then
   Qr_Pfor02_Lotes.SQL.Add(' and  PDSTATUS  '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_status);
if trim(mcinst2)<>'' then
   begin
   mcinst2:=fSubstituirtexto(mcinst2,'2','9');
   Qr_Pfor02_Lotes.SQL.Add(' and PF2L_STATUS_ANALISE  '+mcinst2);
   end;
Qr_Pfor02_Lotes.SQL.Add(' and not  ( NVL(PF2L_STATUS_ANALISE_MOTIVO,'+quotedstr(' ')+') ='+quotedstr(' ')+' and  PF2L_STATUS_ANALISE=0 )');

try
   Qr_Pfor02_Lotes.Open;
except
   Qr_Pfor02_Lotes.sql.SaveToFile(mpastatemp +'sqlpf2l.txt');
   end;

end;

procedure TFrm_Ind_Prod_Analise.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ind_Prod_Analise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_Ind_Prod_Analise.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Ind_Prod_Analise.clb_statusClick(Sender: TObject);
begin
CLB_Status:=Valida_CheckList(CLB_Status);

end;

procedure TFrm_Ind_Prod_Analise.bbEfetuarClick(Sender: TObject);
begin
Qr_Pfor02_Lotes.post;
end;

procedure TFrm_Ind_Prod_Analise.Qr_Pfor02_LotesAfterPost(
  DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

procedure TFrm_Ind_Prod_Analise.Qr_Pfor02_LotesBeforeEdit(
  DataSet: TDataSet);
begin
bbEfetuar.Enabled:=true;
end;

procedure TFrm_Ind_Prod_Analise.Qr_Pfor02_LotesBeforePost(
  DataSet: TDataSet);
var
Query_Exe: tQuery;
begin
if (Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=9) and (trim(Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO.AsString)='') then
   begin
   MessageDlg('Favor Colocar o Motivo da reprovação!',mtWarning,[mbOk],0);
   DBMemo1.SetFocus;
   abort;
   end
else
   bbEfetuar.Enabled:=false;
if (Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO.AsString)='' then
   begin
   if Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=1 then
      Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO.AsString:='Aguardando Analize'
   else if Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=0 then
      Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO.AsString:='Liberado / Aprovada'
   else
      Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO.AsString:='Indefinido';
   end;
if Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=0 then
   Qr_Pfor02_LotesSTATUS_ANALISE.AsString:='PRODUTO LIBERADO'
else if Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=1 then
   Qr_Pfor02_LotesSTATUS_ANALISE.AsString:='AGUARDANDO ANALISE '
else if Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=9 then
   Qr_Pfor02_LotesSTATUS_ANALISE.AsString:='PRODUTO REPROVADO'
else
   Qr_Pfor02_LotesSTATUS_ANALISE.AsString:='DESCONHECIDO';

Query_Exe:=tQuery.Create(Nil);
Query_Exe.DatabaseName:='SG_ASSOC';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add(' update CADLGC set CLQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and '));
if (Qr_Pfor02_LotesPF1FILIAL.AsInteger<2) then
   query_exe.SQL.add(' (PF1FILIAL=1 or PF1FILIAL is null )')
else
   query_exe.SQL.add(' PF1FILIAL='+Qr_Pfor02_LotesPF1FILIAL.AsString);
query_exe.SQL.add(' and PF1STATUS=1 '
                 +' and (PF2L_CODEMP=:CODEMP  OR PF2L_CODEMP=:CODEMP_FILIAL ) '
                 +'       and PF2L_LOTE=:LOTE '
                 +'       AND PF2L_CODPRO=:CODPRO '
                 +'       and PF2L_STATUS_ANALISE=1) '
                 +' where (CLCODEMP=:CODEMP OR CLCODEMP=:CODEMP_FILIAL) and '
                 +' CLCODPRO=:CODPRO '
                 +' and  CLFILIAL='+Qr_Pfor02_LotesPF1FILIAL.AsString
                 +' and CLNUMERO=:LOTE ');

query_exe.ParamByName('CODEMP').asstring:=Qr_Pfor02_LotesPF2L_CODEMP.AsString;
if Qr_Pfor02_LotesPF2L_CODEMP.AsInteger>100 then
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger-100
else
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger+100;

query_exe.ParamByName('LOTE').asstring:=Qr_Pfor02_LotesPF2L_LOTE.AsString;
query_exe.ParamByName('CODPRO').Value:=Qr_Pfor02_LotesPF2L_CODPRO.AsFloat;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add(' update CADEST set CEQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and '));
if (Qr_Pfor02_LotesPF1FILIAL.AsInteger<2) then
   query_exe.SQL.add(' (PF1FILIAL=1 or PF1FILIAL is null )')
else
   query_exe.SQL.add(' PF1FILIAL='+Qr_Pfor02_LotesPF1FILIAL.AsString);
query_exe.SQL.add(' and PF1STATUS=1 '
                +' and (PF2L_CODEMP=:CODEMP or PF2L_CODEMP=:CODEMP_FILIAL) '
                +'       AND PF2L_CODPRO=:CODPRO '
                +'       and PF2L_STATUS_ANALISE=1) '
                +' where (CECODEMP=:CODEMP or CECODEMP=:CODEMP_FILIAL) and '
                +' CECODPRO=:CODPRO '
                +' and  CEFILIAL='+Qr_Pfor02_LotesPF1FILIAL.AsString);


query_exe.ParamByName('CODEMP').asstring:=Qr_Pfor02_LotesPF2L_CODEMP.AsString;
if Qr_Pfor02_LotesPF2L_CODEMP.AsInteger>100 then
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger-100
else
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger+100;

query_exe.ParamByName('CODPRO').Value:=Qr_Pfor02_LotesPF2L_CODPRO.AsFloat;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
   end;

// CADEST

// CADPRO

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add(' update CADPRO set PDQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +' PF1STATUS=1 '
                 +' and (PF2L_CODEMP=:CODEMP OR PF2L_CODEMP=:CODEMP_FILIAL) '
                 +'       AND PF2L_CODPRO=:CODPRO '
                 +'       and PF2L_STATUS_ANALISE=1) '
                 +' where (PDCODEMP=:CODEMP  OR PDCODEMP=:CODEMP_FILIAL) and '
                 +' PDCODPRO=:CODPRO ');

query_exe.ParamByName('CODEMP').asstring:=Qr_Pfor02_LotesPF2L_CODEMP.AsString;
if Qr_Pfor02_LotesPF2L_CODEMP.AsInteger>100 then
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger-100
else
   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_Pfor02_LotesPF2L_CODEMP.AsInteger+100;

query_exe.ParamByName('CODPRO').Value:=Qr_Pfor02_LotesPF2L_CODPRO.AsFloat;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
   end;

// CADPRO



end;

procedure TFrm_Ind_Prod_Analise.Qr_Pfor02_LotesBeforeInsert(
  DataSet: TDataSet);
begin
Abort;
end;

procedure TFrm_Ind_Prod_Analise.Qr_Pfor02_LotesBeforeDelete(
  DataSet: TDataSet);
begin
Abort;
end;

procedure TFrm_Ind_Prod_Analise.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=9) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Qr_Pfor02_LotesPF2L_STATUS_ANALISE.AsInteger=1) then
   begin
   DBGrid1.Canvas.Font.Color:=$000080FF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

end.
