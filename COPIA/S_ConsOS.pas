unit S_ConsOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, ComCtrls,S_DM1,lerarq,func,
  S_Cli,S_Ven, DB, DBTables, Grids, DBGrids, DBCtrls, CheckLst;

type
  TFrm_ConsOS = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    NOMCLI: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    CODCLI: TEdit;
    CHAVEI: TEdit;
    CHAVEF: TEdit;
    Label5: TLabel;
    RG_OPER: TRadioGroup;
    bbAtualizar: TBitBtn;
    Panel1: TPanel;
    PageControl1: TPageControl;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    bbSair: TBitBtn;
    Label6: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Src_Os01: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Qr_Os01: TQuery;
    Qr_Os01OS1CODEMP: TFloatField;
    Qr_Os01OS1LOTSEQ: TFloatField;
    Qr_Os01OS1CHAVE: TFloatField;
    Qr_Os01OS1DATA: TDateTimeField;
    Qr_Os01OS1DATAAUT: TDateTimeField;
    Qr_Os01OS1DATADEV: TDateTimeField;
    Qr_Os01OS1DATAENT: TDateTimeField;
    Qr_Os01OS1CODCLI: TFloatField;
    Qr_Os01OS1CODVEN: TFloatField;
    Qr_Os01OS1OPER: TFloatField;
    Qr_Os01OS1DEFREC: TBlobField;
    Qr_Os01OS1OBS01: TStringField;
    Qr_Os01OS1OBS02: TStringField;
    Qr_Os01OS1OBS03: TStringField;
    Qr_Os01OS1OBS04: TStringField;
    Qr_Os01OS1STATUS: TFloatField;
    Qr_Os01OS1LOTSEQ_CP: TFloatField;
    Qr_Os01OS1CHAVEPED: TFloatField;
    Qr_Os01CRAZAO: TStringField;
    Qr_Os01CLOG: TStringField;
    Qr_Os01CBAIRRO: TStringField;
    Qr_Os01CCIDADE: TStringField;
    Qr_Os01CUF: TStringField;
    Qr_Os01CCEP: TStringField;
    Qr_Os01CFONECOM: TStringField;
    Qr_Os01OS1TOTAL: TFloatField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    RadioGroup1: TRadioGroup;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Qr_Os02: TQuery;
    Src_Os02: TDataSource;
    Qr_Os02OS2CODEMP: TFloatField;
    Qr_Os02OS2LOTSEQ: TFloatField;
    Qr_Os02OS2CHAVE: TFloatField;
    Qr_Os02OS2ITEM: TFloatField;
    Qr_Os02OS2CODPRO: TFloatField;
    Qr_Os02OS2MODELO: TStringField;
    Qr_Os02OS2MARCA: TStringField;
    Qr_Os02OS2SERIE: TStringField;
    Qr_Os02OS2NUMPAT: TStringField;
    Qr_Os02PDNOME: TStringField;
    Qr_Os02PDUND: TStringField;
    DBGrid2: TDBGrid;
    Src_Os05: TDataSource;
    Qr_Os05: TQuery;
    Qr_Os05OS5CODEMP: TFloatField;
    Qr_Os05OS5LOTSEQ: TFloatField;
    Qr_Os05OS5CHAVE: TFloatField;
    Qr_Os05OS5ITEM: TFloatField;
    Qr_Os05OS5CODPRO: TFloatField;
    Qr_Os05OS5QTD: TFloatField;
    Qr_Os05OS5PU: TFloatField;
    Qr_Os05OS5DESC01: TFloatField;
    Qr_Os05OS5TOTDES: TFloatField;
    Qr_Os05PDNOME: TStringField;
    Qr_Os05PDUND: TStringField;
    DBGrid3: TDBGrid;
    Src_Os04: TDataSource;
    Qr_Os04: TQuery;
    Qr_Os04OS4CODEMP: TFloatField;
    Qr_Os04OS4LOTSEQ: TFloatField;
    Qr_Os04OS4CHAVE: TFloatField;
    Qr_Os04OS4ITEM: TFloatField;
    Qr_Os04OS4CODPRO: TFloatField;
    Qr_Os04OS4QTD: TFloatField;
    Qr_Os04OS4PU: TFloatField;
    Qr_Os04OS4DESC01: TFloatField;
    Qr_Os04OS4TOTDES: TFloatField;
    Qr_Os04PDNOME: TStringField;
    Qr_Os04PDUND: TStringField;
    DBGrid4: TDBGrid;
    Src_Os03: TDataSource;
    Qr_Os03: TQuery;
    Qr_Os03OS3CODEMP: TFloatField;
    Qr_Os03OS3LOTSEQ: TFloatField;
    Qr_Os03OS3CHAVE: TFloatField;
    Qr_Os03OS3ITEM: TFloatField;
    Qr_Os03OS3CODPRO: TFloatField;
    Qr_Os03OS3QTD: TFloatField;
    Qr_Os03PDNOME: TStringField;
    Qr_Os03PDUND: TStringField;
    DBGrid5: TDBGrid;
    Qr_Os01nomven: TStringField;
    Qr_Os01OS1NOMEAUT: TStringField;
    Qr_Os01OS1TOTSER: TFloatField;
    Qr_Os01OS1DESCSER: TFloatField;
    Qr_Os01OS1TOTPEC: TFloatField;
    Qr_Os01OS1DESCPEC: TFloatField;
    Qr_Os01OS1ESTREG: TFloatField;
    Qr_Os01OS1DATALT: TDateTimeField;
    Qr_Os01OS1CODUSR: TFloatField;
    Qr_Os01OS1NOMSOL: TStringField;
    Qr_Os02OS2OBS01: TStringField;
    Qr_Os02OS2OBS02: TStringField;
    Label20: TLabel;
    CLBStatus: TCheckListBox;
    Label21: TLabel;
    RG_ORDEM: TComboBox;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    edt_serie: TEdit;
    edt_numpat: TEdit;
    Label24: TLabel;
    edt_numrat: TEdit;
    Qr_Os01OS1NUMRAT: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_Os01DataChange(Sender: TObject; Field: TField);
    procedure Qr_Os01CalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLBStatusClick(Sender: TObject);
  private
    { Private declarations }
    function fConsOsDetalhe(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_ConsOS: TFrm_ConsOS;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ConsOS.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ConsOS.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if not (bbSair.Focused) and (trim(CODCLI.Text)='') then
   exit;
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;

end;

procedure TFrm_ConsOS.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ConsOS',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ConsOS.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_ConsOS.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_ConsOS.CHAVEIExit(Sender: TObject);
begin
if ValFloat(CHAVEi.Text)<=0 then
   CHAVEI.Text:=''
else
   CHAVEI.Text:=fdeixanum(CHAVEI.Text);

end;

procedure TFrm_ConsOS.CHAVEFExit(Sender: TObject);
begin
if ValFloat(CHAVEF.Text)<=0 then
   CHAVEF.Text:=''
else
   CHAVEF.Text:=fdeixanum(CHAVEF.Text);

end;

procedure TFrm_ConsOS.CODVENExit(Sender: TObject);
begin
if ValFloat(CODVEN.Text)<=0 then
   CODVEN.Text:='';
if not (bbSair.Focused) and (trim(CODVEN.Text)='') then
   exit;
if CODVEN.Text='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_ConsOS.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fchamaven(0,'frm_consos',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ConsOS.bbAtualizarClick(Sender: TObject);
begin
Qr_Os01.Close;
Qr_Os01.SQL.Clear;
Qr_Os01.SQL.Add('Select OS1CODEMP, '
               +'       OS1LOTSEQ, '
               +'       OS1CHAVE, '
               +'       OS1DATA, '
               +'       OS1DATAAUT, '
               +'       OS1NOMEAUT, '
               +'       OS1DATADEV, '
               +'       OS1DATAENT, '
               +'       OS1CODCLI,'
               +'       OS1CODVEN, '
               +'       OS1OPER, '
               +'       OS1DEFREC, '
               +'       OS1OBS01, '
               +'       OS1OBS02,'
               +'       OS1OBS03,'
               +'       OS1OBS04,'
               +'       OS1STATUS, '
               +'       OS1LOTSEQ_CP,'
               +'       OS1CHAVEPED, '
               +'       OS1TOTAL, '
               +'       OS1TOTSER, '
               +'       OS1DESCSER,'
               +'       OS1TOTPEC, '
               +'       OS1DESCPEC, '
               +'       OS1ESTREG, '
               +'       OS1DATALT, '
               +'       OS1CODUSR, '
               +'       OS1NOMSOL, '
               +'       OS1NUMRAT, '
               +'       CRAZAO,CLOG, '
               +'       CBAIRRO,CCIDADE,CUF, '
               +'       CCEP, CFONECOM '
               +'       from CADOS01,CADCLI ');
if (trim(edt_serie.text)<>'') or (trim(edt_numpat.text)<>'') then
   begin
   Qr_Os01.SQL.Add(',CADOS02  where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS2CODEMP=OS1CODEMP '
                  +' and OS2CHAVE=OS1CHAVE  and ');
   end
else
   begin
   Qr_Os01.SQL.Add(' where ');
   end;
Qr_Os01.SQL.Add(iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+IntToStr(codemp)+' and ')
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=OS1CODEMP and ')
               +' CCODCLI=OS1CODCLI ');
