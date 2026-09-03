unit S_Ped_DevCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,func,lerarq, DB, DBTables,
  S_Ven, Grids, DBGrids, S_SelEmp;

type
  TFrm_Ped_DevCons = class(TForm)
    gbCabecalho: TGroupBox;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    Label3: TLabel;
    RG_LISTAR: TRadioGroup;
    bbSelecionar: TBitBtn;
    bbSair: TBitBtn;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label4: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    gbDetalhes: TGroupBox;
    Panel_rodape: TPanel;
    bbBaixar: TBitBtn;
    gbImpressao: TGroupBox;
    gbDadosBaixa: TGroupBox;
    Src_PedConsig: TDataSource;
    Tb_PedConsig: TQuery;
    Tb_PedConsigCRAZAO: TStringField;
    Tb_PedConsigP1CODCLI: TFloatField;
    Tb_PedConsigP1DATAP: TDateTimeField;
    Tb_PedConsigP1CODVEN: TFloatField;
    Tb_PedConsigP2CODPRO: TFloatField;
    Tb_PedConsigPDNOME: TStringField;
    Tb_PedConsigPDUND: TStringField;
    Tb_PedConsigP2QTD: TFloatField;
    Tb_PedConsigP2QTDDEV: TFloatField;
    DBGrid_regsel: TDBGrid;
    Tb_Ped_Dcons: TQuery;
    Src_Ped_Dcons: TDataSource;
    Tb_Ped_DconsP2DC_QTD: TFloatField;
    Tb_Ped_DconsP2DC_CODUSR: TFloatField;
    Tb_Ped_DconsP2DC_DATHORDIG: TDateTimeField;
    Tb_Ped_DconsP2DC_DATADEV: TDateTimeField;
    Tb_Ped_DconsNOMUSR: TStringField;
    DBGrid_dadosbaixa: TDBGrid;
    Tb_PedConsigP1CODEMP: TFloatField;
    Tb_PedConsigP1LOTSEQ: TFloatField;
    Tb_PedConsigP1CHAVE: TFloatField;
    Panel1: TPanel;
    bbExcbaixa: TBitBtn;
    lbl_qtdbaixa: TLabel;
    QTDDEV: TEdit;
    bbEfetuarBaixa: TBitBtn;
    Tb_PedConsigP1ORDEM: TFloatField;
    Tb_PedConsigP2ITEM: TFloatField;
    lbl_datadev: TLabel;
    MDATADEV: TMaskEdit;
    bbDesistir: TBitBtn;
    Tb_Ped_DconsP2DC_STATUS: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_regselDblClick(Sender: TObject);
    procedure gbDadosBaixaExit(Sender: TObject);
    procedure QTDDEVExit(Sender: TObject);
    procedure bbEfetuarBaixaClick(Sender: TObject);
    procedure bbDesistirClick(Sender: TObject);
    procedure bbExcbaixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Ped_DevCons: TFrm_Ped_DevCons;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Ped_DevCons.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_DevCons.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Ped_DevCons.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Ped_DevCons.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if ValFloat(CODCLI.Text)<>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',trim(CODCLI.Text)) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_Ped_DevCons.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ProABC',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Ped_DevCons.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;


end;

procedure TFrm_Ped_DevCons.CODVENKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Ped_DevCons.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Ped_DevCons.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Ped_DevCons.bbSelecionarClick(Sender: TObject);
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

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


Tb_PedConsig.Close;
Tb_PedConsig.SQL.Clear;
Tb_PedConsig.SQL.add(' SELECT CRAZAO,P1CODCLI,P1DATAP,P1CODVEN, ');
Tb_PedConsig.SQL.add(' P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P2ITEM, ');
Tb_PedConsig.SQL.add(' P2CODPRO, ');
Tb_PedConsig.SQL.add(' PDNOME,');
Tb_PedConsig.SQL.add(' PDUND,');
Tb_PedConsig.SQL.add(' P2QTD,');
Tb_PedConsig.SQL.add(' P2QTDDEV');
Tb_PedConsig.SQL.add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<9 ');
Tb_PedConsig.SQL.add(' and P2CONSIG=1 ');
if trim(MDT1.Text)<>'/  /' then
   Tb_PedConsig.SQL.add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Tb_PedConsig.SQL.add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Tb_PedConsig.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if RG_LISTAR.ItemIndex=0 then
   Tb_PedConsig.SQL.Add(' and (P2QTD-P2QTDDEV)>0 ')
