unit s_serasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, ComCtrls,lerarq, S_SelEmp, CheckLst;

type
  Tfrm_serasa = class(TForm)
    qr_caddar: TQuery;
    Timer1: TTimer;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bb_busca: TBitBtn;
    dtini: TDateEdit;
    dtfim: TDateEdit;
    lbl_a: TLabel;
    lbl_de: TLabel;
    mm_serasa: TMemo;
    lbl_local: TLabel;
    bb_salvar: TBitBtn;
    bb_gerar: TBitBtn;
    Query1: TQuery;
    cli: TMemo;
    rg_TIPO: TRadioGroup;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    cb_tipo: TComboBox;
    qr_caddarCDTCAD: TDateTimeField;
    qr_caddarCRSTATUS: TFloatField;
    qr_caddarCSTATUS: TFloatField;
    qr_caddarCTPPESSOA: TFloatField;
    qr_caddarCCNPJ: TFloatField;
    qr_caddarCCPF: TFloatField;
    qr_caddarCRCODCLI: TFloatField;
    qr_caddarCRNUMERO: TFloatField;
    qr_caddarCRDTEMIS: TDateTimeField;
    qr_caddarCRDTPAG: TDateTimeField;
    qr_caddarCRVALOR: TFloatField;
    qr_caddarCRDTVCTO: TDateTimeField;
    qr_caddarCRDESD: TStringField;
    qr_caddarSIT: TStringField;
    qr_caddarvalor: TStringField;
    qr_caddartipo: TStringField;
    edt_arquivo: TEdit;
    lbl_arq: TLabel;
    Open_File: TOpenDialog;
    procedure bb_buscaClick(Sender: TObject);
    procedure qr_caddarCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bb_salvarClick(Sender: TObject);
    procedure bb_gerarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_arquivoDblClick(Sender: TObject);
    procedure rg_TIPOClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
   function completa(x: integer; txt: string):string ; export;
   function verstatus(x: string):string; export;
   function busca_titulo(Titulo: String; pEmp: TCheckListBox):String;
var
  frm_serasa: Tfrm_serasa;
  DIA, MES, ANO, local :STRING;
  n_erro: integer;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses MaskUtils, S_DM1, Func, S_DM2, Math;

{$R *.dfm}

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
  try
    qr.Open;
  except
    if not DirectoryExists(local) then
      CreateDir(local);
      n_erro:=0;
      while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
        begin
        n_erro:=n_erro+1;
        end;
      qr.SQL.SaveToFile(local+'\errosq'+IntToStr(n_erro)+'.txt');
      ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
    end;
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

function busca_titulo(Titulo: String; pEmp: TCheckListBox):String;
var
  Qry_Temp: TQuery;
begin
la_Empresas:='';
la_Empresas:=fla_sqlmp('CRCODEMP',pEmp);
Qry_Temp:=TQuery.Create(frm_serasa);
Qry_Temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Qry_Temp.Close;
Qry_Temp.SQL.Clear;
Qry_Temp.SQL.Add(' select * from CADDAR, CADCLI where CCODCLI(+)=CRCODCLI ');
Qry_Temp.SQL.Add(' and CRNUMERO='+chr(39)+copy(Titulo,19,10)+chr(39));
Qry_Temp.SQL.Add(' and CRDTEMIS='+chr(39)+copy(Titulo,35,2)+'/'+copy(Titulo,33,2)+'/'+copy(Titulo,29,4)+chr(39));
Qry_Temp.SQL.Add(' and CRVALOR ='+chr(39)+copy(Titulo,37,13)+chr(39)+'/100');
Qry_Temp.SQL.Add(' and CRDTVCTO='+chr(39)+copy(Titulo,56,2)+'/'+copy(Titulo,54,2)+'/'+copy(Titulo,50,4)+chr(39));
Qry_Temp.SQL.Add(' and '+la_Empresas);
Qry_Temp.Open;
if ((Qry_Temp.FieldByName('CRDTPAG').IsNull) or (Qry_Temp.FieldByName('CRDTPAG').AsDateTime>pdatanula)) and (Qry_Temp.FieldByName('CRDTPAG').AsDateTime>StrToDate('01/01/1900')) then
  begin
  Result:=copy(Titulo,0,57)+FormatDateTime('YYYYMMDD',Qry_Temp.FieldByName('CRDTPAG').AsDateTime);
  end