if Trim(CODCLI.Text)<>'' then
   Qr_Os01.SQL.Add(' and OS1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Os01.SQL.Add(' and OS1DATA>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Os01.SQL.Add(' and OS1DATA<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CHAVEI.Text)<>'' then
   Qr_Os01.SQL.Add(' and OS1CHAVE>=0'+Trim(CHAVEI.Text));
if Trim(CHAVEF.Text)<>'' then
   Qr_Os01.SQL.Add(' and OS1CHAVE<=0'+Trim(CHAVEF.Text));
if Trim(CODVEN.Text)<>'' then
   Qr_Os01.SQL.Add(' and OS1CODVEN=0'+Trim(CODVEN.Text));
if RG_OPER.ItemIndex<3 then
   Qr_Os01.SQL.Add(' and OS1OPER=0'+InttoStr(RG_OPER.ItemIndex));
if trim(edt_numrat.text)<>'' then
   Qr_Os01.SQL.Add(' and OS1NUMRAT like '+quotedstr(edt_numrat.text+'%'));

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   Qr_Os01.SQL.Add(' and  OS1STATUS '+mcinst2);

Qr_OS01.SQL.Add(' and OS1STATUS<>9');

if (trim(edt_serie.text)<>'') or (trim(edt_numpat.text)<>'') then
   begin
   if trim(edt_serie.text)<>'' then
      begin
      Qr_Os01.sql.add(' and OS2SERIE like :SERIE ');
      Qr_Os01.ParamByName('SERIE').AsString:=edt_serie.Text+'%';
      end;
   if trim(edt_numpat.text)<>'' then
      begin
      Qr_Os01.sql.add(' and OS2NUMPAT like :NUMPAT ');
      Qr_Os01.ParamByName('NUMPAT').AsString:=edt_numpat.Text+'%';
      end;

   end;

if RG_ORDEM.ItemIndex=0 then
   Qr_Os01.SQL.Add(' order by OS1DATA, OS1CHAVE')
else if RG_ORDEM.ItemIndex=1 then
   Qr_Os01.SQL.Add(' order by OS1DATA desc, OS1CHAVE');
try
   Qr_Os01.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_os01,423,'func Erro:'+e.Message ,'CADOS1');
   end;
   end;



end;
function TFrm_ConsOs.fConsOsDetalhe(ptipo: Integer): Boolean;
begin
result:=true;
if ptipo=2 then
   begin
   Qr_Os02.Close;
   Qr_Os02.SQL.Clear;
   Qr_Os02.SQL.add('Select OS2CODEMP, '
                  +'       OS2LOTSEQ, '
                  +'        OS2CHAVE, '
                  +'         OS2ITEM, '
                  +'        OS2CODPRO, '
                  +'        OS2MODELO, '
                  +'        OS2MARCA, '
                  +'        OS2SERIE, '
                  +'        OS2NUMPAT, '
                  +'        OS2OBS01, '
                  +'        OS2OBS02, '
                  +'        PDNOME,PDUND from CADOS02,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS2CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                  +' OS2LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                  +' and OS2CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS2CODEMP ')
                  +' and PDCODPRO=OS2CODPRO'
                  +' order by OS2ITEM ');
   Qr_Os02.Open;
   if Qr_Os02.Eof then
      Result:=False;
   end
