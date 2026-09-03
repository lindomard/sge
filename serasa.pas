unit s_serasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, ComCtrls;

type
  Tfrm_serasa = class(TForm)
    Database1: TDatabase;
    qr_caddar: TQuery;
    Timer1: TTimer;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bb_busca: TBitBtn;
    dtini: TDateEdit;
    dtfim: TDateEdit;
    Label1: TLabel;
    Label3: TLabel;
    mm_serasa: TMemo;
    lbl_local: TLabel;
    bb_salvar: TBitBtn;
    bb_gerar: TBitBtn;
    Query1: TQuery;
    QR_CADEMP: TQuery;
    QR_CADEMPCODEMP: TFloatField;
    QR_CADEMPRAZAO: TStringField;
    QR_CADEMPFANTASIA: TStringField;
    QR_CADEMPENDERECO: TStringField;
    QR_CADEMPNUMERO: TFloatField;
    QR_CADEMPRESPONS: TStringField;
    QR_CADEMPBAIRRO: TStringField;
    QR_CADEMPCIDADE: TStringField;
    QR_CADEMPUF: TStringField;
    QR_CADEMPCGC: TFloatField;
    QR_CADEMPINSCRICAO: TStringField;
    QR_CADEMPFONE: TStringField;
    QR_CADEMPFAX: TStringField;
    QR_CADEMPE_MAIL: TStringField;
    QR_CADEMPPRESID: TStringField;
    QR_CADEMPFONEP: TStringField;
    QR_CADEMPDIRETOR: TStringField;
    QR_CADEMPFONED: TStringField;
    QR_CADEMPCEP: TStringField;
    QR_CADEMPCAMINHO: TStringField;
    QR_CADEMPTELEVENDAS: TStringField;
    QR_CADEMPDATACAD: TDateTimeField;
    QR_CADEMPDATAALT: TDateTimeField;
    QR_CADEMPPA001: TStringField;
    QR_CADEMPPA002: TStringField;
    QR_CADEMPPA003: TStringField;
    QR_CADEMPFONERES: TStringField;
    QR_CADEMPFUNCAORES: TStringField;
    QR_CADEMPINSCMUNIC: TStringField;
    QR_CADEMPCERTREG: TStringField;
    QR_CADEMPAUTFUNC: TStringField;
    QR_CADEMPAUTESP: TStringField;
    QR_CADEMPALVFUNC: TStringField;
    QR_CADEMPJUCEG: TStringField;
    QR_CADEMPRAZAO_CAB: TStringField;
    QR_CADEMPFANTASIA_CAB: TStringField;
    QR_CADEMPCONTADOR: TStringField;
    QR_CADEMPCRC_CONTADOR: TStringField;
    QR_CADEMPFECMEN: TFloatField;
    QR_CADEMPBLOQ: TFloatField;
    QR_CADEMPSTATUS: TFloatField;
    QR_CADEMPEMP_LOGO: TBlobField;
    QR_CADEMPCNPF: TFloatField;
    QR_CADEMPRG: TStringField;
    QR_CADEMPHOMEPAGE: TStringField;
    QR_CADEMPCODLOC: TFloatField;
    qr_caddarCRCODEMP: TFloatField;
    qr_caddarCRNUMERO: TFloatField;
    qr_caddarCRDESD: TStringField;
    qr_caddarCRDUP: TFloatField;
    qr_caddarCRCODCLI: TFloatField;
    qr_caddarCRNUMCUP: TFloatField;
    qr_caddarCRDATCUP: TDateTimeField;
    qr_caddarCRVALOR: TFloatField;
    qr_caddarCRDTEMIS: TDateTimeField;
    qr_caddarCRDTVCTO: TDateTimeField;
    qr_caddarCRDTPAG: TDateTimeField;
    qr_caddarCRDTBX: TDateTimeField;
    qr_caddarCRNPED: TFloatField;
    qr_caddarCRORDEM: TFloatField;
    qr_caddarCRVALPAG: TFloatField;
    qr_caddarCRCODVEN: TFloatField;
    qr_caddarCRCODTLV: TFloatField;
    qr_caddarCRSTATUS: TFloatField;
    qr_caddarCROBS: TStringField;
    qr_caddarCRDESC: TFloatField;
    qr_caddarCRDEVOL: TFloatField;
    qr_caddarCRJUROS: TFloatField;
    qr_caddarCRCODBCO: TFloatField;
    qr_caddarCRLOTE: TFloatField;
    qr_caddarCRICMSR: TFloatField;
    qr_caddarCRDESCF: TFloatField;
    qr_caddarCRDTDESCF: TDateTimeField;
    qr_caddarCRJURD: TFloatField;
    qr_caddarCRDESCD: TFloatField;
    qr_caddarCRMULTA: TFloatField;
    qr_caddarCRQTDDM: TFloatField;
    qr_caddarCREMIDUP: TFloatField;
    qr_caddarCREMIBLQ: TFloatField;
    qr_caddarCRVALFRE: TFloatField;
    qr_caddarCRNOSNUM: TStringField;
    qr_caddarCRTIPCOB: TFloatField;
    qr_caddarCRDTALT: TDateTimeField;
    qr_caddarCRUSRALT: TFloatField;
    qr_caddarCRUSRBX: TFloatField;
    qr_caddarCRCOMVEN: TFloatField;
    qr_caddarCRCOMTEL: TFloatField;
    qr_caddarCRCOMSUP: TFloatField;
    qr_caddarCRSEMCOM: TFloatField;
    qr_caddarCRCODLDR: TFloatField;
    qr_caddarCRLOTCV: TFloatField;
    qr_caddarCRLOTCS: TFloatField;
    qr_caddarCRCODORI: TFloatField;
    qr_caddarCRLOTCT: TFloatField;
    qr_caddarCRCODUSR: TFloatField;
    qr_caddarCRHRALT: TStringField;
    qr_caddarCRNFACUM: TStringField;
    qr_caddarCRTOTNF: TFloatField;
    qr_caddarCRLOTSEQ_CP: TFloatField;
    qr_caddarCRCODV02: TFloatField;
    qr_caddarCRCODV03: TFloatField;
    qr_caddarCRCODCV: TFloatField;
    qr_caddarCRCOMV02: TFloatField;
    qr_caddarCRCOMV03: TFloatField;
    qr_caddarCRLOTCV02: TFloatField;
    qr_caddarCRLOTCV03: TFloatField;
    qr_caddarCRCODECF: TFloatField;
    qr_caddarCRLOTSEQ_LB: TFloatField;
    qr_caddarCRLOTSEQ_FC: TFloatField;
    qr_caddarCRLOTSEQ_CV: TFloatField;
    qr_caddarCRLOTSEQ_CV02: TFloatField;
    qr_caddarCRLOTSEQ_CV03: TFloatField;
    qr_caddarCRLOTSEQ_CS: TFloatField;
    qr_caddarCRLOTSEQ_CT: TFloatField;
    qr_caddarCRTOTDI01: TFloatField;
    qr_caddarCRTOTDI02: TFloatField;
    qr_caddarCRTOTDI03: TFloatField;
    qr_caddarCRTOTDIVL: TFloatField;
    qr_caddarCRVALDES01: TFloatField;
    qr_caddarCRVALDES02: TFloatField;
    qr_caddarCRVLRDES: TFloatField;
    qr_caddarCRTARBAN: TFloatField;
    qr_caddarCRDNOSNUM: TStringField;
    qr_caddarCRACEITE: TStringField;
    qr_caddarCRESPECIE: TStringField;
    qr_caddarCRCODBAR: TStringField;
    qr_caddarCRCODDIG: TStringField;
    qr_caddarCRLEMAT: TFloatField;
    qr_caddarCRCODASSE: TFloatField;
    qr_caddarCRCOMASSE: TFloatField;
    qr_caddarCRLOTSEQ_CASSE: TFloatField;
    qr_caddarCRLOTCASSE: TFloatField;
    qr_caddarCRINST01: TStringField;
    qr_caddarCRINST02: TStringField;
    qr_caddarCRINST03: TStringField;
    qr_caddarCRINST04: TStringField;
    qr_caddarCRQTDPARC: TFloatField;
    qr_caddarCRNUMPARC: TFloatField;
    qr_caddarCRVALSEG: TFloatField;
    qr_caddarCRCODV04: TFloatField;
    qr_caddarCRNR: TFloatField;
    qr_caddarCRCUSBCO: TFloatField;
    qr_caddarCRTBCOCOB: TFloatField;
    qr_caddarCRCOMV04: TFloatField;
    qr_caddarCRLOTSEQ_CV04: TFloatField;
    qr_caddarCRLOTCV04: TFloatField;
    qr_caddarCRTOTCGRU: TFloatField;
    qr_caddarCRTOTSGRU: TFloatField;
    qr_caddarCRTOTIPI: TFloatField;
    qr_caddarCREMIBOR: TFloatField;
    qr_caddarCRCHD_BANCO: TFloatField;
    qr_caddarCRCHD_AGENCIA: TStringField;
    qr_caddarCRCHD_CC: TStringField;
    qr_caddarCRCHD_NUMERO: TFloatField;
    qr_caddarCRTCB: TFloatField;
    qr_caddarCRCAUCAO: TFloatField;
    qr_caddarCRBCOCAU: TFloatField;
    qr_caddarCRDTCAU: TDateTimeField;
    qr_caddarCRSPC_DTPEN: TDateTimeField;
    qr_caddarCRSPC_DTNEG: TDateTimeField;
    qr_caddarCRSERASA_DTNEG: TDateTimeField;
    qr_caddarCRCODCTA: TFloatField;
    qr_caddarCRNOMCTA: TStringField;
    qr_caddarCRCODCC: TStringField;
    qr_caddarCRNOMCC: TStringField;
    qr_caddarCRNATDC: TStringField;
    qr_caddarCRCODDEP: TStringField;
    qr_caddarCRNOMDEP: TStringField;
    qr_caddarCRDESCMV: TStringField;
    qr_caddarCRSEQ: TFloatField;
    qr_caddarCRCOMIS_EXTRA: TFloatField;
    qr_caddarCRPFPGTO: TFloatField;
    qr_caddarCRTABPV: TStringField;
    qr_caddarCRCODPV: TFloatField;
    qr_caddarCRVINC02: TFloatField;
    qr_caddarCRCODFPGTO: TFloatField;
    qr_caddarCRNOMFPGTO: TStringField;
    qr_caddarCRFIN_CODFIN: TFloatField;
    qr_caddarCRLANCFIN: TFloatField;
    qr_caddarCRRECFRENTE: TFloatField;
    qr_caddarCRDATPED: TDateTimeField;
    qr_caddarCRCX_CODCAI: TFloatField;
    qr_caddarCRCX_LOTMOV: TFloatField;
    qr_caddarCRJURDEB: TFloatField;
    qr_caddarCRJURDEB_SAC: TFloatField;
    qr_caddarCRCHD_EMITENTE: TStringField;
    qr_caddarCRTARPROT: TFloatField;
    qr_caddarCRTARPROT_DATA: TDateTimeField;
    qr_caddarCRCUSPROT: TFloatField;
    qr_caddarCRCUSPROT_DATA: TDateTimeField;
    qr_caddarCRCODCAR: TFloatField;
    qr_caddarCRLOTSEQ_EC: TFloatField;
    qr_caddarCRLOTE_EC: TFloatField;
    qr_caddarCRTITPROT: TFloatField;
    qr_caddarvalor: TStringField;
    cli: TMemo;
    rg_TIPO: TRadioGroup;
    StatusBar1: TStatusBar;
    procedure bb_buscaClick(Sender: TObject);
    procedure qr_caddarCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bb_salvarClick(Sender: TObject);
    procedure bb_gerarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    function completa(x: integer; txt: string):string ; export;
  function verstatus(x: string):string; export;

