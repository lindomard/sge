unit s_SinalizarLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  ComCtrls;

type
  TFrm_SinalizarLotes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_codpro: TEdit;
    Label2: TLabel;
    edt_nomepro: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    src_lotes: TDataSource;
    DBGrid_lotes: TDBGrid;
    cds_lotes: TQuery;
    cds_lotesCLCODEMP: TFloatField;
    cds_lotesCLCODPRO: TFloatField;
    cds_lotesCLNUMERO: TStringField;
    cds_lotesCLQTD: TFloatField;
    cds_lotesCLQTDR: TFloatField;
    cds_lotesCLQTDC: TFloatField;
    cds_lotesCLQTDT: TFloatField;
    cds_lotesCLQTD_PRAT: TFloatField;
    cds_lotesCLQTD_DEP: TFloatField;
    cds_lotesCLQTD_REP: TFloatField;
    cds_lotesCLQTD_RESERVADO: TFloatField;
    cds_lotesCLQTD_ANALISE: TFloatField;
    cds_lotesCLFILIAL: TFloatField;
    u_lotes: TUpdateSQL;
    cds_lotesCLSITUACAO: TStringField;
    cds_lotesCLDTVCTO: TDateTimeField;
    cds_lotesALTEROU: TFloatField;
    cds_lotesCLDTFAB: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codproExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure DBGrid_lotesCellClick(Column: TColumn);
    procedure cds_lotesBeforeEdit(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure cds_lotesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edt_dtfabExit(Sender: TObject);
    procedure edt_dtvctoExit(Sender: TObject);
    procedure cds_lotesBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }


    mSituacao_ant: string;
    mDtFabAnt: tDateTime;
    mDtVctoAnt: tDateTime;

    procedure fLerLotes(pCodpro: Real);


    procedure fSalvarAlteracoes;

  public
    { Public declarations }
  end;

var
  Frm_SinalizarLotes: TFrm_SinalizarLotes;



implementation

uses S_DM1, lerarq, s_lerarq_geral, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_SinalizarLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_SinalizarLotes.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SinalizarLotes.FormShow(Sender: TObject);
var
i: integer;
begin
DBGrid_lotes.Columns[5].PickList.Clear;
for i:=0 to high(situacaoLote) do
   begin

   DBGrid_lotes.Columns[5].PickList.Add(situacaoLote[i]);
   end;

cds_lotesCLDTVCTO.DisplayFormat := fdt2;
cds_lotesCLDTFAB.DisplayFormat    := fdt2;

cds_lotesCLDTVCTO.EditMask      := pMaskData;
cds_lotesCLDTFAB.EditMask         := pMaskData;

end;

procedure TFrm_SinalizarLotes.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         edt_CODPRO.Text:=fChamaPro(2,'Frm_sinalizarLotes',key)
      else
         edt_CODPRO.Text:=fChamaPro(0,'Frm_sinalizarLotes',key);
      edt_codproExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_SinalizarLotes.edt_codproExit(Sender: TObject);
