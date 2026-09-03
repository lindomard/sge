unit S_Comodato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Mask, RLReport,func,lerarq,db,dbtables,
  RLFilters, RLDraftFilter, RLRichText, Grids, DBGrids;

type
  TFrm_Comodato = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    sbFonteCab: TSpeedButton;
    sbSalvarPadrao: TSpeedButton;
    FontDialog1: TFontDialog;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    matricial: TRLDraftFilter;
    Src_Relatorio: TDataSource;
    texto_impres: TRichEdit;
    Texto: TRichEdit;
    r_band_copia1: TRLBand;
    rlband_copia2: TRLBand;
    RLRichText1: TRLRichText;
    RLRichText2: TRLRichText;
    CB_REPETIR: TCheckBox;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label9: TLabel;
    MDT1: TMaskEdit;
    Label8: TLabel;
    MDT2: TMaskEdit;
    Label10: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Src_Comodato: TDataSource;
    DBGrid1: TDBGrid;
    Qr_Comodato: TQuery;
    Qr_ComodatoP1CHAVE: TFloatField;
    Qr_ComodatoP1NUMNF: TFloatField;
    Qr_ComodatoCRAZAO: TStringField;
    Qr_ComodatoCLOG: TStringField;
    Qr_ComodatoCFONE01: TStringField;
    Qr_ComodatoCCNPJ: TFloatField;
    Qr_ComodatoCBAIRRO: TStringField;
    Qr_ComodatoCCEP: TStringField;
    Qr_ComodatoCCIDADE: TStringField;
    Qr_ComodatoCUF: TStringField;
    Qr_ComodatoP1CODVEN: TFloatField;
    Qr_ComodatoVNOME: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    NUMINI: TEdit;
    NUMFIN: TEdit;
    bbAplicar: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Qr_ComodatoP1DATAP: TDateTimeField;
    Qr_ComodatoP1DATANF: TDateTimeField;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    procedure sbFonteCabClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NUMINIExit(Sender: TObject);
    procedure NUMFINExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbAplicarClick(Sender: TObject);
    procedure r_band_copia1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function Substituir(pPalavra,pNovoValor: String): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Comodato: TFrm_Comodato;
  mtabtemp: String;
  mtabtemp02: String;

implementation

uses S_DM1, S_DM4;


{$R *.dfm}

procedure TFrm_Comodato.sbFonteCabClick(Sender: TObject);
begin

FontDialog1.Font.Assign(Texto.SelAttributes);
If FontDialog1.Execute Then
   begin
   If Texto.SelLength > 0 Then
      Texto.SelAttributes.Assign(FontDialog1.font)
   else
      Texto.DefAttributes.Assign(FontDialog1.Font);
   if not sbSalvarPadrao.Enabled then
      sbSalvarPadrao.Enabled:=true;
   end;


end;

procedure TFrm_Comodato.bbImprimirClick(Sender: TObject);
begin
if (not Qr_Comodato.Active) and (Qr_Comodato.IsEmpty) then
   bbAplicarClick(self);
if Qr_Comodato.IsEmpty then
   begin
   fmensagem('Nada a ser Impresso!',0,['0'],0);
   exit;
   end;


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.add('Select count(*) from CADTEXTO where ');
DM1.Query5.SQL.add(' TTCHAVE='+chr(39)+'COMODATO'+chr(39));
DM1.Query5.Open;
if DM1.Query5.IsEmpty then
   begin
   fmensagem('Nao foi Encontrado uma Configuração Válida!',0,['0'],0);
   exit;
   end;

if CB_REPETIR.Checked then
   begin
   rlband_copia2.Visible        :=true;
   end
else
   begin
   rlband_copia2.Visible          :=false;
   end;

mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
mtabtemp02:=fProctemp(21);
mTabTemp02:=mTabTemp+'.txt';

Texto.Lines.saveToFile(mTabTemp);
Texto.Lines.saveToFile(mTabTemp02);
RLReport1.PreviewModal;




end;

procedure TFrm_Comodato.sbSalvarPadraoClick(Sender: TObject);
begin
mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
Texto.Lines.saveToFile(mTabTemp);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from CADTEXTO where ');
DM1.Query1.SQL.add(' TTCHAVE='+chr(39)+'COMODATO'+chr(39));
DM1.Query1.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftMemo,'TTTEXTO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTPAGINA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDESCRICAO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDATA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTCHAVE',ptinput);