else if RG_LISTAR.ItemIndex=1 then
   Tb_PedConsig.SQL.Add(' and (P2QTD-P2QTDDEV)<=0 ');
Tb_PedConsig.Open;

end;

procedure TFrm_Ped_DevCons.bbBaixarClick(Sender: TObject);
begin
if Tb_PedConsigP2CODPRO.IsNull then
   exit
else
   begin
   if (Tb_PedConsigP2QTD.AsFloat-Tb_PedConsigP2QTDDEV.AsFloat)<=0 then
      begin
      Fmensagem('Nao ha Pendencia para Este Item!',0,['0'],0);
      exit;
      end;
   DBGrid_regsel.Enabled :=false;
   bbSelecionar.Enabled  :=false;
   gbImpressao.Enabled   :=false;
   bbBaixar.Enabled      :=false;
   bbEfetuarBaixa.Enabled:=true;
   lbl_qtdbaixa.Enabled  :=true;
   QTDDEV.Enabled        :=true;
   bbEfetuarBaixa.Enabled:=true;
   bbDesistir.Enabled    :=true;
   MDATADEV.Text         :=FormatDateTime(fdt2, date);
   MDATADEV.Enabled      :=true;
   lbl_datadev.Enabled   :=true;
   QTDDEV.Text           :=Formatfloat(mcasqtd, Tb_PedConsigP2QTD.AsFloat-Tb_PedConsigP2QTDDEV.AsFloat);
   QTDDEV.SetFocus;
   end;
end;

procedure TFrm_Ped_DevCons.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Ped_DevCons.DBGrid_regselDblClick(Sender: TObject);
begin
if not gbDadosBaixa.Visible THEN
   begin
   if (Tb_PedConsigP1CHAVE.AsFloat>0) and (Tb_PedConsigP2QTDDEV.AsFloat<>0) then
      begin
      gbDadosBaixa.Visible:=true;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin(0,'CADUSR','CODEMP','P2DC_CODEMP','CODUSR','P2DC_CODUSR');

      Tb_Ped_Dcons.Close;
      Tb_Ped_Dcons.SQL.Clear;
      Tb_Ped_Dcons.SQL.Add('Select P2DC_QTD, '
                          +'   P2DC_CODUSR, '
                          +'  P2DC_DATHORDIG, '
                          +'  P2DC_DATADEV, '
                          +'  P2DC_STATUS, '
                          +'  NOMUSR '
                          +'  from CADP02_DCONS '+iif(la_tabelas='','',',')+la_tabelas
                          +'       '+la_Join
                          +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                          +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2DC_CODEMP=0'+Tb_PedConsigP1CODEMP.AsString+' and ')
                          +' P2DC_LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                          +' and P2DC_CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                          +' and P2DC_STATUS<>9 '
                          +' order by P2DC_DATADEV ');
      try
         Tb_Ped_Dcons.Open;
         DBGrid_dadosbaixa.SetFocus;
      except
         Tb_Ped_Dcons.sql.savetofile('c:\sql.txt');
         end;
      end;
   end;
end;

procedure TFrm_Ped_DevCons.gbDadosBaixaExit(Sender: TObject);
begin
gbDadosBaixa.Visible:=false;
end;

procedure TFrm_Ped_DevCons.QTDDEVExit(Sender: TObject);
begin
Formatfloat(mcasqtd, ValFloat(QTDDEV.Text));
end;

procedure TFrm_Ped_DevCons.bbEfetuarBaixaClick(Sender: TObject);
begin
if Trim(MDATADEV.Text)='/  /' then
   begin
   fmensagem('Data de Devolucao Campo Obrigatorio!',0,['0'],0);
   MDATADEV.SetFocus;
   exit;
   end;