else
  begin
  Result:=copy(Titulo,0,57);
  end;
end;


procedure Tfrm_serasa.bb_buscaClick(Sender: TObject);
var
  cnpj: string;
  x: integer;
begin
if StrToDate(dtini.Text)>StrToDate(dtfim.Text) then
  begin
  fmensagem('Favor selecione uma data valida!!!',0,['0'],0);
  Exit;
  end;
ProgressBar1.Position:=0;
cli.Clear;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
qr_caddar.Close;
qr_caddar.SQL.Clear;
qr_caddar.sql.Add('select CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCLI, ');
qr_caddar.sql.Add(' CRNUMERO, CRDTEMIS, CRDTPAG, sum(CRVALOR) as CRVALOR, CRDTVCTO, min(crdesd) as CRDESD, ' );
qr_caddar.SQL.Add(chr(39)+'NORMAL'+chr(39)+' AS SIT ');
qr_caddar.sql.Add(' from caddar  '+ iif(la_tabelas='','',',')+la_tabelas);
qr_caddar.sql.Add('       '+la_Join );
qr_caddar.sql.Add('       where '+la_Empresas+' and ');
qr_caddar.sql.Add('   '+   iif(la_instrucao='','',la_instrucao+' and '));
if cb_tipo.ItemIndex=0 then
  begin
  qr_caddar.sql.Add(' (cadcli.ccnpj<>0 or cadcli.ccpf<>0)');
  end
else if cb_tipo.ItemIndex=1 then
  begin
  qr_caddar.sql.Add(' cadcli.ccnpj<>0 and cadcli.ctppessoa=1 ');
  end
else if cb_tipo.ItemIndex=2 then
  begin
  qr_caddar.sql.Add(' cadcli.ccpf<>0 and cadcli.ctppessoa=0 ');
  end;
qr_caddar.sql.Add(' and ( ');
qr_caddar.sql.Add(' ( crdtemis>='+chr(39)+dtini.Text+chr(39));
qr_caddar.sql.Add(' and crdtemis<='+chr(39)+dtfim.Text+chr(39)+')');
qr_caddar.sql.Add(' or (crdtpag>='+chr(39)+dtini.Text+chr(39));
qr_caddar.sql.Add(' and crdtpag<='+chr(39)+dtfim.Text+chr(39)+')');
qr_caddar.sql.add(' ) ');
qr_caddar.sql.Add('group by CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCLI, ');
qr_caddar.sql.Add(' CRNUMERO, CRDTEMIS, CRDTPAG, CRDTVCTO' );
// UNINDO
qr_caddar.SQL.Add(' UNION ');
//UNINDO OLD_CADDAR
qr_caddar.sql.Add('select CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCLI, ');
qr_caddar.sql.Add(' CRNUMERO, CRDTEMIS, CRDTPAG, sum(CRVALOR) as CRVALOR, CRDTVCTO, min(crdesd) as CRDESD,' );
qr_caddar.SQL.Add(chr(39)+'CANCELADA'+chr(39)+' AS SIT ');
qr_caddar.sql.Add(' from old_caddar  '+iif(la_tabelas='','',',')+la_tabelas);
qr_caddar.sql.Add('       '+la_Join );
qr_caddar.sql.Add('       where '+iif(la_Empresas='','',la_Empresas+' and ')  );
qr_caddar.sql.Add('      '+        iif(la_instrucao='','',la_instrucao+' and '));
if cb_tipo.ItemIndex=0 then
  begin
  qr_caddar.sql.Add(' (cadcli.ccnpj<>0 or cadcli.ccpf<>0)');
  end
else if cb_tipo.ItemIndex=1 then
  begin
  qr_caddar.sql.Add(' cadcli.ccnpj<>0 and cadcli.ctppessoa=1 ');
  end
else if cb_tipo.ItemIndex=2 then
  begin
  qr_caddar.sql.Add(' cadcli.ccpf<>0 and cadcli.ctppessoa=0 ');
  end;