if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   DM1.Query2.SQL.Add('Update CADTEXTO set ');
   DM1.Query2.SQL.Add(' TTTEXTO=:TTTEXTO ');
   DM1.Query2.SQL.Add(',TTPAGINA=:TTPAGINA ');
   DM1.Query2.SQL.Add(',TTDESCRICAO=:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA=:TTDATA ');
   DM1.Query2.SQL.Add(' where TTCHAVE=:TTCHAVE ');
   end
else
   begin
   DM1.Query2.SQL.Add('Insert into CADTEXTO ( ');
   DM1.Query2.SQL.Add(' TTTEXTO ');
   DM1.Query2.SQL.Add(',TTPAGINA ');
   DM1.Query2.SQL.Add(',TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA ');
   DM1.Query2.SQL.Add(',TTCHAVE ');
   DM1.Query2.SQL.Add(') values (');
   DM1.Query2.SQL.Add(' :TTTEXTO ');
   DM1.Query2.SQL.Add(', :TTPAGINA ');
   DM1.Query2.SQL.Add(',:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',:TTDATA ');
   DM1.Query2.SQL.Add(',:TTCHAVE ');
   DM1.Query2.SQL.Add(')');
   end;

DM1.Query2.ParamByName('TTTEXTO').LoadFromFile(mTabTemp,ftMemo);
DM1.Query2.ParamByName('TTPAGINA').Asinteger:=1;


DM1.Query2.ParambyName('TTDESCRICAO').AsString:='Comodato';
DM1.Query2.ParambyName('TTDATA').AsDateTime   :=date;
DM1.Query2.ParambyName('TTCHAVE').AsString    :='COMODATO';
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Gravar o arquivo!',mtWarning,[mbOk],0);
   end;
deletefile(mTabTemp);

fDeletaPadroes(0,'_COMODATO','');


end;

procedure TFrm_Comodato.FormCreate(Sender: TObject);
var
f: Textfile;
begin
MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=FormatDateTime(fdt2, date);

mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TTPAGINA,TTTEXTO,TTDESCRICAO,TTDATA,TTCHAVE from CADTEXTO  where '
                  +' TTCHAVE='+chr(39)+'COMODATO'+chr(39)
                     +' ORDER BY TTPAGINA');
try
   DM1.Query3.Open;
except
   DM1.Query3.SQL.savetofile('c:\sql.txt');
   end;