try
   MDATADEV.Text:=FormatDateTime(fdt2, StrToDate(MDATADEV.Text));
except
   fmensagem('Data de Devolucao Invalida!',0,['0'],0);
   MDATADEV.SetFocus;
   exit;
   end;

if ValFloat(QTDDEV.Text)<=0 then
   begin
   fmensagem('Favor Digitar uma Quantidade valida!',0,['0'],0);
   QTDDEV.SetFocus;
   exit;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select P2QTD-P2QTDDEV AS RESTO from CADP02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'
                  +Tb_PedConsigP1CODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                  +' and P2CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                  +' and P2ORDEM=0'+Tb_PedConsigP1ORDEM.AsString
                  +' and P2ITEM=0'+Tb_PedConsigP2ITEM.AsString);
try
   DM1.Query2.Open;
except
   DM1.Query2.sql.savetofile('c:\sql.txt');
   end;
if DM1.Query2.Eof then
   begin
   fmensagem('Registro nao Encontrado!',0,['0'],0);
   exit;
   end;
if DM1.Query2.FieldByName('RESTO').AsFloat<ValFloat(QTDDEV.Text) then
   begin
   fmensagem('Quantidade Maxima Permitida: '+FormatFloat(mcasqtd,
                        DM1.Query2.FieldByName('RESTO').AsFloat),0,['0'],0);
   exit;
   end;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Update CADP02 set P2QTDDEV=P2QTDDEV+'+mudavp(qtddev.Text)
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'
                  +Tb_PedConsigP1CODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                  +' and P2CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                  +' and P2ORDEM=0'+Tb_PedConsigP1ORDEM.AsString
                  +' and P2ITEM=0'+Tb_PedConsigP2ITEM.AsString);
try
   dm1.Query3.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile('C:\SQL.TXT');
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Insert into CADP02_DCONS ( ');
DM1.Query1.Sql.Add('  P2DC_CODEMP, ');
DM1.Query1.Sql.Add('  P2DC_LOTSEQ, ');
DM1.Query1.Sql.Add('  P2DC_CHAVE, ');
DM1.Query1.Sql.Add('  P2DC_ORDEM, ');
DM1.Query1.Sql.Add('  P2DC_ITEM, ');
DM1.Query1.Sql.Add('  P2DC_CODPRO, ');
DM1.Query1.Sql.Add('  P2DC_QTD, ');
DM1.Query1.Sql.Add('  P2DC_CODCLI, ');
DM1.Query1.Sql.Add('  P2DC_CODUSR, ');
DM1.Query1.Sql.Add('  P2DC_DATHORDIG, ');
DM1.Query1.Sql.Add('  P2DC_DATADEV, ');
DM1.Query1.Sql.Add('  P2DC_STATUS ');
DM1.Query1.Sql.Add(' ) values (');
DM1.Query1.Sql.Add(Tb_PedConsigP1CODEMP.AsString+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP1LOTSEQ.AsString+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP1CHAVE.AsString+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP1ORDEM.AsString+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP2ITEM.AsString+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP2CODPRO.AsString+', ');
DM1.Query1.Sql.Add(mudavp(Trim(QTDDEV.Text))+', ');
DM1.Query1.Sql.Add(Tb_PedConsigP1CODCLI.AsString+', ');
DM1.Query1.Sql.Add(InttoStr(codusr)+',');
DM1.Query1.Sql.Add('SYSDATE,');
DM1.Query1.Sql.Add('TO_DATE('+chr(39)+FormatDatetime(fdt, StrToDate(MDATADEV.Text))+chr(39)+'),');
DM1.Query1.Sql.Add('0');
DM1.Query1.Sql.Add(')');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');
   end;
bbSelecionarClick(Self);
bbDesistirClick(self);

end;

procedure TFrm_Ped_DevCons.bbDesistirClick(Sender: TObject);
begin
MDATADEV.Text:='/  /';
QTDDEV.Text  :='';
bbBaixar.Enabled      :=true;
bbEfetuarBaixa.Enabled:=false;
lbl_qtdbaixa.Enabled  :=false;
QTDDEV.Enabled        :=false;
bbEfetuarBaixa.Enabled:=false;
bbDesistir.Enabled    :=false;
MDATADEV.Enabled      :=false;
lbl_datadev.Enabled   :=false;
bbDesistir.Enabled    :=false;
DBGrid_regsel.Enabled :=true;
bbSelecionar.Enabled  :=true;
gbImpressao.Enabled   :=true;


end;

procedure TFrm_Ped_DevCons.bbExcbaixaClick(Sender: TObject);
begin
if Tb_Ped_DconsP2DC_QTD.IsNull then
   begin
   fmensagem('Favor Selecionar um registro valido!',0,['0'],0);
   exit;
   end;
DBGrid_dadosbaixa.Enabled:=false;
if fmensagem('Quer Realmente Excluir a Baixa Selecionada?',0,['1','2'],0)<>mrYes then
   begin
   DBGrid_dadosbaixa.Enabled:=true;
   end;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Update CADP02 set P2QTDDEV=P2QTDDEV-'+ mudavp(Tb_Ped_DconsP2DC_QTD.AsString)
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'
                  +Tb_PedConsigP1CODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                  +' and P2CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                  +' and P2ORDEM=0'+Tb_PedConsigP1ORDEM.AsString
                  +' and P2ITEM=0'+Tb_PedConsigP2ITEM.AsString);
