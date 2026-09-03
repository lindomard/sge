unit S_CX_RM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu, S_Emp,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq, Grids;

type
  TFrm_CX_RM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MCODEMP: TEdit;
    NOMEMP: TEdit;
    Label3: TLabel;
    CODDEP: TEdit;
    NOMDEP: TEdit;
    Label4: TLabel;
    CODCCU: TEdit;
    NOMCCU: TEdit;
    Label5: TLabel;
    CB_TIPO: TComboBox;
    CODIGO: TEdit;
    NOME: TEdit;
    Label6: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label7: TLabel;
    RG_NAT: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_LDR: TQuery;
    RG_ESTADO: TRadioGroup;
    Qr_LDRCRED: TFloatField;
    Qr_LDRDEB: TFloatField;
    Qr_LDRANOMES: TStringField;
    Qr_LDRmes: TStringField;
    SP2: TSpeedButton;
    SP1: TSpeedButton;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Label8: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    BitBtn6: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_GRAVAR: TBitBtn;
    COD: TEdit;
    NOM: TEdit;
    STG1: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CODKeyPress(Sender: TObject; var Key: Char);
    procedure CODExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_cx_rm: TFrm_Impres;
  end;


var
  Frm_CX_RM: TFrm_CX_RM;
  mqtd,mop: Integer;
implementation

{$R *.dfm}

procedure TFrm_CX_RM.BitBtn1Click(Sender: TObject);
var
msaldod,msaldoi, mdeb, mcred: Real;
mpag, mlin: Integer;
mtabtemp: String;
mcompldr: String;
begin




mcompldr:='';
mcinst:='((';
for mlin:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,mlin])='' then
      Continue;
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(STG1.Cells[0,mlin]);
   mcinst:=') or (';
   end;
if mcinst=') or (' then
   begin
   mcompldr:=mcompldr+'))';
   end;



mtabtemp:='';
if pbanco=1 then // interbase
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMANOMES VARCHAR(06), '
                     +' TMCRED DOUBLE PRECISION, '
                     +' TMDEB  DOUBLE PRECISION) ');
   DM1.Query1.execSql;
   if RG_NAT.ItemIndex<>1 then
      begin
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into '+mtabtemp+' (TMANOMES,TMCRED,TMDEB) '
                        +' Select (EXTRACT(YEAR FROM DATAREAL)||EXTRACT(MONTH FROM DATAREAL)) AS ANOMES, '
                        +' sum(VALORR),0 AS DEB','Insert into '+mtabtemp+' (TMANOMES,TMCRED,TMDEB) '
                        +' Select (EXTRACT(YEAR FROM DATADP)||EXTRACT(MONTH FROM DATADP)) AS ANOMES, '
                        +' sum(VALORP),0 AS CRED  ')
                        +' from CADLDR where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(mcompldr)='','',' and '+mcompldr)
                        +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                        +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                        +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                        +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                        +'  and NATDC<>'+chr(39)+'D'+chr(39)
                        +iif(RG_ESTADO.ItemIndex=0,
                        ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                        +iif(RG_ESTADO.ItemIndex=1,'  and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')',''));
      if Trim(MDT1.Text)<>'/  /' then
         begin
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                      ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
         end;
      if Trim(MDT2.Text)<>'/  /' then
         begin
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                      ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
         end;
      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by DATAREAL ',' Group by DATADP '));
      DM1.Query1.ExecSQL;
      end;
   if RG_NAT.ItemIndex<>2 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;

      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into '+mtabtemp+' (TMANOMES,TMCRED,TMDEB) '
                        +' Select (EXTRACT(YEAR FROM DATAREAL)||EXTRACT(MONTH FROM DATAREAL)) ANOMES, '
                        +' 0 AS CRED, sum(VALORR) ','Insert into '+mtabtemp+' (TMANOMES,TMCRED,TMDEB) '
                        +' Select (EXTRACT(YEAR FROM DATADP)||EXTRACT(MONTH FROM DATADP)) AS ANOMES, '
                        +' 0 AS CRED, sum(VALORP)  ')
                        +' from CADLDR where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(mcompldr)='','',' and '+mcompldr)
                        +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                        +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                        +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                        +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                        +'  and NATDC='+chr(39)+'D'+chr(39)
                        +iif(RG_ESTADO.ItemIndex=0,'  and not DATAREAL is null','')
                        +iif(RG_ESTADO.ItemIndex=1,
                        ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')'
                        ,''));
      if Trim(MDT1.Text)<>'/  /' then
         begin
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                      ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
         end;
      if Trim(MDT2.Text)<>'/  /' then
         begin
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                      ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
         end;
      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by DATAREAL ',' Group by DATADP '));
      DM1.Query1.ExecSQL;
      end;
   Qr_Ldr.Close;
   Qr_Ldr.Sql.Clear;
   Qr_Ldr.Sql.add('Select TMANOMES as ANOMES ,sum(TMCRED) as CRED,sum(TMDEB) as DEB '
                 +' from '+mtabtemp+' group by TMANOMES');
   Qr_Ldr.Open;
   end