if not DM1.Query3.Eof then
   begin
   While not DM1.Query3.Eof do
      begin
      assignfile(f,mtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('TTTEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   Texto.Lines.LoadFromFile(mTabTemp);
   DeleteFile(mTabTemp);
   end;
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;



if flfilpad(codusr,'_COMODATO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_REPETIR',[]) then
      CB_REPETIR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   end;

end;

procedure TFrm_Comodato.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Comodato.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)='/  /' then
   MDT1.Text:=FormatDatetime(fdt2, date);
try
   MDT1.Text:=FormatDatetime(fdt2, StrtoDate(MDT1.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDT1.SetFocus;
   end;
end;

function tFrm_Comodato.Substituir(pPalavra,pNovoValor: String): Boolean;
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
While true do
  begin
  with texto_impres do
  begin
    { begin the search after the current selection if there is one }
    { otherwise, begin at the start of the text }
    if SelLength <> 0 then

      StartPos := SelStart + SelLength
    else

      StartPos := 0;

    { ToEnd is the length from StartPos to the end of the text in the rich edit control }

    ToEnd := Length(Text) - StartPos;

    FoundAt := FindText(pPalavra , StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then
       begin
//      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(pPalavra);
      texto_impres.SelText := pNovoValor;
      end
   else
      break;
  end;
  end;
end;
procedure TFrm_Comodato.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)='/  /' then
   MDT2.Text:=FormatDatetime(fdt2, date);
try
   MDT2.Text:=FormatDatetime(fdt2, StrtoDate(MDT2.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDT2.SetFocus;
   end;

end;

procedure TFrm_Comodato.NUMINIExit(Sender: TObject);
begin
NUMINI.Text:=fdeixanum2(NUMINI.Text);
end;

procedure TFrm_Comodato.NUMFINExit(Sender: TObject);
begin
NUMFIN.Text:=fdeixanum2(NUMFIN.Text);
end;

procedure TFrm_Comodato.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;

end;

procedure TFrm_Comodato.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Comodato.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_Comodato.bbAplicarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (Trim(NUMINI.Text)<>'') and (Trim(NUMFIN.Text)<>'') then
   begin
   if fsonumero(NUMINI.Text)>fsonumero(NUMFIN.Text) then
      begin
      fmensagem('Chave Inicial Maior que final, Invalido!',0,['0'],0);
      NUMINI.SetFocus;
      exit;
      end;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN' ,'VCODEMP','C1CODEMP' ,'VCODVEN' ,'P1CODVEN');

Qr_Comodato.Close;
Qr_Comodato.Sql.Clear;
Qr_Comodato.Sql.Add('Select P1CHAVE,P1NUMNF,CRAZAO,CLOG,CFONE01, '
                   +'       CCNPJ,CBAIRRO,CCEP,CCIDADE,CUF,P1DATAP,P1DATANF, '
                   +'       P1CODVEN,VNOME FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' P1STATUS<'+mstatus_excluido+'   ');
//                   +' P1STATUS<9  and P1TIPO=25 ');
if trim(MDT1.Text)<>'/  /' then
   Qr_Comodato.SQL.Add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_Comodato.SQL.Add(' and P1DATAP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

if trim(NUMINI.Text)<>'' then
   Qr_Comodato.SQL.Add(' and P1CHAVE>='+trim(NUMINI.Text));
if trim(NUMFIN.Text)<>'' then
   Qr_Comodato.SQL.Add(' and P1CHAVE<='+trim(NUMFIN.Text));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Comodato.SQL.Add(' and P1CODCLI '+mcinst2);
try
   Qr_Comodato.Open;
except
   Qr_Comodato.Sql.saveTofile('c:\sql.txt');
   end;   



end;

procedure TFrm_Comodato.r_band_copia1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLRichText1.lines.Text:=Texto.Lines.Text;
texto_impres.lines.loadfromfile(mTabTemp02);

texto_impres.Update;

Substituir('[LEG001]',Qr_ComodatoP1CHAVE.AsString);
Substituir('[LEG002]',Formatfloat('000000',Qr_ComodatoP1NUMNF.Value));
Substituir('[LEG003]',Qr_ComodatoCRAZAO.AsString);
Substituir('[LEG004]',Qr_ComodatoCLOG.AsString);
Substituir('[LEG005]',Qr_ComodatoCFONE01.AsString);
Substituir('[LEG006]',FormatFloat(pDFCNPJ, Qr_ComodatoCCNPJ.AsFloat));
Substituir('[LEG007]',Qr_ComodatoCBAIRRO.AsString);
Substituir('[LEG008]',Qr_ComodatoCCEP.AsString);
Substituir('[LEG009]',Qr_ComodatoCCIDADE.AsString);
Substituir('[LEG010]',Qr_ComodatoCUF.AsString);
Substituir('[LEG011]',Qr_ComodatoP1CODVEN.AsString);
Substituir('[LEG012]',Qr_ComodatoVNOME.AsString);
Substituir('[LEG013]',FormatDateTime(fdt2, Qr_ComodatoP1DATAP.Value));
Substituir('[LEG014]',FormatDateTime(fdt2, Qr_ComodatoP1DATANF.Value));
Substituir('[LEG015]',FormatDateTime(fdt2, Date));
Substituir('[LEG016]',FormatDateTime('dd', date)+' de '+NMes(date)+' de '+FormatDatetime('yyyy' , Date)+'.');

Substituir('[LEG040]',DM1.Tb_EmpRAZAO.AsString);
Substituir('[LEG041]',DM1.Tb_Empcnpj_masc.AsString);
Substituir('[LEG042]',DM1.Tb_EmpINSCRICAO.AsString);
Substituir('[LEG043]',DM1.Tb_EmpENDERECO.AsString);
Substituir('[LEG044]',DM1.Tb_EmpBAIRRO.AsString);
Substituir('[LEG045]',DM1.Tb_EmpCIDADE.AsString);
Substituir('[LEG046]',DM1.Tb_EmpUF.AsString);
Substituir('[LEG040]',DM1.Tb_EmpCEP.AsString);
texto_impres.Lines.saveToFile(mTabTemp);
RLRichText1.lines.loadfromfile(mTabTemp);
if CB_REPETIR.Checked then
   RLRichText2.lines.loadfromfile(mTabTemp);

end;

procedure TFrm_Comodato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.