var
  frm_serasa: Tfrm_serasa;
  DIA, MES, ANO :STRING;

implementation

uses MaskUtils;

{$R *.dfm}


function verstatus(x: string):string; export;
var
  qr: TQuery;
  dd, mm, aaaa: word;
  dma : integer;
  d,m,a: word;
  status: string;
begin
  qr.Close;
  qr.SQL.Clear;
  qr.SQL.Add('select * from cadcli where ccodcli='+x);
  qr.Open;
  status:=qr.FieldByName('CSTATUS').AsString;
  if (status='8') or (status='9') then
    begin
    Result:='3';
    end
  else
    begin
    DecodeDate(qr.FieldByName('CDTCAD').AsDateTime,dd,mm,aaaa);
    DecodeDate(date,d,m,a);
    MM:=mm-1;
    dma:=dd+(MM*30);
    if (dma > 1) then
      begin
      Result:='1';
      end
    else
      begin
      Result:='2';
      end;
    end;
end;




function completa(x: integer; txt: string):string;export;
var y: integer;
    txt2:string;
begin
  for y:=1 to x do
    begin
    txt2:=txt2+txt;
    end;
  Result:=txt2;
end;


procedure Tfrm_serasa.bb_buscaClick(Sender: TObject);
VAR
  cnpj: string;
  x: integer;