else
   begin
   Qr_Ldr.Close;
   Qr_Ldr.SQl.Clear;
   Qr_Ldr.SQl.add(iif(RG_ESTADO.ItemIndex=0,'Select TO_CHAR(DATAREAL, '+chr(39)+'YYYYMM'+chr(39)+') AS ANOMES, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORR,0)) as DEB,  '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', 0,VALORR)) as CRED  ',
                 'Select DATADP as DATA,sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0, VALORP)) as CRED, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORP,0)) as DEB ')
                 +' from CADLDR where STATUS<>9 '
                 +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                 +iif(Trim(mcompldr)='','',' and '+mcompldr)
                 +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                 +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                 +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                 +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                 +iif(RG_ESTADO.ItemIndex=0,
                 ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                 +iif(RG_ESTADO.ItemIndex=1,' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));
   if RG_NAT.ItemIndex=2 then
      Qr_Ldr.SQL.Add('  and NATDC='+chr(39)+'C'+chr(39));
   if RG_NAT.ItemIndex=1 then
      Qr_Ldr.SQL.Add('  and NATDC<>'+chr(39)+'C'+chr(39));


   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Ldr.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                               ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Ldr.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                               ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
      end;
   Qr_Ldr.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by TO_CHAR(DATAREAL, '+chr(39)+'YYYYMM'+chr(39)+')',' Group by TO_CHAR(DATADP,'+chr(39)+'YYYYMM'+chr(39)+')'));
   Qr_Ldr.Open;
   end;
if Qr_LDR.Eof then
   begin
   MessageDlg('Nada a ser impresso no período Solicitado!',mtWarning,[mbOk],0);
   exit;
   end;

msaldoi:=0;  mdeb:=0; mcred:=0; msaldod:=0;
testeform := TFrm_cx_rm(FindGlobalComponent('form_impres_cx_rm'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_cx_rm);

form_impres_cx_rm.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpag:=0;
mlin:=0;

While not Qr_Ldr.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_cx_rm.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_cx_rm.Rdprint1.ImpF(01,64,'Data: '+FormatDateTime(fdt,pdatasis),mnormal);
      form_impres_cx_rm.Rdprint1.ImpF(02,01,'Resumo Mensal do Caixa. ',mnormal);
      form_impres_cx_rm.Rdprint1.ImpF(02,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      form_impres_cx_rm.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      if RG_ESTADO.ItemIndex=0 then
         form_impres_cx_rm.RDprint1.ImpF(04,01,'Mes/Ano           Recebidos           Pagos        Saldo do dia      Saldo Geral',mnormal)
      else if RG_ESTADO.ItemIndex=1 then
         form_impres_cx_rm.RDprint1.ImpF(04,01,'Mes/Ano           A Receber           A Pagar      Saldo do dia      Saldo Geral',mnormal)
      else
         form_impres_cx_rm.RDprint1.ImpF(04,01,'Mes/Ano           Creditos            Debitos      Saldo do dia      Saldo Geral',mnormal);

      mlin:=4;
      end;
   mlin :=mlin+1;
   mdeb :=mdeb +Qr_LDRDEB.Value;
   mcred:=mcred+Qr_LDRCRED.Value;
   msaldod:=Qr_LDRCRED.Value-Qr_LDRDEB.Value;
   msaldoi:=msaldoi+msaldod;
   form_impres_cx_rm.RDprint1.ImpF(mlin,01,insere2(Qr_LDRmes.Value,' ',17)+' '
                           +insere(FormatFloat('#,##0.00',Qr_LDRCRED.Value),' ',14)+'  '
                           +insere(FormatFloat('#,##0.00',Qr_LDRDEB.Value),' ',14)  +'  '
                           +insere(FormatFloat('#,##0.00',msaldod),' ',14)         +'  '
                           +insere(FormatFloat('#,##0.00',msaldoi),' ',14),mnormal);

   Qr_ldr.Next;
   if Qr_Ldr.Eof then
      begin
      msaldod:=mcred-mdeb;
      msaldoi:=msaldod;
      mlin:=mlin+1;
      form_impres_cx_rm.RDprint1.ImpF(mlin,01,'- Totais..........'
                           +insere(FormatFloat('#,##0.00',mcred),' ',14)+'  '
                           +insere(FormatFloat('#,##0.00',mdeb),' ',14)  +'  '
                           +insere2(' ',' ',14)         +'  '
                           +insere(FormatFloat('#,##0.00',msaldoi),' ',14),mnormal);
      mlin:=mlin+1;
      form_impres_cx_rm.RDprint1.ImpF(mlin,01,insere2('Fim...','-',80),mnormal);
      if form_impres_cx_rm.RDprint1.Setup then form_impres_cx_rm.RDprint1.Fechar;
      form_impres_cx_rm.free;
      form_impres_cx_rm:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_cx_rm.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
      form_impres_cx_rm.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
Qr_LDR.Close;
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;
end;

procedure TFrm_CX_RM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_RM.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODIGO.Text:=fChamaFor(0,'frm_CX_RM',Key);
   if trim(CODIGO.Text)<>'' then
      CODIGOExit(Self);
   key:=#0;
   end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_RM',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else
   begin
   CODIGO.Text:=fChamaCli(0,'Frm_CX_RD',key);
   if trim(CODIGO.Text)<>'' then
      CODIGOExit(Self);
   key:=#0;

   end;
end;
procedure TFrm_CX_RM.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='TR' then
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      ShowMessage('Código Não Cadastrado');
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';

end;

procedure TFrm_CX_RM.CODCCUExit(Sender: TObject);
begin
CODCCU.Text:=Trim(CODCCU.Text);

if Trim(CODCCU.Text)<>'' Then
   begin
   flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text);
   if DM1.Query1.Eof then
      begin
      ShowMessage('Centro de Custo Não Cadastrado');
      CODCCU.SetFocus;
      end
   else
      NOMCCU.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMCCU.Text:='Todos...';

end;

procedure TFrm_CX_RM.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=Trim(CODDEP.Text);
if Trim(CODDEP.Text)<>'' Then
   begin
   flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text);
   if DM1.Query1.Eof then
      begin
      ShowMessage('Departamento Não Cadastrado');
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end
   else
      NOMDEP.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMDEP.Text:='Todos...';

end;

procedure TFrm_CX_RM.MCODEMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Emp, Frm_Emp);
   Frm_Emp.Edit1.Text:=key;
   Frm_Emp.BBnAtu.Click;
   Frm_Emp.Edit1.SelStart:=1;
   Frm_Emp.Edit1.SelLength:=1;
   Frm_Emp.PC1.ActivePageIndex:=1;
   if Frm_Emp.ShowModal=mrok then
      MCODEMP.Text:=DM2.Tb_EmpCODEMP.AsString;
   Frm_Emp.Free;
   key:='0';
   end;

end;

procedure TFrm_CX_RM.MCODEMPExit(Sender: TObject);
begin
if Trim(MCODEMP.Text)<>'' Then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select RAZAO from CADEMP where CODEMP=0'+Trim(MCODEMP.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      ShowMessage('Empresa Não Cadastrada');
      MCODEMP.SetFocus;
      end
   else
      NOMEMP.Text:=DM1.query1.Fields[0].AsString;
   end
else
   NOMEMP.Text:='Todas...';


end;

procedure TFrm_CX_RM.FormCreate(Sender: TObject);
begin


MCODEMP.Text:=IntToStr(codemp);
STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[0,0]:='Código';
STG1.Cells[1,0]:='Nome';

end;

procedure TFrm_CX_RM.Qr_LDRCalcFields(DataSet: TDataSet);
var
mes: Integer;
begin
mes:=StrToInt(Trim(copy(Qr_LDRANOMES.Value,5,2)));
if (mes>12) or (mes<1) then
   Qr_LDRmes.Value:='Indefinido'
else
   Qr_LDRmes.Value:=tabmes[mes];
Qr_LDRmes.Value:=Qr_LDRmes.Value+'/'+copy(Qr_LDRANOMES.Value,1,4);
end;

procedure TFrm_CX_RM.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_RM','');
CODDEP.SetFocus;

end;

procedure TFrm_CX_RM.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_RM','');
CODCCU.SetFocus;

end;

procedure TFrm_CX_RM.ITEM_GRAVARClick(Sender: TObject);
begin
if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',COD.Text) then
   begin
   MessageDlg('Banco não Cadastrado!',mtWarning,[mbOk],0);
   COD.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.Rows[mqtd+1].Clear;
   end;

STG1.Cells[00,mqtd-1]:=COD.Text;
STG1.Cells[01,mqtd-1]:=NOM.Text;
ITEM_CANCELAR.Click;
mop:=0;
COD.SetFocus;

end;

procedure TFrm_CX_RM.ITEM_EDITARClick(Sender: TObject);
begin
if Trim(STG1.Cells[00,STG1.Row])='' then
   begin
   Messagedlg('Não ha nada a ser editado!',mtWarning,[mbOk],0);
   exit;
   end;
mop:=1;
COD.Text   :=STG1.Cells[00,STG1.Row];
NOM.Text   :=STG1.Cells[01,STG1.Row];
COD.SetFocus;

end;

procedure TFrm_CX_RM.ITEM_CANCELARClick(Sender: TObject);
begin
mop:=0;
COD.Text:='';
NOM.Text:='';

end;

procedure TFrm_CX_RM.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      end;
   STG1.Rows[STG1.RowCount].Clear;
   STG1.Rows[STG1.RowCount-1].Clear;
   STG1.RowCount:=STG1.RowCount-1;
   end;

end;

procedure TFrm_CX_RM.CODKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   COD.Text:=fChamaBco(0,'frm_CX_RM',Key);
   key:=#0;
   end;

end;

procedure TFrm_CX_RM.CODExit(Sender: TObject);
begin
if (Trim(COD.Text)='')  then
   exit;
COD.Text:=FloatTostr(valfloat(COD.Text));
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',COD.Text) then
   NOM.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Banco não Cadastrado!',mtWarning,[mbOk],0);
   COD.SetFocus;
   exit;
   end;

end;

procedure TFrm_CX_RM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RM.FormActivate(Sender: TObject);
begin
if log_coddep_cx=''  then
   begin
   CODDEP.Enabled    :=true;
   end
else
   begin
   CODDEP.Enabled    :=false;
   CODDEP.Text       :=log_coddep_cx;
   CODDEPExit(self);
   end;

end;

end.