qr_caddar.sql.Add(' and crstatus=9 ');
qr_caddar.sql.Add(' and ( ');
qr_caddar.sql.Add(' ( crdtemis>='+chr(39)+dtini.Text+chr(39));
qr_caddar.sql.Add(' and crdtemis<='+chr(39)+dtfim.Text+chr(39)+')');
qr_caddar.sql.Add(' or (crdtpag>='+chr(39)+dtini.Text+chr(39));
qr_caddar.sql.Add(' and crdtpag<='+chr(39)+dtfim.Text+chr(39)+')');
qr_caddar.sql.add(' ) ');
qr_caddar.sql.Add('group by CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCLI, ');
qr_caddar.sql.Add(' CRNUMERO, CRDTEMIS, CRDTPAG, CRDTVCTO' );
qr_caddar.SQL.Add('  ORDER BY SIT, CRDTEMIS, CRDTPAG  ');
try
  qr_caddar.Open;
except
  if not DirectoryExists(local) then
    CreateDir(local);
    n_erro:=0;
    while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
      begin
      n_erro:=n_erro+1;
      end;
    qr_caddar.SQL.SaveToFile(local+'\errosql'+IntToStr(n_erro)+'.txt');
    ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
    end;
if not qr_caddar.IsEmpty then
  begin
  while not qr_caddar.Eof do
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from cadcli where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'','CCODEMP=0'+InttoStr(codemp)+' and ')
                  +' ccodcli='+qr_caddarCRCODCLI.AsString);
    try
      Query1.Open;
    except
      if not DirectoryExists(local) then
        CreateDir(local);
      n_erro:=0;
      while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
        begin
        n_erro:=n_erro+1;
        end;
      Query1.SQL.SaveToFile(local+'\errosq'+IntToStr(n_erro)+'.txt');
      ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
      end;
    if Query1.fieldbyname('CTPPESSOA').AsInteger=1 then     // verifica pessoa juridica
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
      end
    else if Query1.fieldbyname('CTPPESSOA').AsInteger=0 then     // verifica pessoa fisica
      begin
      for x:=0 to cli.Lines.Count do
        begin
        if cli.Lines[x]=Query1.fieldbyname('CCPF').AsString then
          begin
          Break;
          end
        else if x = cli.Lines.Count then
          begin
          if length(Query1.fieldbyname('CCPF').AsString) = 14 then
            begin
            cli.Lines.Add(Query1.fieldbyname('CCPF').AsString);
            end
          else
            begin
            cli.Lines.Add(completa(14 - length(Query1.fieldbyname('CCPF').AsString),'0')+Query1.fieldbyname('CCPF').AsString);
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
qr_caddarvalor.Value:=FormatFloat(mcasas,qr_caddarCRVALOR.AsFloat);
Query1.Close;
QUERY1.SQL.Clear;
QUERY1.SQL.Add('SELECT * FROM CADCLI WHERE CCODCLI='+qr_caddarCRCODCLI.AsString);
try
  QUERY1.Open;
except
  if not DirectoryExists(local) then
    CreateDir(local);
  n_erro:=0;
  while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
    begin
    n_erro:=n_erro+1;
    end;
  Query1.SQL.SaveToFile(local+'\errosq'+IntToStr(n_erro)+'.txt');
  ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
  end;
IF Query1.FieldByName('CTPPESSOA').AsInteger=1 THEN
  BEGIN
  qr_caddarTIPO.AsString:='05';
  END
ELSE
  BEGIN
  qr_caddarTIPO.AsString:='09';
  END;
end;

procedure Tfrm_serasa.FormShow(Sender: TObject);
var
DD,MM,AAAA: WORD;
texto, login, servico: string;
x: integer;
begin
cli.Lines.Clear;
x:=0;
cli.Lines.Clear;
mm_serasa.Lines.Clear;
StatusBar1.Panels[1].Text:=DM1.Tb_EmpRAZAO.AsString;
dtini.Text:=datetostr(date);
dtfim.Text:=datetostr(date);
lbl_local.Caption:=('ARQUIVO SALVO EM C:\SGE\SERASA_NOR'+FormatDateTime('yyyymmdd',Date)+'.TXT');
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
  nRegc01: Integer;
  nRegt05: integer;
  nRegc08: integer;
  nRegt09: integer;
  tCli: integer;
  dtpgto: string;
  STS : STRING; // HA QUANTO TEMPO E CLIENTE