else if ptipo=5 then
   begin
   Qr_Os03.Close;
   Qr_Os03.SQL.Clear;
   Qr_Os03.SQL.add('Select OS3CODEMP, '
                  +'       OS3LOTSEQ, '
                  +'       OS3CHAVE, '
                  +'       OS3ITEM, '
                  +'       OS3CODPRO, '
                  +'       OS3QTD, '
                  +'       PDNOME,PDUND from CADOS03,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS3CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                  +' OS3LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                  +' and OS3CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS3CODEMP ')
                  +' and PDCODPRO=OS3CODPRO'
                  +' order by OS3ITEM ');
   Qr_Os03.Open;
   if Qr_Os03.Eof then
      Result:=False;
   end
else if ptipo=4 then
   begin
   Qr_Os04.Close;
   Qr_Os04.SQL.Clear;
   Qr_Os04.SQL.add('Select OS4CODEMP, '
                  +'       OS4LOTSEQ, '
                  +'        OS4CHAVE, '
                  +'        OS4ITEM, '
                  +'        OS4CODPRO, '
                  +'        OS4QTD, '
                  +'        OS4PU, '
                  +'        OS4DESC01, '
                  +'       OS4TOTDES, '
                  +'       PDNOME,PDUND from CADOS04,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS4CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                  +' OS4LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                  +' and OS4CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS4CODEMP ')
                  +' and PDCODPRO=OS4CODPRO'
                  +' order by OS4ITEM ');
   Qr_Os04.Open;
   if Qr_Os04.Eof then
      Result:=False;
   end
