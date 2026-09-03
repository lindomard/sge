unit S_EtiqCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,db, dbtables, func, S_DM1, Grids, DBGrids,
  Buttons, S_Cli, S_Ven, S_Tra,lerarq, CheckLst, ComCtrls,S_RCli,S_Con,S_Loc,
  RLReport;

type
  TFrm_EtiqCli = class(TForm)
    Qr_Bar: TQuery;
    Src_Bar: TDataSource;
    Label6: TLabel;
    APARTIR: TEdit;
    bbEtiq2563: TBitBtn;
    bbEtiq2138: TBitBtn;
    bbSair: TBitBtn;
    Label14: TLabel;
    tipo_pessoa: TCheckListBox;
    Label4: TLabel;
    situacao_cli: TCheckListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    CODRCLI: TEdit;
    OMITIR_RCLI: TCheckBox;
    lbx_codrcli: TListBox;
    Label7: TLabel;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    lbx_codloc: TListBox;
    Qr_BarCRAZAO: TStringField;
    Qr_BarCDENOM: TStringField;
    Qr_BarCLOG: TStringField;
    Qr_BarCBAIRRO: TStringField;
    Qr_BarCCIDADE: TStringField;
    Qr_BarCUF: TStringField;
    Qr_BarCCEP: TStringField;
    Qr_BarCFONECOM: TStringField;
    Qr_BarCFAX: TStringField;
    Qr_BarCFONERES: TStringField;
    Qr_BarCCELULAR: TStringField;
    RG_ALINHAR: TRadioGroup;
    Qr_BarCCNPJ: TFloatField;
    ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    lbl_razsoc: TRLDBText;
    lbl_cnpj: TRLDBText;
    Qr_Barcnpj: TStringField;
    lbl_ender: TRLDBText;
    Qr_Barcep_bairro: TStringField;
    Qr_Barcidade_uf: TStringField;
    lbl_cepcidade: TRLDBText;
    lbl_cidadeuf: TRLDBText;
    gb_configuracao: TGroupBox;
    Label11: TLabel;
    edt_qtdcol: TEdit;
    Label10: TLabel;
    edt_espacoCol: TEdit;
    Label8: TLabel;
    edt_altEtiq: TEdit;
    Label9: TLabel;
    edt_altcxtexto: TEdit;
    Label12: TLabel;
    edt_tamfonte: TEdit;
    sbSalvarPadrao: TSpeedButton;
    sbRestaurar: TSpeedButton;
    bbImprimir: TBitBtn;
    Label13: TLabel;
    edt_margemtop: TEdit;
    Label15: TLabel;
    edt_margemrodape: TEdit;
    Label16: TLabel;
    edt_margemDireita: TEdit;
    Label17: TLabel;
    edt_margemEsquerda: TEdit;
    Label18: TLabel;
    edt_Altura_Rel: TEdit;
    Label19: TLabel;
    edt_Largura_Rel: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure bbEtiq2138Click(Sender: TObject);
    procedure QTDPKeyPress(Sender: TObject; var Key: Char);
    procedure bbEtiq2563Click(Sender: TObject);
    procedure APARTIRExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODRCLIExit(Sender: TObject);
    procedure lbx_codrcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tipo_pessoaClick(Sender: TObject);
    procedure situacao_cliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_altEtiqExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_espacoColExit(Sender: TObject);
    procedure edt_altcxtextoExit(Sender: TObject);
    procedure edt_tamfonteExit(Sender: TObject);
    procedure edt_qtdcolExit(Sender: TObject);
    procedure edt_espacoColChange(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure sbRestaurarClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Qr_BarCalcFields(DataSet: TDataSet);
  private
  function fcodbemi(ptipo: Integer): Boolean;
  function fSelecionar(pTipo: Integer): Boolean;
  procedure LE_PESSOA;
  PROCEDURE LE_SITUACAO_CLI;

    { Private declarations }
  public
    { Public declarations }
    function fAtualizarFormulario(ptipo: Integer): Boolean;

  end;

var
  Frm_EtiqCli: TFrm_EtiqCli;
  mapartir, mqtd, mqtdp,mqtdr: Integer;
  tipo_status    : STRING;


implementation

uses SR_EtiqCli,Sr_EtiqCli2, S_DM6, S_DM4;

{$R *.dfm}

procedure TFrm_EtiqCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EtiqCli.bbEtiq2138Click(Sender: TObject);
begin
if not fSelecionar(0) then
   begin
   fMensagem('Não ha Registros na Condição Solicitada!',0,['0'],0);
   exit;
   end;
fcodbemi(0);
end;

procedure TFrm_EtiqCli.QTDPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_EtiqCli.bbEtiq2563Click(Sender: TObject);
begin
if not fSelecionar(0) then
   begin
   fMensagem('Não ha Registros na Condição Solicitada!',0,['0'],0);
   exit;
   end;

fcodbemi(1);

end;

function TFrm_EtiqCli.fcodbemi(ptipo: Integer): Boolean;
var
mordem: String;
minc: String;
x: Integer;
//mAlinhar: TAlignment;
begin
mqtd:=1;
mapartir:=StrtoInt('0'+APARTIR.Text);
mqtdr:=Qr_Bar.RecordCount;
mqtd:=0;

{if RG_ALINHAR.ItemIndex=2 then
   mAlinhar:=taRightJustify
else if RG_ALINHAR.ItemIndex=1 then
   mAlinhar:=taLeftJustify
else
   mAlinhar:=taCenter;



if ptipo=0 then
   begin
   Application.CreateForm(TQr_EtiqCli, Qr_EtiqCli);
   Qr_EtiqCli.banda_detalhe.Height:=valint(edt_alt25.Text);
   Qr_EtiqCli.Page.TopMargin:=valfloat(edt_espaco25.Text);

   verteclado(0);
   Qr_EtiqCli.Qr_RazSoc01.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_RazSoc02.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_RazSoc03.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_RazSoc04.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_RazSoc05.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_Cnpj01.Alignment     :=mAlinhar;
   Qr_EtiqCli.Qr_Cnpj02.Alignment     :=mAlinhar;
   Qr_EtiqCli.Qr_Cnpj03.Alignment     :=mAlinhar;
   Qr_EtiqCli.Qr_Cnpj04.Alignment     :=mAlinhar;
   Qr_EtiqCli.Qr_Cnpj05.Alignment     :=mAlinhar;
   Qr_EtiqCli.QR_Ender01.Alignment    :=mAlinhar;
   Qr_EtiqCli.QR_Ender02.Alignment    :=mAlinhar;
   Qr_EtiqCli.QR_Ender03.Alignment    :=mAlinhar;
   Qr_EtiqCli.QR_Ender04.Alignment    :=mAlinhar;
   Qr_EtiqCli.QR_Ender05.Alignment    :=mAlinhar;
   Qr_EtiqCli.QR_Bairro01.Alignment   :=mAlinhar;
   Qr_EtiqCli.QR_Bairro02.Alignment   :=mAlinhar;
   Qr_EtiqCli.QR_Bairro03.Alignment   :=mAlinhar;
   Qr_EtiqCli.QR_Bairro04.Alignment   :=mAlinhar;
   Qr_EtiqCli.QR_Bairro05.Alignment   :=mAlinhar;
   Qr_EtiqCli.Qr_CepCidade01.Alignment:=mAlinhar;
   Qr_EtiqCli.Qr_CepCidade02.Alignment:=mAlinhar;
   Qr_EtiqCli.Qr_CepCidade03.Alignment:=mAlinhar;
   Qr_EtiqCli.Qr_CepCidade04.Alignment:=mAlinhar;
   Qr_EtiqCli.Qr_CepCidade05.Alignment:=mAlinhar;
//   Qr_EtiqCli.QR_TeleFone01.Alignment :=mAlinhar;
//   Qr_EtiqCli.QR_TeleFone02.Alignment :=mAlinhar;
//   Qr_EtiqCli.QR_TeleFone03.Alignment :=mAlinhar;
//   Qr_EtiqCli.QR_TeleFone04.Alignment :=mAlinhar;
//   Qr_EtiqCli.QR_TeleFone05.Alignment :=mAlinhar;
   Qr_EtiqCli.PreviewModal;
   Qr_EtiqCli.Free;
   end
else
   begin
   Application.CreateForm(TQr_EtiqCli2, Qr_EtiqCli2);
   verteclado(0);
   Qr_EtiqCli2.Qr_RazSoc01.Alignment   :=mAlinhar;
   Qr_EtiqCli2.Qr_RazSoc02.Alignment   :=mAlinhar;
   Qr_EtiqCli2.Qr_RazSoc03.Alignment   :=mAlinhar;
   Qr_EtiqCli2.Qr_Cnpj01.Alignment     :=mAlinhar;
   Qr_EtiqCli2.Qr_Cnpj02.Alignment     :=mAlinhar;
   Qr_EtiqCli2.Qr_Cnpj03.Alignment     :=mAlinhar;
   Qr_EtiqCli2.QR_Ender01.Alignment    :=mAlinhar;
   Qr_EtiqCli2.QR_Ender02.Alignment    :=mAlinhar;
   Qr_EtiqCli2.QR_Ender03.Alignment    :=mAlinhar;
   Qr_EtiqCli2.QR_Bairro01.Alignment   :=mAlinhar;
   Qr_EtiqCli2.QR_Bairro02.Alignment   :=mAlinhar;
   Qr_EtiqCli2.QR_Bairro03.Alignment   :=mAlinhar;
   Qr_EtiqCli2.Qr_CepCidade01.Alignment:=mAlinhar;
   Qr_EtiqCli2.Qr_CepCidade02.Alignment:=mAlinhar;
   Qr_EtiqCli2.Qr_CepCidade03.Alignment:=mAlinhar;
//   Qr_EtiqCli2.QR_TeleFone01.Alignment :=mAlinhar;
//   Qr_EtiqCli2.QR_TeleFone02.Alignment :=mAlinhar;
//   Qr_EtiqCli2.QR_TeleFone03.Alignment :=mAlinhar;
   Qr_EtiqCli2.PreviewModal;
   Qr_EtiqCli2.Free;
   end;
}
result:=True;

end;

procedure TFrm_EtiqCli.APARTIRExit(Sender: TObject);
begin
APARTIR.Text:=fdeixanum(APARTIR.Text);
end;

procedure TFrm_EtiqCli.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;
end;

procedure TFrm_EtiqCli.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   CODVEN.Text:=''
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      BEGIN
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      END
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      codven.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      EXIT;
      end;
   end;

end;

procedure TFrm_EtiqCli.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_EtiqCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_EtiqCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_EtiqCli.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)='' then
   CODCLI.Text:=''
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
      END
   else
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_EtiqCli.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_EtiqCli.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if Trim(CODCON.Text)='' then
   CODCON.Text:='Todos...'
