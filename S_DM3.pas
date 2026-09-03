unit S_DM3;

interface

uses
  SysUtils, Classes, DB, DBTables,dialogs;

type
  TDM3 = class(TDataModule)
    Src_Comp: TDataSource;
    U_Comp: TUpdateSQL;
    Tb_Op01: TQuery;
    Tb_Op01OP1_CODEMP: TFloatField;
    Tb_Op01OP1_CODIGO: TFloatField;
    Tb_Op01OP1_DATA: TDateTimeField;
    Tb_Op01OP1_DATAPREV: TDateTimeField;
    Tb_Op01OP1_LOTE: TStringField;
    Tb_Op01OP1_DATAVEN: TDateTimeField;
    Tb_Op01OP1_TMPPREV: TFloatField;
    Tb_Op01OP1_TMPUTIL: TFloatField;
    Tb_Op01OP1_TOTPREV: TFloatField;
    Tb_Op01OP1_TOTPROD: TFloatField;
    Tb_Op01OP1_STATUS: TFloatField;
    Tb_Op01OP1_OBS01: TStringField;
    Tb_Op01OP1_OBS02: TStringField;
    Tb_Op01OP1_OBS03: TStringField;
    Tb_Op01OP1_OBS04: TStringField;
    Tb_Op01OP1_OBS05: TStringField;
    Tb_Op01OP1_OBS06: TStringField;
    Tb_Op01OP1_OBS07: TStringField;
    Tb_Op01OP1_OBS08: TStringField;
    Tb_Op01OP1_OBS09: TStringField;
    Tb_Op01OP1_OBS10: TStringField;
    U_OP01: TUpdateSQL;
    Src_Op01: TDataSource;
    Tb_Op02: TQuery;
    Tb_Op02OP2_CODEMP: TFloatField;
    Tb_Op02OP2_CODIGO: TFloatField;
    Tb_Op02OP2_SEQ: TFloatField;
    Tb_Op02OP2_CODPRO: TFloatField;
    Tb_Op02OP2_NUMERO: TStringField;
    Tb_Op02OP2_QTDPREV: TFloatField;
    Tb_Op02OP2_QTDPROD: TFloatField;
    Tb_Op02OP2_PU: TFloatField;
    U_Op02: TUpdateSQL;
    Src_Op02: TDataSource;
    Tb_Op03: TQuery;
    U_Op03: TUpdateSQL;
    Tb_Op03OP3_CODEMP: TFloatField;
    Tb_Op03OP3_CODIGO: TFloatField;
    Tb_Op03OP3_SEQ: TFloatField;
    Tb_Op03OP3_CODMAT: TFloatField;
    Tb_Op03OP3_NUMERO: TStringField;
    Tb_Op03OP3_QTDPREV: TFloatField;
    Tb_Op03OP3_QTDUTIL: TFloatField;
    Tb_Op03OP3_PU: TFloatField;
    Src_Op03: TDataSource;
    Tb_OpET: TQuery;
    Tb_OpETOPE_CODEMP: TFloatField;
    Tb_OpETOPE_CODIGO: TFloatField;
    Tb_OpETOPE_CODETA: TFloatField;
    Tb_OpETOPE_NOMETA: TStringField;
    Tb_OpETOPE_NOME: TStringField;
    Tb_OpETOPE_DATAI: TDateTimeField;
    Tb_OpETOPE_HORAI: TStringField;
    Tb_OpETOPE_DATAT: TDateTimeField;
    Tb_OpETOPE_HORAT: TStringField;
    U_OPET: TUpdateSQL;
    Src_OPEt: TDataSource;
    Tb_Op01OP1_NOME: TStringField;
    Tb_Proc: TQuery;
    U_Proc: TUpdateSQL;
    Src_Proc: TDataSource;
    Tb_ProcCP_CODEMP: TFloatField;
    Tb_ProcCP_CODPRO: TFloatField;
    Tb_ProcCP_NOME: TStringField;
    Tb_ProcCP_DESCRICAO: TMemoField;
    Tb_Comp02: TQuery;
    U_Comp02: TUpdateSQL;
    Src_Comp02: TDataSource;
    Tb_Comp02CP_CODEMP: TFloatField;
    Tb_Comp02CP_CODPRO: TFloatField;
    Tb_Comp02CP_DESCRICAO: TMemoField;
    Tb_Comp02CP_TESTE01: TStringField;
    Tb_Comp02CP_TESTE02: TStringField;
    Tb_Comp02CP_TESTE03: TStringField;
    Tb_Comp02CP_TESTE04: TStringField;
    Tb_Comp02CP_ESP01: TStringField;
    Tb_Comp02CP_ESP02: TStringField;
    Tb_Comp02CP_ESP03: TStringField;
    Tb_Comp02CP_ESP04: TStringField;
    Tb_Comp02CP_MET01: TStringField;
    Tb_Comp02CP_MET02: TStringField;
    Tb_Comp02CP_MET03: TStringField;
    Tb_Comp02CP_MET04: TStringField;
    Tb_Comp02CP_MEDUND: TFloatField;
    Tb_Comp02CP_CODPRO_EMPRO: TFloatField;
    Tb_Comp02nompro: TStringField;
    Tb_Comp02nompro_empro: TStringField;
    Tb_Op03OP3_LOTSEQ: TFloatField;
    Tb_Op03OP3_FABENV: TFloatField;
    Tb_Op03OP3_DTVCTO: TDateTimeField;
    Tb_Op03OP3_LOTE: TStringField;
    Tb_Op01OP1_LOTSEQ: TFloatField;
    Tb_Op01OP1_FABENV: TFloatField;
    Tb_Op02OP2_LOTSEQ: TFloatField;
    Tb_Op02OP2_FABENV: TFloatField;
    Tb_Op02OP2_DTVCTO: TDateTimeField;
    Tb_OpETOPE_LOTSEQ: TFloatField;
    Tb_OpETOPE_FABENV: TFloatField;
    Tb_Comp02porund: TFloatField;
    Tb_Op02OP2_FAB_CHORI: TFloatField;
    Tb_Op02OP2_FAB_CODIGO: TFloatField;
    Tb_Op02OP2_FAB_VCTO: TDateTimeField;
    Tb_Op02OP2_FAB_QTD: TFloatField;
    Tb_Op02OP2_FAB_LOTE: TStringField;
    Tb_Op02OP2_FAB_DTFAB: TDateTimeField;
    Tb_Op02OP2_FAB_PU: TFloatField;
    Tb_CQ: TQuery;
    U_CQ: TUpdateSQL;
    Src_CQ: TDataSource;
    Tb_CQCQ_CODEMP: TFloatField;
    Tb_CQCQ_CODPPR: TFloatField;
    Tb_CQCQ_CODPRO: TFloatField;
    Tb_CQCQ_CODIGO: TFloatField;
    Tb_CQCQ_TESTE: TStringField;
    Tb_CQCQ_ESP: TStringField;
    Tb_CQCQ_MET: TStringField;
    Tb_Os01: TQuery;
    U_Os01: TUpdateSQL;
    Src_Os01: TDataSource;
    Tb_Os01OS1CODEMP: TFloatField;
    Tb_Os01OS1LOTSEQ: TFloatField;
    Tb_Os01OS1CHAVE: TFloatField;
    Tb_Os01OS1DATA: TDateTimeField;
    Tb_Os01OS1DATADEV: TDateTimeField;
    Tb_Os01OS1DATAENT: TDateTimeField;
    Tb_Os01OS1CODCLI: TFloatField;
    Tb_Os01OS1CODVEN: TFloatField;
    Tb_Os01OS1OPER: TFloatField;
    Tb_Os01OS1STATUS: TFloatField;
    Tb_Os01OS1LOTSEQ_CP: TFloatField;
    Tb_Os01OS1CHAVEPED: TFloatField;
    Tb_Os01OS1DEFREC: TBlobField;
    Tb_Os01OS1OBS01: TStringField;
    Tb_Os01OS1OBS02: TStringField;
    Tb_Os01OS1OBS03: TStringField;
    Tb_Os01OS1OBS04: TStringField;
    Tb_Os01OS1DATAAUT: TDateTimeField;
    Tb_Os02: TQuery;
    U_Os02: TUpdateSQL;
    Src_Os02: TDataSource;
    Tb_Os02OS2CODEMP: TFloatField;
    Tb_Os02OS2LOTSEQ: TFloatField;
    Tb_Os02OS2CHAVE: TFloatField;
    Tb_Os02OS2ITEM: TFloatField;
    Tb_Os02OS2CODPRO: TFloatField;
    Tb_Os02OS2MODELO: TStringField;
    Tb_Os02OS2MARCA: TStringField;
    Tb_Os02OS2SERIE: TStringField;
    Tb_Os02OS2NUMPAT: TStringField;
    Src_Os03: TDataSource;
    U_Os03: TUpdateSQL;
    Tb_Os03: TQuery;
    Tb_Os03OS3CODEMP: TFloatField;
    Tb_Os03OS3LOTSEQ: TFloatField;
    Tb_Os03OS3CHAVE: TFloatField;
    Tb_Os03OS3ITEM: TFloatField;
    Tb_Os03OS3CODPRO: TFloatField;
    Tb_Os03OS3QTD: TFloatField;
    Src_Os04: TDataSource;
    U_Os04: TUpdateSQL;
    Tb_Os04: TQuery;
    Tb_Os04OS4CODEMP: TFloatField;
    Tb_Os04OS4LOTSEQ: TFloatField;
    Tb_Os04OS4CHAVE: TFloatField;
    Tb_Os04OS4ITEM: TFloatField;
    Tb_Os04OS4CODPRO: TFloatField;
    Tb_Os04OS4QTD: TFloatField;
    Tb_Os04OS4PU: TFloatField;
    Tb_Os04OS4DESC01: TFloatField;
    U_Os05: TUpdateSQL;
    Tb_Os05: TQuery;
    Src_Os05: TDataSource;
    Tb_Os05OS5CODEMP: TFloatField;
    Tb_Os05OS5LOTSEQ: TFloatField;
    Tb_Os05OS5CHAVE: TFloatField;
    Tb_Os05OS5ITEM: TFloatField;
    Tb_Os05OS5CODPRO: TFloatField;
    Tb_Os05OS5QTD: TFloatField;
    Tb_Os05OS5PU: TFloatField;
    Tb_Os05OS5DESC01: TFloatField;
    Tb_Os01OS1TOTSER: TFloatField;
    Tb_Os01OS1DESCSER: TFloatField;
    Tb_Os01OS1TOTPEC: TFloatField;
    Tb_Os01OS1DESCPEC: TFloatField;
    Tb_Os01OS1TOTAL: TFloatField;
    Tb_Os04OS4TOTDES: TFloatField;
    Tb_Os05OS5TOTDES: TFloatField;
    Tb_Os01OS1ESTREG: TFloatField;
    Tb_Os01OS1DATALT: TDateTimeField;
    Tb_Os01OS1CODUSR: TFloatField;
    Tb_Os01OS1NOMEAUT: TStringField;
    Tb_Os01OS1NOMSOL: TStringField;
    Tb_Os02OS2OBS01: TStringField;
    Tb_Os02OS2OBS02: TStringField;
    Tb_Op01OP1_ORIGEM: TFloatField;
    Tb_Comp03: TQuery;
    U_Comp03: TUpdateSQL;
    Src_Comp03: TDataSource;
    Tb_Comp03CP_CODEMP: TFloatField;
    Tb_Comp03CP_CODPRO: TFloatField;
    Tb_Comp03CP_CODPRO_EMPRO: TFloatField;
    Tb_Comp03CP_PAGINA: TFloatField;
    Tb_Comp03CP_TEXTO: TMemoField;
    Tb_Op01OP1_SITMP: TFloatField;
    Tb_Op01OP1_SITACAB: TFloatField;
    Tb_Op02OP2_ORIGEM: TFloatField;
    Tb_Op03OP3_SITMP: TFloatField;
    Tb_Op03OP3_ORIGEM: TFloatField;
    Tb_Op02OP2_SITACAB: TFloatField;
    Tb_Comp02embpad: TFloatField;
    Tb_Texto: TQuery;
    Tb_TextoCP_PAGINA: TFloatField;
    Tb_TextoCP_IMPRIME: TFloatField;
    Tb_TextoCP_CODEMP: TFloatField;
    Tb_TextoCP_CODPRO: TFloatField;
    Tb_TextoCP_CODPRO_EMPRO: TFloatField;
    Tb_TextoCP_CHAVE: TStringField;
    Tb_Comp02qtdgrml: TFloatField;
    Tb_Op02PDNOME: TStringField;
    Tb_Op02PDUND: TStringField;
    Tb_Op02PDQTDGRML: TFloatField;
    Tb_Op02PDPRZVAL: TFloatField;
    Tb_Op01OP1_SITUACAO: TFloatField;
    Tb_Op01OP1_QTDMAN: TFloatField;
    Tb_TextoCP_IMPMP: TFloatField;
    Tb_TextoCP_IMPEMB: TFloatField;
    Tb_Op02PDREGMS: TStringField;
    Tb_Op03PDCODPRO: TFloatField;
    Tb_Op03PDNOME: TStringField;
    Tb_Op03PDUND: TStringField;
    Tb_Op03PDNOME2: TStringField;
    Tb_TextoCP_AVANCPAG: TFloatField;
    tb_comp: TQuery;
    tb_compCPCODEMP: TFloatField;
    tb_compCPORDEM: TFloatField;
    tb_compCPCODPRO: TFloatField;
    tb_compCPCODMAT: TFloatField;
    tb_compCPQUANT: TFloatField;
    tb_compCPPU: TFloatField;
    tb_compCPNUMERO: TStringField;
    tb_compCPMPNUM: TStringField;
    tb_compCPCODPRO_ACAB: TFloatField;
    tb_compCPALICMSCRED: TFloatField;
    tb_compCPICMSCRED: TFloatField;
    tb_compCPVLRINC: TFloatField;
    tb_compCPALIQORI: TFloatField;
    tb_compCPTIPO: TFloatField;
    tb_compCPQTD_PAD: TFloatField;
    tb_compCPPERCENT: TFloatField;
    tb_compCPPERCENT_REST: TFloatField;
    tb_compnommat: TStringField;
    tb_compund: TStringField;
    tb_compquantidade: TFloatField;
    tb_comppcocus: TFloatField;
    tb_comppreco1atual: TFloatField;
    tb_comppucpr: TFloatField;
    Tb_Op02CODGRU: TFloatField;
    Tb_Op02NOMGRU: TStringField;
    Tb_Op03CODGRU: TFloatField;
    Tb_Op03NOMGRU: TStringField;
    Tb_Op03PDMARCA: TStringField;
    Tb_Op02PDMARCA: TStringField;
    Tb_Op03CPORDEM: TFloatField;
    Tb_Op03CPCODPRO: TFloatField;
    Tb_Op03CPNUMERO: TStringField;
    Tb_Op03CPCODMAT: TFloatField;
    Tb_Op03CPCODPRO_ACAB: TFloatField;
    Tb_Op03CPMPNUM: TStringField;
    Tb_Op03CPQUANT: TFloatField;
    Tb_Op03CPPU: TFloatField;
    Tb_Op03CPVLRINC: TFloatField;
    Tb_Op03CPALIQORI: TFloatField;
    Tb_Op03CPALICMSCRED: TFloatField;
    Tb_Op03CPICMSCRED: TFloatField;
    Tb_Op03CPTIPO: TFloatField;
    Tb_Op03CPQTD_PAD: TFloatField;
    Tb_Op03CPPERCENT: TFloatField;
    Tb_Op03CPPERCENT_REST: TFloatField;
    Tb_Op03observacao: TStringField;
    tb_compquant_por_unidade: TFloatField;
    tb_compqtdgrml: TFloatField;
    Tb_Op03OP3_LOTE_RE: TStringField;
    Tb_Op01OP1_LOCARMAZENAMENTO: TFloatField;
    Tb_Op01OP1_PEDORI_CHAVE: TFloatField;
    Tb_Op01OP1_PEDORI_LOTSEQ: TFloatField;
    Tb_Op01OP1_PEDORI_CODEMP: TFloatField;
    Tb_Op01OP1_CHAVE_FRAC: TFloatField;
    Tb_Op01OP1_CHAVE_FRAC_ANO: TFloatField;
    Tb_Op01OP1_TIPO_OP: TFloatField;
    Tb_Op01OP1_NOMEREL_PADRAO: TStringField;
    Tb_Op03OP3_DTFAB: TDateTimeField;
    Tb_Op01OP1_DATFAB: TDateTimeField;
    procedure c(DataSet: TDataSet);
    procedure Tb_Comp_tstBeforePost(DataSet: TDataSet);
    procedure Tb_ProcAfterInsert(DataSet: TDataSet);
    procedure Tb_ProcBeforeInsert(DataSet: TDataSet);
    procedure Tb_Op01BeforePost(DataSet: TDataSet);
    procedure Tb_Op02BeforePost(DataSet: TDataSet);
    procedure Tb_Op03BeforePost(DataSet: TDataSet);
    procedure Tb_OpETBeforePost(DataSet: TDataSet);
    procedure Tb_ProcBeforePost(DataSet: TDataSet);
    procedure e(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_Comp02BeforePost(DataSet: TDataSet);
    procedure Tb_Comp02CalcFields(DataSet: TDataSet);
    procedure Tb_CQBeforePost(DataSet: TDataSet);
    procedure Tb_CQBeforeInsert(DataSet: TDataSet);
    procedure Tb_CQAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_tstAfterInsert(DataSet: TDataSet);
    procedure tb_compCalcFields(DataSet: TDataSet);
    procedure Tb_Op03CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM3: TDM3;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TDM3.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;


end;

procedure TDM3.Tb_Comp_tstBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Comp.FieldCount-1 do
   begin
   if not DM3.Tb_Comp.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Comp.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Comp.Fields[i].Value:=0
//   else if DM3.Tb_Comp.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Comp.Fields[i].Value:=0
   else if DM3.Tb_Comp.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Comp.Fields[i].Value:='';
   end;


end;

procedure TDM3.Tb_ProcAfterInsert(DataSet: TDataSet);
begin
DM3.Tb_ProcCP_CODEMP.Value:=codemp;
DM3.Tb_ProcCP_CODPRO.Value:=cod;
DM3.Tb_ProcCP_NOME.Value  :='_';
DM3.Tb_PRoc.Post;
DM3.Tb_Proc.Edit;
end;

procedure TDM3.Tb_ProcBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Select max(CP_CODPRO) from CADPROC '
                  +iif(DM1.QR_Tid.Locate('TINOME','CADPRO',[]),'',' where CP_CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM3.Tb_Op01BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Op01.FieldCount-1 do
   begin
   if not DM3.Tb_Op01.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Op01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Op01.Fields[i].Value:=0
//   else if DM3.Tb_Op01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Op01.Fields[i].Value:=0
   else if DM3.Tb_Op01.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Op01.Fields[i].Value:='';
   end;


end;

procedure TDM3.Tb_Op02BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Op02.FieldCount-1 do
   begin
   if not DM3.Tb_Op02.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Op02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Op02.Fields[i].Value:=0
//   else if DM3.Tb_Op02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Op02.Fields[i].Value:=0
   else if DM3.Tb_Op02.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Op02.Fields[i].Value:='';
   end;


end;

procedure TDM3.Tb_Op03BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Op03.FieldCount-1 do
   begin
   if not DM3.Tb_Op03.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Op03.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Op03.Fields[i].Value:=0
//   else if DM3.Tb_Op03.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Op03.Fields[i].Value:=0
   else if DM3.Tb_Op03.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Op03.Fields[i].Value:='';
   end;


end;

procedure TDM3.Tb_OpETBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_OpET.FieldCount-1 do
   begin
   if not DM3.Tb_OpET.Fields[i].IsNull then
      Continue;
   if DM3.Tb_OpET.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_OpET.Fields[i].Value:=0
//   else if DM3.Tb_OpET.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_OpET.Fields[i].Value:=0
   else if DM3.Tb_OpET.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_OpET.Fields[i].Value:='';
   end;


end;

procedure TDM3.Tb_ProcBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Proc.FieldCount-1 do
   begin
   if not DM3.Tb_Proc.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Proc.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Proc.Fields[i].Value:=0
//   else if DM3.Tb_Proc.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Proc.Fields[i].Value:=0
   else if DM3.Tb_Proc.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Proc.Fields[i].Value:='';
   end;


end;

procedure TDM3.e(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
if EDBEngineError(E).Errors[0].ErrorCode = 9729 then
MessageDlg('Registro já existe!',mtWarning,[mbOk],0);
Action:= daAbort;

end;

procedure TDM3.Tb_Comp02BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM3.Tb_Comp02.FieldCount-1 do
   begin
   if not DM3.Tb_Comp02.Fields[i].IsNull then
      Continue;
   if DM3.Tb_Comp02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_Comp02.Fields[i].Value:=0
//   else if DM3.Tb_Comp02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_Comp02.Fields[i].Value:=0
   else if DM3.Tb_Comp02.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_Comp02.Fields[i].Value:='';
   end;

end;

procedure TDM3.Tb_Comp02CalcFields(DataSet: TDataSet);
var
mqtdgrml: Real;
begin
if flqr1('PDNOME,PDUND,PDEMBPAD,PDQTDGRML','PD','CADPRO','N','PDCODPRO',DM3.Tb_Comp02CP_CODPRO.AsString) then
   begin
   if DM1.Query1.FieldByName('PDQTDGRML').AsFloat=0 then
      begin
      mqtdgrml:=ValFloat(DM1.Query1.FieldByName('PDNOME').AsString);
      if mqtdgrml>=0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.sql.Clear;
         DM1.Query2.sql.Add('Update CADPRO set PDQTDGRML=0+'+mudavp(FloatToStr(mqtdgrml/1000))
                           +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                           +' PDCODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
         try
            DM1.Query2.ExecSql;
            fDM1StarTcommit;
         except
            end;
         end;
      end;
   DM3.Tb_Comp02nompro.Value      :=DM1.Query1.FieldByName('PDNOME').AsString;
   DM3.Tb_Comp02embpad.Value      :=DM1.Query1.FieldByName('PDEMBPAD').AsFloat;
   DM3.Tb_Comp02qtdgrml.Value     :=DM1.Query1.FieldByName('PDQTDGRML').AsFloat;
   end;


if flqr1('PDNOME,PDUND,PDEMBPAD,PDQTDGRML','PD','CADPRO','N','PDCODPRO',DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString) then
   begin
   DM3.Tb_Comp02nompro_empro .Value      :=DM1.Query1.Fields[0].AsString;
   end;

if (DM3.Tb_Comp02CP_MEDUND.Value>0) then
   DM3.Tb_Comp02porund.Value:=1/DM3.Tb_Comp02CP_MEDUND.Value;
end;

procedure TDM3.Tb_CQBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if (DM3.Tb_CQCQ_TESTE.IsNull) and (DM3.Tb_CQCQ_ESP.IsNull) and (DM3.Tb_CQCQ_MET.IsNull) then
   begin
   Tb_CQ.Cancel;
   abort;
   end;
for i:=0 to DM3.Tb_CQ.FieldCount-1 do
   begin
   if not DM3.Tb_CQ.Fields[i].IsNull then
      Continue;
   if DM3.Tb_CQ.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM3.Tb_CQ.Fields[i].Value:=0
//   else if DM3.Tb_CQ.fields[i].DataType in [ftDate,ftDateTime] then
//      DM3.Tb_CQ.Fields[i].Value:=0
   else if DM3.Tb_CQ.Fields[i].DataType in [ftString,ftMemo] then
      DM3.Tb_CQ.Fields[i].Value:='';
   end;

end;

procedure TDM3.Tb_CQBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CQ_CODIGO) from CADCQ where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and CQ_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CQ_CODPPR=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString
                  +' and CQ_CODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsFloat+1;
end;

procedure TDM3.Tb_CQAfterInsert(DataSet: TDataSet);
begin
DM3.Tb_CQCQ_CODEMP.Value:=codemp;
DM3.Tb_CQCQ_CODPPR.Value:=DM3.Tb_Comp02CP_CODPRO_EMPRO.Value;
DM3.Tb_CQCQ_CODPRO.Value:=DM3.Tb_Comp02CP_CODPRO.Value;
DM3.Tb_CQCQ_CODIGO.Value:=cod;
end;

procedure TDM3.Tb_Comp_tstAfterInsert(DataSet: TDataSet);
begin
DM3.Tb_CompCPPERCENT_REST.Value:=0;
DM3.Tb_CompCPPERCENT.Value:=0;
end;

procedure TDM3.tb_compCalcFields(DataSet: TDataSet);
var
mqtdgrml: Real;

begin
DM3.Tb_Comppcocus.Value :=0;

if DM3.Tb_CompCPCODMAT.Value>0 then
   begin
   if flqr1('PDNOME,PDUND,PDPRECO1,PDUCPR,PDPRECOC,PDPCOFAB','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODMAT.AsString) then
      begin
      DM3.Tb_Compnommat.Value      :=DM1.Query1.Fields[0].AsString;
      DM3.Tb_Compund.Value         :=DM1.Query1.Fields[1].AsString;

//      if DM1.Tb_PargerPINDUSTRIA.Value=1 then
//         DM3.Tb_Comppreco1atual.Value :=DM1.Query1.Fields[2].AsFloat
//      else
         DM3.Tb_Comppreco1atual.Value :=DM1.Query1.FieldbyName('PDUCPR').AsFloat;
      DM3.Tb_Comppucpr.Value :=DM1.Query1.FieldbyName('PDUCPR').AsFloat;

      if DM1.Query1.FieldbyName('PDPRECOC').AsFloat<>0 then
         DM3.Tb_Comppcocus.Value :=DM1.Query1.FieldbyName('PDPRECOC').AsFloat
      else if DM1.Query1.FieldbyName('PDPCOFAB').AsFloat<>0 then
         DM3.Tb_Comppcocus.Value :=DM1.Query1.FieldbyName('PDPCOFAB').AsFloat
      else
         DM3.Tb_Comppcocus.Value :=DM1.Query1.FieldbyName('PDUCPR').AsFloat;

//      DM3.Tb_Comppcocus.Value :=DM1.Query1.Fields[4].AsFloat;
      end;
   end;
//   DM3.Tb_Comp.Edit;
// if (DM3.Tb_CompCPPU.AsFloat>0) and (DM3.Tb_Comppcocus.AsFloat=0) then
//   DM3.Tb_CompCPPU.AsFloat:=DM1.Query1.Fields[3].AsFloat;

DM3.Tb_Compqtdgrml.Value     :=1;

if flqr1('PDNOME,PDUND,PDEMBPAD,PDQTDGRML','PD','CADPRO','N','PDCODPRO',DM3.tb_compCPCODPRO.AsString) then
   begin
   if DM1.Query1.FieldByName('PDQTDGRML').AsFloat=0 then
      begin
      mqtdgrml:=ValFloat(DM1.Query1.FieldByName('PDNOME').AsString);
      if mqtdgrml>=0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.sql.Clear;
         DM1.Query2.sql.Add('Update CADPRO set PDQTDGRML=0+'+mudavp(FloatToStr(mqtdgrml/1000))
                           +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                           +' PDCODPRO=0'+DM3.Tb_CompCPCODPRO.AsString);
         try
            DM1.Query2.ExecSql;
            fDM1StarTcommit;
         except
            end;
         end;
      end;
   DM3.Tb_Compqtdgrml.Value     :=DM1.Query1.FieldByName('PDQTDGRML').AsFloat;
   end;


if (DM1.Tb_PargerPIND_TPFORMULA.AsInteger>0) or (DM1.Tb_PargerPINDUSTRIA.Value=4) then
   begin
   if (DM1.Tb_PargerPINDUSTRIA.Value=4) and (DM3.tb_compCPTIPO.AsInteger=0) then
         DM3.Tb_Compquantidade.Value:=(1*DM3.Tb_Compqtdgrml.Value)*(DM3.Tb_CompCPPERCENT_REST.AsFloat/100)
   else if (DM3.Tb_CompCPCODPRO_ACAB.Value>0) or
      ( (DM1.Tb_PargerPINDUSTRIA.Value=4) and (DM3.Tb_CompCPPERCENT_REST.AsFloat=0)) then
      begin
      if (DM3.tb_compCPTIPO.AsInteger=2) and
         (DM3.Tb_CompCPQUANT.AsFloat>0) then
//    mvt:=arredonda(  DM3.Tb_Comppcocus.Value*(DM3.Tb_CompCPQUANT.Value) );

         DM3.Tb_Compquantidade.Value:=(DM3.Tb_CompCPQUANT.Value)
//         DM3.Tb_Compquantidade.Value:=(1/DM3.Tb_CompCPQUANT.Value)
      else
         DM3.Tb_Compquantidade.Value:=DM3.Tb_CompCPQUANT.Value
      end
   else
      DM3.Tb_Compquantidade.Value:=DM3.Tb_CompCPPERCENT_REST.AsFloat/100;
   end
else
   DM3.Tb_Compquantidade.Value:=DM3.Tb_CompCPQUANT.Value;


end;

procedure TDM3.Tb_Op03CalcFields(DataSet: TDataSet);
begin
if (DM3.Tb_Op03CPCODMAT.AsFloat>0) then
   begin
   if DM3.Tb_Op03CPPERCENT.AsFloat=0 then
      DM3.Tb_Op03observacao.Value:='QSP '+FormatFloat(mcasas, DM3.Tb_Op03CPPERCENT_REST.AsFloat)+'%'
   else
     DM3.Tb_Op03observacao.Value:=FormatFloat(mcasas, DM3.Tb_Op03CPPERCENT.Value)+'%';
   end;

end;

end.