try
   dm1.Query3.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile('C:\SQL.TXT');
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Update CADP02_DCONS set P2DC_STATUS=9 ');
DM1.Query1.Sql.Add('  ,P2DC_CODUSR='+IntToStr(codusr));
DM1.Query1.Sql.Add('  ,P2DC_DATHORDIG=SYSDATE '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2DC_CODEMP=0'
                  +Tb_PedConsigP1CODEMP.AsString+' and ')
                  +' P2DC_LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                  +' and P2DC_CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                  +' and P2DC_ORDEM=0'+Tb_PedConsigP1ORDEM.AsString
                  +' and P2DC_ITEM=0'+Tb_PedConsigP2ITEM.AsString
                  +' and P2DC_DATADEV='+chr(39)+FormatDateTime(fdt, Tb_Ped_DconsP2DC_DATADEV.Value)+chr(39)
                  +' and P2DC_QTD=0'+mudavp(Tb_Ped_DconsP2DC_QTD.AsString));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADUSR','CODEMP','P2DC_CODEMP','CODUSR','P2DC_CODUSR');

Tb_Ped_Dcons.Close;
Tb_Ped_Dcons.SQL.Clear;
Tb_Ped_Dcons.SQL.Add('Select P2DC_QTD, '
                    +'   P2DC_CODUSR, '
                    +'  P2DC_DATHORDIG, '
                    +'  P2DC_DATADEV, '
                    +'  P2DC_STATUS, '
                    +'  NOMUSR '
                    +'  from CADP02_DCONS '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2DC_CODEMP=0'+Tb_PedConsigP1CODEMP.AsString+' and ')
                    +' P2DC_LOTSEQ=0'+Tb_PedConsigP1LOTSEQ.AsString
                    +' and P2DC_CHAVE=0'+Tb_PedConsigP1CHAVE.AsString
                    +' and P2DC_STATUS<>9 '
                    +' order by P2DC_DATADEV ');
try
   Tb_Ped_Dcons.Open;
   if dbgrid_dadosbaixa.enabled then
      DBGrid_dadosbaixa.SetFocus;
except
   Tb_Ped_Dcons.sql.savetofile('c:\sql.txt');
   end;
DBGrid_dadosbaixa.Enabled:=true;
bbSelecionarClick(Self);
bbDesistirClick(self);
if Tb_Ped_Dcons.IsEmpty then
   DBGrid_regsel.SetFocus;

end;

procedure TFrm_Ped_DevCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ped_DevCons.FormKeyDown(Sender: TObject; var Key: Word;
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