begin
if rg_tipo.ItemIndex<2 then
  begin
  StatusBar1.Panels[2].Text:='';
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
  if cb_tipo.ItemIndex<2 then
    begin
    cli.Clear;
    nRegc01:=0;
    nRegt05:=0;
    nRegc08:=0;
    nRegt09:=0;
    bb_busca.Click;
    ProgressBar1.Max:=qr_caddar.RecordCount;
    Query1.Close;
    Query1.SQL.Clear;
    mm_serasa.Clear;
    // header
    if rg_TIPO.ItemIndex=0 then
      begin
      if DM1.Tb_EmpCGC.AsInteger<>0 then
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14-length(DM1.Tb_EmpCGC.AsString),'0')+DM1.Tb_EmpCGC.AsString+FormatDateTime('yyyymmdd',strtodate(dtini.Text))+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V.01'+completa(26,' '));
        end
      else if DM1.Tb_EmpCNPF.AsInteger<>0 then
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14-length(DM1.Tb_EmpCNPF.AsString),'0')+DM1.Tb_EmpCNPF.AsString+FormatDateTime('yyyymmdd',strtodate(dtini.Text))+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V.01'+completa(26,' '));
        end;
      end
    else if rg_TIPO.ItemIndex=1 THEN
      begin
      if DM1.Tb_EmpCGC.AsInteger<>0 then
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14-length(DM1.Tb_EmpCGC.AsString),'0')+DM1.Tb_EmpCGC.AsString+'CORRECAO'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V.01'+completa(26,' '));
        end
      else if DM1.Tb_EmpCNPF.AsInteger<>0 then
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14-length(DM1.Tb_EmpCNPF.AsString),'0')+DM1.Tb_EmpCNPF.AsString+'CORRECAO'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V.01'+completa(26,' '));
        end;
      end
    else if rg_TIPO.ItemIndex=2 THEN
      begin
      if DM1.Tb_EmpCGC.AsInteger<>0 then
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14-length(DM1.Tb_EmpCGC.AsString),'0')+DM1.Tb_EmpCGC.AsString+'CONCILIA'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V.01'+completa(26,' '));
        end
      else
        begin
        mm_serasa.Lines.Add('00RELATO COMP NEGOCIOS'+completa(14 - length(DM1.Tb_EmpCNPF.AsString),'0')+DM1.Tb_EmpCNPF.AsString+'CONCILIA'+FormatDateTime('yyyymmdd',strtodate(dtfim.Text))+DMSQ+completa(15,' ')+completa(32,' ')+'V01'+completa(26,' '));
        end;
      end;
    qr_caddar.First;
      // tempo de relacionamento
    if not qr_caddar.IsEmpty then
      begin
      while not qr_caddar.Eof do
        begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select * from cadcli where ccodcli='+qr_caddarCRCODCLI.AsString);
        try
          Query1.Open;
        except
          if not DirectoryExists(local) then
            CreateDir(local);
          n_erro:=0;
          while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
            begin
            n_erro:=n_erro+1;
            end;
          Query1.SQL.SaveToFile(local+'\errosq'+IntToStr(n_erro)+'.txt');
          ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
          end;
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
        if Query1.fieldbyname('CTPPESSOA').AsInteger=1 then     // verifica pessoa juridica
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
              nRegc01:=nRegc01+1;
              end;
            end;
          end
        else if Query1.fieldbyname('CTPPESSOA').AsInteger=0 then  // verifica pessoa FISICA
          begin
          for tamanho:=0 to mm_serasa.Lines.Count do
            begin
            cnpj:=completa(14-length(Query1.fieldbyname('CCPF').AsString),'0')+Query1.fieldbyname('CCPF').AsString;
            cnpj2:=COPY(mm_serasa.Lines[tamanho],3,14);
            IF CNPJ = cnpj2 THEN
              BEGIN
              Break;
              END
            ELSE if tamanho = mm_serasa.Lines.Count then
              begin
              mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCPF').AsString),'0')+Query1.fieldbyname('CCPF').AsString+'08'+FormatDateTime('YYYYMMDD',Query1.fieldbyname('CDTCAD').AsDateTime)+STS+completa(103,' '));
              nRegc08:=nRegc08+1;
              end;
            end;
          end;
        ProgressBar1.Position:=ProgressBar1.Position+1;
        qr_caddar.Next;
        end;
      qr_caddar.First;
      ProgressBar1.Position:=0;
    //titulos
      while not qr_caddar.Eof do
        begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select * from cadcli where ccodcli='+qr_caddarCRCODCLI.AsString);
        try
          Query1.Open;
        except
          if not DirectoryExists(local) then
            CreateDir(local);
          n_erro:=0;
          while FileExists(local+'\errosql'+inttostr(n_erro)+'.txt') do
            begin
            n_erro:=n_erro+1;
            end;
          Query1.SQL.SaveToFile(local+'\errosq'+IntToStr(n_erro)+'.txt');
          ShowMessage('Gerado Arquivo de Erro >> '+local+'\errosq'+IntToStr(n_erro)+'.txt');
          end;
        if qr_caddarCRDTPAG.AsDateTime<=pdatanula then
          begin
          dtpgto:='';
          end
        else
          begin
          if (qr_caddarCRDTPAG.AsDateTime<=StrToDateTime(dtfim.Text)) and
             (qr_caddarCRDTPAG.AsDateTime>=StrToDateTime(dtini.Text)) then
            begin
            dtpgto:=FormatDateTime('YYYYMMDD',qr_caddarCRDTPAG.AsDateTime);
            end
          else
            begin
            dtpgto:='';
            end;
          end;
        if Query1.fieldbyname('CTPPESSOA').AsInteger=1 THEN // VERIFICA PESSOA JURIDICA
          begin
          if qr_caddarCRSTATUS.AsInteger<>9 then
            begin
            mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString+'05'+completa(10-length(qr_caddarCRNUMERO.AsString),'0')+qr_caddarCRNUMERO.AsString+FormatDateTime('YYYYMMDD',qr_caddarCRDTEMIS.AsDateTime)+completa(13-LENGTH(FloatToStr((qr_caddarCRVALOR.AsFloat)*100)),'0')+FloatToStr((qr_caddarCRVALOR.AsFloat)*100)+FormatDateTime('YYYYMMDD',qr_caddarCRDTVCTO.AsDateTime)+dtpgto);
            end
          else
            begin
            mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCNPJ').AsString),'0')+Query1.fieldbyname('CCNPJ').AsString+'05'+completa(10-length(qr_caddarCRNUMERO.AsString),'0')+qr_caddarCRNUMERO.AsString+FormatDateTime('YYYYMMDD',qr_caddarCRDTEMIS.AsDateTime)+completa(13,'9')+FormatDateTime('YYYYMMDD',qr_caddarCRDTVCTO.AsDateTime)+dtpgto);
            end;
          nRegt05:=nRegt05+1;
          end
        else if Query1.FieldByName('CTPPESSOA').AsInteger=0 THEN // VERIFICA PESSOA FISICA
          begin
          if qr_caddarCRSTATUS.AsInteger<>9 then
            begin
            mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCPF').AsString),'0')+Query1.fieldbyname('CCPF').AsString+'09'+completa(10-length(qr_caddarCRNUMERO.AsString),'0')+qr_caddarCRNUMERO.AsString+FormatDateTime('YYYYMMDD',qr_caddarCRDTEMIS.AsDateTime)+completa(13-LENGTH(FloatToStr((qr_caddarCRVALOR.AsFloat)*100)),'0')+FloatToStr((qr_caddarCRVALOR.AsFloat)*100)+FormatDateTime('YYYYMMDD',qr_caddarCRDTVCTO.AsDateTime)+dtpgto);
            end
          else
            begin
            mm_serasa.Lines.Add('01'+completa(14-length(Query1.fieldbyname('CCPF').AsString),'0')+Query1.fieldbyname('CCPF').AsString+'09'+completa(10-length(qr_caddarCRNUMERO.AsString),'0')+qr_caddarCRNUMERO.AsString+FormatDateTime('YYYYMMDD',qr_caddarCRDTEMIS.AsDateTime)+completa(13,'9')+FormatDateTime('YYYYMMDD',qr_caddarCRDTVCTO.AsDateTime)+dtpgto);
            end;
          nRegt09:=nRegt09+1;
          end;
        ProgressBar1.Position:=ProgressBar1.Position+1;
        qr_caddar.Next;
        end;
      end;
    // trailler
    mm_serasa.Lines.Add('99'+completa(11-LENGTH(IntToStr(nRegc01)),'0')+IntToStr(nRegc01)+completa(44,' ')+completa(11-LENGTH(IntToStr(nRegt05)),'0')+IntToStr(nRegt05)+completa(11-LENGTH(IntToStr(nRegc08)),'0')+IntToStr(nRegc08)+completa(11-LENGTH(IntToStr(nRegt09)),'0')+IntToStr(nRegt09)+completa(40,' '));
    StatusBar1.Panels[2].Text:=' C-CPF='+IntToStr(nRegc08)+' T-CPF='+IntToStr(nRegt09)+' C-CNPJ='+IntToStr(nRegc01)+' T-CNPJ='+IntToStr(nRegt05);
    end
  else if rg_TIPO.ItemIndex=2 then
    begin
    mm_serasa.Lines.Clear;
    if trim(edt_arquivo.Text)<>'' then
      mm_serasa.Lines.LoadFromFile(edt_arquivo.Text);
    end;
  end