begin
cli.Clear;
qr_caddar.Close;
qr_caddar.SQL.Clear;
qr_caddar.sql.Add('select * from caddar, cadcli where crcodemp=1 and ');
qr_caddar.sql.add('crcodcli=ccodcli and ccnpj<>0 and crdtemis>='+chr(39)+dtini.Text+chr(39));
qr_caddar.sql.Add(' and crdtemis<='+chr(39)+dtfim.Text+chr(39));
qr_caddar.SQL.Add(' ORDER BY crDTEMIS, crNUMERO, crDESD ');
//qr_caddar.SQL.SaveToFile('c:\errosql.txt');
qr_caddar.Open;
if not qr_caddar.IsEmpty then
  begin
  while not qr_caddar.Eof do
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from cadcli where ccodcli='+qr_caddarCRCODCLI.AsString);
    Query1.Open;
    if Query1.fieldbyname('CCNPJ').AsString<>'0' then     // verifica pessoa fisica
      begin
      for x:=0 to cli.Lines.Count do
        begin
        if cli.Lines[x]=Query1.fieldbyname('CCNPJ').AsString then
          begin
          Break;
          end
        else if x = cli.Lines.Count then
          begin
          if length(Query1.fieldbyname('CCNPJ').AsString) = 14 then
            begin
            cli.Lines.Add(Query1.fieldbyname('CCNPJ').AsString);
            end
          else
            begin
            cli.Lines.Add(completa(14 - length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString);
            end;
          end;
        end;     
      end;
    qr_caddar.Next;
    end;
  end;
end;

procedure Tfrm_serasa.qr_caddarCalcFields(DataSet: TDataSet);
begin
qr_caddarvalor.Value:=FormatFloat('###,##0.00',qr_caddarCRVALOR.AsFloat);
end;

procedure Tfrm_serasa.FormShow(Sender: TObject);
var
DD,MM,AAAA: WORD;
texto, login, servico: string;
x: integer;
begin
Database1.Params.SaveToFile('c:\dbase1.txt');
x:=0;
cli.Lines.LoadFromFile('c:\SGE\SGE.INI');
for x:=0 to 20 do
  begin
  texto:=copy(cli.Lines[x],0,7);
  if UpperCase(texto)='USUARIO' then
    begin
    login:=copy(cli.Lines[x],9,20);
//  ShowMessage(login);
    end
  else if UpperCase(texto)='NOME SE' then
    begin
    servico:=copy(cli.Lines[x],14,20);
//  ShowMessage(servico);
    end;
  end;
cli.Lines.Clear;
x:=0;
mm_serasa.Lines.Text:=Database1.Params.Text;
for x:=0 to 20 do
  begin
  texto:=copy(mm_serasa.Lines[x],0,9);
  if texto='SERVER NA' then
    begin
    cli.Lines.Add('SERVER NAME='+servico);
    end
  else if texto='USER NAME' then
    begin
    cli.Lines.Add('USER NAME='+login);
    end
  else if texto='PASSWORD=' then
    begin
    cli.Lines.Add('PASSWORD=dezenove');
    end
  else
    begin
    cli.Lines.Add(mm_serasa.Lines[x]);
    end;
  end;
Database1.Params.Clear;
Database1.Params:=cli.Lines;
cli.Lines.Clear;
mm_serasa.Lines.Clear;
Database1.Connected:=true;
qr_caddar.Open;
QR_CADEMP.Open;
StatusBar1.Panels[1].Text:=QR_CADEMPRAZAO.AsString;
dtini.Text:=datetostr(date);
dtfim.Text:=datetostr(date);
lbl_local.Caption:=('ARQUIVO SALVO EM C:\SGE\SERASA'+FormatDateTime('yyyymmdd',Date)+'.TXT');
end;

procedure Tfrm_serasa.bb_salvarClick(Sender: TObject);
begin
CLI.LINES.Clear;
cli.Text:=mm_serasa.Text;
cli.Lines.SaveToFile('C:\SGE\SERASA'+FormatDateTime('yyyymmdd',Date)+'.TXT');
IF FileExists('C:\SGE\SERASA'+FormatDateTime('yyyymmdd',Date)+'.TXT') THEN
  ShowMessage('Arquivo salvo com sucesso!!!');
end;

procedure Tfrm_serasa.bb_gerarClick(Sender: TObject);
VAR
  DMSQ: STRING;
  cnpj: string;
  cnpj2: string;
  TEMPO: INTEGER;
  DIAA, DIAB, MESA, MESB, ANOA, ANOB : WORD;
  DIA, MES, ANO: INTEGER;
  tamanho: integer;
  nRegc: Integer;
  nRegt: integer;
  tCli: integer;
  dtpgto: string;
  STS : STRING; // HA QUANTO TEMPO E CLIENTE
begin
DecodeDate(dtini.Date,ANOA,MESA,DIAA);
DecodeDate(dtfim.Date,ANOB,MESB,DIAB);
DIA:=DIAb-DIAA;
MES:=MESB*30-MESA*30;
ANO:=ANOB*365-ANOA*365;
IF DIA < 0 THEN
  DIA:=DIA+31;
IF MES < 0 THEN
  MES:=(MES*(-1));
IF ANO < 0 THEN
  ANO:=ANO*(-1);
IF (DIA = 0) AND (MES = 0) THEN
  BEGIN
  DMSQ:='D';
  END
ELSE IF (DIA > 0) AND (DIA < 8) AND (MES = 0) THEN
  BEGIN
  DMSQ:='S';
  END
ELSE IF (DIA > 8) AND (DIA < 16) AND (MES = 0) THEN
  BEGIN
  DMSQ:='Q';
  END
ELSE IF (DIA > 16) OR (MES > 0) or (ano > 0)  THEN
  BEGIN
  DMSQ:='M';
  END;

cli.Clear;
nRegc:=0;
nRegt:=0;
bb_busca.Click;
Query1.Close;
Query1.SQL.Clear;
mm_serasa.Clear;
if rg_TIPO.ItemIndex=0 then
  begin
  mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+FloatToStr(qr_cadempCGC.AsFloat)+FormatDateTime('yyyymmdd',strtodate(dtini.Text))+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V01'+completa(26,' '));
  end
else if rg_TIPO.ItemIndex=1 THEN
  begin
  mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+FloatToStr(qr_cadempCGC.AsFloat)+'CORRECAO'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V01'+completa(26,' '));
  end
else if rg_TIPO.ItemIndex=2 THEN
  begin
mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+FloatToStr(qr_cadempCGC.AsFloat)+'CONCILIA'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V01'+completa(26,' '));
  end;
qr_caddar.First;
if not qr_caddar.IsEmpty then
  begin
  while not qr_caddar.Eof do
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from cadcli where ccodcli='+qr_caddarCRCODCLI.AsString);
    Query1.Open;
    DecodeDate(Query1.FIELDBYNAME('CDTCAD').AsDateTime,ANOB,MESB,DIAB);
    DecodeDate(Date,ANOA,MESA,DIAA);
    TEMPO:=(DIAA+(MESA*30)+ANOA*365)-(DIAB+(MESB+30)+ANOB*365);
    IF (Query1.FieldByName('CSTATUS').AsString<>'8') OR
        (Query1.FieldByName('CSTATUS').AsString<>'9') THEN
      BEGIN
      IF (TEMPO > 365) THEN
        BEGIN
        STS:='1';
        END
      ELSE
        BEGIN
        STS:='2';
        END;
      END
    ELSE
      BEGIN
      STS:='3';
      END;
    if Query1.fieldbyname('CCNPJ').AsString<>'0' then     // verifica pessoa fisica
      begin
      for tamanho:=0 to mm_serasa.Lines.Count do
        begin
        cnpj:=completa(14-length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString;
        cnpj2:=COPY(mm_serasa.Lines[tamanho],3,14);
          IF CNPJ = cnpj2 THEN
          BEGIN
          Break;
          END
          ELSE if tamanho = mm_serasa.Lines.Count then
          begin
          mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString+'01'+FormatDateTime('YYYYMMDD',Query1.fieldbyname('CDTCAD').AsDateTime)+STS+completa(103,' '));
          nRegc:=nRegc+1;
          end;
        end;
      end;
    qr_caddar.Next;
    end;
  qr_caddar.First;
  while not qr_caddar.Eof do
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from cadcli where ccodcli='+qr_caddarCRCODCLI.AsString);
    Query1.Open;
    if FormatDateTime('YYYYMMDD',qr_caddarCRDTPAG.AsDateTime)='19000101' then
      begin
      dtpgto:='00000000';
      end
    else
      begin
      dtpgto:=FormatDateTime('YYYYMMDD',qr_caddarCRDTPAG.AsDateTime);
      end;
    mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString+'05'+completa(10-length(qr_caddarCRNUMERO.AsString),'0')+qr_caddarCRNUMERO.AsString+FormatDateTime('YYYYMMDD',qr_caddarCRDTEMIS.AsDateTime)+completa(13-LENGTH(FloatToStr((qr_caddarCRVALOR.AsFloat)*100)),'0')+FloatToStr((qr_caddarCRVALOR.AsFloat)*100)+FormatDateTime('YYYYMMDD',qr_caddarCRDTVCTO.AsDateTime)+dtpgto);
    nRegt:=nRegt+1;
    qr_caddar.Next;
    end;
  end;
  mm_serasa.Lines.Add('99'+completa(11-LENGTH(IntToStr(nRegc)),'0')+IntToStr(nRegc)+completa(44,'0')+completa(11-LENGTH(IntToStr(nRegt)),'0')+IntToStr(nRegt)+completa(22,'0')+completa(39,' '));
end;
procedure Tfrm_serasa.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=DateToStr(DATE)+' - '+TimeToStr(TIME);
end;

end.
