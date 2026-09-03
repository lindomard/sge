unit S_CxSaldo2dias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_Bco, ExtCtrls,S_Dpto,S_Ccu,S_Cli,S_Ven,S_Tra,
  S_For,S_DM1,db,dbtables,func,lerarq,S_Impres, S_SelEmp;

type
  TFrm_CxSaldo2dias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label4: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    NOMDEP: TEdit;
    CODDEP: TEdit;
    Label5: TLabel;
    SP1: TSpeedButton;
    Label6: TLabel;
    CODCCU: TEdit;
    SP2: TSpeedButton;
    NOMCCU: TEdit;
    RG_NAT: TRadioGroup;
    RG_ESTADO: TRadioGroup;
    Label7: TLabel;
    CB_TIPO: TComboBox;
    CODIGO: TEdit;
    NOME: TEdit;
    Qr_Caixa: TQuery;
    Qr_CaixaNOME: TStringField;
    Qr_CaixaCODIGO: TFloatField;
    Qr_CaixaDEB01: TFloatField;
    Qr_CaixaCRED01: TFloatField;
    Qr_CaixaDEB02: TFloatField;
    Qr_CaixaCRED02: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_cxSaldo2Dias: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CxSaldo2dias: TFrm_CxSaldo2dias;

implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_CxSaldo2dias.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatdateTime(fdt2, StrTodate(MDT1.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_CxSaldo2dias.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrTodate(MDT2.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_CxSaldo2dias.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CxSaldo2dias',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CxSaldo2dias',Key);         MDT1.SetFocus;
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_CxSaldo2Dias',key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   key:=#0;
   end;


end;

procedure TFrm_CxSaldo2dias.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_CxSaldo2dias.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CxSaldo2dias',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_CxSaldo2dias.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)<>'' Then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      CODBCO.SetFocus;
      end
   else
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMBCO.Text:='Todos...';

end;

procedure TFrm_CxSaldo2dias.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=Trim(CODDEP.Text);
if Trim(CODDEP.Text)<>'' Then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      CODDEP.SetFocus;
      end
   else
      NOMDEP.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMDEP.Text:='Todos...';

end;

procedure TFrm_CxSaldo2dias.CODCCUExit(Sender: TObject);
begin
CODCCU.Text:=Trim(CODCCU.Text);

if Trim(CODCCU.Text)<>'' Then
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU.SetFocus;
      end
   else
      NOMCCU.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMCCU.Text:='Todos...';

end;

procedure TFrm_CxSaldo2dias.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='TR' then
      flqr1('TRRAZAO','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      MessageDlg('Código Não Cadastrado!',mtWarning,[mbOk],0);
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';

end;

procedure TFrm_CxSaldo2dias.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CxSaldo2dias','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_CxSaldo2dias.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CxSaldo2dias','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(Self);

end;

procedure TFrm_CxSaldo2dias.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.items.Strings[CB_TIPO.itemindex];

end;

procedure TFrm_CxSaldo2dias.bbImprimirClick(Sender: TObject);
var
mtabtemp: String;
msaldo01, msaldo02: Real;
begin
if Trim(MDT1.Text)='/  /' then
   begin
   MessageDlg('Primeira data Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
if Trim(MDT2.Text)='/  /' then
   begin
   MessageDlg('Segunda data Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
mtabtemp:=fProcTemp(0);
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.SQL.Add('Create table '+mtabtemp
                  +'('
                  +'NOME VARCHAR(40),'
                  +'CODIGO DOUBLE PRECISION,'
                  +'DEB01 DOUBLE PRECISION, '
                  +'CRED01 DOUBLE PRECISION, '
                  +'DEB02 DOUBLE PRECISION, '
                  +'CRED02 DOUBLE PRECISION)');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar Tabela Temporaria!',mtWarning,[mbOk],0);
   end;

// DEBITO DA DATA 01
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (NOME,CODIGO,DEB01,CRED01,DEB02,CRED02) '
                  +' Select BCBANCO,BCCODBCO,sum(VALORR) AS DEB01, 0,0,0 from '
                  +' CADLDR,CADBCO where '+la_Empresas
                  +' and STATUS <> 9'
                  +' and NATDC='+chr(39)+'D'+chr(39));
if RG_ESTADO.ItemIndex=0 then
   begin
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')'
                        +' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   end
else
   begin
   DM1.Query1.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   end;
if Trim(CODBCO.Text)<>'' Then
   DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
if Trim(CODDEP.Text)<>'' then
   DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
if Trim(CODCCU.Text)<>'' Then
   DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
if Trim(CODIGO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                     +' and CODIGO=0'+trim(CODIGO.Text));
   end;
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   DM1.Query1.SQL.Add(' and BCCODEMP=CODEMP');
DM1.Query1.SQL.add(' and BCCODBCO=CODBCO');
DM1.Query1.SQL.Add('Group by BCBANCO,BCCODBCO');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar o Arquivo Temporario!',mtWarning,[mbOk],0);
   end;
// FIM DO DEBITO DA DATA 01



// CREDITO DA DATA 01
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (NOME,CODIGO,DEB01,CRED01,DEB02,CRED02) '
                  +' Select BCBANCO,BCCODBCO,0,sum(VALORR) AS CRED01,0,0 from '
                  +' CADLDR,CADBCO where '+la_Empresas
                  +' and STATUS <> 9'
                  +' and NATDC<>'+chr(39)+'D'+chr(39));
if RG_ESTADO.ItemIndex=0 then
   begin
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')'
                        +' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   end
else
   begin
   DM1.Query1.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   end;
if Trim(CODBCO.Text)<>'' Then
   DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
if Trim(CODDEP.Text)<>'' then
   DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
if Trim(CODCCU.Text)<>'' Then
   DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
if Trim(CODIGO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                     +' and CODIGO=0'+trim(CODIGO.Text));
   end;
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   DM1.Query1.SQL.Add(' and BCCODEMP=CODEMP');
DM1.Query1.SQL.add(' and BCCODBCO=CODBCO');
DM1.Query1.SQL.Add('Group by BCBANCO,BCCODBCO');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar o Arquivo Temporario!',mtWarning,[mbOk],0);
   end;
// FIM DO CREDITO DA DATA 01


// DEBITO DA DATA 02
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (NOME,CODIGO,DEB01,CRED01,DEB02,CRED02) '
                  +' Select BCBANCO,BCCODBCO,0,0,sum(VALORR) AS DEB02,0 from '
                  +' CADLDR,CADBCO where '+la_Empresas
                  +' and STATUS <> 9'
                  +' and NATDC='+chr(39)+'D'+chr(39));
if RG_ESTADO.ItemIndex=0 then
   begin
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')'
                        +' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   end
else
   begin
   DM1.Query1.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   end;
if Trim(CODBCO.Text)<>'' Then
   DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
if Trim(CODDEP.Text)<>'' then
   DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
if Trim(CODCCU.Text)<>'' Then
   DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
if Trim(CODIGO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                     +' and CODIGO=0'+trim(CODIGO.Text));
   end;
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   DM1.Query1.SQL.Add(' and BCCODEMP=CODEMP');
DM1.Query1.SQL.add(' and BCCODBCO=CODBCO');
DM1.Query1.SQL.Add('Group by BCBANCO,BCCODBCO');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar o Arquivo Temporario!',mtWarning,[mbOk],0);
   end;
// FIM DO DEBITO DA DATA 02



// CREDITO DA DATA 02
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (NOME,CODIGO,DEB01,CRED01,DEB02,CRED02) '
                  +' Select BCBANCO,BCCODBCO,0,0,0,sum(VALORR) AS CRED02 from '
                  +' CADLDR,CADBCO where '+la_Empresas
                  +' and STATUS <> 9'
                  +' and NATDC<>'+chr(39)+'D'+chr(39));
if RG_ESTADO.ItemIndex=0 then
   begin
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')'
                        +' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   end
else
   begin
   DM1.Query1.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   end;
if Trim(CODBCO.Text)<>'' Then
   DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
if Trim(CODDEP.Text)<>'' then
   DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
if Trim(CODCCU.Text)<>'' Then
   DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
if Trim(CODIGO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                     +' and CODIGO=0'+trim(CODIGO.Text));
   end;
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   DM1.Query1.SQL.Add(' and BCCODEMP=CODEMP');
DM1.Query1.SQL.add(' and BCCODBCO=CODBCO');
DM1.Query1.SQL.Add('Group by BCBANCO,BCCODBCO');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar o Arquivo Temporario!',mtWarning,[mbOk],0);
   end;
// FIM DO CREDITO DA DATA 02
Qr_Caixa.Close;
Qr_Caixa.SQL.Clear;
Qr_Caixa.SQL.add('Select NOME,CODIGO,sum(DEB01) as DEB01, '
                +'sum(CRED01) as CRED01, '
                +'sum(DEB02) as DEB02, '
                +'sum(CRED02) as CRED02 from '+mtabtemp
                +' group by NOME,CODIGO ');
Qr_Caixa.Open;
if Qr_Caixa.Eof then
   begin
   MessageDlg('Não ha nada a ser impresso!',mtInformation,[mbOk],0);
   exit;
   end;

testeform := TFrm_CxSaldo2dias(FindGlobalComponent('form_impres_cxSaldo2Dias'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_cxSaldo2Dias);
form_impres_cxSaldo2Dias.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_cxSaldo2Dias.mlin:=0;
form_impres_cxSaldo2Dias.mpag:=0;
msaldo01:=0;
msaldo02:=0;
While not Qr_Caixa.Eof do
   begin
   if form_impres_cxSaldo2Dias.mlin=0 then
      begin
      form_impres_cxSaldo2Dias.mpag:=form_impres_cxSaldo2Dias.mpag+1;
      form_impres_cxSaldo2Dias.RDprint1.impf(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Pag: '+FormatFloat('0000',form_impres_cxSaldo2Dias.mpag),mnormal);
      form_impres_cxSaldo2Dias.RDprint1.impf(02,01,insere2('Comparação de Saldo.',' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_cxSaldo2Dias.RDprint1.impf(03,01,insere2('=','=',80),mnormal);
      form_impres_cxSaldo2Dias.RDprint1.ImpF(04,01,'Codig Nome                                    Saldo em     Saldo em     Variacao',mnormal);
      form_impres_cxSaldo2Dias.RDprint1.ImpF(05,01,'                                            '+MDT1.Text
                                    +'   '+mdt2.Text+'      Periodo',mnormal);
      form_impres_cxSaldo2Dias.mlin:=5;
      end;
   form_impres_cxSaldo2Dias.mlin:=form_impres_cxSaldo2Dias.mlin+1;
   form_impres_cxSaldo2Dias.RDprint1.impf(form_impres_cxSaldo2Dias.mlin,01,insere(Qr_CaixaCODIGO.AsString,'0',5)
                           +' '+insere2(Qr_CaixaNOME.Value,' ',35)
                           +insere(FormatFloat(mcasas, Qr_CaixaCRED01.Value-Qr_CaixaDEB01.Value),' ',13)
                           +insere(FormatFloat(mcasas, Qr_CaixaCRED02.Value-Qr_CaixaDEB02.Value),' ',13)
                           +insere(FormatFloat(mcasas, (Qr_CaixaCRED02.Value-Qr_CaixaDEB02.Value)
                           -(Qr_CaixaCRED01.Value-Qr_CaixaDEB01.Value) ),' ',13),mnormal);
   msaldo01:=msaldo01+(Qr_CaixaCRED01.Value-Qr_CaixaDEB01.Value);
   msaldo02:=msaldo02+(Qr_CaixaCRED02.Value-Qr_CaixaDEB02.Value);
   Qr_Caixa.Next;
   if Qr_Caixa.Eof then
      begin
      form_impres_cxSaldo2Dias.mlin:=form_impres_cxSaldo2Dias.mlin+1;
      form_impres_cxSaldo2Dias.RDprint1.impf(form_impres_cxSaldo2Dias.mlin,01,insere2('-Totais','.',41)
                           +insere(FormatFloat(mcasas, msaldo01),' ',13)
                           +insere(FormatFloat(mcasas, msaldo02),' ',13)
                           +insere(FormatFloat(mcasas, (msaldo02+msaldo01)),' ',13),mnormal);
      form_impres_cxSaldo2Dias.mlin:=form_impres_cxSaldo2Dias.mlin+1;
      form_impres_cxSaldo2Dias.RDprint1.ImpF(form_impres_cxSaldo2Dias.mlin,01,insere2('Final.','-',80),mnormal);
      if form_impres_cxSaldo2Dias.RDprint1.Setup then form_impres_cxSaldo2Dias.RDprint1.Fechar;
      form_impres_cxSaldo2Dias.free;
      form_impres_cxSaldo2Dias:=nil;
      end
   else if form_impres_cxSaldo2Dias.mlin>58 then
      begin
      form_impres_cxSaldo2Dias.mlin:=form_impres_cxSaldo2Dias.mlin+1;
      form_impres_cxSaldo2Dias.RDprint1.ImpF(form_impres_cxSaldo2Dias.mlin,01,insere2('Continua...','-',80),mnormal);
      form_impres_cxSaldo2Dias.RDprint1.Novapagina;
      form_impres_cxSaldo2Dias.mlin:=0;
      end;
   end;

if Trim(mtabtemp)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop table '+mtabtemp);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;

end;

procedure TFrm_CxSaldo2dias.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CxSaldo2dias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CxSaldo2dias.FormKeyDown(Sender: TObject; var Key: Word;
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