else
  begin
  edt_arquivoDblClick(self);
  end;
end;

procedure Tfrm_serasa.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=DateToStr(DATE)+' - '+TimeToStr(TIME);
end;

procedure Tfrm_serasa.FormCreate(Sender: TObject);
begin
local:='c:\sge\serasa';
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure Tfrm_serasa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure Tfrm_serasa.edt_arquivoDblClick(Sender: TObject);
var
  mm: TMemo;
  x: integer;
begin
Open_File.Execute;
try
  edt_arquivo.Text:=Open_File.FileName;
except
  end;
mm:=TMemo.Create(self);
mm.Parent:=frm_serasa;
mm.Align:=alBottom;
mm_serasa.Lines.Clear;
mm.Lines.LoadFromFile(edt_arquivo.Text);
for x:=0 to mm.Lines.Count -1 do
  begin
  if (copy(mm.Lines[x],0,2)='01') and (trim(copy(mm.Lines[x],28,1))<>'') then
    begin
    mm_serasa.Lines.Add(busca_titulo(mm.Lines[x],Form_SelEmp.CLB_EMPRESAS));
    end
  else
    begin
    mm_serasa.Lines.Add(mm.Lines[x]);
    end;
  end;
FreeAndNil(mm);
end;

procedure Tfrm_serasa.rg_TIPOClick(Sender: TObject);
begin
if rg_TIPO.ItemIndex=0 then
  begin
  lbl_de.Visible      :=True;
  lbl_a.Visible       :=True;
  dtini.Visible       :=True;
  dtfim.Visible       :=True;
  lbl_arq.Visible     :=False;
  edt_arquivo.Visible :=False;
  lbl_local.Caption:=('ARQUIVO SALVO EM C:\SGE\SERASA_NOR'+FormatDateTime('yyyymmdd',Date)+'.TXT');
  bb_busca.Enabled    :=True;
  end
else if rg_TIPO.ItemIndex=1 then
  begin
  lbl_de.Visible      :=True;
  lbl_a.Visible       :=True;
  dtini.Visible       :=True;
  dtfim.Visible       :=True;
  lbl_arq.Visible     :=False;
  edt_arquivo.Visible :=False;
  lbl_local.Caption:=('ARQUIVO SALVO EM C:\SGE\SERASA_COR'+FormatDateTime('yyyymmdd',Date)+'.TXT');
  bb_busca.Enabled    :=True;
  end
else if rg_TIPO.ItemIndex=2 then
  begin
  lbl_de.Visible      :=False;
  lbl_a.Visible       :=False;
  dtini.Visible       :=False;
  dtfim.Visible       :=False;
  lbl_arq.Visible     :=True;
  edt_arquivo.Visible :=True;
  lbl_local.Caption:=('ARQUIVO SALVO EM C:\SGE\SERASA_CON'+FormatDateTime('yyyymmdd',Date)+'.TXT');
  bb_busca.Enabled    :=False;
  end;
end;

procedure Tfrm_serasa.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