else
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCON.Text) then
      BEGIN
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcon.text := '';
      codcon.SetFocus;
      END
   else
      begin
      fMensagem('Convênio não Cadastrado!',0,['0'],0);
      codcon.text := '';
      CODCON.SetFocus;
      end;
   end;

end;

procedure TFrm_EtiqCli.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_EtiqCli.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_EtiqCli.CODRCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRCLI.Text:=fChamaRamoCli(0,'frm_rcpag',key);
   CODRCLIExit(self);
   key:=#0;
   end;


end;


procedure TFrm_EtiqCli.CODRCLIExit(Sender: TObject);
begin
CODRCLI.Text:=fdeixanum2(CODRCLI.Text);
if Trim(CODRCLI.Text)='' then
   CODRCLI.Text:='Todos...'
else
   begin
   if flqr1('RNOME','R','CADRCLI','N','RCODRAM',CODRCLI.Text) then
      BEGIN
      lbx_codrcli.Items.Add(FormatFloat('0000000',StrToFloat(CODRCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRCLI.text := '';
      CODRCLI.SetFocus;
   END else
      begin
      fMensagem('Ramo de Cliente não Cadastrado!',0,['0'],0);
      CODRCLI.text := '';
      CODRCLI.SetFocus;
      EXIT;
      end;
   end;

end;
procedure TFrm_EtiqCli.lbx_codrcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codrcli.ItemIndex>=0 then
      lbx_codrcli.Items.Delete(lbx_codrcli.ItemIndex);

end;

procedure TFrm_EtiqCli.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text :=fChamaLoc(0,'frm_EtiqCli',Key);
   if valfloat(CODCLI.Text)<>0 then
      CODLOCExit(self);
   key:=#0;
   end;

end;

procedure TFrm_EtiqCli.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)='' then
   CODLOC.Text:='Todos...'
else
   begin
   if flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
   BEGIN
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
   END else
      begin
      fMensagem('Cidade não Cadastrado!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      EXIT;
      end;
   end;
end;

procedure TFrm_EtiqCli.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_EtiqCli.tipo_pessoaClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if tipo_pessoa.ItemIndex=tipo_pessoa.Count-1 then
   begin
   for x := 0 to tipo_pessoa.Count -2 do
      begin
      if tipo_pessoa.Checked[tipo_pessoa.count-1] then
         tipo_pessoa.Checked[x] := true
      else
         tipo_pessoa.Checked[x]:=false;
      end;
   end
else
   begin
   tipo_pessoa.Checked[tipo_pessoa.Count-1]:=False;
   for x:=0 to tipo_pessoa.Count-2 do
      begin
      tipo_pessoa.Checked[tipo_pessoa.Count-1]:=true;
      if not tipo_pessoa.Checked[x] then
         begin
         tipo_pessoa.Checked[tipo_pessoa.Count-1]:=False;
         break;
         end;
      end;
   end;


end;

procedure TFrm_EtiqCli.situacao_cliClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if situacao_cli.ItemIndex=situacao_cli.Count-1 then
   begin
   for x := 0 to situacao_cli.Count -2 do
      begin
      if situacao_cli.Checked[situacao_cli.count-1] then
         situacao_cli.Checked[x] := true
      else
         situacao_cli.Checked[x]:=false;
      end;
   end
else
   begin
   situacao_cli.Checked[situacao_cli.Count-1]:=False;
   for x:=0 to situacao_cli.Count-2 do
      begin
      situacao_cli.Checked[situacao_cli.Count-1]:=true;
      if not situacao_cli.Checked[x] then
         begin
         situacao_cli.Checked[situacao_cli.Count-1]:=False;
         break;
         end;
      end;
   end;


end;

function TFrm_EtiqCli.fSelecionar(pTipo: Integer): Boolean;
begin
result:=true;
Qr_Bar.Close;
Qr_Bar.SQL.clear;
Qr_Bar.SQL.add('Select CRAZAO,CDENOM,CLOG,CBAIRRO,');
Qr_Bar.SQL.Add(' CCIDADE,CUF,CCEP,CFONECOM,CFAX, ');
Qr_Bar.SQL.Add(' CFONERES,CCELULAR,CCNPJ ');
Qr_Bar.SQL.Add(' from CADCLI ');
mcinst:=' where ';
mcinst2:=fRetInstMECadastro('CADCLI','CCODEMP',codemp);

if trim(mcinst2)<>'' then
   begin
   Qr_Bar.SQl.Add(mcinst+mcinst2);
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   Qr_Bar.sql.Add(mcinst+' CCODVEN '+mcinst2);
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   Qr_Bar.sql.Add(mcinst+' CCODCLI '+mcinst2);
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   begin
   Qr_Bar.sql.Add(mcinst+' CCODCV '+mcinst2);
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codrcli,OMITIR_RCLI);
if trim(mcinst2)<>'' then
   begin
   Qr_Bar.sql.Add(mcinst+' CCODRAM '+mcinst2);
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   begin
   Qr_Bar.sql.Add(mcinst+' CCODLOC '+mcinst2);
   mcinst:=' and ';
   end;
LE_PESSOA;
if tipo_status <> '' then
   BEGIN
   Qr_Bar.SQL.Add(mcinst+' CTPPESSOA IN ('+tipo_status+')');
   mcinst:=' and ';
   END;
LE_SITUACAO_CLI;
if tipo_status <> '' then
   BEGIN
   Qr_Bar.SQL.Add(mcinst+' CSITCLI IN ('+tipo_status+')');
   mcinst:=' and ';
   END;
Qr_Bar.SQL.add(' Order by CRAZAO ');
Qr_Bar.Open;
if Qr_Bar.Eof then
   Result:=False
else
   Result:=true;


end;


procedure TFrm_EtiqCli.LE_PESSOA;
var x:integer;
begin
    tipo_status := '';
    for x := 0 to tipo_pessoa.Count -2 do
    begin
        if tipo_pessoa.Checked[x] then
        begin
           tipo_status := tipo_status+inttostr(x);
           tipo_status := tipo_status+',';
        end;
    end;
    tipo_status := copy(tipo_status,1,length(tipo_status)-1);
end;

procedure TFrm_EtiqCli.LE_SITUACAO_CLI;
var x:integer;
begin
    tipo_status := '';
    for x := 0 to situacao_cli.Count -2 do
    begin
        if situacao_cli.Checked[x] then
        begin
           tipo_status := tipo_status+inttostr(x);
           tipo_status := tipo_status+',';
        end;
    end;
    tipo_status := copy(tipo_status,1,length(tipo_status)-1);
end;


procedure TFrm_EtiqCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EtiqCli.edt_altEtiqExit(Sender: TObject);
begin
edt_altEtiq.Text:=fdeixanum(edt_altEtiq.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_EtiqCli.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   begin
   gb_configuracao.Visible   :=true;
   ts_Relatorio.TabVisible   :=true;
   end
else
   begin
   gb_configuracao.Visible   :=false;
   ts_Relatorio.TabVisible   :=false;
   end;
PageControl1.ActivePage:=TabSheet1;
if flfilpad(-1,'_ETIQCLI','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_QTDCOL',[]) then
      EDT_QTDCOL.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ESPACOCOL',[]) then
      EDT_ESPACOCOL.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTETIQ',[]) then
      EDT_ALTETIQ.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTCXTEXTO',[]) then
      EDT_ALTCXTEXTO.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_TAMFONTE',[]) then
      EDT_TAMFONTE.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMTOP',[]) then
      edt_margemtop.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMRODAPE',[]) then
      edt_margemrodape.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMDIREITA',[]) then
      edt_margemDireita.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMESQUERDA',[]) then
      edt_margemEsquerda.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTURA_REL',[]) then
      edt_Altura_Rel.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_LARGURA_REL',[]) then
      edt_Largura_Rel.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   fAtualizarFormulario(0);
   end;


end;
function TFrm_EtiqCli.fAtualizarFormulario(ptipo: Integer): Boolean;
begin
RLDetailGrid1.ColCount   :=valint(edt_qtdcol.Text);
RLDetailGrid1.ColSpacing :=ValInt(edt_espacoCol.Text);
RLDetailGrid1.Height     :=ValInt(edt_altEtiq.Text);

if RG_ALINHAR.ItemIndex=0 then
   begin
   lbl_razsoc.Alignment     :=taCenter;
   lbl_cnpj.Alignment       :=taCenter;
   lbl_ender.Alignment      :=taCenter;
   lbl_cepcidade.Alignment  :=taCenter;
   lbl_cidadeuf.Alignment   :=taCenter;
   end
else if RG_ALINHAR.ItemIndex=1 then
   begin
   lbl_razsoc.Alignment     :=taLeftJustify;
   lbl_cnpj.Alignment       :=taLeftJustify;
   lbl_ender.Alignment      :=taLeftJustify;
   lbl_cepcidade.Alignment  :=taLeftJustify;
   lbl_cidadeuf.Alignment   :=taLeftJustify;
   end
else if RG_ALINHAR.ItemIndex=2 then
   begin
   lbl_razsoc.Alignment     :=taRightJustify;
   lbl_cnpj.Alignment       :=taRightJustify;
   lbl_ender.Alignment      :=taRightJustify;
   lbl_cepcidade.Alignment  :=taRightJustify;
   lbl_cidadeuf.Alignment   :=taRightJustify;
   end;

lbl_razsoc.Height        :=valint(edt_altcxtexto.Text);
lbl_cnpj.Height          :=valint(edt_altcxtexto.Text);
lbl_ender.Height         :=valint(edt_altcxtexto.Text);
lbl_cepcidade.Height     :=valint(edt_altcxtexto.Text);
lbl_cidadeuf.Height      :=valint(edt_altcxtexto.Text);


lbl_razsoc.Font.Height   :=valint(edt_tamfonte.Text);
lbl_cnpj.Font.Height     :=valint(edt_tamfonte.Text);
lbl_ender.Font.Height    :=valint(edt_tamfonte.Text);
lbl_cepcidade.Font.Height:=valint(edt_tamfonte.Text);
lbl_cidadeuf.Font.Height :=valint(edt_tamfonte.Text);

RLReport1.Margins.TopMargin   :=ValInt(edt_margemtop.Text);
RLReport1.Margins.BottomMargin:=ValInt(edt_margemrodape.Text);
RLReport1.Margins.RightMargin :=ValInt(edt_margemDireita.Text);
RLReport1.Margins.LeftMargin  :=ValInt(edt_margemEsquerda.Text);
RLReport1.Width               := ValInt(edt_Largura_Rel.Text);
RLReport1.Height              := ValInt(edt_Altura_Rel.Text);
update;


result:=true;
end;

procedure TFrm_EtiqCli.edt_espacoColExit(Sender: TObject);
begin
edt_espacoCol.Text:=fdeixanum(edt_espacoCol.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_EtiqCli.edt_altcxtextoExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_EtiqCli.edt_tamfonteExit(Sender: TObject);
begin
edt_tamfonte.Text:=fdeixanum(edt_tamfonte.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_EtiqCli.edt_qtdcolExit(Sender: TObject);
begin
edt_qtdcol.Text:=fdeixanum(edt_qtdcol.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_EtiqCli.edt_espacoColChange(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=true;
end;

procedure TFrm_EtiqCli.sbSalvarPadraoClick(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=false;

fDeletaPadroes(-1,'_ETIQCLI','');

fGravaPadroes(-1,'EDT_QTDCOL'         ,'text'       ,'_ETIQCLI',edt_qtdcol.Text);
fGravaPadroes(-1,'EDT_ESPACOCOL'      ,'text'       ,'_ETIQCLI',edt_espacoCol.Text);
fGravaPadroes(-1,'EDT_ALTETIQ'        ,'text'       ,'_ETIQCLI',edt_altEtiq.Text);
fGravaPadroes(-1,'EDT_ALTCXTEXTO'     ,'text'       ,'_ETIQCLI',edt_altcxtexto.Text);
fGravaPadroes(-1,'EDT_TAMFONTE'       ,'text'       ,'_ETIQCLI',edt_tamfonte.Text);

fGravaPadroes(-1,'EDT_MARGEMTOP'      ,'text'       ,'_ETIQCLI',edt_margemtop.Text);
fGravaPadroes(-1,'EDT_MARGEMRODAPE'   ,'text'       ,'_ETIQCLI',edt_margemrodape.Text);
fGravaPadroes(-1,'EDT_MARGEMDIREITA'  ,'text'       ,'_ETIQCLI',edt_margemDireita.Text);
fGravaPadroes(-1,'EDT_MARGEMESQUERDA' ,'text'       ,'_ETIQCLI',edt_margemEsquerda.Text);
fGravaPadroes(-1,'EDT_ALTURA_REL'     ,'text'       ,'_ETIQCLI',edt_Altura_Rel.Text);
fGravaPadroes(-1,'EDT_LARGURA_REL'    ,'text'       ,'_ETIQCLI',edt_Largura_Rel.Text);


fmensagem('Concluido!',0,['0'],0);




end;

procedure TFrm_EtiqCli.sbRestaurarClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Voltar as Configurações Originais?',0,['1','2'],2)<>mrYes then
   exit;
edt_qtdcol.Text         :='3';
edt_espacoCol.Text      :='1';
edt_altEtiq.Text        :='84';
edt_altcxtexto.Text     :='18';
edt_tamfonte.Text       :='-8';
edt_margemtop.Text      :='10';
edt_margemrodape.Text   :='10';
edt_margemDireita.Text  :='10';
edt_margemEsquerda.Text :='10';
edt_Altura_Rel.Text     :='1123';
edt_Largura_Rel.Text    :='794';





fAtualizarFormulario(0);
sbSalvarPadrao.Enabled:=true;
fmensagem('Configurações Restauradas!',0,['0'],0);

end;

procedure TFrm_EtiqCli.bbImprimirClick(Sender: TObject);
begin
if not fSelecionar(0) then
   begin
   fMensagem('Não ha Registros na Condição Solicitada!',0,['0'],0);
   exit;
   end;
bbImprimir.Enabled:=false;
RLReport1.PreviewModal;
bbImprimir.Enabled:=true;
end;

procedure TFrm_EtiqCli.Qr_BarCalcFields(DataSet: TDataSet);
begin
IF Qr_BarCCNPJ.AsFloat>0 then
   Qr_Barcnpj.AsString:=FormatFloat(pDFCNPJ, Qr_BarCCNPJ.AsFloat);
Qr_Barcep_bairro.AsString:=Qr_BarCCEP.AsString+' '+Qr_BarCBAIRRO.AsString;
Qr_Barcidade_uf.AsString:=Qr_BarCCIDADE.AsString+'-'+Qr_BarCUF.AsString;


end;

end.