else if ptipo=3 then
   begin
   Qr_Os05.Close;
   Qr_Os05.SQL.Clear;
   Qr_Os05.SQL.add('Select OS5CODEMP, '
                  +'        OS5LOTSEQ, '
                  +'        OS5CHAVE, '
                  +'        OS5ITEM, '
                  +'        OS5CODPRO, '
                  +'        OS5QTD, '
                  +'        OS5PU, '
                  +'        OS5DESC01, '
                  +'        OS5TOTDES, '
                  +'        PDNOME,PDUND from CADOS05,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5CODEMP=0'+Qr_Os01OS1CODEMP.AsString+' and ')
                  +' OS5LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                  +' and OS5CHAVE=0'+Qr_Os01OS1CHAVE.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS5CODEMP ')
                  +' and PDCODPRO=OS5CODPRO'
                  +' order by OS5ITEM ');
   Qr_Os05.Open;
   if Qr_Os05.Eof then
      Result:=False;
   end;
end;


procedure TFrm_ConsOS.Src_Os01DataChange(Sender: TObject; Field: TField);
begin
fConsOsDetalhe(PageControl1.ActivePage.TabIndex);
end;

procedure TFrm_ConsOS.Qr_Os01CalcFields(DataSet: TDataSet);
begin
if Qr_Os01OS1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_Os01OS1CODVEN.AsString) then
      Qr_Os01nomven.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_ConsOS.PageControl1Change(Sender: TObject);
begin
fConsOsDetalhe(PageControl1.ActivePage.TabIndex);
end;

procedure TFrm_ConsOS.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ConsOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ConsOS.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

end.