begin
if Trim(edt_CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,edt_CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      edt_CODpro.SetFocus;
      end
   else
      begin
      edt_nomepro.text := DM1.Tb_ProPDNOME.AsString;
      bbAtualizarClick(self);
      end;
   end;

end;

procedure TFrm_SinalizarLotes.fLerLotes(pCodpro: Real);
begin
cds_lotes.close;
cds_lotes.sql.clear;
cds_lotes.sql.add('SELECT CLCODEMP,CLCODPRO,CLNUMERO,case when CLDTVCTO is null or CLDTVCTO <=:PDATANULA THEN NULL else CLDTVCTO end as CLDTVCTO ' +
                                                   ',case when CLDTFAB is null or CLDTFAB <=:PDATANULA THEN NULL else CLDTFAB END as CLDTFAB '
                 +',CLQTD,CLQTDR,CLQTDC,CLQTDT,CLQTD_PRAT,CLQTD_DEP '
                 +',CLQTD_REP,CLQTD_RESERVADO,CLQTD_ANALISE,CLFILIAL '
                 +', case when CLSITUACAO=0 then '+QuotedStr(situacaoLote[0])
                 +'       when CLSITUACAO=1 then '+QuotedStr(situacaoLote[1])
                 +'       when CLSITUACAO=2 then '+QuotedStr(situacaoLote[2])
                 +'       else to_char(CLSITUACAO) || '+QuotedStr('-')+' || '+QuotedStr('desconhecido')
                 +' end '
                 +' AS CLSITUACAO, 0 AS ALTEROU FROM CADLGC where CLCODEMP='+inttostr(codemp)
                 +' and CLCODPRO='+floattostr(pCodpro)
                 );
cds_lotes.parambyname('PDATANULA').asdatetime := pdatanula;                 
try
   cds_lotes.open;
except on e : exception do
   begin
   ex_erroSql_Novo(cds_lotes,155,'SGE','CADLGC');
   end;
   end;

mSituacao_ant := '-1';


end;
procedure TFrm_SinalizarLotes.bbAtualizarClick(Sender: TObject);
begin
if valfloat(edt_codpro.text)>0 then
   fLerLotes(valfloat(edt_codpro.text));

end;


procedure TFrm_SinalizarLotes.DBGrid_lotesCellClick(Column: TColumn);
begin
{
if (dbGrid_lotes.SelectedIndex = 4) and not (cds_lotes.state in [dsEdit,dsinsert]) then
   begin
   cds_lotes.Edit;
   end;
   }
end;

procedure TFrm_SinalizarLotes.fSalvarAlteracoes;
var
query_lote: tQuery;
    function fAtualizarLotes: boolean;
    begin
    result:=true;
    query_lote.Close;
    query_lote.SQL.clear;
    query_lote.SQL.add('Update CADLGC set CLSITUACAO='+fdeixanum( copy(cds_lotesCLSITUACAO.AsString,1,1))
                       +' where CLCODEMP='+cds_lotesCLCODEMP.AsString
                       +' and CLCODPRO='+cds_lotesCLCODPRO.AsString);
    if length(trim(cds_lotesCLNUMERO.AsString))>0 then
       begin
       query_lote.SQL.add(' and CLNUMERO='+QuotedStr(cds_lotesCLNUMERO.AsString));
       end
    else
       query_lote.SQL.add(' and (CLNUMERO is null or CLNUMERO='+QuotedStr('')+')');

    try
       query_lote.ExecSQL;
    except on e : exception do
       begin
       result:=false;
       ex_erroSql_Novo(query_lote,200,'SGE','CADLGC');
       end;
       end;
    end;
begin
if cds_lotes.IsEmpty then
   exit;
query_lote :=tQuery.Create(nil);
query_lote.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

cds_lotes.First;

if cds_lotes.State in [dsEdit,dsInsert] then
   cds_lotes.post;
While not cds_lotes.Eof do
   begin
   if (cds_lotesalterou.AsInteger = 1)  then
      begin
      if not fAtualizarLotes then
         begin
         break;
         end;
      end;
   cds_lotes.Next;
   end;
query_lote.close;
freeandnil(query_lote);
fLerLotes(ValFloat(edt_codpro.text));

end;


procedure TFrm_SinalizarLotes.cds_lotesBeforeEdit(DataSet: TDataSet);
begin
mSituacao_ant := cds_lotesCLSITUACAO.AsString;
mDtFabAnt     := cds_lotesCLDTFAB.AsDateTime;
mDtVctoAnt    := cds_lotesCLDTVCTO.AsDateTime;


end;

procedure TFrm_SinalizarLotes.BitBtn1Click(Sender: TObject);
begin
fSalvarAlteracoes;
close;
end;

procedure TFrm_SinalizarLotes.cds_lotesBeforePost(DataSet: TDataSet);
begin
if mSituacao_ant<>cds_lotesCLSITUACAO.AsString then
   cds_lotesalterou.Value:=1;

end;

procedure TFrm_SinalizarLotes.FormCreate(Sender: TObject);
begin


cds_lotesCLDTVCTO.DisplayFormat := fdt2;
cds_lotesCLDTFAB.DisplayFormat := fdt2;
end;

procedure TFrm_SinalizarLotes.edt_dtfabExit(Sender: TObject);
begin
 DBGrid_lotes.SetFocus;
end;

procedure TFrm_SinalizarLotes.edt_dtvctoExit(Sender: TObject);
begin
 DBGrid_lotes.SetFocus;
end;

procedure TFrm_SinalizarLotes.cds_lotesBeforeInsert(DataSet: TDataSet);
begin
cds_lotes.cancel;
end;

end.

